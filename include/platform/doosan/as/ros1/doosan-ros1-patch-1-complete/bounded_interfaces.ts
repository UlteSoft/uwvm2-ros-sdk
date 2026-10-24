/**
 * @file bounded_interfaces.ts
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros1-patch-1-complete.ir.json
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
    Ros1Dsr_msgsAlignAxis1Request,
    Ros1Dsr_msgsAlignAxis1RequestCodec,
    Ros1Dsr_msgsAlignAxis1Response,
    Ros1Dsr_msgsAlignAxis1ResponseCodec,
    Ros1Dsr_msgsAlignAxis2Request,
    Ros1Dsr_msgsAlignAxis2RequestCodec,
    Ros1Dsr_msgsAlignAxis2Response,
    Ros1Dsr_msgsAlignAxis2ResponseCodec,
    Ros1Dsr_msgsAlterMotionRequest,
    Ros1Dsr_msgsAlterMotionRequestCodec,
    Ros1Dsr_msgsAlterMotionResponse,
    Ros1Dsr_msgsAlterMotionResponseCodec,
    Ros1Dsr_msgsCalcCoordRequest,
    Ros1Dsr_msgsCalcCoordRequestCodec,
    Ros1Dsr_msgsCalcCoordResponse,
    Ros1Dsr_msgsCalcCoordResponseCodec,
    Ros1Dsr_msgsChangeOperationSpeedRequest,
    Ros1Dsr_msgsChangeOperationSpeedRequestCodec,
    Ros1Dsr_msgsChangeOperationSpeedResponse,
    Ros1Dsr_msgsChangeOperationSpeedResponseCodec,
    Ros1Dsr_msgsCheckForceConditionRequest,
    Ros1Dsr_msgsCheckForceConditionRequestCodec,
    Ros1Dsr_msgsCheckForceConditionResponse,
    Ros1Dsr_msgsCheckForceConditionResponseCodec,
    Ros1Dsr_msgsCheckMotionRequest,
    Ros1Dsr_msgsCheckMotionRequestCodec,
    Ros1Dsr_msgsCheckMotionResponse,
    Ros1Dsr_msgsCheckMotionResponseCodec,
    Ros1Dsr_msgsCheckOrientationCondition1Request,
    Ros1Dsr_msgsCheckOrientationCondition1RequestCodec,
    Ros1Dsr_msgsCheckOrientationCondition1Response,
    Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec,
    Ros1Dsr_msgsCheckOrientationCondition2Request,
    Ros1Dsr_msgsCheckOrientationCondition2RequestCodec,
    Ros1Dsr_msgsCheckOrientationCondition2Response,
    Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec,
    Ros1Dsr_msgsCheckPositionConditionRequest,
    Ros1Dsr_msgsCheckPositionConditionRequestCodec,
    Ros1Dsr_msgsCheckPositionConditionResponse,
    Ros1Dsr_msgsCheckPositionConditionResponseCodec,
    Ros1Dsr_msgsConfigCreateModbusRequest,
    Ros1Dsr_msgsConfigCreateModbusRequestCodec,
    Ros1Dsr_msgsConfigCreateModbusResponse,
    Ros1Dsr_msgsConfigCreateModbusResponseCodec,
    Ros1Dsr_msgsConfigCreateTcpRequest,
    Ros1Dsr_msgsConfigCreateTcpRequestCodec,
    Ros1Dsr_msgsConfigCreateTcpResponse,
    Ros1Dsr_msgsConfigCreateTcpResponseCodec,
    Ros1Dsr_msgsConfigCreateToolRequest,
    Ros1Dsr_msgsConfigCreateToolRequestCodec,
    Ros1Dsr_msgsConfigCreateToolResponse,
    Ros1Dsr_msgsConfigCreateToolResponseCodec,
    Ros1Dsr_msgsConfigDeleteModbusRequest,
    Ros1Dsr_msgsConfigDeleteModbusRequestCodec,
    Ros1Dsr_msgsConfigDeleteModbusResponse,
    Ros1Dsr_msgsConfigDeleteModbusResponseCodec,
    Ros1Dsr_msgsConfigDeleteTcpRequest,
    Ros1Dsr_msgsConfigDeleteTcpRequestCodec,
    Ros1Dsr_msgsConfigDeleteTcpResponse,
    Ros1Dsr_msgsConfigDeleteTcpResponseCodec,
    Ros1Dsr_msgsConfigDeleteToolRequest,
    Ros1Dsr_msgsConfigDeleteToolRequestCodec,
    Ros1Dsr_msgsConfigDeleteToolResponse,
    Ros1Dsr_msgsConfigDeleteToolResponseCodec,
    Ros1Dsr_msgsConnectRTControlRequest,
    Ros1Dsr_msgsConnectRTControlRequestCodec,
    Ros1Dsr_msgsConnectRTControlResponse,
    Ros1Dsr_msgsConnectRTControlResponseCodec,
    Ros1Dsr_msgsCoordTransformRequest,
    Ros1Dsr_msgsCoordTransformRequestCodec,
    Ros1Dsr_msgsCoordTransformResponse,
    Ros1Dsr_msgsCoordTransformResponseCodec,
    Ros1Dsr_msgsDisableAlterMotionRequest,
    Ros1Dsr_msgsDisableAlterMotionRequestCodec,
    Ros1Dsr_msgsDisableAlterMotionResponse,
    Ros1Dsr_msgsDisableAlterMotionResponseCodec,
    Ros1Dsr_msgsDisconnectRTControlRequest,
    Ros1Dsr_msgsDisconnectRTControlRequestCodec,
    Ros1Dsr_msgsDisconnectRTControlResponse,
    Ros1Dsr_msgsDisconnectRTControlResponseCodec,
    Ros1Dsr_msgsDrlPauseRequest,
    Ros1Dsr_msgsDrlPauseRequestCodec,
    Ros1Dsr_msgsDrlPauseResponse,
    Ros1Dsr_msgsDrlPauseResponseCodec,
    Ros1Dsr_msgsDrlResumeRequest,
    Ros1Dsr_msgsDrlResumeRequestCodec,
    Ros1Dsr_msgsDrlResumeResponse,
    Ros1Dsr_msgsDrlResumeResponseCodec,
    Ros1Dsr_msgsDrlStartRequest,
    Ros1Dsr_msgsDrlStartRequestCodec,
    Ros1Dsr_msgsDrlStartResponse,
    Ros1Dsr_msgsDrlStartResponseCodec,
    Ros1Dsr_msgsDrlStopRequest,
    Ros1Dsr_msgsDrlStopRequestCodec,
    Ros1Dsr_msgsDrlStopResponse,
    Ros1Dsr_msgsDrlStopResponseCodec,
    Ros1Dsr_msgsEnableAlterMotionRequest,
    Ros1Dsr_msgsEnableAlterMotionRequestCodec,
    Ros1Dsr_msgsEnableAlterMotionResponse,
    Ros1Dsr_msgsEnableAlterMotionResponseCodec,
    Ros1Dsr_msgsFkinRequest,
    Ros1Dsr_msgsFkinRequestCodec,
    Ros1Dsr_msgsFkinResponse,
    Ros1Dsr_msgsFkinResponseCodec,
    Ros1Dsr_msgsGetControlModeRequest,
    Ros1Dsr_msgsGetControlModeRequestCodec,
    Ros1Dsr_msgsGetControlModeResponse,
    Ros1Dsr_msgsGetControlModeResponseCodec,
    Ros1Dsr_msgsGetControlSpaceRequest,
    Ros1Dsr_msgsGetControlSpaceRequestCodec,
    Ros1Dsr_msgsGetControlSpaceResponse,
    Ros1Dsr_msgsGetControlSpaceResponseCodec,
    Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest,
    Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec,
    Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse,
    Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec,
    Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest,
    Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec,
    Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse,
    Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec,
    Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest,
    Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec,
    Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse,
    Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec,
    Ros1Dsr_msgsGetCurrentPoseRequest,
    Ros1Dsr_msgsGetCurrentPoseRequestCodec,
    Ros1Dsr_msgsGetCurrentPoseResponse,
    Ros1Dsr_msgsGetCurrentPoseResponseCodec,
    Ros1Dsr_msgsGetCurrentPosjRequest,
    Ros1Dsr_msgsGetCurrentPosjRequestCodec,
    Ros1Dsr_msgsGetCurrentPosjResponse,
    Ros1Dsr_msgsGetCurrentPosjResponseCodec,
    Ros1Dsr_msgsGetCurrentPosxRequest,
    Ros1Dsr_msgsGetCurrentPosxRequestCodec,
    Ros1Dsr_msgsGetCurrentPosxResponse,
    Ros1Dsr_msgsGetCurrentPosxResponseCodec,
    Ros1Dsr_msgsGetCurrentRotmRequest,
    Ros1Dsr_msgsGetCurrentRotmRequestCodec,
    Ros1Dsr_msgsGetCurrentRotmResponse,
    Ros1Dsr_msgsGetCurrentRotmResponseCodec,
    Ros1Dsr_msgsGetCurrentSolutionSpaceRequest,
    Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec,
    Ros1Dsr_msgsGetCurrentSolutionSpaceResponse,
    Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec,
    Ros1Dsr_msgsGetCurrentTcpRequest,
    Ros1Dsr_msgsGetCurrentTcpRequestCodec,
    Ros1Dsr_msgsGetCurrentTcpResponse,
    Ros1Dsr_msgsGetCurrentTcpResponseCodec,
    Ros1Dsr_msgsGetCurrentToolRequest,
    Ros1Dsr_msgsGetCurrentToolRequestCodec,
    Ros1Dsr_msgsGetCurrentToolResponse,
    Ros1Dsr_msgsGetCurrentToolResponseCodec,
    Ros1Dsr_msgsGetCurrentToolFlangePosxRequest,
    Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec,
    Ros1Dsr_msgsGetCurrentToolFlangePosxResponse,
    Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec,
    Ros1Dsr_msgsGetCurrentVeljRequest,
    Ros1Dsr_msgsGetCurrentVeljRequestCodec,
    Ros1Dsr_msgsGetCurrentVeljResponse,
    Ros1Dsr_msgsGetCurrentVeljResponseCodec,
    Ros1Dsr_msgsGetCurrentVelxRequest,
    Ros1Dsr_msgsGetCurrentVelxRequestCodec,
    Ros1Dsr_msgsGetCurrentVelxResponse,
    Ros1Dsr_msgsGetCurrentVelxResponseCodec,
    Ros1Dsr_msgsGetDesiredPosjRequest,
    Ros1Dsr_msgsGetDesiredPosjRequestCodec,
    Ros1Dsr_msgsGetDesiredPosjResponse,
    Ros1Dsr_msgsGetDesiredPosjResponseCodec,
    Ros1Dsr_msgsGetDesiredPosxRequest,
    Ros1Dsr_msgsGetDesiredPosxRequestCodec,
    Ros1Dsr_msgsGetDesiredPosxResponse,
    Ros1Dsr_msgsGetDesiredPosxResponseCodec,
    Ros1Dsr_msgsGetDesiredVeljRequest,
    Ros1Dsr_msgsGetDesiredVeljRequestCodec,
    Ros1Dsr_msgsGetDesiredVeljResponse,
    Ros1Dsr_msgsGetDesiredVeljResponseCodec,
    Ros1Dsr_msgsGetDesiredVelxRequest,
    Ros1Dsr_msgsGetDesiredVelxRequestCodec,
    Ros1Dsr_msgsGetDesiredVelxResponse,
    Ros1Dsr_msgsGetDesiredVelxResponseCodec,
    Ros1Dsr_msgsGetDrlStateRequest,
    Ros1Dsr_msgsGetDrlStateRequestCodec,
    Ros1Dsr_msgsGetDrlStateResponse,
    Ros1Dsr_msgsGetDrlStateResponseCodec,
    Ros1Dsr_msgsGetExternalTorqueRequest,
    Ros1Dsr_msgsGetExternalTorqueRequestCodec,
    Ros1Dsr_msgsGetExternalTorqueResponse,
    Ros1Dsr_msgsGetExternalTorqueResponseCodec,
    Ros1Dsr_msgsGetJointTorqueRequest,
    Ros1Dsr_msgsGetJointTorqueRequestCodec,
    Ros1Dsr_msgsGetJointTorqueResponse,
    Ros1Dsr_msgsGetJointTorqueResponseCodec,
    Ros1Dsr_msgsGetLastAlarmRequest,
    Ros1Dsr_msgsGetLastAlarmRequestCodec,
    Ros1Dsr_msgsGetLastAlarmResponse,
    Ros1Dsr_msgsGetLastAlarmResponseCodec,
    Ros1Dsr_msgsGetModbusInputRequest,
    Ros1Dsr_msgsGetModbusInputRequestCodec,
    Ros1Dsr_msgsGetModbusInputResponse,
    Ros1Dsr_msgsGetModbusInputResponseCodec,
    Ros1Dsr_msgsGetOrientationErrorRequest,
    Ros1Dsr_msgsGetOrientationErrorRequestCodec,
    Ros1Dsr_msgsGetOrientationErrorResponse,
    Ros1Dsr_msgsGetOrientationErrorResponseCodec,
    Ros1Dsr_msgsGetRTControlInputDataListRequest,
    Ros1Dsr_msgsGetRTControlInputDataListRequestCodec,
    Ros1Dsr_msgsGetRTControlInputDataListResponse,
    Ros1Dsr_msgsGetRTControlInputDataListResponseCodec,
    Ros1Dsr_msgsGetRTControlInputVersionListRequest,
    Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec,
    Ros1Dsr_msgsGetRTControlInputVersionListResponse,
    Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec,
    Ros1Dsr_msgsGetRTControlOutputDataListRequest,
    Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec,
    Ros1Dsr_msgsGetRTControlOutputDataListResponse,
    Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec,
    Ros1Dsr_msgsGetRTControlOutputVersionListRequest,
    Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec,
    Ros1Dsr_msgsGetRTControlOutputVersionListResponse,
    Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec,
    Ros1Dsr_msgsGetRobotModeRequest,
    Ros1Dsr_msgsGetRobotModeRequestCodec,
    Ros1Dsr_msgsGetRobotModeResponse,
    Ros1Dsr_msgsGetRobotModeResponseCodec,
    Ros1Dsr_msgsGetRobotSpeedModeRequest,
    Ros1Dsr_msgsGetRobotSpeedModeRequestCodec,
    Ros1Dsr_msgsGetRobotSpeedModeResponse,
    Ros1Dsr_msgsGetRobotSpeedModeResponseCodec,
    Ros1Dsr_msgsGetRobotStateRequest,
    Ros1Dsr_msgsGetRobotStateRequestCodec,
    Ros1Dsr_msgsGetRobotStateResponse,
    Ros1Dsr_msgsGetRobotStateResponseCodec,
    Ros1Dsr_msgsGetRobotSystemRequest,
    Ros1Dsr_msgsGetRobotSystemRequestCodec,
    Ros1Dsr_msgsGetRobotSystemResponse,
    Ros1Dsr_msgsGetRobotSystemResponseCodec,
    Ros1Dsr_msgsGetSolutionSpaceRequest,
    Ros1Dsr_msgsGetSolutionSpaceRequestCodec,
    Ros1Dsr_msgsGetSolutionSpaceResponse,
    Ros1Dsr_msgsGetSolutionSpaceResponseCodec,
    Ros1Dsr_msgsGetToolDigitalInputRequest,
    Ros1Dsr_msgsGetToolDigitalInputRequestCodec,
    Ros1Dsr_msgsGetToolDigitalInputResponse,
    Ros1Dsr_msgsGetToolDigitalInputResponseCodec,
    Ros1Dsr_msgsGetToolDigitalOutputRequest,
    Ros1Dsr_msgsGetToolDigitalOutputRequestCodec,
    Ros1Dsr_msgsGetToolDigitalOutputResponse,
    Ros1Dsr_msgsGetToolDigitalOutputResponseCodec,
    Ros1Dsr_msgsGetToolForceRequest,
    Ros1Dsr_msgsGetToolForceRequestCodec,
    Ros1Dsr_msgsGetToolForceResponse,
    Ros1Dsr_msgsGetToolForceResponseCodec,
    Ros1Dsr_msgsGetUserCartCoordRequest,
    Ros1Dsr_msgsGetUserCartCoordRequestCodec,
    Ros1Dsr_msgsGetUserCartCoordResponse,
    Ros1Dsr_msgsGetUserCartCoordResponseCodec,
    Ros1Dsr_msgsGetWorkpieceWeightRequest,
    Ros1Dsr_msgsGetWorkpieceWeightRequestCodec,
    Ros1Dsr_msgsGetWorkpieceWeightResponse,
    Ros1Dsr_msgsGetWorkpieceWeightResponseCodec,
    Ros1Dsr_msgsIkinRequest,
    Ros1Dsr_msgsIkinRequestCodec,
    Ros1Dsr_msgsIkinResponse,
    Ros1Dsr_msgsIkinResponseCodec,
    Ros1Dsr_msgsIkinExRequest,
    Ros1Dsr_msgsIkinExRequestCodec,
    Ros1Dsr_msgsIkinExResponse,
    Ros1Dsr_msgsIkinExResponseCodec,
    Ros1Dsr_msgsIsDoneBoltTighteningRequest,
    Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec,
    Ros1Dsr_msgsIsDoneBoltTighteningResponse,
    Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec,
    Ros1Dsr_msgsJogRequest,
    Ros1Dsr_msgsJogRequestCodec,
    Ros1Dsr_msgsJogResponse,
    Ros1Dsr_msgsJogResponseCodec,
    Ros1Dsr_msgsJogMultiRequest,
    Ros1Dsr_msgsJogMultiRequestCodec,
    Ros1Dsr_msgsJogMultiResponse,
    Ros1Dsr_msgsJogMultiResponseCodec,
    Ros1Dsr_msgsManageAccessControlRequest,
    Ros1Dsr_msgsManageAccessControlRequestCodec,
    Ros1Dsr_msgsManageAccessControlResponse,
    Ros1Dsr_msgsManageAccessControlResponseCodec,
    Ros1Dsr_msgsMoveBlendingRequest,
    Ros1Dsr_msgsMoveBlendingRequestCodec,
    Ros1Dsr_msgsMoveBlendingResponse,
    Ros1Dsr_msgsMoveBlendingResponseCodec,
    Ros1Dsr_msgsMoveCircleRequest,
    Ros1Dsr_msgsMoveCircleRequestCodec,
    Ros1Dsr_msgsMoveCircleResponse,
    Ros1Dsr_msgsMoveCircleResponseCodec,
    Ros1Dsr_msgsMoveHomeRequest,
    Ros1Dsr_msgsMoveHomeRequestCodec,
    Ros1Dsr_msgsMoveHomeResponse,
    Ros1Dsr_msgsMoveHomeResponseCodec,
    Ros1Dsr_msgsMoveJointRequest,
    Ros1Dsr_msgsMoveJointRequestCodec,
    Ros1Dsr_msgsMoveJointResponse,
    Ros1Dsr_msgsMoveJointResponseCodec,
    Ros1Dsr_msgsMoveJointxRequest,
    Ros1Dsr_msgsMoveJointxRequestCodec,
    Ros1Dsr_msgsMoveJointxResponse,
    Ros1Dsr_msgsMoveJointxResponseCodec,
    Ros1Dsr_msgsMoveLineRequest,
    Ros1Dsr_msgsMoveLineRequestCodec,
    Ros1Dsr_msgsMoveLineResponse,
    Ros1Dsr_msgsMoveLineResponseCodec,
    Ros1Dsr_msgsMovePauseRequest,
    Ros1Dsr_msgsMovePauseRequestCodec,
    Ros1Dsr_msgsMovePauseResponse,
    Ros1Dsr_msgsMovePauseResponseCodec,
    Ros1Dsr_msgsMovePeriodicRequest,
    Ros1Dsr_msgsMovePeriodicRequestCodec,
    Ros1Dsr_msgsMovePeriodicResponse,
    Ros1Dsr_msgsMovePeriodicResponseCodec,
    Ros1Dsr_msgsMoveResumeRequest,
    Ros1Dsr_msgsMoveResumeRequestCodec,
    Ros1Dsr_msgsMoveResumeResponse,
    Ros1Dsr_msgsMoveResumeResponseCodec,
    Ros1Dsr_msgsMoveSpiralRequest,
    Ros1Dsr_msgsMoveSpiralRequestCodec,
    Ros1Dsr_msgsMoveSpiralResponse,
    Ros1Dsr_msgsMoveSpiralResponseCodec,
    Ros1Dsr_msgsMoveSplineJointRequest,
    Ros1Dsr_msgsMoveSplineJointRequestCodec,
    Ros1Dsr_msgsMoveSplineJointResponse,
    Ros1Dsr_msgsMoveSplineJointResponseCodec,
    Ros1Dsr_msgsMoveSplineTaskRequest,
    Ros1Dsr_msgsMoveSplineTaskRequestCodec,
    Ros1Dsr_msgsMoveSplineTaskResponse,
    Ros1Dsr_msgsMoveSplineTaskResponseCodec,
    Ros1Dsr_msgsMoveStopRequest,
    Ros1Dsr_msgsMoveStopRequestCodec,
    Ros1Dsr_msgsMoveStopResponse,
    Ros1Dsr_msgsMoveStopResponseCodec,
    Ros1Dsr_msgsMoveWaitRequest,
    Ros1Dsr_msgsMoveWaitRequestCodec,
    Ros1Dsr_msgsMoveWaitResponse,
    Ros1Dsr_msgsMoveWaitResponseCodec,
    Ros1Dsr_msgsOverwriteUserCartCoordRequest,
    Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec,
    Ros1Dsr_msgsOverwriteUserCartCoordResponse,
    Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec,
    Ros1Dsr_msgsParallelAxis1Request,
    Ros1Dsr_msgsParallelAxis1RequestCodec,
    Ros1Dsr_msgsParallelAxis1Response,
    Ros1Dsr_msgsParallelAxis1ResponseCodec,
    Ros1Dsr_msgsParallelAxis2Request,
    Ros1Dsr_msgsParallelAxis2RequestCodec,
    Ros1Dsr_msgsParallelAxis2Response,
    Ros1Dsr_msgsParallelAxis2ResponseCodec,
    Ros1Dsr_msgsReadDataRTRequest,
    Ros1Dsr_msgsReadDataRTRequestCodec,
    Ros1Dsr_msgsReadDataRTResponse,
    Ros1Dsr_msgsReadDataRTResponseCodec,
    Ros1Dsr_msgsReleaseComplianceCtrlRequest,
    Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec,
    Ros1Dsr_msgsReleaseComplianceCtrlResponse,
    Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec,
    Ros1Dsr_msgsReleaseForceRequest,
    Ros1Dsr_msgsReleaseForceRequestCodec,
    Ros1Dsr_msgsReleaseForceResponse,
    Ros1Dsr_msgsReleaseForceResponseCodec,
    Ros1Dsr_msgsReleaseProtectiveStopRequest,
    Ros1Dsr_msgsReleaseProtectiveStopRequestCodec,
    Ros1Dsr_msgsReleaseProtectiveStopResponse,
    Ros1Dsr_msgsReleaseProtectiveStopResponseCodec,
    Ros1Dsr_msgsResetWorkpieceWeightRequest,
    Ros1Dsr_msgsResetWorkpieceWeightRequestCodec,
    Ros1Dsr_msgsResetWorkpieceWeightResponse,
    Ros1Dsr_msgsResetWorkpieceWeightResponseCodec,
    Ros1Dsr_msgsRobotiq2FCloseRequest,
    Ros1Dsr_msgsRobotiq2FCloseRequestCodec,
    Ros1Dsr_msgsRobotiq2FCloseResponse,
    Ros1Dsr_msgsRobotiq2FCloseResponseCodec,
    Ros1Dsr_msgsRobotiq2FMoveRequest,
    Ros1Dsr_msgsRobotiq2FMoveRequestCodec,
    Ros1Dsr_msgsRobotiq2FMoveResponse,
    Ros1Dsr_msgsRobotiq2FMoveResponseCodec,
    Ros1Dsr_msgsRobotiq2FOpenRequest,
    Ros1Dsr_msgsRobotiq2FOpenRequestCodec,
    Ros1Dsr_msgsRobotiq2FOpenResponse,
    Ros1Dsr_msgsRobotiq2FOpenResponseCodec,
    Ros1Dsr_msgsSerialSendDataRequest,
    Ros1Dsr_msgsSerialSendDataRequestCodec,
    Ros1Dsr_msgsSerialSendDataResponse,
    Ros1Dsr_msgsSerialSendDataResponseCodec,
    Ros1Dsr_msgsSetAccJRTRequest,
    Ros1Dsr_msgsSetAccJRTRequestCodec,
    Ros1Dsr_msgsSetAccJRTResponse,
    Ros1Dsr_msgsSetAccJRTResponseCodec,
    Ros1Dsr_msgsSetAccXRTRequest,
    Ros1Dsr_msgsSetAccXRTRequestCodec,
    Ros1Dsr_msgsSetAccXRTResponse,
    Ros1Dsr_msgsSetAccXRTResponseCodec,
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec,
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse,
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec,
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest,
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec,
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse,
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec,
    Ros1Dsr_msgsSetCurrentTcpRequest,
    Ros1Dsr_msgsSetCurrentTcpRequestCodec,
    Ros1Dsr_msgsSetCurrentTcpResponse,
    Ros1Dsr_msgsSetCurrentTcpResponseCodec,
    Ros1Dsr_msgsSetCurrentToolRequest,
    Ros1Dsr_msgsSetCurrentToolRequestCodec,
    Ros1Dsr_msgsSetCurrentToolResponse,
    Ros1Dsr_msgsSetCurrentToolResponseCodec,
    Ros1Dsr_msgsSetDesiredForceRequest,
    Ros1Dsr_msgsSetDesiredForceRequestCodec,
    Ros1Dsr_msgsSetDesiredForceResponse,
    Ros1Dsr_msgsSetDesiredForceResponseCodec,
    Ros1Dsr_msgsSetModbusOutputRequest,
    Ros1Dsr_msgsSetModbusOutputRequestCodec,
    Ros1Dsr_msgsSetModbusOutputResponse,
    Ros1Dsr_msgsSetModbusOutputResponseCodec,
    Ros1Dsr_msgsSetRTControlInputRequest,
    Ros1Dsr_msgsSetRTControlInputRequestCodec,
    Ros1Dsr_msgsSetRTControlInputResponse,
    Ros1Dsr_msgsSetRTControlInputResponseCodec,
    Ros1Dsr_msgsSetRTControlOutputRequest,
    Ros1Dsr_msgsSetRTControlOutputRequestCodec,
    Ros1Dsr_msgsSetRTControlOutputResponse,
    Ros1Dsr_msgsSetRTControlOutputResponseCodec,
    Ros1Dsr_msgsSetRefCoordRequest,
    Ros1Dsr_msgsSetRefCoordRequestCodec,
    Ros1Dsr_msgsSetRefCoordResponse,
    Ros1Dsr_msgsSetRefCoordResponseCodec,
    Ros1Dsr_msgsSetRobotControlRequest,
    Ros1Dsr_msgsSetRobotControlRequestCodec,
    Ros1Dsr_msgsSetRobotControlResponse,
    Ros1Dsr_msgsSetRobotControlResponseCodec,
    Ros1Dsr_msgsSetRobotModeRequest,
    Ros1Dsr_msgsSetRobotModeRequestCodec,
    Ros1Dsr_msgsSetRobotModeResponse,
    Ros1Dsr_msgsSetRobotModeResponseCodec,
    Ros1Dsr_msgsSetRobotSpeedModeRequest,
    Ros1Dsr_msgsSetRobotSpeedModeRequestCodec,
    Ros1Dsr_msgsSetRobotSpeedModeResponse,
    Ros1Dsr_msgsSetRobotSpeedModeResponseCodec,
    Ros1Dsr_msgsSetRobotSystemRequest,
    Ros1Dsr_msgsSetRobotSystemRequestCodec,
    Ros1Dsr_msgsSetRobotSystemResponse,
    Ros1Dsr_msgsSetRobotSystemResponseCodec,
    Ros1Dsr_msgsSetSafeStopResetTypeRequest,
    Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec,
    Ros1Dsr_msgsSetSafeStopResetTypeResponse,
    Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec,
    Ros1Dsr_msgsSetSafetyModeRequest,
    Ros1Dsr_msgsSetSafetyModeRequestCodec,
    Ros1Dsr_msgsSetSafetyModeResponse,
    Ros1Dsr_msgsSetSafetyModeResponseCodec,
    Ros1Dsr_msgsSetSingularityHandlingRequest,
    Ros1Dsr_msgsSetSingularityHandlingRequestCodec,
    Ros1Dsr_msgsSetSingularityHandlingResponse,
    Ros1Dsr_msgsSetSingularityHandlingResponseCodec,
    Ros1Dsr_msgsSetStiffnessxRequest,
    Ros1Dsr_msgsSetStiffnessxRequestCodec,
    Ros1Dsr_msgsSetStiffnessxResponse,
    Ros1Dsr_msgsSetStiffnessxResponseCodec,
    Ros1Dsr_msgsSetToolDigitalOutputRequest,
    Ros1Dsr_msgsSetToolDigitalOutputRequestCodec,
    Ros1Dsr_msgsSetToolDigitalOutputResponse,
    Ros1Dsr_msgsSetToolDigitalOutputResponseCodec,
    Ros1Dsr_msgsSetToolShapeRequest,
    Ros1Dsr_msgsSetToolShapeRequestCodec,
    Ros1Dsr_msgsSetToolShapeResponse,
    Ros1Dsr_msgsSetToolShapeResponseCodec,
    Ros1Dsr_msgsSetUserCartCoord1Request,
    Ros1Dsr_msgsSetUserCartCoord1RequestCodec,
    Ros1Dsr_msgsSetUserCartCoord1Response,
    Ros1Dsr_msgsSetUserCartCoord1ResponseCodec,
    Ros1Dsr_msgsSetUserCartCoord2Request,
    Ros1Dsr_msgsSetUserCartCoord2RequestCodec,
    Ros1Dsr_msgsSetUserCartCoord2Response,
    Ros1Dsr_msgsSetUserCartCoord2ResponseCodec,
    Ros1Dsr_msgsSetUserCartCoord3Request,
    Ros1Dsr_msgsSetUserCartCoord3RequestCodec,
    Ros1Dsr_msgsSetUserCartCoord3Response,
    Ros1Dsr_msgsSetUserCartCoord3ResponseCodec,
    Ros1Dsr_msgsSetVelJRTRequest,
    Ros1Dsr_msgsSetVelJRTRequestCodec,
    Ros1Dsr_msgsSetVelJRTResponse,
    Ros1Dsr_msgsSetVelJRTResponseCodec,
    Ros1Dsr_msgsSetVelXRTRequest,
    Ros1Dsr_msgsSetVelXRTRequestCodec,
    Ros1Dsr_msgsSetVelXRTResponse,
    Ros1Dsr_msgsSetVelXRTResponseCodec,
    Ros1Dsr_msgsStartRTControlRequest,
    Ros1Dsr_msgsStartRTControlRequestCodec,
    Ros1Dsr_msgsStartRTControlResponse,
    Ros1Dsr_msgsStartRTControlResponseCodec,
    Ros1Dsr_msgsStopRTControlRequest,
    Ros1Dsr_msgsStopRTControlRequestCodec,
    Ros1Dsr_msgsStopRTControlResponse,
    Ros1Dsr_msgsStopRTControlResponseCodec,
    Ros1Dsr_msgsTaskComplianceCtrlRequest,
    Ros1Dsr_msgsTaskComplianceCtrlRequestCodec,
    Ros1Dsr_msgsTaskComplianceCtrlResponse,
    Ros1Dsr_msgsTaskComplianceCtrlResponseCodec,
    Ros1Dsr_msgsTransRequest,
    Ros1Dsr_msgsTransRequestCodec,
    Ros1Dsr_msgsTransResponse,
    Ros1Dsr_msgsTransResponseCodec,
    Ros1Dsr_msgsWriteDataRTRequest,
    Ros1Dsr_msgsWriteDataRTRequestCodec,
    Ros1Dsr_msgsWriteDataRTResponse,
    Ros1Dsr_msgsWriteDataRTResponseCodec
} from "doosan/as/ros1/doosan-ros1-patch-1-complete/bounded_records";

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

/** Complete dsr_msgs/AlignAxis1 typed call and real-submit client. */
export class Ros1Dsr_msgsAlignAxis1Client extends BoundedServiceClient<Ros1Dsr_msgsAlignAxis1Request, Ros1Dsr_msgsAlignAxis1Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsAlignAxis1RequestCodec(),
              new Ros1Dsr_msgsAlignAxis1ResponseCodec(),
              (value: Ros1Dsr_msgsAlignAxis1Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/AlignAxis1 incoming request/response owner. */
export class Ros1Dsr_msgsAlignAxis1Server extends BoundedServiceServer<Ros1Dsr_msgsAlignAxis1Request, Ros1Dsr_msgsAlignAxis1Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsAlignAxis1RequestCodec(),
              new Ros1Dsr_msgsAlignAxis1ResponseCodec(),
              (value: Ros1Dsr_msgsAlignAxis1Response): bool => value.validValue(),
              170,
              capacity);
    }
}

/** Complete dsr_msgs/AlignAxis2 typed call and real-submit client. */
export class Ros1Dsr_msgsAlignAxis2Client extends BoundedServiceClient<Ros1Dsr_msgsAlignAxis2Request, Ros1Dsr_msgsAlignAxis2Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsAlignAxis2RequestCodec(),
              new Ros1Dsr_msgsAlignAxis2ResponseCodec(),
              (value: Ros1Dsr_msgsAlignAxis2Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/AlignAxis2 incoming request/response owner. */
export class Ros1Dsr_msgsAlignAxis2Server extends BoundedServiceServer<Ros1Dsr_msgsAlignAxis2Request, Ros1Dsr_msgsAlignAxis2Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsAlignAxis2RequestCodec(),
              new Ros1Dsr_msgsAlignAxis2ResponseCodec(),
              (value: Ros1Dsr_msgsAlignAxis2Response): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs/AlterMotion typed call and real-submit client. */
export class Ros1Dsr_msgsAlterMotionClient extends BoundedServiceClient<Ros1Dsr_msgsAlterMotionRequest, Ros1Dsr_msgsAlterMotionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsAlterMotionRequestCodec(),
              new Ros1Dsr_msgsAlterMotionResponseCodec(),
              (value: Ros1Dsr_msgsAlterMotionRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/AlterMotion incoming request/response owner. */
export class Ros1Dsr_msgsAlterMotionServer extends BoundedServiceServer<Ros1Dsr_msgsAlterMotionRequest, Ros1Dsr_msgsAlterMotionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsAlterMotionRequestCodec(),
              new Ros1Dsr_msgsAlterMotionResponseCodec(),
              (value: Ros1Dsr_msgsAlterMotionResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs/CalcCoord typed call and real-submit client. */
export class Ros1Dsr_msgsCalcCoordClient extends BoundedServiceClient<Ros1Dsr_msgsCalcCoordRequest, Ros1Dsr_msgsCalcCoordResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsCalcCoordRequestCodec(),
              new Ros1Dsr_msgsCalcCoordResponseCodec(),
              (value: Ros1Dsr_msgsCalcCoordRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CalcCoord incoming request/response owner. */
export class Ros1Dsr_msgsCalcCoordServer extends BoundedServiceServer<Ros1Dsr_msgsCalcCoordRequest, Ros1Dsr_msgsCalcCoordResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsCalcCoordRequestCodec(),
              new Ros1Dsr_msgsCalcCoordResponseCodec(),
              (value: Ros1Dsr_msgsCalcCoordResponse): bool => value.validValue(),
              195,
              capacity);
    }
}

/** Complete dsr_msgs/ChangeOperationSpeed typed call and real-submit client. */
export class Ros1Dsr_msgsChangeOperationSpeedClient extends
    BoundedServiceClient<Ros1Dsr_msgsChangeOperationSpeedRequest, Ros1Dsr_msgsChangeOperationSpeedResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsChangeOperationSpeedRequestCodec(),
              new Ros1Dsr_msgsChangeOperationSpeedResponseCodec(),
              (value: Ros1Dsr_msgsChangeOperationSpeedRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ChangeOperationSpeed incoming request/response owner. */
export class Ros1Dsr_msgsChangeOperationSpeedServer extends
    BoundedServiceServer<Ros1Dsr_msgsChangeOperationSpeedRequest, Ros1Dsr_msgsChangeOperationSpeedResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsChangeOperationSpeedRequestCodec(),
              new Ros1Dsr_msgsChangeOperationSpeedResponseCodec(),
              (value: Ros1Dsr_msgsChangeOperationSpeedResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/CheckForceCondition typed call and real-submit client. */
export class Ros1Dsr_msgsCheckForceConditionClient extends BoundedServiceClient<Ros1Dsr_msgsCheckForceConditionRequest, Ros1Dsr_msgsCheckForceConditionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsCheckForceConditionRequestCodec(),
              new Ros1Dsr_msgsCheckForceConditionResponseCodec(),
              (value: Ros1Dsr_msgsCheckForceConditionRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckForceCondition incoming request/response owner. */
export class Ros1Dsr_msgsCheckForceConditionServer extends BoundedServiceServer<Ros1Dsr_msgsCheckForceConditionRequest, Ros1Dsr_msgsCheckForceConditionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsCheckForceConditionRequestCodec(),
              new Ros1Dsr_msgsCheckForceConditionResponseCodec(),
              (value: Ros1Dsr_msgsCheckForceConditionResponse): bool => value.validValue(),
              18,
              capacity);
    }
}

/** Complete dsr_msgs/CheckMotion typed call and real-submit client. */
export class Ros1Dsr_msgsCheckMotionClient extends BoundedServiceClient<Ros1Dsr_msgsCheckMotionRequest, Ros1Dsr_msgsCheckMotionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsCheckMotionRequestCodec(),
              new Ros1Dsr_msgsCheckMotionResponseCodec(),
              (value: Ros1Dsr_msgsCheckMotionRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckMotion incoming request/response owner. */
export class Ros1Dsr_msgsCheckMotionServer extends BoundedServiceServer<Ros1Dsr_msgsCheckMotionRequest, Ros1Dsr_msgsCheckMotionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsCheckMotionRequestCodec(),
              new Ros1Dsr_msgsCheckMotionResponseCodec(),
              (value: Ros1Dsr_msgsCheckMotionResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition1 typed call and real-submit client. */
export class Ros1Dsr_msgsCheckOrientationCondition1Client extends
    BoundedServiceClient<Ros1Dsr_msgsCheckOrientationCondition1Request, Ros1Dsr_msgsCheckOrientationCondition1Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsCheckOrientationCondition1RequestCodec(),
              new Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec(),
              (value: Ros1Dsr_msgsCheckOrientationCondition1Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition1 incoming request/response owner. */
export class Ros1Dsr_msgsCheckOrientationCondition1Server extends
    BoundedServiceServer<Ros1Dsr_msgsCheckOrientationCondition1Request, Ros1Dsr_msgsCheckOrientationCondition1Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsCheckOrientationCondition1RequestCodec(),
              new Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec(),
              (value: Ros1Dsr_msgsCheckOrientationCondition1Response): bool => value.validValue(),
              99,
              capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition2 typed call and real-submit client. */
export class Ros1Dsr_msgsCheckOrientationCondition2Client extends
    BoundedServiceClient<Ros1Dsr_msgsCheckOrientationCondition2Request, Ros1Dsr_msgsCheckOrientationCondition2Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsCheckOrientationCondition2RequestCodec(),
              new Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec(),
              (value: Ros1Dsr_msgsCheckOrientationCondition2Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition2 incoming request/response owner. */
export class Ros1Dsr_msgsCheckOrientationCondition2Server extends
    BoundedServiceServer<Ros1Dsr_msgsCheckOrientationCondition2Request, Ros1Dsr_msgsCheckOrientationCondition2Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsCheckOrientationCondition2RequestCodec(),
              new Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec(),
              (value: Ros1Dsr_msgsCheckOrientationCondition2Response): bool => value.validValue(),
              67,
              capacity);
    }
}

/** Complete dsr_msgs/CheckPositionCondition typed call and real-submit client. */
export class Ros1Dsr_msgsCheckPositionConditionClient extends
    BoundedServiceClient<Ros1Dsr_msgsCheckPositionConditionRequest, Ros1Dsr_msgsCheckPositionConditionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsCheckPositionConditionRequestCodec(),
              new Ros1Dsr_msgsCheckPositionConditionResponseCodec(),
              (value: Ros1Dsr_msgsCheckPositionConditionRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckPositionCondition incoming request/response owner. */
export class Ros1Dsr_msgsCheckPositionConditionServer extends
    BoundedServiceServer<Ros1Dsr_msgsCheckPositionConditionRequest, Ros1Dsr_msgsCheckPositionConditionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsCheckPositionConditionRequestCodec(),
              new Ros1Dsr_msgsCheckPositionConditionResponseCodec(),
              (value: Ros1Dsr_msgsCheckPositionConditionResponse): bool => value.validValue(),
              67,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateModbus typed call and real-submit client. */
export class Ros1Dsr_msgsConfigCreateModbusClient extends BoundedServiceClient<Ros1Dsr_msgsConfigCreateModbusRequest, Ros1Dsr_msgsConfigCreateModbusResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsConfigCreateModbusRequestCodec(),
              new Ros1Dsr_msgsConfigCreateModbusResponseCodec(),
              (value: Ros1Dsr_msgsConfigCreateModbusRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateModbus incoming request/response owner. */
export class Ros1Dsr_msgsConfigCreateModbusServer extends BoundedServiceServer<Ros1Dsr_msgsConfigCreateModbusRequest, Ros1Dsr_msgsConfigCreateModbusResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsConfigCreateModbusRequestCodec(),
              new Ros1Dsr_msgsConfigCreateModbusResponseCodec(),
              (value: Ros1Dsr_msgsConfigCreateModbusResponse): bool => value.validValue(),
              531,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTcp typed call and real-submit client. */
export class Ros1Dsr_msgsConfigCreateTcpClient extends BoundedServiceClient<Ros1Dsr_msgsConfigCreateTcpRequest, Ros1Dsr_msgsConfigCreateTcpResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsConfigCreateTcpRequestCodec(),
              new Ros1Dsr_msgsConfigCreateTcpResponseCodec(),
              (value: Ros1Dsr_msgsConfigCreateTcpRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTcp incoming request/response owner. */
export class Ros1Dsr_msgsConfigCreateTcpServer extends BoundedServiceServer<Ros1Dsr_msgsConfigCreateTcpRequest, Ros1Dsr_msgsConfigCreateTcpResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsConfigCreateTcpRequestCodec(),
              new Ros1Dsr_msgsConfigCreateTcpResponseCodec(),
              (value: Ros1Dsr_msgsConfigCreateTcpResponse): bool => value.validValue(),
              308,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTool typed call and real-submit client. */
export class Ros1Dsr_msgsConfigCreateToolClient extends BoundedServiceClient<Ros1Dsr_msgsConfigCreateToolRequest, Ros1Dsr_msgsConfigCreateToolResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsConfigCreateToolRequestCodec(),
              new Ros1Dsr_msgsConfigCreateToolResponseCodec(),
              (value: Ros1Dsr_msgsConfigCreateToolRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTool incoming request/response owner. */
export class Ros1Dsr_msgsConfigCreateToolServer extends BoundedServiceServer<Ros1Dsr_msgsConfigCreateToolRequest, Ros1Dsr_msgsConfigCreateToolResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsConfigCreateToolRequestCodec(),
              new Ros1Dsr_msgsConfigCreateToolResponseCodec(),
              (value: Ros1Dsr_msgsConfigCreateToolResponse): bool => value.validValue(),
              340,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteModbus typed call and real-submit client. */
export class Ros1Dsr_msgsConfigDeleteModbusClient extends BoundedServiceClient<Ros1Dsr_msgsConfigDeleteModbusRequest, Ros1Dsr_msgsConfigDeleteModbusResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsConfigDeleteModbusRequestCodec(),
              new Ros1Dsr_msgsConfigDeleteModbusResponseCodec(),
              (value: Ros1Dsr_msgsConfigDeleteModbusRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteModbus incoming request/response owner. */
export class Ros1Dsr_msgsConfigDeleteModbusServer extends BoundedServiceServer<Ros1Dsr_msgsConfigDeleteModbusRequest, Ros1Dsr_msgsConfigDeleteModbusResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsConfigDeleteModbusRequestCodec(),
              new Ros1Dsr_msgsConfigDeleteModbusResponseCodec(),
              (value: Ros1Dsr_msgsConfigDeleteModbusResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTcp typed call and real-submit client. */
export class Ros1Dsr_msgsConfigDeleteTcpClient extends BoundedServiceClient<Ros1Dsr_msgsConfigDeleteTcpRequest, Ros1Dsr_msgsConfigDeleteTcpResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsConfigDeleteTcpRequestCodec(),
              new Ros1Dsr_msgsConfigDeleteTcpResponseCodec(),
              (value: Ros1Dsr_msgsConfigDeleteTcpRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTcp incoming request/response owner. */
export class Ros1Dsr_msgsConfigDeleteTcpServer extends BoundedServiceServer<Ros1Dsr_msgsConfigDeleteTcpRequest, Ros1Dsr_msgsConfigDeleteTcpResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsConfigDeleteTcpRequestCodec(),
              new Ros1Dsr_msgsConfigDeleteTcpResponseCodec(),
              (value: Ros1Dsr_msgsConfigDeleteTcpResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTool typed call and real-submit client. */
export class Ros1Dsr_msgsConfigDeleteToolClient extends BoundedServiceClient<Ros1Dsr_msgsConfigDeleteToolRequest, Ros1Dsr_msgsConfigDeleteToolResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsConfigDeleteToolRequestCodec(),
              new Ros1Dsr_msgsConfigDeleteToolResponseCodec(),
              (value: Ros1Dsr_msgsConfigDeleteToolRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTool incoming request/response owner. */
export class Ros1Dsr_msgsConfigDeleteToolServer extends BoundedServiceServer<Ros1Dsr_msgsConfigDeleteToolRequest, Ros1Dsr_msgsConfigDeleteToolResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsConfigDeleteToolRequestCodec(),
              new Ros1Dsr_msgsConfigDeleteToolResponseCodec(),
              (value: Ros1Dsr_msgsConfigDeleteToolResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/ConnectRTControl typed call and real-submit client. */
export class Ros1Dsr_msgsConnectRTControlClient extends BoundedServiceClient<Ros1Dsr_msgsConnectRTControlRequest, Ros1Dsr_msgsConnectRTControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsConnectRTControlRequestCodec(),
              new Ros1Dsr_msgsConnectRTControlResponseCodec(),
              (value: Ros1Dsr_msgsConnectRTControlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConnectRTControl incoming request/response owner. */
export class Ros1Dsr_msgsConnectRTControlServer extends BoundedServiceServer<Ros1Dsr_msgsConnectRTControlRequest, Ros1Dsr_msgsConnectRTControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsConnectRTControlRequestCodec(),
              new Ros1Dsr_msgsConnectRTControlResponseCodec(),
              (value: Ros1Dsr_msgsConnectRTControlResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dsr_msgs/CoordTransform typed call and real-submit client. */
export class Ros1Dsr_msgsCoordTransformClient extends BoundedServiceClient<Ros1Dsr_msgsCoordTransformRequest, Ros1Dsr_msgsCoordTransformResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsCoordTransformRequestCodec(),
              new Ros1Dsr_msgsCoordTransformResponseCodec(),
              (value: Ros1Dsr_msgsCoordTransformRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CoordTransform incoming request/response owner. */
export class Ros1Dsr_msgsCoordTransformServer extends BoundedServiceServer<Ros1Dsr_msgsCoordTransformRequest, Ros1Dsr_msgsCoordTransformResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsCoordTransformRequestCodec(),
              new Ros1Dsr_msgsCoordTransformResponseCodec(),
              (value: Ros1Dsr_msgsCoordTransformResponse): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs/DisableAlterMotion typed call and real-submit client. */
export class Ros1Dsr_msgsDisableAlterMotionClient extends BoundedServiceClient<Ros1Dsr_msgsDisableAlterMotionRequest, Ros1Dsr_msgsDisableAlterMotionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsDisableAlterMotionRequestCodec(),
              new Ros1Dsr_msgsDisableAlterMotionResponseCodec(),
              (value: Ros1Dsr_msgsDisableAlterMotionRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DisableAlterMotion incoming request/response owner. */
export class Ros1Dsr_msgsDisableAlterMotionServer extends BoundedServiceServer<Ros1Dsr_msgsDisableAlterMotionRequest, Ros1Dsr_msgsDisableAlterMotionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsDisableAlterMotionRequestCodec(),
              new Ros1Dsr_msgsDisableAlterMotionResponseCodec(),
              (value: Ros1Dsr_msgsDisableAlterMotionResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/DisconnectRTControl typed call and real-submit client. */
export class Ros1Dsr_msgsDisconnectRTControlClient extends BoundedServiceClient<Ros1Dsr_msgsDisconnectRTControlRequest, Ros1Dsr_msgsDisconnectRTControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsDisconnectRTControlRequestCodec(),
              new Ros1Dsr_msgsDisconnectRTControlResponseCodec(),
              (value: Ros1Dsr_msgsDisconnectRTControlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DisconnectRTControl incoming request/response owner. */
export class Ros1Dsr_msgsDisconnectRTControlServer extends BoundedServiceServer<Ros1Dsr_msgsDisconnectRTControlRequest, Ros1Dsr_msgsDisconnectRTControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsDisconnectRTControlRequestCodec(),
              new Ros1Dsr_msgsDisconnectRTControlResponseCodec(),
              (value: Ros1Dsr_msgsDisconnectRTControlResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/DrlPause typed call and real-submit client. */
export class Ros1Dsr_msgsDrlPauseClient extends BoundedServiceClient<Ros1Dsr_msgsDrlPauseRequest, Ros1Dsr_msgsDrlPauseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsDrlPauseRequestCodec(),
              new Ros1Dsr_msgsDrlPauseResponseCodec(),
              (value: Ros1Dsr_msgsDrlPauseRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DrlPause incoming request/response owner. */
export class Ros1Dsr_msgsDrlPauseServer extends BoundedServiceServer<Ros1Dsr_msgsDrlPauseRequest, Ros1Dsr_msgsDrlPauseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsDrlPauseRequestCodec(),
              new Ros1Dsr_msgsDrlPauseResponseCodec(),
              (value: Ros1Dsr_msgsDrlPauseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/DrlResume typed call and real-submit client. */
export class Ros1Dsr_msgsDrlResumeClient extends BoundedServiceClient<Ros1Dsr_msgsDrlResumeRequest, Ros1Dsr_msgsDrlResumeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsDrlResumeRequestCodec(),
              new Ros1Dsr_msgsDrlResumeResponseCodec(),
              (value: Ros1Dsr_msgsDrlResumeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DrlResume incoming request/response owner. */
export class Ros1Dsr_msgsDrlResumeServer extends BoundedServiceServer<Ros1Dsr_msgsDrlResumeRequest, Ros1Dsr_msgsDrlResumeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsDrlResumeRequestCodec(),
              new Ros1Dsr_msgsDrlResumeResponseCodec(),
              (value: Ros1Dsr_msgsDrlResumeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/DrlStart typed call and real-submit client. */
export class Ros1Dsr_msgsDrlStartClient extends BoundedServiceClient<Ros1Dsr_msgsDrlStartRequest, Ros1Dsr_msgsDrlStartResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsDrlStartRequestCodec(),
              new Ros1Dsr_msgsDrlStartResponseCodec(),
              (value: Ros1Dsr_msgsDrlStartRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DrlStart incoming request/response owner. */
export class Ros1Dsr_msgsDrlStartServer extends BoundedServiceServer<Ros1Dsr_msgsDrlStartRequest, Ros1Dsr_msgsDrlStartResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsDrlStartRequestCodec(),
              new Ros1Dsr_msgsDrlStartResponseCodec(),
              (value: Ros1Dsr_msgsDrlStartResponse): bool => value.validValue(),
              261,
              capacity);
    }
}

/** Complete dsr_msgs/DrlStop typed call and real-submit client. */
export class Ros1Dsr_msgsDrlStopClient extends BoundedServiceClient<Ros1Dsr_msgsDrlStopRequest, Ros1Dsr_msgsDrlStopResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsDrlStopRequestCodec(),
              new Ros1Dsr_msgsDrlStopResponseCodec(),
              (value: Ros1Dsr_msgsDrlStopRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DrlStop incoming request/response owner. */
export class Ros1Dsr_msgsDrlStopServer extends BoundedServiceServer<Ros1Dsr_msgsDrlStopRequest, Ros1Dsr_msgsDrlStopResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsDrlStopRequestCodec(),
              new Ros1Dsr_msgsDrlStopResponseCodec(),
              (value: Ros1Dsr_msgsDrlStopResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/EnableAlterMotion typed call and real-submit client. */
export class Ros1Dsr_msgsEnableAlterMotionClient extends BoundedServiceClient<Ros1Dsr_msgsEnableAlterMotionRequest, Ros1Dsr_msgsEnableAlterMotionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsEnableAlterMotionRequestCodec(),
              new Ros1Dsr_msgsEnableAlterMotionResponseCodec(),
              (value: Ros1Dsr_msgsEnableAlterMotionRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/EnableAlterMotion incoming request/response owner. */
export class Ros1Dsr_msgsEnableAlterMotionServer extends BoundedServiceServer<Ros1Dsr_msgsEnableAlterMotionRequest, Ros1Dsr_msgsEnableAlterMotionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsEnableAlterMotionRequestCodec(),
              new Ros1Dsr_msgsEnableAlterMotionResponseCodec(),
              (value: Ros1Dsr_msgsEnableAlterMotionResponse): bool => value.validValue(),
              38,
              capacity);
    }
}

/** Complete dsr_msgs/Fkin typed call and real-submit client. */
export class Ros1Dsr_msgsFkinClient extends BoundedServiceClient<Ros1Dsr_msgsFkinRequest, Ros1Dsr_msgsFkinResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsFkinRequestCodec(),
              new Ros1Dsr_msgsFkinResponseCodec(),
              (value: Ros1Dsr_msgsFkinRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/Fkin incoming request/response owner. */
export class Ros1Dsr_msgsFkinServer extends BoundedServiceServer<Ros1Dsr_msgsFkinRequest, Ros1Dsr_msgsFkinResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsFkinRequestCodec(),
              new Ros1Dsr_msgsFkinResponseCodec(),
              (value: Ros1Dsr_msgsFkinResponse): bool => value.validValue(),
              49,
              capacity);
    }
}

/** Complete dsr_msgs/GetControlMode typed call and real-submit client. */
export class Ros1Dsr_msgsGetControlModeClient extends BoundedServiceClient<Ros1Dsr_msgsGetControlModeRequest, Ros1Dsr_msgsGetControlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetControlModeRequestCodec(),
              new Ros1Dsr_msgsGetControlModeResponseCodec(),
              (value: Ros1Dsr_msgsGetControlModeRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetControlMode incoming request/response owner. */
export class Ros1Dsr_msgsGetControlModeServer extends BoundedServiceServer<Ros1Dsr_msgsGetControlModeRequest, Ros1Dsr_msgsGetControlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetControlModeRequestCodec(),
              new Ros1Dsr_msgsGetControlModeResponseCodec(),
              (value: Ros1Dsr_msgsGetControlModeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetControlSpace typed call and real-submit client. */
export class Ros1Dsr_msgsGetControlSpaceClient extends BoundedServiceClient<Ros1Dsr_msgsGetControlSpaceRequest, Ros1Dsr_msgsGetControlSpaceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetControlSpaceRequestCodec(),
              new Ros1Dsr_msgsGetControlSpaceResponseCodec(),
              (value: Ros1Dsr_msgsGetControlSpaceRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetControlSpace incoming request/response owner. */
export class Ros1Dsr_msgsGetControlSpaceServer extends BoundedServiceServer<Ros1Dsr_msgsGetControlSpaceRequest, Ros1Dsr_msgsGetControlSpaceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetControlSpaceRequestCodec(),
              new Ros1Dsr_msgsGetControlSpaceResponseCodec(),
              (value: Ros1Dsr_msgsGetControlSpaceResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxAnalogInput typed call and real-submit client. */
export class Ros1Dsr_msgsGetCtrlBoxAnalogInputClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest, Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec(),
              new Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec(),
              (value: Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest): bool => value.validValue(),
              9,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxAnalogInput incoming request/response owner. */
export class Ros1Dsr_msgsGetCtrlBoxAnalogInputServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest, Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec(),
              new Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec(),
              (value: Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalInput typed call and real-submit client. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalInputClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest, Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec(),
              new Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec(),
              (value: Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalInput incoming request/response owner. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalInputServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest, Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec(),
              new Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec(),
              (value: Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalOutput typed call and real-submit client. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest, Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalOutput incoming request/response owner. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalOutputServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest, Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPose typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentPoseClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentPoseRequest, Ros1Dsr_msgsGetCurrentPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentPoseRequestCodec(),
              new Ros1Dsr_msgsGetCurrentPoseResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentPoseRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPose incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentPoseServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentPoseRequest, Ros1Dsr_msgsGetCurrentPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentPoseRequestCodec(),
              new Ros1Dsr_msgsGetCurrentPoseResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentPoseResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosj typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentPosjClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentPosjRequest, Ros1Dsr_msgsGetCurrentPosjResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentPosjRequestCodec(),
              new Ros1Dsr_msgsGetCurrentPosjResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentPosjRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosj incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentPosjServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentPosjRequest, Ros1Dsr_msgsGetCurrentPosjResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentPosjRequestCodec(),
              new Ros1Dsr_msgsGetCurrentPosjResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentPosjResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosx typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentPosxClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentPosxRequest, Ros1Dsr_msgsGetCurrentPosxResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentPosxRequestCodec(),
              new Ros1Dsr_msgsGetCurrentPosxResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentPosxRequest): bool => value.validValue(),
              2213,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosx incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentPosxServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentPosxRequest, Ros1Dsr_msgsGetCurrentPosxResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentPosxRequestCodec(),
              new Ros1Dsr_msgsGetCurrentPosxResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentPosxResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentRotm typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentRotmClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentRotmRequest, Ros1Dsr_msgsGetCurrentRotmResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentRotmRequestCodec(),
              new Ros1Dsr_msgsGetCurrentRotmResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentRotmRequest): bool => value.validValue(),
              2213,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentRotm incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentRotmServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentRotmRequest, Ros1Dsr_msgsGetCurrentRotmResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentRotmRequestCodec(),
              new Ros1Dsr_msgsGetCurrentRotmResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentRotmResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentSolutionSpace typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentSolutionSpaceClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest, Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec(),
              new Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentSolutionSpaceRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentSolutionSpace incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentSolutionSpaceServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetCurrentSolutionSpaceRequest, Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec(),
              new Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentSolutionSpaceResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTcp typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentTcpClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentTcpRequest, Ros1Dsr_msgsGetCurrentTcpResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentTcpRequestCodec(),
              new Ros1Dsr_msgsGetCurrentTcpResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentTcpRequest): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTcp incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentTcpServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentTcpRequest, Ros1Dsr_msgsGetCurrentTcpResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentTcpRequestCodec(),
              new Ros1Dsr_msgsGetCurrentTcpResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentTcpResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTool typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentToolClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentToolRequest, Ros1Dsr_msgsGetCurrentToolResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentToolRequestCodec(),
              new Ros1Dsr_msgsGetCurrentToolResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentToolRequest): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTool incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentToolServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentToolRequest, Ros1Dsr_msgsGetCurrentToolResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentToolRequestCodec(),
              new Ros1Dsr_msgsGetCurrentToolResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentToolResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentToolFlangePosx typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentToolFlangePosxClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetCurrentToolFlangePosxRequest, Ros1Dsr_msgsGetCurrentToolFlangePosxResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec(),
              new Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentToolFlangePosxRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentToolFlangePosx incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentToolFlangePosxServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetCurrentToolFlangePosxRequest, Ros1Dsr_msgsGetCurrentToolFlangePosxResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec(),
              new Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentToolFlangePosxResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelj typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentVeljClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentVeljRequest, Ros1Dsr_msgsGetCurrentVeljResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentVeljRequestCodec(),
              new Ros1Dsr_msgsGetCurrentVeljResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentVeljRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelj incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentVeljServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentVeljRequest, Ros1Dsr_msgsGetCurrentVeljResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentVeljRequestCodec(),
              new Ros1Dsr_msgsGetCurrentVeljResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentVeljResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelx typed call and real-submit client. */
export class Ros1Dsr_msgsGetCurrentVelxClient extends BoundedServiceClient<Ros1Dsr_msgsGetCurrentVelxRequest, Ros1Dsr_msgsGetCurrentVelxResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetCurrentVelxRequestCodec(),
              new Ros1Dsr_msgsGetCurrentVelxResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentVelxRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelx incoming request/response owner. */
export class Ros1Dsr_msgsGetCurrentVelxServer extends BoundedServiceServer<Ros1Dsr_msgsGetCurrentVelxRequest, Ros1Dsr_msgsGetCurrentVelxResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetCurrentVelxRequestCodec(),
              new Ros1Dsr_msgsGetCurrentVelxResponseCodec(),
              (value: Ros1Dsr_msgsGetCurrentVelxResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosj typed call and real-submit client. */
export class Ros1Dsr_msgsGetDesiredPosjClient extends BoundedServiceClient<Ros1Dsr_msgsGetDesiredPosjRequest, Ros1Dsr_msgsGetDesiredPosjResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetDesiredPosjRequestCodec(),
              new Ros1Dsr_msgsGetDesiredPosjResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredPosjRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosj incoming request/response owner. */
export class Ros1Dsr_msgsGetDesiredPosjServer extends BoundedServiceServer<Ros1Dsr_msgsGetDesiredPosjRequest, Ros1Dsr_msgsGetDesiredPosjResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetDesiredPosjRequestCodec(),
              new Ros1Dsr_msgsGetDesiredPosjResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredPosjResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosx typed call and real-submit client. */
export class Ros1Dsr_msgsGetDesiredPosxClient extends BoundedServiceClient<Ros1Dsr_msgsGetDesiredPosxRequest, Ros1Dsr_msgsGetDesiredPosxResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetDesiredPosxRequestCodec(),
              new Ros1Dsr_msgsGetDesiredPosxResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredPosxRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosx incoming request/response owner. */
export class Ros1Dsr_msgsGetDesiredPosxServer extends BoundedServiceServer<Ros1Dsr_msgsGetDesiredPosxRequest, Ros1Dsr_msgsGetDesiredPosxResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetDesiredPosxRequestCodec(),
              new Ros1Dsr_msgsGetDesiredPosxResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredPosxResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelj typed call and real-submit client. */
export class Ros1Dsr_msgsGetDesiredVeljClient extends BoundedServiceClient<Ros1Dsr_msgsGetDesiredVeljRequest, Ros1Dsr_msgsGetDesiredVeljResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetDesiredVeljRequestCodec(),
              new Ros1Dsr_msgsGetDesiredVeljResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredVeljRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelj incoming request/response owner. */
export class Ros1Dsr_msgsGetDesiredVeljServer extends BoundedServiceServer<Ros1Dsr_msgsGetDesiredVeljRequest, Ros1Dsr_msgsGetDesiredVeljResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetDesiredVeljRequestCodec(),
              new Ros1Dsr_msgsGetDesiredVeljResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredVeljResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelx typed call and real-submit client. */
export class Ros1Dsr_msgsGetDesiredVelxClient extends BoundedServiceClient<Ros1Dsr_msgsGetDesiredVelxRequest, Ros1Dsr_msgsGetDesiredVelxResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetDesiredVelxRequestCodec(),
              new Ros1Dsr_msgsGetDesiredVelxResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredVelxRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelx incoming request/response owner. */
export class Ros1Dsr_msgsGetDesiredVelxServer extends BoundedServiceServer<Ros1Dsr_msgsGetDesiredVelxRequest, Ros1Dsr_msgsGetDesiredVelxResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetDesiredVelxRequestCodec(),
              new Ros1Dsr_msgsGetDesiredVelxResponseCodec(),
              (value: Ros1Dsr_msgsGetDesiredVelxResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetDrlState typed call and real-submit client. */
export class Ros1Dsr_msgsGetDrlStateClient extends BoundedServiceClient<Ros1Dsr_msgsGetDrlStateRequest, Ros1Dsr_msgsGetDrlStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetDrlStateRequestCodec(),
              new Ros1Dsr_msgsGetDrlStateResponseCodec(),
              (value: Ros1Dsr_msgsGetDrlStateRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetDrlState incoming request/response owner. */
export class Ros1Dsr_msgsGetDrlStateServer extends BoundedServiceServer<Ros1Dsr_msgsGetDrlStateRequest, Ros1Dsr_msgsGetDrlStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetDrlStateRequestCodec(),
              new Ros1Dsr_msgsGetDrlStateResponseCodec(),
              (value: Ros1Dsr_msgsGetDrlStateResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetExternalTorque typed call and real-submit client. */
export class Ros1Dsr_msgsGetExternalTorqueClient extends BoundedServiceClient<Ros1Dsr_msgsGetExternalTorqueRequest, Ros1Dsr_msgsGetExternalTorqueResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetExternalTorqueRequestCodec(),
              new Ros1Dsr_msgsGetExternalTorqueResponseCodec(),
              (value: Ros1Dsr_msgsGetExternalTorqueRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetExternalTorque incoming request/response owner. */
export class Ros1Dsr_msgsGetExternalTorqueServer extends BoundedServiceServer<Ros1Dsr_msgsGetExternalTorqueRequest, Ros1Dsr_msgsGetExternalTorqueResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetExternalTorqueRequestCodec(),
              new Ros1Dsr_msgsGetExternalTorqueResponseCodec(),
              (value: Ros1Dsr_msgsGetExternalTorqueResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetJointTorque typed call and real-submit client. */
export class Ros1Dsr_msgsGetJointTorqueClient extends BoundedServiceClient<Ros1Dsr_msgsGetJointTorqueRequest, Ros1Dsr_msgsGetJointTorqueResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetJointTorqueRequestCodec(),
              new Ros1Dsr_msgsGetJointTorqueResponseCodec(),
              (value: Ros1Dsr_msgsGetJointTorqueRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetJointTorque incoming request/response owner. */
export class Ros1Dsr_msgsGetJointTorqueServer extends BoundedServiceServer<Ros1Dsr_msgsGetJointTorqueRequest, Ros1Dsr_msgsGetJointTorqueResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetJointTorqueRequestCodec(),
              new Ros1Dsr_msgsGetJointTorqueResponseCodec(),
              (value: Ros1Dsr_msgsGetJointTorqueResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetLastAlarm typed call and real-submit client. */
export class Ros1Dsr_msgsGetLastAlarmClient extends BoundedServiceClient<Ros1Dsr_msgsGetLastAlarmRequest, Ros1Dsr_msgsGetLastAlarmResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetLastAlarmRequestCodec(),
              new Ros1Dsr_msgsGetLastAlarmResponseCodec(),
              (value: Ros1Dsr_msgsGetLastAlarmRequest): bool => value.validValue(),
              793,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetLastAlarm incoming request/response owner. */
export class Ros1Dsr_msgsGetLastAlarmServer extends BoundedServiceServer<Ros1Dsr_msgsGetLastAlarmRequest, Ros1Dsr_msgsGetLastAlarmResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetLastAlarmRequestCodec(),
              new Ros1Dsr_msgsGetLastAlarmResponseCodec(),
              (value: Ros1Dsr_msgsGetLastAlarmResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetModbusInput typed call and real-submit client. */
export class Ros1Dsr_msgsGetModbusInputClient extends BoundedServiceClient<Ros1Dsr_msgsGetModbusInputRequest, Ros1Dsr_msgsGetModbusInputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetModbusInputRequestCodec(),
              new Ros1Dsr_msgsGetModbusInputResponseCodec(),
              (value: Ros1Dsr_msgsGetModbusInputRequest): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetModbusInput incoming request/response owner. */
export class Ros1Dsr_msgsGetModbusInputServer extends BoundedServiceServer<Ros1Dsr_msgsGetModbusInputRequest, Ros1Dsr_msgsGetModbusInputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetModbusInputRequestCodec(),
              new Ros1Dsr_msgsGetModbusInputResponseCodec(),
              (value: Ros1Dsr_msgsGetModbusInputResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/GetOrientationError typed call and real-submit client. */
export class Ros1Dsr_msgsGetOrientationErrorClient extends BoundedServiceClient<Ros1Dsr_msgsGetOrientationErrorRequest, Ros1Dsr_msgsGetOrientationErrorResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetOrientationErrorRequestCodec(),
              new Ros1Dsr_msgsGetOrientationErrorResponseCodec(),
              (value: Ros1Dsr_msgsGetOrientationErrorRequest): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetOrientationError incoming request/response owner. */
export class Ros1Dsr_msgsGetOrientationErrorServer extends BoundedServiceServer<Ros1Dsr_msgsGetOrientationErrorRequest, Ros1Dsr_msgsGetOrientationErrorResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetOrientationErrorRequestCodec(),
              new Ros1Dsr_msgsGetOrientationErrorResponseCodec(),
              (value: Ros1Dsr_msgsGetOrientationErrorResponse): bool => value.validValue(),
              97,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputDataList typed call and real-submit client. */
export class Ros1Dsr_msgsGetRTControlInputDataListClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetRTControlInputDataListRequest, Ros1Dsr_msgsGetRTControlInputDataListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRTControlInputDataListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlInputDataListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlInputDataListRequest): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputDataList incoming request/response owner. */
export class Ros1Dsr_msgsGetRTControlInputDataListServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetRTControlInputDataListRequest, Ros1Dsr_msgsGetRTControlInputDataListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRTControlInputDataListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlInputDataListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlInputDataListResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputVersionList typed call and real-submit client. */
export class Ros1Dsr_msgsGetRTControlInputVersionListClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetRTControlInputVersionListRequest, Ros1Dsr_msgsGetRTControlInputVersionListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlInputVersionListRequest): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputVersionList incoming request/response owner. */
export class Ros1Dsr_msgsGetRTControlInputVersionListServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetRTControlInputVersionListRequest, Ros1Dsr_msgsGetRTControlInputVersionListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlInputVersionListResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputDataList typed call and real-submit client. */
export class Ros1Dsr_msgsGetRTControlOutputDataListClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetRTControlOutputDataListRequest, Ros1Dsr_msgsGetRTControlOutputDataListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlOutputDataListRequest): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputDataList incoming request/response owner. */
export class Ros1Dsr_msgsGetRTControlOutputDataListServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetRTControlOutputDataListRequest, Ros1Dsr_msgsGetRTControlOutputDataListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlOutputDataListResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputVersionList typed call and real-submit client. */
export class Ros1Dsr_msgsGetRTControlOutputVersionListClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetRTControlOutputVersionListRequest, Ros1Dsr_msgsGetRTControlOutputVersionListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlOutputVersionListRequest): bool => value.validValue(),
              261,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputVersionList incoming request/response owner. */
export class Ros1Dsr_msgsGetRTControlOutputVersionListServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetRTControlOutputVersionListRequest, Ros1Dsr_msgsGetRTControlOutputVersionListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec(),
              new Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec(),
              (value: Ros1Dsr_msgsGetRTControlOutputVersionListResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotMode typed call and real-submit client. */
export class Ros1Dsr_msgsGetRobotModeClient extends BoundedServiceClient<Ros1Dsr_msgsGetRobotModeRequest, Ros1Dsr_msgsGetRobotModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRobotModeRequestCodec(),
              new Ros1Dsr_msgsGetRobotModeResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotModeRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotMode incoming request/response owner. */
export class Ros1Dsr_msgsGetRobotModeServer extends BoundedServiceServer<Ros1Dsr_msgsGetRobotModeRequest, Ros1Dsr_msgsGetRobotModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRobotModeRequestCodec(),
              new Ros1Dsr_msgsGetRobotModeResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotModeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotSpeedMode typed call and real-submit client. */
export class Ros1Dsr_msgsGetRobotSpeedModeClient extends BoundedServiceClient<Ros1Dsr_msgsGetRobotSpeedModeRequest, Ros1Dsr_msgsGetRobotSpeedModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRobotSpeedModeRequestCodec(),
              new Ros1Dsr_msgsGetRobotSpeedModeResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotSpeedModeRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotSpeedMode incoming request/response owner. */
export class Ros1Dsr_msgsGetRobotSpeedModeServer extends BoundedServiceServer<Ros1Dsr_msgsGetRobotSpeedModeRequest, Ros1Dsr_msgsGetRobotSpeedModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRobotSpeedModeRequestCodec(),
              new Ros1Dsr_msgsGetRobotSpeedModeResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotSpeedModeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotState typed call and real-submit client. */
export class Ros1Dsr_msgsGetRobotStateClient extends BoundedServiceClient<Ros1Dsr_msgsGetRobotStateRequest, Ros1Dsr_msgsGetRobotStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRobotStateRequestCodec(),
              new Ros1Dsr_msgsGetRobotStateResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotStateRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotState incoming request/response owner. */
export class Ros1Dsr_msgsGetRobotStateServer extends BoundedServiceServer<Ros1Dsr_msgsGetRobotStateRequest, Ros1Dsr_msgsGetRobotStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRobotStateRequestCodec(),
              new Ros1Dsr_msgsGetRobotStateResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotStateResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotSystem typed call and real-submit client. */
export class Ros1Dsr_msgsGetRobotSystemClient extends BoundedServiceClient<Ros1Dsr_msgsGetRobotSystemRequest, Ros1Dsr_msgsGetRobotSystemResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetRobotSystemRequestCodec(),
              new Ros1Dsr_msgsGetRobotSystemResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotSystemRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotSystem incoming request/response owner. */
export class Ros1Dsr_msgsGetRobotSystemServer extends BoundedServiceServer<Ros1Dsr_msgsGetRobotSystemRequest, Ros1Dsr_msgsGetRobotSystemResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetRobotSystemRequestCodec(),
              new Ros1Dsr_msgsGetRobotSystemResponseCodec(),
              (value: Ros1Dsr_msgsGetRobotSystemResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/GetSolutionSpace typed call and real-submit client. */
export class Ros1Dsr_msgsGetSolutionSpaceClient extends BoundedServiceClient<Ros1Dsr_msgsGetSolutionSpaceRequest, Ros1Dsr_msgsGetSolutionSpaceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetSolutionSpaceRequestCodec(),
              new Ros1Dsr_msgsGetSolutionSpaceResponseCodec(),
              (value: Ros1Dsr_msgsGetSolutionSpaceRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetSolutionSpace incoming request/response owner. */
export class Ros1Dsr_msgsGetSolutionSpaceServer extends BoundedServiceServer<Ros1Dsr_msgsGetSolutionSpaceRequest, Ros1Dsr_msgsGetSolutionSpaceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetSolutionSpaceRequestCodec(),
              new Ros1Dsr_msgsGetSolutionSpaceResponseCodec(),
              (value: Ros1Dsr_msgsGetSolutionSpaceResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalInput typed call and real-submit client. */
export class Ros1Dsr_msgsGetToolDigitalInputClient extends BoundedServiceClient<Ros1Dsr_msgsGetToolDigitalInputRequest, Ros1Dsr_msgsGetToolDigitalInputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetToolDigitalInputRequestCodec(),
              new Ros1Dsr_msgsGetToolDigitalInputResponseCodec(),
              (value: Ros1Dsr_msgsGetToolDigitalInputRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalInput incoming request/response owner. */
export class Ros1Dsr_msgsGetToolDigitalInputServer extends BoundedServiceServer<Ros1Dsr_msgsGetToolDigitalInputRequest, Ros1Dsr_msgsGetToolDigitalInputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetToolDigitalInputRequestCodec(),
              new Ros1Dsr_msgsGetToolDigitalInputResponseCodec(),
              (value: Ros1Dsr_msgsGetToolDigitalInputResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalOutput typed call and real-submit client. */
export class Ros1Dsr_msgsGetToolDigitalOutputClient extends
    BoundedServiceClient<Ros1Dsr_msgsGetToolDigitalOutputRequest, Ros1Dsr_msgsGetToolDigitalOutputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetToolDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsGetToolDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsGetToolDigitalOutputRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalOutput incoming request/response owner. */
export class Ros1Dsr_msgsGetToolDigitalOutputServer extends
    BoundedServiceServer<Ros1Dsr_msgsGetToolDigitalOutputRequest, Ros1Dsr_msgsGetToolDigitalOutputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetToolDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsGetToolDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsGetToolDigitalOutputResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolForce typed call and real-submit client. */
export class Ros1Dsr_msgsGetToolForceClient extends BoundedServiceClient<Ros1Dsr_msgsGetToolForceRequest, Ros1Dsr_msgsGetToolForceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetToolForceRequestCodec(),
              new Ros1Dsr_msgsGetToolForceResponseCodec(),
              (value: Ros1Dsr_msgsGetToolForceRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolForce incoming request/response owner. */
export class Ros1Dsr_msgsGetToolForceServer extends BoundedServiceServer<Ros1Dsr_msgsGetToolForceRequest, Ros1Dsr_msgsGetToolForceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetToolForceRequestCodec(),
              new Ros1Dsr_msgsGetToolForceResponseCodec(),
              (value: Ros1Dsr_msgsGetToolForceResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetUserCartCoord typed call and real-submit client. */
export class Ros1Dsr_msgsGetUserCartCoordClient extends BoundedServiceClient<Ros1Dsr_msgsGetUserCartCoordRequest, Ros1Dsr_msgsGetUserCartCoordResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetUserCartCoordRequestCodec(),
              new Ros1Dsr_msgsGetUserCartCoordResponseCodec(),
              (value: Ros1Dsr_msgsGetUserCartCoordRequest): bool => value.validValue(),
              50,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetUserCartCoord incoming request/response owner. */
export class Ros1Dsr_msgsGetUserCartCoordServer extends BoundedServiceServer<Ros1Dsr_msgsGetUserCartCoordRequest, Ros1Dsr_msgsGetUserCartCoordResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetUserCartCoordRequestCodec(),
              new Ros1Dsr_msgsGetUserCartCoordResponseCodec(),
              (value: Ros1Dsr_msgsGetUserCartCoordResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/GetWorkpieceWeight typed call and real-submit client. */
export class Ros1Dsr_msgsGetWorkpieceWeightClient extends BoundedServiceClient<Ros1Dsr_msgsGetWorkpieceWeightRequest, Ros1Dsr_msgsGetWorkpieceWeightResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsGetWorkpieceWeightRequestCodec(),
              new Ros1Dsr_msgsGetWorkpieceWeightResponseCodec(),
              (value: Ros1Dsr_msgsGetWorkpieceWeightRequest): bool => value.validValue(),
              5,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetWorkpieceWeight incoming request/response owner. */
export class Ros1Dsr_msgsGetWorkpieceWeightServer extends BoundedServiceServer<Ros1Dsr_msgsGetWorkpieceWeightRequest, Ros1Dsr_msgsGetWorkpieceWeightResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsGetWorkpieceWeightRequestCodec(),
              new Ros1Dsr_msgsGetWorkpieceWeightResponseCodec(),
              (value: Ros1Dsr_msgsGetWorkpieceWeightResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/Ikin typed call and real-submit client. */
export class Ros1Dsr_msgsIkinClient extends BoundedServiceClient<Ros1Dsr_msgsIkinRequest, Ros1Dsr_msgsIkinResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsIkinRequestCodec(),
              new Ros1Dsr_msgsIkinResponseCodec(),
              (value: Ros1Dsr_msgsIkinRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/Ikin incoming request/response owner. */
export class Ros1Dsr_msgsIkinServer extends BoundedServiceServer<Ros1Dsr_msgsIkinRequest, Ros1Dsr_msgsIkinResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsIkinRequestCodec(),
              new Ros1Dsr_msgsIkinResponseCodec(),
              (value: Ros1Dsr_msgsIkinResponse): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs/IkinEx typed call and real-submit client. */
export class Ros1Dsr_msgsIkinExClient extends BoundedServiceClient<Ros1Dsr_msgsIkinExRequest, Ros1Dsr_msgsIkinExResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsIkinExRequestCodec(),
              new Ros1Dsr_msgsIkinExResponseCodec(),
              (value: Ros1Dsr_msgsIkinExRequest): bool => value.validValue(),
              50,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/IkinEx incoming request/response owner. */
export class Ros1Dsr_msgsIkinExServer extends BoundedServiceServer<Ros1Dsr_msgsIkinExRequest, Ros1Dsr_msgsIkinExResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsIkinExRequestCodec(),
              new Ros1Dsr_msgsIkinExResponseCodec(),
              (value: Ros1Dsr_msgsIkinExResponse): bool => value.validValue(),
              51,
              capacity);
    }
}

/** Complete dsr_msgs/IsDoneBoltTightening typed call and real-submit client. */
export class Ros1Dsr_msgsIsDoneBoltTighteningClient extends
    BoundedServiceClient<Ros1Dsr_msgsIsDoneBoltTighteningRequest, Ros1Dsr_msgsIsDoneBoltTighteningResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec(),
              new Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec(),
              (value: Ros1Dsr_msgsIsDoneBoltTighteningRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/IsDoneBoltTightening incoming request/response owner. */
export class Ros1Dsr_msgsIsDoneBoltTighteningServer extends
    BoundedServiceServer<Ros1Dsr_msgsIsDoneBoltTighteningRequest, Ros1Dsr_msgsIsDoneBoltTighteningResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec(),
              new Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec(),
              (value: Ros1Dsr_msgsIsDoneBoltTighteningResponse): bool => value.validValue(),
              17,
              capacity);
    }
}

/** Complete dsr_msgs/Jog typed call and real-submit client. */
export class Ros1Dsr_msgsJogClient extends BoundedServiceClient<Ros1Dsr_msgsJogRequest, Ros1Dsr_msgsJogResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsJogRequestCodec(),
              new Ros1Dsr_msgsJogResponseCodec(),
              (value: Ros1Dsr_msgsJogRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/Jog incoming request/response owner. */
export class Ros1Dsr_msgsJogServer extends BoundedServiceServer<Ros1Dsr_msgsJogRequest, Ros1Dsr_msgsJogResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsJogRequestCodec(),
              new Ros1Dsr_msgsJogResponseCodec(),
              (value: Ros1Dsr_msgsJogResponse): bool => value.validValue(),
              10,
              capacity);
    }
}

/** Complete dsr_msgs/JogMulti typed call and real-submit client. */
export class Ros1Dsr_msgsJogMultiClient extends BoundedServiceClient<Ros1Dsr_msgsJogMultiRequest, Ros1Dsr_msgsJogMultiResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsJogMultiRequestCodec(),
              new Ros1Dsr_msgsJogMultiResponseCodec(),
              (value: Ros1Dsr_msgsJogMultiRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/JogMulti incoming request/response owner. */
export class Ros1Dsr_msgsJogMultiServer extends BoundedServiceServer<Ros1Dsr_msgsJogMultiRequest, Ros1Dsr_msgsJogMultiResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsJogMultiRequestCodec(),
              new Ros1Dsr_msgsJogMultiResponseCodec(),
              (value: Ros1Dsr_msgsJogMultiResponse): bool => value.validValue(),
              57,
              capacity);
    }
}

/** Complete dsr_msgs/ManageAccessControl typed call and real-submit client. */
export class Ros1Dsr_msgsManageAccessControlClient extends BoundedServiceClient<Ros1Dsr_msgsManageAccessControlRequest, Ros1Dsr_msgsManageAccessControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsManageAccessControlRequestCodec(),
              new Ros1Dsr_msgsManageAccessControlResponseCodec(),
              (value: Ros1Dsr_msgsManageAccessControlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ManageAccessControl incoming request/response owner. */
export class Ros1Dsr_msgsManageAccessControlServer extends BoundedServiceServer<Ros1Dsr_msgsManageAccessControlRequest, Ros1Dsr_msgsManageAccessControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsManageAccessControlRequestCodec(),
              new Ros1Dsr_msgsManageAccessControlResponseCodec(),
              (value: Ros1Dsr_msgsManageAccessControlResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/MoveBlending typed call and real-submit client. */
export class Ros1Dsr_msgsMoveBlendingClient extends BoundedServiceClient<Ros1Dsr_msgsMoveBlendingRequest, Ros1Dsr_msgsMoveBlendingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveBlendingRequestCodec(),
              new Ros1Dsr_msgsMoveBlendingResponseCodec(),
              (value: Ros1Dsr_msgsMoveBlendingRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveBlending incoming request/response owner. */
export class Ros1Dsr_msgsMoveBlendingServer extends BoundedServiceServer<Ros1Dsr_msgsMoveBlendingRequest, Ros1Dsr_msgsMoveBlendingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveBlendingRequestCodec(),
              new Ros1Dsr_msgsMoveBlendingResponseCodec(),
              (value: Ros1Dsr_msgsMoveBlendingResponse): bool => value.validValue(),
              2256,
              capacity);
    }
}

/** Complete dsr_msgs/MoveCircle typed call and real-submit client. */
export class Ros1Dsr_msgsMoveCircleClient extends BoundedServiceClient<Ros1Dsr_msgsMoveCircleRequest, Ros1Dsr_msgsMoveCircleResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveCircleRequestCodec(),
              new Ros1Dsr_msgsMoveCircleResponseCodec(),
              (value: Ros1Dsr_msgsMoveCircleRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveCircle incoming request/response owner. */
export class Ros1Dsr_msgsMoveCircleServer extends BoundedServiceServer<Ros1Dsr_msgsMoveCircleRequest, Ros1Dsr_msgsMoveCircleResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveCircleRequestCodec(),
              new Ros1Dsr_msgsMoveCircleResponseCodec(),
              (value: Ros1Dsr_msgsMoveCircleResponse): bool => value.validValue(),
              2280,
              capacity);
    }
}

/** Complete dsr_msgs/MoveHome typed call and real-submit client. */
export class Ros1Dsr_msgsMoveHomeClient extends BoundedServiceClient<Ros1Dsr_msgsMoveHomeRequest, Ros1Dsr_msgsMoveHomeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveHomeRequestCodec(),
              new Ros1Dsr_msgsMoveHomeResponseCodec(),
              (value: Ros1Dsr_msgsMoveHomeRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveHome incoming request/response owner. */
export class Ros1Dsr_msgsMoveHomeServer extends BoundedServiceServer<Ros1Dsr_msgsMoveHomeRequest, Ros1Dsr_msgsMoveHomeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveHomeRequestCodec(),
              new Ros1Dsr_msgsMoveHomeResponseCodec(),
              (value: Ros1Dsr_msgsMoveHomeResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/MoveJoint typed call and real-submit client. */
export class Ros1Dsr_msgsMoveJointClient extends BoundedServiceClient<Ros1Dsr_msgsMoveJointRequest, Ros1Dsr_msgsMoveJointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveJointRequestCodec(),
              new Ros1Dsr_msgsMoveJointResponseCodec(),
              (value: Ros1Dsr_msgsMoveJointRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveJoint incoming request/response owner. */
export class Ros1Dsr_msgsMoveJointServer extends BoundedServiceServer<Ros1Dsr_msgsMoveJointRequest, Ros1Dsr_msgsMoveJointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveJointRequestCodec(),
              new Ros1Dsr_msgsMoveJointResponseCodec(),
              (value: Ros1Dsr_msgsMoveJointResponse): bool => value.validValue(),
              83,
              capacity);
    }
}

/** Complete dsr_msgs/MoveJointx typed call and real-submit client. */
export class Ros1Dsr_msgsMoveJointxClient extends BoundedServiceClient<Ros1Dsr_msgsMoveJointxRequest, Ros1Dsr_msgsMoveJointxResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveJointxRequestCodec(),
              new Ros1Dsr_msgsMoveJointxResponseCodec(),
              (value: Ros1Dsr_msgsMoveJointxRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveJointx incoming request/response owner. */
export class Ros1Dsr_msgsMoveJointxServer extends BoundedServiceServer<Ros1Dsr_msgsMoveJointxRequest, Ros1Dsr_msgsMoveJointxResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveJointxRequestCodec(),
              new Ros1Dsr_msgsMoveJointxResponseCodec(),
              (value: Ros1Dsr_msgsMoveJointxResponse): bool => value.validValue(),
              85,
              capacity);
    }
}

/** Complete dsr_msgs/MoveLine typed call and real-submit client. */
export class Ros1Dsr_msgsMoveLineClient extends BoundedServiceClient<Ros1Dsr_msgsMoveLineRequest, Ros1Dsr_msgsMoveLineResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveLineRequestCodec(),
              new Ros1Dsr_msgsMoveLineResponseCodec(),
              (value: Ros1Dsr_msgsMoveLineRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveLine incoming request/response owner. */
export class Ros1Dsr_msgsMoveLineServer extends BoundedServiceServer<Ros1Dsr_msgsMoveLineRequest, Ros1Dsr_msgsMoveLineResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveLineRequestCodec(),
              new Ros1Dsr_msgsMoveLineResponseCodec(),
              (value: Ros1Dsr_msgsMoveLineResponse): bool => value.validValue(),
              100,
              capacity);
    }
}

/** Complete dsr_msgs/MovePause typed call and real-submit client. */
export class Ros1Dsr_msgsMovePauseClient extends BoundedServiceClient<Ros1Dsr_msgsMovePauseRequest, Ros1Dsr_msgsMovePauseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMovePauseRequestCodec(),
              new Ros1Dsr_msgsMovePauseResponseCodec(),
              (value: Ros1Dsr_msgsMovePauseRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MovePause incoming request/response owner. */
export class Ros1Dsr_msgsMovePauseServer extends BoundedServiceServer<Ros1Dsr_msgsMovePauseRequest, Ros1Dsr_msgsMovePauseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMovePauseRequestCodec(),
              new Ros1Dsr_msgsMovePauseResponseCodec(),
              (value: Ros1Dsr_msgsMovePauseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/MovePeriodic typed call and real-submit client. */
export class Ros1Dsr_msgsMovePeriodicClient extends BoundedServiceClient<Ros1Dsr_msgsMovePeriodicRequest, Ros1Dsr_msgsMovePeriodicResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMovePeriodicRequestCodec(),
              new Ros1Dsr_msgsMovePeriodicResponseCodec(),
              (value: Ros1Dsr_msgsMovePeriodicRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MovePeriodic incoming request/response owner. */
export class Ros1Dsr_msgsMovePeriodicServer extends BoundedServiceServer<Ros1Dsr_msgsMovePeriodicRequest, Ros1Dsr_msgsMovePeriodicResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMovePeriodicRequestCodec(),
              new Ros1Dsr_msgsMovePeriodicResponseCodec(),
              (value: Ros1Dsr_msgsMovePeriodicResponse): bool => value.validValue(),
              107,
              capacity);
    }
}

/** Complete dsr_msgs/MoveResume typed call and real-submit client. */
export class Ros1Dsr_msgsMoveResumeClient extends BoundedServiceClient<Ros1Dsr_msgsMoveResumeRequest, Ros1Dsr_msgsMoveResumeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveResumeRequestCodec(),
              new Ros1Dsr_msgsMoveResumeResponseCodec(),
              (value: Ros1Dsr_msgsMoveResumeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveResume incoming request/response owner. */
export class Ros1Dsr_msgsMoveResumeServer extends BoundedServiceServer<Ros1Dsr_msgsMoveResumeRequest, Ros1Dsr_msgsMoveResumeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveResumeRequestCodec(),
              new Ros1Dsr_msgsMoveResumeResponseCodec(),
              (value: Ros1Dsr_msgsMoveResumeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/MoveSpiral typed call and real-submit client. */
export class Ros1Dsr_msgsMoveSpiralClient extends BoundedServiceClient<Ros1Dsr_msgsMoveSpiralRequest, Ros1Dsr_msgsMoveSpiralResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveSpiralRequestCodec(),
              new Ros1Dsr_msgsMoveSpiralResponseCodec(),
              (value: Ros1Dsr_msgsMoveSpiralRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveSpiral incoming request/response owner. */
export class Ros1Dsr_msgsMoveSpiralServer extends BoundedServiceServer<Ros1Dsr_msgsMoveSpiralRequest, Ros1Dsr_msgsMoveSpiralResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveSpiralRequestCodec(),
              new Ros1Dsr_msgsMoveSpiralResponseCodec(),
              (value: Ros1Dsr_msgsMoveSpiralResponse): bool => value.validValue(),
              67,
              capacity);
    }
}

/** Complete dsr_msgs/MoveSplineJoint typed call and real-submit client. */
export class Ros1Dsr_msgsMoveSplineJointClient extends BoundedServiceClient<Ros1Dsr_msgsMoveSplineJointRequest, Ros1Dsr_msgsMoveSplineJointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveSplineJointRequestCodec(),
              new Ros1Dsr_msgsMoveSplineJointResponseCodec(),
              (value: Ros1Dsr_msgsMoveSplineJointRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveSplineJoint incoming request/response owner. */
export class Ros1Dsr_msgsMoveSplineJointServer extends BoundedServiceServer<Ros1Dsr_msgsMoveSplineJointRequest, Ros1Dsr_msgsMoveSplineJointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveSplineJointRequestCodec(),
              new Ros1Dsr_msgsMoveSplineJointResponseCodec(),
              (value: Ros1Dsr_msgsMoveSplineJointResponse): bool => value.validValue(),
              2319,
              capacity);
    }
}

/** Complete dsr_msgs/MoveSplineTask typed call and real-submit client. */
export class Ros1Dsr_msgsMoveSplineTaskClient extends BoundedServiceClient<Ros1Dsr_msgsMoveSplineTaskRequest, Ros1Dsr_msgsMoveSplineTaskResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveSplineTaskRequestCodec(),
              new Ros1Dsr_msgsMoveSplineTaskResponseCodec(),
              (value: Ros1Dsr_msgsMoveSplineTaskRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveSplineTask incoming request/response owner. */
export class Ros1Dsr_msgsMoveSplineTaskServer extends BoundedServiceServer<Ros1Dsr_msgsMoveSplineTaskRequest, Ros1Dsr_msgsMoveSplineTaskResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveSplineTaskRequestCodec(),
              new Ros1Dsr_msgsMoveSplineTaskResponseCodec(),
              (value: Ros1Dsr_msgsMoveSplineTaskResponse): bool => value.validValue(),
              2257,
              capacity);
    }
}

/** Complete dsr_msgs/MoveStop typed call and real-submit client. */
export class Ros1Dsr_msgsMoveStopClient extends BoundedServiceClient<Ros1Dsr_msgsMoveStopRequest, Ros1Dsr_msgsMoveStopResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveStopRequestCodec(),
              new Ros1Dsr_msgsMoveStopResponseCodec(),
              (value: Ros1Dsr_msgsMoveStopRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveStop incoming request/response owner. */
export class Ros1Dsr_msgsMoveStopServer extends BoundedServiceServer<Ros1Dsr_msgsMoveStopRequest, Ros1Dsr_msgsMoveStopResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveStopRequestCodec(),
              new Ros1Dsr_msgsMoveStopResponseCodec(),
              (value: Ros1Dsr_msgsMoveStopResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dsr_msgs/MoveWait typed call and real-submit client. */
export class Ros1Dsr_msgsMoveWaitClient extends BoundedServiceClient<Ros1Dsr_msgsMoveWaitRequest, Ros1Dsr_msgsMoveWaitResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsMoveWaitRequestCodec(),
              new Ros1Dsr_msgsMoveWaitResponseCodec(),
              (value: Ros1Dsr_msgsMoveWaitRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/MoveWait incoming request/response owner. */
export class Ros1Dsr_msgsMoveWaitServer extends BoundedServiceServer<Ros1Dsr_msgsMoveWaitRequest, Ros1Dsr_msgsMoveWaitResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsMoveWaitRequestCodec(),
              new Ros1Dsr_msgsMoveWaitResponseCodec(),
              (value: Ros1Dsr_msgsMoveWaitResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/OverwriteUserCartCoord typed call and real-submit client. */
export class Ros1Dsr_msgsOverwriteUserCartCoordClient extends
    BoundedServiceClient<Ros1Dsr_msgsOverwriteUserCartCoordRequest, Ros1Dsr_msgsOverwriteUserCartCoordResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec(),
              new Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec(),
              (value: Ros1Dsr_msgsOverwriteUserCartCoordRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/OverwriteUserCartCoord incoming request/response owner. */
export class Ros1Dsr_msgsOverwriteUserCartCoordServer extends
    BoundedServiceServer<Ros1Dsr_msgsOverwriteUserCartCoordRequest, Ros1Dsr_msgsOverwriteUserCartCoordResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec(),
              new Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec(),
              (value: Ros1Dsr_msgsOverwriteUserCartCoordResponse): bool => value.validValue(),
              50,
              capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis1 typed call and real-submit client. */
export class Ros1Dsr_msgsParallelAxis1Client extends BoundedServiceClient<Ros1Dsr_msgsParallelAxis1Request, Ros1Dsr_msgsParallelAxis1Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsParallelAxis1RequestCodec(),
              new Ros1Dsr_msgsParallelAxis1ResponseCodec(),
              (value: Ros1Dsr_msgsParallelAxis1Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis1 incoming request/response owner. */
export class Ros1Dsr_msgsParallelAxis1Server extends BoundedServiceServer<Ros1Dsr_msgsParallelAxis1Request, Ros1Dsr_msgsParallelAxis1Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsParallelAxis1RequestCodec(),
              new Ros1Dsr_msgsParallelAxis1ResponseCodec(),
              (value: Ros1Dsr_msgsParallelAxis1Response): bool => value.validValue(),
              146,
              capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis2 typed call and real-submit client. */
export class Ros1Dsr_msgsParallelAxis2Client extends BoundedServiceClient<Ros1Dsr_msgsParallelAxis2Request, Ros1Dsr_msgsParallelAxis2Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsParallelAxis2RequestCodec(),
              new Ros1Dsr_msgsParallelAxis2ResponseCodec(),
              (value: Ros1Dsr_msgsParallelAxis2Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis2 incoming request/response owner. */
export class Ros1Dsr_msgsParallelAxis2Server extends BoundedServiceServer<Ros1Dsr_msgsParallelAxis2Request, Ros1Dsr_msgsParallelAxis2Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsParallelAxis2RequestCodec(),
              new Ros1Dsr_msgsParallelAxis2ResponseCodec(),
              (value: Ros1Dsr_msgsParallelAxis2Response): bool => value.validValue(),
              26,
              capacity);
    }
}

/** Complete dsr_msgs/ReadDataRT typed call and real-submit client. */
export class Ros1Dsr_msgsReadDataRTClient extends BoundedServiceClient<Ros1Dsr_msgsReadDataRTRequest, Ros1Dsr_msgsReadDataRTResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsReadDataRTRequestCodec(),
              new Ros1Dsr_msgsReadDataRTResponseCodec(),
              (value: Ros1Dsr_msgsReadDataRTRequest): bool => value.validValue(),
              8154,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ReadDataRT incoming request/response owner. */
export class Ros1Dsr_msgsReadDataRTServer extends BoundedServiceServer<Ros1Dsr_msgsReadDataRTRequest, Ros1Dsr_msgsReadDataRTResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsReadDataRTRequestCodec(),
              new Ros1Dsr_msgsReadDataRTResponseCodec(),
              (value: Ros1Dsr_msgsReadDataRTResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseComplianceCtrl typed call and real-submit client. */
export class Ros1Dsr_msgsReleaseComplianceCtrlClient extends
    BoundedServiceClient<Ros1Dsr_msgsReleaseComplianceCtrlRequest, Ros1Dsr_msgsReleaseComplianceCtrlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec(),
              new Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec(),
              (value: Ros1Dsr_msgsReleaseComplianceCtrlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseComplianceCtrl incoming request/response owner. */
export class Ros1Dsr_msgsReleaseComplianceCtrlServer extends
    BoundedServiceServer<Ros1Dsr_msgsReleaseComplianceCtrlRequest, Ros1Dsr_msgsReleaseComplianceCtrlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec(),
              new Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec(),
              (value: Ros1Dsr_msgsReleaseComplianceCtrlResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseForce typed call and real-submit client. */
export class Ros1Dsr_msgsReleaseForceClient extends BoundedServiceClient<Ros1Dsr_msgsReleaseForceRequest, Ros1Dsr_msgsReleaseForceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsReleaseForceRequestCodec(),
              new Ros1Dsr_msgsReleaseForceResponseCodec(),
              (value: Ros1Dsr_msgsReleaseForceRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseForce incoming request/response owner. */
export class Ros1Dsr_msgsReleaseForceServer extends BoundedServiceServer<Ros1Dsr_msgsReleaseForceRequest, Ros1Dsr_msgsReleaseForceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsReleaseForceRequestCodec(),
              new Ros1Dsr_msgsReleaseForceResponseCodec(),
              (value: Ros1Dsr_msgsReleaseForceResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseProtectiveStop typed call and real-submit client. */
export class Ros1Dsr_msgsReleaseProtectiveStopClient extends
    BoundedServiceClient<Ros1Dsr_msgsReleaseProtectiveStopRequest, Ros1Dsr_msgsReleaseProtectiveStopResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsReleaseProtectiveStopRequestCodec(),
              new Ros1Dsr_msgsReleaseProtectiveStopResponseCodec(),
              (value: Ros1Dsr_msgsReleaseProtectiveStopRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseProtectiveStop incoming request/response owner. */
export class Ros1Dsr_msgsReleaseProtectiveStopServer extends
    BoundedServiceServer<Ros1Dsr_msgsReleaseProtectiveStopRequest, Ros1Dsr_msgsReleaseProtectiveStopResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsReleaseProtectiveStopRequestCodec(),
              new Ros1Dsr_msgsReleaseProtectiveStopResponseCodec(),
              (value: Ros1Dsr_msgsReleaseProtectiveStopResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/ResetWorkpieceWeight typed call and real-submit client. */
export class Ros1Dsr_msgsResetWorkpieceWeightClient extends
    BoundedServiceClient<Ros1Dsr_msgsResetWorkpieceWeightRequest, Ros1Dsr_msgsResetWorkpieceWeightResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsResetWorkpieceWeightRequestCodec(),
              new Ros1Dsr_msgsResetWorkpieceWeightResponseCodec(),
              (value: Ros1Dsr_msgsResetWorkpieceWeightRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ResetWorkpieceWeight incoming request/response owner. */
export class Ros1Dsr_msgsResetWorkpieceWeightServer extends
    BoundedServiceServer<Ros1Dsr_msgsResetWorkpieceWeightRequest, Ros1Dsr_msgsResetWorkpieceWeightResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsResetWorkpieceWeightRequestCodec(),
              new Ros1Dsr_msgsResetWorkpieceWeightResponseCodec(),
              (value: Ros1Dsr_msgsResetWorkpieceWeightResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FClose typed call and real-submit client. */
export class Ros1Dsr_msgsRobotiq2FCloseClient extends BoundedServiceClient<Ros1Dsr_msgsRobotiq2FCloseRequest, Ros1Dsr_msgsRobotiq2FCloseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsRobotiq2FCloseRequestCodec(),
              new Ros1Dsr_msgsRobotiq2FCloseResponseCodec(),
              (value: Ros1Dsr_msgsRobotiq2FCloseRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FClose incoming request/response owner. */
export class Ros1Dsr_msgsRobotiq2FCloseServer extends BoundedServiceServer<Ros1Dsr_msgsRobotiq2FCloseRequest, Ros1Dsr_msgsRobotiq2FCloseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsRobotiq2FCloseRequestCodec(),
              new Ros1Dsr_msgsRobotiq2FCloseResponseCodec(),
              (value: Ros1Dsr_msgsRobotiq2FCloseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FMove typed call and real-submit client. */
export class Ros1Dsr_msgsRobotiq2FMoveClient extends BoundedServiceClient<Ros1Dsr_msgsRobotiq2FMoveRequest, Ros1Dsr_msgsRobotiq2FMoveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsRobotiq2FMoveRequestCodec(),
              new Ros1Dsr_msgsRobotiq2FMoveResponseCodec(),
              (value: Ros1Dsr_msgsRobotiq2FMoveRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FMove incoming request/response owner. */
export class Ros1Dsr_msgsRobotiq2FMoveServer extends BoundedServiceServer<Ros1Dsr_msgsRobotiq2FMoveRequest, Ros1Dsr_msgsRobotiq2FMoveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsRobotiq2FMoveRequestCodec(),
              new Ros1Dsr_msgsRobotiq2FMoveResponseCodec(),
              (value: Ros1Dsr_msgsRobotiq2FMoveResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FOpen typed call and real-submit client. */
export class Ros1Dsr_msgsRobotiq2FOpenClient extends BoundedServiceClient<Ros1Dsr_msgsRobotiq2FOpenRequest, Ros1Dsr_msgsRobotiq2FOpenResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsRobotiq2FOpenRequestCodec(),
              new Ros1Dsr_msgsRobotiq2FOpenResponseCodec(),
              (value: Ros1Dsr_msgsRobotiq2FOpenRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FOpen incoming request/response owner. */
export class Ros1Dsr_msgsRobotiq2FOpenServer extends BoundedServiceServer<Ros1Dsr_msgsRobotiq2FOpenRequest, Ros1Dsr_msgsRobotiq2FOpenResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsRobotiq2FOpenRequestCodec(),
              new Ros1Dsr_msgsRobotiq2FOpenResponseCodec(),
              (value: Ros1Dsr_msgsRobotiq2FOpenResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/SerialSendData typed call and real-submit client. */
export class Ros1Dsr_msgsSerialSendDataClient extends BoundedServiceClient<Ros1Dsr_msgsSerialSendDataRequest, Ros1Dsr_msgsSerialSendDataResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSerialSendDataRequestCodec(),
              new Ros1Dsr_msgsSerialSendDataResponseCodec(),
              (value: Ros1Dsr_msgsSerialSendDataRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SerialSendData incoming request/response owner. */
export class Ros1Dsr_msgsSerialSendDataServer extends BoundedServiceServer<Ros1Dsr_msgsSerialSendDataRequest, Ros1Dsr_msgsSerialSendDataResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSerialSendDataRequestCodec(),
              new Ros1Dsr_msgsSerialSendDataResponseCodec(),
              (value: Ros1Dsr_msgsSerialSendDataResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/SetAccJRT typed call and real-submit client. */
export class Ros1Dsr_msgsSetAccJRTClient extends BoundedServiceClient<Ros1Dsr_msgsSetAccJRTRequest, Ros1Dsr_msgsSetAccJRTResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetAccJRTRequestCodec(),
              new Ros1Dsr_msgsSetAccJRTResponseCodec(),
              (value: Ros1Dsr_msgsSetAccJRTRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetAccJRT incoming request/response owner. */
export class Ros1Dsr_msgsSetAccJRTServer extends BoundedServiceServer<Ros1Dsr_msgsSetAccJRTRequest, Ros1Dsr_msgsSetAccJRTResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetAccJRTRequestCodec(),
              new Ros1Dsr_msgsSetAccJRTResponseCodec(),
              (value: Ros1Dsr_msgsSetAccJRTResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs/SetAccXRT typed call and real-submit client. */
export class Ros1Dsr_msgsSetAccXRTClient extends BoundedServiceClient<Ros1Dsr_msgsSetAccXRTRequest, Ros1Dsr_msgsSetAccXRTResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetAccXRTRequestCodec(),
              new Ros1Dsr_msgsSetAccXRTResponseCodec(),
              (value: Ros1Dsr_msgsSetAccXRTRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetAccXRT incoming request/response owner. */
export class Ros1Dsr_msgsSetAccXRTServer extends BoundedServiceServer<Ros1Dsr_msgsSetAccXRTRequest, Ros1Dsr_msgsSetAccXRTResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetAccXRTRequestCodec(),
              new Ros1Dsr_msgsSetAccXRTResponseCodec(),
              (value: Ros1Dsr_msgsSetAccXRTResponse): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogInputType typed call and real-submit client. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient extends
    BoundedServiceClient<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest, Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogInputType incoming request/response owner. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeServer extends
    BoundedServiceServer<Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest, Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutput typed call and real-submit client. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient extends
    BoundedServiceClient<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest, Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutput incoming request/response owner. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputServer extends
    BoundedServiceServer<Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest, Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse): bool => value.validValue(),
              9,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutputType typed call and real-submit client. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient extends
    BoundedServiceClient<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest, Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutputType incoming request/response owner. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeServer extends
    BoundedServiceServer<Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest, Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxDigitalOutput typed call and real-submit client. */
export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient extends
    BoundedServiceClient<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest, Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxDigitalOutput incoming request/response owner. */
export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputServer extends
    BoundedServiceServer<Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest, Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTcp typed call and real-submit client. */
export class Ros1Dsr_msgsSetCurrentTcpClient extends BoundedServiceClient<Ros1Dsr_msgsSetCurrentTcpRequest, Ros1Dsr_msgsSetCurrentTcpResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetCurrentTcpRequestCodec(),
              new Ros1Dsr_msgsSetCurrentTcpResponseCodec(),
              (value: Ros1Dsr_msgsSetCurrentTcpRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTcp incoming request/response owner. */
export class Ros1Dsr_msgsSetCurrentTcpServer extends BoundedServiceServer<Ros1Dsr_msgsSetCurrentTcpRequest, Ros1Dsr_msgsSetCurrentTcpResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetCurrentTcpRequestCodec(),
              new Ros1Dsr_msgsSetCurrentTcpResponseCodec(),
              (value: Ros1Dsr_msgsSetCurrentTcpResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTool typed call and real-submit client. */
export class Ros1Dsr_msgsSetCurrentToolClient extends BoundedServiceClient<Ros1Dsr_msgsSetCurrentToolRequest, Ros1Dsr_msgsSetCurrentToolResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetCurrentToolRequestCodec(),
              new Ros1Dsr_msgsSetCurrentToolResponseCodec(),
              (value: Ros1Dsr_msgsSetCurrentToolRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTool incoming request/response owner. */
export class Ros1Dsr_msgsSetCurrentToolServer extends BoundedServiceServer<Ros1Dsr_msgsSetCurrentToolRequest, Ros1Dsr_msgsSetCurrentToolResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetCurrentToolRequestCodec(),
              new Ros1Dsr_msgsSetCurrentToolResponseCodec(),
              (value: Ros1Dsr_msgsSetCurrentToolResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/SetDesiredForce typed call and real-submit client. */
export class Ros1Dsr_msgsSetDesiredForceClient extends BoundedServiceClient<Ros1Dsr_msgsSetDesiredForceRequest, Ros1Dsr_msgsSetDesiredForceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetDesiredForceRequestCodec(),
              new Ros1Dsr_msgsSetDesiredForceResponseCodec(),
              (value: Ros1Dsr_msgsSetDesiredForceRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetDesiredForce incoming request/response owner. */
export class Ros1Dsr_msgsSetDesiredForceServer extends BoundedServiceServer<Ros1Dsr_msgsSetDesiredForceRequest, Ros1Dsr_msgsSetDesiredForceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetDesiredForceRequestCodec(),
              new Ros1Dsr_msgsSetDesiredForceResponseCodec(),
              (value: Ros1Dsr_msgsSetDesiredForceResponse): bool => value.validValue(),
              64,
              capacity);
    }
}

/** Complete dsr_msgs/SetModbusOutput typed call and real-submit client. */
export class Ros1Dsr_msgsSetModbusOutputClient extends BoundedServiceClient<Ros1Dsr_msgsSetModbusOutputRequest, Ros1Dsr_msgsSetModbusOutputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetModbusOutputRequestCodec(),
              new Ros1Dsr_msgsSetModbusOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetModbusOutputRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetModbusOutput incoming request/response owner. */
export class Ros1Dsr_msgsSetModbusOutputServer extends BoundedServiceServer<Ros1Dsr_msgsSetModbusOutputRequest, Ros1Dsr_msgsSetModbusOutputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetModbusOutputRequestCodec(),
              new Ros1Dsr_msgsSetModbusOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetModbusOutputResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlInput typed call and real-submit client. */
export class Ros1Dsr_msgsSetRTControlInputClient extends BoundedServiceClient<Ros1Dsr_msgsSetRTControlInputRequest, Ros1Dsr_msgsSetRTControlInputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetRTControlInputRequestCodec(),
              new Ros1Dsr_msgsSetRTControlInputResponseCodec(),
              (value: Ros1Dsr_msgsSetRTControlInputRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlInput incoming request/response owner. */
export class Ros1Dsr_msgsSetRTControlInputServer extends BoundedServiceServer<Ros1Dsr_msgsSetRTControlInputRequest, Ros1Dsr_msgsSetRTControlInputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetRTControlInputRequestCodec(),
              new Ros1Dsr_msgsSetRTControlInputResponseCodec(),
              (value: Ros1Dsr_msgsSetRTControlInputResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlOutput typed call and real-submit client. */
export class Ros1Dsr_msgsSetRTControlOutputClient extends BoundedServiceClient<Ros1Dsr_msgsSetRTControlOutputRequest, Ros1Dsr_msgsSetRTControlOutputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetRTControlOutputRequestCodec(),
              new Ros1Dsr_msgsSetRTControlOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetRTControlOutputRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlOutput incoming request/response owner. */
export class Ros1Dsr_msgsSetRTControlOutputServer extends BoundedServiceServer<Ros1Dsr_msgsSetRTControlOutputRequest, Ros1Dsr_msgsSetRTControlOutputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetRTControlOutputRequestCodec(),
              new Ros1Dsr_msgsSetRTControlOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetRTControlOutputResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dsr_msgs/SetRefCoord typed call and real-submit client. */
export class Ros1Dsr_msgsSetRefCoordClient extends BoundedServiceClient<Ros1Dsr_msgsSetRefCoordRequest, Ros1Dsr_msgsSetRefCoordResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetRefCoordRequestCodec(),
              new Ros1Dsr_msgsSetRefCoordResponseCodec(),
              (value: Ros1Dsr_msgsSetRefCoordRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRefCoord incoming request/response owner. */
export class Ros1Dsr_msgsSetRefCoordServer extends BoundedServiceServer<Ros1Dsr_msgsSetRefCoordRequest, Ros1Dsr_msgsSetRefCoordResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetRefCoordRequestCodec(),
              new Ros1Dsr_msgsSetRefCoordResponseCodec(),
              (value: Ros1Dsr_msgsSetRefCoordResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotControl typed call and real-submit client. */
export class Ros1Dsr_msgsSetRobotControlClient extends BoundedServiceClient<Ros1Dsr_msgsSetRobotControlRequest, Ros1Dsr_msgsSetRobotControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetRobotControlRequestCodec(),
              new Ros1Dsr_msgsSetRobotControlResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotControlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotControl incoming request/response owner. */
export class Ros1Dsr_msgsSetRobotControlServer extends BoundedServiceServer<Ros1Dsr_msgsSetRobotControlRequest, Ros1Dsr_msgsSetRobotControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetRobotControlRequestCodec(),
              new Ros1Dsr_msgsSetRobotControlResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotControlResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotMode typed call and real-submit client. */
export class Ros1Dsr_msgsSetRobotModeClient extends BoundedServiceClient<Ros1Dsr_msgsSetRobotModeRequest, Ros1Dsr_msgsSetRobotModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetRobotModeRequestCodec(),
              new Ros1Dsr_msgsSetRobotModeResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotModeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotMode incoming request/response owner. */
export class Ros1Dsr_msgsSetRobotModeServer extends BoundedServiceServer<Ros1Dsr_msgsSetRobotModeRequest, Ros1Dsr_msgsSetRobotModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetRobotModeRequestCodec(),
              new Ros1Dsr_msgsSetRobotModeResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotModeResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotSpeedMode typed call and real-submit client. */
export class Ros1Dsr_msgsSetRobotSpeedModeClient extends BoundedServiceClient<Ros1Dsr_msgsSetRobotSpeedModeRequest, Ros1Dsr_msgsSetRobotSpeedModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetRobotSpeedModeRequestCodec(),
              new Ros1Dsr_msgsSetRobotSpeedModeResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotSpeedModeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotSpeedMode incoming request/response owner. */
export class Ros1Dsr_msgsSetRobotSpeedModeServer extends BoundedServiceServer<Ros1Dsr_msgsSetRobotSpeedModeRequest, Ros1Dsr_msgsSetRobotSpeedModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetRobotSpeedModeRequestCodec(),
              new Ros1Dsr_msgsSetRobotSpeedModeResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotSpeedModeResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotSystem typed call and real-submit client. */
export class Ros1Dsr_msgsSetRobotSystemClient extends BoundedServiceClient<Ros1Dsr_msgsSetRobotSystemRequest, Ros1Dsr_msgsSetRobotSystemResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetRobotSystemRequestCodec(),
              new Ros1Dsr_msgsSetRobotSystemResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotSystemRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotSystem incoming request/response owner. */
export class Ros1Dsr_msgsSetRobotSystemServer extends BoundedServiceServer<Ros1Dsr_msgsSetRobotSystemRequest, Ros1Dsr_msgsSetRobotSystemResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetRobotSystemRequestCodec(),
              new Ros1Dsr_msgsSetRobotSystemResponseCodec(),
              (value: Ros1Dsr_msgsSetRobotSystemResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/SetSafeStopResetType typed call and real-submit client. */
export class Ros1Dsr_msgsSetSafeStopResetTypeClient extends
    BoundedServiceClient<Ros1Dsr_msgsSetSafeStopResetTypeRequest, Ros1Dsr_msgsSetSafeStopResetTypeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec(),
              new Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec(),
              (value: Ros1Dsr_msgsSetSafeStopResetTypeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetSafeStopResetType incoming request/response owner. */
export class Ros1Dsr_msgsSetSafeStopResetTypeServer extends
    BoundedServiceServer<Ros1Dsr_msgsSetSafeStopResetTypeRequest, Ros1Dsr_msgsSetSafeStopResetTypeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec(),
              new Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec(),
              (value: Ros1Dsr_msgsSetSafeStopResetTypeResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/SetSafetyMode typed call and real-submit client. */
export class Ros1Dsr_msgsSetSafetyModeClient extends BoundedServiceClient<Ros1Dsr_msgsSetSafetyModeRequest, Ros1Dsr_msgsSetSafetyModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetSafetyModeRequestCodec(),
              new Ros1Dsr_msgsSetSafetyModeResponseCodec(),
              (value: Ros1Dsr_msgsSetSafetyModeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetSafetyMode incoming request/response owner. */
export class Ros1Dsr_msgsSetSafetyModeServer extends BoundedServiceServer<Ros1Dsr_msgsSetSafetyModeRequest, Ros1Dsr_msgsSetSafetyModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetSafetyModeRequestCodec(),
              new Ros1Dsr_msgsSetSafetyModeResponseCodec(),
              (value: Ros1Dsr_msgsSetSafetyModeResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs/SetSingularityHandling typed call and real-submit client. */
export class Ros1Dsr_msgsSetSingularityHandlingClient extends
    BoundedServiceClient<Ros1Dsr_msgsSetSingularityHandlingRequest, Ros1Dsr_msgsSetSingularityHandlingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetSingularityHandlingRequestCodec(),
              new Ros1Dsr_msgsSetSingularityHandlingResponseCodec(),
              (value: Ros1Dsr_msgsSetSingularityHandlingRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetSingularityHandling incoming request/response owner. */
export class Ros1Dsr_msgsSetSingularityHandlingServer extends
    BoundedServiceServer<Ros1Dsr_msgsSetSingularityHandlingRequest, Ros1Dsr_msgsSetSingularityHandlingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetSingularityHandlingRequestCodec(),
              new Ros1Dsr_msgsSetSingularityHandlingResponseCodec(),
              (value: Ros1Dsr_msgsSetSingularityHandlingResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete dsr_msgs/SetStiffnessx typed call and real-submit client. */
export class Ros1Dsr_msgsSetStiffnessxClient extends BoundedServiceClient<Ros1Dsr_msgsSetStiffnessxRequest, Ros1Dsr_msgsSetStiffnessxResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetStiffnessxRequestCodec(),
              new Ros1Dsr_msgsSetStiffnessxResponseCodec(),
              (value: Ros1Dsr_msgsSetStiffnessxRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetStiffnessx incoming request/response owner. */
export class Ros1Dsr_msgsSetStiffnessxServer extends BoundedServiceServer<Ros1Dsr_msgsSetStiffnessxRequest, Ros1Dsr_msgsSetStiffnessxResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetStiffnessxRequestCodec(),
              new Ros1Dsr_msgsSetStiffnessxResponseCodec(),
              (value: Ros1Dsr_msgsSetStiffnessxResponse): bool => value.validValue(),
              57,
              capacity);
    }
}

/** Complete dsr_msgs/SetToolDigitalOutput typed call and real-submit client. */
export class Ros1Dsr_msgsSetToolDigitalOutputClient extends
    BoundedServiceClient<Ros1Dsr_msgsSetToolDigitalOutputRequest, Ros1Dsr_msgsSetToolDigitalOutputResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetToolDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsSetToolDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetToolDigitalOutputRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetToolDigitalOutput incoming request/response owner. */
export class Ros1Dsr_msgsSetToolDigitalOutputServer extends
    BoundedServiceServer<Ros1Dsr_msgsSetToolDigitalOutputRequest, Ros1Dsr_msgsSetToolDigitalOutputResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetToolDigitalOutputRequestCodec(),
              new Ros1Dsr_msgsSetToolDigitalOutputResponseCodec(),
              (value: Ros1Dsr_msgsSetToolDigitalOutputResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete dsr_msgs/SetToolShape typed call and real-submit client. */
export class Ros1Dsr_msgsSetToolShapeClient extends BoundedServiceClient<Ros1Dsr_msgsSetToolShapeRequest, Ros1Dsr_msgsSetToolShapeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetToolShapeRequestCodec(),
              new Ros1Dsr_msgsSetToolShapeResponseCodec(),
              (value: Ros1Dsr_msgsSetToolShapeRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetToolShape incoming request/response owner. */
export class Ros1Dsr_msgsSetToolShapeServer extends BoundedServiceServer<Ros1Dsr_msgsSetToolShapeRequest, Ros1Dsr_msgsSetToolShapeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetToolShapeRequestCodec(),
              new Ros1Dsr_msgsSetToolShapeResponseCodec(),
              (value: Ros1Dsr_msgsSetToolShapeResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord1 typed call and real-submit client. */
export class Ros1Dsr_msgsSetUserCartCoord1Client extends BoundedServiceClient<Ros1Dsr_msgsSetUserCartCoord1Request, Ros1Dsr_msgsSetUserCartCoord1Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetUserCartCoord1RequestCodec(),
              new Ros1Dsr_msgsSetUserCartCoord1ResponseCodec(),
              (value: Ros1Dsr_msgsSetUserCartCoord1Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord1 incoming request/response owner. */
export class Ros1Dsr_msgsSetUserCartCoord1Server extends BoundedServiceServer<Ros1Dsr_msgsSetUserCartCoord1Request, Ros1Dsr_msgsSetUserCartCoord1Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetUserCartCoord1RequestCodec(),
              new Ros1Dsr_msgsSetUserCartCoord1ResponseCodec(),
              (value: Ros1Dsr_msgsSetUserCartCoord1Response): bool => value.validValue(),
              49,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord2 typed call and real-submit client. */
export class Ros1Dsr_msgsSetUserCartCoord2Client extends BoundedServiceClient<Ros1Dsr_msgsSetUserCartCoord2Request, Ros1Dsr_msgsSetUserCartCoord2Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetUserCartCoord2RequestCodec(),
              new Ros1Dsr_msgsSetUserCartCoord2ResponseCodec(),
              (value: Ros1Dsr_msgsSetUserCartCoord2Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord2 incoming request/response owner. */
export class Ros1Dsr_msgsSetUserCartCoord2Server extends BoundedServiceServer<Ros1Dsr_msgsSetUserCartCoord2Request, Ros1Dsr_msgsSetUserCartCoord2Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetUserCartCoord2RequestCodec(),
              new Ros1Dsr_msgsSetUserCartCoord2ResponseCodec(),
              (value: Ros1Dsr_msgsSetUserCartCoord2Response): bool => value.validValue(),
              193,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord3 typed call and real-submit client. */
export class Ros1Dsr_msgsSetUserCartCoord3Client extends BoundedServiceClient<Ros1Dsr_msgsSetUserCartCoord3Request, Ros1Dsr_msgsSetUserCartCoord3Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetUserCartCoord3RequestCodec(),
              new Ros1Dsr_msgsSetUserCartCoord3ResponseCodec(),
              (value: Ros1Dsr_msgsSetUserCartCoord3Request): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord3 incoming request/response owner. */
export class Ros1Dsr_msgsSetUserCartCoord3Server extends BoundedServiceServer<Ros1Dsr_msgsSetUserCartCoord3Request, Ros1Dsr_msgsSetUserCartCoord3Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetUserCartCoord3RequestCodec(),
              new Ros1Dsr_msgsSetUserCartCoord3ResponseCodec(),
              (value: Ros1Dsr_msgsSetUserCartCoord3Response): bool => value.validValue(),
              97,
              capacity);
    }
}

/** Complete dsr_msgs/SetVelJRT typed call and real-submit client. */
export class Ros1Dsr_msgsSetVelJRTClient extends BoundedServiceClient<Ros1Dsr_msgsSetVelJRTRequest, Ros1Dsr_msgsSetVelJRTResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetVelJRTRequestCodec(),
              new Ros1Dsr_msgsSetVelJRTResponseCodec(),
              (value: Ros1Dsr_msgsSetVelJRTRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetVelJRT incoming request/response owner. */
export class Ros1Dsr_msgsSetVelJRTServer extends BoundedServiceServer<Ros1Dsr_msgsSetVelJRTRequest, Ros1Dsr_msgsSetVelJRTResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetVelJRTRequestCodec(),
              new Ros1Dsr_msgsSetVelJRTResponseCodec(),
              (value: Ros1Dsr_msgsSetVelJRTResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dsr_msgs/SetVelXRT typed call and real-submit client. */
export class Ros1Dsr_msgsSetVelXRTClient extends BoundedServiceClient<Ros1Dsr_msgsSetVelXRTRequest, Ros1Dsr_msgsSetVelXRTResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsSetVelXRTRequestCodec(),
              new Ros1Dsr_msgsSetVelXRTResponseCodec(),
              (value: Ros1Dsr_msgsSetVelXRTRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetVelXRT incoming request/response owner. */
export class Ros1Dsr_msgsSetVelXRTServer extends BoundedServiceServer<Ros1Dsr_msgsSetVelXRTRequest, Ros1Dsr_msgsSetVelXRTResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsSetVelXRTRequestCodec(),
              new Ros1Dsr_msgsSetVelXRTResponseCodec(),
              (value: Ros1Dsr_msgsSetVelXRTResponse): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete dsr_msgs/StartRTControl typed call and real-submit client. */
export class Ros1Dsr_msgsStartRTControlClient extends BoundedServiceClient<Ros1Dsr_msgsStartRTControlRequest, Ros1Dsr_msgsStartRTControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsStartRTControlRequestCodec(),
              new Ros1Dsr_msgsStartRTControlResponseCodec(),
              (value: Ros1Dsr_msgsStartRTControlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/StartRTControl incoming request/response owner. */
export class Ros1Dsr_msgsStartRTControlServer extends BoundedServiceServer<Ros1Dsr_msgsStartRTControlRequest, Ros1Dsr_msgsStartRTControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsStartRTControlRequestCodec(),
              new Ros1Dsr_msgsStartRTControlResponseCodec(),
              (value: Ros1Dsr_msgsStartRTControlResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/StopRTControl typed call and real-submit client. */
export class Ros1Dsr_msgsStopRTControlClient extends BoundedServiceClient<Ros1Dsr_msgsStopRTControlRequest, Ros1Dsr_msgsStopRTControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsStopRTControlRequestCodec(),
              new Ros1Dsr_msgsStopRTControlResponseCodec(),
              (value: Ros1Dsr_msgsStopRTControlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/StopRTControl incoming request/response owner. */
export class Ros1Dsr_msgsStopRTControlServer extends BoundedServiceServer<Ros1Dsr_msgsStopRTControlRequest, Ros1Dsr_msgsStopRTControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsStopRTControlRequestCodec(),
              new Ros1Dsr_msgsStopRTControlResponseCodec(),
              (value: Ros1Dsr_msgsStopRTControlResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dsr_msgs/TaskComplianceCtrl typed call and real-submit client. */
export class Ros1Dsr_msgsTaskComplianceCtrlClient extends BoundedServiceClient<Ros1Dsr_msgsTaskComplianceCtrlRequest, Ros1Dsr_msgsTaskComplianceCtrlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsTaskComplianceCtrlRequestCodec(),
              new Ros1Dsr_msgsTaskComplianceCtrlResponseCodec(),
              (value: Ros1Dsr_msgsTaskComplianceCtrlRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/TaskComplianceCtrl incoming request/response owner. */
export class Ros1Dsr_msgsTaskComplianceCtrlServer extends BoundedServiceServer<Ros1Dsr_msgsTaskComplianceCtrlRequest, Ros1Dsr_msgsTaskComplianceCtrlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsTaskComplianceCtrlRequestCodec(),
              new Ros1Dsr_msgsTaskComplianceCtrlResponseCodec(),
              (value: Ros1Dsr_msgsTaskComplianceCtrlResponse): bool => value.validValue(),
              57,
              capacity);
    }
}

/** Complete dsr_msgs/Trans typed call and real-submit client. */
export class Ros1Dsr_msgsTransClient extends BoundedServiceClient<Ros1Dsr_msgsTransRequest, Ros1Dsr_msgsTransResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsTransRequestCodec(),
              new Ros1Dsr_msgsTransResponseCodec(),
              (value: Ros1Dsr_msgsTransRequest): bool => value.validValue(),
              49,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/Trans incoming request/response owner. */
export class Ros1Dsr_msgsTransServer extends BoundedServiceServer<Ros1Dsr_msgsTransRequest, Ros1Dsr_msgsTransResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsTransRequestCodec(),
              new Ros1Dsr_msgsTransResponseCodec(),
              (value: Ros1Dsr_msgsTransResponse): bool => value.validValue(),
              98,
              capacity);
    }
}

/** Complete dsr_msgs/WriteDataRT typed call and real-submit client. */
export class Ros1Dsr_msgsWriteDataRTClient extends BoundedServiceClient<Ros1Dsr_msgsWriteDataRTRequest, Ros1Dsr_msgsWriteDataRTResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Dsr_msgsWriteDataRTRequestCodec(),
              new Ros1Dsr_msgsWriteDataRTResponseCodec(),
              (value: Ros1Dsr_msgsWriteDataRTRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/WriteDataRT incoming request/response owner. */
export class Ros1Dsr_msgsWriteDataRTServer extends BoundedServiceServer<Ros1Dsr_msgsWriteDataRTRequest, Ros1Dsr_msgsWriteDataRTResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Dsr_msgsWriteDataRTRequestCodec(),
              new Ros1Dsr_msgsWriteDataRTResponseCodec(),
              (value: Ros1Dsr_msgsWriteDataRTResponse): bool => value.validValue(),
              152,
              capacity);
    }
}
