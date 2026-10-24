/**
 * @file bounded_interfaces.ts
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros2-humble-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/**
 * Generated custom RPC facades. Keep beside bounded_records.ts; select the
 * real ros1/ros2 NativeApi and explicit CLI-provisioned aliases. No factory
 * creates a grant, thread, clock, retry or native callback. A Wasm abort/trap
 * cannot promise cleanup; every normal caller-driven pass releases its lease.
 */
import {Api, Operation, Status} from 'ros/as/api';
import {Capability, Reply} from 'ros/as/roswasm';
import {Codec, validUnicode} from 'ros/as/codecs';
import {decodeUnifiedEvent, UnifiedEvent, EventKind} from 'ros/as/events';
import {
    Ros2Dsr_msgs2ActionJogH2r_Goal,
    Ros2Dsr_msgs2ActionJogH2r_GoalCodec,
    Ros2Dsr_msgs2ActionJogH2r_Result,
    Ros2Dsr_msgs2ActionJogH2r_ResultCodec,
    Ros2Dsr_msgs2ActionJogH2r_Feedback,
    Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec,
    Ros2Dsr_msgs2ActionMovejH2r_Goal,
    Ros2Dsr_msgs2ActionMovejH2r_GoalCodec,
    Ros2Dsr_msgs2ActionMovejH2r_Result,
    Ros2Dsr_msgs2ActionMovejH2r_ResultCodec,
    Ros2Dsr_msgs2ActionMovejH2r_Feedback,
    Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec,
    Ros2Dsr_msgs2ActionMovelH2r_Goal,
    Ros2Dsr_msgs2ActionMovelH2r_GoalCodec,
    Ros2Dsr_msgs2ActionMovelH2r_Result,
    Ros2Dsr_msgs2ActionMovelH2r_ResultCodec,
    Ros2Dsr_msgs2ActionMovelH2r_Feedback,
    Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec,
    Ros2Dsr_msgs2SrvAlignAxis1_Request,
    Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec,
    Ros2Dsr_msgs2SrvAlignAxis1_Response,
    Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec,
    Ros2Dsr_msgs2SrvAlignAxis2_Request,
    Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec,
    Ros2Dsr_msgs2SrvAlignAxis2_Response,
    Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec,
    Ros2Dsr_msgs2SrvAlterMotion_Request,
    Ros2Dsr_msgs2SrvAlterMotion_RequestCodec,
    Ros2Dsr_msgs2SrvAlterMotion_Response,
    Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec,
    Ros2Dsr_msgs2SrvCalcCoord_Request,
    Ros2Dsr_msgs2SrvCalcCoord_RequestCodec,
    Ros2Dsr_msgs2SrvCalcCoord_Response,
    Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec,
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request,
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec,
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response,
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec,
    Ros2Dsr_msgs2SrvChangeOperationSpeed_Request,
    Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec,
    Ros2Dsr_msgs2SrvChangeOperationSpeed_Response,
    Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec,
    Ros2Dsr_msgs2SrvCheckForceCondition_Request,
    Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec,
    Ros2Dsr_msgs2SrvCheckForceCondition_Response,
    Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec,
    Ros2Dsr_msgs2SrvCheckMotion_Request,
    Ros2Dsr_msgs2SrvCheckMotion_RequestCodec,
    Ros2Dsr_msgs2SrvCheckMotion_Response,
    Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec,
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request,
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec,
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response,
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec,
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request,
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec,
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response,
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec,
    Ros2Dsr_msgs2SrvCheckPositionCondition_Request,
    Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec,
    Ros2Dsr_msgs2SrvCheckPositionCondition_Response,
    Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec,
    Ros2Dsr_msgs2SrvConfigCreateModbus_Request,
    Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec,
    Ros2Dsr_msgs2SrvConfigCreateModbus_Response,
    Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec,
    Ros2Dsr_msgs2SrvConfigCreateTcp_Request,
    Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec,
    Ros2Dsr_msgs2SrvConfigCreateTcp_Response,
    Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec,
    Ros2Dsr_msgs2SrvConfigCreateTool_Request,
    Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec,
    Ros2Dsr_msgs2SrvConfigCreateTool_Response,
    Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec,
    Ros2Dsr_msgs2SrvConfigDeleteModbus_Request,
    Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec,
    Ros2Dsr_msgs2SrvConfigDeleteModbus_Response,
    Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec,
    Ros2Dsr_msgs2SrvConfigDeleteTcp_Request,
    Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec,
    Ros2Dsr_msgs2SrvConfigDeleteTcp_Response,
    Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec,
    Ros2Dsr_msgs2SrvConfigDeleteTool_Request,
    Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec,
    Ros2Dsr_msgs2SrvConfigDeleteTool_Response,
    Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec,
    Ros2Dsr_msgs2SrvConnectRtControl_Request,
    Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec,
    Ros2Dsr_msgs2SrvConnectRtControl_Response,
    Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec,
    Ros2Dsr_msgs2SrvCoordTransform_Request,
    Ros2Dsr_msgs2SrvCoordTransform_RequestCodec,
    Ros2Dsr_msgs2SrvCoordTransform_Response,
    Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec,
    Ros2Dsr_msgs2SrvDisableAlterMotion_Request,
    Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec,
    Ros2Dsr_msgs2SrvDisableAlterMotion_Response,
    Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec,
    Ros2Dsr_msgs2SrvDisconnectRtControl_Request,
    Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec,
    Ros2Dsr_msgs2SrvDisconnectRtControl_Response,
    Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec,
    Ros2Dsr_msgs2SrvDrlPause_Request,
    Ros2Dsr_msgs2SrvDrlPause_RequestCodec,
    Ros2Dsr_msgs2SrvDrlPause_Response,
    Ros2Dsr_msgs2SrvDrlPause_ResponseCodec,
    Ros2Dsr_msgs2SrvDrlResume_Request,
    Ros2Dsr_msgs2SrvDrlResume_RequestCodec,
    Ros2Dsr_msgs2SrvDrlResume_Response,
    Ros2Dsr_msgs2SrvDrlResume_ResponseCodec,
    Ros2Dsr_msgs2SrvDrlStart_Request,
    Ros2Dsr_msgs2SrvDrlStart_RequestCodec,
    Ros2Dsr_msgs2SrvDrlStart_Response,
    Ros2Dsr_msgs2SrvDrlStart_ResponseCodec,
    Ros2Dsr_msgs2SrvDrlStop_Request,
    Ros2Dsr_msgs2SrvDrlStop_RequestCodec,
    Ros2Dsr_msgs2SrvDrlStop_Response,
    Ros2Dsr_msgs2SrvDrlStop_ResponseCodec,
    Ros2Dsr_msgs2SrvEnableAlterMotion_Request,
    Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec,
    Ros2Dsr_msgs2SrvEnableAlterMotion_Response,
    Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec,
    Ros2Dsr_msgs2SrvFkin_Request,
    Ros2Dsr_msgs2SrvFkin_RequestCodec,
    Ros2Dsr_msgs2SrvFkin_Response,
    Ros2Dsr_msgs2SrvFkin_ResponseCodec,
    Ros2Dsr_msgs2SrvGetControlMode_Request,
    Ros2Dsr_msgs2SrvGetControlMode_RequestCodec,
    Ros2Dsr_msgs2SrvGetControlMode_Response,
    Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec,
    Ros2Dsr_msgs2SrvGetControlSpace_Request,
    Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec,
    Ros2Dsr_msgs2SrvGetControlSpace_Response,
    Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec,
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response,
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentPose_Request,
    Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentPose_Response,
    Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentPosj_Request,
    Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentPosj_Response,
    Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentPosx_Request,
    Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentPosx_Response,
    Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentRotm_Request,
    Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentRotm_Response,
    Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request,
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response,
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentTcp_Request,
    Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentTcp_Response,
    Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentTool_Request,
    Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentTool_Response,
    Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request,
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response,
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentVelj_Request,
    Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentVelj_Response,
    Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec,
    Ros2Dsr_msgs2SrvGetCurrentVelx_Request,
    Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec,
    Ros2Dsr_msgs2SrvGetCurrentVelx_Response,
    Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec,
    Ros2Dsr_msgs2SrvGetDesiredPosj_Request,
    Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec,
    Ros2Dsr_msgs2SrvGetDesiredPosj_Response,
    Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec,
    Ros2Dsr_msgs2SrvGetDesiredPosx_Request,
    Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec,
    Ros2Dsr_msgs2SrvGetDesiredPosx_Response,
    Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec,
    Ros2Dsr_msgs2SrvGetDesiredVelj_Request,
    Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec,
    Ros2Dsr_msgs2SrvGetDesiredVelj_Response,
    Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec,
    Ros2Dsr_msgs2SrvGetDesiredVelx_Request,
    Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec,
    Ros2Dsr_msgs2SrvGetDesiredVelx_Response,
    Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec,
    Ros2Dsr_msgs2SrvGetDrlState_Request,
    Ros2Dsr_msgs2SrvGetDrlState_RequestCodec,
    Ros2Dsr_msgs2SrvGetDrlState_Response,
    Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec,
    Ros2Dsr_msgs2SrvGetExternalTorque_Request,
    Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec,
    Ros2Dsr_msgs2SrvGetExternalTorque_Response,
    Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec,
    Ros2Dsr_msgs2SrvGetInputRegisterBit_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec,
    Ros2Dsr_msgs2SrvGetInputRegisterBit_Response,
    Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec,
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec,
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response,
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec,
    Ros2Dsr_msgs2SrvGetInputRegisterInt_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec,
    Ros2Dsr_msgs2SrvGetInputRegisterInt_Response,
    Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec,
    Ros2Dsr_msgs2SrvGetJointTorque_Request,
    Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec,
    Ros2Dsr_msgs2SrvGetJointTorque_Response,
    Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec,
    Ros2Dsr_msgs2SrvGetLastAlarm_Request,
    Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec,
    Ros2Dsr_msgs2SrvGetLastAlarm_Response,
    Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec,
    Ros2Dsr_msgs2SrvGetModbusInput_Request,
    Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec,
    Ros2Dsr_msgs2SrvGetModbusInput_Response,
    Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec,
    Ros2Dsr_msgs2SrvGetOrientationError_Request,
    Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec,
    Ros2Dsr_msgs2SrvGetOrientationError_Response,
    Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec,
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec,
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response,
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec,
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec,
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response,
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec,
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec,
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response,
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request,
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec,
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response,
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRobotMode_Request,
    Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec,
    Ros2Dsr_msgs2SrvGetRobotMode_Response,
    Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request,
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec,
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response,
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRobotState_Request,
    Ros2Dsr_msgs2SrvGetRobotState_RequestCodec,
    Ros2Dsr_msgs2SrvGetRobotState_Response,
    Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRobotSystem_Request,
    Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec,
    Ros2Dsr_msgs2SrvGetRobotSystem_Response,
    Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request,
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec,
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response,
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request,
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec,
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response,
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request,
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec,
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response,
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec,
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request,
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec,
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response,
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec,
    Ros2Dsr_msgs2SrvGetSolutionSpace_Request,
    Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec,
    Ros2Dsr_msgs2SrvGetSolutionSpace_Response,
    Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec,
    Ros2Dsr_msgs2SrvGetToolDigitalInput_Request,
    Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec,
    Ros2Dsr_msgs2SrvGetToolDigitalInput_Response,
    Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec,
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request,
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec,
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response,
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec,
    Ros2Dsr_msgs2SrvGetToolForce_Request,
    Ros2Dsr_msgs2SrvGetToolForce_RequestCodec,
    Ros2Dsr_msgs2SrvGetToolForce_Response,
    Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec,
    Ros2Dsr_msgs2SrvGetUserCartCoord_Request,
    Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec,
    Ros2Dsr_msgs2SrvGetUserCartCoord_Response,
    Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec,
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request,
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec,
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response,
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec,
    Ros2Dsr_msgs2SrvIkin_Request,
    Ros2Dsr_msgs2SrvIkin_RequestCodec,
    Ros2Dsr_msgs2SrvIkin_Response,
    Ros2Dsr_msgs2SrvIkin_ResponseCodec,
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request,
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec,
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response,
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec,
    Ros2Dsr_msgs2SrvJog_Request,
    Ros2Dsr_msgs2SrvJog_RequestCodec,
    Ros2Dsr_msgs2SrvJog_Response,
    Ros2Dsr_msgs2SrvJog_ResponseCodec,
    Ros2Dsr_msgs2SrvJogMulti_Request,
    Ros2Dsr_msgs2SrvJogMulti_RequestCodec,
    Ros2Dsr_msgs2SrvJogMulti_Response,
    Ros2Dsr_msgs2SrvJogMulti_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveBlending_Request,
    Ros2Dsr_msgs2SrvMoveBlending_RequestCodec,
    Ros2Dsr_msgs2SrvMoveBlending_Response,
    Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveCircle_Request,
    Ros2Dsr_msgs2SrvMoveCircle_RequestCodec,
    Ros2Dsr_msgs2SrvMoveCircle_Response,
    Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveHome_Request,
    Ros2Dsr_msgs2SrvMoveHome_RequestCodec,
    Ros2Dsr_msgs2SrvMoveHome_Response,
    Ros2Dsr_msgs2SrvMoveHome_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveJoint_Request,
    Ros2Dsr_msgs2SrvMoveJoint_RequestCodec,
    Ros2Dsr_msgs2SrvMoveJoint_Response,
    Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveJointx_Request,
    Ros2Dsr_msgs2SrvMoveJointx_RequestCodec,
    Ros2Dsr_msgs2SrvMoveJointx_Response,
    Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveLine_Request,
    Ros2Dsr_msgs2SrvMoveLine_RequestCodec,
    Ros2Dsr_msgs2SrvMoveLine_Response,
    Ros2Dsr_msgs2SrvMoveLine_ResponseCodec,
    Ros2Dsr_msgs2SrvMovePause_Request,
    Ros2Dsr_msgs2SrvMovePause_RequestCodec,
    Ros2Dsr_msgs2SrvMovePause_Response,
    Ros2Dsr_msgs2SrvMovePause_ResponseCodec,
    Ros2Dsr_msgs2SrvMovePeriodic_Request,
    Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec,
    Ros2Dsr_msgs2SrvMovePeriodic_Response,
    Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveResume_Request,
    Ros2Dsr_msgs2SrvMoveResume_RequestCodec,
    Ros2Dsr_msgs2SrvMoveResume_Response,
    Ros2Dsr_msgs2SrvMoveResume_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveSpiral_Request,
    Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec,
    Ros2Dsr_msgs2SrvMoveSpiral_Response,
    Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveSplineJoint_Request,
    Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec,
    Ros2Dsr_msgs2SrvMoveSplineJoint_Response,
    Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveSplineTask_Request,
    Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec,
    Ros2Dsr_msgs2SrvMoveSplineTask_Response,
    Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveStop_Request,
    Ros2Dsr_msgs2SrvMoveStop_RequestCodec,
    Ros2Dsr_msgs2SrvMoveStop_Response,
    Ros2Dsr_msgs2SrvMoveStop_ResponseCodec,
    Ros2Dsr_msgs2SrvMoveWait_Request,
    Ros2Dsr_msgs2SrvMoveWait_RequestCodec,
    Ros2Dsr_msgs2SrvMoveWait_Response,
    Ros2Dsr_msgs2SrvMoveWait_ResponseCodec,
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request,
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec,
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response,
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec,
    Ros2Dsr_msgs2SrvParallelAxis1_Request,
    Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec,
    Ros2Dsr_msgs2SrvParallelAxis1_Response,
    Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec,
    Ros2Dsr_msgs2SrvParallelAxis2_Request,
    Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec,
    Ros2Dsr_msgs2SrvParallelAxis2_Response,
    Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec,
    Ros2Dsr_msgs2SrvReadDataRt_Request,
    Ros2Dsr_msgs2SrvReadDataRt_RequestCodec,
    Ros2Dsr_msgs2SrvReadDataRt_Response,
    Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec,
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request,
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec,
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response,
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec,
    Ros2Dsr_msgs2SrvReleaseForce_Request,
    Ros2Dsr_msgs2SrvReleaseForce_RequestCodec,
    Ros2Dsr_msgs2SrvReleaseForce_Response,
    Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec,
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request,
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec,
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response,
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec,
    Ros2Dsr_msgs2SrvRobotiq2FClose_Request,
    Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec,
    Ros2Dsr_msgs2SrvRobotiq2FClose_Response,
    Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec,
    Ros2Dsr_msgs2SrvRobotiq2FMove_Request,
    Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec,
    Ros2Dsr_msgs2SrvRobotiq2FMove_Response,
    Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec,
    Ros2Dsr_msgs2SrvRobotiq2FOpen_Request,
    Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec,
    Ros2Dsr_msgs2SrvRobotiq2FOpen_Response,
    Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec,
    Ros2Dsr_msgs2SrvSerialSendData_Request,
    Ros2Dsr_msgs2SrvSerialSendData_RequestCodec,
    Ros2Dsr_msgs2SrvSerialSendData_Response,
    Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec,
    Ros2Dsr_msgs2SrvServoOff_Request,
    Ros2Dsr_msgs2SrvServoOff_RequestCodec,
    Ros2Dsr_msgs2SrvServoOff_Response,
    Ros2Dsr_msgs2SrvServoOff_ResponseCodec,
    Ros2Dsr_msgs2SrvSetAccjRt_Request,
    Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec,
    Ros2Dsr_msgs2SrvSetAccjRt_Response,
    Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec,
    Ros2Dsr_msgs2SrvSetAccxRt_Request,
    Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec,
    Ros2Dsr_msgs2SrvSetAccxRt_Response,
    Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec,
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response,
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec,
    Ros2Dsr_msgs2SrvSetCurrentTcp_Request,
    Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec,
    Ros2Dsr_msgs2SrvSetCurrentTcp_Response,
    Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec,
    Ros2Dsr_msgs2SrvSetCurrentTool_Request,
    Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec,
    Ros2Dsr_msgs2SrvSetCurrentTool_Response,
    Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec,
    Ros2Dsr_msgs2SrvSetDesiredForce_Request,
    Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec,
    Ros2Dsr_msgs2SrvSetDesiredForce_Response,
    Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec,
    Ros2Dsr_msgs2SrvSetModbusOutput_Request,
    Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec,
    Ros2Dsr_msgs2SrvSetModbusOutput_Response,
    Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec,
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec,
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response,
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec,
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec,
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response,
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec,
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec,
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response,
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec,
    Ros2Dsr_msgs2SrvSetRefCoord_Request,
    Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec,
    Ros2Dsr_msgs2SrvSetRefCoord_Response,
    Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec,
    Ros2Dsr_msgs2SrvSetRobotControl_Request,
    Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec,
    Ros2Dsr_msgs2SrvSetRobotControl_Response,
    Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec,
    Ros2Dsr_msgs2SrvSetRobotMode_Request,
    Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec,
    Ros2Dsr_msgs2SrvSetRobotMode_Response,
    Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec,
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request,
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec,
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response,
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec,
    Ros2Dsr_msgs2SrvSetRobotSystem_Request,
    Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec,
    Ros2Dsr_msgs2SrvSetRobotSystem_Response,
    Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec,
    Ros2Dsr_msgs2SrvSetRtControlInput_Request,
    Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec,
    Ros2Dsr_msgs2SrvSetRtControlInput_Response,
    Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec,
    Ros2Dsr_msgs2SrvSetRtControlOutput_Request,
    Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec,
    Ros2Dsr_msgs2SrvSetRtControlOutput_Response,
    Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec,
    Ros2Dsr_msgs2SrvSetSafeStopResetType_Request,
    Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec,
    Ros2Dsr_msgs2SrvSetSafeStopResetType_Response,
    Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec,
    Ros2Dsr_msgs2SrvSetSafetyMode_Request,
    Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec,
    Ros2Dsr_msgs2SrvSetSafetyMode_Response,
    Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec,
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request,
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec,
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response,
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec,
    Ros2Dsr_msgs2SrvSetSingularityHandling_Request,
    Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec,
    Ros2Dsr_msgs2SrvSetSingularityHandling_Response,
    Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec,
    Ros2Dsr_msgs2SrvSetStiffnessx_Request,
    Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec,
    Ros2Dsr_msgs2SrvSetStiffnessx_Response,
    Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec,
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request,
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec,
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response,
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec,
    Ros2Dsr_msgs2SrvSetToolShape_Request,
    Ros2Dsr_msgs2SrvSetToolShape_RequestCodec,
    Ros2Dsr_msgs2SrvSetToolShape_Response,
    Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec,
    Ros2Dsr_msgs2SrvSetUserCartCoord1_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec,
    Ros2Dsr_msgs2SrvSetUserCartCoord1_Response,
    Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec,
    Ros2Dsr_msgs2SrvSetUserCartCoord2_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec,
    Ros2Dsr_msgs2SrvSetUserCartCoord2_Response,
    Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec,
    Ros2Dsr_msgs2SrvSetUserCartCoord3_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec,
    Ros2Dsr_msgs2SrvSetUserCartCoord3_Response,
    Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec,
    Ros2Dsr_msgs2SrvSetVeljRt_Request,
    Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec,
    Ros2Dsr_msgs2SrvSetVeljRt_Response,
    Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec,
    Ros2Dsr_msgs2SrvSetVelxRt_Request,
    Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec,
    Ros2Dsr_msgs2SrvSetVelxRt_Response,
    Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec,
    Ros2Dsr_msgs2SrvStartRtControl_Request,
    Ros2Dsr_msgs2SrvStartRtControl_RequestCodec,
    Ros2Dsr_msgs2SrvStartRtControl_Response,
    Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec,
    Ros2Dsr_msgs2SrvStopRtControl_Request,
    Ros2Dsr_msgs2SrvStopRtControl_RequestCodec,
    Ros2Dsr_msgs2SrvStopRtControl_Response,
    Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec,
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request,
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec,
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response,
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec,
    Ros2Dsr_msgs2SrvTrans_Request,
    Ros2Dsr_msgs2SrvTrans_RequestCodec,
    Ros2Dsr_msgs2SrvTrans_Response,
    Ros2Dsr_msgs2SrvTrans_ResponseCodec,
    Ros2Dsr_msgs2SrvWriteDataRt_Request,
    Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec,
    Ros2Dsr_msgs2SrvWriteDataRt_Response,
    Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec
} from "doosan/as/ros2/doosan-ros2-humble-complete/bounded_records";

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

    constructor(reply: Reply = new Reply())
    {
        super(reply.status, reply.bytes, reply.required, reply.requiredValid);
    }
}

/** Primary failure remains separate from every attempted retirement result. */
export class RPCCleanup
{
    constructor(public primary: u32, public statuses: Array<u32>)
    {
    }
}

function rpcId(bytes: Uint8Array): u64
{
    return bytes.length < 8 ? 0 : load<u64>(bytes.dataStart);
}

function rpcFrame(id: u64, body: Uint8Array, kind: i32 = -1): Uint8Array
{
    const prefix = kind < 0 ? 8 : 9, out = new Uint8Array(prefix + body.length);
    store<u64>(out.dataStart, id);
    if(kind >= 0)
        out[8] = <u8>kind;
    out.set(body, prefix);
    return out;
}

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

    cap(index: i32): Capability
    {
        return this.caps[index];
    }

    check(): u32
    {
        if(this.busy)
            return Status.Conflict;
        if(this.status)
            return this.status;
        return this.caps.length && this.caps[0].isOpen() ? 0 : Status.BadHandle;
    }

    available(index: i32): bool
    {
        return index >= 0 && index < this.caps.length && this.caps[index].isOpen();
    }

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
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close each role once, preserving observer/source retirement errors. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }

    /** Explicitly revoke only these already granted aliases. */
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
    pollOnce(): RPCReply<Q>
    {
        const status = this.owners.check();
        return status ? new RPCReply<Q>(new Reply(status)) : this.pollInner();
    }

    /** Respond once to a locally delivered ticket. Refusal retains local ownership. */
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
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close both roles only after callback preflight. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** Deliberately revoke both existing aliases. */
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

    private cancel(index: i32, operation: Operation, id: u64): RPCReply<R>
    {
        const r = this.owners.cap(index).request(operation, rpcFrame(id, new Uint8Array(0)), 1), out = new RPCReply<R>(r);
        out.id = id;
        if(!r.status && (r.bytes.length != 1 || r.bytes[0] > 1))
            out.status = Status.Invalid;
        return out;
    }

    /** Cancellation acknowledgement does not retire a local goal. */
    cancelOwn(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(1, Operation.action_cancel_own_goal, id);
    }

    /** Zero means cancel-all and still requires the explicit fifth role. */
    cancelAny(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(4))
            status = Status.Denied;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(4, Operation.action_cancel_any_goal, id);
    }

    /** Explicit cancel-all preserves the independent fifth-role requirement. */
    cancelAll(): RPCReply<R>
    {
        return this.cancelAny(0);
    }

    /** Receive complete matching-ID feedback, retaining goal ownership on every refusal. */
    feedback(id: u64): RPCReply<F>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        if(status)
            return new RPCReply<F>(new Reply(status));
        const r = this.owners.cap(2).request(Operation.action_receive_feedback, rpcFrame(id, new Uint8Array(0)), 8 + this.feedbackMax),
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
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close every role once. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }

    /** Revoke only existing role aliases. */
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
    pollOnce(): RPCReply<G>
    {
        const status = this.owners.check();
        return status ? new RPCReply<G>(new Reply(status)) : this.pollInner();
    }

    /** Respond only to a goal delivered to this owner. */
    respondFeedback(id: u64, value: F): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(!this.feedbackValid(value))
            return Status.Invalid;
        return this.owners.zero(1, Operation.action_respond, rpcFrame(id, this.feedbackCodec.encode(value), 1));
    }

    /** Validate terminal kind and component before any response import. */
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
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close both roles, preserving primary and every cleanup status. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** Explicitly revoke the existing advertise/respond aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** Complete custom dsr_msgs2/action/JogH2r client. Role aliases never imply grants. */
export class Ros2Dsr_msgs2ActionJogH2rClient extends
    BoundedActionClient<Ros2Dsr_msgs2ActionJogH2r_Goal, Ros2Dsr_msgs2ActionJogH2r_Result, Ros2Dsr_msgs2ActionJogH2r_Feedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros2Dsr_msgs2ActionJogH2r_GoalCodec(),
              new Ros2Dsr_msgs2ActionJogH2r_ResultCodec(),
              new Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec(),
              (value: Ros2Dsr_msgs2ActionJogH2r_Goal): bool => value.validValue(),
              1,
              48,
              cancelAny,
              capacity);
    }
}

/** Complete custom dsr_msgs2/action/JogH2r server with matching-ID response codecs. */
export class Ros2Dsr_msgs2ActionJogH2rServer extends
    BoundedActionServer<Ros2Dsr_msgs2ActionJogH2r_Goal, Ros2Dsr_msgs2ActionJogH2r_Result, Ros2Dsr_msgs2ActionJogH2r_Feedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2ActionJogH2r_GoalCodec(),
              new Ros2Dsr_msgs2ActionJogH2r_ResultCodec(),
              new Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec(),
              (value: Ros2Dsr_msgs2ActionJogH2r_Result): bool => value.validValue(),
              (value: Ros2Dsr_msgs2ActionJogH2r_Feedback): bool => value.validValue(),
              10,
              capacity);
    }
}

/** Complete custom dsr_msgs2/action/MovejH2r client. Role aliases never imply grants. */
export class Ros2Dsr_msgs2ActionMovejH2rClient extends
    BoundedActionClient<Ros2Dsr_msgs2ActionMovejH2r_Goal, Ros2Dsr_msgs2ActionMovejH2r_Result, Ros2Dsr_msgs2ActionMovejH2r_Feedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros2Dsr_msgs2ActionMovejH2r_GoalCodec(),
              new Ros2Dsr_msgs2ActionMovejH2r_ResultCodec(),
              new Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec(),
              (value: Ros2Dsr_msgs2ActionMovejH2r_Goal): bool => value.validValue(),
              1,
              48,
              cancelAny,
              capacity);
    }
}

/** Complete custom dsr_msgs2/action/MovejH2r server with matching-ID response codecs. */
export class Ros2Dsr_msgs2ActionMovejH2rServer extends
    BoundedActionServer<Ros2Dsr_msgs2ActionMovejH2r_Goal, Ros2Dsr_msgs2ActionMovejH2r_Result, Ros2Dsr_msgs2ActionMovejH2r_Feedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2ActionMovejH2r_GoalCodec(),
              new Ros2Dsr_msgs2ActionMovejH2r_ResultCodec(),
              new Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec(),
              (value: Ros2Dsr_msgs2ActionMovejH2r_Result): bool => value.validValue(),
              (value: Ros2Dsr_msgs2ActionMovejH2r_Feedback): bool => value.validValue(),
              144,
              capacity);
    }
}

/** Complete custom dsr_msgs2/action/MovelH2r client. Role aliases never imply grants. */
export class Ros2Dsr_msgs2ActionMovelH2rClient extends
    BoundedActionClient<Ros2Dsr_msgs2ActionMovelH2r_Goal, Ros2Dsr_msgs2ActionMovelH2r_Result, Ros2Dsr_msgs2ActionMovelH2r_Feedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros2Dsr_msgs2ActionMovelH2r_GoalCodec(),
              new Ros2Dsr_msgs2ActionMovelH2r_ResultCodec(),
              new Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec(),
              (value: Ros2Dsr_msgs2ActionMovelH2r_Goal): bool => value.validValue(),
              1,
              48,
              cancelAny,
              capacity);
    }
}

/** Complete custom dsr_msgs2/action/MovelH2r server with matching-ID response codecs. */
export class Ros2Dsr_msgs2ActionMovelH2rServer extends
    BoundedActionServer<Ros2Dsr_msgs2ActionMovelH2r_Goal, Ros2Dsr_msgs2ActionMovelH2r_Result, Ros2Dsr_msgs2ActionMovelH2r_Feedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2ActionMovelH2r_GoalCodec(),
              new Ros2Dsr_msgs2ActionMovelH2r_ResultCodec(),
              new Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec(),
              (value: Ros2Dsr_msgs2ActionMovelH2r_Result): bool => value.validValue(),
              (value: Ros2Dsr_msgs2ActionMovelH2r_Feedback): bool => value.validValue(),
              80,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlignAxis1 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvAlignAxis1Client extends BoundedServiceClient<Ros2Dsr_msgs2SrvAlignAxis1_Request, Ros2Dsr_msgs2SrvAlignAxis1_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec(),
              new Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvAlignAxis1_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlignAxis1 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvAlignAxis1Server extends BoundedServiceServer<Ros2Dsr_msgs2SrvAlignAxis1_Request, Ros2Dsr_msgs2SrvAlignAxis1_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec(),
              new Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvAlignAxis1_Response): bool => value.validValue(),
              170,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlignAxis2 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvAlignAxis2Client extends BoundedServiceClient<Ros2Dsr_msgs2SrvAlignAxis2_Request, Ros2Dsr_msgs2SrvAlignAxis2_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec(),
              new Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvAlignAxis2_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlignAxis2 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvAlignAxis2Server extends BoundedServiceServer<Ros2Dsr_msgs2SrvAlignAxis2_Request, Ros2Dsr_msgs2SrvAlignAxis2_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec(),
              new Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvAlignAxis2_Response): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlterMotion typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvAlterMotionClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvAlterMotion_Request, Ros2Dsr_msgs2SrvAlterMotion_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvAlterMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvAlterMotion_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlterMotion incoming request/response owner. */
export class Ros2Dsr_msgs2SrvAlterMotionServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvAlterMotion_Request, Ros2Dsr_msgs2SrvAlterMotion_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvAlterMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvAlterMotion_Response): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CalcCoord typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvCalcCoordClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvCalcCoord_Request, Ros2Dsr_msgs2SrvCalcCoord_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvCalcCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCalcCoord_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CalcCoord incoming request/response owner. */
export class Ros2Dsr_msgs2SrvCalcCoordServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvCalcCoord_Request, Ros2Dsr_msgs2SrvCalcCoord_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvCalcCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCalcCoord_Response): bool => value.validValue(),
              195,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeCollisionSensitivity typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request, Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec(),
              new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeCollisionSensitivity incoming request/response owner. */
export class Ros2Dsr_msgs2SrvChangeCollisionSensitivityServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request, Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec(),
              new Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeOperationSpeed typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvChangeOperationSpeedClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvChangeOperationSpeed_Request, Ros2Dsr_msgs2SrvChangeOperationSpeed_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec(),
              new Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvChangeOperationSpeed_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeOperationSpeed incoming request/response owner. */
export class Ros2Dsr_msgs2SrvChangeOperationSpeedServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvChangeOperationSpeed_Request, Ros2Dsr_msgs2SrvChangeOperationSpeed_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec(),
              new Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvChangeOperationSpeed_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckForceCondition typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvCheckForceConditionClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvCheckForceCondition_Request, Ros2Dsr_msgs2SrvCheckForceCondition_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckForceCondition_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckForceCondition incoming request/response owner. */
export class Ros2Dsr_msgs2SrvCheckForceConditionServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvCheckForceCondition_Request, Ros2Dsr_msgs2SrvCheckForceCondition_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckForceCondition_Response): bool => value.validValue(),
              18,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckMotion typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvCheckMotionClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvCheckMotion_Request, Ros2Dsr_msgs2SrvCheckMotion_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvCheckMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckMotion_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckMotion incoming request/response owner. */
export class Ros2Dsr_msgs2SrvCheckMotionServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvCheckMotion_Request, Ros2Dsr_msgs2SrvCheckMotion_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvCheckMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckMotion_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition1 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition1Client extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request, Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition1 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition1Server extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request, Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response): bool => value.validValue(),
              99,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition2 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition2Client extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request, Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition2 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition2Server extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request, Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response): bool => value.validValue(),
              67,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckPositionCondition typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvCheckPositionConditionClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvCheckPositionCondition_Request, Ros2Dsr_msgs2SrvCheckPositionCondition_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckPositionCondition_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckPositionCondition incoming request/response owner. */
export class Ros2Dsr_msgs2SrvCheckPositionConditionServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvCheckPositionCondition_Request, Ros2Dsr_msgs2SrvCheckPositionCondition_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec(),
              new Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCheckPositionCondition_Response): bool => value.validValue(),
              67,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateModbus typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvConfigCreateModbusClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvConfigCreateModbus_Request, Ros2Dsr_msgs2SrvConfigCreateModbus_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigCreateModbus_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateModbus incoming request/response owner. */
export class Ros2Dsr_msgs2SrvConfigCreateModbusServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvConfigCreateModbus_Request, Ros2Dsr_msgs2SrvConfigCreateModbus_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigCreateModbus_Response): bool => value.validValue(),
              531,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTcp typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvConfigCreateTcpClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvConfigCreateTcp_Request, Ros2Dsr_msgs2SrvConfigCreateTcp_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigCreateTcp_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTcp incoming request/response owner. */
export class Ros2Dsr_msgs2SrvConfigCreateTcpServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvConfigCreateTcp_Request, Ros2Dsr_msgs2SrvConfigCreateTcp_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigCreateTcp_Response): bool => value.validValue(),
              308,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTool typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvConfigCreateToolClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvConfigCreateTool_Request, Ros2Dsr_msgs2SrvConfigCreateTool_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigCreateTool_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTool incoming request/response owner. */
export class Ros2Dsr_msgs2SrvConfigCreateToolServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvConfigCreateTool_Request, Ros2Dsr_msgs2SrvConfigCreateTool_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigCreateTool_Response): bool => value.validValue(),
              340,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteModbus typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvConfigDeleteModbusClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvConfigDeleteModbus_Request, Ros2Dsr_msgs2SrvConfigDeleteModbus_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigDeleteModbus_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteModbus incoming request/response owner. */
export class Ros2Dsr_msgs2SrvConfigDeleteModbusServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvConfigDeleteModbus_Request, Ros2Dsr_msgs2SrvConfigDeleteModbus_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigDeleteModbus_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTcp typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvConfigDeleteTcpClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvConfigDeleteTcp_Request, Ros2Dsr_msgs2SrvConfigDeleteTcp_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigDeleteTcp_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTcp incoming request/response owner. */
export class Ros2Dsr_msgs2SrvConfigDeleteTcpServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvConfigDeleteTcp_Request, Ros2Dsr_msgs2SrvConfigDeleteTcp_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigDeleteTcp_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTool typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvConfigDeleteToolClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvConfigDeleteTool_Request, Ros2Dsr_msgs2SrvConfigDeleteTool_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigDeleteTool_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTool incoming request/response owner. */
export class Ros2Dsr_msgs2SrvConfigDeleteToolServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvConfigDeleteTool_Request, Ros2Dsr_msgs2SrvConfigDeleteTool_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConfigDeleteTool_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConnectRtControl typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvConnectRtControlClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvConnectRtControl_Request, Ros2Dsr_msgs2SrvConnectRtControl_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConnectRtControl_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConnectRtControl incoming request/response owner. */
export class Ros2Dsr_msgs2SrvConnectRtControlServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvConnectRtControl_Request, Ros2Dsr_msgs2SrvConnectRtControl_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvConnectRtControl_Response): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CoordTransform typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvCoordTransformClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvCoordTransform_Request, Ros2Dsr_msgs2SrvCoordTransform_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvCoordTransform_RequestCodec(),
              new Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCoordTransform_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CoordTransform incoming request/response owner. */
export class Ros2Dsr_msgs2SrvCoordTransformServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvCoordTransform_Request, Ros2Dsr_msgs2SrvCoordTransform_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvCoordTransform_RequestCodec(),
              new Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvCoordTransform_Response): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisableAlterMotion typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvDisableAlterMotionClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvDisableAlterMotion_Request, Ros2Dsr_msgs2SrvDisableAlterMotion_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDisableAlterMotion_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisableAlterMotion incoming request/response owner. */
export class Ros2Dsr_msgs2SrvDisableAlterMotionServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvDisableAlterMotion_Request, Ros2Dsr_msgs2SrvDisableAlterMotion_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDisableAlterMotion_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisconnectRtControl typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvDisconnectRtControlClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvDisconnectRtControl_Request, Ros2Dsr_msgs2SrvDisconnectRtControl_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDisconnectRtControl_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisconnectRtControl incoming request/response owner. */
export class Ros2Dsr_msgs2SrvDisconnectRtControlServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvDisconnectRtControl_Request, Ros2Dsr_msgs2SrvDisconnectRtControl_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDisconnectRtControl_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlPause typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvDrlPauseClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvDrlPause_Request, Ros2Dsr_msgs2SrvDrlPause_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvDrlPause_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlPause_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlPause_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlPause incoming request/response owner. */
export class Ros2Dsr_msgs2SrvDrlPauseServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvDrlPause_Request, Ros2Dsr_msgs2SrvDrlPause_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvDrlPause_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlPause_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlPause_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlResume typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvDrlResumeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvDrlResume_Request, Ros2Dsr_msgs2SrvDrlResume_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvDrlResume_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlResume_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlResume_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlResume incoming request/response owner. */
export class Ros2Dsr_msgs2SrvDrlResumeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvDrlResume_Request, Ros2Dsr_msgs2SrvDrlResume_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvDrlResume_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlResume_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlResume_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStart typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvDrlStartClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvDrlStart_Request, Ros2Dsr_msgs2SrvDrlStart_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvDrlStart_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlStart_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlStart_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStart incoming request/response owner. */
export class Ros2Dsr_msgs2SrvDrlStartServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvDrlStart_Request, Ros2Dsr_msgs2SrvDrlStart_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvDrlStart_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlStart_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlStart_Response): bool => value.validValue(),
              261,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStop typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvDrlStopClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvDrlStop_Request, Ros2Dsr_msgs2SrvDrlStop_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvDrlStop_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlStop_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlStop_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStop incoming request/response owner. */
export class Ros2Dsr_msgs2SrvDrlStopServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvDrlStop_Request, Ros2Dsr_msgs2SrvDrlStop_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvDrlStop_RequestCodec(),
              new Ros2Dsr_msgs2SrvDrlStop_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvDrlStop_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/EnableAlterMotion typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvEnableAlterMotionClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvEnableAlterMotion_Request, Ros2Dsr_msgs2SrvEnableAlterMotion_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvEnableAlterMotion_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/EnableAlterMotion incoming request/response owner. */
export class Ros2Dsr_msgs2SrvEnableAlterMotionServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvEnableAlterMotion_Request, Ros2Dsr_msgs2SrvEnableAlterMotion_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec(),
              new Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvEnableAlterMotion_Response): bool => value.validValue(),
              38,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Fkin typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvFkinClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvFkin_Request, Ros2Dsr_msgs2SrvFkin_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvFkin_RequestCodec(),
              new Ros2Dsr_msgs2SrvFkin_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvFkin_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Fkin incoming request/response owner. */
export class Ros2Dsr_msgs2SrvFkinServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvFkin_Request, Ros2Dsr_msgs2SrvFkin_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvFkin_RequestCodec(),
              new Ros2Dsr_msgs2SrvFkin_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvFkin_Response): bool => value.validValue(),
              49,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlMode typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetControlModeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetControlMode_Request, Ros2Dsr_msgs2SrvGetControlMode_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetControlMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetControlMode_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlMode incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetControlModeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetControlMode_Request, Ros2Dsr_msgs2SrvGetControlMode_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetControlMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetControlMode_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlSpace typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetControlSpaceClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetControlSpace_Request, Ros2Dsr_msgs2SrvGetControlSpace_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetControlSpace_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlSpace incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetControlSpaceServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetControlSpace_Request, Ros2Dsr_msgs2SrvGetControlSpace_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetControlSpace_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxAnalogInput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request, Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request): bool => value.validValue(),
              9,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxAnalogInput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request, Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalInput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalInput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalOutput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalOutput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request, Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPose typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentPoseClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentPose_Request, Ros2Dsr_msgs2SrvGetCurrentPose_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentPose_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPose incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentPoseServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentPose_Request, Ros2Dsr_msgs2SrvGetCurrentPose_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentPose_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosj typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentPosjClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentPosj_Request, Ros2Dsr_msgs2SrvGetCurrentPosj_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentPosj_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosj incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentPosjServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentPosj_Request, Ros2Dsr_msgs2SrvGetCurrentPosj_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentPosj_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosx typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentPosxClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentPosx_Request, Ros2Dsr_msgs2SrvGetCurrentPosx_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentPosx_Request): bool => value.validValue(),
              2213,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosx incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentPosxServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentPosx_Request, Ros2Dsr_msgs2SrvGetCurrentPosx_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentPosx_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentRotm typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentRotmClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentRotm_Request, Ros2Dsr_msgs2SrvGetCurrentRotm_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentRotm_Request): bool => value.validValue(),
              2213,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentRotm incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentRotmServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentRotm_Request, Ros2Dsr_msgs2SrvGetCurrentRotm_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentRotm_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentSolutionSpace typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request, Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentSolutionSpace incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request, Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTcp typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentTcpClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentTcp_Request, Ros2Dsr_msgs2SrvGetCurrentTcp_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentTcp_Request): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTcp incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentTcpServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentTcp_Request, Ros2Dsr_msgs2SrvGetCurrentTcp_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentTcp_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTool typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentToolClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentTool_Request, Ros2Dsr_msgs2SrvGetCurrentTool_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentTool_Request): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTool incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentToolServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentTool_Request, Ros2Dsr_msgs2SrvGetCurrentTool_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentTool_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentToolFlangePosx typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request, Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentToolFlangePosx incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request, Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelj typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentVeljClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentVelj_Request, Ros2Dsr_msgs2SrvGetCurrentVelj_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentVelj_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelj incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentVeljServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentVelj_Request, Ros2Dsr_msgs2SrvGetCurrentVelj_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentVelj_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelx typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetCurrentVelxClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetCurrentVelx_Request, Ros2Dsr_msgs2SrvGetCurrentVelx_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentVelx_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelx incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetCurrentVelxServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetCurrentVelx_Request, Ros2Dsr_msgs2SrvGetCurrentVelx_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetCurrentVelx_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosj typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetDesiredPosjClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetDesiredPosj_Request, Ros2Dsr_msgs2SrvGetDesiredPosj_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredPosj_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosj incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetDesiredPosjServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetDesiredPosj_Request, Ros2Dsr_msgs2SrvGetDesiredPosj_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredPosj_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosx typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetDesiredPosxClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetDesiredPosx_Request, Ros2Dsr_msgs2SrvGetDesiredPosx_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredPosx_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosx incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetDesiredPosxServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetDesiredPosx_Request, Ros2Dsr_msgs2SrvGetDesiredPosx_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredPosx_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelj typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetDesiredVeljClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetDesiredVelj_Request, Ros2Dsr_msgs2SrvGetDesiredVelj_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredVelj_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelj incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetDesiredVeljServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetDesiredVelj_Request, Ros2Dsr_msgs2SrvGetDesiredVelj_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredVelj_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelx typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetDesiredVelxClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetDesiredVelx_Request, Ros2Dsr_msgs2SrvGetDesiredVelx_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredVelx_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelx incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetDesiredVelxServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetDesiredVelx_Request, Ros2Dsr_msgs2SrvGetDesiredVelx_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDesiredVelx_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDrlState typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetDrlStateClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetDrlState_Request, Ros2Dsr_msgs2SrvGetDrlState_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetDrlState_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDrlState_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDrlState incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetDrlStateServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetDrlState_Request, Ros2Dsr_msgs2SrvGetDrlState_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetDrlState_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetDrlState_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetExternalTorque typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetExternalTorqueClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetExternalTorque_Request, Ros2Dsr_msgs2SrvGetExternalTorque_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetExternalTorque_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetExternalTorque incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetExternalTorqueServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetExternalTorque_Request, Ros2Dsr_msgs2SrvGetExternalTorque_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetExternalTorque_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterBit typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetInputRegisterBitClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetInputRegisterBit_Request, Ros2Dsr_msgs2SrvGetInputRegisterBit_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetInputRegisterBit_Request): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterBit incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetInputRegisterBitServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetInputRegisterBit_Request, Ros2Dsr_msgs2SrvGetInputRegisterBit_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetInputRegisterBit_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterFloat typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetInputRegisterFloatClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request, Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request): bool => value.validValue(),
              9,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterFloat incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetInputRegisterFloatServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request, Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterInt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetInputRegisterIntClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetInputRegisterInt_Request, Ros2Dsr_msgs2SrvGetInputRegisterInt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetInputRegisterInt_Request): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterInt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetInputRegisterIntServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetInputRegisterInt_Request, Ros2Dsr_msgs2SrvGetInputRegisterInt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetInputRegisterInt_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetJointTorque typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetJointTorqueClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetJointTorque_Request, Ros2Dsr_msgs2SrvGetJointTorque_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetJointTorque_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetJointTorque incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetJointTorqueServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetJointTorque_Request, Ros2Dsr_msgs2SrvGetJointTorque_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetJointTorque_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetLastAlarm typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetLastAlarmClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetLastAlarm_Request, Ros2Dsr_msgs2SrvGetLastAlarm_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetLastAlarm_Request): bool => value.validValue(),
              793,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetLastAlarm incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetLastAlarmServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetLastAlarm_Request, Ros2Dsr_msgs2SrvGetLastAlarm_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetLastAlarm_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetModbusInput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetModbusInputClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetModbusInput_Request, Ros2Dsr_msgs2SrvGetModbusInput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetModbusInput_Request): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetModbusInput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetModbusInputServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetModbusInput_Request, Ros2Dsr_msgs2SrvGetModbusInput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetModbusInput_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOrientationError typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetOrientationErrorClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetOrientationError_Request, Ros2Dsr_msgs2SrvGetOrientationError_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOrientationError_Request): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOrientationError incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetOrientationErrorServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetOrientationError_Request, Ros2Dsr_msgs2SrvGetOrientationError_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOrientationError_Response): bool => value.validValue(),
              97,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterBit typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterBitClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request, Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterBit incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterBitServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request, Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterFloat typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request, Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request): bool => value.validValue(),
              9,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterFloat incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterFloatServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request, Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterInt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterIntClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request, Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterInt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterIntServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request, Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotLinkInfo typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRobotLinkInfoClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request, Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request): bool => value.validValue(),
              129,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotLinkInfo incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRobotLinkInfoServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request, Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotMode typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRobotModeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetRobotMode_Request, Ros2Dsr_msgs2SrvGetRobotMode_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotMode_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotMode incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRobotModeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetRobotMode_Request, Ros2Dsr_msgs2SrvGetRobotMode_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotMode_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSpeedMode typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRobotSpeedModeClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request, Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSpeedMode incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRobotSpeedModeServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request, Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotState typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRobotStateClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetRobotState_Request, Ros2Dsr_msgs2SrvGetRobotState_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRobotState_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotState_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotState incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRobotStateServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetRobotState_Request, Ros2Dsr_msgs2SrvGetRobotState_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRobotState_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotState_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSystem typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRobotSystemClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetRobotSystem_Request, Ros2Dsr_msgs2SrvGetRobotSystem_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotSystem_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSystem incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRobotSystemServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetRobotSystem_Request, Ros2Dsr_msgs2SrvGetRobotSystem_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRobotSystem_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputDataList typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRtControlInputDataListClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request, Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputDataList incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRtControlInputDataListServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request, Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputVersionList typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request, Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputVersionList incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRtControlInputVersionListServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request, Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputDataList typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request, Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputDataList incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputDataListServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request, Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputVersionList typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request, Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputVersionList incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputVersionListServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request, Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetSolutionSpace typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetSolutionSpaceClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetSolutionSpace_Request, Ros2Dsr_msgs2SrvGetSolutionSpace_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetSolutionSpace_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetSolutionSpace incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetSolutionSpaceServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetSolutionSpace_Request, Ros2Dsr_msgs2SrvGetSolutionSpace_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetSolutionSpace_Response): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalInput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetToolDigitalInputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetToolDigitalInput_Request, Ros2Dsr_msgs2SrvGetToolDigitalInput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetToolDigitalInput_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalInput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetToolDigitalInputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetToolDigitalInput_Request, Ros2Dsr_msgs2SrvGetToolDigitalInput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetToolDigitalInput_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalOutput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetToolDigitalOutputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request, Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalOutput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetToolDigitalOutputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request, Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolForce typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetToolForceClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvGetToolForce_Request, Ros2Dsr_msgs2SrvGetToolForce_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetToolForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetToolForce_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolForce incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetToolForceServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvGetToolForce_Request, Ros2Dsr_msgs2SrvGetToolForce_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetToolForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetToolForce_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetUserCartCoord typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetUserCartCoordClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetUserCartCoord_Request, Ros2Dsr_msgs2SrvGetUserCartCoord_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetUserCartCoord_Request): bool => value.validValue(),
              50,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetUserCartCoord incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetUserCartCoordServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetUserCartCoord_Request, Ros2Dsr_msgs2SrvGetUserCartCoord_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetUserCartCoord_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetWorkpieceWeight typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvGetWorkpieceWeightClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request, Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetWorkpieceWeight incoming request/response owner. */
export class Ros2Dsr_msgs2SrvGetWorkpieceWeightServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request, Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec(),
              new Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Ikin typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvIkinClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvIkin_Request, Ros2Dsr_msgs2SrvIkin_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvIkin_RequestCodec(),
              new Ros2Dsr_msgs2SrvIkin_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvIkin_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Ikin incoming request/response owner. */
export class Ros2Dsr_msgs2SrvIkinServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvIkin_Request, Ros2Dsr_msgs2SrvIkin_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvIkin_RequestCodec(),
              new Ros2Dsr_msgs2SrvIkin_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvIkin_Response): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/IsDoneBoltTightening typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request, Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec(),
              new Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/IsDoneBoltTightening incoming request/response owner. */
export class Ros2Dsr_msgs2SrvIsDoneBoltTighteningServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request, Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec(),
              new Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response): bool => value.validValue(),
              17,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Jog typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvJogClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvJog_Request, Ros2Dsr_msgs2SrvJog_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvJog_RequestCodec(),
              new Ros2Dsr_msgs2SrvJog_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvJog_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Jog incoming request/response owner. */
export class Ros2Dsr_msgs2SrvJogServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvJog_Request, Ros2Dsr_msgs2SrvJog_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvJog_RequestCodec(),
              new Ros2Dsr_msgs2SrvJog_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvJog_Response): bool => value.validValue(),
              10,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/JogMulti typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvJogMultiClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvJogMulti_Request, Ros2Dsr_msgs2SrvJogMulti_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvJogMulti_RequestCodec(),
              new Ros2Dsr_msgs2SrvJogMulti_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvJogMulti_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/JogMulti incoming request/response owner. */
export class Ros2Dsr_msgs2SrvJogMultiServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvJogMulti_Request, Ros2Dsr_msgs2SrvJogMulti_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvJogMulti_RequestCodec(),
              new Ros2Dsr_msgs2SrvJogMulti_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvJogMulti_Response): bool => value.validValue(),
              57,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveBlending typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveBlendingClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveBlending_Request, Ros2Dsr_msgs2SrvMoveBlending_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveBlending_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveBlending_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveBlending incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveBlendingServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveBlending_Request, Ros2Dsr_msgs2SrvMoveBlending_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveBlending_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveBlending_Response): bool => value.validValue(),
              2256,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveCircle typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveCircleClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveCircle_Request, Ros2Dsr_msgs2SrvMoveCircle_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveCircle_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveCircle_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveCircle incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveCircleServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveCircle_Request, Ros2Dsr_msgs2SrvMoveCircle_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveCircle_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveCircle_Response): bool => value.validValue(),
              2280,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveHome typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveHomeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveHome_Request, Ros2Dsr_msgs2SrvMoveHome_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveHome_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveHome_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveHome_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveHome incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveHomeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveHome_Request, Ros2Dsr_msgs2SrvMoveHome_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveHome_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveHome_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveHome_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJoint typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveJointClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveJoint_Request, Ros2Dsr_msgs2SrvMoveJoint_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveJoint_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveJoint_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJoint incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveJointServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveJoint_Request, Ros2Dsr_msgs2SrvMoveJoint_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveJoint_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveJoint_Response): bool => value.validValue(),
              83,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJointx typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveJointxClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveJointx_Request, Ros2Dsr_msgs2SrvMoveJointx_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveJointx_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveJointx_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJointx incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveJointxServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveJointx_Request, Ros2Dsr_msgs2SrvMoveJointx_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveJointx_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveJointx_Response): bool => value.validValue(),
              85,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveLine typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveLineClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveLine_Request, Ros2Dsr_msgs2SrvMoveLine_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveLine_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveLine_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveLine_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveLine incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveLineServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveLine_Request, Ros2Dsr_msgs2SrvMoveLine_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveLine_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveLine_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveLine_Response): bool => value.validValue(),
              100,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePause typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMovePauseClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMovePause_Request, Ros2Dsr_msgs2SrvMovePause_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMovePause_RequestCodec(),
              new Ros2Dsr_msgs2SrvMovePause_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMovePause_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePause incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMovePauseServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMovePause_Request, Ros2Dsr_msgs2SrvMovePause_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMovePause_RequestCodec(),
              new Ros2Dsr_msgs2SrvMovePause_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMovePause_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePeriodic typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMovePeriodicClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMovePeriodic_Request, Ros2Dsr_msgs2SrvMovePeriodic_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec(),
              new Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMovePeriodic_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePeriodic incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMovePeriodicServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMovePeriodic_Request, Ros2Dsr_msgs2SrvMovePeriodic_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec(),
              new Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMovePeriodic_Response): bool => value.validValue(),
              107,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveResume typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveResumeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveResume_Request, Ros2Dsr_msgs2SrvMoveResume_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveResume_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveResume_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveResume_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveResume incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveResumeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveResume_Request, Ros2Dsr_msgs2SrvMoveResume_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveResume_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveResume_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveResume_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSpiral typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveSpiralClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveSpiral_Request, Ros2Dsr_msgs2SrvMoveSpiral_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveSpiral_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSpiral incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveSpiralServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveSpiral_Request, Ros2Dsr_msgs2SrvMoveSpiral_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveSpiral_Response): bool => value.validValue(),
              94,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineJoint typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveSplineJointClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvMoveSplineJoint_Request, Ros2Dsr_msgs2SrvMoveSplineJoint_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveSplineJoint_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineJoint incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveSplineJointServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvMoveSplineJoint_Request, Ros2Dsr_msgs2SrvMoveSplineJoint_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveSplineJoint_Response): bool => value.validValue(),
              2319,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineTask typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveSplineTaskClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveSplineTask_Request, Ros2Dsr_msgs2SrvMoveSplineTask_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveSplineTask_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineTask incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveSplineTaskServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveSplineTask_Request, Ros2Dsr_msgs2SrvMoveSplineTask_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveSplineTask_Response): bool => value.validValue(),
              2257,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveStop typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveStopClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveStop_Request, Ros2Dsr_msgs2SrvMoveStop_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveStop_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveStop_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveStop_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveStop incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveStopServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveStop_Request, Ros2Dsr_msgs2SrvMoveStop_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveStop_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveStop_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveStop_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveWait typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvMoveWaitClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvMoveWait_Request, Ros2Dsr_msgs2SrvMoveWait_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvMoveWait_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveWait_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveWait_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveWait incoming request/response owner. */
export class Ros2Dsr_msgs2SrvMoveWaitServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvMoveWait_Request, Ros2Dsr_msgs2SrvMoveWait_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvMoveWait_RequestCodec(),
              new Ros2Dsr_msgs2SrvMoveWait_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvMoveWait_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/OverwriteUserCartCoord typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request, Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/OverwriteUserCartCoord incoming request/response owner. */
export class Ros2Dsr_msgs2SrvOverwriteUserCartCoordServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request, Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis1 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvParallelAxis1Client extends BoundedServiceClient<Ros2Dsr_msgs2SrvParallelAxis1_Request, Ros2Dsr_msgs2SrvParallelAxis1_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec(),
              new Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvParallelAxis1_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis1 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvParallelAxis1Server extends BoundedServiceServer<Ros2Dsr_msgs2SrvParallelAxis1_Request, Ros2Dsr_msgs2SrvParallelAxis1_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec(),
              new Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvParallelAxis1_Response): bool => value.validValue(),
              146,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis2 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvParallelAxis2Client extends BoundedServiceClient<Ros2Dsr_msgs2SrvParallelAxis2_Request, Ros2Dsr_msgs2SrvParallelAxis2_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec(),
              new Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvParallelAxis2_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis2 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvParallelAxis2Server extends BoundedServiceServer<Ros2Dsr_msgs2SrvParallelAxis2_Request, Ros2Dsr_msgs2SrvParallelAxis2_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec(),
              new Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvParallelAxis2_Response): bool => value.validValue(),
              26,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReadDataRt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvReadDataRtClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvReadDataRt_Request, Ros2Dsr_msgs2SrvReadDataRt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvReadDataRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvReadDataRt_Request): bool => value.validValue(),
              8154,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReadDataRt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvReadDataRtServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvReadDataRt_Request, Ros2Dsr_msgs2SrvReadDataRt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvReadDataRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvReadDataRt_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseComplianceCtrl typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request, Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec(),
              new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseComplianceCtrl incoming request/response owner. */
export class Ros2Dsr_msgs2SrvReleaseComplianceCtrlServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request, Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec(),
              new Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseForce typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvReleaseForceClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvReleaseForce_Request, Ros2Dsr_msgs2SrvReleaseForce_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvReleaseForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvReleaseForce_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseForce incoming request/response owner. */
export class Ros2Dsr_msgs2SrvReleaseForceServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvReleaseForce_Request, Ros2Dsr_msgs2SrvReleaseForce_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvReleaseForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvReleaseForce_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ResetWorkpieceWeight typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvResetWorkpieceWeightClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request, Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec(),
              new Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ResetWorkpieceWeight incoming request/response owner. */
export class Ros2Dsr_msgs2SrvResetWorkpieceWeightServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request, Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec(),
              new Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FClose typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvRobotiq2FCloseClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvRobotiq2FClose_Request, Ros2Dsr_msgs2SrvRobotiq2FClose_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec(),
              new Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvRobotiq2FClose_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FClose incoming request/response owner. */
export class Ros2Dsr_msgs2SrvRobotiq2FCloseServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvRobotiq2FClose_Request, Ros2Dsr_msgs2SrvRobotiq2FClose_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec(),
              new Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvRobotiq2FClose_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FMove typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvRobotiq2FMoveClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvRobotiq2FMove_Request, Ros2Dsr_msgs2SrvRobotiq2FMove_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec(),
              new Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvRobotiq2FMove_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FMove incoming request/response owner. */
export class Ros2Dsr_msgs2SrvRobotiq2FMoveServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvRobotiq2FMove_Request, Ros2Dsr_msgs2SrvRobotiq2FMove_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec(),
              new Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvRobotiq2FMove_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FOpen typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvRobotiq2FOpenClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvRobotiq2FOpen_Request, Ros2Dsr_msgs2SrvRobotiq2FOpen_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec(),
              new Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvRobotiq2FOpen_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FOpen incoming request/response owner. */
export class Ros2Dsr_msgs2SrvRobotiq2FOpenServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvRobotiq2FOpen_Request, Ros2Dsr_msgs2SrvRobotiq2FOpen_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec(),
              new Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvRobotiq2FOpen_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SerialSendData typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSerialSendDataClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSerialSendData_Request, Ros2Dsr_msgs2SrvSerialSendData_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSerialSendData_RequestCodec(),
              new Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSerialSendData_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SerialSendData incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSerialSendDataServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSerialSendData_Request, Ros2Dsr_msgs2SrvSerialSendData_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSerialSendData_RequestCodec(),
              new Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSerialSendData_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ServoOff typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvServoOffClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvServoOff_Request, Ros2Dsr_msgs2SrvServoOff_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvServoOff_RequestCodec(),
              new Ros2Dsr_msgs2SrvServoOff_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvServoOff_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ServoOff incoming request/response owner. */
export class Ros2Dsr_msgs2SrvServoOffServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvServoOff_Request, Ros2Dsr_msgs2SrvServoOff_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvServoOff_RequestCodec(),
              new Ros2Dsr_msgs2SrvServoOff_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvServoOff_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccjRt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetAccjRtClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetAccjRt_Request, Ros2Dsr_msgs2SrvSetAccjRt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetAccjRt_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccjRt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetAccjRtServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetAccjRt_Request, Ros2Dsr_msgs2SrvSetAccjRt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetAccjRt_Response): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccxRt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetAccxRtClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetAccxRt_Request, Ros2Dsr_msgs2SrvSetAccxRt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetAccxRt_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccxRt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetAccxRtServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetAccxRt_Request, Ros2Dsr_msgs2SrvSetAccxRt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetAccxRt_Response): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogInputType typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogInputType incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response): bool => value.validValue(),
              9,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutputType typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutputType incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request, Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxDigitalOutput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request, Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxDigitalOutput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request, Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTcp typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetCurrentTcpClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetCurrentTcp_Request, Ros2Dsr_msgs2SrvSetCurrentTcp_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCurrentTcp_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTcp incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetCurrentTcpServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetCurrentTcp_Request, Ros2Dsr_msgs2SrvSetCurrentTcp_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCurrentTcp_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTool typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetCurrentToolClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetCurrentTool_Request, Ros2Dsr_msgs2SrvSetCurrentTool_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCurrentTool_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTool incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetCurrentToolServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetCurrentTool_Request, Ros2Dsr_msgs2SrvSetCurrentTool_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetCurrentTool_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetDesiredForce typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetDesiredForceClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetDesiredForce_Request, Ros2Dsr_msgs2SrvSetDesiredForce_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetDesiredForce_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetDesiredForce incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetDesiredForceServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetDesiredForce_Request, Ros2Dsr_msgs2SrvSetDesiredForce_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetDesiredForce_Response): bool => value.validValue(),
              64,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetModbusOutput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetModbusOutputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetModbusOutput_Request, Ros2Dsr_msgs2SrvSetModbusOutput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetModbusOutput_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetModbusOutput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetModbusOutputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetModbusOutput_Request, Ros2Dsr_msgs2SrvSetModbusOutput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetModbusOutput_Response): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterBit typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterBitClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request, Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterBit incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterBitServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request, Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterFloat typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request, Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterFloat incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterFloatServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request, Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response): bool => value.validValue(),
              10,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterInt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterIntClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request, Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterInt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterIntServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request, Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRefCoord typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetRefCoordClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetRefCoord_Request, Ros2Dsr_msgs2SrvSetRefCoord_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRefCoord_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRefCoord incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetRefCoordServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetRefCoord_Request, Ros2Dsr_msgs2SrvSetRefCoord_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRefCoord_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotControl typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetRobotControlClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetRobotControl_Request, Ros2Dsr_msgs2SrvSetRobotControl_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotControl_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotControl incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetRobotControlServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetRobotControl_Request, Ros2Dsr_msgs2SrvSetRobotControl_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotControl_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotMode typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetRobotModeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetRobotMode_Request, Ros2Dsr_msgs2SrvSetRobotMode_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotMode_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotMode incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetRobotModeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetRobotMode_Request, Ros2Dsr_msgs2SrvSetRobotMode_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotMode_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSpeedMode typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetRobotSpeedModeClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request, Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSpeedMode incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetRobotSpeedModeServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request, Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSystem typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetRobotSystemClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetRobotSystem_Request, Ros2Dsr_msgs2SrvSetRobotSystem_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotSystem_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSystem incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetRobotSystemServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetRobotSystem_Request, Ros2Dsr_msgs2SrvSetRobotSystem_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRobotSystem_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlInput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetRtControlInputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetRtControlInput_Request, Ros2Dsr_msgs2SrvSetRtControlInput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRtControlInput_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlInput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetRtControlInputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetRtControlInput_Request, Ros2Dsr_msgs2SrvSetRtControlInput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRtControlInput_Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlOutput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetRtControlOutputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetRtControlOutput_Request, Ros2Dsr_msgs2SrvSetRtControlOutput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRtControlOutput_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlOutput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetRtControlOutputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetRtControlOutput_Request, Ros2Dsr_msgs2SrvSetRtControlOutput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetRtControlOutput_Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafeStopResetType typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetSafeStopResetType_Request, Ros2Dsr_msgs2SrvSetSafeStopResetType_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSafeStopResetType_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafeStopResetType incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetSafeStopResetTypeServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetSafeStopResetType_Request, Ros2Dsr_msgs2SrvSetSafeStopResetType_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSafeStopResetType_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafetyMode typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetSafetyModeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetSafetyMode_Request, Ros2Dsr_msgs2SrvSetSafetyMode_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSafetyMode_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafetyMode incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetSafetyModeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetSafetyMode_Request, Ros2Dsr_msgs2SrvSetSafetyMode_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSafetyMode_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularHandlingForce typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetSingularHandlingForceClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request, Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularHandlingForce incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetSingularHandlingForceServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request, Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularityHandling typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetSingularityHandlingClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetSingularityHandling_Request, Ros2Dsr_msgs2SrvSetSingularityHandling_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSingularityHandling_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularityHandling incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetSingularityHandlingServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetSingularityHandling_Request, Ros2Dsr_msgs2SrvSetSingularityHandling_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetSingularityHandling_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetStiffnessx typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetStiffnessxClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetStiffnessx_Request, Ros2Dsr_msgs2SrvSetStiffnessx_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetStiffnessx_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetStiffnessx incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetStiffnessxServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetStiffnessx_Request, Ros2Dsr_msgs2SrvSetStiffnessx_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetStiffnessx_Response): bool => value.validValue(),
              57,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolDigitalOutput typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetToolDigitalOutputClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request, Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolDigitalOutput incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetToolDigitalOutputServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request, Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolShape typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetToolShapeClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetToolShape_Request, Ros2Dsr_msgs2SrvSetToolShape_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetToolShape_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetToolShape_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolShape incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetToolShapeServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetToolShape_Request, Ros2Dsr_msgs2SrvSetToolShape_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetToolShape_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetToolShape_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord1 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord1Client extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetUserCartCoord1_Request, Ros2Dsr_msgs2SrvSetUserCartCoord1_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetUserCartCoord1_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord1 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord1Server extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetUserCartCoord1_Request, Ros2Dsr_msgs2SrvSetUserCartCoord1_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetUserCartCoord1_Response): bool => value.validValue(),
              49,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord2 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord2Client extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetUserCartCoord2_Request, Ros2Dsr_msgs2SrvSetUserCartCoord2_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetUserCartCoord2_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord2 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord2Server extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetUserCartCoord2_Request, Ros2Dsr_msgs2SrvSetUserCartCoord2_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetUserCartCoord2_Response): bool => value.validValue(),
              193,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord3 typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord3Client extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvSetUserCartCoord3_Request, Ros2Dsr_msgs2SrvSetUserCartCoord3_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetUserCartCoord3_Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord3 incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord3Server extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvSetUserCartCoord3_Request, Ros2Dsr_msgs2SrvSetUserCartCoord3_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetUserCartCoord3_Response): bool => value.validValue(),
              97,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVeljRt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetVeljRtClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetVeljRt_Request, Ros2Dsr_msgs2SrvSetVeljRt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetVeljRt_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVeljRt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetVeljRtServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetVeljRt_Request, Ros2Dsr_msgs2SrvSetVeljRt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetVeljRt_Response): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVelxRt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvSetVelxRtClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvSetVelxRt_Request, Ros2Dsr_msgs2SrvSetVelxRt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetVelxRt_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVelxRt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvSetVelxRtServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvSetVelxRt_Request, Ros2Dsr_msgs2SrvSetVelxRt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvSetVelxRt_Response): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/StartRtControl typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvStartRtControlClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvStartRtControl_Request, Ros2Dsr_msgs2SrvStartRtControl_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvStartRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvStartRtControl_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/StartRtControl incoming request/response owner. */
export class Ros2Dsr_msgs2SrvStartRtControlServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvStartRtControl_Request, Ros2Dsr_msgs2SrvStartRtControl_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvStartRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvStartRtControl_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/StopRtControl typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvStopRtControlClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvStopRtControl_Request, Ros2Dsr_msgs2SrvStopRtControl_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvStopRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvStopRtControl_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/StopRtControl incoming request/response owner. */
export class Ros2Dsr_msgs2SrvStopRtControlServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvStopRtControl_Request, Ros2Dsr_msgs2SrvStopRtControl_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvStopRtControl_RequestCodec(),
              new Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvStopRtControl_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/TaskComplianceCtrl typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvTaskComplianceCtrlClient extends
    BoundedServiceClient<Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request, Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec(),
              new Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/TaskComplianceCtrl incoming request/response owner. */
export class Ros2Dsr_msgs2SrvTaskComplianceCtrlServer extends
    BoundedServiceServer<Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request, Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec(),
              new Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response): bool => value.validValue(),
              57,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Trans typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvTransClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvTrans_Request, Ros2Dsr_msgs2SrvTrans_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvTrans_RequestCodec(),
              new Ros2Dsr_msgs2SrvTrans_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvTrans_Request): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Trans incoming request/response owner. */
export class Ros2Dsr_msgs2SrvTransServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvTrans_Request, Ros2Dsr_msgs2SrvTrans_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvTrans_RequestCodec(),
              new Ros2Dsr_msgs2SrvTrans_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvTrans_Response): bool => value.validValue(),
              98,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/WriteDataRt typed call and real-submit client. */
export class Ros2Dsr_msgs2SrvWriteDataRtClient extends BoundedServiceClient<Ros2Dsr_msgs2SrvWriteDataRt_Request, Ros2Dsr_msgs2SrvWriteDataRt_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              2,
              alias,
              new Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvWriteDataRt_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/WriteDataRt incoming request/response owner. */
export class Ros2Dsr_msgs2SrvWriteDataRtServer extends BoundedServiceServer<Ros2Dsr_msgs2SrvWriteDataRt_Request, Ros2Dsr_msgs2SrvWriteDataRt_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              2,
              advertise,
              respond,
              new Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec(),
              new Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec(),
              (value: Ros2Dsr_msgs2SrvWriteDataRt_Response): bool => value.validValue(),
              152,
              capacity);
    }
}
