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
    Ros1Dobot_v4_bringupAccJRequest,
    Ros1Dobot_v4_bringupAccJRequestCodec,
    Ros1Dobot_v4_bringupAccJResponse,
    Ros1Dobot_v4_bringupAccJResponseCodec,
    Ros1Dobot_v4_bringupAccLRequest,
    Ros1Dobot_v4_bringupAccLRequestCodec,
    Ros1Dobot_v4_bringupAccLResponse,
    Ros1Dobot_v4_bringupAccLResponseCodec,
    Ros1Dobot_v4_bringupAIRequest,
    Ros1Dobot_v4_bringupAIRequestCodec,
    Ros1Dobot_v4_bringupAIResponse,
    Ros1Dobot_v4_bringupAIResponseCodec,
    Ros1Dobot_v4_bringupAOInstantRequest,
    Ros1Dobot_v4_bringupAOInstantRequestCodec,
    Ros1Dobot_v4_bringupAOInstantResponse,
    Ros1Dobot_v4_bringupAOInstantResponseCodec,
    Ros1Dobot_v4_bringupAORequest,
    Ros1Dobot_v4_bringupAORequestCodec,
    Ros1Dobot_v4_bringupAOResponse,
    Ros1Dobot_v4_bringupAOResponseCodec,
    Ros1Dobot_v4_bringupArcRequest,
    Ros1Dobot_v4_bringupArcRequestCodec,
    Ros1Dobot_v4_bringupArcResponse,
    Ros1Dobot_v4_bringupArcResponseCodec,
    Ros1Dobot_v4_bringupBrakeControlRequest,
    Ros1Dobot_v4_bringupBrakeControlRequestCodec,
    Ros1Dobot_v4_bringupBrakeControlResponse,
    Ros1Dobot_v4_bringupBrakeControlResponseCodec,
    Ros1Dobot_v4_bringupCalcToolRequest,
    Ros1Dobot_v4_bringupCalcToolRequestCodec,
    Ros1Dobot_v4_bringupCalcToolResponse,
    Ros1Dobot_v4_bringupCalcToolResponseCodec,
    Ros1Dobot_v4_bringupCalcUserRequest,
    Ros1Dobot_v4_bringupCalcUserRequestCodec,
    Ros1Dobot_v4_bringupCalcUserResponse,
    Ros1Dobot_v4_bringupCalcUserResponseCodec,
    Ros1Dobot_v4_bringupCircleRequest,
    Ros1Dobot_v4_bringupCircleRequestCodec,
    Ros1Dobot_v4_bringupCircleResponse,
    Ros1Dobot_v4_bringupCircleResponseCodec,
    Ros1Dobot_v4_bringupClearErrorRequest,
    Ros1Dobot_v4_bringupClearErrorRequestCodec,
    Ros1Dobot_v4_bringupClearErrorResponse,
    Ros1Dobot_v4_bringupClearErrorResponseCodec,
    Ros1Dobot_v4_bringupContinueRequest,
    Ros1Dobot_v4_bringupContinueRequestCodec,
    Ros1Dobot_v4_bringupContinueResponse,
    Ros1Dobot_v4_bringupContinueResponseCodec,
    Ros1Dobot_v4_bringupCPRequest,
    Ros1Dobot_v4_bringupCPRequestCodec,
    Ros1Dobot_v4_bringupCPResponse,
    Ros1Dobot_v4_bringupCPResponseCodec,
    Ros1Dobot_v4_bringupDIGroupRequest,
    Ros1Dobot_v4_bringupDIGroupRequestCodec,
    Ros1Dobot_v4_bringupDIGroupResponse,
    Ros1Dobot_v4_bringupDIGroupResponseCodec,
    Ros1Dobot_v4_bringupDIRequest,
    Ros1Dobot_v4_bringupDIRequestCodec,
    Ros1Dobot_v4_bringupDIResponse,
    Ros1Dobot_v4_bringupDIResponseCodec,
    Ros1Dobot_v4_bringupDisableRobotRequest,
    Ros1Dobot_v4_bringupDisableRobotRequestCodec,
    Ros1Dobot_v4_bringupDisableRobotResponse,
    Ros1Dobot_v4_bringupDisableRobotResponseCodec,
    Ros1Dobot_v4_bringupDOGroupRequest,
    Ros1Dobot_v4_bringupDOGroupRequestCodec,
    Ros1Dobot_v4_bringupDOGroupResponse,
    Ros1Dobot_v4_bringupDOGroupResponseCodec,
    Ros1Dobot_v4_bringupDOInstantRequest,
    Ros1Dobot_v4_bringupDOInstantRequestCodec,
    Ros1Dobot_v4_bringupDOInstantResponse,
    Ros1Dobot_v4_bringupDOInstantResponseCodec,
    Ros1Dobot_v4_bringupDORequest,
    Ros1Dobot_v4_bringupDORequestCodec,
    Ros1Dobot_v4_bringupDOResponse,
    Ros1Dobot_v4_bringupDOResponseCodec,
    Ros1Dobot_v4_bringupDragSensivityRequest,
    Ros1Dobot_v4_bringupDragSensivityRequestCodec,
    Ros1Dobot_v4_bringupDragSensivityResponse,
    Ros1Dobot_v4_bringupDragSensivityResponseCodec,
    Ros1Dobot_v4_bringupEmergencyStopRequest,
    Ros1Dobot_v4_bringupEmergencyStopRequestCodec,
    Ros1Dobot_v4_bringupEmergencyStopResponse,
    Ros1Dobot_v4_bringupEmergencyStopResponseCodec,
    Ros1Dobot_v4_bringupEnableRobotRequest,
    Ros1Dobot_v4_bringupEnableRobotRequestCodec,
    Ros1Dobot_v4_bringupEnableRobotResponse,
    Ros1Dobot_v4_bringupEnableRobotResponseCodec,
    Ros1Dobot_v4_bringupEnableSafeSkinRequest,
    Ros1Dobot_v4_bringupEnableSafeSkinRequestCodec,
    Ros1Dobot_v4_bringupEnableSafeSkinResponse,
    Ros1Dobot_v4_bringupEnableSafeSkinResponseCodec,
    Ros1Dobot_v4_bringupGetAngleRequest,
    Ros1Dobot_v4_bringupGetAngleRequestCodec,
    Ros1Dobot_v4_bringupGetAngleResponse,
    Ros1Dobot_v4_bringupGetAngleResponseCodec,
    Ros1Dobot_v4_bringupGetAORequest,
    Ros1Dobot_v4_bringupGetAORequestCodec,
    Ros1Dobot_v4_bringupGetAOResponse,
    Ros1Dobot_v4_bringupGetAOResponseCodec,
    Ros1Dobot_v4_bringupGetCoilsRequest,
    Ros1Dobot_v4_bringupGetCoilsRequestCodec,
    Ros1Dobot_v4_bringupGetCoilsResponse,
    Ros1Dobot_v4_bringupGetCoilsResponseCodec,
    Ros1Dobot_v4_bringupGetCurrentCommandIdRequest,
    Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCodec,
    Ros1Dobot_v4_bringupGetCurrentCommandIdResponse,
    Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCodec,
    Ros1Dobot_v4_bringupGetDOGroupRequest,
    Ros1Dobot_v4_bringupGetDOGroupRequestCodec,
    Ros1Dobot_v4_bringupGetDOGroupResponse,
    Ros1Dobot_v4_bringupGetDOGroupResponseCodec,
    Ros1Dobot_v4_bringupGetDORequest,
    Ros1Dobot_v4_bringupGetDORequestCodec,
    Ros1Dobot_v4_bringupGetDOResponse,
    Ros1Dobot_v4_bringupGetDOResponseCodec,
    Ros1Dobot_v4_bringupGetErrorIDRequest,
    Ros1Dobot_v4_bringupGetErrorIDRequestCodec,
    Ros1Dobot_v4_bringupGetErrorIDResponse,
    Ros1Dobot_v4_bringupGetErrorIDResponseCodec,
    Ros1Dobot_v4_bringupGetHoldRegsRequest,
    Ros1Dobot_v4_bringupGetHoldRegsRequestCodec,
    Ros1Dobot_v4_bringupGetHoldRegsResponse,
    Ros1Dobot_v4_bringupGetHoldRegsResponseCodec,
    Ros1Dobot_v4_bringupGetInBitsRequest,
    Ros1Dobot_v4_bringupGetInBitsRequestCodec,
    Ros1Dobot_v4_bringupGetInBitsResponse,
    Ros1Dobot_v4_bringupGetInBitsResponseCodec,
    Ros1Dobot_v4_bringupGetInputBoolRequest,
    Ros1Dobot_v4_bringupGetInputBoolRequestCodec,
    Ros1Dobot_v4_bringupGetInputBoolResponse,
    Ros1Dobot_v4_bringupGetInputBoolResponseCodec,
    Ros1Dobot_v4_bringupGetInputFloatRequest,
    Ros1Dobot_v4_bringupGetInputFloatRequestCodec,
    Ros1Dobot_v4_bringupGetInputFloatResponse,
    Ros1Dobot_v4_bringupGetInputFloatResponseCodec,
    Ros1Dobot_v4_bringupGetInputIntRequest,
    Ros1Dobot_v4_bringupGetInputIntRequestCodec,
    Ros1Dobot_v4_bringupGetInputIntResponse,
    Ros1Dobot_v4_bringupGetInputIntResponseCodec,
    Ros1Dobot_v4_bringupGetInRegsRequest,
    Ros1Dobot_v4_bringupGetInRegsRequestCodec,
    Ros1Dobot_v4_bringupGetInRegsResponse,
    Ros1Dobot_v4_bringupGetInRegsResponseCodec,
    Ros1Dobot_v4_bringupGetOutputBoolRequest,
    Ros1Dobot_v4_bringupGetOutputBoolRequestCodec,
    Ros1Dobot_v4_bringupGetOutputBoolResponse,
    Ros1Dobot_v4_bringupGetOutputBoolResponseCodec,
    Ros1Dobot_v4_bringupGetOutputFloatRequest,
    Ros1Dobot_v4_bringupGetOutputFloatRequestCodec,
    Ros1Dobot_v4_bringupGetOutputFloatResponse,
    Ros1Dobot_v4_bringupGetOutputFloatResponseCodec,
    Ros1Dobot_v4_bringupGetOutputIntRequest,
    Ros1Dobot_v4_bringupGetOutputIntRequestCodec,
    Ros1Dobot_v4_bringupGetOutputIntResponse,
    Ros1Dobot_v4_bringupGetOutputIntResponseCodec,
    Ros1Dobot_v4_bringupGetPoseRequest,
    Ros1Dobot_v4_bringupGetPoseRequestCodec,
    Ros1Dobot_v4_bringupGetPoseResponse,
    Ros1Dobot_v4_bringupGetPoseResponseCodec,
    Ros1Dobot_v4_bringupGetStartPoseRequest,
    Ros1Dobot_v4_bringupGetStartPoseRequestCodec,
    Ros1Dobot_v4_bringupGetStartPoseResponse,
    Ros1Dobot_v4_bringupGetStartPoseResponseCodec,
    Ros1Dobot_v4_bringupInverseKinRequest,
    Ros1Dobot_v4_bringupInverseKinRequestCodec,
    Ros1Dobot_v4_bringupInverseKinResponse,
    Ros1Dobot_v4_bringupInverseKinResponseCodec,
    Ros1Dobot_v4_bringupInverseSolutionRequest,
    Ros1Dobot_v4_bringupInverseSolutionRequestCodec,
    Ros1Dobot_v4_bringupInverseSolutionResponse,
    Ros1Dobot_v4_bringupInverseSolutionResponseCodec,
    Ros1Dobot_v4_bringupModbusCloseRequest,
    Ros1Dobot_v4_bringupModbusCloseRequestCodec,
    Ros1Dobot_v4_bringupModbusCloseResponse,
    Ros1Dobot_v4_bringupModbusCloseResponseCodec,
    Ros1Dobot_v4_bringupModbusCreateRequest,
    Ros1Dobot_v4_bringupModbusCreateRequestCodec,
    Ros1Dobot_v4_bringupModbusCreateResponse,
    Ros1Dobot_v4_bringupModbusCreateResponseCodec,
    Ros1Dobot_v4_bringupModbusRTUCreateRequest,
    Ros1Dobot_v4_bringupModbusRTUCreateRequestCodec,
    Ros1Dobot_v4_bringupModbusRTUCreateResponse,
    Ros1Dobot_v4_bringupModbusRTUCreateResponseCodec,
    Ros1Dobot_v4_bringupMoveJogRequest,
    Ros1Dobot_v4_bringupMoveJogRequestCodec,
    Ros1Dobot_v4_bringupMoveJogResponse,
    Ros1Dobot_v4_bringupMoveJogResponseCodec,
    Ros1Dobot_v4_bringupMovJIORequest,
    Ros1Dobot_v4_bringupMovJIORequestCodec,
    Ros1Dobot_v4_bringupMovJIOResponse,
    Ros1Dobot_v4_bringupMovJIOResponseCodec,
    Ros1Dobot_v4_bringupMovJRequest,
    Ros1Dobot_v4_bringupMovJRequestCodec,
    Ros1Dobot_v4_bringupMovJResponse,
    Ros1Dobot_v4_bringupMovJResponseCodec,
    Ros1Dobot_v4_bringupMovLIORequest,
    Ros1Dobot_v4_bringupMovLIORequestCodec,
    Ros1Dobot_v4_bringupMovLIOResponse,
    Ros1Dobot_v4_bringupMovLIOResponseCodec,
    Ros1Dobot_v4_bringupMovLRequest,
    Ros1Dobot_v4_bringupMovLRequestCodec,
    Ros1Dobot_v4_bringupMovLResponse,
    Ros1Dobot_v4_bringupMovLResponseCodec,
    Ros1Dobot_v4_bringupPauseRequest,
    Ros1Dobot_v4_bringupPauseRequestCodec,
    Ros1Dobot_v4_bringupPauseResponse,
    Ros1Dobot_v4_bringupPauseResponseCodec,
    Ros1Dobot_v4_bringupPositiveKinRequest,
    Ros1Dobot_v4_bringupPositiveKinRequestCodec,
    Ros1Dobot_v4_bringupPositiveKinResponse,
    Ros1Dobot_v4_bringupPositiveKinResponseCodec,
    Ros1Dobot_v4_bringupPowerOnRequest,
    Ros1Dobot_v4_bringupPowerOnRequestCodec,
    Ros1Dobot_v4_bringupPowerOnResponse,
    Ros1Dobot_v4_bringupPowerOnResponseCodec,
    Ros1Dobot_v4_bringupRelJointMovJRequest,
    Ros1Dobot_v4_bringupRelJointMovJRequestCodec,
    Ros1Dobot_v4_bringupRelJointMovJResponse,
    Ros1Dobot_v4_bringupRelJointMovJResponseCodec,
    Ros1Dobot_v4_bringupRelMovJToolRequest,
    Ros1Dobot_v4_bringupRelMovJToolRequestCodec,
    Ros1Dobot_v4_bringupRelMovJToolResponse,
    Ros1Dobot_v4_bringupRelMovJToolResponseCodec,
    Ros1Dobot_v4_bringupRelMovJUserRequest,
    Ros1Dobot_v4_bringupRelMovJUserRequestCodec,
    Ros1Dobot_v4_bringupRelMovJUserResponse,
    Ros1Dobot_v4_bringupRelMovJUserResponseCodec,
    Ros1Dobot_v4_bringupRelMovLToolRequest,
    Ros1Dobot_v4_bringupRelMovLToolRequestCodec,
    Ros1Dobot_v4_bringupRelMovLToolResponse,
    Ros1Dobot_v4_bringupRelMovLToolResponseCodec,
    Ros1Dobot_v4_bringupRelMovLUserRequest,
    Ros1Dobot_v4_bringupRelMovLUserRequestCodec,
    Ros1Dobot_v4_bringupRelMovLUserResponse,
    Ros1Dobot_v4_bringupRelMovLUserResponseCodec,
    Ros1Dobot_v4_bringupRobotModeRequest,
    Ros1Dobot_v4_bringupRobotModeRequestCodec,
    Ros1Dobot_v4_bringupRobotModeResponse,
    Ros1Dobot_v4_bringupRobotModeResponseCodec,
    Ros1Dobot_v4_bringupRunScriptRequest,
    Ros1Dobot_v4_bringupRunScriptRequestCodec,
    Ros1Dobot_v4_bringupRunScriptResponse,
    Ros1Dobot_v4_bringupRunScriptResponseCodec,
    Ros1Dobot_v4_bringupServoJRequest,
    Ros1Dobot_v4_bringupServoJRequestCodec,
    Ros1Dobot_v4_bringupServoJResponse,
    Ros1Dobot_v4_bringupServoJResponseCodec,
    Ros1Dobot_v4_bringupServoPRequest,
    Ros1Dobot_v4_bringupServoPRequestCodec,
    Ros1Dobot_v4_bringupServoPResponse,
    Ros1Dobot_v4_bringupServoPResponseCodec,
    Ros1Dobot_v4_bringupSetBackDistanceRequest,
    Ros1Dobot_v4_bringupSetBackDistanceRequestCodec,
    Ros1Dobot_v4_bringupSetBackDistanceResponse,
    Ros1Dobot_v4_bringupSetBackDistanceResponseCodec,
    Ros1Dobot_v4_bringupSetCoilsRequest,
    Ros1Dobot_v4_bringupSetCoilsRequestCodec,
    Ros1Dobot_v4_bringupSetCoilsResponse,
    Ros1Dobot_v4_bringupSetCoilsResponseCodec,
    Ros1Dobot_v4_bringupSetCollisionLevelRequest,
    Ros1Dobot_v4_bringupSetCollisionLevelRequestCodec,
    Ros1Dobot_v4_bringupSetCollisionLevelResponse,
    Ros1Dobot_v4_bringupSetCollisionLevelResponseCodec,
    Ros1Dobot_v4_bringupSetHoldRegsRequest,
    Ros1Dobot_v4_bringupSetHoldRegsRequestCodec,
    Ros1Dobot_v4_bringupSetHoldRegsResponse,
    Ros1Dobot_v4_bringupSetHoldRegsResponseCodec,
    Ros1Dobot_v4_bringupSetOutputBoolRequest,
    Ros1Dobot_v4_bringupSetOutputBoolRequestCodec,
    Ros1Dobot_v4_bringupSetOutputBoolResponse,
    Ros1Dobot_v4_bringupSetOutputBoolResponseCodec,
    Ros1Dobot_v4_bringupSetOutputFloatRequest,
    Ros1Dobot_v4_bringupSetOutputFloatRequestCodec,
    Ros1Dobot_v4_bringupSetOutputFloatResponse,
    Ros1Dobot_v4_bringupSetOutputFloatResponseCodec,
    Ros1Dobot_v4_bringupSetOutputIntRequest,
    Ros1Dobot_v4_bringupSetOutputIntRequestCodec,
    Ros1Dobot_v4_bringupSetOutputIntResponse,
    Ros1Dobot_v4_bringupSetOutputIntResponseCodec,
    Ros1Dobot_v4_bringupSetPayloadRequest,
    Ros1Dobot_v4_bringupSetPayloadRequestCodec,
    Ros1Dobot_v4_bringupSetPayloadResponse,
    Ros1Dobot_v4_bringupSetPayloadResponseCodec,
    Ros1Dobot_v4_bringupSetPostCollisionModeRequest,
    Ros1Dobot_v4_bringupSetPostCollisionModeRequestCodec,
    Ros1Dobot_v4_bringupSetPostCollisionModeResponse,
    Ros1Dobot_v4_bringupSetPostCollisionModeResponseCodec,
    Ros1Dobot_v4_bringupSetSafeSkinRequest,
    Ros1Dobot_v4_bringupSetSafeSkinRequestCodec,
    Ros1Dobot_v4_bringupSetSafeSkinResponse,
    Ros1Dobot_v4_bringupSetSafeSkinResponseCodec,
    Ros1Dobot_v4_bringupSetSafeWallEnableRequest,
    Ros1Dobot_v4_bringupSetSafeWallEnableRequestCodec,
    Ros1Dobot_v4_bringupSetSafeWallEnableResponse,
    Ros1Dobot_v4_bringupSetSafeWallEnableResponseCodec,
    Ros1Dobot_v4_bringupSetTool485Request,
    Ros1Dobot_v4_bringupSetTool485RequestCodec,
    Ros1Dobot_v4_bringupSetTool485Response,
    Ros1Dobot_v4_bringupSetTool485ResponseCodec,
    Ros1Dobot_v4_bringupSetToolModeRequest,
    Ros1Dobot_v4_bringupSetToolModeRequestCodec,
    Ros1Dobot_v4_bringupSetToolModeResponse,
    Ros1Dobot_v4_bringupSetToolModeResponseCodec,
    Ros1Dobot_v4_bringupSetToolPowerRequest,
    Ros1Dobot_v4_bringupSetToolPowerRequestCodec,
    Ros1Dobot_v4_bringupSetToolPowerResponse,
    Ros1Dobot_v4_bringupSetToolPowerResponseCodec,
    Ros1Dobot_v4_bringupSetToolRequest,
    Ros1Dobot_v4_bringupSetToolRequestCodec,
    Ros1Dobot_v4_bringupSetToolResponse,
    Ros1Dobot_v4_bringupSetToolResponseCodec,
    Ros1Dobot_v4_bringupSetUserRequest,
    Ros1Dobot_v4_bringupSetUserRequestCodec,
    Ros1Dobot_v4_bringupSetUserResponse,
    Ros1Dobot_v4_bringupSetUserResponseCodec,
    Ros1Dobot_v4_bringupSpeedFactorRequest,
    Ros1Dobot_v4_bringupSpeedFactorRequestCodec,
    Ros1Dobot_v4_bringupSpeedFactorResponse,
    Ros1Dobot_v4_bringupSpeedFactorResponseCodec,
    Ros1Dobot_v4_bringupStartDragRequest,
    Ros1Dobot_v4_bringupStartDragRequestCodec,
    Ros1Dobot_v4_bringupStartDragResponse,
    Ros1Dobot_v4_bringupStartDragResponseCodec,
    Ros1Dobot_v4_bringupStartPathRequest,
    Ros1Dobot_v4_bringupStartPathRequestCodec,
    Ros1Dobot_v4_bringupStartPathResponse,
    Ros1Dobot_v4_bringupStartPathResponseCodec,
    Ros1Dobot_v4_bringupStopDragRequest,
    Ros1Dobot_v4_bringupStopDragRequestCodec,
    Ros1Dobot_v4_bringupStopDragResponse,
    Ros1Dobot_v4_bringupStopDragResponseCodec,
    Ros1Dobot_v4_bringupStopMoveJogRequest,
    Ros1Dobot_v4_bringupStopMoveJogRequestCodec,
    Ros1Dobot_v4_bringupStopMoveJogResponse,
    Ros1Dobot_v4_bringupStopMoveJogResponseCodec,
    Ros1Dobot_v4_bringupStopRequest,
    Ros1Dobot_v4_bringupStopRequestCodec,
    Ros1Dobot_v4_bringupStopResponse,
    Ros1Dobot_v4_bringupStopResponseCodec,
    Ros1Dobot_v4_bringupTcpDashboardRequest,
    Ros1Dobot_v4_bringupTcpDashboardRequestCodec,
    Ros1Dobot_v4_bringupTcpDashboardResponse,
    Ros1Dobot_v4_bringupTcpDashboardResponseCodec,
    Ros1Dobot_v4_bringupToolAIRequest,
    Ros1Dobot_v4_bringupToolAIRequestCodec,
    Ros1Dobot_v4_bringupToolAIResponse,
    Ros1Dobot_v4_bringupToolAIResponseCodec,
    Ros1Dobot_v4_bringupToolDIRequest,
    Ros1Dobot_v4_bringupToolDIRequestCodec,
    Ros1Dobot_v4_bringupToolDIResponse,
    Ros1Dobot_v4_bringupToolDIResponseCodec,
    Ros1Dobot_v4_bringupToolDOInstantRequest,
    Ros1Dobot_v4_bringupToolDOInstantRequestCodec,
    Ros1Dobot_v4_bringupToolDOInstantResponse,
    Ros1Dobot_v4_bringupToolDOInstantResponseCodec,
    Ros1Dobot_v4_bringupToolDORequest,
    Ros1Dobot_v4_bringupToolDORequestCodec,
    Ros1Dobot_v4_bringupToolDOResponse,
    Ros1Dobot_v4_bringupToolDOResponseCodec,
    Ros1Dobot_v4_bringupToolRequest,
    Ros1Dobot_v4_bringupToolRequestCodec,
    Ros1Dobot_v4_bringupToolResponse,
    Ros1Dobot_v4_bringupToolResponseCodec,
    Ros1Dobot_v4_bringupUserRequest,
    Ros1Dobot_v4_bringupUserRequestCodec,
    Ros1Dobot_v4_bringupUserResponse,
    Ros1Dobot_v4_bringupUserResponseCodec,
    Ros1Dobot_v4_bringupVelJRequest,
    Ros1Dobot_v4_bringupVelJRequestCodec,
    Ros1Dobot_v4_bringupVelJResponse,
    Ros1Dobot_v4_bringupVelJResponseCodec,
    Ros1Dobot_v4_bringupVelLRequest,
    Ros1Dobot_v4_bringupVelLRequestCodec,
    Ros1Dobot_v4_bringupVelLResponse,
    Ros1Dobot_v4_bringupVelLResponseCodec
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

/** Complete dobot_v4_bringup/AI typed call and real-submit client. */
export class Ros1Dobot_v4_bringupAIClient extends BoundedServiceClient<Ros1Dobot_v4_bringupAIRequest, Ros1Dobot_v4_bringupAIResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupAIRequestCodec(),
              new Ros1Dobot_v4_bringupAIResponseCodec(),
              (value: Ros1Dobot_v4_bringupAIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AI incoming request/response owner. */
export class Ros1Dobot_v4_bringupAIServer extends BoundedServiceServer<Ros1Dobot_v4_bringupAIRequest, Ros1Dobot_v4_bringupAIResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupAIRequestCodec(),
              new Ros1Dobot_v4_bringupAIResponseCodec(),
              (value: Ros1Dobot_v4_bringupAIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AO typed call and real-submit client. */
export class Ros1Dobot_v4_bringupAOClient extends BoundedServiceClient<Ros1Dobot_v4_bringupAORequest, Ros1Dobot_v4_bringupAOResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupAORequestCodec(),
              new Ros1Dobot_v4_bringupAOResponseCodec(),
              (value: Ros1Dobot_v4_bringupAORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AO incoming request/response owner. */
export class Ros1Dobot_v4_bringupAOServer extends BoundedServiceServer<Ros1Dobot_v4_bringupAORequest, Ros1Dobot_v4_bringupAOResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupAORequestCodec(),
              new Ros1Dobot_v4_bringupAOResponseCodec(),
              (value: Ros1Dobot_v4_bringupAOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AOInstant typed call and real-submit client. */
export class Ros1Dobot_v4_bringupAOInstantClient extends BoundedServiceClient<Ros1Dobot_v4_bringupAOInstantRequest, Ros1Dobot_v4_bringupAOInstantResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupAOInstantRequestCodec(),
              new Ros1Dobot_v4_bringupAOInstantResponseCodec(),
              (value: Ros1Dobot_v4_bringupAOInstantRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AOInstant incoming request/response owner. */
export class Ros1Dobot_v4_bringupAOInstantServer extends BoundedServiceServer<Ros1Dobot_v4_bringupAOInstantRequest, Ros1Dobot_v4_bringupAOInstantResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupAOInstantRequestCodec(),
              new Ros1Dobot_v4_bringupAOInstantResponseCodec(),
              (value: Ros1Dobot_v4_bringupAOInstantResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AccJ typed call and real-submit client. */
export class Ros1Dobot_v4_bringupAccJClient extends BoundedServiceClient<Ros1Dobot_v4_bringupAccJRequest, Ros1Dobot_v4_bringupAccJResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupAccJRequestCodec(),
              new Ros1Dobot_v4_bringupAccJResponseCodec(),
              (value: Ros1Dobot_v4_bringupAccJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AccJ incoming request/response owner. */
export class Ros1Dobot_v4_bringupAccJServer extends BoundedServiceServer<Ros1Dobot_v4_bringupAccJRequest, Ros1Dobot_v4_bringupAccJResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupAccJRequestCodec(),
              new Ros1Dobot_v4_bringupAccJResponseCodec(),
              (value: Ros1Dobot_v4_bringupAccJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AccL typed call and real-submit client. */
export class Ros1Dobot_v4_bringupAccLClient extends BoundedServiceClient<Ros1Dobot_v4_bringupAccLRequest, Ros1Dobot_v4_bringupAccLResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupAccLRequestCodec(),
              new Ros1Dobot_v4_bringupAccLResponseCodec(),
              (value: Ros1Dobot_v4_bringupAccLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AccL incoming request/response owner. */
export class Ros1Dobot_v4_bringupAccLServer extends BoundedServiceServer<Ros1Dobot_v4_bringupAccLRequest, Ros1Dobot_v4_bringupAccLResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupAccLRequestCodec(),
              new Ros1Dobot_v4_bringupAccLResponseCodec(),
              (value: Ros1Dobot_v4_bringupAccLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Arc typed call and real-submit client. */
export class Ros1Dobot_v4_bringupArcClient extends BoundedServiceClient<Ros1Dobot_v4_bringupArcRequest, Ros1Dobot_v4_bringupArcResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupArcRequestCodec(),
              new Ros1Dobot_v4_bringupArcResponseCodec(),
              (value: Ros1Dobot_v4_bringupArcRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Arc incoming request/response owner. */
export class Ros1Dobot_v4_bringupArcServer extends BoundedServiceServer<Ros1Dobot_v4_bringupArcRequest, Ros1Dobot_v4_bringupArcResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupArcRequestCodec(),
              new Ros1Dobot_v4_bringupArcResponseCodec(),
              (value: Ros1Dobot_v4_bringupArcResponse): bool => value.validValue(),
              4261,
              capacity);
    }
}

/** Complete dobot_v4_bringup/BrakeControl typed call and real-submit client. */
export class Ros1Dobot_v4_bringupBrakeControlClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupBrakeControlRequest, Ros1Dobot_v4_bringupBrakeControlResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupBrakeControlRequestCodec(),
              new Ros1Dobot_v4_bringupBrakeControlResponseCodec(),
              (value: Ros1Dobot_v4_bringupBrakeControlRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/BrakeControl incoming request/response owner. */
export class Ros1Dobot_v4_bringupBrakeControlServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupBrakeControlRequest, Ros1Dobot_v4_bringupBrakeControlResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupBrakeControlRequestCodec(),
              new Ros1Dobot_v4_bringupBrakeControlResponseCodec(),
              (value: Ros1Dobot_v4_bringupBrakeControlResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CP typed call and real-submit client. */
export class Ros1Dobot_v4_bringupCPClient extends BoundedServiceClient<Ros1Dobot_v4_bringupCPRequest, Ros1Dobot_v4_bringupCPResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupCPRequestCodec(),
              new Ros1Dobot_v4_bringupCPResponseCodec(),
              (value: Ros1Dobot_v4_bringupCPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CP incoming request/response owner. */
export class Ros1Dobot_v4_bringupCPServer extends BoundedServiceServer<Ros1Dobot_v4_bringupCPRequest, Ros1Dobot_v4_bringupCPResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupCPRequestCodec(),
              new Ros1Dobot_v4_bringupCPResponseCodec(),
              (value: Ros1Dobot_v4_bringupCPResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CalcTool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupCalcToolClient extends BoundedServiceClient<Ros1Dobot_v4_bringupCalcToolRequest, Ros1Dobot_v4_bringupCalcToolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupCalcToolRequestCodec(),
              new Ros1Dobot_v4_bringupCalcToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupCalcToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CalcTool incoming request/response owner. */
export class Ros1Dobot_v4_bringupCalcToolServer extends BoundedServiceServer<Ros1Dobot_v4_bringupCalcToolRequest, Ros1Dobot_v4_bringupCalcToolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupCalcToolRequestCodec(),
              new Ros1Dobot_v4_bringupCalcToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupCalcToolResponse): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CalcUser typed call and real-submit client. */
export class Ros1Dobot_v4_bringupCalcUserClient extends BoundedServiceClient<Ros1Dobot_v4_bringupCalcUserRequest, Ros1Dobot_v4_bringupCalcUserResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupCalcUserRequestCodec(),
              new Ros1Dobot_v4_bringupCalcUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupCalcUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CalcUser incoming request/response owner. */
export class Ros1Dobot_v4_bringupCalcUserServer extends BoundedServiceServer<Ros1Dobot_v4_bringupCalcUserRequest, Ros1Dobot_v4_bringupCalcUserResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupCalcUserRequestCodec(),
              new Ros1Dobot_v4_bringupCalcUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupCalcUserResponse): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Circle typed call and real-submit client. */
export class Ros1Dobot_v4_bringupCircleClient extends BoundedServiceClient<Ros1Dobot_v4_bringupCircleRequest, Ros1Dobot_v4_bringupCircleResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupCircleRequestCodec(),
              new Ros1Dobot_v4_bringupCircleResponseCodec(),
              (value: Ros1Dobot_v4_bringupCircleRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Circle incoming request/response owner. */
export class Ros1Dobot_v4_bringupCircleServer extends BoundedServiceServer<Ros1Dobot_v4_bringupCircleRequest, Ros1Dobot_v4_bringupCircleResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupCircleRequestCodec(),
              new Ros1Dobot_v4_bringupCircleResponseCodec(),
              (value: Ros1Dobot_v4_bringupCircleResponse): bool => value.validValue(),
              4265,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ClearError typed call and real-submit client. */
export class Ros1Dobot_v4_bringupClearErrorClient extends BoundedServiceClient<Ros1Dobot_v4_bringupClearErrorRequest, Ros1Dobot_v4_bringupClearErrorResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupClearErrorRequestCodec(),
              new Ros1Dobot_v4_bringupClearErrorResponseCodec(),
              (value: Ros1Dobot_v4_bringupClearErrorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ClearError incoming request/response owner. */
export class Ros1Dobot_v4_bringupClearErrorServer extends BoundedServiceServer<Ros1Dobot_v4_bringupClearErrorRequest, Ros1Dobot_v4_bringupClearErrorResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupClearErrorRequestCodec(),
              new Ros1Dobot_v4_bringupClearErrorResponseCodec(),
              (value: Ros1Dobot_v4_bringupClearErrorResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Continue typed call and real-submit client. */
export class Ros1Dobot_v4_bringupContinueClient extends BoundedServiceClient<Ros1Dobot_v4_bringupContinueRequest, Ros1Dobot_v4_bringupContinueResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupContinueRequestCodec(),
              new Ros1Dobot_v4_bringupContinueResponseCodec(),
              (value: Ros1Dobot_v4_bringupContinueRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Continue incoming request/response owner. */
export class Ros1Dobot_v4_bringupContinueServer extends BoundedServiceServer<Ros1Dobot_v4_bringupContinueRequest, Ros1Dobot_v4_bringupContinueResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupContinueRequestCodec(),
              new Ros1Dobot_v4_bringupContinueResponseCodec(),
              (value: Ros1Dobot_v4_bringupContinueResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DI typed call and real-submit client. */
export class Ros1Dobot_v4_bringupDIClient extends BoundedServiceClient<Ros1Dobot_v4_bringupDIRequest, Ros1Dobot_v4_bringupDIResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupDIRequestCodec(),
              new Ros1Dobot_v4_bringupDIResponseCodec(),
              (value: Ros1Dobot_v4_bringupDIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DI incoming request/response owner. */
export class Ros1Dobot_v4_bringupDIServer extends BoundedServiceServer<Ros1Dobot_v4_bringupDIRequest, Ros1Dobot_v4_bringupDIResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupDIRequestCodec(),
              new Ros1Dobot_v4_bringupDIResponseCodec(),
              (value: Ros1Dobot_v4_bringupDIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DIGroup typed call and real-submit client. */
export class Ros1Dobot_v4_bringupDIGroupClient extends BoundedServiceClient<Ros1Dobot_v4_bringupDIGroupRequest, Ros1Dobot_v4_bringupDIGroupResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupDIGroupRequestCodec(),
              new Ros1Dobot_v4_bringupDIGroupResponseCodec(),
              (value: Ros1Dobot_v4_bringupDIGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DIGroup incoming request/response owner. */
export class Ros1Dobot_v4_bringupDIGroupServer extends BoundedServiceServer<Ros1Dobot_v4_bringupDIGroupRequest, Ros1Dobot_v4_bringupDIGroupResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupDIGroupRequestCodec(),
              new Ros1Dobot_v4_bringupDIGroupResponseCodec(),
              (value: Ros1Dobot_v4_bringupDIGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DO typed call and real-submit client. */
export class Ros1Dobot_v4_bringupDOClient extends BoundedServiceClient<Ros1Dobot_v4_bringupDORequest, Ros1Dobot_v4_bringupDOResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupDORequestCodec(),
              new Ros1Dobot_v4_bringupDOResponseCodec(),
              (value: Ros1Dobot_v4_bringupDORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DO incoming request/response owner. */
export class Ros1Dobot_v4_bringupDOServer extends BoundedServiceServer<Ros1Dobot_v4_bringupDORequest, Ros1Dobot_v4_bringupDOResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupDORequestCodec(),
              new Ros1Dobot_v4_bringupDOResponseCodec(),
              (value: Ros1Dobot_v4_bringupDOResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DOGroup typed call and real-submit client. */
export class Ros1Dobot_v4_bringupDOGroupClient extends BoundedServiceClient<Ros1Dobot_v4_bringupDOGroupRequest, Ros1Dobot_v4_bringupDOGroupResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupDOGroupRequestCodec(),
              new Ros1Dobot_v4_bringupDOGroupResponseCodec(),
              (value: Ros1Dobot_v4_bringupDOGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DOGroup incoming request/response owner. */
export class Ros1Dobot_v4_bringupDOGroupServer extends BoundedServiceServer<Ros1Dobot_v4_bringupDOGroupRequest, Ros1Dobot_v4_bringupDOGroupResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupDOGroupRequestCodec(),
              new Ros1Dobot_v4_bringupDOGroupResponseCodec(),
              (value: Ros1Dobot_v4_bringupDOGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DOInstant typed call and real-submit client. */
export class Ros1Dobot_v4_bringupDOInstantClient extends BoundedServiceClient<Ros1Dobot_v4_bringupDOInstantRequest, Ros1Dobot_v4_bringupDOInstantResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupDOInstantRequestCodec(),
              new Ros1Dobot_v4_bringupDOInstantResponseCodec(),
              (value: Ros1Dobot_v4_bringupDOInstantRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DOInstant incoming request/response owner. */
export class Ros1Dobot_v4_bringupDOInstantServer extends BoundedServiceServer<Ros1Dobot_v4_bringupDOInstantRequest, Ros1Dobot_v4_bringupDOInstantResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupDOInstantRequestCodec(),
              new Ros1Dobot_v4_bringupDOInstantResponseCodec(),
              (value: Ros1Dobot_v4_bringupDOInstantResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DisableRobot typed call and real-submit client. */
export class Ros1Dobot_v4_bringupDisableRobotClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupDisableRobotRequest, Ros1Dobot_v4_bringupDisableRobotResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupDisableRobotRequestCodec(),
              new Ros1Dobot_v4_bringupDisableRobotResponseCodec(),
              (value: Ros1Dobot_v4_bringupDisableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DisableRobot incoming request/response owner. */
export class Ros1Dobot_v4_bringupDisableRobotServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupDisableRobotRequest, Ros1Dobot_v4_bringupDisableRobotResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupDisableRobotRequestCodec(),
              new Ros1Dobot_v4_bringupDisableRobotResponseCodec(),
              (value: Ros1Dobot_v4_bringupDisableRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DragSensivity typed call and real-submit client. */
export class Ros1Dobot_v4_bringupDragSensivityClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupDragSensivityRequest, Ros1Dobot_v4_bringupDragSensivityResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupDragSensivityRequestCodec(),
              new Ros1Dobot_v4_bringupDragSensivityResponseCodec(),
              (value: Ros1Dobot_v4_bringupDragSensivityRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DragSensivity incoming request/response owner. */
export class Ros1Dobot_v4_bringupDragSensivityServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupDragSensivityRequest, Ros1Dobot_v4_bringupDragSensivityResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupDragSensivityRequestCodec(),
              new Ros1Dobot_v4_bringupDragSensivityResponseCodec(),
              (value: Ros1Dobot_v4_bringupDragSensivityResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EmergencyStop typed call and real-submit client. */
export class Ros1Dobot_v4_bringupEmergencyStopClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupEmergencyStopRequest, Ros1Dobot_v4_bringupEmergencyStopResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupEmergencyStopRequestCodec(),
              new Ros1Dobot_v4_bringupEmergencyStopResponseCodec(),
              (value: Ros1Dobot_v4_bringupEmergencyStopRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EmergencyStop incoming request/response owner. */
export class Ros1Dobot_v4_bringupEmergencyStopServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupEmergencyStopRequest, Ros1Dobot_v4_bringupEmergencyStopResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupEmergencyStopRequestCodec(),
              new Ros1Dobot_v4_bringupEmergencyStopResponseCodec(),
              (value: Ros1Dobot_v4_bringupEmergencyStopResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableRobot typed call and real-submit client. */
export class Ros1Dobot_v4_bringupEnableRobotClient extends BoundedServiceClient<Ros1Dobot_v4_bringupEnableRobotRequest, Ros1Dobot_v4_bringupEnableRobotResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupEnableRobotRequestCodec(),
              new Ros1Dobot_v4_bringupEnableRobotResponseCodec(),
              (value: Ros1Dobot_v4_bringupEnableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableRobot incoming request/response owner. */
export class Ros1Dobot_v4_bringupEnableRobotServer extends BoundedServiceServer<Ros1Dobot_v4_bringupEnableRobotRequest, Ros1Dobot_v4_bringupEnableRobotResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupEnableRobotRequestCodec(),
              new Ros1Dobot_v4_bringupEnableRobotResponseCodec(),
              (value: Ros1Dobot_v4_bringupEnableRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableSafeSkin typed call and real-submit client. */
export class Ros1Dobot_v4_bringupEnableSafeSkinClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupEnableSafeSkinRequest, Ros1Dobot_v4_bringupEnableSafeSkinResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupEnableSafeSkinRequestCodec(),
              new Ros1Dobot_v4_bringupEnableSafeSkinResponseCodec(),
              (value: Ros1Dobot_v4_bringupEnableSafeSkinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableSafeSkin incoming request/response owner. */
export class Ros1Dobot_v4_bringupEnableSafeSkinServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupEnableSafeSkinRequest, Ros1Dobot_v4_bringupEnableSafeSkinResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupEnableSafeSkinRequestCodec(),
              new Ros1Dobot_v4_bringupEnableSafeSkinResponseCodec(),
              (value: Ros1Dobot_v4_bringupEnableSafeSkinResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetAO typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetAOClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetAORequest, Ros1Dobot_v4_bringupGetAOResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetAORequestCodec(),
              new Ros1Dobot_v4_bringupGetAOResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetAORequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetAO incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetAOServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetAORequest, Ros1Dobot_v4_bringupGetAOResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetAORequestCodec(),
              new Ros1Dobot_v4_bringupGetAOResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetAOResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetAngle typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetAngleClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetAngleRequest, Ros1Dobot_v4_bringupGetAngleResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetAngleRequestCodec(),
              new Ros1Dobot_v4_bringupGetAngleResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetAngleRequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetAngle incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetAngleServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetAngleRequest, Ros1Dobot_v4_bringupGetAngleResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetAngleRequestCodec(),
              new Ros1Dobot_v4_bringupGetAngleResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetAngleResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetCoils typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetCoilsClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetCoilsRequest, Ros1Dobot_v4_bringupGetCoilsResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetCoilsRequestCodec(),
              new Ros1Dobot_v4_bringupGetCoilsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetCoils incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetCoilsServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetCoilsRequest, Ros1Dobot_v4_bringupGetCoilsResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetCoilsRequestCodec(),
              new Ros1Dobot_v4_bringupGetCoilsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetCoilsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetCurrentCommandId typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetCurrentCommandIdClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupGetCurrentCommandIdRequest, Ros1Dobot_v4_bringupGetCurrentCommandIdResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCodec(),
              new Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetCurrentCommandIdRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetCurrentCommandId incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetCurrentCommandIdServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupGetCurrentCommandIdRequest, Ros1Dobot_v4_bringupGetCurrentCommandIdResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCodec(),
              new Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetCurrentCommandIdResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetDO typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetDOClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetDORequest, Ros1Dobot_v4_bringupGetDOResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetDORequestCodec(),
              new Ros1Dobot_v4_bringupGetDOResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetDORequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetDO incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetDOServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetDORequest, Ros1Dobot_v4_bringupGetDOResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetDORequestCodec(),
              new Ros1Dobot_v4_bringupGetDOResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetDOResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetDOGroup typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetDOGroupClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetDOGroupRequest, Ros1Dobot_v4_bringupGetDOGroupResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetDOGroupRequestCodec(),
              new Ros1Dobot_v4_bringupGetDOGroupResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetDOGroupRequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetDOGroup incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetDOGroupServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetDOGroupRequest, Ros1Dobot_v4_bringupGetDOGroupResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetDOGroupRequestCodec(),
              new Ros1Dobot_v4_bringupGetDOGroupResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetDOGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetErrorID typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetErrorIDClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetErrorIDRequest, Ros1Dobot_v4_bringupGetErrorIDResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetErrorIDRequestCodec(),
              new Ros1Dobot_v4_bringupGetErrorIDResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetErrorIDRequest): bool => value.validValue(),
              72,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetErrorID incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetErrorIDServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetErrorIDRequest, Ros1Dobot_v4_bringupGetErrorIDResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetErrorIDRequestCodec(),
              new Ros1Dobot_v4_bringupGetErrorIDResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetErrorIDResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetHoldRegs typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetHoldRegsClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetHoldRegsRequest, Ros1Dobot_v4_bringupGetHoldRegsResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetHoldRegsRequestCodec(),
              new Ros1Dobot_v4_bringupGetHoldRegsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetHoldRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetHoldRegs incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetHoldRegsServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetHoldRegsRequest, Ros1Dobot_v4_bringupGetHoldRegsResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetHoldRegsRequestCodec(),
              new Ros1Dobot_v4_bringupGetHoldRegsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetHoldRegsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInBits typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetInBitsClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetInBitsRequest, Ros1Dobot_v4_bringupGetInBitsResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetInBitsRequestCodec(),
              new Ros1Dobot_v4_bringupGetInBitsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInBitsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInBits incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetInBitsServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetInBitsRequest, Ros1Dobot_v4_bringupGetInBitsResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetInBitsRequestCodec(),
              new Ros1Dobot_v4_bringupGetInBitsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInBitsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInRegs typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetInRegsClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetInRegsRequest, Ros1Dobot_v4_bringupGetInRegsResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetInRegsRequestCodec(),
              new Ros1Dobot_v4_bringupGetInRegsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInRegs incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetInRegsServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetInRegsRequest, Ros1Dobot_v4_bringupGetInRegsResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetInRegsRequestCodec(),
              new Ros1Dobot_v4_bringupGetInRegsResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInRegsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputBool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetInputBoolClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupGetInputBoolRequest, Ros1Dobot_v4_bringupGetInputBoolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetInputBoolRequestCodec(),
              new Ros1Dobot_v4_bringupGetInputBoolResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInputBoolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputBool incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetInputBoolServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupGetInputBoolRequest, Ros1Dobot_v4_bringupGetInputBoolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetInputBoolRequestCodec(),
              new Ros1Dobot_v4_bringupGetInputBoolResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInputBoolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputFloat typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetInputFloatClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupGetInputFloatRequest, Ros1Dobot_v4_bringupGetInputFloatResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetInputFloatRequestCodec(),
              new Ros1Dobot_v4_bringupGetInputFloatResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInputFloatRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputFloat incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetInputFloatServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupGetInputFloatRequest, Ros1Dobot_v4_bringupGetInputFloatResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetInputFloatRequestCodec(),
              new Ros1Dobot_v4_bringupGetInputFloatResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInputFloatResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputInt typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetInputIntClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetInputIntRequest, Ros1Dobot_v4_bringupGetInputIntResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetInputIntRequestCodec(),
              new Ros1Dobot_v4_bringupGetInputIntResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInputIntRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputInt incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetInputIntServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetInputIntRequest, Ros1Dobot_v4_bringupGetInputIntResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetInputIntRequestCodec(),
              new Ros1Dobot_v4_bringupGetInputIntResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetInputIntResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputBool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetOutputBoolClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupGetOutputBoolRequest, Ros1Dobot_v4_bringupGetOutputBoolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetOutputBoolRequestCodec(),
              new Ros1Dobot_v4_bringupGetOutputBoolResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetOutputBoolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputBool incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetOutputBoolServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupGetOutputBoolRequest, Ros1Dobot_v4_bringupGetOutputBoolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetOutputBoolRequestCodec(),
              new Ros1Dobot_v4_bringupGetOutputBoolResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetOutputBoolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputFloat typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetOutputFloatClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupGetOutputFloatRequest, Ros1Dobot_v4_bringupGetOutputFloatResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetOutputFloatRequestCodec(),
              new Ros1Dobot_v4_bringupGetOutputFloatResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetOutputFloatRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputFloat incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetOutputFloatServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupGetOutputFloatRequest, Ros1Dobot_v4_bringupGetOutputFloatResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetOutputFloatRequestCodec(),
              new Ros1Dobot_v4_bringupGetOutputFloatResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetOutputFloatResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputInt typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetOutputIntClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupGetOutputIntRequest, Ros1Dobot_v4_bringupGetOutputIntResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetOutputIntRequestCodec(),
              new Ros1Dobot_v4_bringupGetOutputIntResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetOutputIntRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputInt incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetOutputIntServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupGetOutputIntRequest, Ros1Dobot_v4_bringupGetOutputIntResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetOutputIntRequestCodec(),
              new Ros1Dobot_v4_bringupGetOutputIntResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetOutputIntResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetPose typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetPoseClient extends BoundedServiceClient<Ros1Dobot_v4_bringupGetPoseRequest, Ros1Dobot_v4_bringupGetPoseResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetPoseRequestCodec(),
              new Ros1Dobot_v4_bringupGetPoseResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetPoseRequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetPose incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetPoseServer extends BoundedServiceServer<Ros1Dobot_v4_bringupGetPoseRequest, Ros1Dobot_v4_bringupGetPoseResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetPoseRequestCodec(),
              new Ros1Dobot_v4_bringupGetPoseResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetPoseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetStartPose typed call and real-submit client. */
export class Ros1Dobot_v4_bringupGetStartPoseClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupGetStartPoseRequest, Ros1Dobot_v4_bringupGetStartPoseResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupGetStartPoseRequestCodec(),
              new Ros1Dobot_v4_bringupGetStartPoseResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetStartPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetStartPose incoming request/response owner. */
export class Ros1Dobot_v4_bringupGetStartPoseServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupGetStartPoseRequest, Ros1Dobot_v4_bringupGetStartPoseResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupGetStartPoseRequestCodec(),
              new Ros1Dobot_v4_bringupGetStartPoseResponseCodec(),
              (value: Ros1Dobot_v4_bringupGetStartPoseResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseKin typed call and real-submit client. */
export class Ros1Dobot_v4_bringupInverseKinClient extends BoundedServiceClient<Ros1Dobot_v4_bringupInverseKinRequest, Ros1Dobot_v4_bringupInverseKinResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupInverseKinRequestCodec(),
              new Ros1Dobot_v4_bringupInverseKinResponseCodec(),
              (value: Ros1Dobot_v4_bringupInverseKinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseKin incoming request/response owner. */
export class Ros1Dobot_v4_bringupInverseKinServer extends BoundedServiceServer<Ros1Dobot_v4_bringupInverseKinRequest, Ros1Dobot_v4_bringupInverseKinResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupInverseKinRequestCodec(),
              new Ros1Dobot_v4_bringupInverseKinResponseCodec(),
              (value: Ros1Dobot_v4_bringupInverseKinResponse): bool => value.validValue(),
              1088,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseSolution typed call and real-submit client. */
export class Ros1Dobot_v4_bringupInverseSolutionClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupInverseSolutionRequest, Ros1Dobot_v4_bringupInverseSolutionResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupInverseSolutionRequestCodec(),
              new Ros1Dobot_v4_bringupInverseSolutionResponseCodec(),
              (value: Ros1Dobot_v4_bringupInverseSolutionRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseSolution incoming request/response owner. */
export class Ros1Dobot_v4_bringupInverseSolutionServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupInverseSolutionRequest, Ros1Dobot_v4_bringupInverseSolutionResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupInverseSolutionRequestCodec(),
              new Ros1Dobot_v4_bringupInverseSolutionResponseCodec(),
              (value: Ros1Dobot_v4_bringupInverseSolutionResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusClose typed call and real-submit client. */
export class Ros1Dobot_v4_bringupModbusCloseClient extends BoundedServiceClient<Ros1Dobot_v4_bringupModbusCloseRequest, Ros1Dobot_v4_bringupModbusCloseResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupModbusCloseRequestCodec(),
              new Ros1Dobot_v4_bringupModbusCloseResponseCodec(),
              (value: Ros1Dobot_v4_bringupModbusCloseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusClose incoming request/response owner. */
export class Ros1Dobot_v4_bringupModbusCloseServer extends BoundedServiceServer<Ros1Dobot_v4_bringupModbusCloseRequest, Ros1Dobot_v4_bringupModbusCloseResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupModbusCloseRequestCodec(),
              new Ros1Dobot_v4_bringupModbusCloseResponseCodec(),
              (value: Ros1Dobot_v4_bringupModbusCloseResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusCreate typed call and real-submit client. */
export class Ros1Dobot_v4_bringupModbusCreateClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupModbusCreateRequest, Ros1Dobot_v4_bringupModbusCreateResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupModbusCreateRequestCodec(),
              new Ros1Dobot_v4_bringupModbusCreateResponseCodec(),
              (value: Ros1Dobot_v4_bringupModbusCreateRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusCreate incoming request/response owner. */
export class Ros1Dobot_v4_bringupModbusCreateServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupModbusCreateRequest, Ros1Dobot_v4_bringupModbusCreateResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupModbusCreateRequestCodec(),
              new Ros1Dobot_v4_bringupModbusCreateResponseCodec(),
              (value: Ros1Dobot_v4_bringupModbusCreateResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusRTUCreate typed call and real-submit client. */
export class Ros1Dobot_v4_bringupModbusRTUCreateClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupModbusRTUCreateRequest, Ros1Dobot_v4_bringupModbusRTUCreateResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupModbusRTUCreateRequestCodec(),
              new Ros1Dobot_v4_bringupModbusRTUCreateResponseCodec(),
              (value: Ros1Dobot_v4_bringupModbusRTUCreateRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusRTUCreate incoming request/response owner. */
export class Ros1Dobot_v4_bringupModbusRTUCreateServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupModbusRTUCreateRequest, Ros1Dobot_v4_bringupModbusRTUCreateResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupModbusRTUCreateRequestCodec(),
              new Ros1Dobot_v4_bringupModbusRTUCreateResponseCodec(),
              (value: Ros1Dobot_v4_bringupModbusRTUCreateResponse): bool => value.validValue(),
              276,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovJ typed call and real-submit client. */
export class Ros1Dobot_v4_bringupMovJClient extends BoundedServiceClient<Ros1Dobot_v4_bringupMovJRequest, Ros1Dobot_v4_bringupMovJResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupMovJRequestCodec(),
              new Ros1Dobot_v4_bringupMovJResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovJ incoming request/response owner. */
export class Ros1Dobot_v4_bringupMovJServer extends BoundedServiceServer<Ros1Dobot_v4_bringupMovJRequest, Ros1Dobot_v4_bringupMovJResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupMovJRequestCodec(),
              new Ros1Dobot_v4_bringupMovJResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovJResponse): bool => value.validValue(),
              4213,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovJIO typed call and real-submit client. */
export class Ros1Dobot_v4_bringupMovJIOClient extends BoundedServiceClient<Ros1Dobot_v4_bringupMovJIORequest, Ros1Dobot_v4_bringupMovJIOResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupMovJIORequestCodec(),
              new Ros1Dobot_v4_bringupMovJIOResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovJIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovJIO incoming request/response owner. */
export class Ros1Dobot_v4_bringupMovJIOServer extends BoundedServiceServer<Ros1Dobot_v4_bringupMovJIORequest, Ros1Dobot_v4_bringupMovJIOResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupMovJIORequestCodec(),
              new Ros1Dobot_v4_bringupMovJIOResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovJIOResponse): bool => value.validValue(),
              8377,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovL typed call and real-submit client. */
export class Ros1Dobot_v4_bringupMovLClient extends BoundedServiceClient<Ros1Dobot_v4_bringupMovLRequest, Ros1Dobot_v4_bringupMovLResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupMovLRequestCodec(),
              new Ros1Dobot_v4_bringupMovLResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovL incoming request/response owner. */
export class Ros1Dobot_v4_bringupMovLServer extends BoundedServiceServer<Ros1Dobot_v4_bringupMovLRequest, Ros1Dobot_v4_bringupMovLResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupMovLRequestCodec(),
              new Ros1Dobot_v4_bringupMovLResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovLResponse): bool => value.validValue(),
              4213,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovLIO typed call and real-submit client. */
export class Ros1Dobot_v4_bringupMovLIOClient extends BoundedServiceClient<Ros1Dobot_v4_bringupMovLIORequest, Ros1Dobot_v4_bringupMovLIOResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupMovLIORequestCodec(),
              new Ros1Dobot_v4_bringupMovLIOResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovLIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovLIO incoming request/response owner. */
export class Ros1Dobot_v4_bringupMovLIOServer extends BoundedServiceServer<Ros1Dobot_v4_bringupMovLIORequest, Ros1Dobot_v4_bringupMovLIOResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupMovLIORequestCodec(),
              new Ros1Dobot_v4_bringupMovLIOResponseCodec(),
              (value: Ros1Dobot_v4_bringupMovLIOResponse): bool => value.validValue(),
              8377,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MoveJog typed call and real-submit client. */
export class Ros1Dobot_v4_bringupMoveJogClient extends BoundedServiceClient<Ros1Dobot_v4_bringupMoveJogRequest, Ros1Dobot_v4_bringupMoveJogResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupMoveJogRequestCodec(),
              new Ros1Dobot_v4_bringupMoveJogResponseCodec(),
              (value: Ros1Dobot_v4_bringupMoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MoveJog incoming request/response owner. */
export class Ros1Dobot_v4_bringupMoveJogServer extends BoundedServiceServer<Ros1Dobot_v4_bringupMoveJogRequest, Ros1Dobot_v4_bringupMoveJogResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupMoveJogRequestCodec(),
              new Ros1Dobot_v4_bringupMoveJogResponseCodec(),
              (value: Ros1Dobot_v4_bringupMoveJogResponse): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Pause typed call and real-submit client. */
export class Ros1Dobot_v4_bringupPauseClient extends BoundedServiceClient<Ros1Dobot_v4_bringupPauseRequest, Ros1Dobot_v4_bringupPauseResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupPauseRequestCodec(),
              new Ros1Dobot_v4_bringupPauseResponseCodec(),
              (value: Ros1Dobot_v4_bringupPauseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Pause incoming request/response owner. */
export class Ros1Dobot_v4_bringupPauseServer extends BoundedServiceServer<Ros1Dobot_v4_bringupPauseRequest, Ros1Dobot_v4_bringupPauseResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupPauseRequestCodec(),
              new Ros1Dobot_v4_bringupPauseResponseCodec(),
              (value: Ros1Dobot_v4_bringupPauseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/PositiveKin typed call and real-submit client. */
export class Ros1Dobot_v4_bringupPositiveKinClient extends BoundedServiceClient<Ros1Dobot_v4_bringupPositiveKinRequest, Ros1Dobot_v4_bringupPositiveKinResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupPositiveKinRequestCodec(),
              new Ros1Dobot_v4_bringupPositiveKinResponseCodec(),
              (value: Ros1Dobot_v4_bringupPositiveKinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/PositiveKin incoming request/response owner. */
export class Ros1Dobot_v4_bringupPositiveKinServer extends BoundedServiceServer<Ros1Dobot_v4_bringupPositiveKinRequest, Ros1Dobot_v4_bringupPositiveKinResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupPositiveKinRequestCodec(),
              new Ros1Dobot_v4_bringupPositiveKinResponseCodec(),
              (value: Ros1Dobot_v4_bringupPositiveKinResponse): bool => value.validValue(),
              568,
              capacity);
    }
}

/** Complete dobot_v4_bringup/PowerOn typed call and real-submit client. */
export class Ros1Dobot_v4_bringupPowerOnClient extends BoundedServiceClient<Ros1Dobot_v4_bringupPowerOnRequest, Ros1Dobot_v4_bringupPowerOnResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupPowerOnRequestCodec(),
              new Ros1Dobot_v4_bringupPowerOnResponseCodec(),
              (value: Ros1Dobot_v4_bringupPowerOnRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/PowerOn incoming request/response owner. */
export class Ros1Dobot_v4_bringupPowerOnServer extends BoundedServiceServer<Ros1Dobot_v4_bringupPowerOnRequest, Ros1Dobot_v4_bringupPowerOnResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupPowerOnRequestCodec(),
              new Ros1Dobot_v4_bringupPowerOnResponseCodec(),
              (value: Ros1Dobot_v4_bringupPowerOnResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelJointMovJ typed call and real-submit client. */
export class Ros1Dobot_v4_bringupRelJointMovJClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupRelJointMovJRequest, Ros1Dobot_v4_bringupRelJointMovJResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupRelJointMovJRequestCodec(),
              new Ros1Dobot_v4_bringupRelJointMovJResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelJointMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelJointMovJ incoming request/response owner. */
export class Ros1Dobot_v4_bringupRelJointMovJServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupRelJointMovJRequest, Ros1Dobot_v4_bringupRelJointMovJResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupRelJointMovJRequestCodec(),
              new Ros1Dobot_v4_bringupRelJointMovJResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelJointMovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJTool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupRelMovJToolClient extends BoundedServiceClient<Ros1Dobot_v4_bringupRelMovJToolRequest, Ros1Dobot_v4_bringupRelMovJToolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupRelMovJToolRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovJToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovJToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJTool incoming request/response owner. */
export class Ros1Dobot_v4_bringupRelMovJToolServer extends BoundedServiceServer<Ros1Dobot_v4_bringupRelMovJToolRequest, Ros1Dobot_v4_bringupRelMovJToolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupRelMovJToolRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovJToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovJToolResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJUser typed call and real-submit client. */
export class Ros1Dobot_v4_bringupRelMovJUserClient extends BoundedServiceClient<Ros1Dobot_v4_bringupRelMovJUserRequest, Ros1Dobot_v4_bringupRelMovJUserResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupRelMovJUserRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovJUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovJUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJUser incoming request/response owner. */
export class Ros1Dobot_v4_bringupRelMovJUserServer extends BoundedServiceServer<Ros1Dobot_v4_bringupRelMovJUserRequest, Ros1Dobot_v4_bringupRelMovJUserResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupRelMovJUserRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovJUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovJUserResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLTool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupRelMovLToolClient extends BoundedServiceClient<Ros1Dobot_v4_bringupRelMovLToolRequest, Ros1Dobot_v4_bringupRelMovLToolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupRelMovLToolRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovLToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovLToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLTool incoming request/response owner. */
export class Ros1Dobot_v4_bringupRelMovLToolServer extends BoundedServiceServer<Ros1Dobot_v4_bringupRelMovLToolRequest, Ros1Dobot_v4_bringupRelMovLToolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupRelMovLToolRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovLToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovLToolResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLUser typed call and real-submit client. */
export class Ros1Dobot_v4_bringupRelMovLUserClient extends BoundedServiceClient<Ros1Dobot_v4_bringupRelMovLUserRequest, Ros1Dobot_v4_bringupRelMovLUserResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupRelMovLUserRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovLUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovLUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLUser incoming request/response owner. */
export class Ros1Dobot_v4_bringupRelMovLUserServer extends BoundedServiceServer<Ros1Dobot_v4_bringupRelMovLUserRequest, Ros1Dobot_v4_bringupRelMovLUserResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupRelMovLUserRequestCodec(),
              new Ros1Dobot_v4_bringupRelMovLUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupRelMovLUserResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RobotMode typed call and real-submit client. */
export class Ros1Dobot_v4_bringupRobotModeClient extends BoundedServiceClient<Ros1Dobot_v4_bringupRobotModeRequest, Ros1Dobot_v4_bringupRobotModeResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupRobotModeRequestCodec(),
              new Ros1Dobot_v4_bringupRobotModeResponseCodec(),
              (value: Ros1Dobot_v4_bringupRobotModeRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RobotMode incoming request/response owner. */
export class Ros1Dobot_v4_bringupRobotModeServer extends BoundedServiceServer<Ros1Dobot_v4_bringupRobotModeRequest, Ros1Dobot_v4_bringupRobotModeResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupRobotModeRequestCodec(),
              new Ros1Dobot_v4_bringupRobotModeResponseCodec(),
              (value: Ros1Dobot_v4_bringupRobotModeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RunScript typed call and real-submit client. */
export class Ros1Dobot_v4_bringupRunScriptClient extends BoundedServiceClient<Ros1Dobot_v4_bringupRunScriptRequest, Ros1Dobot_v4_bringupRunScriptResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupRunScriptRequestCodec(),
              new Ros1Dobot_v4_bringupRunScriptResponseCodec(),
              (value: Ros1Dobot_v4_bringupRunScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RunScript incoming request/response owner. */
export class Ros1Dobot_v4_bringupRunScriptServer extends BoundedServiceServer<Ros1Dobot_v4_bringupRunScriptRequest, Ros1Dobot_v4_bringupRunScriptResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupRunScriptRequestCodec(),
              new Ros1Dobot_v4_bringupRunScriptResponseCodec(),
              (value: Ros1Dobot_v4_bringupRunScriptResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ServoJ typed call and real-submit client. */
export class Ros1Dobot_v4_bringupServoJClient extends BoundedServiceClient<Ros1Dobot_v4_bringupServoJRequest, Ros1Dobot_v4_bringupServoJResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupServoJRequestCodec(),
              new Ros1Dobot_v4_bringupServoJResponseCodec(),
              (value: Ros1Dobot_v4_bringupServoJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ServoJ incoming request/response owner. */
export class Ros1Dobot_v4_bringupServoJServer extends BoundedServiceServer<Ros1Dobot_v4_bringupServoJRequest, Ros1Dobot_v4_bringupServoJResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupServoJRequestCodec(),
              new Ros1Dobot_v4_bringupServoJResponseCodec(),
              (value: Ros1Dobot_v4_bringupServoJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ServoP typed call and real-submit client. */
export class Ros1Dobot_v4_bringupServoPClient extends BoundedServiceClient<Ros1Dobot_v4_bringupServoPRequest, Ros1Dobot_v4_bringupServoPResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupServoPRequestCodec(),
              new Ros1Dobot_v4_bringupServoPResponseCodec(),
              (value: Ros1Dobot_v4_bringupServoPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ServoP incoming request/response owner. */
export class Ros1Dobot_v4_bringupServoPServer extends BoundedServiceServer<Ros1Dobot_v4_bringupServoPRequest, Ros1Dobot_v4_bringupServoPResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupServoPRequestCodec(),
              new Ros1Dobot_v4_bringupServoPResponseCodec(),
              (value: Ros1Dobot_v4_bringupServoPResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetBackDistance typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetBackDistanceClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetBackDistanceRequest, Ros1Dobot_v4_bringupSetBackDistanceResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetBackDistanceRequestCodec(),
              new Ros1Dobot_v4_bringupSetBackDistanceResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetBackDistanceRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetBackDistance incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetBackDistanceServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetBackDistanceRequest, Ros1Dobot_v4_bringupSetBackDistanceResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetBackDistanceRequestCodec(),
              new Ros1Dobot_v4_bringupSetBackDistanceResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetBackDistanceResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetCoils typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetCoilsClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSetCoilsRequest, Ros1Dobot_v4_bringupSetCoilsResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetCoilsRequestCodec(),
              new Ros1Dobot_v4_bringupSetCoilsResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetCoils incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetCoilsServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSetCoilsRequest, Ros1Dobot_v4_bringupSetCoilsResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetCoilsRequestCodec(),
              new Ros1Dobot_v4_bringupSetCoilsResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetCoilsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetCollisionLevel typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetCollisionLevelClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetCollisionLevelRequest, Ros1Dobot_v4_bringupSetCollisionLevelResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetCollisionLevelRequestCodec(),
              new Ros1Dobot_v4_bringupSetCollisionLevelResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetCollisionLevelRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetCollisionLevel incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetCollisionLevelServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetCollisionLevelRequest, Ros1Dobot_v4_bringupSetCollisionLevelResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetCollisionLevelRequestCodec(),
              new Ros1Dobot_v4_bringupSetCollisionLevelResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetCollisionLevelResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetHoldRegs typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetHoldRegsClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSetHoldRegsRequest, Ros1Dobot_v4_bringupSetHoldRegsResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetHoldRegsRequestCodec(),
              new Ros1Dobot_v4_bringupSetHoldRegsResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetHoldRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetHoldRegs incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetHoldRegsServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSetHoldRegsRequest, Ros1Dobot_v4_bringupSetHoldRegsResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetHoldRegsRequestCodec(),
              new Ros1Dobot_v4_bringupSetHoldRegsResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetHoldRegsResponse): bool => value.validValue(),
              532,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputBool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetOutputBoolClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetOutputBoolRequest, Ros1Dobot_v4_bringupSetOutputBoolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetOutputBoolRequestCodec(),
              new Ros1Dobot_v4_bringupSetOutputBoolResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetOutputBoolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputBool incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetOutputBoolServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetOutputBoolRequest, Ros1Dobot_v4_bringupSetOutputBoolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetOutputBoolRequestCodec(),
              new Ros1Dobot_v4_bringupSetOutputBoolResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetOutputBoolResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputFloat typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetOutputFloatClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetOutputFloatRequest, Ros1Dobot_v4_bringupSetOutputFloatResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetOutputFloatRequestCodec(),
              new Ros1Dobot_v4_bringupSetOutputFloatResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetOutputFloatRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputFloat incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetOutputFloatServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetOutputFloatRequest, Ros1Dobot_v4_bringupSetOutputFloatResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetOutputFloatRequestCodec(),
              new Ros1Dobot_v4_bringupSetOutputFloatResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetOutputFloatResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputInt typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetOutputIntClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetOutputIntRequest, Ros1Dobot_v4_bringupSetOutputIntResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetOutputIntRequestCodec(),
              new Ros1Dobot_v4_bringupSetOutputIntResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetOutputIntRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputInt incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetOutputIntServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetOutputIntRequest, Ros1Dobot_v4_bringupSetOutputIntResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetOutputIntRequestCodec(),
              new Ros1Dobot_v4_bringupSetOutputIntResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetOutputIntResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetPayload typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetPayloadClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSetPayloadRequest, Ros1Dobot_v4_bringupSetPayloadResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetPayloadRequestCodec(),
              new Ros1Dobot_v4_bringupSetPayloadResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetPayloadRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetPayload incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetPayloadServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSetPayloadRequest, Ros1Dobot_v4_bringupSetPayloadResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetPayloadRequestCodec(),
              new Ros1Dobot_v4_bringupSetPayloadResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetPayloadResponse): bool => value.validValue(),
              32,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetPostCollisionMode typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetPostCollisionModeClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetPostCollisionModeRequest, Ros1Dobot_v4_bringupSetPostCollisionModeResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetPostCollisionModeRequestCodec(),
              new Ros1Dobot_v4_bringupSetPostCollisionModeResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetPostCollisionModeRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetPostCollisionMode incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetPostCollisionModeServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetPostCollisionModeRequest, Ros1Dobot_v4_bringupSetPostCollisionModeResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetPostCollisionModeRequestCodec(),
              new Ros1Dobot_v4_bringupSetPostCollisionModeResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetPostCollisionModeResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeSkin typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetSafeSkinClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSetSafeSkinRequest, Ros1Dobot_v4_bringupSetSafeSkinResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetSafeSkinRequestCodec(),
              new Ros1Dobot_v4_bringupSetSafeSkinResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetSafeSkinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeSkin incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetSafeSkinServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSetSafeSkinRequest, Ros1Dobot_v4_bringupSetSafeSkinResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetSafeSkinRequestCodec(),
              new Ros1Dobot_v4_bringupSetSafeSkinResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetSafeSkinResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeWallEnable typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetSafeWallEnableClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetSafeWallEnableRequest, Ros1Dobot_v4_bringupSetSafeWallEnableResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetSafeWallEnableRequestCodec(),
              new Ros1Dobot_v4_bringupSetSafeWallEnableResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetSafeWallEnableRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeWallEnable incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetSafeWallEnableServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetSafeWallEnableRequest, Ros1Dobot_v4_bringupSetSafeWallEnableResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetSafeWallEnableRequestCodec(),
              new Ros1Dobot_v4_bringupSetSafeWallEnableResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetSafeWallEnableResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetToolClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSetToolRequest, Ros1Dobot_v4_bringupSetToolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetToolRequestCodec(),
              new Ros1Dobot_v4_bringupSetToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetToolServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSetToolRequest, Ros1Dobot_v4_bringupSetToolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetToolRequestCodec(),
              new Ros1Dobot_v4_bringupSetToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetToolResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool485 typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetTool485Client extends BoundedServiceClient<Ros1Dobot_v4_bringupSetTool485Request, Ros1Dobot_v4_bringupSetTool485Response>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetTool485RequestCodec(),
              new Ros1Dobot_v4_bringupSetTool485ResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetTool485Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool485 incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetTool485Server extends BoundedServiceServer<Ros1Dobot_v4_bringupSetTool485Request, Ros1Dobot_v4_bringupSetTool485Response>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetTool485RequestCodec(),
              new Ros1Dobot_v4_bringupSetTool485ResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetTool485Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolMode typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetToolModeClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSetToolModeRequest, Ros1Dobot_v4_bringupSetToolModeResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetToolModeRequestCodec(),
              new Ros1Dobot_v4_bringupSetToolModeResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetToolModeRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolMode incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetToolModeServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSetToolModeRequest, Ros1Dobot_v4_bringupSetToolModeResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetToolModeRequestCodec(),
              new Ros1Dobot_v4_bringupSetToolModeResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetToolModeResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolPower typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetToolPowerClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupSetToolPowerRequest, Ros1Dobot_v4_bringupSetToolPowerResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetToolPowerRequestCodec(),
              new Ros1Dobot_v4_bringupSetToolPowerResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetToolPowerRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolPower incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetToolPowerServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupSetToolPowerRequest, Ros1Dobot_v4_bringupSetToolPowerResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetToolPowerRequestCodec(),
              new Ros1Dobot_v4_bringupSetToolPowerResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetToolPowerResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetUser typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSetUserClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSetUserRequest, Ros1Dobot_v4_bringupSetUserResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSetUserRequestCodec(),
              new Ros1Dobot_v4_bringupSetUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetUser incoming request/response owner. */
export class Ros1Dobot_v4_bringupSetUserServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSetUserRequest, Ros1Dobot_v4_bringupSetUserResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSetUserRequestCodec(),
              new Ros1Dobot_v4_bringupSetUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupSetUserResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SpeedFactor typed call and real-submit client. */
export class Ros1Dobot_v4_bringupSpeedFactorClient extends BoundedServiceClient<Ros1Dobot_v4_bringupSpeedFactorRequest, Ros1Dobot_v4_bringupSpeedFactorResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupSpeedFactorRequestCodec(),
              new Ros1Dobot_v4_bringupSpeedFactorResponseCodec(),
              (value: Ros1Dobot_v4_bringupSpeedFactorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SpeedFactor incoming request/response owner. */
export class Ros1Dobot_v4_bringupSpeedFactorServer extends BoundedServiceServer<Ros1Dobot_v4_bringupSpeedFactorRequest, Ros1Dobot_v4_bringupSpeedFactorResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupSpeedFactorRequestCodec(),
              new Ros1Dobot_v4_bringupSpeedFactorResponseCodec(),
              (value: Ros1Dobot_v4_bringupSpeedFactorResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartDrag typed call and real-submit client. */
export class Ros1Dobot_v4_bringupStartDragClient extends BoundedServiceClient<Ros1Dobot_v4_bringupStartDragRequest, Ros1Dobot_v4_bringupStartDragResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupStartDragRequestCodec(),
              new Ros1Dobot_v4_bringupStartDragResponseCodec(),
              (value: Ros1Dobot_v4_bringupStartDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartDrag incoming request/response owner. */
export class Ros1Dobot_v4_bringupStartDragServer extends BoundedServiceServer<Ros1Dobot_v4_bringupStartDragRequest, Ros1Dobot_v4_bringupStartDragResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupStartDragRequestCodec(),
              new Ros1Dobot_v4_bringupStartDragResponseCodec(),
              (value: Ros1Dobot_v4_bringupStartDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartPath typed call and real-submit client. */
export class Ros1Dobot_v4_bringupStartPathClient extends BoundedServiceClient<Ros1Dobot_v4_bringupStartPathRequest, Ros1Dobot_v4_bringupStartPathResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupStartPathRequestCodec(),
              new Ros1Dobot_v4_bringupStartPathResponseCodec(),
              (value: Ros1Dobot_v4_bringupStartPathRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartPath incoming request/response owner. */
export class Ros1Dobot_v4_bringupStartPathServer extends BoundedServiceServer<Ros1Dobot_v4_bringupStartPathRequest, Ros1Dobot_v4_bringupStartPathResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupStartPathRequestCodec(),
              new Ros1Dobot_v4_bringupStartPathResponseCodec(),
              (value: Ros1Dobot_v4_bringupStartPathResponse): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Stop typed call and real-submit client. */
export class Ros1Dobot_v4_bringupStopClient extends BoundedServiceClient<Ros1Dobot_v4_bringupStopRequest, Ros1Dobot_v4_bringupStopResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupStopRequestCodec(),
              new Ros1Dobot_v4_bringupStopResponseCodec(),
              (value: Ros1Dobot_v4_bringupStopRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Stop incoming request/response owner. */
export class Ros1Dobot_v4_bringupStopServer extends BoundedServiceServer<Ros1Dobot_v4_bringupStopRequest, Ros1Dobot_v4_bringupStopResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupStopRequestCodec(),
              new Ros1Dobot_v4_bringupStopResponseCodec(),
              (value: Ros1Dobot_v4_bringupStopResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StopDrag typed call and real-submit client. */
export class Ros1Dobot_v4_bringupStopDragClient extends BoundedServiceClient<Ros1Dobot_v4_bringupStopDragRequest, Ros1Dobot_v4_bringupStopDragResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupStopDragRequestCodec(),
              new Ros1Dobot_v4_bringupStopDragResponseCodec(),
              (value: Ros1Dobot_v4_bringupStopDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StopDrag incoming request/response owner. */
export class Ros1Dobot_v4_bringupStopDragServer extends BoundedServiceServer<Ros1Dobot_v4_bringupStopDragRequest, Ros1Dobot_v4_bringupStopDragResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupStopDragRequestCodec(),
              new Ros1Dobot_v4_bringupStopDragResponseCodec(),
              (value: Ros1Dobot_v4_bringupStopDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StopMoveJog typed call and real-submit client. */
export class Ros1Dobot_v4_bringupStopMoveJogClient extends BoundedServiceClient<Ros1Dobot_v4_bringupStopMoveJogRequest, Ros1Dobot_v4_bringupStopMoveJogResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupStopMoveJogRequestCodec(),
              new Ros1Dobot_v4_bringupStopMoveJogResponseCodec(),
              (value: Ros1Dobot_v4_bringupStopMoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StopMoveJog incoming request/response owner. */
export class Ros1Dobot_v4_bringupStopMoveJogServer extends BoundedServiceServer<Ros1Dobot_v4_bringupStopMoveJogRequest, Ros1Dobot_v4_bringupStopMoveJogResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupStopMoveJogRequestCodec(),
              new Ros1Dobot_v4_bringupStopMoveJogResponseCodec(),
              (value: Ros1Dobot_v4_bringupStopMoveJogResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_v4_bringup/TcpDashboard typed call and real-submit client. */
export class Ros1Dobot_v4_bringupTcpDashboardClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupTcpDashboardRequest, Ros1Dobot_v4_bringupTcpDashboardResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupTcpDashboardRequestCodec(),
              new Ros1Dobot_v4_bringupTcpDashboardResponseCodec(),
              (value: Ros1Dobot_v4_bringupTcpDashboardRequest): bool => value.validValue(),
              260,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/TcpDashboard incoming request/response owner. */
export class Ros1Dobot_v4_bringupTcpDashboardServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupTcpDashboardRequest, Ros1Dobot_v4_bringupTcpDashboardResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupTcpDashboardRequestCodec(),
              new Ros1Dobot_v4_bringupTcpDashboardResponseCodec(),
              (value: Ros1Dobot_v4_bringupTcpDashboardResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Tool typed call and real-submit client. */
export class Ros1Dobot_v4_bringupToolClient extends BoundedServiceClient<Ros1Dobot_v4_bringupToolRequest, Ros1Dobot_v4_bringupToolResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupToolRequestCodec(),
              new Ros1Dobot_v4_bringupToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Tool incoming request/response owner. */
export class Ros1Dobot_v4_bringupToolServer extends BoundedServiceServer<Ros1Dobot_v4_bringupToolRequest, Ros1Dobot_v4_bringupToolResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupToolRequestCodec(),
              new Ros1Dobot_v4_bringupToolResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolAI typed call and real-submit client. */
export class Ros1Dobot_v4_bringupToolAIClient extends BoundedServiceClient<Ros1Dobot_v4_bringupToolAIRequest, Ros1Dobot_v4_bringupToolAIResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupToolAIRequestCodec(),
              new Ros1Dobot_v4_bringupToolAIResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolAIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolAI incoming request/response owner. */
export class Ros1Dobot_v4_bringupToolAIServer extends BoundedServiceServer<Ros1Dobot_v4_bringupToolAIRequest, Ros1Dobot_v4_bringupToolAIResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupToolAIRequestCodec(),
              new Ros1Dobot_v4_bringupToolAIResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolAIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDI typed call and real-submit client. */
export class Ros1Dobot_v4_bringupToolDIClient extends BoundedServiceClient<Ros1Dobot_v4_bringupToolDIRequest, Ros1Dobot_v4_bringupToolDIResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupToolDIRequestCodec(),
              new Ros1Dobot_v4_bringupToolDIResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolDIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDI incoming request/response owner. */
export class Ros1Dobot_v4_bringupToolDIServer extends BoundedServiceServer<Ros1Dobot_v4_bringupToolDIRequest, Ros1Dobot_v4_bringupToolDIResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupToolDIRequestCodec(),
              new Ros1Dobot_v4_bringupToolDIResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolDIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDO typed call and real-submit client. */
export class Ros1Dobot_v4_bringupToolDOClient extends BoundedServiceClient<Ros1Dobot_v4_bringupToolDORequest, Ros1Dobot_v4_bringupToolDOResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupToolDORequestCodec(),
              new Ros1Dobot_v4_bringupToolDOResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolDORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDO incoming request/response owner. */
export class Ros1Dobot_v4_bringupToolDOServer extends BoundedServiceServer<Ros1Dobot_v4_bringupToolDORequest, Ros1Dobot_v4_bringupToolDOResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupToolDORequestCodec(),
              new Ros1Dobot_v4_bringupToolDOResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolDOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDOInstant typed call and real-submit client. */
export class Ros1Dobot_v4_bringupToolDOInstantClient extends
    BoundedServiceClient<Ros1Dobot_v4_bringupToolDOInstantRequest, Ros1Dobot_v4_bringupToolDOInstantResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupToolDOInstantRequestCodec(),
              new Ros1Dobot_v4_bringupToolDOInstantResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolDOInstantRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDOInstant incoming request/response owner. */
export class Ros1Dobot_v4_bringupToolDOInstantServer extends
    BoundedServiceServer<Ros1Dobot_v4_bringupToolDOInstantRequest, Ros1Dobot_v4_bringupToolDOInstantResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupToolDOInstantRequestCodec(),
              new Ros1Dobot_v4_bringupToolDOInstantResponseCodec(),
              (value: Ros1Dobot_v4_bringupToolDOInstantResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_v4_bringup/User typed call and real-submit client. */
export class Ros1Dobot_v4_bringupUserClient extends BoundedServiceClient<Ros1Dobot_v4_bringupUserRequest, Ros1Dobot_v4_bringupUserResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupUserRequestCodec(),
              new Ros1Dobot_v4_bringupUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/User incoming request/response owner. */
export class Ros1Dobot_v4_bringupUserServer extends BoundedServiceServer<Ros1Dobot_v4_bringupUserRequest, Ros1Dobot_v4_bringupUserResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupUserRequestCodec(),
              new Ros1Dobot_v4_bringupUserResponseCodec(),
              (value: Ros1Dobot_v4_bringupUserResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/VelJ typed call and real-submit client. */
export class Ros1Dobot_v4_bringupVelJClient extends BoundedServiceClient<Ros1Dobot_v4_bringupVelJRequest, Ros1Dobot_v4_bringupVelJResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupVelJRequestCodec(),
              new Ros1Dobot_v4_bringupVelJResponseCodec(),
              (value: Ros1Dobot_v4_bringupVelJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/VelJ incoming request/response owner. */
export class Ros1Dobot_v4_bringupVelJServer extends BoundedServiceServer<Ros1Dobot_v4_bringupVelJRequest, Ros1Dobot_v4_bringupVelJResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupVelJRequestCodec(),
              new Ros1Dobot_v4_bringupVelJResponseCodec(),
              (value: Ros1Dobot_v4_bringupVelJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_v4_bringup/VelL typed call and real-submit client. */
export class Ros1Dobot_v4_bringupVelLClient extends BoundedServiceClient<Ros1Dobot_v4_bringupVelLRequest, Ros1Dobot_v4_bringupVelLResponse>
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
              1,
              alias,
              new Ros1Dobot_v4_bringupVelLRequestCodec(),
              new Ros1Dobot_v4_bringupVelLResponseCodec(),
              (value: Ros1Dobot_v4_bringupVelLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/VelL incoming request/response owner. */
export class Ros1Dobot_v4_bringupVelLServer extends BoundedServiceServer<Ros1Dobot_v4_bringupVelLRequest, Ros1Dobot_v4_bringupVelLResponse>
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
              1,
              advertise,
              respond,
              new Ros1Dobot_v4_bringupVelLRequestCodec(),
              new Ros1Dobot_v4_bringupVelLResponseCodec(),
              (value: Ros1Dobot_v4_bringupVelLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}
