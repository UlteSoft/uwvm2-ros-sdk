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
    Ros1Dobot_bringupAccJRequest,
    Ros1Dobot_bringupAccJRequestCodec,
    Ros1Dobot_bringupAccJResponse,
    Ros1Dobot_bringupAccJResponseCodec,
    Ros1Dobot_bringupAccLRequest,
    Ros1Dobot_bringupAccLRequestCodec,
    Ros1Dobot_bringupAccLResponse,
    Ros1Dobot_bringupAccLResponseCodec,
    Ros1Dobot_bringupAIRequest,
    Ros1Dobot_bringupAIRequestCodec,
    Ros1Dobot_bringupAIResponse,
    Ros1Dobot_bringupAIResponseCodec,
    Ros1Dobot_bringupAOExecuteRequest,
    Ros1Dobot_bringupAOExecuteRequestCodec,
    Ros1Dobot_bringupAOExecuteResponse,
    Ros1Dobot_bringupAOExecuteResponseCodec,
    Ros1Dobot_bringupAORequest,
    Ros1Dobot_bringupAORequestCodec,
    Ros1Dobot_bringupAOResponse,
    Ros1Dobot_bringupAOResponseCodec,
    Ros1Dobot_bringupArchRequest,
    Ros1Dobot_bringupArchRequestCodec,
    Ros1Dobot_bringupArchResponse,
    Ros1Dobot_bringupArchResponseCodec,
    Ros1Dobot_bringupArcRequest,
    Ros1Dobot_bringupArcRequestCodec,
    Ros1Dobot_bringupArcResponse,
    Ros1Dobot_bringupArcResponseCodec,
    Ros1Dobot_bringupBrakeControlRequest,
    Ros1Dobot_bringupBrakeControlRequestCodec,
    Ros1Dobot_bringupBrakeControlResponse,
    Ros1Dobot_bringupBrakeControlResponseCodec,
    Ros1Dobot_bringupCircleRequest,
    Ros1Dobot_bringupCircleRequestCodec,
    Ros1Dobot_bringupCircleResponse,
    Ros1Dobot_bringupCircleResponseCodec,
    Ros1Dobot_bringupClearErrorRequest,
    Ros1Dobot_bringupClearErrorRequestCodec,
    Ros1Dobot_bringupClearErrorResponse,
    Ros1Dobot_bringupClearErrorResponseCodec,
    Ros1Dobot_bringupContinueScriptRequest,
    Ros1Dobot_bringupContinueScriptRequestCodec,
    Ros1Dobot_bringupContinueScriptResponse,
    Ros1Dobot_bringupContinueScriptResponseCodec,
    Ros1Dobot_bringupContinuesRequest,
    Ros1Dobot_bringupContinuesRequestCodec,
    Ros1Dobot_bringupContinuesResponse,
    Ros1Dobot_bringupContinuesResponseCodec,
    Ros1Dobot_bringupCPRequest,
    Ros1Dobot_bringupCPRequestCodec,
    Ros1Dobot_bringupCPResponse,
    Ros1Dobot_bringupCPResponseCodec,
    Ros1Dobot_bringupDigitalOutputsRequest,
    Ros1Dobot_bringupDigitalOutputsRequestCodec,
    Ros1Dobot_bringupDigitalOutputsResponse,
    Ros1Dobot_bringupDigitalOutputsResponseCodec,
    Ros1Dobot_bringupDIGroupRequest,
    Ros1Dobot_bringupDIGroupRequestCodec,
    Ros1Dobot_bringupDIGroupResponse,
    Ros1Dobot_bringupDIGroupResponseCodec,
    Ros1Dobot_bringupDIRequest,
    Ros1Dobot_bringupDIRequestCodec,
    Ros1Dobot_bringupDIResponse,
    Ros1Dobot_bringupDIResponseCodec,
    Ros1Dobot_bringupDisableRobotRequest,
    Ros1Dobot_bringupDisableRobotRequestCodec,
    Ros1Dobot_bringupDisableRobotResponse,
    Ros1Dobot_bringupDisableRobotResponseCodec,
    Ros1Dobot_bringupDOExecuteRequest,
    Ros1Dobot_bringupDOExecuteRequestCodec,
    Ros1Dobot_bringupDOExecuteResponse,
    Ros1Dobot_bringupDOExecuteResponseCodec,
    Ros1Dobot_bringupDOGroupRequest,
    Ros1Dobot_bringupDOGroupRequestCodec,
    Ros1Dobot_bringupDOGroupResponse,
    Ros1Dobot_bringupDOGroupResponseCodec,
    Ros1Dobot_bringupDORequest,
    Ros1Dobot_bringupDORequestCodec,
    Ros1Dobot_bringupDOResponse,
    Ros1Dobot_bringupDOResponseCodec,
    Ros1Dobot_bringupEmergencyStopRequest,
    Ros1Dobot_bringupEmergencyStopRequestCodec,
    Ros1Dobot_bringupEmergencyStopResponse,
    Ros1Dobot_bringupEmergencyStopResponseCodec,
    Ros1Dobot_bringupEnableRobotRequest,
    Ros1Dobot_bringupEnableRobotRequestCodec,
    Ros1Dobot_bringupEnableRobotResponse,
    Ros1Dobot_bringupEnableRobotResponseCodec,
    Ros1Dobot_bringupGetAngleRequest,
    Ros1Dobot_bringupGetAngleRequestCodec,
    Ros1Dobot_bringupGetAngleResponse,
    Ros1Dobot_bringupGetAngleResponseCodec,
    Ros1Dobot_bringupGetCoilsRequest,
    Ros1Dobot_bringupGetCoilsRequestCodec,
    Ros1Dobot_bringupGetCoilsResponse,
    Ros1Dobot_bringupGetCoilsResponseCodec,
    Ros1Dobot_bringupGetErrorIDRequest,
    Ros1Dobot_bringupGetErrorIDRequestCodec,
    Ros1Dobot_bringupGetErrorIDResponse,
    Ros1Dobot_bringupGetErrorIDResponseCodec,
    Ros1Dobot_bringupGetHoldRegsRequest,
    Ros1Dobot_bringupGetHoldRegsRequestCodec,
    Ros1Dobot_bringupGetHoldRegsResponse,
    Ros1Dobot_bringupGetHoldRegsResponseCodec,
    Ros1Dobot_bringupGetInBitsRequest,
    Ros1Dobot_bringupGetInBitsRequestCodec,
    Ros1Dobot_bringupGetInBitsResponse,
    Ros1Dobot_bringupGetInBitsResponseCodec,
    Ros1Dobot_bringupGetInRegsRequest,
    Ros1Dobot_bringupGetInRegsRequestCodec,
    Ros1Dobot_bringupGetInRegsResponse,
    Ros1Dobot_bringupGetInRegsResponseCodec,
    Ros1Dobot_bringupGetPathStartPoseRequest,
    Ros1Dobot_bringupGetPathStartPoseRequestCodec,
    Ros1Dobot_bringupGetPathStartPoseResponse,
    Ros1Dobot_bringupGetPathStartPoseResponseCodec,
    Ros1Dobot_bringupGetPoseRequest,
    Ros1Dobot_bringupGetPoseRequestCodec,
    Ros1Dobot_bringupGetPoseResponse,
    Ros1Dobot_bringupGetPoseResponseCodec,
    Ros1Dobot_bringupGetSixForceDataRequest,
    Ros1Dobot_bringupGetSixForceDataRequestCodec,
    Ros1Dobot_bringupGetSixForceDataResponse,
    Ros1Dobot_bringupGetSixForceDataResponseCodec,
    Ros1Dobot_bringupGetTerminal485Request,
    Ros1Dobot_bringupGetTerminal485RequestCodec,
    Ros1Dobot_bringupGetTerminal485Response,
    Ros1Dobot_bringupGetTerminal485ResponseCodec,
    Ros1Dobot_bringupGetTraceStartPoseRequest,
    Ros1Dobot_bringupGetTraceStartPoseRequestCodec,
    Ros1Dobot_bringupGetTraceStartPoseResponse,
    Ros1Dobot_bringupGetTraceStartPoseResponseCodec,
    Ros1Dobot_bringupHandleTrajPointsRequest,
    Ros1Dobot_bringupHandleTrajPointsRequestCodec,
    Ros1Dobot_bringupHandleTrajPointsResponse,
    Ros1Dobot_bringupHandleTrajPointsResponseCodec,
    Ros1Dobot_bringupInverseSolutionRequest,
    Ros1Dobot_bringupInverseSolutionRequestCodec,
    Ros1Dobot_bringupInverseSolutionResponse,
    Ros1Dobot_bringupInverseSolutionResponseCodec,
    Ros1Dobot_bringupJointMovJRequest,
    Ros1Dobot_bringupJointMovJRequestCodec,
    Ros1Dobot_bringupJointMovJResponse,
    Ros1Dobot_bringupJointMovJResponseCodec,
    Ros1Dobot_bringupJumpRequest,
    Ros1Dobot_bringupJumpRequestCodec,
    Ros1Dobot_bringupJumpResponse,
    Ros1Dobot_bringupJumpResponseCodec,
    Ros1Dobot_bringupLimZRequest,
    Ros1Dobot_bringupLimZRequestCodec,
    Ros1Dobot_bringupLimZResponse,
    Ros1Dobot_bringupLimZResponseCodec,
    Ros1Dobot_bringupLoadSwitchRequest,
    Ros1Dobot_bringupLoadSwitchRequestCodec,
    Ros1Dobot_bringupLoadSwitchResponse,
    Ros1Dobot_bringupLoadSwitchResponseCodec,
    Ros1Dobot_bringupModbusCloseRequest,
    Ros1Dobot_bringupModbusCloseRequestCodec,
    Ros1Dobot_bringupModbusCloseResponse,
    Ros1Dobot_bringupModbusCloseResponseCodec,
    Ros1Dobot_bringupModbusCreateRequest,
    Ros1Dobot_bringupModbusCreateRequestCodec,
    Ros1Dobot_bringupModbusCreateResponse,
    Ros1Dobot_bringupModbusCreateResponseCodec,
    Ros1Dobot_bringupMoveJogRequest,
    Ros1Dobot_bringupMoveJogRequestCodec,
    Ros1Dobot_bringupMoveJogResponse,
    Ros1Dobot_bringupMoveJogResponseCodec,
    Ros1Dobot_bringupMovJExtRequest,
    Ros1Dobot_bringupMovJExtRequestCodec,
    Ros1Dobot_bringupMovJExtResponse,
    Ros1Dobot_bringupMovJExtResponseCodec,
    Ros1Dobot_bringupMovJIORequest,
    Ros1Dobot_bringupMovJIORequestCodec,
    Ros1Dobot_bringupMovJIOResponse,
    Ros1Dobot_bringupMovJIOResponseCodec,
    Ros1Dobot_bringupMovJRequest,
    Ros1Dobot_bringupMovJRequestCodec,
    Ros1Dobot_bringupMovJResponse,
    Ros1Dobot_bringupMovJResponseCodec,
    Ros1Dobot_bringupMovLIORequest,
    Ros1Dobot_bringupMovLIORequestCodec,
    Ros1Dobot_bringupMovLIOResponse,
    Ros1Dobot_bringupMovLIOResponseCodec,
    Ros1Dobot_bringupMovLRequest,
    Ros1Dobot_bringupMovLRequestCodec,
    Ros1Dobot_bringupMovLResponse,
    Ros1Dobot_bringupMovLResponseCodec,
    Ros1Dobot_bringupPauseRequest,
    Ros1Dobot_bringupPauseRequestCodec,
    Ros1Dobot_bringupPauseResponse,
    Ros1Dobot_bringupPauseResponseCodec,
    Ros1Dobot_bringupPauseScriptRequest,
    Ros1Dobot_bringupPauseScriptRequestCodec,
    Ros1Dobot_bringupPauseScriptResponse,
    Ros1Dobot_bringupPauseScriptResponseCodec,
    Ros1Dobot_bringupPayLoadRequest,
    Ros1Dobot_bringupPayLoadRequestCodec,
    Ros1Dobot_bringupPayLoadResponse,
    Ros1Dobot_bringupPayLoadResponseCodec,
    Ros1Dobot_bringupPositiveSolutionRequest,
    Ros1Dobot_bringupPositiveSolutionRequestCodec,
    Ros1Dobot_bringupPositiveSolutionResponse,
    Ros1Dobot_bringupPositiveSolutionResponseCodec,
    Ros1Dobot_bringupPowerOnRequest,
    Ros1Dobot_bringupPowerOnRequestCodec,
    Ros1Dobot_bringupPowerOnResponse,
    Ros1Dobot_bringupPowerOnResponseCodec,
    Ros1Dobot_bringupRelJointMovJRequest,
    Ros1Dobot_bringupRelJointMovJRequestCodec,
    Ros1Dobot_bringupRelJointMovJResponse,
    Ros1Dobot_bringupRelJointMovJResponseCodec,
    Ros1Dobot_bringupRelMovJRequest,
    Ros1Dobot_bringupRelMovJRequestCodec,
    Ros1Dobot_bringupRelMovJResponse,
    Ros1Dobot_bringupRelMovJResponseCodec,
    Ros1Dobot_bringupRelMovJToolRequest,
    Ros1Dobot_bringupRelMovJToolRequestCodec,
    Ros1Dobot_bringupRelMovJToolResponse,
    Ros1Dobot_bringupRelMovJToolResponseCodec,
    Ros1Dobot_bringupRelMovJUserRequest,
    Ros1Dobot_bringupRelMovJUserRequestCodec,
    Ros1Dobot_bringupRelMovJUserResponse,
    Ros1Dobot_bringupRelMovJUserResponseCodec,
    Ros1Dobot_bringupRelMovLRequest,
    Ros1Dobot_bringupRelMovLRequestCodec,
    Ros1Dobot_bringupRelMovLResponse,
    Ros1Dobot_bringupRelMovLResponseCodec,
    Ros1Dobot_bringupRelMovLToolRequest,
    Ros1Dobot_bringupRelMovLToolRequestCodec,
    Ros1Dobot_bringupRelMovLToolResponse,
    Ros1Dobot_bringupRelMovLToolResponseCodec,
    Ros1Dobot_bringupRelMovLUserRequest,
    Ros1Dobot_bringupRelMovLUserRequestCodec,
    Ros1Dobot_bringupRelMovLUserResponse,
    Ros1Dobot_bringupRelMovLUserResponseCodec,
    Ros1Dobot_bringupResetRobotRequest,
    Ros1Dobot_bringupResetRobotRequestCodec,
    Ros1Dobot_bringupResetRobotResponse,
    Ros1Dobot_bringupResetRobotResponseCodec,
    Ros1Dobot_bringupRobotModeRequest,
    Ros1Dobot_bringupRobotModeRequestCodec,
    Ros1Dobot_bringupRobotModeResponse,
    Ros1Dobot_bringupRobotModeResponseCodec,
    Ros1Dobot_bringupRunScriptRequest,
    Ros1Dobot_bringupRunScriptRequestCodec,
    Ros1Dobot_bringupRunScriptResponse,
    Ros1Dobot_bringupRunScriptResponseCodec,
    Ros1Dobot_bringupServoJParamRequest,
    Ros1Dobot_bringupServoJParamRequestCodec,
    Ros1Dobot_bringupServoJParamResponse,
    Ros1Dobot_bringupServoJParamResponseCodec,
    Ros1Dobot_bringupServoJRequest,
    Ros1Dobot_bringupServoJRequestCodec,
    Ros1Dobot_bringupServoJResponse,
    Ros1Dobot_bringupServoJResponseCodec,
    Ros1Dobot_bringupServoPRequest,
    Ros1Dobot_bringupServoPRequestCodec,
    Ros1Dobot_bringupServoPResponse,
    Ros1Dobot_bringupServoPResponseCodec,
    Ros1Dobot_bringupSetArmOrientationRequest,
    Ros1Dobot_bringupSetArmOrientationRequestCodec,
    Ros1Dobot_bringupSetArmOrientationResponse,
    Ros1Dobot_bringupSetArmOrientationResponseCodec,
    Ros1Dobot_bringupSetCoilsRequest,
    Ros1Dobot_bringupSetCoilsRequestCodec,
    Ros1Dobot_bringupSetCoilsResponse,
    Ros1Dobot_bringupSetCoilsResponseCodec,
    Ros1Dobot_bringupSetCollideDragRequest,
    Ros1Dobot_bringupSetCollideDragRequestCodec,
    Ros1Dobot_bringupSetCollideDragResponse,
    Ros1Dobot_bringupSetCollideDragResponseCodec,
    Ros1Dobot_bringupSetCollisionLevelRequest,
    Ros1Dobot_bringupSetCollisionLevelRequestCodec,
    Ros1Dobot_bringupSetCollisionLevelResponse,
    Ros1Dobot_bringupSetCollisionLevelResponseCodec,
    Ros1Dobot_bringupSetHoldRegsRequest,
    Ros1Dobot_bringupSetHoldRegsRequestCodec,
    Ros1Dobot_bringupSetHoldRegsResponse,
    Ros1Dobot_bringupSetHoldRegsResponseCodec,
    Ros1Dobot_bringupSetObstacleAvoidRequest,
    Ros1Dobot_bringupSetObstacleAvoidRequestCodec,
    Ros1Dobot_bringupSetObstacleAvoidResponse,
    Ros1Dobot_bringupSetObstacleAvoidResponseCodec,
    Ros1Dobot_bringupSetPayloadRequest,
    Ros1Dobot_bringupSetPayloadRequestCodec,
    Ros1Dobot_bringupSetPayloadResponse,
    Ros1Dobot_bringupSetPayloadResponseCodec,
    Ros1Dobot_bringupSetSafeSkinRequest,
    Ros1Dobot_bringupSetSafeSkinRequestCodec,
    Ros1Dobot_bringupSetSafeSkinResponse,
    Ros1Dobot_bringupSetSafeSkinResponseCodec,
    Ros1Dobot_bringupSetTerminal485Request,
    Ros1Dobot_bringupSetTerminal485RequestCodec,
    Ros1Dobot_bringupSetTerminal485Response,
    Ros1Dobot_bringupSetTerminal485ResponseCodec,
    Ros1Dobot_bringupSetTerminalKeysRequest,
    Ros1Dobot_bringupSetTerminalKeysRequestCodec,
    Ros1Dobot_bringupSetTerminalKeysResponse,
    Ros1Dobot_bringupSetTerminalKeysResponseCodec,
    Ros1Dobot_bringupSpeedFactorRequest,
    Ros1Dobot_bringupSpeedFactorRequestCodec,
    Ros1Dobot_bringupSpeedFactorResponse,
    Ros1Dobot_bringupSpeedFactorResponseCodec,
    Ros1Dobot_bringupSpeedJRequest,
    Ros1Dobot_bringupSpeedJRequestCodec,
    Ros1Dobot_bringupSpeedJResponse,
    Ros1Dobot_bringupSpeedJResponseCodec,
    Ros1Dobot_bringupSpeedLRequest,
    Ros1Dobot_bringupSpeedLRequestCodec,
    Ros1Dobot_bringupSpeedLResponse,
    Ros1Dobot_bringupSpeedLResponseCodec,
    Ros1Dobot_bringupStartDragRequest,
    Ros1Dobot_bringupStartDragRequestCodec,
    Ros1Dobot_bringupStartDragResponse,
    Ros1Dobot_bringupStartDragResponseCodec,
    Ros1Dobot_bringupStartFCTraceRequest,
    Ros1Dobot_bringupStartFCTraceRequestCodec,
    Ros1Dobot_bringupStartFCTraceResponse,
    Ros1Dobot_bringupStartFCTraceResponseCodec,
    Ros1Dobot_bringupStartPathRequest,
    Ros1Dobot_bringupStartPathRequestCodec,
    Ros1Dobot_bringupStartPathResponse,
    Ros1Dobot_bringupStartPathResponseCodec,
    Ros1Dobot_bringupStartTraceRequest,
    Ros1Dobot_bringupStartTraceRequestCodec,
    Ros1Dobot_bringupStartTraceResponse,
    Ros1Dobot_bringupStartTraceResponseCodec,
    Ros1Dobot_bringupStopDragRequest,
    Ros1Dobot_bringupStopDragRequestCodec,
    Ros1Dobot_bringupStopDragResponse,
    Ros1Dobot_bringupStopDragResponseCodec,
    Ros1Dobot_bringupStopmoveJogRequest,
    Ros1Dobot_bringupStopmoveJogRequestCodec,
    Ros1Dobot_bringupStopmoveJogResponse,
    Ros1Dobot_bringupStopmoveJogResponseCodec,
    Ros1Dobot_bringupStopScriptRequest,
    Ros1Dobot_bringupStopScriptRequestCodec,
    Ros1Dobot_bringupStopScriptResponse,
    Ros1Dobot_bringupStopScriptResponseCodec,
    Ros1Dobot_bringupSyncAllRequest,
    Ros1Dobot_bringupSyncAllRequestCodec,
    Ros1Dobot_bringupSyncAllResponse,
    Ros1Dobot_bringupSyncAllResponseCodec,
    Ros1Dobot_bringupSyncRequest,
    Ros1Dobot_bringupSyncRequestCodec,
    Ros1Dobot_bringupSyncResponse,
    Ros1Dobot_bringupSyncResponseCodec,
    Ros1Dobot_bringupTcpDashboardRequest,
    Ros1Dobot_bringupTcpDashboardRequestCodec,
    Ros1Dobot_bringupTcpDashboardResponse,
    Ros1Dobot_bringupTcpDashboardResponseCodec,
    Ros1Dobot_bringupTcpRealDataRequest,
    Ros1Dobot_bringupTcpRealDataRequestCodec,
    Ros1Dobot_bringupTcpRealDataResponse,
    Ros1Dobot_bringupTcpRealDataResponseCodec,
    Ros1Dobot_bringupTCPSpeedEndRequest,
    Ros1Dobot_bringupTCPSpeedEndRequestCodec,
    Ros1Dobot_bringupTCPSpeedEndResponse,
    Ros1Dobot_bringupTCPSpeedEndResponseCodec,
    Ros1Dobot_bringupTCPSpeedRequest,
    Ros1Dobot_bringupTCPSpeedRequestCodec,
    Ros1Dobot_bringupTCPSpeedResponse,
    Ros1Dobot_bringupTCPSpeedResponseCodec,
    Ros1Dobot_bringupToolAIRequest,
    Ros1Dobot_bringupToolAIRequestCodec,
    Ros1Dobot_bringupToolAIResponse,
    Ros1Dobot_bringupToolAIResponseCodec,
    Ros1Dobot_bringupToolDIRequest,
    Ros1Dobot_bringupToolDIRequestCodec,
    Ros1Dobot_bringupToolDIResponse,
    Ros1Dobot_bringupToolDIResponseCodec,
    Ros1Dobot_bringupToolDOExecuteRequest,
    Ros1Dobot_bringupToolDOExecuteRequestCodec,
    Ros1Dobot_bringupToolDOExecuteResponse,
    Ros1Dobot_bringupToolDOExecuteResponseCodec,
    Ros1Dobot_bringupToolDORequest,
    Ros1Dobot_bringupToolDORequestCodec,
    Ros1Dobot_bringupToolDOResponse,
    Ros1Dobot_bringupToolDOResponseCodec,
    Ros1Dobot_bringupToolRequest,
    Ros1Dobot_bringupToolRequestCodec,
    Ros1Dobot_bringupToolResponse,
    Ros1Dobot_bringupToolResponseCodec,
    Ros1Dobot_bringupUserRequest,
    Ros1Dobot_bringupUserRequestCodec,
    Ros1Dobot_bringupUserResponse,
    Ros1Dobot_bringupUserResponseCodec,
    Ros1Dobot_bringupWaitRequest,
    Ros1Dobot_bringupWaitRequestCodec,
    Ros1Dobot_bringupWaitResponse,
    Ros1Dobot_bringupWaitResponseCodec
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

/** Complete dobot_bringup/AI typed call and real-submit client. */
export class Ros1Dobot_bringupAIClient extends BoundedServiceClient<Ros1Dobot_bringupAIRequest, Ros1Dobot_bringupAIResponse>
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
              new Ros1Dobot_bringupAIRequestCodec(),
              new Ros1Dobot_bringupAIResponseCodec(),
              (value: Ros1Dobot_bringupAIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/AI incoming request/response owner. */
export class Ros1Dobot_bringupAIServer extends BoundedServiceServer<Ros1Dobot_bringupAIRequest, Ros1Dobot_bringupAIResponse>
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
              new Ros1Dobot_bringupAIRequestCodec(),
              new Ros1Dobot_bringupAIResponseCodec(),
              (value: Ros1Dobot_bringupAIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/AO typed call and real-submit client. */
export class Ros1Dobot_bringupAOClient extends BoundedServiceClient<Ros1Dobot_bringupAORequest, Ros1Dobot_bringupAOResponse>
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
              new Ros1Dobot_bringupAORequestCodec(),
              new Ros1Dobot_bringupAOResponseCodec(),
              (value: Ros1Dobot_bringupAORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/AO incoming request/response owner. */
export class Ros1Dobot_bringupAOServer extends BoundedServiceServer<Ros1Dobot_bringupAORequest, Ros1Dobot_bringupAOResponse>
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
              new Ros1Dobot_bringupAORequestCodec(),
              new Ros1Dobot_bringupAOResponseCodec(),
              (value: Ros1Dobot_bringupAOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/AOExecute typed call and real-submit client. */
export class Ros1Dobot_bringupAOExecuteClient extends BoundedServiceClient<Ros1Dobot_bringupAOExecuteRequest, Ros1Dobot_bringupAOExecuteResponse>
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
              new Ros1Dobot_bringupAOExecuteRequestCodec(),
              new Ros1Dobot_bringupAOExecuteResponseCodec(),
              (value: Ros1Dobot_bringupAOExecuteRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/AOExecute incoming request/response owner. */
export class Ros1Dobot_bringupAOExecuteServer extends BoundedServiceServer<Ros1Dobot_bringupAOExecuteRequest, Ros1Dobot_bringupAOExecuteResponse>
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
              new Ros1Dobot_bringupAOExecuteRequestCodec(),
              new Ros1Dobot_bringupAOExecuteResponseCodec(),
              (value: Ros1Dobot_bringupAOExecuteResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/AccJ typed call and real-submit client. */
export class Ros1Dobot_bringupAccJClient extends BoundedServiceClient<Ros1Dobot_bringupAccJRequest, Ros1Dobot_bringupAccJResponse>
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
              new Ros1Dobot_bringupAccJRequestCodec(),
              new Ros1Dobot_bringupAccJResponseCodec(),
              (value: Ros1Dobot_bringupAccJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/AccJ incoming request/response owner. */
export class Ros1Dobot_bringupAccJServer extends BoundedServiceServer<Ros1Dobot_bringupAccJRequest, Ros1Dobot_bringupAccJResponse>
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
              new Ros1Dobot_bringupAccJRequestCodec(),
              new Ros1Dobot_bringupAccJResponseCodec(),
              (value: Ros1Dobot_bringupAccJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/AccL typed call and real-submit client. */
export class Ros1Dobot_bringupAccLClient extends BoundedServiceClient<Ros1Dobot_bringupAccLRequest, Ros1Dobot_bringupAccLResponse>
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
              new Ros1Dobot_bringupAccLRequestCodec(),
              new Ros1Dobot_bringupAccLResponseCodec(),
              (value: Ros1Dobot_bringupAccLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/AccL incoming request/response owner. */
export class Ros1Dobot_bringupAccLServer extends BoundedServiceServer<Ros1Dobot_bringupAccLRequest, Ros1Dobot_bringupAccLResponse>
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
              new Ros1Dobot_bringupAccLRequestCodec(),
              new Ros1Dobot_bringupAccLResponseCodec(),
              (value: Ros1Dobot_bringupAccLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/Arc typed call and real-submit client. */
export class Ros1Dobot_bringupArcClient extends BoundedServiceClient<Ros1Dobot_bringupArcRequest, Ros1Dobot_bringupArcResponse>
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
              new Ros1Dobot_bringupArcRequestCodec(),
              new Ros1Dobot_bringupArcResponseCodec(),
              (value: Ros1Dobot_bringupArcRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Arc incoming request/response owner. */
export class Ros1Dobot_bringupArcServer extends BoundedServiceServer<Ros1Dobot_bringupArcRequest, Ros1Dobot_bringupArcResponse>
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
              new Ros1Dobot_bringupArcRequestCodec(),
              new Ros1Dobot_bringupArcResponseCodec(),
              (value: Ros1Dobot_bringupArcResponse): bool => value.validValue(),
              4260,
              capacity);
    }
}

/** Complete dobot_bringup/Arch typed call and real-submit client. */
export class Ros1Dobot_bringupArchClient extends BoundedServiceClient<Ros1Dobot_bringupArchRequest, Ros1Dobot_bringupArchResponse>
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
              new Ros1Dobot_bringupArchRequestCodec(),
              new Ros1Dobot_bringupArchResponseCodec(),
              (value: Ros1Dobot_bringupArchRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Arch incoming request/response owner. */
export class Ros1Dobot_bringupArchServer extends BoundedServiceServer<Ros1Dobot_bringupArchRequest, Ros1Dobot_bringupArchResponse>
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
              new Ros1Dobot_bringupArchRequestCodec(),
              new Ros1Dobot_bringupArchResponseCodec(),
              (value: Ros1Dobot_bringupArchResponse): bool => value.validValue(),
              4168,
              capacity);
    }
}

/** Complete dobot_bringup/BrakeControl typed call and real-submit client. */
export class Ros1Dobot_bringupBrakeControlClient extends BoundedServiceClient<Ros1Dobot_bringupBrakeControlRequest, Ros1Dobot_bringupBrakeControlResponse>
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
              new Ros1Dobot_bringupBrakeControlRequestCodec(),
              new Ros1Dobot_bringupBrakeControlResponseCodec(),
              (value: Ros1Dobot_bringupBrakeControlRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/BrakeControl incoming request/response owner. */
export class Ros1Dobot_bringupBrakeControlServer extends BoundedServiceServer<Ros1Dobot_bringupBrakeControlRequest, Ros1Dobot_bringupBrakeControlResponse>
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
              new Ros1Dobot_bringupBrakeControlRequestCodec(),
              new Ros1Dobot_bringupBrakeControlResponseCodec(),
              (value: Ros1Dobot_bringupBrakeControlResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/CP typed call and real-submit client. */
export class Ros1Dobot_bringupCPClient extends BoundedServiceClient<Ros1Dobot_bringupCPRequest, Ros1Dobot_bringupCPResponse>
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
              new Ros1Dobot_bringupCPRequestCodec(),
              new Ros1Dobot_bringupCPResponseCodec(),
              (value: Ros1Dobot_bringupCPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/CP incoming request/response owner. */
export class Ros1Dobot_bringupCPServer extends BoundedServiceServer<Ros1Dobot_bringupCPRequest, Ros1Dobot_bringupCPResponse>
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
              new Ros1Dobot_bringupCPRequestCodec(),
              new Ros1Dobot_bringupCPResponseCodec(),
              (value: Ros1Dobot_bringupCPResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/Circle typed call and real-submit client. */
export class Ros1Dobot_bringupCircleClient extends BoundedServiceClient<Ros1Dobot_bringupCircleRequest, Ros1Dobot_bringupCircleResponse>
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
              new Ros1Dobot_bringupCircleRequestCodec(),
              new Ros1Dobot_bringupCircleResponseCodec(),
              (value: Ros1Dobot_bringupCircleRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Circle incoming request/response owner. */
export class Ros1Dobot_bringupCircleServer extends BoundedServiceServer<Ros1Dobot_bringupCircleRequest, Ros1Dobot_bringupCircleResponse>
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
              new Ros1Dobot_bringupCircleRequestCodec(),
              new Ros1Dobot_bringupCircleResponseCodec(),
              (value: Ros1Dobot_bringupCircleResponse): bool => value.validValue(),
              4264,
              capacity);
    }
}

/** Complete dobot_bringup/ClearError typed call and real-submit client. */
export class Ros1Dobot_bringupClearErrorClient extends BoundedServiceClient<Ros1Dobot_bringupClearErrorRequest, Ros1Dobot_bringupClearErrorResponse>
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
              new Ros1Dobot_bringupClearErrorRequestCodec(),
              new Ros1Dobot_bringupClearErrorResponseCodec(),
              (value: Ros1Dobot_bringupClearErrorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ClearError incoming request/response owner. */
export class Ros1Dobot_bringupClearErrorServer extends BoundedServiceServer<Ros1Dobot_bringupClearErrorRequest, Ros1Dobot_bringupClearErrorResponse>
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
              new Ros1Dobot_bringupClearErrorRequestCodec(),
              new Ros1Dobot_bringupClearErrorResponseCodec(),
              (value: Ros1Dobot_bringupClearErrorResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/ContinueScript typed call and real-submit client. */
export class Ros1Dobot_bringupContinueScriptClient extends BoundedServiceClient<Ros1Dobot_bringupContinueScriptRequest, Ros1Dobot_bringupContinueScriptResponse>
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
              new Ros1Dobot_bringupContinueScriptRequestCodec(),
              new Ros1Dobot_bringupContinueScriptResponseCodec(),
              (value: Ros1Dobot_bringupContinueScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ContinueScript incoming request/response owner. */
export class Ros1Dobot_bringupContinueScriptServer extends BoundedServiceServer<Ros1Dobot_bringupContinueScriptRequest, Ros1Dobot_bringupContinueScriptResponse>
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
              new Ros1Dobot_bringupContinueScriptRequestCodec(),
              new Ros1Dobot_bringupContinueScriptResponseCodec(),
              (value: Ros1Dobot_bringupContinueScriptResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/Continues typed call and real-submit client. */
export class Ros1Dobot_bringupContinuesClient extends BoundedServiceClient<Ros1Dobot_bringupContinuesRequest, Ros1Dobot_bringupContinuesResponse>
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
              new Ros1Dobot_bringupContinuesRequestCodec(),
              new Ros1Dobot_bringupContinuesResponseCodec(),
              (value: Ros1Dobot_bringupContinuesRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Continues incoming request/response owner. */
export class Ros1Dobot_bringupContinuesServer extends BoundedServiceServer<Ros1Dobot_bringupContinuesRequest, Ros1Dobot_bringupContinuesResponse>
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
              new Ros1Dobot_bringupContinuesRequestCodec(),
              new Ros1Dobot_bringupContinuesResponseCodec(),
              (value: Ros1Dobot_bringupContinuesResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/DI typed call and real-submit client. */
export class Ros1Dobot_bringupDIClient extends BoundedServiceClient<Ros1Dobot_bringupDIRequest, Ros1Dobot_bringupDIResponse>
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
              new Ros1Dobot_bringupDIRequestCodec(),
              new Ros1Dobot_bringupDIResponseCodec(),
              (value: Ros1Dobot_bringupDIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DI incoming request/response owner. */
export class Ros1Dobot_bringupDIServer extends BoundedServiceServer<Ros1Dobot_bringupDIRequest, Ros1Dobot_bringupDIResponse>
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
              new Ros1Dobot_bringupDIRequestCodec(),
              new Ros1Dobot_bringupDIResponseCodec(),
              (value: Ros1Dobot_bringupDIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/DIGroup typed call and real-submit client. */
export class Ros1Dobot_bringupDIGroupClient extends BoundedServiceClient<Ros1Dobot_bringupDIGroupRequest, Ros1Dobot_bringupDIGroupResponse>
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
              new Ros1Dobot_bringupDIGroupRequestCodec(),
              new Ros1Dobot_bringupDIGroupResponseCodec(),
              (value: Ros1Dobot_bringupDIGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DIGroup incoming request/response owner. */
export class Ros1Dobot_bringupDIGroupServer extends BoundedServiceServer<Ros1Dobot_bringupDIGroupRequest, Ros1Dobot_bringupDIGroupResponse>
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
              new Ros1Dobot_bringupDIGroupRequestCodec(),
              new Ros1Dobot_bringupDIGroupResponseCodec(),
              (value: Ros1Dobot_bringupDIGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_bringup/DO typed call and real-submit client. */
export class Ros1Dobot_bringupDOClient extends BoundedServiceClient<Ros1Dobot_bringupDORequest, Ros1Dobot_bringupDOResponse>
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
              new Ros1Dobot_bringupDORequestCodec(),
              new Ros1Dobot_bringupDOResponseCodec(),
              (value: Ros1Dobot_bringupDORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DO incoming request/response owner. */
export class Ros1Dobot_bringupDOServer extends BoundedServiceServer<Ros1Dobot_bringupDORequest, Ros1Dobot_bringupDOResponse>
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
              new Ros1Dobot_bringupDORequestCodec(),
              new Ros1Dobot_bringupDOResponseCodec(),
              (value: Ros1Dobot_bringupDOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/DOExecute typed call and real-submit client. */
export class Ros1Dobot_bringupDOExecuteClient extends BoundedServiceClient<Ros1Dobot_bringupDOExecuteRequest, Ros1Dobot_bringupDOExecuteResponse>
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
              new Ros1Dobot_bringupDOExecuteRequestCodec(),
              new Ros1Dobot_bringupDOExecuteResponseCodec(),
              (value: Ros1Dobot_bringupDOExecuteRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DOExecute incoming request/response owner. */
export class Ros1Dobot_bringupDOExecuteServer extends BoundedServiceServer<Ros1Dobot_bringupDOExecuteRequest, Ros1Dobot_bringupDOExecuteResponse>
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
              new Ros1Dobot_bringupDOExecuteRequestCodec(),
              new Ros1Dobot_bringupDOExecuteResponseCodec(),
              (value: Ros1Dobot_bringupDOExecuteResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/DOGroup typed call and real-submit client. */
export class Ros1Dobot_bringupDOGroupClient extends BoundedServiceClient<Ros1Dobot_bringupDOGroupRequest, Ros1Dobot_bringupDOGroupResponse>
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
              new Ros1Dobot_bringupDOGroupRequestCodec(),
              new Ros1Dobot_bringupDOGroupResponseCodec(),
              (value: Ros1Dobot_bringupDOGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DOGroup incoming request/response owner. */
export class Ros1Dobot_bringupDOGroupServer extends BoundedServiceServer<Ros1Dobot_bringupDOGroupRequest, Ros1Dobot_bringupDOGroupResponse>
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
              new Ros1Dobot_bringupDOGroupRequestCodec(),
              new Ros1Dobot_bringupDOGroupResponseCodec(),
              (value: Ros1Dobot_bringupDOGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete dobot_bringup/DigitalOutputs typed call and real-submit client. */
export class Ros1Dobot_bringupDigitalOutputsClient extends BoundedServiceClient<Ros1Dobot_bringupDigitalOutputsRequest, Ros1Dobot_bringupDigitalOutputsResponse>
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
              new Ros1Dobot_bringupDigitalOutputsRequestCodec(),
              new Ros1Dobot_bringupDigitalOutputsResponseCodec(),
              (value: Ros1Dobot_bringupDigitalOutputsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DigitalOutputs incoming request/response owner. */
export class Ros1Dobot_bringupDigitalOutputsServer extends BoundedServiceServer<Ros1Dobot_bringupDigitalOutputsRequest, Ros1Dobot_bringupDigitalOutputsResponse>
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
              new Ros1Dobot_bringupDigitalOutputsRequestCodec(),
              new Ros1Dobot_bringupDigitalOutputsResponseCodec(),
              (value: Ros1Dobot_bringupDigitalOutputsResponse): bool => value.validValue(),
              5,
              capacity);
    }
}

/** Complete dobot_bringup/DisableRobot typed call and real-submit client. */
export class Ros1Dobot_bringupDisableRobotClient extends BoundedServiceClient<Ros1Dobot_bringupDisableRobotRequest, Ros1Dobot_bringupDisableRobotResponse>
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
              new Ros1Dobot_bringupDisableRobotRequestCodec(),
              new Ros1Dobot_bringupDisableRobotResponseCodec(),
              (value: Ros1Dobot_bringupDisableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DisableRobot incoming request/response owner. */
export class Ros1Dobot_bringupDisableRobotServer extends BoundedServiceServer<Ros1Dobot_bringupDisableRobotRequest, Ros1Dobot_bringupDisableRobotResponse>
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
              new Ros1Dobot_bringupDisableRobotRequestCodec(),
              new Ros1Dobot_bringupDisableRobotResponseCodec(),
              (value: Ros1Dobot_bringupDisableRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/EmergencyStop typed call and real-submit client. */
export class Ros1Dobot_bringupEmergencyStopClient extends BoundedServiceClient<Ros1Dobot_bringupEmergencyStopRequest, Ros1Dobot_bringupEmergencyStopResponse>
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
              new Ros1Dobot_bringupEmergencyStopRequestCodec(),
              new Ros1Dobot_bringupEmergencyStopResponseCodec(),
              (value: Ros1Dobot_bringupEmergencyStopRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/EmergencyStop incoming request/response owner. */
export class Ros1Dobot_bringupEmergencyStopServer extends BoundedServiceServer<Ros1Dobot_bringupEmergencyStopRequest, Ros1Dobot_bringupEmergencyStopResponse>
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
              new Ros1Dobot_bringupEmergencyStopRequestCodec(),
              new Ros1Dobot_bringupEmergencyStopResponseCodec(),
              (value: Ros1Dobot_bringupEmergencyStopResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/EnableRobot typed call and real-submit client. */
export class Ros1Dobot_bringupEnableRobotClient extends BoundedServiceClient<Ros1Dobot_bringupEnableRobotRequest, Ros1Dobot_bringupEnableRobotResponse>
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
              new Ros1Dobot_bringupEnableRobotRequestCodec(),
              new Ros1Dobot_bringupEnableRobotResponseCodec(),
              (value: Ros1Dobot_bringupEnableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/EnableRobot incoming request/response owner. */
export class Ros1Dobot_bringupEnableRobotServer extends BoundedServiceServer<Ros1Dobot_bringupEnableRobotRequest, Ros1Dobot_bringupEnableRobotResponse>
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
              new Ros1Dobot_bringupEnableRobotRequestCodec(),
              new Ros1Dobot_bringupEnableRobotResponseCodec(),
              (value: Ros1Dobot_bringupEnableRobotResponse): bool => value.validValue(),
              132,
              capacity);
    }
}

/** Complete dobot_bringup/GetAngle typed call and real-submit client. */
export class Ros1Dobot_bringupGetAngleClient extends BoundedServiceClient<Ros1Dobot_bringupGetAngleRequest, Ros1Dobot_bringupGetAngleResponse>
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
              new Ros1Dobot_bringupGetAngleRequestCodec(),
              new Ros1Dobot_bringupGetAngleResponseCodec(),
              (value: Ros1Dobot_bringupGetAngleRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetAngle incoming request/response owner. */
export class Ros1Dobot_bringupGetAngleServer extends BoundedServiceServer<Ros1Dobot_bringupGetAngleRequest, Ros1Dobot_bringupGetAngleResponse>
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
              new Ros1Dobot_bringupGetAngleRequestCodec(),
              new Ros1Dobot_bringupGetAngleResponseCodec(),
              (value: Ros1Dobot_bringupGetAngleResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/GetCoils typed call and real-submit client. */
export class Ros1Dobot_bringupGetCoilsClient extends BoundedServiceClient<Ros1Dobot_bringupGetCoilsRequest, Ros1Dobot_bringupGetCoilsResponse>
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
              new Ros1Dobot_bringupGetCoilsRequestCodec(),
              new Ros1Dobot_bringupGetCoilsResponseCodec(),
              (value: Ros1Dobot_bringupGetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetCoils incoming request/response owner. */
export class Ros1Dobot_bringupGetCoilsServer extends BoundedServiceServer<Ros1Dobot_bringupGetCoilsRequest, Ros1Dobot_bringupGetCoilsResponse>
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
              new Ros1Dobot_bringupGetCoilsRequestCodec(),
              new Ros1Dobot_bringupGetCoilsResponseCodec(),
              (value: Ros1Dobot_bringupGetCoilsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_bringup/GetErrorID typed call and real-submit client. */
export class Ros1Dobot_bringupGetErrorIDClient extends BoundedServiceClient<Ros1Dobot_bringupGetErrorIDRequest, Ros1Dobot_bringupGetErrorIDResponse>
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
              new Ros1Dobot_bringupGetErrorIDRequestCodec(),
              new Ros1Dobot_bringupGetErrorIDResponseCodec(),
              (value: Ros1Dobot_bringupGetErrorIDRequest): bool => value.validValue(),
              72,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetErrorID incoming request/response owner. */
export class Ros1Dobot_bringupGetErrorIDServer extends BoundedServiceServer<Ros1Dobot_bringupGetErrorIDRequest, Ros1Dobot_bringupGetErrorIDResponse>
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
              new Ros1Dobot_bringupGetErrorIDRequestCodec(),
              new Ros1Dobot_bringupGetErrorIDResponseCodec(),
              (value: Ros1Dobot_bringupGetErrorIDResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/GetHoldRegs typed call and real-submit client. */
export class Ros1Dobot_bringupGetHoldRegsClient extends BoundedServiceClient<Ros1Dobot_bringupGetHoldRegsRequest, Ros1Dobot_bringupGetHoldRegsResponse>
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
              new Ros1Dobot_bringupGetHoldRegsRequestCodec(),
              new Ros1Dobot_bringupGetHoldRegsResponseCodec(),
              (value: Ros1Dobot_bringupGetHoldRegsRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetHoldRegs incoming request/response owner. */
export class Ros1Dobot_bringupGetHoldRegsServer extends BoundedServiceServer<Ros1Dobot_bringupGetHoldRegsRequest, Ros1Dobot_bringupGetHoldRegsResponse>
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
              new Ros1Dobot_bringupGetHoldRegsRequestCodec(),
              new Ros1Dobot_bringupGetHoldRegsResponseCodec(),
              (value: Ros1Dobot_bringupGetHoldRegsResponse): bool => value.validValue(),
              4176,
              capacity);
    }
}

/** Complete dobot_bringup/GetInBits typed call and real-submit client. */
export class Ros1Dobot_bringupGetInBitsClient extends BoundedServiceClient<Ros1Dobot_bringupGetInBitsRequest, Ros1Dobot_bringupGetInBitsResponse>
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
              new Ros1Dobot_bringupGetInBitsRequestCodec(),
              new Ros1Dobot_bringupGetInBitsResponseCodec(),
              (value: Ros1Dobot_bringupGetInBitsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetInBits incoming request/response owner. */
export class Ros1Dobot_bringupGetInBitsServer extends BoundedServiceServer<Ros1Dobot_bringupGetInBitsRequest, Ros1Dobot_bringupGetInBitsResponse>
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
              new Ros1Dobot_bringupGetInBitsRequestCodec(),
              new Ros1Dobot_bringupGetInBitsResponseCodec(),
              (value: Ros1Dobot_bringupGetInBitsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete dobot_bringup/GetInRegs typed call and real-submit client. */
export class Ros1Dobot_bringupGetInRegsClient extends BoundedServiceClient<Ros1Dobot_bringupGetInRegsRequest, Ros1Dobot_bringupGetInRegsResponse>
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
              new Ros1Dobot_bringupGetInRegsRequestCodec(),
              new Ros1Dobot_bringupGetInRegsResponseCodec(),
              (value: Ros1Dobot_bringupGetInRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetInRegs incoming request/response owner. */
export class Ros1Dobot_bringupGetInRegsServer extends BoundedServiceServer<Ros1Dobot_bringupGetInRegsRequest, Ros1Dobot_bringupGetInRegsResponse>
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
              new Ros1Dobot_bringupGetInRegsRequestCodec(),
              new Ros1Dobot_bringupGetInRegsResponseCodec(),
              (value: Ros1Dobot_bringupGetInRegsResponse): bool => value.validValue(),
              4176,
              capacity);
    }
}

/** Complete dobot_bringup/GetPathStartPose typed call and real-submit client. */
export class Ros1Dobot_bringupGetPathStartPoseClient extends
    BoundedServiceClient<Ros1Dobot_bringupGetPathStartPoseRequest, Ros1Dobot_bringupGetPathStartPoseResponse>
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
              new Ros1Dobot_bringupGetPathStartPoseRequestCodec(),
              new Ros1Dobot_bringupGetPathStartPoseResponseCodec(),
              (value: Ros1Dobot_bringupGetPathStartPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetPathStartPose incoming request/response owner. */
export class Ros1Dobot_bringupGetPathStartPoseServer extends
    BoundedServiceServer<Ros1Dobot_bringupGetPathStartPoseRequest, Ros1Dobot_bringupGetPathStartPoseResponse>
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
              new Ros1Dobot_bringupGetPathStartPoseRequestCodec(),
              new Ros1Dobot_bringupGetPathStartPoseResponseCodec(),
              (value: Ros1Dobot_bringupGetPathStartPoseResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_bringup/GetPose typed call and real-submit client. */
export class Ros1Dobot_bringupGetPoseClient extends BoundedServiceClient<Ros1Dobot_bringupGetPoseRequest, Ros1Dobot_bringupGetPoseResponse>
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
              new Ros1Dobot_bringupGetPoseRequestCodec(),
              new Ros1Dobot_bringupGetPoseResponseCodec(),
              (value: Ros1Dobot_bringupGetPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetPose incoming request/response owner. */
export class Ros1Dobot_bringupGetPoseServer extends BoundedServiceServer<Ros1Dobot_bringupGetPoseRequest, Ros1Dobot_bringupGetPoseResponse>
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
              new Ros1Dobot_bringupGetPoseRequestCodec(),
              new Ros1Dobot_bringupGetPoseResponseCodec(),
              (value: Ros1Dobot_bringupGetPoseResponse): bool => value.validValue(),
              136,
              capacity);
    }
}

/** Complete dobot_bringup/GetSixForceData typed call and real-submit client. */
export class Ros1Dobot_bringupGetSixForceDataClient extends
    BoundedServiceClient<Ros1Dobot_bringupGetSixForceDataRequest, Ros1Dobot_bringupGetSixForceDataResponse>
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
              new Ros1Dobot_bringupGetSixForceDataRequestCodec(),
              new Ros1Dobot_bringupGetSixForceDataResponseCodec(),
              (value: Ros1Dobot_bringupGetSixForceDataRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetSixForceData incoming request/response owner. */
export class Ros1Dobot_bringupGetSixForceDataServer extends
    BoundedServiceServer<Ros1Dobot_bringupGetSixForceDataRequest, Ros1Dobot_bringupGetSixForceDataResponse>
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
              new Ros1Dobot_bringupGetSixForceDataRequestCodec(),
              new Ros1Dobot_bringupGetSixForceDataResponseCodec(),
              (value: Ros1Dobot_bringupGetSixForceDataResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/GetTerminal485 typed call and real-submit client. */
export class Ros1Dobot_bringupGetTerminal485Client extends BoundedServiceClient<Ros1Dobot_bringupGetTerminal485Request, Ros1Dobot_bringupGetTerminal485Response>
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
              new Ros1Dobot_bringupGetTerminal485RequestCodec(),
              new Ros1Dobot_bringupGetTerminal485ResponseCodec(),
              (value: Ros1Dobot_bringupGetTerminal485Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetTerminal485 incoming request/response owner. */
export class Ros1Dobot_bringupGetTerminal485Server extends BoundedServiceServer<Ros1Dobot_bringupGetTerminal485Request, Ros1Dobot_bringupGetTerminal485Response>
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
              new Ros1Dobot_bringupGetTerminal485RequestCodec(),
              new Ros1Dobot_bringupGetTerminal485ResponseCodec(),
              (value: Ros1Dobot_bringupGetTerminal485Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/GetTraceStartPose typed call and real-submit client. */
export class Ros1Dobot_bringupGetTraceStartPoseClient extends
    BoundedServiceClient<Ros1Dobot_bringupGetTraceStartPoseRequest, Ros1Dobot_bringupGetTraceStartPoseResponse>
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
              new Ros1Dobot_bringupGetTraceStartPoseRequestCodec(),
              new Ros1Dobot_bringupGetTraceStartPoseResponseCodec(),
              (value: Ros1Dobot_bringupGetTraceStartPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetTraceStartPose incoming request/response owner. */
export class Ros1Dobot_bringupGetTraceStartPoseServer extends
    BoundedServiceServer<Ros1Dobot_bringupGetTraceStartPoseRequest, Ros1Dobot_bringupGetTraceStartPoseResponse>
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
              new Ros1Dobot_bringupGetTraceStartPoseRequestCodec(),
              new Ros1Dobot_bringupGetTraceStartPoseResponseCodec(),
              (value: Ros1Dobot_bringupGetTraceStartPoseResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_bringup/HandleTrajPoints typed call and real-submit client. */
export class Ros1Dobot_bringupHandleTrajPointsClient extends
    BoundedServiceClient<Ros1Dobot_bringupHandleTrajPointsRequest, Ros1Dobot_bringupHandleTrajPointsResponse>
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
              new Ros1Dobot_bringupHandleTrajPointsRequestCodec(),
              new Ros1Dobot_bringupHandleTrajPointsResponseCodec(),
              (value: Ros1Dobot_bringupHandleTrajPointsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/HandleTrajPoints incoming request/response owner. */
export class Ros1Dobot_bringupHandleTrajPointsServer extends
    BoundedServiceServer<Ros1Dobot_bringupHandleTrajPointsRequest, Ros1Dobot_bringupHandleTrajPointsResponse>
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
              new Ros1Dobot_bringupHandleTrajPointsRequestCodec(),
              new Ros1Dobot_bringupHandleTrajPointsResponseCodec(),
              (value: Ros1Dobot_bringupHandleTrajPointsResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_bringup/InverseSolution typed call and real-submit client. */
export class Ros1Dobot_bringupInverseSolutionClient extends
    BoundedServiceClient<Ros1Dobot_bringupInverseSolutionRequest, Ros1Dobot_bringupInverseSolutionResponse>
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
              new Ros1Dobot_bringupInverseSolutionRequestCodec(),
              new Ros1Dobot_bringupInverseSolutionResponseCodec(),
              (value: Ros1Dobot_bringupInverseSolutionRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/InverseSolution incoming request/response owner. */
export class Ros1Dobot_bringupInverseSolutionServer extends
    BoundedServiceServer<Ros1Dobot_bringupInverseSolutionRequest, Ros1Dobot_bringupInverseSolutionResponse>
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
              new Ros1Dobot_bringupInverseSolutionRequestCodec(),
              new Ros1Dobot_bringupInverseSolutionResponseCodec(),
              (value: Ros1Dobot_bringupInverseSolutionResponse): bool => value.validValue(),
              320,
              capacity);
    }
}

/** Complete dobot_bringup/JointMovJ typed call and real-submit client. */
export class Ros1Dobot_bringupJointMovJClient extends BoundedServiceClient<Ros1Dobot_bringupJointMovJRequest, Ros1Dobot_bringupJointMovJResponse>
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
              new Ros1Dobot_bringupJointMovJRequestCodec(),
              new Ros1Dobot_bringupJointMovJResponseCodec(),
              (value: Ros1Dobot_bringupJointMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/JointMovJ incoming request/response owner. */
export class Ros1Dobot_bringupJointMovJServer extends BoundedServiceServer<Ros1Dobot_bringupJointMovJRequest, Ros1Dobot_bringupJointMovJResponse>
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
              new Ros1Dobot_bringupJointMovJRequestCodec(),
              new Ros1Dobot_bringupJointMovJResponseCodec(),
              (value: Ros1Dobot_bringupJointMovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_bringup/Jump typed call and real-submit client. */
export class Ros1Dobot_bringupJumpClient extends BoundedServiceClient<Ros1Dobot_bringupJumpRequest, Ros1Dobot_bringupJumpResponse>
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
              new Ros1Dobot_bringupJumpRequestCodec(),
              new Ros1Dobot_bringupJumpResponseCodec(),
              (value: Ros1Dobot_bringupJumpRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Jump incoming request/response owner. */
export class Ros1Dobot_bringupJumpServer extends BoundedServiceServer<Ros1Dobot_bringupJumpRequest, Ros1Dobot_bringupJumpResponse>
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
              new Ros1Dobot_bringupJumpRequestCodec(),
              new Ros1Dobot_bringupJumpResponseCodec(),
              (value: Ros1Dobot_bringupJumpResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dobot_bringup/LimZ typed call and real-submit client. */
export class Ros1Dobot_bringupLimZClient extends BoundedServiceClient<Ros1Dobot_bringupLimZRequest, Ros1Dobot_bringupLimZResponse>
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
              new Ros1Dobot_bringupLimZRequestCodec(),
              new Ros1Dobot_bringupLimZResponseCodec(),
              (value: Ros1Dobot_bringupLimZRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/LimZ incoming request/response owner. */
export class Ros1Dobot_bringupLimZServer extends BoundedServiceServer<Ros1Dobot_bringupLimZRequest, Ros1Dobot_bringupLimZResponse>
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
              new Ros1Dobot_bringupLimZRequestCodec(),
              new Ros1Dobot_bringupLimZResponseCodec(),
              (value: Ros1Dobot_bringupLimZResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/LoadSwitch typed call and real-submit client. */
export class Ros1Dobot_bringupLoadSwitchClient extends BoundedServiceClient<Ros1Dobot_bringupLoadSwitchRequest, Ros1Dobot_bringupLoadSwitchResponse>
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
              new Ros1Dobot_bringupLoadSwitchRequestCodec(),
              new Ros1Dobot_bringupLoadSwitchResponseCodec(),
              (value: Ros1Dobot_bringupLoadSwitchRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/LoadSwitch incoming request/response owner. */
export class Ros1Dobot_bringupLoadSwitchServer extends BoundedServiceServer<Ros1Dobot_bringupLoadSwitchRequest, Ros1Dobot_bringupLoadSwitchResponse>
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
              new Ros1Dobot_bringupLoadSwitchRequestCodec(),
              new Ros1Dobot_bringupLoadSwitchResponseCodec(),
              (value: Ros1Dobot_bringupLoadSwitchResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/ModbusClose typed call and real-submit client. */
export class Ros1Dobot_bringupModbusCloseClient extends BoundedServiceClient<Ros1Dobot_bringupModbusCloseRequest, Ros1Dobot_bringupModbusCloseResponse>
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
              new Ros1Dobot_bringupModbusCloseRequestCodec(),
              new Ros1Dobot_bringupModbusCloseResponseCodec(),
              (value: Ros1Dobot_bringupModbusCloseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ModbusClose incoming request/response owner. */
export class Ros1Dobot_bringupModbusCloseServer extends BoundedServiceServer<Ros1Dobot_bringupModbusCloseRequest, Ros1Dobot_bringupModbusCloseResponse>
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
              new Ros1Dobot_bringupModbusCloseRequestCodec(),
              new Ros1Dobot_bringupModbusCloseResponseCodec(),
              (value: Ros1Dobot_bringupModbusCloseResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/ModbusCreate typed call and real-submit client. */
export class Ros1Dobot_bringupModbusCreateClient extends BoundedServiceClient<Ros1Dobot_bringupModbusCreateRequest, Ros1Dobot_bringupModbusCreateResponse>
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
              new Ros1Dobot_bringupModbusCreateRequestCodec(),
              new Ros1Dobot_bringupModbusCreateResponseCodec(),
              (value: Ros1Dobot_bringupModbusCreateRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ModbusCreate incoming request/response owner. */
export class Ros1Dobot_bringupModbusCreateServer extends BoundedServiceServer<Ros1Dobot_bringupModbusCreateRequest, Ros1Dobot_bringupModbusCreateResponse>
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
              new Ros1Dobot_bringupModbusCreateRequestCodec(),
              new Ros1Dobot_bringupModbusCreateResponseCodec(),
              (value: Ros1Dobot_bringupModbusCreateResponse): bool => value.validValue(),
              336,
              capacity);
    }
}

/** Complete dobot_bringup/MovJ typed call and real-submit client. */
export class Ros1Dobot_bringupMovJClient extends BoundedServiceClient<Ros1Dobot_bringupMovJRequest, Ros1Dobot_bringupMovJResponse>
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
              new Ros1Dobot_bringupMovJRequestCodec(),
              new Ros1Dobot_bringupMovJResponseCodec(),
              (value: Ros1Dobot_bringupMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/MovJ incoming request/response owner. */
export class Ros1Dobot_bringupMovJServer extends BoundedServiceServer<Ros1Dobot_bringupMovJRequest, Ros1Dobot_bringupMovJResponse>
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
              new Ros1Dobot_bringupMovJRequestCodec(),
              new Ros1Dobot_bringupMovJResponseCodec(),
              (value: Ros1Dobot_bringupMovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_bringup/MovJExt typed call and real-submit client. */
export class Ros1Dobot_bringupMovJExtClient extends BoundedServiceClient<Ros1Dobot_bringupMovJExtRequest, Ros1Dobot_bringupMovJExtResponse>
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
              new Ros1Dobot_bringupMovJExtRequestCodec(),
              new Ros1Dobot_bringupMovJExtResponseCodec(),
              (value: Ros1Dobot_bringupMovJExtRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/MovJExt incoming request/response owner. */
export class Ros1Dobot_bringupMovJExtServer extends BoundedServiceServer<Ros1Dobot_bringupMovJExtRequest, Ros1Dobot_bringupMovJExtResponse>
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
              new Ros1Dobot_bringupMovJExtRequestCodec(),
              new Ros1Dobot_bringupMovJExtResponseCodec(),
              (value: Ros1Dobot_bringupMovJExtResponse): bool => value.validValue(),
              4172,
              capacity);
    }
}

/** Complete dobot_bringup/MovJIO typed call and real-submit client. */
export class Ros1Dobot_bringupMovJIOClient extends BoundedServiceClient<Ros1Dobot_bringupMovJIORequest, Ros1Dobot_bringupMovJIOResponse>
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
              new Ros1Dobot_bringupMovJIORequestCodec(),
              new Ros1Dobot_bringupMovJIOResponseCodec(),
              (value: Ros1Dobot_bringupMovJIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/MovJIO incoming request/response owner. */
export class Ros1Dobot_bringupMovJIOServer extends BoundedServiceServer<Ros1Dobot_bringupMovJIORequest, Ros1Dobot_bringupMovJIOResponse>
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
              new Ros1Dobot_bringupMovJIORequestCodec(),
              new Ros1Dobot_bringupMovJIOResponseCodec(),
              (value: Ros1Dobot_bringupMovJIOResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_bringup/MovL typed call and real-submit client. */
export class Ros1Dobot_bringupMovLClient extends BoundedServiceClient<Ros1Dobot_bringupMovLRequest, Ros1Dobot_bringupMovLResponse>
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
              new Ros1Dobot_bringupMovLRequestCodec(),
              new Ros1Dobot_bringupMovLResponseCodec(),
              (value: Ros1Dobot_bringupMovLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/MovL incoming request/response owner. */
export class Ros1Dobot_bringupMovLServer extends BoundedServiceServer<Ros1Dobot_bringupMovLRequest, Ros1Dobot_bringupMovLResponse>
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
              new Ros1Dobot_bringupMovLRequestCodec(),
              new Ros1Dobot_bringupMovLResponseCodec(),
              (value: Ros1Dobot_bringupMovLResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_bringup/MovLIO typed call and real-submit client. */
export class Ros1Dobot_bringupMovLIOClient extends BoundedServiceClient<Ros1Dobot_bringupMovLIORequest, Ros1Dobot_bringupMovLIOResponse>
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
              new Ros1Dobot_bringupMovLIORequestCodec(),
              new Ros1Dobot_bringupMovLIOResponseCodec(),
              (value: Ros1Dobot_bringupMovLIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/MovLIO incoming request/response owner. */
export class Ros1Dobot_bringupMovLIOServer extends BoundedServiceServer<Ros1Dobot_bringupMovLIORequest, Ros1Dobot_bringupMovLIOResponse>
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
              new Ros1Dobot_bringupMovLIORequestCodec(),
              new Ros1Dobot_bringupMovLIOResponseCodec(),
              (value: Ros1Dobot_bringupMovLIOResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_bringup/MoveJog typed call and real-submit client. */
export class Ros1Dobot_bringupMoveJogClient extends BoundedServiceClient<Ros1Dobot_bringupMoveJogRequest, Ros1Dobot_bringupMoveJogResponse>
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
              new Ros1Dobot_bringupMoveJogRequestCodec(),
              new Ros1Dobot_bringupMoveJogResponseCodec(),
              (value: Ros1Dobot_bringupMoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/MoveJog incoming request/response owner. */
export class Ros1Dobot_bringupMoveJogServer extends BoundedServiceServer<Ros1Dobot_bringupMoveJogRequest, Ros1Dobot_bringupMoveJogResponse>
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
              new Ros1Dobot_bringupMoveJogRequestCodec(),
              new Ros1Dobot_bringupMoveJogResponseCodec(),
              (value: Ros1Dobot_bringupMoveJogResponse): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete dobot_bringup/PauseScript typed call and real-submit client. */
export class Ros1Dobot_bringupPauseScriptClient extends BoundedServiceClient<Ros1Dobot_bringupPauseScriptRequest, Ros1Dobot_bringupPauseScriptResponse>
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
              new Ros1Dobot_bringupPauseScriptRequestCodec(),
              new Ros1Dobot_bringupPauseScriptResponseCodec(),
              (value: Ros1Dobot_bringupPauseScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/PauseScript incoming request/response owner. */
export class Ros1Dobot_bringupPauseScriptServer extends BoundedServiceServer<Ros1Dobot_bringupPauseScriptRequest, Ros1Dobot_bringupPauseScriptResponse>
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
              new Ros1Dobot_bringupPauseScriptRequestCodec(),
              new Ros1Dobot_bringupPauseScriptResponseCodec(),
              (value: Ros1Dobot_bringupPauseScriptResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/PayLoad typed call and real-submit client. */
export class Ros1Dobot_bringupPayLoadClient extends BoundedServiceClient<Ros1Dobot_bringupPayLoadRequest, Ros1Dobot_bringupPayLoadResponse>
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
              new Ros1Dobot_bringupPayLoadRequestCodec(),
              new Ros1Dobot_bringupPayLoadResponseCodec(),
              (value: Ros1Dobot_bringupPayLoadRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/PayLoad incoming request/response owner. */
export class Ros1Dobot_bringupPayLoadServer extends BoundedServiceServer<Ros1Dobot_bringupPayLoadRequest, Ros1Dobot_bringupPayLoadResponse>
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
              new Ros1Dobot_bringupPayLoadRequestCodec(),
              new Ros1Dobot_bringupPayLoadResponseCodec(),
              (value: Ros1Dobot_bringupPayLoadResponse): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete dobot_bringup/PositiveSolution typed call and real-submit client. */
export class Ros1Dobot_bringupPositiveSolutionClient extends
    BoundedServiceClient<Ros1Dobot_bringupPositiveSolutionRequest, Ros1Dobot_bringupPositiveSolutionResponse>
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
              new Ros1Dobot_bringupPositiveSolutionRequestCodec(),
              new Ros1Dobot_bringupPositiveSolutionResponseCodec(),
              (value: Ros1Dobot_bringupPositiveSolutionRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/PositiveSolution incoming request/response owner. */
export class Ros1Dobot_bringupPositiveSolutionServer extends
    BoundedServiceServer<Ros1Dobot_bringupPositiveSolutionRequest, Ros1Dobot_bringupPositiveSolutionResponse>
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
              new Ros1Dobot_bringupPositiveSolutionRequestCodec(),
              new Ros1Dobot_bringupPositiveSolutionResponseCodec(),
              (value: Ros1Dobot_bringupPositiveSolutionResponse): bool => value.validValue(),
              56,
              capacity);
    }
}

/** Complete dobot_bringup/PowerOn typed call and real-submit client. */
export class Ros1Dobot_bringupPowerOnClient extends BoundedServiceClient<Ros1Dobot_bringupPowerOnRequest, Ros1Dobot_bringupPowerOnResponse>
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
              new Ros1Dobot_bringupPowerOnRequestCodec(),
              new Ros1Dobot_bringupPowerOnResponseCodec(),
              (value: Ros1Dobot_bringupPowerOnRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/PowerOn incoming request/response owner. */
export class Ros1Dobot_bringupPowerOnServer extends BoundedServiceServer<Ros1Dobot_bringupPowerOnRequest, Ros1Dobot_bringupPowerOnResponse>
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
              new Ros1Dobot_bringupPowerOnRequestCodec(),
              new Ros1Dobot_bringupPowerOnResponseCodec(),
              (value: Ros1Dobot_bringupPowerOnResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/RelJointMovJ typed call and real-submit client. */
export class Ros1Dobot_bringupRelJointMovJClient extends BoundedServiceClient<Ros1Dobot_bringupRelJointMovJRequest, Ros1Dobot_bringupRelJointMovJResponse>
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
              new Ros1Dobot_bringupRelJointMovJRequestCodec(),
              new Ros1Dobot_bringupRelJointMovJResponseCodec(),
              (value: Ros1Dobot_bringupRelJointMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelJointMovJ incoming request/response owner. */
export class Ros1Dobot_bringupRelJointMovJServer extends BoundedServiceServer<Ros1Dobot_bringupRelJointMovJRequest, Ros1Dobot_bringupRelJointMovJResponse>
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
              new Ros1Dobot_bringupRelJointMovJRequestCodec(),
              new Ros1Dobot_bringupRelJointMovJResponseCodec(),
              (value: Ros1Dobot_bringupRelJointMovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJ typed call and real-submit client. */
export class Ros1Dobot_bringupRelMovJClient extends BoundedServiceClient<Ros1Dobot_bringupRelMovJRequest, Ros1Dobot_bringupRelMovJResponse>
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
              new Ros1Dobot_bringupRelMovJRequestCodec(),
              new Ros1Dobot_bringupRelMovJResponseCodec(),
              (value: Ros1Dobot_bringupRelMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJ incoming request/response owner. */
export class Ros1Dobot_bringupRelMovJServer extends BoundedServiceServer<Ros1Dobot_bringupRelMovJRequest, Ros1Dobot_bringupRelMovJResponse>
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
              new Ros1Dobot_bringupRelMovJRequestCodec(),
              new Ros1Dobot_bringupRelMovJResponseCodec(),
              (value: Ros1Dobot_bringupRelMovJResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJTool typed call and real-submit client. */
export class Ros1Dobot_bringupRelMovJToolClient extends BoundedServiceClient<Ros1Dobot_bringupRelMovJToolRequest, Ros1Dobot_bringupRelMovJToolResponse>
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
              new Ros1Dobot_bringupRelMovJToolRequestCodec(),
              new Ros1Dobot_bringupRelMovJToolResponseCodec(),
              (value: Ros1Dobot_bringupRelMovJToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJTool incoming request/response owner. */
export class Ros1Dobot_bringupRelMovJToolServer extends BoundedServiceServer<Ros1Dobot_bringupRelMovJToolRequest, Ros1Dobot_bringupRelMovJToolResponse>
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
              new Ros1Dobot_bringupRelMovJToolRequestCodec(),
              new Ros1Dobot_bringupRelMovJToolResponseCodec(),
              (value: Ros1Dobot_bringupRelMovJToolResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJUser typed call and real-submit client. */
export class Ros1Dobot_bringupRelMovJUserClient extends BoundedServiceClient<Ros1Dobot_bringupRelMovJUserRequest, Ros1Dobot_bringupRelMovJUserResponse>
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
              new Ros1Dobot_bringupRelMovJUserRequestCodec(),
              new Ros1Dobot_bringupRelMovJUserResponseCodec(),
              (value: Ros1Dobot_bringupRelMovJUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJUser incoming request/response owner. */
export class Ros1Dobot_bringupRelMovJUserServer extends BoundedServiceServer<Ros1Dobot_bringupRelMovJUserRequest, Ros1Dobot_bringupRelMovJUserResponse>
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
              new Ros1Dobot_bringupRelMovJUserRequestCodec(),
              new Ros1Dobot_bringupRelMovJUserResponseCodec(),
              (value: Ros1Dobot_bringupRelMovJUserResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovL typed call and real-submit client. */
export class Ros1Dobot_bringupRelMovLClient extends BoundedServiceClient<Ros1Dobot_bringupRelMovLRequest, Ros1Dobot_bringupRelMovLResponse>
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
              new Ros1Dobot_bringupRelMovLRequestCodec(),
              new Ros1Dobot_bringupRelMovLResponseCodec(),
              (value: Ros1Dobot_bringupRelMovLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovL incoming request/response owner. */
export class Ros1Dobot_bringupRelMovLServer extends BoundedServiceServer<Ros1Dobot_bringupRelMovLRequest, Ros1Dobot_bringupRelMovLResponse>
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
              new Ros1Dobot_bringupRelMovLRequestCodec(),
              new Ros1Dobot_bringupRelMovLResponseCodec(),
              (value: Ros1Dobot_bringupRelMovLResponse): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovLTool typed call and real-submit client. */
export class Ros1Dobot_bringupRelMovLToolClient extends BoundedServiceClient<Ros1Dobot_bringupRelMovLToolRequest, Ros1Dobot_bringupRelMovLToolResponse>
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
              new Ros1Dobot_bringupRelMovLToolRequestCodec(),
              new Ros1Dobot_bringupRelMovLToolResponseCodec(),
              (value: Ros1Dobot_bringupRelMovLToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovLTool incoming request/response owner. */
export class Ros1Dobot_bringupRelMovLToolServer extends BoundedServiceServer<Ros1Dobot_bringupRelMovLToolRequest, Ros1Dobot_bringupRelMovLToolResponse>
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
              new Ros1Dobot_bringupRelMovLToolRequestCodec(),
              new Ros1Dobot_bringupRelMovLToolResponseCodec(),
              (value: Ros1Dobot_bringupRelMovLToolResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovLUser typed call and real-submit client. */
export class Ros1Dobot_bringupRelMovLUserClient extends BoundedServiceClient<Ros1Dobot_bringupRelMovLUserRequest, Ros1Dobot_bringupRelMovLUserResponse>
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
              new Ros1Dobot_bringupRelMovLUserRequestCodec(),
              new Ros1Dobot_bringupRelMovLUserResponseCodec(),
              (value: Ros1Dobot_bringupRelMovLUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovLUser incoming request/response owner. */
export class Ros1Dobot_bringupRelMovLUserServer extends BoundedServiceServer<Ros1Dobot_bringupRelMovLUserRequest, Ros1Dobot_bringupRelMovLUserResponse>
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
              new Ros1Dobot_bringupRelMovLUserRequestCodec(),
              new Ros1Dobot_bringupRelMovLUserResponseCodec(),
              (value: Ros1Dobot_bringupRelMovLUserResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete dobot_bringup/ResetRobot typed call and real-submit client. */
export class Ros1Dobot_bringupResetRobotClient extends BoundedServiceClient<Ros1Dobot_bringupResetRobotRequest, Ros1Dobot_bringupResetRobotResponse>
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
              new Ros1Dobot_bringupResetRobotRequestCodec(),
              new Ros1Dobot_bringupResetRobotResponseCodec(),
              (value: Ros1Dobot_bringupResetRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ResetRobot incoming request/response owner. */
export class Ros1Dobot_bringupResetRobotServer extends BoundedServiceServer<Ros1Dobot_bringupResetRobotRequest, Ros1Dobot_bringupResetRobotResponse>
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
              new Ros1Dobot_bringupResetRobotRequestCodec(),
              new Ros1Dobot_bringupResetRobotResponseCodec(),
              (value: Ros1Dobot_bringupResetRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/RobotMode typed call and real-submit client. */
export class Ros1Dobot_bringupRobotModeClient extends BoundedServiceClient<Ros1Dobot_bringupRobotModeRequest, Ros1Dobot_bringupRobotModeResponse>
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
              new Ros1Dobot_bringupRobotModeRequestCodec(),
              new Ros1Dobot_bringupRobotModeResponseCodec(),
              (value: Ros1Dobot_bringupRobotModeRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RobotMode incoming request/response owner. */
export class Ros1Dobot_bringupRobotModeServer extends BoundedServiceServer<Ros1Dobot_bringupRobotModeRequest, Ros1Dobot_bringupRobotModeResponse>
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
              new Ros1Dobot_bringupRobotModeRequestCodec(),
              new Ros1Dobot_bringupRobotModeResponseCodec(),
              (value: Ros1Dobot_bringupRobotModeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/RunScript typed call and real-submit client. */
export class Ros1Dobot_bringupRunScriptClient extends BoundedServiceClient<Ros1Dobot_bringupRunScriptRequest, Ros1Dobot_bringupRunScriptResponse>
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
              new Ros1Dobot_bringupRunScriptRequestCodec(),
              new Ros1Dobot_bringupRunScriptResponseCodec(),
              (value: Ros1Dobot_bringupRunScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RunScript incoming request/response owner. */
export class Ros1Dobot_bringupRunScriptServer extends BoundedServiceServer<Ros1Dobot_bringupRunScriptRequest, Ros1Dobot_bringupRunScriptResponse>
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
              new Ros1Dobot_bringupRunScriptRequestCodec(),
              new Ros1Dobot_bringupRunScriptResponseCodec(),
              (value: Ros1Dobot_bringupRunScriptResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_bringup/ServoJ typed call and real-submit client. */
export class Ros1Dobot_bringupServoJClient extends BoundedServiceClient<Ros1Dobot_bringupServoJRequest, Ros1Dobot_bringupServoJResponse>
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
              new Ros1Dobot_bringupServoJRequestCodec(),
              new Ros1Dobot_bringupServoJResponseCodec(),
              (value: Ros1Dobot_bringupServoJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ServoJ incoming request/response owner. */
export class Ros1Dobot_bringupServoJServer extends BoundedServiceServer<Ros1Dobot_bringupServoJRequest, Ros1Dobot_bringupServoJResponse>
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
              new Ros1Dobot_bringupServoJRequestCodec(),
              new Ros1Dobot_bringupServoJResponseCodec(),
              (value: Ros1Dobot_bringupServoJResponse): bool => value.validValue(),
              444,
              capacity);
    }
}

/** Complete dobot_bringup/ServoJParam typed call and real-submit client. */
export class Ros1Dobot_bringupServoJParamClient extends BoundedServiceClient<Ros1Dobot_bringupServoJParamRequest, Ros1Dobot_bringupServoJParamResponse>
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
              new Ros1Dobot_bringupServoJParamRequestCodec(),
              new Ros1Dobot_bringupServoJParamResponseCodec(),
              (value: Ros1Dobot_bringupServoJParamRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ServoJParam incoming request/response owner. */
export class Ros1Dobot_bringupServoJParamServer extends BoundedServiceServer<Ros1Dobot_bringupServoJParamRequest, Ros1Dobot_bringupServoJParamResponse>
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
              new Ros1Dobot_bringupServoJParamRequestCodec(),
              new Ros1Dobot_bringupServoJParamResponseCodec(),
              (value: Ros1Dobot_bringupServoJParamResponse): bool => value.validValue(),
              32,
              capacity);
    }
}

/** Complete dobot_bringup/ServoP typed call and real-submit client. */
export class Ros1Dobot_bringupServoPClient extends BoundedServiceClient<Ros1Dobot_bringupServoPRequest, Ros1Dobot_bringupServoPResponse>
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
              new Ros1Dobot_bringupServoPRequestCodec(),
              new Ros1Dobot_bringupServoPResponseCodec(),
              (value: Ros1Dobot_bringupServoPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ServoP incoming request/response owner. */
export class Ros1Dobot_bringupServoPServer extends BoundedServiceServer<Ros1Dobot_bringupServoPRequest, Ros1Dobot_bringupServoPResponse>
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
              new Ros1Dobot_bringupServoPRequestCodec(),
              new Ros1Dobot_bringupServoPResponseCodec(),
              (value: Ros1Dobot_bringupServoPResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete dobot_bringup/SetArmOrientation typed call and real-submit client. */
export class Ros1Dobot_bringupSetArmOrientationClient extends
    BoundedServiceClient<Ros1Dobot_bringupSetArmOrientationRequest, Ros1Dobot_bringupSetArmOrientationResponse>
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
              new Ros1Dobot_bringupSetArmOrientationRequestCodec(),
              new Ros1Dobot_bringupSetArmOrientationResponseCodec(),
              (value: Ros1Dobot_bringupSetArmOrientationRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetArmOrientation incoming request/response owner. */
export class Ros1Dobot_bringupSetArmOrientationServer extends
    BoundedServiceServer<Ros1Dobot_bringupSetArmOrientationRequest, Ros1Dobot_bringupSetArmOrientationResponse>
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
              new Ros1Dobot_bringupSetArmOrientationRequestCodec(),
              new Ros1Dobot_bringupSetArmOrientationResponseCodec(),
              (value: Ros1Dobot_bringupSetArmOrientationResponse): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete dobot_bringup/SetCoils typed call and real-submit client. */
export class Ros1Dobot_bringupSetCoilsClient extends BoundedServiceClient<Ros1Dobot_bringupSetCoilsRequest, Ros1Dobot_bringupSetCoilsResponse>
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
              new Ros1Dobot_bringupSetCoilsRequestCodec(),
              new Ros1Dobot_bringupSetCoilsResponseCodec(),
              (value: Ros1Dobot_bringupSetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetCoils incoming request/response owner. */
export class Ros1Dobot_bringupSetCoilsServer extends BoundedServiceServer<Ros1Dobot_bringupSetCoilsRequest, Ros1Dobot_bringupSetCoilsResponse>
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
              new Ros1Dobot_bringupSetCoilsRequestCodec(),
              new Ros1Dobot_bringupSetCoilsResponseCodec(),
              (value: Ros1Dobot_bringupSetCoilsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_bringup/SetCollideDrag typed call and real-submit client. */
export class Ros1Dobot_bringupSetCollideDragClient extends BoundedServiceClient<Ros1Dobot_bringupSetCollideDragRequest, Ros1Dobot_bringupSetCollideDragResponse>
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
              new Ros1Dobot_bringupSetCollideDragRequestCodec(),
              new Ros1Dobot_bringupSetCollideDragResponseCodec(),
              (value: Ros1Dobot_bringupSetCollideDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetCollideDrag incoming request/response owner. */
export class Ros1Dobot_bringupSetCollideDragServer extends BoundedServiceServer<Ros1Dobot_bringupSetCollideDragRequest, Ros1Dobot_bringupSetCollideDragResponse>
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
              new Ros1Dobot_bringupSetCollideDragRequestCodec(),
              new Ros1Dobot_bringupSetCollideDragResponseCodec(),
              (value: Ros1Dobot_bringupSetCollideDragResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/SetCollisionLevel typed call and real-submit client. */
export class Ros1Dobot_bringupSetCollisionLevelClient extends
    BoundedServiceClient<Ros1Dobot_bringupSetCollisionLevelRequest, Ros1Dobot_bringupSetCollisionLevelResponse>
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
              new Ros1Dobot_bringupSetCollisionLevelRequestCodec(),
              new Ros1Dobot_bringupSetCollisionLevelResponseCodec(),
              (value: Ros1Dobot_bringupSetCollisionLevelRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetCollisionLevel incoming request/response owner. */
export class Ros1Dobot_bringupSetCollisionLevelServer extends
    BoundedServiceServer<Ros1Dobot_bringupSetCollisionLevelRequest, Ros1Dobot_bringupSetCollisionLevelResponse>
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
              new Ros1Dobot_bringupSetCollisionLevelRequestCodec(),
              new Ros1Dobot_bringupSetCollisionLevelResponseCodec(),
              (value: Ros1Dobot_bringupSetCollisionLevelResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/SetHoldRegs typed call and real-submit client. */
export class Ros1Dobot_bringupSetHoldRegsClient extends BoundedServiceClient<Ros1Dobot_bringupSetHoldRegsRequest, Ros1Dobot_bringupSetHoldRegsResponse>
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
              new Ros1Dobot_bringupSetHoldRegsRequestCodec(),
              new Ros1Dobot_bringupSetHoldRegsResponseCodec(),
              (value: Ros1Dobot_bringupSetHoldRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetHoldRegs incoming request/response owner. */
export class Ros1Dobot_bringupSetHoldRegsServer extends BoundedServiceServer<Ros1Dobot_bringupSetHoldRegsRequest, Ros1Dobot_bringupSetHoldRegsResponse>
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
              new Ros1Dobot_bringupSetHoldRegsRequestCodec(),
              new Ros1Dobot_bringupSetHoldRegsResponseCodec(),
              (value: Ros1Dobot_bringupSetHoldRegsResponse): bool => value.validValue(),
              4436,
              capacity);
    }
}

/** Complete dobot_bringup/SetObstacleAvoid typed call and real-submit client. */
export class Ros1Dobot_bringupSetObstacleAvoidClient extends
    BoundedServiceClient<Ros1Dobot_bringupSetObstacleAvoidRequest, Ros1Dobot_bringupSetObstacleAvoidResponse>
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
              new Ros1Dobot_bringupSetObstacleAvoidRequestCodec(),
              new Ros1Dobot_bringupSetObstacleAvoidResponseCodec(),
              (value: Ros1Dobot_bringupSetObstacleAvoidRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetObstacleAvoid incoming request/response owner. */
export class Ros1Dobot_bringupSetObstacleAvoidServer extends
    BoundedServiceServer<Ros1Dobot_bringupSetObstacleAvoidRequest, Ros1Dobot_bringupSetObstacleAvoidResponse>
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
              new Ros1Dobot_bringupSetObstacleAvoidRequestCodec(),
              new Ros1Dobot_bringupSetObstacleAvoidResponseCodec(),
              (value: Ros1Dobot_bringupSetObstacleAvoidResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/SetPayload typed call and real-submit client. */
export class Ros1Dobot_bringupSetPayloadClient extends BoundedServiceClient<Ros1Dobot_bringupSetPayloadRequest, Ros1Dobot_bringupSetPayloadResponse>
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
              new Ros1Dobot_bringupSetPayloadRequestCodec(),
              new Ros1Dobot_bringupSetPayloadResponseCodec(),
              (value: Ros1Dobot_bringupSetPayloadRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetPayload incoming request/response owner. */
export class Ros1Dobot_bringupSetPayloadServer extends BoundedServiceServer<Ros1Dobot_bringupSetPayloadRequest, Ros1Dobot_bringupSetPayloadResponse>
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
              new Ros1Dobot_bringupSetPayloadRequestCodec(),
              new Ros1Dobot_bringupSetPayloadResponseCodec(),
              (value: Ros1Dobot_bringupSetPayloadResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/SetSafeSkin typed call and real-submit client. */
export class Ros1Dobot_bringupSetSafeSkinClient extends BoundedServiceClient<Ros1Dobot_bringupSetSafeSkinRequest, Ros1Dobot_bringupSetSafeSkinResponse>
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
              new Ros1Dobot_bringupSetSafeSkinRequestCodec(),
              new Ros1Dobot_bringupSetSafeSkinResponseCodec(),
              (value: Ros1Dobot_bringupSetSafeSkinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetSafeSkin incoming request/response owner. */
export class Ros1Dobot_bringupSetSafeSkinServer extends BoundedServiceServer<Ros1Dobot_bringupSetSafeSkinRequest, Ros1Dobot_bringupSetSafeSkinResponse>
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
              new Ros1Dobot_bringupSetSafeSkinRequestCodec(),
              new Ros1Dobot_bringupSetSafeSkinResponseCodec(),
              (value: Ros1Dobot_bringupSetSafeSkinResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminal485 typed call and real-submit client. */
export class Ros1Dobot_bringupSetTerminal485Client extends BoundedServiceClient<Ros1Dobot_bringupSetTerminal485Request, Ros1Dobot_bringupSetTerminal485Response>
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
              new Ros1Dobot_bringupSetTerminal485RequestCodec(),
              new Ros1Dobot_bringupSetTerminal485ResponseCodec(),
              (value: Ros1Dobot_bringupSetTerminal485Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminal485 incoming request/response owner. */
export class Ros1Dobot_bringupSetTerminal485Server extends BoundedServiceServer<Ros1Dobot_bringupSetTerminal485Request, Ros1Dobot_bringupSetTerminal485Response>
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
              new Ros1Dobot_bringupSetTerminal485RequestCodec(),
              new Ros1Dobot_bringupSetTerminal485ResponseCodec(),
              (value: Ros1Dobot_bringupSetTerminal485Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminalKeys typed call and real-submit client. */
export class Ros1Dobot_bringupSetTerminalKeysClient extends
    BoundedServiceClient<Ros1Dobot_bringupSetTerminalKeysRequest, Ros1Dobot_bringupSetTerminalKeysResponse>
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
              new Ros1Dobot_bringupSetTerminalKeysRequestCodec(),
              new Ros1Dobot_bringupSetTerminalKeysResponseCodec(),
              (value: Ros1Dobot_bringupSetTerminalKeysRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminalKeys incoming request/response owner. */
export class Ros1Dobot_bringupSetTerminalKeysServer extends
    BoundedServiceServer<Ros1Dobot_bringupSetTerminalKeysRequest, Ros1Dobot_bringupSetTerminalKeysResponse>
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
              new Ros1Dobot_bringupSetTerminalKeysRequestCodec(),
              new Ros1Dobot_bringupSetTerminalKeysResponseCodec(),
              (value: Ros1Dobot_bringupSetTerminalKeysResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedFactor typed call and real-submit client. */
export class Ros1Dobot_bringupSpeedFactorClient extends BoundedServiceClient<Ros1Dobot_bringupSpeedFactorRequest, Ros1Dobot_bringupSpeedFactorResponse>
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
              new Ros1Dobot_bringupSpeedFactorRequestCodec(),
              new Ros1Dobot_bringupSpeedFactorResponseCodec(),
              (value: Ros1Dobot_bringupSpeedFactorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedFactor incoming request/response owner. */
export class Ros1Dobot_bringupSpeedFactorServer extends BoundedServiceServer<Ros1Dobot_bringupSpeedFactorRequest, Ros1Dobot_bringupSpeedFactorResponse>
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
              new Ros1Dobot_bringupSpeedFactorRequestCodec(),
              new Ros1Dobot_bringupSpeedFactorResponseCodec(),
              (value: Ros1Dobot_bringupSpeedFactorResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedJ typed call and real-submit client. */
export class Ros1Dobot_bringupSpeedJClient extends BoundedServiceClient<Ros1Dobot_bringupSpeedJRequest, Ros1Dobot_bringupSpeedJResponse>
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
              new Ros1Dobot_bringupSpeedJRequestCodec(),
              new Ros1Dobot_bringupSpeedJResponseCodec(),
              (value: Ros1Dobot_bringupSpeedJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedJ incoming request/response owner. */
export class Ros1Dobot_bringupSpeedJServer extends BoundedServiceServer<Ros1Dobot_bringupSpeedJRequest, Ros1Dobot_bringupSpeedJResponse>
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
              new Ros1Dobot_bringupSpeedJRequestCodec(),
              new Ros1Dobot_bringupSpeedJResponseCodec(),
              (value: Ros1Dobot_bringupSpeedJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedL typed call and real-submit client. */
export class Ros1Dobot_bringupSpeedLClient extends BoundedServiceClient<Ros1Dobot_bringupSpeedLRequest, Ros1Dobot_bringupSpeedLResponse>
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
              new Ros1Dobot_bringupSpeedLRequestCodec(),
              new Ros1Dobot_bringupSpeedLResponseCodec(),
              (value: Ros1Dobot_bringupSpeedLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedL incoming request/response owner. */
export class Ros1Dobot_bringupSpeedLServer extends BoundedServiceServer<Ros1Dobot_bringupSpeedLRequest, Ros1Dobot_bringupSpeedLResponse>
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
              new Ros1Dobot_bringupSpeedLRequestCodec(),
              new Ros1Dobot_bringupSpeedLResponseCodec(),
              (value: Ros1Dobot_bringupSpeedLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/StartDrag typed call and real-submit client. */
export class Ros1Dobot_bringupStartDragClient extends BoundedServiceClient<Ros1Dobot_bringupStartDragRequest, Ros1Dobot_bringupStartDragResponse>
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
              new Ros1Dobot_bringupStartDragRequestCodec(),
              new Ros1Dobot_bringupStartDragResponseCodec(),
              (value: Ros1Dobot_bringupStartDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StartDrag incoming request/response owner. */
export class Ros1Dobot_bringupStartDragServer extends BoundedServiceServer<Ros1Dobot_bringupStartDragRequest, Ros1Dobot_bringupStartDragResponse>
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
              new Ros1Dobot_bringupStartDragRequestCodec(),
              new Ros1Dobot_bringupStartDragResponseCodec(),
              (value: Ros1Dobot_bringupStartDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/StartFCTrace typed call and real-submit client. */
export class Ros1Dobot_bringupStartFCTraceClient extends BoundedServiceClient<Ros1Dobot_bringupStartFCTraceRequest, Ros1Dobot_bringupStartFCTraceResponse>
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
              new Ros1Dobot_bringupStartFCTraceRequestCodec(),
              new Ros1Dobot_bringupStartFCTraceResponseCodec(),
              (value: Ros1Dobot_bringupStartFCTraceRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StartFCTrace incoming request/response owner. */
export class Ros1Dobot_bringupStartFCTraceServer extends BoundedServiceServer<Ros1Dobot_bringupStartFCTraceRequest, Ros1Dobot_bringupStartFCTraceResponse>
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
              new Ros1Dobot_bringupStartFCTraceRequestCodec(),
              new Ros1Dobot_bringupStartFCTraceResponseCodec(),
              (value: Ros1Dobot_bringupStartFCTraceResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_bringup/StartPath typed call and real-submit client. */
export class Ros1Dobot_bringupStartPathClient extends BoundedServiceClient<Ros1Dobot_bringupStartPathRequest, Ros1Dobot_bringupStartPathResponse>
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
              new Ros1Dobot_bringupStartPathRequestCodec(),
              new Ros1Dobot_bringupStartPathResponseCodec(),
              (value: Ros1Dobot_bringupStartPathRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StartPath incoming request/response owner. */
export class Ros1Dobot_bringupStartPathServer extends BoundedServiceServer<Ros1Dobot_bringupStartPathRequest, Ros1Dobot_bringupStartPathResponse>
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
              new Ros1Dobot_bringupStartPathRequestCodec(),
              new Ros1Dobot_bringupStartPathResponseCodec(),
              (value: Ros1Dobot_bringupStartPathResponse): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete dobot_bringup/StartTrace typed call and real-submit client. */
export class Ros1Dobot_bringupStartTraceClient extends BoundedServiceClient<Ros1Dobot_bringupStartTraceRequest, Ros1Dobot_bringupStartTraceResponse>
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
              new Ros1Dobot_bringupStartTraceRequestCodec(),
              new Ros1Dobot_bringupStartTraceResponseCodec(),
              (value: Ros1Dobot_bringupStartTraceRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StartTrace incoming request/response owner. */
export class Ros1Dobot_bringupStartTraceServer extends BoundedServiceServer<Ros1Dobot_bringupStartTraceRequest, Ros1Dobot_bringupStartTraceResponse>
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
              new Ros1Dobot_bringupStartTraceRequestCodec(),
              new Ros1Dobot_bringupStartTraceResponseCodec(),
              (value: Ros1Dobot_bringupStartTraceResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_bringup/StopDrag typed call and real-submit client. */
export class Ros1Dobot_bringupStopDragClient extends BoundedServiceClient<Ros1Dobot_bringupStopDragRequest, Ros1Dobot_bringupStopDragResponse>
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
              new Ros1Dobot_bringupStopDragRequestCodec(),
              new Ros1Dobot_bringupStopDragResponseCodec(),
              (value: Ros1Dobot_bringupStopDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StopDrag incoming request/response owner. */
export class Ros1Dobot_bringupStopDragServer extends BoundedServiceServer<Ros1Dobot_bringupStopDragRequest, Ros1Dobot_bringupStopDragResponse>
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
              new Ros1Dobot_bringupStopDragRequestCodec(),
              new Ros1Dobot_bringupStopDragResponseCodec(),
              (value: Ros1Dobot_bringupStopDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/StopScript typed call and real-submit client. */
export class Ros1Dobot_bringupStopScriptClient extends BoundedServiceClient<Ros1Dobot_bringupStopScriptRequest, Ros1Dobot_bringupStopScriptResponse>
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
              new Ros1Dobot_bringupStopScriptRequestCodec(),
              new Ros1Dobot_bringupStopScriptResponseCodec(),
              (value: Ros1Dobot_bringupStopScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StopScript incoming request/response owner. */
export class Ros1Dobot_bringupStopScriptServer extends BoundedServiceServer<Ros1Dobot_bringupStopScriptRequest, Ros1Dobot_bringupStopScriptResponse>
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
              new Ros1Dobot_bringupStopScriptRequestCodec(),
              new Ros1Dobot_bringupStopScriptResponseCodec(),
              (value: Ros1Dobot_bringupStopScriptResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/StopmoveJog typed call and real-submit client. */
export class Ros1Dobot_bringupStopmoveJogClient extends BoundedServiceClient<Ros1Dobot_bringupStopmoveJogRequest, Ros1Dobot_bringupStopmoveJogResponse>
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
              new Ros1Dobot_bringupStopmoveJogRequestCodec(),
              new Ros1Dobot_bringupStopmoveJogResponseCodec(),
              (value: Ros1Dobot_bringupStopmoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StopmoveJog incoming request/response owner. */
export class Ros1Dobot_bringupStopmoveJogServer extends BoundedServiceServer<Ros1Dobot_bringupStopmoveJogRequest, Ros1Dobot_bringupStopmoveJogResponse>
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
              new Ros1Dobot_bringupStopmoveJogRequestCodec(),
              new Ros1Dobot_bringupStopmoveJogResponseCodec(),
              (value: Ros1Dobot_bringupStopmoveJogResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/Sync typed call and real-submit client. */
export class Ros1Dobot_bringupSyncClient extends BoundedServiceClient<Ros1Dobot_bringupSyncRequest, Ros1Dobot_bringupSyncResponse>
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
              new Ros1Dobot_bringupSyncRequestCodec(),
              new Ros1Dobot_bringupSyncResponseCodec(),
              (value: Ros1Dobot_bringupSyncRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Sync incoming request/response owner. */
export class Ros1Dobot_bringupSyncServer extends BoundedServiceServer<Ros1Dobot_bringupSyncRequest, Ros1Dobot_bringupSyncResponse>
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
              new Ros1Dobot_bringupSyncRequestCodec(),
              new Ros1Dobot_bringupSyncResponseCodec(),
              (value: Ros1Dobot_bringupSyncResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/SyncAll typed call and real-submit client. */
export class Ros1Dobot_bringupSyncAllClient extends BoundedServiceClient<Ros1Dobot_bringupSyncAllRequest, Ros1Dobot_bringupSyncAllResponse>
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
              new Ros1Dobot_bringupSyncAllRequestCodec(),
              new Ros1Dobot_bringupSyncAllResponseCodec(),
              (value: Ros1Dobot_bringupSyncAllRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SyncAll incoming request/response owner. */
export class Ros1Dobot_bringupSyncAllServer extends BoundedServiceServer<Ros1Dobot_bringupSyncAllRequest, Ros1Dobot_bringupSyncAllResponse>
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
              new Ros1Dobot_bringupSyncAllRequestCodec(),
              new Ros1Dobot_bringupSyncAllResponseCodec(),
              (value: Ros1Dobot_bringupSyncAllResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/TCPSpeed typed call and real-submit client. */
export class Ros1Dobot_bringupTCPSpeedClient extends BoundedServiceClient<Ros1Dobot_bringupTCPSpeedRequest, Ros1Dobot_bringupTCPSpeedResponse>
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
              new Ros1Dobot_bringupTCPSpeedRequestCodec(),
              new Ros1Dobot_bringupTCPSpeedResponseCodec(),
              (value: Ros1Dobot_bringupTCPSpeedRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/TCPSpeed incoming request/response owner. */
export class Ros1Dobot_bringupTCPSpeedServer extends BoundedServiceServer<Ros1Dobot_bringupTCPSpeedRequest, Ros1Dobot_bringupTCPSpeedResponse>
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
              new Ros1Dobot_bringupTCPSpeedRequestCodec(),
              new Ros1Dobot_bringupTCPSpeedResponseCodec(),
              (value: Ros1Dobot_bringupTCPSpeedResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/TCPSpeedEnd typed call and real-submit client. */
export class Ros1Dobot_bringupTCPSpeedEndClient extends BoundedServiceClient<Ros1Dobot_bringupTCPSpeedEndRequest, Ros1Dobot_bringupTCPSpeedEndResponse>
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
              new Ros1Dobot_bringupTCPSpeedEndRequestCodec(),
              new Ros1Dobot_bringupTCPSpeedEndResponseCodec(),
              (value: Ros1Dobot_bringupTCPSpeedEndRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/TCPSpeedEnd incoming request/response owner. */
export class Ros1Dobot_bringupTCPSpeedEndServer extends BoundedServiceServer<Ros1Dobot_bringupTCPSpeedEndRequest, Ros1Dobot_bringupTCPSpeedEndResponse>
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
              new Ros1Dobot_bringupTCPSpeedEndRequestCodec(),
              new Ros1Dobot_bringupTCPSpeedEndResponseCodec(),
              (value: Ros1Dobot_bringupTCPSpeedEndResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete dobot_bringup/TcpDashboard typed call and real-submit client. */
export class Ros1Dobot_bringupTcpDashboardClient extends BoundedServiceClient<Ros1Dobot_bringupTcpDashboardRequest, Ros1Dobot_bringupTcpDashboardResponse>
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
              new Ros1Dobot_bringupTcpDashboardRequestCodec(),
              new Ros1Dobot_bringupTcpDashboardResponseCodec(),
              (value: Ros1Dobot_bringupTcpDashboardRequest): bool => value.validValue(),
              260,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/TcpDashboard incoming request/response owner. */
export class Ros1Dobot_bringupTcpDashboardServer extends BoundedServiceServer<Ros1Dobot_bringupTcpDashboardRequest, Ros1Dobot_bringupTcpDashboardResponse>
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
              new Ros1Dobot_bringupTcpDashboardRequestCodec(),
              new Ros1Dobot_bringupTcpDashboardResponseCodec(),
              (value: Ros1Dobot_bringupTcpDashboardResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete dobot_bringup/TcpRealData typed call and real-submit client. */
export class Ros1Dobot_bringupTcpRealDataClient extends BoundedServiceClient<Ros1Dobot_bringupTcpRealDataRequest, Ros1Dobot_bringupTcpRealDataResponse>
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
              new Ros1Dobot_bringupTcpRealDataRequestCodec(),
              new Ros1Dobot_bringupTcpRealDataResponseCodec(),
              (value: Ros1Dobot_bringupTcpRealDataRequest): bool => value.validValue(),
              20,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/TcpRealData incoming request/response owner. */
export class Ros1Dobot_bringupTcpRealDataServer extends BoundedServiceServer<Ros1Dobot_bringupTcpRealDataRequest, Ros1Dobot_bringupTcpRealDataResponse>
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
              new Ros1Dobot_bringupTcpRealDataRequestCodec(),
              new Ros1Dobot_bringupTcpRealDataResponseCodec(),
              (value: Ros1Dobot_bringupTcpRealDataResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/Tool typed call and real-submit client. */
export class Ros1Dobot_bringupToolClient extends BoundedServiceClient<Ros1Dobot_bringupToolRequest, Ros1Dobot_bringupToolResponse>
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
              new Ros1Dobot_bringupToolRequestCodec(),
              new Ros1Dobot_bringupToolResponseCodec(),
              (value: Ros1Dobot_bringupToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Tool incoming request/response owner. */
export class Ros1Dobot_bringupToolServer extends BoundedServiceServer<Ros1Dobot_bringupToolRequest, Ros1Dobot_bringupToolResponse>
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
              new Ros1Dobot_bringupToolRequestCodec(),
              new Ros1Dobot_bringupToolResponseCodec(),
              (value: Ros1Dobot_bringupToolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/ToolAI typed call and real-submit client. */
export class Ros1Dobot_bringupToolAIClient extends BoundedServiceClient<Ros1Dobot_bringupToolAIRequest, Ros1Dobot_bringupToolAIResponse>
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
              new Ros1Dobot_bringupToolAIRequestCodec(),
              new Ros1Dobot_bringupToolAIResponseCodec(),
              (value: Ros1Dobot_bringupToolAIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ToolAI incoming request/response owner. */
export class Ros1Dobot_bringupToolAIServer extends BoundedServiceServer<Ros1Dobot_bringupToolAIRequest, Ros1Dobot_bringupToolAIResponse>
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
              new Ros1Dobot_bringupToolAIRequestCodec(),
              new Ros1Dobot_bringupToolAIResponseCodec(),
              (value: Ros1Dobot_bringupToolAIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/ToolDI typed call and real-submit client. */
export class Ros1Dobot_bringupToolDIClient extends BoundedServiceClient<Ros1Dobot_bringupToolDIRequest, Ros1Dobot_bringupToolDIResponse>
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
              new Ros1Dobot_bringupToolDIRequestCodec(),
              new Ros1Dobot_bringupToolDIResponseCodec(),
              (value: Ros1Dobot_bringupToolDIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ToolDI incoming request/response owner. */
export class Ros1Dobot_bringupToolDIServer extends BoundedServiceServer<Ros1Dobot_bringupToolDIRequest, Ros1Dobot_bringupToolDIResponse>
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
              new Ros1Dobot_bringupToolDIRequestCodec(),
              new Ros1Dobot_bringupToolDIResponseCodec(),
              (value: Ros1Dobot_bringupToolDIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/ToolDO typed call and real-submit client. */
export class Ros1Dobot_bringupToolDOClient extends BoundedServiceClient<Ros1Dobot_bringupToolDORequest, Ros1Dobot_bringupToolDOResponse>
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
              new Ros1Dobot_bringupToolDORequestCodec(),
              new Ros1Dobot_bringupToolDOResponseCodec(),
              (value: Ros1Dobot_bringupToolDORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ToolDO incoming request/response owner. */
export class Ros1Dobot_bringupToolDOServer extends BoundedServiceServer<Ros1Dobot_bringupToolDORequest, Ros1Dobot_bringupToolDOResponse>
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
              new Ros1Dobot_bringupToolDORequestCodec(),
              new Ros1Dobot_bringupToolDOResponseCodec(),
              (value: Ros1Dobot_bringupToolDOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/ToolDOExecute typed call and real-submit client. */
export class Ros1Dobot_bringupToolDOExecuteClient extends BoundedServiceClient<Ros1Dobot_bringupToolDOExecuteRequest, Ros1Dobot_bringupToolDOExecuteResponse>
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
              new Ros1Dobot_bringupToolDOExecuteRequestCodec(),
              new Ros1Dobot_bringupToolDOExecuteResponseCodec(),
              (value: Ros1Dobot_bringupToolDOExecuteRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ToolDOExecute incoming request/response owner. */
export class Ros1Dobot_bringupToolDOExecuteServer extends BoundedServiceServer<Ros1Dobot_bringupToolDOExecuteRequest, Ros1Dobot_bringupToolDOExecuteResponse>
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
              new Ros1Dobot_bringupToolDOExecuteRequestCodec(),
              new Ros1Dobot_bringupToolDOExecuteResponseCodec(),
              (value: Ros1Dobot_bringupToolDOExecuteResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete dobot_bringup/User typed call and real-submit client. */
export class Ros1Dobot_bringupUserClient extends BoundedServiceClient<Ros1Dobot_bringupUserRequest, Ros1Dobot_bringupUserResponse>
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
              new Ros1Dobot_bringupUserRequestCodec(),
              new Ros1Dobot_bringupUserResponseCodec(),
              (value: Ros1Dobot_bringupUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/User incoming request/response owner. */
export class Ros1Dobot_bringupUserServer extends BoundedServiceServer<Ros1Dobot_bringupUserRequest, Ros1Dobot_bringupUserResponse>
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
              new Ros1Dobot_bringupUserRequestCodec(),
              new Ros1Dobot_bringupUserResponseCodec(),
              (value: Ros1Dobot_bringupUserResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/Wait typed call and real-submit client. */
export class Ros1Dobot_bringupWaitClient extends BoundedServiceClient<Ros1Dobot_bringupWaitRequest, Ros1Dobot_bringupWaitResponse>
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
              new Ros1Dobot_bringupWaitRequestCodec(),
              new Ros1Dobot_bringupWaitResponseCodec(),
              (value: Ros1Dobot_bringupWaitRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/Wait incoming request/response owner. */
export class Ros1Dobot_bringupWaitServer extends BoundedServiceServer<Ros1Dobot_bringupWaitRequest, Ros1Dobot_bringupWaitResponse>
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
              new Ros1Dobot_bringupWaitRequestCodec(),
              new Ros1Dobot_bringupWaitResponseCodec(),
              (value: Ros1Dobot_bringupWaitResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete dobot_bringup/pause typed call and real-submit client. */
export class Ros1Dobot_bringupPauseClient extends BoundedServiceClient<Ros1Dobot_bringupPauseRequest, Ros1Dobot_bringupPauseResponse>
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
              new Ros1Dobot_bringupPauseRequestCodec(),
              new Ros1Dobot_bringupPauseResponseCodec(),
              (value: Ros1Dobot_bringupPauseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/pause incoming request/response owner. */
export class Ros1Dobot_bringupPauseServer extends BoundedServiceServer<Ros1Dobot_bringupPauseRequest, Ros1Dobot_bringupPauseResponse>
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
              new Ros1Dobot_bringupPauseRequestCodec(),
              new Ros1Dobot_bringupPauseResponseCodec(),
              (value: Ros1Dobot_bringupPauseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}
