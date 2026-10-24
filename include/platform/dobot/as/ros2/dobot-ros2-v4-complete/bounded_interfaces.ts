/**
 * @file bounded_interfaces.ts
 * @brief Own complete vendor service/action components through the shared ROS ABI.
 * @details Each facade borrows its selected backend and owns its exact explicit aliases.
 * Caller-driven polling preserves idle 11; service requests are never replayed.
 * Decode rejects partial/trailing bodies before callbacks; cleanup errors remain independent.
 * Construction, codecs and source catalog identities grant no permissions.
 */
import {Api, Operation, Status} from 'ros/as/api';
import {Codec, validUnicode} from 'ros/as/codecs';
import {decodeUnifiedEvent, EventKind, UnifiedEvent} from 'ros/as/events';
import {Capability, Reply} from 'ros/as/roswasm';

import {
    Ros2Dobot_msgs_v4SrvAccJ_Request,
    Ros2Dobot_msgs_v4SrvAccJ_RequestCodec,
    Ros2Dobot_msgs_v4SrvAccJ_Response,
    Ros2Dobot_msgs_v4SrvAccJ_ResponseCodec,
    Ros2Dobot_msgs_v4SrvAccL_Request,
    Ros2Dobot_msgs_v4SrvAccL_RequestCodec,
    Ros2Dobot_msgs_v4SrvAccL_Response,
    Ros2Dobot_msgs_v4SrvAccL_ResponseCodec,
    Ros2Dobot_msgs_v4SrvAI_Request,
    Ros2Dobot_msgs_v4SrvAI_RequestCodec,
    Ros2Dobot_msgs_v4SrvAI_Response,
    Ros2Dobot_msgs_v4SrvAI_ResponseCodec,
    Ros2Dobot_msgs_v4SrvAO_Request,
    Ros2Dobot_msgs_v4SrvAO_RequestCodec,
    Ros2Dobot_msgs_v4SrvAO_Response,
    Ros2Dobot_msgs_v4SrvAO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvAOInstant_Request,
    Ros2Dobot_msgs_v4SrvAOInstant_RequestCodec,
    Ros2Dobot_msgs_v4SrvAOInstant_Response,
    Ros2Dobot_msgs_v4SrvAOInstant_ResponseCodec,
    Ros2Dobot_msgs_v4SrvArc_Request,
    Ros2Dobot_msgs_v4SrvArc_RequestCodec,
    Ros2Dobot_msgs_v4SrvArc_Response,
    Ros2Dobot_msgs_v4SrvArc_ResponseCodec,
    Ros2Dobot_msgs_v4SrvBrakeControl_Request,
    Ros2Dobot_msgs_v4SrvBrakeControl_RequestCodec,
    Ros2Dobot_msgs_v4SrvBrakeControl_Response,
    Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCodec,
    Ros2Dobot_msgs_v4SrvCalcTool_Request,
    Ros2Dobot_msgs_v4SrvCalcTool_RequestCodec,
    Ros2Dobot_msgs_v4SrvCalcTool_Response,
    Ros2Dobot_msgs_v4SrvCalcTool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvCalcUser_Request,
    Ros2Dobot_msgs_v4SrvCalcUser_RequestCodec,
    Ros2Dobot_msgs_v4SrvCalcUser_Response,
    Ros2Dobot_msgs_v4SrvCalcUser_ResponseCodec,
    Ros2Dobot_msgs_v4SrvCheckOddMovC_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCodec,
    Ros2Dobot_msgs_v4SrvCheckOddMovC_Response,
    Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCodec,
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCodec,
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response,
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCodec,
    Ros2Dobot_msgs_v4SrvCheckOddMovL_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCodec,
    Ros2Dobot_msgs_v4SrvCheckOddMovL_Response,
    Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCodec,
    Ros2Dobot_msgs_v4SrvCircle_Request,
    Ros2Dobot_msgs_v4SrvCircle_RequestCodec,
    Ros2Dobot_msgs_v4SrvCircle_Response,
    Ros2Dobot_msgs_v4SrvCircle_ResponseCodec,
    Ros2Dobot_msgs_v4SrvClearError_Request,
    Ros2Dobot_msgs_v4SrvClearError_RequestCodec,
    Ros2Dobot_msgs_v4SrvClearError_Response,
    Ros2Dobot_msgs_v4SrvClearError_ResponseCodec,
    Ros2Dobot_msgs_v4SrvContinue_Request,
    Ros2Dobot_msgs_v4SrvContinue_RequestCodec,
    Ros2Dobot_msgs_v4SrvContinue_Response,
    Ros2Dobot_msgs_v4SrvContinue_ResponseCodec,
    Ros2Dobot_msgs_v4SrvCP_Request,
    Ros2Dobot_msgs_v4SrvCP_RequestCodec,
    Ros2Dobot_msgs_v4SrvCP_Response,
    Ros2Dobot_msgs_v4SrvCP_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDI_Request,
    Ros2Dobot_msgs_v4SrvDI_RequestCodec,
    Ros2Dobot_msgs_v4SrvDI_Response,
    Ros2Dobot_msgs_v4SrvDI_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDIGroup_Request,
    Ros2Dobot_msgs_v4SrvDIGroup_RequestCodec,
    Ros2Dobot_msgs_v4SrvDIGroup_Response,
    Ros2Dobot_msgs_v4SrvDIGroup_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDIGroupDEC_Request,
    Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCodec,
    Ros2Dobot_msgs_v4SrvDIGroupDEC_Response,
    Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDisableRobot_Request,
    Ros2Dobot_msgs_v4SrvDisableRobot_RequestCodec,
    Ros2Dobot_msgs_v4SrvDisableRobot_Response,
    Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDO_Request,
    Ros2Dobot_msgs_v4SrvDO_RequestCodec,
    Ros2Dobot_msgs_v4SrvDO_Response,
    Ros2Dobot_msgs_v4SrvDO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDOGroup_Request,
    Ros2Dobot_msgs_v4SrvDOGroup_RequestCodec,
    Ros2Dobot_msgs_v4SrvDOGroup_Response,
    Ros2Dobot_msgs_v4SrvDOGroup_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDOGroupDEC_Request,
    Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCodec,
    Ros2Dobot_msgs_v4SrvDOGroupDEC_Response,
    Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDOInstant_Request,
    Ros2Dobot_msgs_v4SrvDOInstant_RequestCodec,
    Ros2Dobot_msgs_v4SrvDOInstant_Response,
    Ros2Dobot_msgs_v4SrvDOInstant_ResponseCodec,
    Ros2Dobot_msgs_v4SrvDragSensivity_Request,
    Ros2Dobot_msgs_v4SrvDragSensivity_RequestCodec,
    Ros2Dobot_msgs_v4SrvDragSensivity_Response,
    Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCodec,
    Ros2Dobot_msgs_v4SrvEmergencyStop_Request,
    Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCodec,
    Ros2Dobot_msgs_v4SrvEmergencyStop_Response,
    Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCodec,
    Ros2Dobot_msgs_v4SrvEnableFTSensor_Request,
    Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCodec,
    Ros2Dobot_msgs_v4SrvEnableFTSensor_Response,
    Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCodec,
    Ros2Dobot_msgs_v4SrvEnableRobot_Request,
    Ros2Dobot_msgs_v4SrvEnableRobot_RequestCodec,
    Ros2Dobot_msgs_v4SrvEnableRobot_Response,
    Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCodec,
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request,
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCodec,
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response,
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCodec,
    Ros2Dobot_msgs_v4SrvEndRTOffset_Request,
    Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCodec,
    Ros2Dobot_msgs_v4SrvEndRTOffset_Response,
    Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request,
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response,
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCForceMode_Request,
    Ros2Dobot_msgs_v4SrvFCForceMode_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCForceMode_Response,
    Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCOff_Request,
    Ros2Dobot_msgs_v4SrvFCOff_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCOff_Response,
    Ros2Dobot_msgs_v4SrvFCOff_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCSetDamping_Request,
    Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCSetDamping_Response,
    Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCSetDeviation_Request,
    Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCSetDeviation_Response,
    Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCSetForce_Request,
    Ros2Dobot_msgs_v4SrvFCSetForce_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCSetForce_Response,
    Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request,
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response,
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request,
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response,
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCSetMass_Request,
    Ros2Dobot_msgs_v4SrvFCSetMass_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCSetMass_Response,
    Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCodec,
    Ros2Dobot_msgs_v4SrvFCSetStiffness_Request,
    Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCodec,
    Ros2Dobot_msgs_v4SrvFCSetStiffness_Response,
    Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCodec,
    Ros2Dobot_msgs_v4SrvForceDriveMode_Request,
    Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCodec,
    Ros2Dobot_msgs_v4SrvForceDriveMode_Response,
    Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCodec,
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request,
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCodec,
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response,
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetAngle_Request,
    Ros2Dobot_msgs_v4SrvGetAngle_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetAngle_Response,
    Ros2Dobot_msgs_v4SrvGetAngle_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetAO_Request,
    Ros2Dobot_msgs_v4SrvGetAO_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetAO_Response,
    Ros2Dobot_msgs_v4SrvGetAO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetCoils_Request,
    Ros2Dobot_msgs_v4SrvGetCoils_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetCoils_Response,
    Ros2Dobot_msgs_v4SrvGetCoils_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request,
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response,
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetDO_Request,
    Ros2Dobot_msgs_v4SrvGetDO_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetDO_Response,
    Ros2Dobot_msgs_v4SrvGetDO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetDOGroup_Request,
    Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetDOGroup_Response,
    Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request,
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response,
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetError_Request,
    Ros2Dobot_msgs_v4SrvGetError_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetError_Response,
    Ros2Dobot_msgs_v4SrvGetError_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetErrorID_Request,
    Ros2Dobot_msgs_v4SrvGetErrorID_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetErrorID_Response,
    Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetForce_Request,
    Ros2Dobot_msgs_v4SrvGetForce_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetForce_Response,
    Ros2Dobot_msgs_v4SrvGetForce_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetHoldRegs_Request,
    Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetHoldRegs_Response,
    Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetInBits_Request,
    Ros2Dobot_msgs_v4SrvGetInBits_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetInBits_Response,
    Ros2Dobot_msgs_v4SrvGetInBits_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetInputBool_Request,
    Ros2Dobot_msgs_v4SrvGetInputBool_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetInputBool_Response,
    Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetInputFloat_Request,
    Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetInputFloat_Response,
    Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetInputInt_Request,
    Ros2Dobot_msgs_v4SrvGetInputInt_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetInputInt_Response,
    Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetInRegs_Request,
    Ros2Dobot_msgs_v4SrvGetInRegs_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetInRegs_Response,
    Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetOutputBool_Request,
    Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetOutputBool_Response,
    Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetOutputFloat_Request,
    Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetOutputFloat_Response,
    Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetOutputInt_Request,
    Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetOutputInt_Response,
    Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetPose_Request,
    Ros2Dobot_msgs_v4SrvGetPose_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetPose_Response,
    Ros2Dobot_msgs_v4SrvGetPose_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetStartPose_Request,
    Ros2Dobot_msgs_v4SrvGetStartPose_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetStartPose_Response,
    Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCodec,
    Ros2Dobot_msgs_v4SrvGetToolDO_Request,
    Ros2Dobot_msgs_v4SrvGetToolDO_RequestCodec,
    Ros2Dobot_msgs_v4SrvGetToolDO_Response,
    Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvInverseKin_Request,
    Ros2Dobot_msgs_v4SrvInverseKin_RequestCodec,
    Ros2Dobot_msgs_v4SrvInverseKin_Response,
    Ros2Dobot_msgs_v4SrvInverseKin_ResponseCodec,
    Ros2Dobot_msgs_v4SrvInverseSolution_Request,
    Ros2Dobot_msgs_v4SrvInverseSolution_RequestCodec,
    Ros2Dobot_msgs_v4SrvInverseSolution_Response,
    Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCodec,
    Ros2Dobot_msgs_v4SrvModbusClose_Request,
    Ros2Dobot_msgs_v4SrvModbusClose_RequestCodec,
    Ros2Dobot_msgs_v4SrvModbusClose_Response,
    Ros2Dobot_msgs_v4SrvModbusClose_ResponseCodec,
    Ros2Dobot_msgs_v4SrvModbusCreate_Request,
    Ros2Dobot_msgs_v4SrvModbusCreate_RequestCodec,
    Ros2Dobot_msgs_v4SrvModbusCreate_Response,
    Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCodec,
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request,
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCodec,
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response,
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCodec,
    Ros2Dobot_msgs_v4SrvMoveJog_Request,
    Ros2Dobot_msgs_v4SrvMoveJog_RequestCodec,
    Ros2Dobot_msgs_v4SrvMoveJog_Response,
    Ros2Dobot_msgs_v4SrvMoveJog_ResponseCodec,
    Ros2Dobot_msgs_v4SrvMovJ_Request,
    Ros2Dobot_msgs_v4SrvMovJ_RequestCodec,
    Ros2Dobot_msgs_v4SrvMovJ_Response,
    Ros2Dobot_msgs_v4SrvMovJ_ResponseCodec,
    Ros2Dobot_msgs_v4SrvMovJIO_Request,
    Ros2Dobot_msgs_v4SrvMovJIO_RequestCodec,
    Ros2Dobot_msgs_v4SrvMovJIO_Response,
    Ros2Dobot_msgs_v4SrvMovJIO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvMovL_Request,
    Ros2Dobot_msgs_v4SrvMovL_RequestCodec,
    Ros2Dobot_msgs_v4SrvMovL_Response,
    Ros2Dobot_msgs_v4SrvMovL_ResponseCodec,
    Ros2Dobot_msgs_v4SrvMovLIO_Request,
    Ros2Dobot_msgs_v4SrvMovLIO_RequestCodec,
    Ros2Dobot_msgs_v4SrvMovLIO_Response,
    Ros2Dobot_msgs_v4SrvMovLIO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvPause_Request,
    Ros2Dobot_msgs_v4SrvPause_RequestCodec,
    Ros2Dobot_msgs_v4SrvPause_Response,
    Ros2Dobot_msgs_v4SrvPause_ResponseCodec,
    Ros2Dobot_msgs_v4SrvPositiveKin_Request,
    Ros2Dobot_msgs_v4SrvPositiveKin_RequestCodec,
    Ros2Dobot_msgs_v4SrvPositiveKin_Response,
    Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCodec,
    Ros2Dobot_msgs_v4SrvPowerOn_Request,
    Ros2Dobot_msgs_v4SrvPowerOn_RequestCodec,
    Ros2Dobot_msgs_v4SrvPowerOn_Response,
    Ros2Dobot_msgs_v4SrvPowerOn_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRelJointMovJ_Request,
    Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCodec,
    Ros2Dobot_msgs_v4SrvRelJointMovJ_Response,
    Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRelMovJTool_Request,
    Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCodec,
    Ros2Dobot_msgs_v4SrvRelMovJTool_Response,
    Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRelMovJUser_Request,
    Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCodec,
    Ros2Dobot_msgs_v4SrvRelMovJUser_Response,
    Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRelMovLTool_Request,
    Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCodec,
    Ros2Dobot_msgs_v4SrvRelMovLTool_Response,
    Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRelMovLUser_Request,
    Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCodec,
    Ros2Dobot_msgs_v4SrvRelMovLUser_Response,
    Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRequestControl_Request,
    Ros2Dobot_msgs_v4SrvRequestControl_RequestCodec,
    Ros2Dobot_msgs_v4SrvRequestControl_Response,
    Ros2Dobot_msgs_v4SrvRequestControl_ResponseCodec,
    Ros2Dobot_msgs_v4SrvResetRobot_Request,
    Ros2Dobot_msgs_v4SrvResetRobot_RequestCodec,
    Ros2Dobot_msgs_v4SrvResetRobot_Response,
    Ros2Dobot_msgs_v4SrvResetRobot_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRobotMode_Request,
    Ros2Dobot_msgs_v4SrvRobotMode_RequestCodec,
    Ros2Dobot_msgs_v4SrvRobotMode_Response,
    Ros2Dobot_msgs_v4SrvRobotMode_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRunScript_Request,
    Ros2Dobot_msgs_v4SrvRunScript_RequestCodec,
    Ros2Dobot_msgs_v4SrvRunScript_Response,
    Ros2Dobot_msgs_v4SrvRunScript_ResponseCodec,
    Ros2Dobot_msgs_v4SrvRunTo_Request,
    Ros2Dobot_msgs_v4SrvRunTo_RequestCodec,
    Ros2Dobot_msgs_v4SrvRunTo_Response,
    Ros2Dobot_msgs_v4SrvRunTo_ResponseCodec,
    Ros2Dobot_msgs_v4SrvServoJ_Request,
    Ros2Dobot_msgs_v4SrvServoJ_RequestCodec,
    Ros2Dobot_msgs_v4SrvServoJ_Response,
    Ros2Dobot_msgs_v4SrvServoJ_ResponseCodec,
    Ros2Dobot_msgs_v4SrvServoP_Request,
    Ros2Dobot_msgs_v4SrvServoP_RequestCodec,
    Ros2Dobot_msgs_v4SrvServoP_Response,
    Ros2Dobot_msgs_v4SrvServoP_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetBackDistance_Request,
    Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetBackDistance_Response,
    Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetCoils_Request,
    Ros2Dobot_msgs_v4SrvSetCoils_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetCoils_Response,
    Ros2Dobot_msgs_v4SrvSetCoils_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request,
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response,
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetFCCollision_Request,
    Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetFCCollision_Response,
    Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetHoldRegs_Request,
    Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetHoldRegs_Response,
    Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetOutputBool_Request,
    Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetOutputBool_Response,
    Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetOutputFloat_Request,
    Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetOutputFloat_Response,
    Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetOutputInt_Request,
    Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetOutputInt_Response,
    Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetPayload_Request,
    Ros2Dobot_msgs_v4SrvSetPayload_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetPayload_Response,
    Ros2Dobot_msgs_v4SrvSetPayload_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request,
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response,
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetSafeSkin_Request,
    Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetSafeSkin_Response,
    Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request,
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response,
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetTool485_Request,
    Ros2Dobot_msgs_v4SrvSetTool485_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetTool485_Response,
    Ros2Dobot_msgs_v4SrvSetTool485_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetTool_Request,
    Ros2Dobot_msgs_v4SrvSetTool_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetTool_Response,
    Ros2Dobot_msgs_v4SrvSetTool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetToolMode_Request,
    Ros2Dobot_msgs_v4SrvSetToolMode_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetToolMode_Response,
    Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetToolPower_Request,
    Ros2Dobot_msgs_v4SrvSetToolPower_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetToolPower_Response,
    Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetUser_Request,
    Ros2Dobot_msgs_v4SrvSetUser_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetUser_Response,
    Ros2Dobot_msgs_v4SrvSetUser_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request,
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCodec,
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response,
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSixForceHome_Request,
    Ros2Dobot_msgs_v4SrvSixForceHome_RequestCodec,
    Ros2Dobot_msgs_v4SrvSixForceHome_Response,
    Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCodec,
    Ros2Dobot_msgs_v4SrvSpeedFactor_Request,
    Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCodec,
    Ros2Dobot_msgs_v4SrvSpeedFactor_Response,
    Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCodec,
    Ros2Dobot_msgs_v4SrvStartDrag_Request,
    Ros2Dobot_msgs_v4SrvStartDrag_RequestCodec,
    Ros2Dobot_msgs_v4SrvStartDrag_Response,
    Ros2Dobot_msgs_v4SrvStartDrag_ResponseCodec,
    Ros2Dobot_msgs_v4SrvStartPath_Request,
    Ros2Dobot_msgs_v4SrvStartPath_RequestCodec,
    Ros2Dobot_msgs_v4SrvStartPath_Response,
    Ros2Dobot_msgs_v4SrvStartPath_ResponseCodec,
    Ros2Dobot_msgs_v4SrvStartRTOffset_Request,
    Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCodec,
    Ros2Dobot_msgs_v4SrvStartRTOffset_Response,
    Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCodec,
    Ros2Dobot_msgs_v4SrvStop_Request,
    Ros2Dobot_msgs_v4SrvStop_RequestCodec,
    Ros2Dobot_msgs_v4SrvStop_Response,
    Ros2Dobot_msgs_v4SrvStop_ResponseCodec,
    Ros2Dobot_msgs_v4SrvStopDrag_Request,
    Ros2Dobot_msgs_v4SrvStopDrag_RequestCodec,
    Ros2Dobot_msgs_v4SrvStopDrag_Response,
    Ros2Dobot_msgs_v4SrvStopDrag_ResponseCodec,
    Ros2Dobot_msgs_v4SrvStopMoveJog_Request,
    Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCodec,
    Ros2Dobot_msgs_v4SrvStopMoveJog_Response,
    Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCodec,
    Ros2Dobot_msgs_v4SrvTcpDashboard_Request,
    Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCodec,
    Ros2Dobot_msgs_v4SrvTcpDashboard_Response,
    Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCodec,
    Ros2Dobot_msgs_v4SrvTool_Request,
    Ros2Dobot_msgs_v4SrvTool_RequestCodec,
    Ros2Dobot_msgs_v4SrvTool_Response,
    Ros2Dobot_msgs_v4SrvTool_ResponseCodec,
    Ros2Dobot_msgs_v4SrvToolAI_Request,
    Ros2Dobot_msgs_v4SrvToolAI_RequestCodec,
    Ros2Dobot_msgs_v4SrvToolAI_Response,
    Ros2Dobot_msgs_v4SrvToolAI_ResponseCodec,
    Ros2Dobot_msgs_v4SrvToolDI_Request,
    Ros2Dobot_msgs_v4SrvToolDI_RequestCodec,
    Ros2Dobot_msgs_v4SrvToolDI_Response,
    Ros2Dobot_msgs_v4SrvToolDI_ResponseCodec,
    Ros2Dobot_msgs_v4SrvToolDO_Request,
    Ros2Dobot_msgs_v4SrvToolDO_RequestCodec,
    Ros2Dobot_msgs_v4SrvToolDO_Response,
    Ros2Dobot_msgs_v4SrvToolDO_ResponseCodec,
    Ros2Dobot_msgs_v4SrvToolDOInstant_Request,
    Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCodec,
    Ros2Dobot_msgs_v4SrvToolDOInstant_Response,
    Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCodec,
    Ros2Dobot_msgs_v4SrvUser_Request,
    Ros2Dobot_msgs_v4SrvUser_RequestCodec,
    Ros2Dobot_msgs_v4SrvUser_Response,
    Ros2Dobot_msgs_v4SrvUser_ResponseCodec,
    Ros2Dobot_msgs_v4SrvVelJ_Request,
    Ros2Dobot_msgs_v4SrvVelJ_RequestCodec,
    Ros2Dobot_msgs_v4SrvVelJ_Response,
    Ros2Dobot_msgs_v4SrvVelJ_ResponseCodec,
    Ros2Dobot_msgs_v4SrvVelL_Request,
    Ros2Dobot_msgs_v4SrvVelL_RequestCodec,
    Ros2Dobot_msgs_v4SrvVelL_Response,
    Ros2Dobot_msgs_v4SrvVelL_ResponseCodec
} from "./bounded_records";

/**
 * Complete typed result. Inspect status before value; required is retained
 * only when the actual SDK import reports its output-length sentinel written.
 */
export class RPCReply<T> extends Reply
{
    value: T|null = null;
    id: u64 = 0;
    kind: u8 = 0;
    event: UnifiedEvent|null = null;

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param reply Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(reply: Reply = new Reply())
    {
        super(reply.status, reply.bytes, reply.required, reply.requiredValid);
    }
}

/** Primary failure remains separate from every attempted retirement result. */
export class RPCCleanup
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param statuses Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(public primary: u32, public statuses: Array<u32>)
    {
    }
}

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
function rpcId(bytes: Uint8Array): u64
{
    return bytes.length < 8 ? 0 : load<u64>(bytes.dataStart);
}

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param id Complete original component or local protocol value, with its documented owner and bounds.
 * @param body Complete original component or local protocol value, with its documented owner and bounds.
 * @param kind Complete original component or local protocol value, with its documented owner and bounds.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
function rpcFrame(id: u64, body: Uint8Array, kind: i32 = -1): Uint8Array
{
    const prefix = kind < 0 ? 8 : 9, out = new Uint8Array(prefix + body.length);
    store<u64>(out.dataStart, id);
    if(kind >= 0)
        out[8] = <u8>kind;
    out.set(body, prefix);
    return out;
}

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param values Complete original component or local protocol value, with its documented owner and bounds.
 * @param id Complete original component or local protocol value, with its documented owner and bounds.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
function rpcRemove(values: Array<u64>, id: u64): void
{
    const at = values.indexOf(id);
    if(at >= 0)
    {
        values[at] = values[values.length - 1];
        values.pop();
    }
}

class RPCOwners
{
    private caps: Array < Capability >= [];
    busy: bool = false;
    status: u32 = 0;
    constructionCleanup: RPCCleanup = new RPCCleanup(0, []);

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param aliases Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, version: u32, aliases: Array<string>, public capacity: i32)
    {
        if(api.backend != version || capacity < 1 || capacity > 1024 || !aliases.length)
            this.status = Status.Invalid;
        for(let i = 0; !this.status && i < aliases.length; ++i)
            if(!aliases[i].length || aliases[i].indexOf('\0') >= 0 || !validUnicode(aliases[i]) ||
               Uint8Array.wrap(String.UTF8.encode(aliases[i])).length > 255 || aliases.indexOf(aliases[i]) != i)
                this.status = Status.Invalid;
        for(let i = 0; !this.status && i < aliases.length; ++i)
        {
            const cap = new Capability(api);
            this.status = cap.open(aliases[i]);
            if(!this.status)
                this.caps.push(cap);
        }
        if(this.status)
            this.constructionCleanup = this.cleanup(this.status);
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param index Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    cap(index: i32): Capability
    {
        return this.caps[index];
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    check(): u32
    {
        if(this.busy)
            return Status.Conflict;
        if(this.status)
            return this.status;
        return this.caps.length && this.caps[0].isOpen() ? 0 : Status.BadHandle;
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param index Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    available(index: i32): bool
    {
        return index >= 0 && index < this.caps.length && this.caps[index].isOpen();
    }

    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param revoke Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    cleanup(primary: u32 = 0, revoke: bool = false): RPCCleanup
    {
        if(this.busy)
            return new RPCCleanup(primary, [ Status.Conflict ]);
        const out = new Array<u32>();
        for(let i = this.caps.length - 1; i >= 0; --i)
            if(this.caps[i].isOpen())
                out.push(revoke ? this.caps[i].revoke() : this.caps[i].close());
        return new RPCCleanup(primary, out);
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param index Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param op Complete original component or local protocol value, with its documented owner and bounds.
     * @param wire Complete initialized immutable canonical bytes, borrowed until return.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    zero(index: i32, op: Operation, wire: Uint8Array): u32
    {
        const r = this.cap(index).request(op, wire, 0);
        return r.status ? r.status : r.bytes.length ? Status.Invalid : 0;
    }
}

/**
 * Generic implementation instantiated only with the generated complete codecs.
 * Each validator runs before encoding, including zero-wire nested-empty values.
 */
export class BoundedServiceClient<Q, S>
{
    private owners: RPCOwners;
    private pending: Array < u64 >= [];
    private sequence: u64 = 0;
    private instance: u64 = 0;
    private session: u64 = 0;

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param requestCodec Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param responseCodec Complete original component or local protocol value, with its documented owner
     * and bounds.
     * @param requestValid Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param responseMax Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api,
                private version: u32,
                alias: string,
                private requestCodec: Codec<Q>,
                private responseCodec: Codec<S>,
                private requestValid: (value: Q) => bool,
                private responseMax: i32,
                observerAlias: string = '',
                capacity: i32 = 8)
    {
        this.owners = new RPCOwners(api, version, observerAlias.length ? [ alias, observerAlias ] : [ alias ], capacity);
    }

    /** One synchronous call. No timeout/disconnect/TooLarge replay is attempted. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    call(value: Q): RPCReply<S>
    {
        let status = this.owners.check();
        if(!status && !this.requestValid(value))
            status = Status.Invalid;
        if(status)
            return new RPCReply<S>(new Reply(status));
        const r = this.owners.cap(0).request(Operation.service_call, this.requestCodec.encode(value), this.responseMax), out = new RPCReply<S>(r);
        if(!r.status)
        {
            if(!this.responseCodec.valid(r.bytes))
                out.status = Status.Invalid;
            else
                out.value = this.responseCodec.decode(r.bytes);
        }
        return out;
    }

    /**
     * Real service_submit with the explicitly opened independent observer. The
     * returned id means admission only. Observer polling is exclusive to this owner.
     */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    submit(value: Q): RPCReply<S>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(1))
            status = Status.Denied;
        if(!status && this.pending.length == this.owners.capacity)
            status = Status.TooLarge;
        if(!status && !this.requestValid(value))
            status = Status.Invalid;
        const out = new RPCReply<S>(new Reply(status));
        if(status)
            return out;
        const admitted = this.owners.cap(0).submitService(this.owners.cap(1), this.requestCodec.encode(value));
        out.status = admitted.status;
        out.id = admitted.handle;
        if(!out.status)
        {
            if(!out.id || this.pending.indexOf(out.id) >= 0)
                out.status = Status.Invalid;
            else
                this.pending.push(out.id);
        }
        return out;
    }

    /**
     * Use the existing SDK envelope decoder before source/stream/correlation and
     * component checks. Source retirement leaves pending IDs until explicit close.
     */
    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component
     * before calling user code. Serialize the facade, its callback state and borrowed storage throughout
     * this pass.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    pollCompletion(): RPCReply<S>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(1))
            status = Status.Denied;
        if(status)
            return new RPCReply<S>(new Reply(status));
        const r = this.owners.cap(1).pollEventV1(64 + this.responseMax), out = new RPCReply<S>(r);
        if(r.status)
            return out;
        const event = decodeUnifiedEvent(r.bytes);
        if(event === null)
        {
            out.status = Status.Invalid;
            return out;
        }
        if(event.backend != this.version || event.source != this.owners.cap(0).handle || this.sequence == u64.MAX_VALUE ||
           event.sequence != this.sequence + 1 || (this.sequence && (event.instance != this.instance || event.session != this.session)))
        {
            out.status = Status.Invalid;
            return out;
        }
        this.sequence = event.sequence;
        this.instance = event.instance;
        this.session = event.session;
        out.event = event;
        out.id = event.correlation;
        if(event.kind == EventKind.ResourceClosed)
        {
            out.status = Status.BadHandle;
            return out;
        }
        if(this.pending.indexOf(event.correlation) < 0)
        {
            out.status = Status.Invalid;
            return out;
        }
        if(event.kind == EventKind.ResourceError)
        {
            out.status = event.error;

            rpcRemove(this.pending, event.correlation);
            return out;
        }
        if(event.kind != EventKind.ServiceResponse || !this.responseCodec.valid(event.body))
        {
            out.status = Status.Invalid;
            return out;
        }
        out.value = this.responseCodec.decode(event.body);

        rpcRemove(this.pending, event.correlation);
        return out;
    }

    /** Preserve all partial open cleanup facts independently of the primary status. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close each role once, preserving observer/source retirement errors. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }

    /** Explicitly revoke only these already granted aliases. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }
}

/**
 * Incoming custom service implementation. Host still validates exact responder,
 * ticket principal, deadline and one-shot ownership; no ticket is a capability.
 */
export class BoundedServiceServer<Q, S>
{
    private owners: RPCOwners;
    private live: Array < u64 >= [];

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param input Complete initialized immutable canonical bytes, borrowed until return.
     * @param output Exclusive caller-owned writable storage with the documented finite capacity.
     * @param outputValid Exclusive caller-owned writable storage with the documented finite capacity.
     * @param inputMax Complete initialized immutable canonical bytes, borrowed until return.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api,
                version: u32,
                advertise: string,
                respond: string,
                private input: Codec<Q>,
                private output: Codec<S>,
                private outputValid: (value: S) => bool,
                private inputMax: i32,
                capacity: i32 = 8)
    {
        this.owners = new RPCOwners(api, version, [ advertise, respond ], capacity);
        if(!this.owners.status)
        {
            this.owners.status = this.owners.cap(0).advertiseService();
            if(this.owners.status)
                this.owners.constructionCleanup = this.owners.cleanup(this.owners.status);
        }
    }

    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component
     * before calling user code. Serialize the facade, its callback state and borrowed storage throughout
     * this pass.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private pollInner(): RPCReply<Q>
    {
        if(this.live.length == this.owners.capacity)
            return new RPCReply<Q>(new Reply(Status.TooLarge));
        const r = this.owners.cap(0).poll(this.inputMax + 8), out = new RPCReply<Q>(r);
        if(!r.status)
        {
            out.id = rpcId(r.bytes);
            const body = r.bytes.slice(8);
            if(!out.id || this.live.indexOf(out.id) >= 0 || !this.input.valid(body))
                out.status = Status.Invalid;
            else
            {
                out.value = this.input.decode(body);
                this.live.push(out.id);
            }
        }
        return out;
    }

    /** Poll at most one complete request; all malformed values leave outputs absent. */
    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component
     * before calling user code. Serialize the facade, its callback state and borrowed storage throughout
     * this pass.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    pollOnce(): RPCReply<Q>
    {
        const status = this.owners.check();
        return status ? new RPCReply<Q>(new Reply(status)) : this.pollInner();
    }

    /** Respond once to a locally delivered ticket. Refusal retains local ownership. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    respond(id: u64, value: S): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(!this.outputValid(value))
            return Status.Invalid;
        const status = this.owners.zero(1, Operation.service_respond, rpcFrame(id, this.output.encode(value)));
        if(!status)

            rpcRemove(this.live, id);
        return status;
    }

    /**
     * A normal callback may respond but cannot poll/close/revoke this owner.
     * Callback traps abort Wasm; normal error/decode/idle paths always release busy.
     */
    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param handler Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    spinOnce(handler: (id: u64, value: Q) => S): u32
    {
        const status = this.owners.check();
        if(status)
            return status;
        this.owners.busy = true;
        const request = this.pollInner();
        let result = request.status;
        if(!result)
            result = this.respond(request.id, handler(request.id, changetype<Q>(request.value)));
        this.owners.busy = false;
        return result;
    }

    /** Inspect partial construction rollback separately. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close both roles only after callback preflight. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** Deliberately revoke both existing aliases. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** Custom action owner with four distinct required roles and optional cancel-any. */
export class BoundedActionClient<G, R, F>
{
    private owners: RPCOwners;
    private goals: Array < u64 >= [];

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param send Complete original component or local protocol value, with its documented owner and bounds.
     * @param cancelOwn Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param feedback Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param result Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param goal Complete original component or local protocol value, with its documented owner and bounds.
     * @param resultCodec Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param feedbackCodec Complete original component or local protocol value, with its documented owner
     * and bounds.
     * @param goalValid Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param resultMax Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param feedbackMax Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param cancelAny Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api,
                version: u32,
                send: string,
                cancelOwn: string,
                feedback: string,
                result: string,
                private goal: Codec<G>,
                private resultCodec: Codec<R>,
                private feedbackCodec: Codec<F>,
                private goalValid: (value: G) => bool,
                private resultMax: i32,
                private feedbackMax: i32,
                cancelAny: string = '',
                capacity: i32 = 8)
    {
        this.owners =
            new RPCOwners(api, version, cancelAny.length ? [ send, cancelOwn, feedback, result, cancelAny ] : [ send, cancelOwn, feedback, result ], capacity);
    }

    /** Send a complete generated goal; capacity checked before any import. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    sendGoal(value: G): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.length == this.owners.capacity)
            status = Status.TooLarge;
        if(!status && !this.goalValid(value))
            status = Status.Invalid;
        const out = new RPCReply<R>(new Reply(status));
        if(status)
            return out;
        const r = this.owners.cap(0).request(Operation.action_send_goal, this.goal.encode(value), 8);
        out.status = r.status;
        if(!r.status)
        {
            out.id = rpcId(r.bytes);
            if(r.bytes.length != 8 || !out.id || this.goals.indexOf(out.id) >= 0)
                out.status = Status.Invalid;
            else
                this.goals.push(out.id);
        }
        return out;
    }

    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param index Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param operation Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private cancel(index: i32, operation: Operation, id: u64): RPCReply<R>
    {
        const r = this.owners.cap(index).request(operation, rpcFrame(id, new Uint8Array(0)), 1), out = new RPCReply<R>(r);
        out.id = id;
        if(!r.status && (r.bytes.length != 1 || r.bytes[0] > 1))
            out.status = Status.Invalid;
        return out;
    }

    /** Cancellation acknowledgement does not retire a local goal. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    cancelOwn(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(1, Operation.action_cancel_own_goal, id);
    }

    /** Zero means cancel-all and still requires the explicit fifth role. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    cancelAny(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(4))
            status = Status.Denied;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(4, Operation.action_cancel_any_goal, id);
    }

    /** Explicit cancel-all preserves the independent fifth-role requirement. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    cancelAll(): RPCReply<R>
    {
        return this.cancelAny(0);
    }

    /** Receive complete matching-ID feedback, retaining goal ownership on every refusal. */
    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    feedback(id: u64): RPCReply<F>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        if(status)
            return new RPCReply<F>(new Reply(status));
        const r = this.owners.cap(2).request(Operation.action_receive_feedback,
                                             /**
                                              * @brief Maintain the bounded local protocol state for the
                                              * selected original interface.
                                              * @details Use exact initialized lengths and full-width
                                              * identifiers. The enclosing documented caller establishes
                                              * storage lifetime, ownership and finite bounds; serialize
                                              * shared mutation through synchronous return.
                                              * @param id Complete original component or local protocol
                                              * value, with its documented owner and bounds.
                                              * @return The declared local result; errors remain separate
                                              * from native operation and cleanup outcomes.
                                              * @par Permissions Pure codecs need no grant; native operations
                                              * retain the enclosing explicit capability policy.
                                              */
                                             rpcFrame(id, new Uint8Array(0)),
                                             8 + this.feedbackMax),
              out = new RPCReply<F>(r);
        out.id = id;
        if(!r.status)
        {
            const body = r.bytes.slice(8);
            if(rpcId(r.bytes) != id || !this.feedbackCodec.valid(body))
                out.status = Status.Invalid;
            else
                out.value = this.feedbackCodec.decode(body);
        }
        return out;
    }

    /** Only decoded terminal kinds2/3/4 remove one locally owned goal. */
    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    result(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        if(status)
            return new RPCReply<R>(new Reply(status));
        const r = this.owners.cap(3).request(Operation.action_receive_result, rpcFrame(id, new Uint8Array(0)), 9 + this.resultMax), out = new RPCReply<R>(r);
        out.id = id;
        if(!r.status)
        {
            const body = r.bytes.slice(9);
            if(r.bytes.length < 9 || rpcId(r.bytes) != id || r.bytes[8] < 2 || r.bytes[8] > 4 || !this.resultCodec.valid(body))
                out.status = Status.Invalid;
            else
            {
                out.kind = r.bytes[8];
                out.value = this.resultCodec.decode(body);

                rpcRemove(this.goals, id);
            }
        }
        return out;
    }

    /** Observe every acquisition rollback result. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close every role once. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }

    /** Revoke only existing role aliases. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }
}

/** Incoming custom action: feedback1 retains; accepted terminal2/3/4 retires. */
export class BoundedActionServer<G, R, F>
{
    private owners: RPCOwners;
    private live: Array < u64 >= [];

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param goal Complete original component or local protocol value, with its documented owner and bounds.
     * @param resultCodec Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param feedbackCodec Complete original component or local protocol value, with its documented owner
     * and bounds.
     * @param resultValid Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param feedbackValid Complete original component or local protocol value, with its documented owner
     * and bounds.
     * @param goalMax Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api,
                version: u32,
                advertise: string,
                respond: string,
                private goal: Codec<G>,
                private resultCodec: Codec<R>,
                private feedbackCodec: Codec<F>,
                private resultValid: (value: R) => bool,
                private feedbackValid: (value: F) => bool,
                private goalMax: i32,
                capacity: i32 = 8)
    {
        this.owners = new RPCOwners(api, version, [ advertise, respond ], capacity);
        if(!this.owners.status)
        {
            this.owners.status = this.owners.zero(0, Operation.action_advertise, new Uint8Array(0));
            if(this.owners.status)
                this.owners.constructionCleanup = this.owners.cleanup(this.owners.status);
        }
    }

    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component
     * before calling user code. Serialize the facade, its callback state and borrowed storage throughout
     * this pass.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private pollInner(): RPCReply<G>
    {
        if(this.live.length == this.owners.capacity)
            return new RPCReply<G>(new Reply(Status.TooLarge));
        const r = this.owners.cap(0).poll(8 + this.goalMax), out = new RPCReply<G>(r);
        if(!r.status)
        {
            out.id = rpcId(r.bytes);
            const body = r.bytes.slice(8);
            if(!out.id || this.live.indexOf(out.id) >= 0 || !this.goal.valid(body))
                out.status = Status.Invalid;
            else
            {
                out.value = this.goal.decode(body);
                this.live.push(out.id);
            }
        }
        return out;
    }

    /** Poll once; nested dispatch returns Conflict before dequeue. */
    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component
     * before calling user code. Serialize the facade, its callback state and borrowed storage throughout
     * this pass.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    pollOnce(): RPCReply<G>
    {
        const status = this.owners.check();
        return status ? new RPCReply<G>(new Reply(status)) : this.pollInner();
    }

    /** Respond only to a goal delivered to this owner. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    respondFeedback(id: u64, value: F): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(!this.feedbackValid(value))
            return Status.Invalid;
        return this.owners.zero(1,
                                Operation.action_respond,

                                rpcFrame(id, this.feedbackCodec.encode(value), 1));
    }

    /** Validate terminal kind and component before any response import. */
    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @param kind Complete original component or local protocol value, with its documented owner and bounds.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    respondResult(id: u64, kind: u8, value: R): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(kind < 2 || kind > 4 || !this.resultValid(value))
            return Status.Invalid;
        const status = this.owners.zero(1, Operation.action_respond, rpcFrame(id, this.resultCodec.encode(value), kind));
        if(!status)

            rpcRemove(this.live, id);
        return status;
    }

    /** Handler runs locally under a lease and explicitly chooses later responses. */
    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param handler Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    spinOnce(handler: (id: u64, value: G) => void): u32
    {
        const status = this.owners.check();
        if(status)
            return status;
        this.owners.busy = true;
        const request = this.pollInner();
        if(!request.status)

            handler(request.id, changetype<G>(request.value));
        this.owners.busy = false;
        return request.status;
    }

    /** Inspect original partial construction cleanup. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close both roles, preserving primary and every cleanup status. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** Explicitly revoke the existing advertise/respond aliases. */
    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** Complete dobot_msgs_v4/srv/AI typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvAIClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvAI_Request, Ros2Dobot_msgs_v4SrvAI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvAI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAI_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AI incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvAIServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvAI_Request, Ros2Dobot_msgs_v4SrvAI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvAI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAI_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvAOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvAO_Request, Ros2Dobot_msgs_v4SrvAO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvAO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAO_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvAOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvAO_Request, Ros2Dobot_msgs_v4SrvAO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvAO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAO_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AOInstant typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvAOInstantClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvAOInstant_Request, Ros2Dobot_msgs_v4SrvAOInstant_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvAOInstant_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAOInstant_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAOInstant_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AOInstant incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvAOInstantServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvAOInstant_Request, Ros2Dobot_msgs_v4SrvAOInstant_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvAOInstant_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAOInstant_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAOInstant_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccJ typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvAccJClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvAccJ_Request, Ros2Dobot_msgs_v4SrvAccJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvAccJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAccJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAccJ_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccJ incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvAccJServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvAccJ_Request, Ros2Dobot_msgs_v4SrvAccJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvAccJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAccJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAccJ_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccL typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvAccLClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvAccL_Request, Ros2Dobot_msgs_v4SrvAccL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvAccL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAccL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAccL_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccL incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvAccLServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvAccL_Request, Ros2Dobot_msgs_v4SrvAccL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvAccL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvAccL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvAccL_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Arc typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvArcClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvArc_Request, Ros2Dobot_msgs_v4SrvArc_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvArc_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvArc_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvArc_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Arc incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvArcServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvArc_Request, Ros2Dobot_msgs_v4SrvArc_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvArc_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvArc_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvArc_Response): bool => value.validValue(),
              4261,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/BrakeControl typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvBrakeControlClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvBrakeControl_Request, Ros2Dobot_msgs_v4SrvBrakeControl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvBrakeControl_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvBrakeControl_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/BrakeControl incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvBrakeControlServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvBrakeControl_Request, Ros2Dobot_msgs_v4SrvBrakeControl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvBrakeControl_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvBrakeControl_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CP typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvCPClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvCP_Request, Ros2Dobot_msgs_v4SrvCP_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvCP_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCP_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCP_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CP incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvCPServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvCP_Request, Ros2Dobot_msgs_v4SrvCP_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvCP_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCP_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCP_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcTool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvCalcToolClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvCalcTool_Request, Ros2Dobot_msgs_v4SrvCalcTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvCalcTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCalcTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCalcTool_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcTool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvCalcToolServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvCalcTool_Request, Ros2Dobot_msgs_v4SrvCalcTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvCalcTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCalcTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCalcTool_Response): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcUser typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvCalcUserClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvCalcUser_Request, Ros2Dobot_msgs_v4SrvCalcUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvCalcUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCalcUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCalcUser_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcUser incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvCalcUserServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvCalcUser_Request, Ros2Dobot_msgs_v4SrvCalcUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvCalcUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCalcUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCalcUser_Response): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovC typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovCClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvCheckOddMovC_Request, Ros2Dobot_msgs_v4SrvCheckOddMovC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCheckOddMovC_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovC incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovCServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvCheckOddMovC_Request, Ros2Dobot_msgs_v4SrvCheckOddMovC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCheckOddMovC_Response): bool => value.validValue(),
              4308,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovJ typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovJClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request, Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovJ incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovJServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request, Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response): bool => value.validValue(),
              4260,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovL typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovLClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvCheckOddMovL_Request, Ros2Dobot_msgs_v4SrvCheckOddMovL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCheckOddMovL_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovL incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovLServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvCheckOddMovL_Request, Ros2Dobot_msgs_v4SrvCheckOddMovL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCheckOddMovL_Response): bool => value.validValue(),
              4260,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Circle typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvCircleClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvCircle_Request, Ros2Dobot_msgs_v4SrvCircle_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvCircle_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCircle_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCircle_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Circle incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvCircleServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvCircle_Request, Ros2Dobot_msgs_v4SrvCircle_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvCircle_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvCircle_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvCircle_Response): bool => value.validValue(),
              4265,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ClearError typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvClearErrorClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvClearError_Request, Ros2Dobot_msgs_v4SrvClearError_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvClearError_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvClearError_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvClearError_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ClearError incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvClearErrorServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvClearError_Request, Ros2Dobot_msgs_v4SrvClearError_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvClearError_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvClearError_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvClearError_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Continue typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvContinueClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvContinue_Request, Ros2Dobot_msgs_v4SrvContinue_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvContinue_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvContinue_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvContinue_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Continue incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvContinueServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvContinue_Request, Ros2Dobot_msgs_v4SrvContinue_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvContinue_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvContinue_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvContinue_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DI typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDIClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvDI_Request, Ros2Dobot_msgs_v4SrvDI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDI_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DI incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDIServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvDI_Request, Ros2Dobot_msgs_v4SrvDI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDI_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroup typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDIGroupClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvDIGroup_Request, Ros2Dobot_msgs_v4SrvDIGroup_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDIGroup_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDIGroup_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDIGroup_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroup incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDIGroupServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvDIGroup_Request, Ros2Dobot_msgs_v4SrvDIGroup_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDIGroup_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDIGroup_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDIGroup_Response): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroupDEC typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDIGroupDECClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvDIGroupDEC_Request, Ros2Dobot_msgs_v4SrvDIGroupDEC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDIGroupDEC_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroupDEC incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDIGroupDECServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvDIGroupDEC_Request, Ros2Dobot_msgs_v4SrvDIGroupDEC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDIGroupDEC_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvDO_Request, Ros2Dobot_msgs_v4SrvDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDO_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvDO_Request, Ros2Dobot_msgs_v4SrvDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDO_Response): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroup typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDOGroupClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvDOGroup_Request, Ros2Dobot_msgs_v4SrvDOGroup_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDOGroup_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDOGroup_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDOGroup_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroup incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDOGroupServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvDOGroup_Request, Ros2Dobot_msgs_v4SrvDOGroup_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDOGroup_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDOGroup_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDOGroup_Response): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroupDEC typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDOGroupDECClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvDOGroupDEC_Request, Ros2Dobot_msgs_v4SrvDOGroupDEC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDOGroupDEC_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroupDEC incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDOGroupDECServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvDOGroupDEC_Request, Ros2Dobot_msgs_v4SrvDOGroupDEC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDOGroupDEC_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOInstant typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDOInstantClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvDOInstant_Request, Ros2Dobot_msgs_v4SrvDOInstant_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDOInstant_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDOInstant_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDOInstant_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOInstant incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDOInstantServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvDOInstant_Request, Ros2Dobot_msgs_v4SrvDOInstant_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDOInstant_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDOInstant_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDOInstant_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DisableRobot typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDisableRobotClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvDisableRobot_Request, Ros2Dobot_msgs_v4SrvDisableRobot_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDisableRobot_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDisableRobot_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DisableRobot incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDisableRobotServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvDisableRobot_Request, Ros2Dobot_msgs_v4SrvDisableRobot_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDisableRobot_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDisableRobot_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DragSensivity typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvDragSensivityClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvDragSensivity_Request, Ros2Dobot_msgs_v4SrvDragSensivity_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvDragSensivity_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDragSensivity_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DragSensivity incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvDragSensivityServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvDragSensivity_Request, Ros2Dobot_msgs_v4SrvDragSensivity_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvDragSensivity_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvDragSensivity_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EmergencyStop typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvEmergencyStopClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvEmergencyStop_Request, Ros2Dobot_msgs_v4SrvEmergencyStop_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEmergencyStop_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EmergencyStop incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvEmergencyStopServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvEmergencyStop_Request, Ros2Dobot_msgs_v4SrvEmergencyStop_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEmergencyStop_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableFTSensor typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvEnableFTSensorClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvEnableFTSensor_Request, Ros2Dobot_msgs_v4SrvEnableFTSensor_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEnableFTSensor_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableFTSensor incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvEnableFTSensorServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvEnableFTSensor_Request, Ros2Dobot_msgs_v4SrvEnableFTSensor_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEnableFTSensor_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableRobot typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvEnableRobotClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvEnableRobot_Request, Ros2Dobot_msgs_v4SrvEnableRobot_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvEnableRobot_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEnableRobot_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableRobot incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvEnableRobotServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvEnableRobot_Request, Ros2Dobot_msgs_v4SrvEnableRobot_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvEnableRobot_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEnableRobot_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableSafeSkin typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvEnableSafeSkinClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request, Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableSafeSkin incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvEnableSafeSkinServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request, Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EndRTOffset typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvEndRTOffsetClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvEndRTOffset_Request, Ros2Dobot_msgs_v4SrvEndRTOffset_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEndRTOffset_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EndRTOffset incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvEndRTOffsetServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvEndRTOffset_Request, Ros2Dobot_msgs_v4SrvEndRTOffset_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvEndRTOffset_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCCollisionSwitch typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCCollisionSwitchClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request, Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCCollisionSwitch incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCCollisionSwitchServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request, Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCForceMode typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCForceModeClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCForceMode_Request, Ros2Dobot_msgs_v4SrvFCForceMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCForceMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCForceMode_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCForceMode incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCForceModeServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCForceMode_Request, Ros2Dobot_msgs_v4SrvFCForceMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCForceMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCForceMode_Response): bool => value.validValue(),
              60,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCOff typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCOffClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCOff_Request, Ros2Dobot_msgs_v4SrvFCOff_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCOff_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCOff_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCOff_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCOff incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCOffServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCOff_Request, Ros2Dobot_msgs_v4SrvFCOff_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCOff_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCOff_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCOff_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDamping typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCSetDampingClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCSetDamping_Request, Ros2Dobot_msgs_v4SrvFCSetDamping_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetDamping_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDamping incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCSetDampingServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCSetDamping_Request, Ros2Dobot_msgs_v4SrvFCSetDamping_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetDamping_Response): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDeviation typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCSetDeviationClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCSetDeviation_Request, Ros2Dobot_msgs_v4SrvFCSetDeviation_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetDeviation_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDeviation incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCSetDeviationServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCSetDeviation_Request, Ros2Dobot_msgs_v4SrvFCSetDeviation_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetDeviation_Response): bool => value.validValue(),
              28,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForce typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCSetForceClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCSetForce_Request, Ros2Dobot_msgs_v4SrvFCSetForce_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCSetForce_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetForce_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForce incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCSetForceServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCSetForce_Request, Ros2Dobot_msgs_v4SrvFCSetForce_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCSetForce_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetForce_Response): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForceLimit typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCSetForceLimitClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request, Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForceLimit incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCSetForceLimitServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request, Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForceSpeedLimit typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request, Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForceSpeedLimit incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request, Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetMass typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCSetMassClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCSetMass_Request, Ros2Dobot_msgs_v4SrvFCSetMass_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCSetMass_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetMass_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetMass incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCSetMassServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCSetMass_Request, Ros2Dobot_msgs_v4SrvFCSetMass_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCSetMass_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetMass_Response): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetStiffness typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvFCSetStiffnessClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvFCSetStiffness_Request, Ros2Dobot_msgs_v4SrvFCSetStiffness_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetStiffness_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetStiffness incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvFCSetStiffnessServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvFCSetStiffness_Request, Ros2Dobot_msgs_v4SrvFCSetStiffness_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvFCSetStiffness_Response): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveMode typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvForceDriveModeClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvForceDriveMode_Request, Ros2Dobot_msgs_v4SrvForceDriveMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvForceDriveMode_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveMode incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvForceDriveModeServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvForceDriveMode_Request, Ros2Dobot_msgs_v4SrvForceDriveMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvForceDriveMode_Response): bool => value.validValue(),
              28,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveSpeed typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvForceDriveSpeedClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request, Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveSpeed incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvForceDriveSpeedServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request, Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetAOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetAO_Request, Ros2Dobot_msgs_v4SrvGetAO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetAO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetAO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetAO_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetAOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetAO_Request, Ros2Dobot_msgs_v4SrvGetAO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetAO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetAO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetAO_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAngle typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetAngleClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetAngle_Request, Ros2Dobot_msgs_v4SrvGetAngle_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetAngle_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetAngle_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetAngle_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAngle incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetAngleServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetAngle_Request, Ros2Dobot_msgs_v4SrvGetAngle_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetAngle_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetAngle_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetAngle_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetCoils typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetCoilsClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetCoils_Request, Ros2Dobot_msgs_v4SrvGetCoils_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetCoils_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetCoils_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetCoils_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetCoils incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetCoilsServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetCoils_Request, Ros2Dobot_msgs_v4SrvGetCoils_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetCoils_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetCoils_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetCoils_Response): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetCurrentCommandId typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetCurrentCommandIdClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request, Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetCurrentCommandId incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetCurrentCommandIdServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request, Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetDOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetDO_Request, Ros2Dobot_msgs_v4SrvGetDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetDO_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetDOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetDO_Request, Ros2Dobot_msgs_v4SrvGetDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetDO_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroup typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetDOGroup_Request, Ros2Dobot_msgs_v4SrvGetDOGroup_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetDOGroup_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroup incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetDOGroup_Request, Ros2Dobot_msgs_v4SrvGetDOGroup_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetDOGroup_Response): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroupDEC typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupDECClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request, Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroupDEC incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupDECServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request, Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetError typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetErrorClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetError_Request, Ros2Dobot_msgs_v4SrvGetError_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetError_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetError_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetError_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetError incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetErrorServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetError_Request, Ros2Dobot_msgs_v4SrvGetError_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetError_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetError_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetError_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetErrorID typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetErrorIDClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetErrorID_Request, Ros2Dobot_msgs_v4SrvGetErrorID_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetErrorID_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetErrorID_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetErrorID incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetErrorIDServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetErrorID_Request, Ros2Dobot_msgs_v4SrvGetErrorID_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetErrorID_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetErrorID_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetForce typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetForceClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetForce_Request, Ros2Dobot_msgs_v4SrvGetForce_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetForce_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetForce_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetForce_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetForce incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetForceServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetForce_Request, Ros2Dobot_msgs_v4SrvGetForce_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetForce_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetForce_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetForce_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetHoldRegs typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetHoldRegsClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetHoldRegs_Request, Ros2Dobot_msgs_v4SrvGetHoldRegs_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetHoldRegs_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetHoldRegs incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetHoldRegsServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetHoldRegs_Request, Ros2Dobot_msgs_v4SrvGetHoldRegs_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetHoldRegs_Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInBits typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetInBitsClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetInBits_Request, Ros2Dobot_msgs_v4SrvGetInBits_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetInBits_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInBits_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInBits_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInBits incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetInBitsServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetInBits_Request, Ros2Dobot_msgs_v4SrvGetInBits_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetInBits_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInBits_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInBits_Response): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInRegs typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetInRegsClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetInRegs_Request, Ros2Dobot_msgs_v4SrvGetInRegs_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetInRegs_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInRegs_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInRegs incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetInRegsServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetInRegs_Request, Ros2Dobot_msgs_v4SrvGetInRegs_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetInRegs_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInRegs_Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputBool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetInputBoolClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetInputBool_Request, Ros2Dobot_msgs_v4SrvGetInputBool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetInputBool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInputBool_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputBool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetInputBoolServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetInputBool_Request, Ros2Dobot_msgs_v4SrvGetInputBool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetInputBool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInputBool_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputFloat typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetInputFloatClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetInputFloat_Request, Ros2Dobot_msgs_v4SrvGetInputFloat_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInputFloat_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputFloat incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetInputFloatServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetInputFloat_Request, Ros2Dobot_msgs_v4SrvGetInputFloat_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInputFloat_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputInt typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetInputIntClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetInputInt_Request, Ros2Dobot_msgs_v4SrvGetInputInt_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetInputInt_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInputInt_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputInt incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetInputIntServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetInputInt_Request, Ros2Dobot_msgs_v4SrvGetInputInt_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetInputInt_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetInputInt_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputBool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetOutputBoolClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetOutputBool_Request, Ros2Dobot_msgs_v4SrvGetOutputBool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetOutputBool_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputBool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetOutputBoolServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetOutputBool_Request, Ros2Dobot_msgs_v4SrvGetOutputBool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetOutputBool_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputFloat typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetOutputFloatClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetOutputFloat_Request, Ros2Dobot_msgs_v4SrvGetOutputFloat_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetOutputFloat_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputFloat incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetOutputFloatServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetOutputFloat_Request, Ros2Dobot_msgs_v4SrvGetOutputFloat_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetOutputFloat_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputInt typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetOutputIntClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetOutputInt_Request, Ros2Dobot_msgs_v4SrvGetOutputInt_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetOutputInt_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputInt incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetOutputIntServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetOutputInt_Request, Ros2Dobot_msgs_v4SrvGetOutputInt_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetOutputInt_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetPose typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetPoseClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetPose_Request, Ros2Dobot_msgs_v4SrvGetPose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetPose_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetPose_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetPose_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetPose incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetPoseServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetPose_Request, Ros2Dobot_msgs_v4SrvGetPose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetPose_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetPose_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetPose_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetStartPose typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetStartPoseClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetStartPose_Request, Ros2Dobot_msgs_v4SrvGetStartPose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetStartPose_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetStartPose_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetStartPose incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetStartPoseServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetStartPose_Request, Ros2Dobot_msgs_v4SrvGetStartPose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetStartPose_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetStartPose_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetToolDO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvGetToolDOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvGetToolDO_Request, Ros2Dobot_msgs_v4SrvGetToolDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvGetToolDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetToolDO_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetToolDO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvGetToolDOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvGetToolDO_Request, Ros2Dobot_msgs_v4SrvGetToolDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvGetToolDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvGetToolDO_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseKin typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvInverseKinClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvInverseKin_Request, Ros2Dobot_msgs_v4SrvInverseKin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvInverseKin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvInverseKin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvInverseKin_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseKin incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvInverseKinServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvInverseKin_Request, Ros2Dobot_msgs_v4SrvInverseKin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvInverseKin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvInverseKin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvInverseKin_Response): bool => value.validValue(),
              1088,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseSolution typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvInverseSolutionClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvInverseSolution_Request, Ros2Dobot_msgs_v4SrvInverseSolution_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvInverseSolution_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvInverseSolution_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseSolution incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvInverseSolutionServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvInverseSolution_Request, Ros2Dobot_msgs_v4SrvInverseSolution_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvInverseSolution_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvInverseSolution_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusClose typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvModbusCloseClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvModbusClose_Request, Ros2Dobot_msgs_v4SrvModbusClose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvModbusClose_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvModbusClose_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvModbusClose_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusClose incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvModbusCloseServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvModbusClose_Request, Ros2Dobot_msgs_v4SrvModbusClose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvModbusClose_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvModbusClose_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvModbusClose_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusCreate typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvModbusCreateClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvModbusCreate_Request, Ros2Dobot_msgs_v4SrvModbusCreate_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvModbusCreate_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvModbusCreate_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusCreate incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvModbusCreateServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvModbusCreate_Request, Ros2Dobot_msgs_v4SrvModbusCreate_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvModbusCreate_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvModbusCreate_Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusRTUCreate typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvModbusRTUCreateClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request, Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusRTUCreate incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvModbusRTUCreateServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request, Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response): bool => value.validValue(),
              276,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJ typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvMovJClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvMovJ_Request, Ros2Dobot_msgs_v4SrvMovJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvMovJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovJ_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJ incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvMovJServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvMovJ_Request, Ros2Dobot_msgs_v4SrvMovJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvMovJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovJ_Response): bool => value.validValue(),
              4213,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJIO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvMovJIOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvMovJIO_Request, Ros2Dobot_msgs_v4SrvMovJIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvMovJIO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovJIO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovJIO_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJIO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvMovJIOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvMovJIO_Request, Ros2Dobot_msgs_v4SrvMovJIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvMovJIO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovJIO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovJIO_Response): bool => value.validValue(),
              8377,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovL typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvMovLClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvMovL_Request, Ros2Dobot_msgs_v4SrvMovL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvMovL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovL_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovL incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvMovLServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvMovL_Request, Ros2Dobot_msgs_v4SrvMovL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvMovL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovL_Response): bool => value.validValue(),
              4213,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovLIO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvMovLIOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvMovLIO_Request, Ros2Dobot_msgs_v4SrvMovLIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvMovLIO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovLIO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovLIO_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovLIO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvMovLIOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvMovLIO_Request, Ros2Dobot_msgs_v4SrvMovLIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvMovLIO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMovLIO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMovLIO_Response): bool => value.validValue(),
              8377,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MoveJog typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvMoveJogClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvMoveJog_Request, Ros2Dobot_msgs_v4SrvMoveJog_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvMoveJog_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMoveJog_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMoveJog_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MoveJog incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvMoveJogServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvMoveJog_Request, Ros2Dobot_msgs_v4SrvMoveJog_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvMoveJog_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvMoveJog_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvMoveJog_Response): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Pause typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvPauseClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvPause_Request, Ros2Dobot_msgs_v4SrvPause_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvPause_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvPause_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvPause_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Pause incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvPauseServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvPause_Request, Ros2Dobot_msgs_v4SrvPause_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvPause_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvPause_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvPause_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PositiveKin typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvPositiveKinClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvPositiveKin_Request, Ros2Dobot_msgs_v4SrvPositiveKin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvPositiveKin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvPositiveKin_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PositiveKin incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvPositiveKinServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvPositiveKin_Request, Ros2Dobot_msgs_v4SrvPositiveKin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvPositiveKin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvPositiveKin_Response): bool => value.validValue(),
              568,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PowerOn typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvPowerOnClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvPowerOn_Request, Ros2Dobot_msgs_v4SrvPowerOn_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvPowerOn_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvPowerOn_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvPowerOn_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PowerOn incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvPowerOnServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvPowerOn_Request, Ros2Dobot_msgs_v4SrvPowerOn_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvPowerOn_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvPowerOn_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvPowerOn_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelJointMovJ typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRelJointMovJClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvRelJointMovJ_Request, Ros2Dobot_msgs_v4SrvRelJointMovJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelJointMovJ_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelJointMovJ incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRelJointMovJServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvRelJointMovJ_Request, Ros2Dobot_msgs_v4SrvRelJointMovJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelJointMovJ_Response): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJTool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRelMovJToolClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvRelMovJTool_Request, Ros2Dobot_msgs_v4SrvRelMovJTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovJTool_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJTool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRelMovJToolServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvRelMovJTool_Request, Ros2Dobot_msgs_v4SrvRelMovJTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovJTool_Response): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJUser typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRelMovJUserClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvRelMovJUser_Request, Ros2Dobot_msgs_v4SrvRelMovJUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovJUser_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJUser incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRelMovJUserServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvRelMovJUser_Request, Ros2Dobot_msgs_v4SrvRelMovJUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovJUser_Response): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLTool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRelMovLToolClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvRelMovLTool_Request, Ros2Dobot_msgs_v4SrvRelMovLTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovLTool_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLTool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRelMovLToolServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvRelMovLTool_Request, Ros2Dobot_msgs_v4SrvRelMovLTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovLTool_Response): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLUser typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRelMovLUserClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvRelMovLUser_Request, Ros2Dobot_msgs_v4SrvRelMovLUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovLUser_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLUser incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRelMovLUserServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvRelMovLUser_Request, Ros2Dobot_msgs_v4SrvRelMovLUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRelMovLUser_Response): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RequestControl typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRequestControlClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvRequestControl_Request, Ros2Dobot_msgs_v4SrvRequestControl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRequestControl_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRequestControl_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRequestControl_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RequestControl incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRequestControlServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvRequestControl_Request, Ros2Dobot_msgs_v4SrvRequestControl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRequestControl_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRequestControl_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRequestControl_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ResetRobot typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvResetRobotClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvResetRobot_Request, Ros2Dobot_msgs_v4SrvResetRobot_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvResetRobot_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvResetRobot_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvResetRobot_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ResetRobot incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvResetRobotServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvResetRobot_Request, Ros2Dobot_msgs_v4SrvResetRobot_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvResetRobot_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvResetRobot_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvResetRobot_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RobotMode typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRobotModeClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvRobotMode_Request, Ros2Dobot_msgs_v4SrvRobotMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRobotMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRobotMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRobotMode_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RobotMode incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRobotModeServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvRobotMode_Request, Ros2Dobot_msgs_v4SrvRobotMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRobotMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRobotMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRobotMode_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunScript typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRunScriptClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvRunScript_Request, Ros2Dobot_msgs_v4SrvRunScript_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRunScript_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRunScript_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRunScript_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunScript incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRunScriptServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvRunScript_Request, Ros2Dobot_msgs_v4SrvRunScript_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRunScript_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRunScript_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRunScript_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunTo typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvRunToClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvRunTo_Request, Ros2Dobot_msgs_v4SrvRunTo_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvRunTo_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRunTo_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRunTo_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunTo incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvRunToServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvRunTo_Request, Ros2Dobot_msgs_v4SrvRunTo_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvRunTo_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvRunTo_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvRunTo_Response): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoJ typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvServoJClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvServoJ_Request, Ros2Dobot_msgs_v4SrvServoJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvServoJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvServoJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvServoJ_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoJ incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvServoJServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvServoJ_Request, Ros2Dobot_msgs_v4SrvServoJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvServoJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvServoJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvServoJ_Response): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoP typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvServoPClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvServoP_Request, Ros2Dobot_msgs_v4SrvServoP_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvServoP_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvServoP_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvServoP_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoP incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvServoPServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvServoP_Request, Ros2Dobot_msgs_v4SrvServoP_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvServoP_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvServoP_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvServoP_Response): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetBackDistance typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetBackDistanceClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetBackDistance_Request, Ros2Dobot_msgs_v4SrvSetBackDistance_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetBackDistance_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetBackDistance incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetBackDistanceServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetBackDistance_Request, Ros2Dobot_msgs_v4SrvSetBackDistance_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetBackDistance_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCoils typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetCoilsClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetCoils_Request, Ros2Dobot_msgs_v4SrvSetCoils_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetCoils_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetCoils_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetCoils_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCoils incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetCoilsServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetCoils_Request, Ros2Dobot_msgs_v4SrvSetCoils_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetCoils_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetCoils_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetCoils_Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCollisionLevel typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetCollisionLevelClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request, Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCollisionLevel incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetCollisionLevelServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request, Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetFCCollision typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetFCCollisionClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetFCCollision_Request, Ros2Dobot_msgs_v4SrvSetFCCollision_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetFCCollision_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetFCCollision incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetFCCollisionServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetFCCollision_Request, Ros2Dobot_msgs_v4SrvSetFCCollision_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetFCCollision_Response): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetHoldRegs typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetHoldRegsClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetHoldRegs_Request, Ros2Dobot_msgs_v4SrvSetHoldRegs_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetHoldRegs_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetHoldRegs incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetHoldRegsServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetHoldRegs_Request, Ros2Dobot_msgs_v4SrvSetHoldRegs_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetHoldRegs_Response): bool => value.validValue(),
              532,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputBool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetOutputBoolClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetOutputBool_Request, Ros2Dobot_msgs_v4SrvSetOutputBool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetOutputBool_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputBool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetOutputBoolServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetOutputBool_Request, Ros2Dobot_msgs_v4SrvSetOutputBool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetOutputBool_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputFloat typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetOutputFloatClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetOutputFloat_Request, Ros2Dobot_msgs_v4SrvSetOutputFloat_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetOutputFloat_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputFloat incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetOutputFloatServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetOutputFloat_Request, Ros2Dobot_msgs_v4SrvSetOutputFloat_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetOutputFloat_Response): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputInt typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetOutputIntClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetOutputInt_Request, Ros2Dobot_msgs_v4SrvSetOutputInt_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetOutputInt_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputInt incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetOutputIntServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetOutputInt_Request, Ros2Dobot_msgs_v4SrvSetOutputInt_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetOutputInt_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetPayload typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetPayloadClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetPayload_Request, Ros2Dobot_msgs_v4SrvSetPayload_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetPayload_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetPayload_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetPayload_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetPayload incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetPayloadServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetPayload_Request, Ros2Dobot_msgs_v4SrvSetPayload_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetPayload_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetPayload_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetPayload_Response): bool => value.validValue(),
              32,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetPostCollisionMode typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetPostCollisionModeClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request, Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetPostCollisionMode incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetPostCollisionModeServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request, Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeSkin typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetSafeSkinClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetSafeSkin_Request, Ros2Dobot_msgs_v4SrvSetSafeSkin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetSafeSkin_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeSkin incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetSafeSkinServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetSafeSkin_Request, Ros2Dobot_msgs_v4SrvSetSafeSkin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetSafeSkin_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeWallEnable typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetSafeWallEnableClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request, Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeWallEnable incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetSafeWallEnableServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request, Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetToolClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetTool_Request, Ros2Dobot_msgs_v4SrvSetTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetTool_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetToolServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetTool_Request, Ros2Dobot_msgs_v4SrvSetTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetTool_Response): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool485 typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetTool485Client extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetTool485_Request, Ros2Dobot_msgs_v4SrvSetTool485_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetTool485_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetTool485_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetTool485_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool485 incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetTool485Server extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetTool485_Request, Ros2Dobot_msgs_v4SrvSetTool485_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetTool485_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetTool485_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetTool485_Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolMode typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetToolModeClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetToolMode_Request, Ros2Dobot_msgs_v4SrvSetToolMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetToolMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetToolMode_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolMode incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetToolModeServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetToolMode_Request, Ros2Dobot_msgs_v4SrvSetToolMode_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetToolMode_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetToolMode_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolPower typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetToolPowerClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetToolPower_Request, Ros2Dobot_msgs_v4SrvSetToolPower_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetToolPower_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetToolPower_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolPower incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetToolPowerServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetToolPower_Request, Ros2Dobot_msgs_v4SrvSetToolPower_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetToolPower_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetToolPower_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetUser typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetUserClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetUser_Request, Ros2Dobot_msgs_v4SrvSetUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetUser_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetUser incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetUserServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetUser_Request, Ros2Dobot_msgs_v4SrvSetUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetUser_Response): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetWorkZoneEnable typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSetWorkZoneEnableClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request, Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetWorkZoneEnable incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSetWorkZoneEnableServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request, Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SixForceHome typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSixForceHomeClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSixForceHome_Request, Ros2Dobot_msgs_v4SrvSixForceHome_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSixForceHome_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSixForceHome_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SixForceHome incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSixForceHomeServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSixForceHome_Request, Ros2Dobot_msgs_v4SrvSixForceHome_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSixForceHome_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSixForceHome_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SpeedFactor typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvSpeedFactorClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvSpeedFactor_Request, Ros2Dobot_msgs_v4SrvSpeedFactor_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSpeedFactor_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SpeedFactor incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvSpeedFactorServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvSpeedFactor_Request, Ros2Dobot_msgs_v4SrvSpeedFactor_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvSpeedFactor_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartDrag typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvStartDragClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvStartDrag_Request, Ros2Dobot_msgs_v4SrvStartDrag_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvStartDrag_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStartDrag_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStartDrag_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartDrag incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvStartDragServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvStartDrag_Request, Ros2Dobot_msgs_v4SrvStartDrag_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvStartDrag_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStartDrag_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStartDrag_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartPath typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvStartPathClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvStartPath_Request, Ros2Dobot_msgs_v4SrvStartPath_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvStartPath_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStartPath_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStartPath_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartPath incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvStartPathServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvStartPath_Request, Ros2Dobot_msgs_v4SrvStartPath_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvStartPath_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStartPath_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStartPath_Response): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartRTOffset typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvStartRTOffsetClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvStartRTOffset_Request, Ros2Dobot_msgs_v4SrvStartRTOffset_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStartRTOffset_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartRTOffset incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvStartRTOffsetServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvStartRTOffset_Request, Ros2Dobot_msgs_v4SrvStartRTOffset_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStartRTOffset_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Stop typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvStopClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvStop_Request, Ros2Dobot_msgs_v4SrvStop_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvStop_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStop_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStop_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Stop incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvStopServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvStop_Request, Ros2Dobot_msgs_v4SrvStop_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvStop_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStop_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStop_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopDrag typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvStopDragClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvStopDrag_Request, Ros2Dobot_msgs_v4SrvStopDrag_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvStopDrag_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStopDrag_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStopDrag_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopDrag incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvStopDragServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvStopDrag_Request, Ros2Dobot_msgs_v4SrvStopDrag_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvStopDrag_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStopDrag_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStopDrag_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopMoveJog typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvStopMoveJogClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvStopMoveJog_Request, Ros2Dobot_msgs_v4SrvStopMoveJog_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStopMoveJog_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopMoveJog incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvStopMoveJogServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvStopMoveJog_Request, Ros2Dobot_msgs_v4SrvStopMoveJog_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvStopMoveJog_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/TcpDashboard typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvTcpDashboardClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvTcpDashboard_Request, Ros2Dobot_msgs_v4SrvTcpDashboard_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvTcpDashboard_Request): bool => value.validValue(),
              260,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/TcpDashboard incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvTcpDashboardServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvTcpDashboard_Request, Ros2Dobot_msgs_v4SrvTcpDashboard_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvTcpDashboard_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Tool typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvToolClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvTool_Request, Ros2Dobot_msgs_v4SrvTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvTool_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Tool incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvToolServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvTool_Request, Ros2Dobot_msgs_v4SrvTool_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvTool_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvTool_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvTool_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolAI typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvToolAIClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvToolAI_Request, Ros2Dobot_msgs_v4SrvToolAI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvToolAI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolAI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolAI_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolAI incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvToolAIServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvToolAI_Request, Ros2Dobot_msgs_v4SrvToolAI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvToolAI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolAI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolAI_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDI typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvToolDIClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvToolDI_Request, Ros2Dobot_msgs_v4SrvToolDI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvToolDI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolDI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolDI_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDI incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvToolDIServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvToolDI_Request, Ros2Dobot_msgs_v4SrvToolDI_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvToolDI_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolDI_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolDI_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDO typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvToolDOClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvToolDO_Request, Ros2Dobot_msgs_v4SrvToolDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvToolDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolDO_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDO incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvToolDOServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvToolDO_Request, Ros2Dobot_msgs_v4SrvToolDO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvToolDO_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolDO_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolDO_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDOInstant typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvToolDOInstantClient extends
    BoundedServiceClient<Ros2Dobot_msgs_v4SrvToolDOInstant_Request, Ros2Dobot_msgs_v4SrvToolDOInstant_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolDOInstant_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDOInstant incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvToolDOInstantServer extends
    BoundedServiceServer<Ros2Dobot_msgs_v4SrvToolDOInstant_Request, Ros2Dobot_msgs_v4SrvToolDOInstant_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvToolDOInstant_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/User typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvUserClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvUser_Request, Ros2Dobot_msgs_v4SrvUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvUser_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/User incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvUserServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvUser_Request, Ros2Dobot_msgs_v4SrvUser_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvUser_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvUser_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvUser_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelJ typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvVelJClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvVelJ_Request, Ros2Dobot_msgs_v4SrvVelJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvVelJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvVelJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvVelJ_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelJ incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvVelJServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvVelJ_Request, Ros2Dobot_msgs_v4SrvVelJ_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvVelJ_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvVelJ_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvVelJ_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelL typed call and real-submit client. */
export class Ros2Dobot_msgs_v4SrvVelLClient extends BoundedServiceClient<Ros2Dobot_msgs_v4SrvVelL_Request, Ros2Dobot_msgs_v4SrvVelL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dobot_msgs_v4SrvVelL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvVelL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvVelL_Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelL incoming request/response owner. */
export class Ros2Dobot_msgs_v4SrvVelLServer extends BoundedServiceServer<Ros2Dobot_msgs_v4SrvVelL_Request, Ros2Dobot_msgs_v4SrvVelL_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dobot_msgs_v4SrvVelL_RequestCodec(),
              new Ros2Dobot_msgs_v4SrvVelL_ResponseCodec(),
              (value: Ros2Dobot_msgs_v4SrvVelL_Response): bool => value.validValue(),
              4,
              capacity);
    }
}
