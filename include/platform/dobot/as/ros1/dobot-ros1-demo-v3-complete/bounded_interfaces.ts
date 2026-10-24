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
    Ros1Rosdemo_v3AccJRequest,
    Ros1Rosdemo_v3AccJRequestCodec,
    Ros1Rosdemo_v3AccJResponse,
    Ros1Rosdemo_v3AccJResponseCodec,
    Ros1Rosdemo_v3AccLRequest,
    Ros1Rosdemo_v3AccLRequestCodec,
    Ros1Rosdemo_v3AccLResponse,
    Ros1Rosdemo_v3AccLResponseCodec,
    Ros1Rosdemo_v3AIRequest,
    Ros1Rosdemo_v3AIRequestCodec,
    Ros1Rosdemo_v3AIResponse,
    Ros1Rosdemo_v3AIResponseCodec,
    Ros1Rosdemo_v3AOExecuteRequest,
    Ros1Rosdemo_v3AOExecuteRequestCodec,
    Ros1Rosdemo_v3AOExecuteResponse,
    Ros1Rosdemo_v3AOExecuteResponseCodec,
    Ros1Rosdemo_v3AORequest,
    Ros1Rosdemo_v3AORequestCodec,
    Ros1Rosdemo_v3AOResponse,
    Ros1Rosdemo_v3AOResponseCodec,
    Ros1Rosdemo_v3ArchRequest,
    Ros1Rosdemo_v3ArchRequestCodec,
    Ros1Rosdemo_v3ArchResponse,
    Ros1Rosdemo_v3ArchResponseCodec,
    Ros1Rosdemo_v3ArcRequest,
    Ros1Rosdemo_v3ArcRequestCodec,
    Ros1Rosdemo_v3ArcResponse,
    Ros1Rosdemo_v3ArcResponseCodec,
    Ros1Rosdemo_v3BrakeControlRequest,
    Ros1Rosdemo_v3BrakeControlRequestCodec,
    Ros1Rosdemo_v3BrakeControlResponse,
    Ros1Rosdemo_v3BrakeControlResponseCodec,
    Ros1Rosdemo_v3CircleRequest,
    Ros1Rosdemo_v3CircleRequestCodec,
    Ros1Rosdemo_v3CircleResponse,
    Ros1Rosdemo_v3CircleResponseCodec,
    Ros1Rosdemo_v3ClearErrorRequest,
    Ros1Rosdemo_v3ClearErrorRequestCodec,
    Ros1Rosdemo_v3ClearErrorResponse,
    Ros1Rosdemo_v3ClearErrorResponseCodec,
    Ros1Rosdemo_v3ContinueScriptRequest,
    Ros1Rosdemo_v3ContinueScriptRequestCodec,
    Ros1Rosdemo_v3ContinueScriptResponse,
    Ros1Rosdemo_v3ContinueScriptResponseCodec,
    Ros1Rosdemo_v3ContinuesRequest,
    Ros1Rosdemo_v3ContinuesRequestCodec,
    Ros1Rosdemo_v3ContinuesResponse,
    Ros1Rosdemo_v3ContinuesResponseCodec,
    Ros1Rosdemo_v3CPRequest,
    Ros1Rosdemo_v3CPRequestCodec,
    Ros1Rosdemo_v3CPResponse,
    Ros1Rosdemo_v3CPResponseCodec,
    Ros1Rosdemo_v3DigitalOutputsRequest,
    Ros1Rosdemo_v3DigitalOutputsRequestCodec,
    Ros1Rosdemo_v3DigitalOutputsResponse,
    Ros1Rosdemo_v3DigitalOutputsResponseCodec,
    Ros1Rosdemo_v3DIGroupRequest,
    Ros1Rosdemo_v3DIGroupRequestCodec,
    Ros1Rosdemo_v3DIGroupResponse,
    Ros1Rosdemo_v3DIGroupResponseCodec,
    Ros1Rosdemo_v3DIRequest,
    Ros1Rosdemo_v3DIRequestCodec,
    Ros1Rosdemo_v3DIResponse,
    Ros1Rosdemo_v3DIResponseCodec,
    Ros1Rosdemo_v3DisableRobotRequest,
    Ros1Rosdemo_v3DisableRobotRequestCodec,
    Ros1Rosdemo_v3DisableRobotResponse,
    Ros1Rosdemo_v3DisableRobotResponseCodec,
    Ros1Rosdemo_v3DOExecuteRequest,
    Ros1Rosdemo_v3DOExecuteRequestCodec,
    Ros1Rosdemo_v3DOExecuteResponse,
    Ros1Rosdemo_v3DOExecuteResponseCodec,
    Ros1Rosdemo_v3DOGroupRequest,
    Ros1Rosdemo_v3DOGroupRequestCodec,
    Ros1Rosdemo_v3DOGroupResponse,
    Ros1Rosdemo_v3DOGroupResponseCodec,
    Ros1Rosdemo_v3DORequest,
    Ros1Rosdemo_v3DORequestCodec,
    Ros1Rosdemo_v3DOResponse,
    Ros1Rosdemo_v3DOResponseCodec,
    Ros1Rosdemo_v3EmergencyStopRequest,
    Ros1Rosdemo_v3EmergencyStopRequestCodec,
    Ros1Rosdemo_v3EmergencyStopResponse,
    Ros1Rosdemo_v3EmergencyStopResponseCodec,
    Ros1Rosdemo_v3EnableRobotRequest,
    Ros1Rosdemo_v3EnableRobotRequestCodec,
    Ros1Rosdemo_v3EnableRobotResponse,
    Ros1Rosdemo_v3EnableRobotResponseCodec,
    Ros1Rosdemo_v3GetAngleRequest,
    Ros1Rosdemo_v3GetAngleRequestCodec,
    Ros1Rosdemo_v3GetAngleResponse,
    Ros1Rosdemo_v3GetAngleResponseCodec,
    Ros1Rosdemo_v3GetCoilsRequest,
    Ros1Rosdemo_v3GetCoilsRequestCodec,
    Ros1Rosdemo_v3GetCoilsResponse,
    Ros1Rosdemo_v3GetCoilsResponseCodec,
    Ros1Rosdemo_v3GetErrorIDRequest,
    Ros1Rosdemo_v3GetErrorIDRequestCodec,
    Ros1Rosdemo_v3GetErrorIDResponse,
    Ros1Rosdemo_v3GetErrorIDResponseCodec,
    Ros1Rosdemo_v3GetHoldRegsRequest,
    Ros1Rosdemo_v3GetHoldRegsRequestCodec,
    Ros1Rosdemo_v3GetHoldRegsResponse,
    Ros1Rosdemo_v3GetHoldRegsResponseCodec,
    Ros1Rosdemo_v3GetInBitsRequest,
    Ros1Rosdemo_v3GetInBitsRequestCodec,
    Ros1Rosdemo_v3GetInBitsResponse,
    Ros1Rosdemo_v3GetInBitsResponseCodec,
    Ros1Rosdemo_v3GetInRegsRequest,
    Ros1Rosdemo_v3GetInRegsRequestCodec,
    Ros1Rosdemo_v3GetInRegsResponse,
    Ros1Rosdemo_v3GetInRegsResponseCodec,
    Ros1Rosdemo_v3GetPathStartPoseRequest,
    Ros1Rosdemo_v3GetPathStartPoseRequestCodec,
    Ros1Rosdemo_v3GetPathStartPoseResponse,
    Ros1Rosdemo_v3GetPathStartPoseResponseCodec,
    Ros1Rosdemo_v3GetPoseRequest,
    Ros1Rosdemo_v3GetPoseRequestCodec,
    Ros1Rosdemo_v3GetPoseResponse,
    Ros1Rosdemo_v3GetPoseResponseCodec,
    Ros1Rosdemo_v3GetSixForceDataRequest,
    Ros1Rosdemo_v3GetSixForceDataRequestCodec,
    Ros1Rosdemo_v3GetSixForceDataResponse,
    Ros1Rosdemo_v3GetSixForceDataResponseCodec,
    Ros1Rosdemo_v3GetTerminal485Request,
    Ros1Rosdemo_v3GetTerminal485RequestCodec,
    Ros1Rosdemo_v3GetTerminal485Response,
    Ros1Rosdemo_v3GetTerminal485ResponseCodec,
    Ros1Rosdemo_v3GetTraceStartPoseRequest,
    Ros1Rosdemo_v3GetTraceStartPoseRequestCodec,
    Ros1Rosdemo_v3GetTraceStartPoseResponse,
    Ros1Rosdemo_v3GetTraceStartPoseResponseCodec,
    Ros1Rosdemo_v3HandleTrajPointsRequest,
    Ros1Rosdemo_v3HandleTrajPointsRequestCodec,
    Ros1Rosdemo_v3HandleTrajPointsResponse,
    Ros1Rosdemo_v3HandleTrajPointsResponseCodec,
    Ros1Rosdemo_v3InverseSolutionRequest,
    Ros1Rosdemo_v3InverseSolutionRequestCodec,
    Ros1Rosdemo_v3InverseSolutionResponse,
    Ros1Rosdemo_v3InverseSolutionResponseCodec,
    Ros1Rosdemo_v3JointMovJRequest,
    Ros1Rosdemo_v3JointMovJRequestCodec,
    Ros1Rosdemo_v3JointMovJResponse,
    Ros1Rosdemo_v3JointMovJResponseCodec,
    Ros1Rosdemo_v3JumpRequest,
    Ros1Rosdemo_v3JumpRequestCodec,
    Ros1Rosdemo_v3JumpResponse,
    Ros1Rosdemo_v3JumpResponseCodec,
    Ros1Rosdemo_v3LimZRequest,
    Ros1Rosdemo_v3LimZRequestCodec,
    Ros1Rosdemo_v3LimZResponse,
    Ros1Rosdemo_v3LimZResponseCodec,
    Ros1Rosdemo_v3LoadSwitchRequest,
    Ros1Rosdemo_v3LoadSwitchRequestCodec,
    Ros1Rosdemo_v3LoadSwitchResponse,
    Ros1Rosdemo_v3LoadSwitchResponseCodec,
    Ros1Rosdemo_v3ModbusCloseRequest,
    Ros1Rosdemo_v3ModbusCloseRequestCodec,
    Ros1Rosdemo_v3ModbusCloseResponse,
    Ros1Rosdemo_v3ModbusCloseResponseCodec,
    Ros1Rosdemo_v3ModbusCreateRequest,
    Ros1Rosdemo_v3ModbusCreateRequestCodec,
    Ros1Rosdemo_v3ModbusCreateResponse,
    Ros1Rosdemo_v3ModbusCreateResponseCodec,
    Ros1Rosdemo_v3MoveJogRequest,
    Ros1Rosdemo_v3MoveJogRequestCodec,
    Ros1Rosdemo_v3MoveJogResponse,
    Ros1Rosdemo_v3MoveJogResponseCodec,
    Ros1Rosdemo_v3MovJExtRequest,
    Ros1Rosdemo_v3MovJExtRequestCodec,
    Ros1Rosdemo_v3MovJExtResponse,
    Ros1Rosdemo_v3MovJExtResponseCodec,
    Ros1Rosdemo_v3MovJIORequest,
    Ros1Rosdemo_v3MovJIORequestCodec,
    Ros1Rosdemo_v3MovJIOResponse,
    Ros1Rosdemo_v3MovJIOResponseCodec,
    Ros1Rosdemo_v3MovJRequest,
    Ros1Rosdemo_v3MovJRequestCodec,
    Ros1Rosdemo_v3MovJResponse,
    Ros1Rosdemo_v3MovJResponseCodec,
    Ros1Rosdemo_v3MovLIORequest,
    Ros1Rosdemo_v3MovLIORequestCodec,
    Ros1Rosdemo_v3MovLIOResponse,
    Ros1Rosdemo_v3MovLIOResponseCodec,
    Ros1Rosdemo_v3MovLRequest,
    Ros1Rosdemo_v3MovLRequestCodec,
    Ros1Rosdemo_v3MovLResponse,
    Ros1Rosdemo_v3MovLResponseCodec,
    Ros1Rosdemo_v3PauseRequest,
    Ros1Rosdemo_v3PauseRequestCodec,
    Ros1Rosdemo_v3PauseResponse,
    Ros1Rosdemo_v3PauseResponseCodec,
    Ros1Rosdemo_v3PauseScriptRequest,
    Ros1Rosdemo_v3PauseScriptRequestCodec,
    Ros1Rosdemo_v3PauseScriptResponse,
    Ros1Rosdemo_v3PauseScriptResponseCodec,
    Ros1Rosdemo_v3PayLoadRequest,
    Ros1Rosdemo_v3PayLoadRequestCodec,
    Ros1Rosdemo_v3PayLoadResponse,
    Ros1Rosdemo_v3PayLoadResponseCodec,
    Ros1Rosdemo_v3PositiveSolutionRequest,
    Ros1Rosdemo_v3PositiveSolutionRequestCodec,
    Ros1Rosdemo_v3PositiveSolutionResponse,
    Ros1Rosdemo_v3PositiveSolutionResponseCodec,
    Ros1Rosdemo_v3PowerOnRequest,
    Ros1Rosdemo_v3PowerOnRequestCodec,
    Ros1Rosdemo_v3PowerOnResponse,
    Ros1Rosdemo_v3PowerOnResponseCodec,
    Ros1Rosdemo_v3RelJointMovJRequest,
    Ros1Rosdemo_v3RelJointMovJRequestCodec,
    Ros1Rosdemo_v3RelJointMovJResponse,
    Ros1Rosdemo_v3RelJointMovJResponseCodec,
    Ros1Rosdemo_v3RelMovJRequest,
    Ros1Rosdemo_v3RelMovJRequestCodec,
    Ros1Rosdemo_v3RelMovJResponse,
    Ros1Rosdemo_v3RelMovJResponseCodec,
    Ros1Rosdemo_v3RelMovJToolRequest,
    Ros1Rosdemo_v3RelMovJToolRequestCodec,
    Ros1Rosdemo_v3RelMovJToolResponse,
    Ros1Rosdemo_v3RelMovJToolResponseCodec,
    Ros1Rosdemo_v3RelMovJUserRequest,
    Ros1Rosdemo_v3RelMovJUserRequestCodec,
    Ros1Rosdemo_v3RelMovJUserResponse,
    Ros1Rosdemo_v3RelMovJUserResponseCodec,
    Ros1Rosdemo_v3RelMovLRequest,
    Ros1Rosdemo_v3RelMovLRequestCodec,
    Ros1Rosdemo_v3RelMovLResponse,
    Ros1Rosdemo_v3RelMovLResponseCodec,
    Ros1Rosdemo_v3RelMovLToolRequest,
    Ros1Rosdemo_v3RelMovLToolRequestCodec,
    Ros1Rosdemo_v3RelMovLToolResponse,
    Ros1Rosdemo_v3RelMovLToolResponseCodec,
    Ros1Rosdemo_v3RelMovLUserRequest,
    Ros1Rosdemo_v3RelMovLUserRequestCodec,
    Ros1Rosdemo_v3RelMovLUserResponse,
    Ros1Rosdemo_v3RelMovLUserResponseCodec,
    Ros1Rosdemo_v3ResetRobotRequest,
    Ros1Rosdemo_v3ResetRobotRequestCodec,
    Ros1Rosdemo_v3ResetRobotResponse,
    Ros1Rosdemo_v3ResetRobotResponseCodec,
    Ros1Rosdemo_v3RobotModeRequest,
    Ros1Rosdemo_v3RobotModeRequestCodec,
    Ros1Rosdemo_v3RobotModeResponse,
    Ros1Rosdemo_v3RobotModeResponseCodec,
    Ros1Rosdemo_v3RunScriptRequest,
    Ros1Rosdemo_v3RunScriptRequestCodec,
    Ros1Rosdemo_v3RunScriptResponse,
    Ros1Rosdemo_v3RunScriptResponseCodec,
    Ros1Rosdemo_v3ServoJRequest,
    Ros1Rosdemo_v3ServoJRequestCodec,
    Ros1Rosdemo_v3ServoJResponse,
    Ros1Rosdemo_v3ServoJResponseCodec,
    Ros1Rosdemo_v3ServoPRequest,
    Ros1Rosdemo_v3ServoPRequestCodec,
    Ros1Rosdemo_v3ServoPResponse,
    Ros1Rosdemo_v3ServoPResponseCodec,
    Ros1Rosdemo_v3SetArmOrientationRequest,
    Ros1Rosdemo_v3SetArmOrientationRequestCodec,
    Ros1Rosdemo_v3SetArmOrientationResponse,
    Ros1Rosdemo_v3SetArmOrientationResponseCodec,
    Ros1Rosdemo_v3SetCoilsRequest,
    Ros1Rosdemo_v3SetCoilsRequestCodec,
    Ros1Rosdemo_v3SetCoilsResponse,
    Ros1Rosdemo_v3SetCoilsResponseCodec,
    Ros1Rosdemo_v3SetCollideDragRequest,
    Ros1Rosdemo_v3SetCollideDragRequestCodec,
    Ros1Rosdemo_v3SetCollideDragResponse,
    Ros1Rosdemo_v3SetCollideDragResponseCodec,
    Ros1Rosdemo_v3SetCollisionLevelRequest,
    Ros1Rosdemo_v3SetCollisionLevelRequestCodec,
    Ros1Rosdemo_v3SetCollisionLevelResponse,
    Ros1Rosdemo_v3SetCollisionLevelResponseCodec,
    Ros1Rosdemo_v3SetHoldRegsRequest,
    Ros1Rosdemo_v3SetHoldRegsRequestCodec,
    Ros1Rosdemo_v3SetHoldRegsResponse,
    Ros1Rosdemo_v3SetHoldRegsResponseCodec,
    Ros1Rosdemo_v3SetObstacleAvoidRequest,
    Ros1Rosdemo_v3SetObstacleAvoidRequestCodec,
    Ros1Rosdemo_v3SetObstacleAvoidResponse,
    Ros1Rosdemo_v3SetObstacleAvoidResponseCodec,
    Ros1Rosdemo_v3SetPayloadRequest,
    Ros1Rosdemo_v3SetPayloadRequestCodec,
    Ros1Rosdemo_v3SetPayloadResponse,
    Ros1Rosdemo_v3SetPayloadResponseCodec,
    Ros1Rosdemo_v3SetSafeSkinRequest,
    Ros1Rosdemo_v3SetSafeSkinRequestCodec,
    Ros1Rosdemo_v3SetSafeSkinResponse,
    Ros1Rosdemo_v3SetSafeSkinResponseCodec,
    Ros1Rosdemo_v3SetTerminal485Request,
    Ros1Rosdemo_v3SetTerminal485RequestCodec,
    Ros1Rosdemo_v3SetTerminal485Response,
    Ros1Rosdemo_v3SetTerminal485ResponseCodec,
    Ros1Rosdemo_v3SetTerminalKeysRequest,
    Ros1Rosdemo_v3SetTerminalKeysRequestCodec,
    Ros1Rosdemo_v3SetTerminalKeysResponse,
    Ros1Rosdemo_v3SetTerminalKeysResponseCodec,
    Ros1Rosdemo_v3SpeedFactorRequest,
    Ros1Rosdemo_v3SpeedFactorRequestCodec,
    Ros1Rosdemo_v3SpeedFactorResponse,
    Ros1Rosdemo_v3SpeedFactorResponseCodec,
    Ros1Rosdemo_v3SpeedJRequest,
    Ros1Rosdemo_v3SpeedJRequestCodec,
    Ros1Rosdemo_v3SpeedJResponse,
    Ros1Rosdemo_v3SpeedJResponseCodec,
    Ros1Rosdemo_v3SpeedLRequest,
    Ros1Rosdemo_v3SpeedLRequestCodec,
    Ros1Rosdemo_v3SpeedLResponse,
    Ros1Rosdemo_v3SpeedLResponseCodec,
    Ros1Rosdemo_v3StartDragRequest,
    Ros1Rosdemo_v3StartDragRequestCodec,
    Ros1Rosdemo_v3StartDragResponse,
    Ros1Rosdemo_v3StartDragResponseCodec,
    Ros1Rosdemo_v3StartFCTraceRequest,
    Ros1Rosdemo_v3StartFCTraceRequestCodec,
    Ros1Rosdemo_v3StartFCTraceResponse,
    Ros1Rosdemo_v3StartFCTraceResponseCodec,
    Ros1Rosdemo_v3StartPathRequest,
    Ros1Rosdemo_v3StartPathRequestCodec,
    Ros1Rosdemo_v3StartPathResponse,
    Ros1Rosdemo_v3StartPathResponseCodec,
    Ros1Rosdemo_v3StartTraceRequest,
    Ros1Rosdemo_v3StartTraceRequestCodec,
    Ros1Rosdemo_v3StartTraceResponse,
    Ros1Rosdemo_v3StartTraceResponseCodec,
    Ros1Rosdemo_v3StopDragRequest,
    Ros1Rosdemo_v3StopDragRequestCodec,
    Ros1Rosdemo_v3StopDragResponse,
    Ros1Rosdemo_v3StopDragResponseCodec,
    Ros1Rosdemo_v3StopmoveJogRequest,
    Ros1Rosdemo_v3StopmoveJogRequestCodec,
    Ros1Rosdemo_v3StopmoveJogResponse,
    Ros1Rosdemo_v3StopmoveJogResponseCodec,
    Ros1Rosdemo_v3StopScriptRequest,
    Ros1Rosdemo_v3StopScriptRequestCodec,
    Ros1Rosdemo_v3StopScriptResponse,
    Ros1Rosdemo_v3StopScriptResponseCodec,
    Ros1Rosdemo_v3SyncAllRequest,
    Ros1Rosdemo_v3SyncAllRequestCodec,
    Ros1Rosdemo_v3SyncAllResponse,
    Ros1Rosdemo_v3SyncAllResponseCodec,
    Ros1Rosdemo_v3SyncRequest,
    Ros1Rosdemo_v3SyncRequestCodec,
    Ros1Rosdemo_v3SyncResponse,
    Ros1Rosdemo_v3SyncResponseCodec,
    Ros1Rosdemo_v3TCPSpeedEndRequest,
    Ros1Rosdemo_v3TCPSpeedEndRequestCodec,
    Ros1Rosdemo_v3TCPSpeedEndResponse,
    Ros1Rosdemo_v3TCPSpeedEndResponseCodec,
    Ros1Rosdemo_v3TCPSpeedRequest,
    Ros1Rosdemo_v3TCPSpeedRequestCodec,
    Ros1Rosdemo_v3TCPSpeedResponse,
    Ros1Rosdemo_v3TCPSpeedResponseCodec,
    Ros1Rosdemo_v3ToolAIRequest,
    Ros1Rosdemo_v3ToolAIRequestCodec,
    Ros1Rosdemo_v3ToolAIResponse,
    Ros1Rosdemo_v3ToolAIResponseCodec,
    Ros1Rosdemo_v3ToolDIRequest,
    Ros1Rosdemo_v3ToolDIRequestCodec,
    Ros1Rosdemo_v3ToolDIResponse,
    Ros1Rosdemo_v3ToolDIResponseCodec,
    Ros1Rosdemo_v3ToolDOExecuteRequest,
    Ros1Rosdemo_v3ToolDOExecuteRequestCodec,
    Ros1Rosdemo_v3ToolDOExecuteResponse,
    Ros1Rosdemo_v3ToolDOExecuteResponseCodec,
    Ros1Rosdemo_v3ToolDORequest,
    Ros1Rosdemo_v3ToolDORequestCodec,
    Ros1Rosdemo_v3ToolDOResponse,
    Ros1Rosdemo_v3ToolDOResponseCodec,
    Ros1Rosdemo_v3ToolRequest,
    Ros1Rosdemo_v3ToolRequestCodec,
    Ros1Rosdemo_v3ToolResponse,
    Ros1Rosdemo_v3ToolResponseCodec,
    Ros1Rosdemo_v3UserRequest,
    Ros1Rosdemo_v3UserRequestCodec,
    Ros1Rosdemo_v3UserResponse,
    Ros1Rosdemo_v3UserResponseCodec,
    Ros1Rosdemo_v3WaitRequest,
    Ros1Rosdemo_v3WaitRequestCodec,
    Ros1Rosdemo_v3WaitResponse,
    Ros1Rosdemo_v3WaitResponseCodec
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

/** Complete rosdemo_v3/AI typed call and real-submit client. */
export class Ros1Rosdemo_v3AIClient extends BoundedServiceClient<Ros1Rosdemo_v3AIRequest, Ros1Rosdemo_v3AIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3AIRequestCodec(),
              new Ros1Rosdemo_v3AIResponseCodec(),
              (value: Ros1Rosdemo_v3AIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/AI incoming request/response owner. */
export class Ros1Rosdemo_v3AIServer extends BoundedServiceServer<Ros1Rosdemo_v3AIRequest, Ros1Rosdemo_v3AIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3AIRequestCodec(),
              new Ros1Rosdemo_v3AIResponseCodec(),
              (value: Ros1Rosdemo_v3AIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/AO typed call and real-submit client. */
export class Ros1Rosdemo_v3AOClient extends BoundedServiceClient<Ros1Rosdemo_v3AORequest, Ros1Rosdemo_v3AOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3AORequestCodec(),
              new Ros1Rosdemo_v3AOResponseCodec(),
              (value: Ros1Rosdemo_v3AORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/AO incoming request/response owner. */
export class Ros1Rosdemo_v3AOServer extends BoundedServiceServer<Ros1Rosdemo_v3AORequest, Ros1Rosdemo_v3AOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3AORequestCodec(),
              new Ros1Rosdemo_v3AOResponseCodec(),
              (value: Ros1Rosdemo_v3AOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/AOExecute typed call and real-submit client. */
export class Ros1Rosdemo_v3AOExecuteClient extends BoundedServiceClient<Ros1Rosdemo_v3AOExecuteRequest, Ros1Rosdemo_v3AOExecuteResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3AOExecuteRequestCodec(),
              new Ros1Rosdemo_v3AOExecuteResponseCodec(),
              (value: Ros1Rosdemo_v3AOExecuteRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/AOExecute incoming request/response owner. */
export class Ros1Rosdemo_v3AOExecuteServer extends BoundedServiceServer<Ros1Rosdemo_v3AOExecuteRequest, Ros1Rosdemo_v3AOExecuteResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3AOExecuteRequestCodec(),
              new Ros1Rosdemo_v3AOExecuteResponseCodec(),
              (value: Ros1Rosdemo_v3AOExecuteResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/AccJ typed call and real-submit client. */
export class Ros1Rosdemo_v3AccJClient extends BoundedServiceClient<Ros1Rosdemo_v3AccJRequest, Ros1Rosdemo_v3AccJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3AccJRequestCodec(),
              new Ros1Rosdemo_v3AccJResponseCodec(),
              (value: Ros1Rosdemo_v3AccJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/AccJ incoming request/response owner. */
export class Ros1Rosdemo_v3AccJServer extends BoundedServiceServer<Ros1Rosdemo_v3AccJRequest, Ros1Rosdemo_v3AccJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3AccJRequestCodec(),
              new Ros1Rosdemo_v3AccJResponseCodec(),
              (value: Ros1Rosdemo_v3AccJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/AccL typed call and real-submit client. */
export class Ros1Rosdemo_v3AccLClient extends BoundedServiceClient<Ros1Rosdemo_v3AccLRequest, Ros1Rosdemo_v3AccLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3AccLRequestCodec(),
              new Ros1Rosdemo_v3AccLResponseCodec(),
              (value: Ros1Rosdemo_v3AccLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/AccL incoming request/response owner. */
export class Ros1Rosdemo_v3AccLServer extends BoundedServiceServer<Ros1Rosdemo_v3AccLRequest, Ros1Rosdemo_v3AccLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3AccLRequestCodec(),
              new Ros1Rosdemo_v3AccLResponseCodec(),
              (value: Ros1Rosdemo_v3AccLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/Arc typed call and real-submit client. */
export class Ros1Rosdemo_v3ArcClient extends BoundedServiceClient<Ros1Rosdemo_v3ArcRequest, Ros1Rosdemo_v3ArcResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ArcRequestCodec(),
              new Ros1Rosdemo_v3ArcResponseCodec(),
              (value: Ros1Rosdemo_v3ArcRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Arc incoming request/response owner. */
export class Ros1Rosdemo_v3ArcServer extends BoundedServiceServer<Ros1Rosdemo_v3ArcRequest, Ros1Rosdemo_v3ArcResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ArcRequestCodec(),
              new Ros1Rosdemo_v3ArcResponseCodec(),
              (value: Ros1Rosdemo_v3ArcResponse): bool => value.validValue(),
              4260,
              capacity);
    }
}

/** Complete rosdemo_v3/Arch typed call and real-submit client. */
export class Ros1Rosdemo_v3ArchClient extends BoundedServiceClient<Ros1Rosdemo_v3ArchRequest, Ros1Rosdemo_v3ArchResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ArchRequestCodec(),
              new Ros1Rosdemo_v3ArchResponseCodec(),
              (value: Ros1Rosdemo_v3ArchRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Arch incoming request/response owner. */
export class Ros1Rosdemo_v3ArchServer extends BoundedServiceServer<Ros1Rosdemo_v3ArchRequest, Ros1Rosdemo_v3ArchResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ArchRequestCodec(),
              new Ros1Rosdemo_v3ArchResponseCodec(),
              (value: Ros1Rosdemo_v3ArchResponse): bool => value.validValue(),
              4168,
              capacity);
    }
}

/** Complete rosdemo_v3/BrakeControl typed call and real-submit client. */
export class Ros1Rosdemo_v3BrakeControlClient extends BoundedServiceClient<Ros1Rosdemo_v3BrakeControlRequest, Ros1Rosdemo_v3BrakeControlResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3BrakeControlRequestCodec(),
              new Ros1Rosdemo_v3BrakeControlResponseCodec(),
              (value: Ros1Rosdemo_v3BrakeControlRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/BrakeControl incoming request/response owner. */
export class Ros1Rosdemo_v3BrakeControlServer extends BoundedServiceServer<Ros1Rosdemo_v3BrakeControlRequest, Ros1Rosdemo_v3BrakeControlResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3BrakeControlRequestCodec(),
              new Ros1Rosdemo_v3BrakeControlResponseCodec(),
              (value: Ros1Rosdemo_v3BrakeControlResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/CP typed call and real-submit client. */
export class Ros1Rosdemo_v3CPClient extends BoundedServiceClient<Ros1Rosdemo_v3CPRequest, Ros1Rosdemo_v3CPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3CPRequestCodec(),
              new Ros1Rosdemo_v3CPResponseCodec(),
              (value: Ros1Rosdemo_v3CPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/CP incoming request/response owner. */
export class Ros1Rosdemo_v3CPServer extends BoundedServiceServer<Ros1Rosdemo_v3CPRequest, Ros1Rosdemo_v3CPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3CPRequestCodec(),
              new Ros1Rosdemo_v3CPResponseCodec(),
              (value: Ros1Rosdemo_v3CPResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/Circle typed call and real-submit client. */
export class Ros1Rosdemo_v3CircleClient extends BoundedServiceClient<Ros1Rosdemo_v3CircleRequest, Ros1Rosdemo_v3CircleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3CircleRequestCodec(),
              new Ros1Rosdemo_v3CircleResponseCodec(),
              (value: Ros1Rosdemo_v3CircleRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Circle incoming request/response owner. */
export class Ros1Rosdemo_v3CircleServer extends BoundedServiceServer<Ros1Rosdemo_v3CircleRequest, Ros1Rosdemo_v3CircleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3CircleRequestCodec(),
              new Ros1Rosdemo_v3CircleResponseCodec(),
              (value: Ros1Rosdemo_v3CircleResponse): bool => value.validValue(),
              4264,
              capacity);
    }
}

/** Complete rosdemo_v3/ClearError typed call and real-submit client. */
export class Ros1Rosdemo_v3ClearErrorClient extends BoundedServiceClient<Ros1Rosdemo_v3ClearErrorRequest, Ros1Rosdemo_v3ClearErrorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ClearErrorRequestCodec(),
              new Ros1Rosdemo_v3ClearErrorResponseCodec(),
              (value: Ros1Rosdemo_v3ClearErrorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ClearError incoming request/response owner. */
export class Ros1Rosdemo_v3ClearErrorServer extends BoundedServiceServer<Ros1Rosdemo_v3ClearErrorRequest, Ros1Rosdemo_v3ClearErrorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ClearErrorRequestCodec(),
              new Ros1Rosdemo_v3ClearErrorResponseCodec(),
              (value: Ros1Rosdemo_v3ClearErrorResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/ContinueScript typed call and real-submit client. */
export class Ros1Rosdemo_v3ContinueScriptClient extends BoundedServiceClient<Ros1Rosdemo_v3ContinueScriptRequest, Ros1Rosdemo_v3ContinueScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ContinueScriptRequestCodec(),
              new Ros1Rosdemo_v3ContinueScriptResponseCodec(),
              (value: Ros1Rosdemo_v3ContinueScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ContinueScript incoming request/response owner. */
export class Ros1Rosdemo_v3ContinueScriptServer extends BoundedServiceServer<Ros1Rosdemo_v3ContinueScriptRequest, Ros1Rosdemo_v3ContinueScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ContinueScriptRequestCodec(),
              new Ros1Rosdemo_v3ContinueScriptResponseCodec(),
              (value: Ros1Rosdemo_v3ContinueScriptResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/Continues typed call and real-submit client. */
export class Ros1Rosdemo_v3ContinuesClient extends BoundedServiceClient<Ros1Rosdemo_v3ContinuesRequest, Ros1Rosdemo_v3ContinuesResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ContinuesRequestCodec(),
              new Ros1Rosdemo_v3ContinuesResponseCodec(),
              (value: Ros1Rosdemo_v3ContinuesRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Continues incoming request/response owner. */
export class Ros1Rosdemo_v3ContinuesServer extends BoundedServiceServer<Ros1Rosdemo_v3ContinuesRequest, Ros1Rosdemo_v3ContinuesResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ContinuesRequestCodec(),
              new Ros1Rosdemo_v3ContinuesResponseCodec(),
              (value: Ros1Rosdemo_v3ContinuesResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/DI typed call and real-submit client. */
export class Ros1Rosdemo_v3DIClient extends BoundedServiceClient<Ros1Rosdemo_v3DIRequest, Ros1Rosdemo_v3DIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3DIRequestCodec(),
              new Ros1Rosdemo_v3DIResponseCodec(),
              (value: Ros1Rosdemo_v3DIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/DI incoming request/response owner. */
export class Ros1Rosdemo_v3DIServer extends BoundedServiceServer<Ros1Rosdemo_v3DIRequest, Ros1Rosdemo_v3DIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3DIRequestCodec(),
              new Ros1Rosdemo_v3DIResponseCodec(),
              (value: Ros1Rosdemo_v3DIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/DIGroup typed call and real-submit client. */
export class Ros1Rosdemo_v3DIGroupClient extends BoundedServiceClient<Ros1Rosdemo_v3DIGroupRequest, Ros1Rosdemo_v3DIGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3DIGroupRequestCodec(),
              new Ros1Rosdemo_v3DIGroupResponseCodec(),
              (value: Ros1Rosdemo_v3DIGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/DIGroup incoming request/response owner. */
export class Ros1Rosdemo_v3DIGroupServer extends BoundedServiceServer<Ros1Rosdemo_v3DIGroupRequest, Ros1Rosdemo_v3DIGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3DIGroupRequestCodec(),
              new Ros1Rosdemo_v3DIGroupResponseCodec(),
              (value: Ros1Rosdemo_v3DIGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete rosdemo_v3/DO typed call and real-submit client. */
export class Ros1Rosdemo_v3DOClient extends BoundedServiceClient<Ros1Rosdemo_v3DORequest, Ros1Rosdemo_v3DOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3DORequestCodec(),
              new Ros1Rosdemo_v3DOResponseCodec(),
              (value: Ros1Rosdemo_v3DORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/DO incoming request/response owner. */
export class Ros1Rosdemo_v3DOServer extends BoundedServiceServer<Ros1Rosdemo_v3DORequest, Ros1Rosdemo_v3DOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3DORequestCodec(),
              new Ros1Rosdemo_v3DOResponseCodec(),
              (value: Ros1Rosdemo_v3DOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/DOExecute typed call and real-submit client. */
export class Ros1Rosdemo_v3DOExecuteClient extends BoundedServiceClient<Ros1Rosdemo_v3DOExecuteRequest, Ros1Rosdemo_v3DOExecuteResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3DOExecuteRequestCodec(),
              new Ros1Rosdemo_v3DOExecuteResponseCodec(),
              (value: Ros1Rosdemo_v3DOExecuteRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/DOExecute incoming request/response owner. */
export class Ros1Rosdemo_v3DOExecuteServer extends BoundedServiceServer<Ros1Rosdemo_v3DOExecuteRequest, Ros1Rosdemo_v3DOExecuteResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3DOExecuteRequestCodec(),
              new Ros1Rosdemo_v3DOExecuteResponseCodec(),
              (value: Ros1Rosdemo_v3DOExecuteResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/DOGroup typed call and real-submit client. */
export class Ros1Rosdemo_v3DOGroupClient extends BoundedServiceClient<Ros1Rosdemo_v3DOGroupRequest, Ros1Rosdemo_v3DOGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3DOGroupRequestCodec(),
              new Ros1Rosdemo_v3DOGroupResponseCodec(),
              (value: Ros1Rosdemo_v3DOGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/DOGroup incoming request/response owner. */
export class Ros1Rosdemo_v3DOGroupServer extends BoundedServiceServer<Ros1Rosdemo_v3DOGroupRequest, Ros1Rosdemo_v3DOGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3DOGroupRequestCodec(),
              new Ros1Rosdemo_v3DOGroupResponseCodec(),
              (value: Ros1Rosdemo_v3DOGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete rosdemo_v3/DigitalOutputs typed call and real-submit client. */
export class Ros1Rosdemo_v3DigitalOutputsClient extends BoundedServiceClient<Ros1Rosdemo_v3DigitalOutputsRequest, Ros1Rosdemo_v3DigitalOutputsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3DigitalOutputsRequestCodec(),
              new Ros1Rosdemo_v3DigitalOutputsResponseCodec(),
              (value: Ros1Rosdemo_v3DigitalOutputsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/DigitalOutputs incoming request/response owner. */
export class Ros1Rosdemo_v3DigitalOutputsServer extends BoundedServiceServer<Ros1Rosdemo_v3DigitalOutputsRequest, Ros1Rosdemo_v3DigitalOutputsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3DigitalOutputsRequestCodec(),
              new Ros1Rosdemo_v3DigitalOutputsResponseCodec(),
              (value: Ros1Rosdemo_v3DigitalOutputsResponse): bool => value.validValue(),
              5,
              capacity);
    }
}

/** Complete rosdemo_v3/DisableRobot typed call and real-submit client. */
export class Ros1Rosdemo_v3DisableRobotClient extends BoundedServiceClient<Ros1Rosdemo_v3DisableRobotRequest, Ros1Rosdemo_v3DisableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3DisableRobotRequestCodec(),
              new Ros1Rosdemo_v3DisableRobotResponseCodec(),
              (value: Ros1Rosdemo_v3DisableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/DisableRobot incoming request/response owner. */
export class Ros1Rosdemo_v3DisableRobotServer extends BoundedServiceServer<Ros1Rosdemo_v3DisableRobotRequest, Ros1Rosdemo_v3DisableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3DisableRobotRequestCodec(),
              new Ros1Rosdemo_v3DisableRobotResponseCodec(),
              (value: Ros1Rosdemo_v3DisableRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/EmergencyStop typed call and real-submit client. */
export class Ros1Rosdemo_v3EmergencyStopClient extends BoundedServiceClient<Ros1Rosdemo_v3EmergencyStopRequest, Ros1Rosdemo_v3EmergencyStopResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3EmergencyStopRequestCodec(),
              new Ros1Rosdemo_v3EmergencyStopResponseCodec(),
              (value: Ros1Rosdemo_v3EmergencyStopRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/EmergencyStop incoming request/response owner. */
export class Ros1Rosdemo_v3EmergencyStopServer extends BoundedServiceServer<Ros1Rosdemo_v3EmergencyStopRequest, Ros1Rosdemo_v3EmergencyStopResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3EmergencyStopRequestCodec(),
              new Ros1Rosdemo_v3EmergencyStopResponseCodec(),
              (value: Ros1Rosdemo_v3EmergencyStopResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/EnableRobot typed call and real-submit client. */
export class Ros1Rosdemo_v3EnableRobotClient extends BoundedServiceClient<Ros1Rosdemo_v3EnableRobotRequest, Ros1Rosdemo_v3EnableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3EnableRobotRequestCodec(),
              new Ros1Rosdemo_v3EnableRobotResponseCodec(),
              (value: Ros1Rosdemo_v3EnableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/EnableRobot incoming request/response owner. */
export class Ros1Rosdemo_v3EnableRobotServer extends BoundedServiceServer<Ros1Rosdemo_v3EnableRobotRequest, Ros1Rosdemo_v3EnableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3EnableRobotRequestCodec(),
              new Ros1Rosdemo_v3EnableRobotResponseCodec(),
              (value: Ros1Rosdemo_v3EnableRobotResponse): bool => value.validValue(),
              132,
              capacity);
    }
}

/** Complete rosdemo_v3/GetAngle typed call and real-submit client. */
export class Ros1Rosdemo_v3GetAngleClient extends BoundedServiceClient<Ros1Rosdemo_v3GetAngleRequest, Ros1Rosdemo_v3GetAngleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetAngleRequestCodec(),
              new Ros1Rosdemo_v3GetAngleResponseCodec(),
              (value: Ros1Rosdemo_v3GetAngleRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetAngle incoming request/response owner. */
export class Ros1Rosdemo_v3GetAngleServer extends BoundedServiceServer<Ros1Rosdemo_v3GetAngleRequest, Ros1Rosdemo_v3GetAngleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetAngleRequestCodec(),
              new Ros1Rosdemo_v3GetAngleResponseCodec(),
              (value: Ros1Rosdemo_v3GetAngleResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/GetCoils typed call and real-submit client. */
export class Ros1Rosdemo_v3GetCoilsClient extends BoundedServiceClient<Ros1Rosdemo_v3GetCoilsRequest, Ros1Rosdemo_v3GetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetCoilsRequestCodec(),
              new Ros1Rosdemo_v3GetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v3GetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetCoils incoming request/response owner. */
export class Ros1Rosdemo_v3GetCoilsServer extends BoundedServiceServer<Ros1Rosdemo_v3GetCoilsRequest, Ros1Rosdemo_v3GetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetCoilsRequestCodec(),
              new Ros1Rosdemo_v3GetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v3GetCoilsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete rosdemo_v3/GetErrorID typed call and real-submit client. */
export class Ros1Rosdemo_v3GetErrorIDClient extends BoundedServiceClient<Ros1Rosdemo_v3GetErrorIDRequest, Ros1Rosdemo_v3GetErrorIDResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetErrorIDRequestCodec(),
              new Ros1Rosdemo_v3GetErrorIDResponseCodec(),
              (value: Ros1Rosdemo_v3GetErrorIDRequest): bool => value.validValue(),
              72,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetErrorID incoming request/response owner. */
export class Ros1Rosdemo_v3GetErrorIDServer extends BoundedServiceServer<Ros1Rosdemo_v3GetErrorIDRequest, Ros1Rosdemo_v3GetErrorIDResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetErrorIDRequestCodec(),
              new Ros1Rosdemo_v3GetErrorIDResponseCodec(),
              (value: Ros1Rosdemo_v3GetErrorIDResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/GetHoldRegs typed call and real-submit client. */
export class Ros1Rosdemo_v3GetHoldRegsClient extends BoundedServiceClient<Ros1Rosdemo_v3GetHoldRegsRequest, Ros1Rosdemo_v3GetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v3GetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v3GetHoldRegsRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetHoldRegs incoming request/response owner. */
export class Ros1Rosdemo_v3GetHoldRegsServer extends BoundedServiceServer<Ros1Rosdemo_v3GetHoldRegsRequest, Ros1Rosdemo_v3GetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v3GetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v3GetHoldRegsResponse): bool => value.validValue(),
              4176,
              capacity);
    }
}

/** Complete rosdemo_v3/GetInBits typed call and real-submit client. */
export class Ros1Rosdemo_v3GetInBitsClient extends BoundedServiceClient<Ros1Rosdemo_v3GetInBitsRequest, Ros1Rosdemo_v3GetInBitsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetInBitsRequestCodec(),
              new Ros1Rosdemo_v3GetInBitsResponseCodec(),
              (value: Ros1Rosdemo_v3GetInBitsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetInBits incoming request/response owner. */
export class Ros1Rosdemo_v3GetInBitsServer extends BoundedServiceServer<Ros1Rosdemo_v3GetInBitsRequest, Ros1Rosdemo_v3GetInBitsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetInBitsRequestCodec(),
              new Ros1Rosdemo_v3GetInBitsResponseCodec(),
              (value: Ros1Rosdemo_v3GetInBitsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete rosdemo_v3/GetInRegs typed call and real-submit client. */
export class Ros1Rosdemo_v3GetInRegsClient extends BoundedServiceClient<Ros1Rosdemo_v3GetInRegsRequest, Ros1Rosdemo_v3GetInRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetInRegsRequestCodec(),
              new Ros1Rosdemo_v3GetInRegsResponseCodec(),
              (value: Ros1Rosdemo_v3GetInRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetInRegs incoming request/response owner. */
export class Ros1Rosdemo_v3GetInRegsServer extends BoundedServiceServer<Ros1Rosdemo_v3GetInRegsRequest, Ros1Rosdemo_v3GetInRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetInRegsRequestCodec(),
              new Ros1Rosdemo_v3GetInRegsResponseCodec(),
              (value: Ros1Rosdemo_v3GetInRegsResponse): bool => value.validValue(),
              4176,
              capacity);
    }
}

/** Complete rosdemo_v3/GetPathStartPose typed call and real-submit client. */
export class Ros1Rosdemo_v3GetPathStartPoseClient extends BoundedServiceClient<Ros1Rosdemo_v3GetPathStartPoseRequest, Ros1Rosdemo_v3GetPathStartPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetPathStartPoseRequestCodec(),
              new Ros1Rosdemo_v3GetPathStartPoseResponseCodec(),
              (value: Ros1Rosdemo_v3GetPathStartPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetPathStartPose incoming request/response owner. */
export class Ros1Rosdemo_v3GetPathStartPoseServer extends BoundedServiceServer<Ros1Rosdemo_v3GetPathStartPoseRequest, Ros1Rosdemo_v3GetPathStartPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetPathStartPoseRequestCodec(),
              new Ros1Rosdemo_v3GetPathStartPoseResponseCodec(),
              (value: Ros1Rosdemo_v3GetPathStartPoseResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v3/GetPose typed call and real-submit client. */
export class Ros1Rosdemo_v3GetPoseClient extends BoundedServiceClient<Ros1Rosdemo_v3GetPoseRequest, Ros1Rosdemo_v3GetPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetPoseRequestCodec(),
              new Ros1Rosdemo_v3GetPoseResponseCodec(),
              (value: Ros1Rosdemo_v3GetPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetPose incoming request/response owner. */
export class Ros1Rosdemo_v3GetPoseServer extends BoundedServiceServer<Ros1Rosdemo_v3GetPoseRequest, Ros1Rosdemo_v3GetPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetPoseRequestCodec(),
              new Ros1Rosdemo_v3GetPoseResponseCodec(),
              (value: Ros1Rosdemo_v3GetPoseResponse): bool => value.validValue(),
              136,
              capacity);
    }
}

/** Complete rosdemo_v3/GetSixForceData typed call and real-submit client. */
export class Ros1Rosdemo_v3GetSixForceDataClient extends BoundedServiceClient<Ros1Rosdemo_v3GetSixForceDataRequest, Ros1Rosdemo_v3GetSixForceDataResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetSixForceDataRequestCodec(),
              new Ros1Rosdemo_v3GetSixForceDataResponseCodec(),
              (value: Ros1Rosdemo_v3GetSixForceDataRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetSixForceData incoming request/response owner. */
export class Ros1Rosdemo_v3GetSixForceDataServer extends BoundedServiceServer<Ros1Rosdemo_v3GetSixForceDataRequest, Ros1Rosdemo_v3GetSixForceDataResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetSixForceDataRequestCodec(),
              new Ros1Rosdemo_v3GetSixForceDataResponseCodec(),
              (value: Ros1Rosdemo_v3GetSixForceDataResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/GetTerminal485 typed call and real-submit client. */
export class Ros1Rosdemo_v3GetTerminal485Client extends BoundedServiceClient<Ros1Rosdemo_v3GetTerminal485Request, Ros1Rosdemo_v3GetTerminal485Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetTerminal485RequestCodec(),
              new Ros1Rosdemo_v3GetTerminal485ResponseCodec(),
              (value: Ros1Rosdemo_v3GetTerminal485Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetTerminal485 incoming request/response owner. */
export class Ros1Rosdemo_v3GetTerminal485Server extends BoundedServiceServer<Ros1Rosdemo_v3GetTerminal485Request, Ros1Rosdemo_v3GetTerminal485Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetTerminal485RequestCodec(),
              new Ros1Rosdemo_v3GetTerminal485ResponseCodec(),
              (value: Ros1Rosdemo_v3GetTerminal485Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/GetTraceStartPose typed call and real-submit client. */
export class Ros1Rosdemo_v3GetTraceStartPoseClient extends BoundedServiceClient<Ros1Rosdemo_v3GetTraceStartPoseRequest, Ros1Rosdemo_v3GetTraceStartPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3GetTraceStartPoseRequestCodec(),
              new Ros1Rosdemo_v3GetTraceStartPoseResponseCodec(),
              (value: Ros1Rosdemo_v3GetTraceStartPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetTraceStartPose incoming request/response owner. */
export class Ros1Rosdemo_v3GetTraceStartPoseServer extends BoundedServiceServer<Ros1Rosdemo_v3GetTraceStartPoseRequest, Ros1Rosdemo_v3GetTraceStartPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3GetTraceStartPoseRequestCodec(),
              new Ros1Rosdemo_v3GetTraceStartPoseResponseCodec(),
              (value: Ros1Rosdemo_v3GetTraceStartPoseResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v3/HandleTrajPoints typed call and real-submit client. */
export class Ros1Rosdemo_v3HandleTrajPointsClient extends BoundedServiceClient<Ros1Rosdemo_v3HandleTrajPointsRequest, Ros1Rosdemo_v3HandleTrajPointsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3HandleTrajPointsRequestCodec(),
              new Ros1Rosdemo_v3HandleTrajPointsResponseCodec(),
              (value: Ros1Rosdemo_v3HandleTrajPointsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/HandleTrajPoints incoming request/response owner. */
export class Ros1Rosdemo_v3HandleTrajPointsServer extends BoundedServiceServer<Ros1Rosdemo_v3HandleTrajPointsRequest, Ros1Rosdemo_v3HandleTrajPointsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3HandleTrajPointsRequestCodec(),
              new Ros1Rosdemo_v3HandleTrajPointsResponseCodec(),
              (value: Ros1Rosdemo_v3HandleTrajPointsResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v3/InverseSolution typed call and real-submit client. */
export class Ros1Rosdemo_v3InverseSolutionClient extends BoundedServiceClient<Ros1Rosdemo_v3InverseSolutionRequest, Ros1Rosdemo_v3InverseSolutionResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3InverseSolutionRequestCodec(),
              new Ros1Rosdemo_v3InverseSolutionResponseCodec(),
              (value: Ros1Rosdemo_v3InverseSolutionRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/InverseSolution incoming request/response owner. */
export class Ros1Rosdemo_v3InverseSolutionServer extends BoundedServiceServer<Ros1Rosdemo_v3InverseSolutionRequest, Ros1Rosdemo_v3InverseSolutionResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3InverseSolutionRequestCodec(),
              new Ros1Rosdemo_v3InverseSolutionResponseCodec(),
              (value: Ros1Rosdemo_v3InverseSolutionResponse): bool => value.validValue(),
              320,
              capacity);
    }
}

/** Complete rosdemo_v3/JointMovJ typed call and real-submit client. */
export class Ros1Rosdemo_v3JointMovJClient extends BoundedServiceClient<Ros1Rosdemo_v3JointMovJRequest, Ros1Rosdemo_v3JointMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3JointMovJRequestCodec(),
              new Ros1Rosdemo_v3JointMovJResponseCodec(),
              (value: Ros1Rosdemo_v3JointMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/JointMovJ incoming request/response owner. */
export class Ros1Rosdemo_v3JointMovJServer extends BoundedServiceServer<Ros1Rosdemo_v3JointMovJRequest, Ros1Rosdemo_v3JointMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3JointMovJRequestCodec(),
              new Ros1Rosdemo_v3JointMovJResponseCodec(),
              (value: Ros1Rosdemo_v3JointMovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v3/Jump typed call and real-submit client. */
export class Ros1Rosdemo_v3JumpClient extends BoundedServiceClient<Ros1Rosdemo_v3JumpRequest, Ros1Rosdemo_v3JumpResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3JumpRequestCodec(),
              new Ros1Rosdemo_v3JumpResponseCodec(),
              (value: Ros1Rosdemo_v3JumpRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Jump incoming request/response owner. */
export class Ros1Rosdemo_v3JumpServer extends BoundedServiceServer<Ros1Rosdemo_v3JumpRequest, Ros1Rosdemo_v3JumpResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3JumpRequestCodec(),
              new Ros1Rosdemo_v3JumpResponseCodec(),
              (value: Ros1Rosdemo_v3JumpResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete rosdemo_v3/LimZ typed call and real-submit client. */
export class Ros1Rosdemo_v3LimZClient extends BoundedServiceClient<Ros1Rosdemo_v3LimZRequest, Ros1Rosdemo_v3LimZResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3LimZRequestCodec(),
              new Ros1Rosdemo_v3LimZResponseCodec(),
              (value: Ros1Rosdemo_v3LimZRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/LimZ incoming request/response owner. */
export class Ros1Rosdemo_v3LimZServer extends BoundedServiceServer<Ros1Rosdemo_v3LimZRequest, Ros1Rosdemo_v3LimZResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3LimZRequestCodec(),
              new Ros1Rosdemo_v3LimZResponseCodec(),
              (value: Ros1Rosdemo_v3LimZResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/LoadSwitch typed call and real-submit client. */
export class Ros1Rosdemo_v3LoadSwitchClient extends BoundedServiceClient<Ros1Rosdemo_v3LoadSwitchRequest, Ros1Rosdemo_v3LoadSwitchResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3LoadSwitchRequestCodec(),
              new Ros1Rosdemo_v3LoadSwitchResponseCodec(),
              (value: Ros1Rosdemo_v3LoadSwitchRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/LoadSwitch incoming request/response owner. */
export class Ros1Rosdemo_v3LoadSwitchServer extends BoundedServiceServer<Ros1Rosdemo_v3LoadSwitchRequest, Ros1Rosdemo_v3LoadSwitchResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3LoadSwitchRequestCodec(),
              new Ros1Rosdemo_v3LoadSwitchResponseCodec(),
              (value: Ros1Rosdemo_v3LoadSwitchResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/ModbusClose typed call and real-submit client. */
export class Ros1Rosdemo_v3ModbusCloseClient extends BoundedServiceClient<Ros1Rosdemo_v3ModbusCloseRequest, Ros1Rosdemo_v3ModbusCloseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ModbusCloseRequestCodec(),
              new Ros1Rosdemo_v3ModbusCloseResponseCodec(),
              (value: Ros1Rosdemo_v3ModbusCloseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ModbusClose incoming request/response owner. */
export class Ros1Rosdemo_v3ModbusCloseServer extends BoundedServiceServer<Ros1Rosdemo_v3ModbusCloseRequest, Ros1Rosdemo_v3ModbusCloseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ModbusCloseRequestCodec(),
              new Ros1Rosdemo_v3ModbusCloseResponseCodec(),
              (value: Ros1Rosdemo_v3ModbusCloseResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/ModbusCreate typed call and real-submit client. */
export class Ros1Rosdemo_v3ModbusCreateClient extends BoundedServiceClient<Ros1Rosdemo_v3ModbusCreateRequest, Ros1Rosdemo_v3ModbusCreateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ModbusCreateRequestCodec(),
              new Ros1Rosdemo_v3ModbusCreateResponseCodec(),
              (value: Ros1Rosdemo_v3ModbusCreateRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ModbusCreate incoming request/response owner. */
export class Ros1Rosdemo_v3ModbusCreateServer extends BoundedServiceServer<Ros1Rosdemo_v3ModbusCreateRequest, Ros1Rosdemo_v3ModbusCreateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ModbusCreateRequestCodec(),
              new Ros1Rosdemo_v3ModbusCreateResponseCodec(),
              (value: Ros1Rosdemo_v3ModbusCreateResponse): bool => value.validValue(),
              336,
              capacity);
    }
}

/** Complete rosdemo_v3/MovJ typed call and real-submit client. */
export class Ros1Rosdemo_v3MovJClient extends BoundedServiceClient<Ros1Rosdemo_v3MovJRequest, Ros1Rosdemo_v3MovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3MovJRequestCodec(),
              new Ros1Rosdemo_v3MovJResponseCodec(),
              (value: Ros1Rosdemo_v3MovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/MovJ incoming request/response owner. */
export class Ros1Rosdemo_v3MovJServer extends BoundedServiceServer<Ros1Rosdemo_v3MovJRequest, Ros1Rosdemo_v3MovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3MovJRequestCodec(),
              new Ros1Rosdemo_v3MovJResponseCodec(),
              (value: Ros1Rosdemo_v3MovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v3/MovJExt typed call and real-submit client. */
export class Ros1Rosdemo_v3MovJExtClient extends BoundedServiceClient<Ros1Rosdemo_v3MovJExtRequest, Ros1Rosdemo_v3MovJExtResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3MovJExtRequestCodec(),
              new Ros1Rosdemo_v3MovJExtResponseCodec(),
              (value: Ros1Rosdemo_v3MovJExtRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/MovJExt incoming request/response owner. */
export class Ros1Rosdemo_v3MovJExtServer extends BoundedServiceServer<Ros1Rosdemo_v3MovJExtRequest, Ros1Rosdemo_v3MovJExtResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3MovJExtRequestCodec(),
              new Ros1Rosdemo_v3MovJExtResponseCodec(),
              (value: Ros1Rosdemo_v3MovJExtResponse): bool => value.validValue(),
              4172,
              capacity);
    }
}

/** Complete rosdemo_v3/MovJIO typed call and real-submit client. */
export class Ros1Rosdemo_v3MovJIOClient extends BoundedServiceClient<Ros1Rosdemo_v3MovJIORequest, Ros1Rosdemo_v3MovJIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3MovJIORequestCodec(),
              new Ros1Rosdemo_v3MovJIOResponseCodec(),
              (value: Ros1Rosdemo_v3MovJIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/MovJIO incoming request/response owner. */
export class Ros1Rosdemo_v3MovJIOServer extends BoundedServiceServer<Ros1Rosdemo_v3MovJIORequest, Ros1Rosdemo_v3MovJIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3MovJIORequestCodec(),
              new Ros1Rosdemo_v3MovJIOResponseCodec(),
              (value: Ros1Rosdemo_v3MovJIOResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v3/MovL typed call and real-submit client. */
export class Ros1Rosdemo_v3MovLClient extends BoundedServiceClient<Ros1Rosdemo_v3MovLRequest, Ros1Rosdemo_v3MovLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3MovLRequestCodec(),
              new Ros1Rosdemo_v3MovLResponseCodec(),
              (value: Ros1Rosdemo_v3MovLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/MovL incoming request/response owner. */
export class Ros1Rosdemo_v3MovLServer extends BoundedServiceServer<Ros1Rosdemo_v3MovLRequest, Ros1Rosdemo_v3MovLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3MovLRequestCodec(),
              new Ros1Rosdemo_v3MovLResponseCodec(),
              (value: Ros1Rosdemo_v3MovLResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v3/MovLIO typed call and real-submit client. */
export class Ros1Rosdemo_v3MovLIOClient extends BoundedServiceClient<Ros1Rosdemo_v3MovLIORequest, Ros1Rosdemo_v3MovLIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3MovLIORequestCodec(),
              new Ros1Rosdemo_v3MovLIOResponseCodec(),
              (value: Ros1Rosdemo_v3MovLIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/MovLIO incoming request/response owner. */
export class Ros1Rosdemo_v3MovLIOServer extends BoundedServiceServer<Ros1Rosdemo_v3MovLIORequest, Ros1Rosdemo_v3MovLIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3MovLIORequestCodec(),
              new Ros1Rosdemo_v3MovLIOResponseCodec(),
              (value: Ros1Rosdemo_v3MovLIOResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v3/MoveJog typed call and real-submit client. */
export class Ros1Rosdemo_v3MoveJogClient extends BoundedServiceClient<Ros1Rosdemo_v3MoveJogRequest, Ros1Rosdemo_v3MoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3MoveJogRequestCodec(),
              new Ros1Rosdemo_v3MoveJogResponseCodec(),
              (value: Ros1Rosdemo_v3MoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/MoveJog incoming request/response owner. */
export class Ros1Rosdemo_v3MoveJogServer extends BoundedServiceServer<Ros1Rosdemo_v3MoveJogRequest, Ros1Rosdemo_v3MoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3MoveJogRequestCodec(),
              new Ros1Rosdemo_v3MoveJogResponseCodec(),
              (value: Ros1Rosdemo_v3MoveJogResponse): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete rosdemo_v3/PauseScript typed call and real-submit client. */
export class Ros1Rosdemo_v3PauseScriptClient extends BoundedServiceClient<Ros1Rosdemo_v3PauseScriptRequest, Ros1Rosdemo_v3PauseScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3PauseScriptRequestCodec(),
              new Ros1Rosdemo_v3PauseScriptResponseCodec(),
              (value: Ros1Rosdemo_v3PauseScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/PauseScript incoming request/response owner. */
export class Ros1Rosdemo_v3PauseScriptServer extends BoundedServiceServer<Ros1Rosdemo_v3PauseScriptRequest, Ros1Rosdemo_v3PauseScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3PauseScriptRequestCodec(),
              new Ros1Rosdemo_v3PauseScriptResponseCodec(),
              (value: Ros1Rosdemo_v3PauseScriptResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/PayLoad typed call and real-submit client. */
export class Ros1Rosdemo_v3PayLoadClient extends BoundedServiceClient<Ros1Rosdemo_v3PayLoadRequest, Ros1Rosdemo_v3PayLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3PayLoadRequestCodec(),
              new Ros1Rosdemo_v3PayLoadResponseCodec(),
              (value: Ros1Rosdemo_v3PayLoadRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/PayLoad incoming request/response owner. */
export class Ros1Rosdemo_v3PayLoadServer extends BoundedServiceServer<Ros1Rosdemo_v3PayLoadRequest, Ros1Rosdemo_v3PayLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3PayLoadRequestCodec(),
              new Ros1Rosdemo_v3PayLoadResponseCodec(),
              (value: Ros1Rosdemo_v3PayLoadResponse): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete rosdemo_v3/PositiveSolution typed call and real-submit client. */
export class Ros1Rosdemo_v3PositiveSolutionClient extends BoundedServiceClient<Ros1Rosdemo_v3PositiveSolutionRequest, Ros1Rosdemo_v3PositiveSolutionResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3PositiveSolutionRequestCodec(),
              new Ros1Rosdemo_v3PositiveSolutionResponseCodec(),
              (value: Ros1Rosdemo_v3PositiveSolutionRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/PositiveSolution incoming request/response owner. */
export class Ros1Rosdemo_v3PositiveSolutionServer extends BoundedServiceServer<Ros1Rosdemo_v3PositiveSolutionRequest, Ros1Rosdemo_v3PositiveSolutionResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3PositiveSolutionRequestCodec(),
              new Ros1Rosdemo_v3PositiveSolutionResponseCodec(),
              (value: Ros1Rosdemo_v3PositiveSolutionResponse): bool => value.validValue(),
              56,
              capacity);
    }
}

/** Complete rosdemo_v3/PowerOn typed call and real-submit client. */
export class Ros1Rosdemo_v3PowerOnClient extends BoundedServiceClient<Ros1Rosdemo_v3PowerOnRequest, Ros1Rosdemo_v3PowerOnResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3PowerOnRequestCodec(),
              new Ros1Rosdemo_v3PowerOnResponseCodec(),
              (value: Ros1Rosdemo_v3PowerOnRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/PowerOn incoming request/response owner. */
export class Ros1Rosdemo_v3PowerOnServer extends BoundedServiceServer<Ros1Rosdemo_v3PowerOnRequest, Ros1Rosdemo_v3PowerOnResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3PowerOnRequestCodec(),
              new Ros1Rosdemo_v3PowerOnResponseCodec(),
              (value: Ros1Rosdemo_v3PowerOnResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/RelJointMovJ typed call and real-submit client. */
export class Ros1Rosdemo_v3RelJointMovJClient extends BoundedServiceClient<Ros1Rosdemo_v3RelJointMovJRequest, Ros1Rosdemo_v3RelJointMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RelJointMovJRequestCodec(),
              new Ros1Rosdemo_v3RelJointMovJResponseCodec(),
              (value: Ros1Rosdemo_v3RelJointMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RelJointMovJ incoming request/response owner. */
export class Ros1Rosdemo_v3RelJointMovJServer extends BoundedServiceServer<Ros1Rosdemo_v3RelJointMovJRequest, Ros1Rosdemo_v3RelJointMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RelJointMovJRequestCodec(),
              new Ros1Rosdemo_v3RelJointMovJResponseCodec(),
              (value: Ros1Rosdemo_v3RelJointMovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovJ typed call and real-submit client. */
export class Ros1Rosdemo_v3RelMovJClient extends BoundedServiceClient<Ros1Rosdemo_v3RelMovJRequest, Ros1Rosdemo_v3RelMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RelMovJRequestCodec(),
              new Ros1Rosdemo_v3RelMovJResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovJ incoming request/response owner. */
export class Ros1Rosdemo_v3RelMovJServer extends BoundedServiceServer<Ros1Rosdemo_v3RelMovJRequest, Ros1Rosdemo_v3RelMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RelMovJRequestCodec(),
              new Ros1Rosdemo_v3RelMovJResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovJResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovJTool typed call and real-submit client. */
export class Ros1Rosdemo_v3RelMovJToolClient extends BoundedServiceClient<Ros1Rosdemo_v3RelMovJToolRequest, Ros1Rosdemo_v3RelMovJToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RelMovJToolRequestCodec(),
              new Ros1Rosdemo_v3RelMovJToolResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovJToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovJTool incoming request/response owner. */
export class Ros1Rosdemo_v3RelMovJToolServer extends BoundedServiceServer<Ros1Rosdemo_v3RelMovJToolRequest, Ros1Rosdemo_v3RelMovJToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RelMovJToolRequestCodec(),
              new Ros1Rosdemo_v3RelMovJToolResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovJToolResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovJUser typed call and real-submit client. */
export class Ros1Rosdemo_v3RelMovJUserClient extends BoundedServiceClient<Ros1Rosdemo_v3RelMovJUserRequest, Ros1Rosdemo_v3RelMovJUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RelMovJUserRequestCodec(),
              new Ros1Rosdemo_v3RelMovJUserResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovJUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovJUser incoming request/response owner. */
export class Ros1Rosdemo_v3RelMovJUserServer extends BoundedServiceServer<Ros1Rosdemo_v3RelMovJUserRequest, Ros1Rosdemo_v3RelMovJUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RelMovJUserRequestCodec(),
              new Ros1Rosdemo_v3RelMovJUserResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovJUserResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovL typed call and real-submit client. */
export class Ros1Rosdemo_v3RelMovLClient extends BoundedServiceClient<Ros1Rosdemo_v3RelMovLRequest, Ros1Rosdemo_v3RelMovLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RelMovLRequestCodec(),
              new Ros1Rosdemo_v3RelMovLResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovL incoming request/response owner. */
export class Ros1Rosdemo_v3RelMovLServer extends BoundedServiceServer<Ros1Rosdemo_v3RelMovLRequest, Ros1Rosdemo_v3RelMovLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RelMovLRequestCodec(),
              new Ros1Rosdemo_v3RelMovLResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovLResponse): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovLTool typed call and real-submit client. */
export class Ros1Rosdemo_v3RelMovLToolClient extends BoundedServiceClient<Ros1Rosdemo_v3RelMovLToolRequest, Ros1Rosdemo_v3RelMovLToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RelMovLToolRequestCodec(),
              new Ros1Rosdemo_v3RelMovLToolResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovLToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovLTool incoming request/response owner. */
export class Ros1Rosdemo_v3RelMovLToolServer extends BoundedServiceServer<Ros1Rosdemo_v3RelMovLToolRequest, Ros1Rosdemo_v3RelMovLToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RelMovLToolRequestCodec(),
              new Ros1Rosdemo_v3RelMovLToolResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovLToolResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovLUser typed call and real-submit client. */
export class Ros1Rosdemo_v3RelMovLUserClient extends BoundedServiceClient<Ros1Rosdemo_v3RelMovLUserRequest, Ros1Rosdemo_v3RelMovLUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RelMovLUserRequestCodec(),
              new Ros1Rosdemo_v3RelMovLUserResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovLUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RelMovLUser incoming request/response owner. */
export class Ros1Rosdemo_v3RelMovLUserServer extends BoundedServiceServer<Ros1Rosdemo_v3RelMovLUserRequest, Ros1Rosdemo_v3RelMovLUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RelMovLUserRequestCodec(),
              new Ros1Rosdemo_v3RelMovLUserResponseCodec(),
              (value: Ros1Rosdemo_v3RelMovLUserResponse): bool => value.validValue(),
              4216,
              capacity);
    }
}

/** Complete rosdemo_v3/ResetRobot typed call and real-submit client. */
export class Ros1Rosdemo_v3ResetRobotClient extends BoundedServiceClient<Ros1Rosdemo_v3ResetRobotRequest, Ros1Rosdemo_v3ResetRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ResetRobotRequestCodec(),
              new Ros1Rosdemo_v3ResetRobotResponseCodec(),
              (value: Ros1Rosdemo_v3ResetRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ResetRobot incoming request/response owner. */
export class Ros1Rosdemo_v3ResetRobotServer extends BoundedServiceServer<Ros1Rosdemo_v3ResetRobotRequest, Ros1Rosdemo_v3ResetRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ResetRobotRequestCodec(),
              new Ros1Rosdemo_v3ResetRobotResponseCodec(),
              (value: Ros1Rosdemo_v3ResetRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/RobotMode typed call and real-submit client. */
export class Ros1Rosdemo_v3RobotModeClient extends BoundedServiceClient<Ros1Rosdemo_v3RobotModeRequest, Ros1Rosdemo_v3RobotModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RobotModeRequestCodec(),
              new Ros1Rosdemo_v3RobotModeResponseCodec(),
              (value: Ros1Rosdemo_v3RobotModeRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RobotMode incoming request/response owner. */
export class Ros1Rosdemo_v3RobotModeServer extends BoundedServiceServer<Ros1Rosdemo_v3RobotModeRequest, Ros1Rosdemo_v3RobotModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RobotModeRequestCodec(),
              new Ros1Rosdemo_v3RobotModeResponseCodec(),
              (value: Ros1Rosdemo_v3RobotModeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/RunScript typed call and real-submit client. */
export class Ros1Rosdemo_v3RunScriptClient extends BoundedServiceClient<Ros1Rosdemo_v3RunScriptRequest, Ros1Rosdemo_v3RunScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3RunScriptRequestCodec(),
              new Ros1Rosdemo_v3RunScriptResponseCodec(),
              (value: Ros1Rosdemo_v3RunScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/RunScript incoming request/response owner. */
export class Ros1Rosdemo_v3RunScriptServer extends BoundedServiceServer<Ros1Rosdemo_v3RunScriptRequest, Ros1Rosdemo_v3RunScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3RunScriptRequestCodec(),
              new Ros1Rosdemo_v3RunScriptResponseCodec(),
              (value: Ros1Rosdemo_v3RunScriptResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v3/ServoJ typed call and real-submit client. */
export class Ros1Rosdemo_v3ServoJClient extends BoundedServiceClient<Ros1Rosdemo_v3ServoJRequest, Ros1Rosdemo_v3ServoJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ServoJRequestCodec(),
              new Ros1Rosdemo_v3ServoJResponseCodec(),
              (value: Ros1Rosdemo_v3ServoJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ServoJ incoming request/response owner. */
export class Ros1Rosdemo_v3ServoJServer extends BoundedServiceServer<Ros1Rosdemo_v3ServoJRequest, Ros1Rosdemo_v3ServoJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ServoJRequestCodec(),
              new Ros1Rosdemo_v3ServoJResponseCodec(),
              (value: Ros1Rosdemo_v3ServoJResponse): bool => value.validValue(),
              444,
              capacity);
    }
}

/** Complete rosdemo_v3/ServoP typed call and real-submit client. */
export class Ros1Rosdemo_v3ServoPClient extends BoundedServiceClient<Ros1Rosdemo_v3ServoPRequest, Ros1Rosdemo_v3ServoPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ServoPRequestCodec(),
              new Ros1Rosdemo_v3ServoPResponseCodec(),
              (value: Ros1Rosdemo_v3ServoPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ServoP incoming request/response owner. */
export class Ros1Rosdemo_v3ServoPServer extends BoundedServiceServer<Ros1Rosdemo_v3ServoPRequest, Ros1Rosdemo_v3ServoPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ServoPRequestCodec(),
              new Ros1Rosdemo_v3ServoPResponseCodec(),
              (value: Ros1Rosdemo_v3ServoPResponse): bool => value.validValue(),
              48,
              capacity);
    }
}

/** Complete rosdemo_v3/SetArmOrientation typed call and real-submit client. */
export class Ros1Rosdemo_v3SetArmOrientationClient extends BoundedServiceClient<Ros1Rosdemo_v3SetArmOrientationRequest, Ros1Rosdemo_v3SetArmOrientationResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetArmOrientationRequestCodec(),
              new Ros1Rosdemo_v3SetArmOrientationResponseCodec(),
              (value: Ros1Rosdemo_v3SetArmOrientationRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetArmOrientation incoming request/response owner. */
export class Ros1Rosdemo_v3SetArmOrientationServer extends BoundedServiceServer<Ros1Rosdemo_v3SetArmOrientationRequest, Ros1Rosdemo_v3SetArmOrientationResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetArmOrientationRequestCodec(),
              new Ros1Rosdemo_v3SetArmOrientationResponseCodec(),
              (value: Ros1Rosdemo_v3SetArmOrientationResponse): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCoils typed call and real-submit client. */
export class Ros1Rosdemo_v3SetCoilsClient extends BoundedServiceClient<Ros1Rosdemo_v3SetCoilsRequest, Ros1Rosdemo_v3SetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetCoilsRequestCodec(),
              new Ros1Rosdemo_v3SetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v3SetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCoils incoming request/response owner. */
export class Ros1Rosdemo_v3SetCoilsServer extends BoundedServiceServer<Ros1Rosdemo_v3SetCoilsRequest, Ros1Rosdemo_v3SetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetCoilsRequestCodec(),
              new Ros1Rosdemo_v3SetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v3SetCoilsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCollideDrag typed call and real-submit client. */
export class Ros1Rosdemo_v3SetCollideDragClient extends BoundedServiceClient<Ros1Rosdemo_v3SetCollideDragRequest, Ros1Rosdemo_v3SetCollideDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetCollideDragRequestCodec(),
              new Ros1Rosdemo_v3SetCollideDragResponseCodec(),
              (value: Ros1Rosdemo_v3SetCollideDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCollideDrag incoming request/response owner. */
export class Ros1Rosdemo_v3SetCollideDragServer extends BoundedServiceServer<Ros1Rosdemo_v3SetCollideDragRequest, Ros1Rosdemo_v3SetCollideDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetCollideDragRequestCodec(),
              new Ros1Rosdemo_v3SetCollideDragResponseCodec(),
              (value: Ros1Rosdemo_v3SetCollideDragResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCollisionLevel typed call and real-submit client. */
export class Ros1Rosdemo_v3SetCollisionLevelClient extends BoundedServiceClient<Ros1Rosdemo_v3SetCollisionLevelRequest, Ros1Rosdemo_v3SetCollisionLevelResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetCollisionLevelRequestCodec(),
              new Ros1Rosdemo_v3SetCollisionLevelResponseCodec(),
              (value: Ros1Rosdemo_v3SetCollisionLevelRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCollisionLevel incoming request/response owner. */
export class Ros1Rosdemo_v3SetCollisionLevelServer extends BoundedServiceServer<Ros1Rosdemo_v3SetCollisionLevelRequest, Ros1Rosdemo_v3SetCollisionLevelResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetCollisionLevelRequestCodec(),
              new Ros1Rosdemo_v3SetCollisionLevelResponseCodec(),
              (value: Ros1Rosdemo_v3SetCollisionLevelResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/SetHoldRegs typed call and real-submit client. */
export class Ros1Rosdemo_v3SetHoldRegsClient extends BoundedServiceClient<Ros1Rosdemo_v3SetHoldRegsRequest, Ros1Rosdemo_v3SetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v3SetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v3SetHoldRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetHoldRegs incoming request/response owner. */
export class Ros1Rosdemo_v3SetHoldRegsServer extends BoundedServiceServer<Ros1Rosdemo_v3SetHoldRegsRequest, Ros1Rosdemo_v3SetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v3SetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v3SetHoldRegsResponse): bool => value.validValue(),
              4436,
              capacity);
    }
}

/** Complete rosdemo_v3/SetObstacleAvoid typed call and real-submit client. */
export class Ros1Rosdemo_v3SetObstacleAvoidClient extends BoundedServiceClient<Ros1Rosdemo_v3SetObstacleAvoidRequest, Ros1Rosdemo_v3SetObstacleAvoidResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetObstacleAvoidRequestCodec(),
              new Ros1Rosdemo_v3SetObstacleAvoidResponseCodec(),
              (value: Ros1Rosdemo_v3SetObstacleAvoidRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetObstacleAvoid incoming request/response owner. */
export class Ros1Rosdemo_v3SetObstacleAvoidServer extends BoundedServiceServer<Ros1Rosdemo_v3SetObstacleAvoidRequest, Ros1Rosdemo_v3SetObstacleAvoidResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetObstacleAvoidRequestCodec(),
              new Ros1Rosdemo_v3SetObstacleAvoidResponseCodec(),
              (value: Ros1Rosdemo_v3SetObstacleAvoidResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/SetPayload typed call and real-submit client. */
export class Ros1Rosdemo_v3SetPayloadClient extends BoundedServiceClient<Ros1Rosdemo_v3SetPayloadRequest, Ros1Rosdemo_v3SetPayloadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetPayloadRequestCodec(),
              new Ros1Rosdemo_v3SetPayloadResponseCodec(),
              (value: Ros1Rosdemo_v3SetPayloadRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetPayload incoming request/response owner. */
export class Ros1Rosdemo_v3SetPayloadServer extends BoundedServiceServer<Ros1Rosdemo_v3SetPayloadRequest, Ros1Rosdemo_v3SetPayloadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetPayloadRequestCodec(),
              new Ros1Rosdemo_v3SetPayloadResponseCodec(),
              (value: Ros1Rosdemo_v3SetPayloadResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/SetSafeSkin typed call and real-submit client. */
export class Ros1Rosdemo_v3SetSafeSkinClient extends BoundedServiceClient<Ros1Rosdemo_v3SetSafeSkinRequest, Ros1Rosdemo_v3SetSafeSkinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetSafeSkinRequestCodec(),
              new Ros1Rosdemo_v3SetSafeSkinResponseCodec(),
              (value: Ros1Rosdemo_v3SetSafeSkinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetSafeSkin incoming request/response owner. */
export class Ros1Rosdemo_v3SetSafeSkinServer extends BoundedServiceServer<Ros1Rosdemo_v3SetSafeSkinRequest, Ros1Rosdemo_v3SetSafeSkinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetSafeSkinRequestCodec(),
              new Ros1Rosdemo_v3SetSafeSkinResponseCodec(),
              (value: Ros1Rosdemo_v3SetSafeSkinResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/SetTerminal485 typed call and real-submit client. */
export class Ros1Rosdemo_v3SetTerminal485Client extends BoundedServiceClient<Ros1Rosdemo_v3SetTerminal485Request, Ros1Rosdemo_v3SetTerminal485Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetTerminal485RequestCodec(),
              new Ros1Rosdemo_v3SetTerminal485ResponseCodec(),
              (value: Ros1Rosdemo_v3SetTerminal485Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetTerminal485 incoming request/response owner. */
export class Ros1Rosdemo_v3SetTerminal485Server extends BoundedServiceServer<Ros1Rosdemo_v3SetTerminal485Request, Ros1Rosdemo_v3SetTerminal485Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetTerminal485RequestCodec(),
              new Ros1Rosdemo_v3SetTerminal485ResponseCodec(),
              (value: Ros1Rosdemo_v3SetTerminal485Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete rosdemo_v3/SetTerminalKeys typed call and real-submit client. */
export class Ros1Rosdemo_v3SetTerminalKeysClient extends BoundedServiceClient<Ros1Rosdemo_v3SetTerminalKeysRequest, Ros1Rosdemo_v3SetTerminalKeysResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SetTerminalKeysRequestCodec(),
              new Ros1Rosdemo_v3SetTerminalKeysResponseCodec(),
              (value: Ros1Rosdemo_v3SetTerminalKeysRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetTerminalKeys incoming request/response owner. */
export class Ros1Rosdemo_v3SetTerminalKeysServer extends BoundedServiceServer<Ros1Rosdemo_v3SetTerminalKeysRequest, Ros1Rosdemo_v3SetTerminalKeysResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SetTerminalKeysRequestCodec(),
              new Ros1Rosdemo_v3SetTerminalKeysResponseCodec(),
              (value: Ros1Rosdemo_v3SetTerminalKeysResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/SpeedFactor typed call and real-submit client. */
export class Ros1Rosdemo_v3SpeedFactorClient extends BoundedServiceClient<Ros1Rosdemo_v3SpeedFactorRequest, Ros1Rosdemo_v3SpeedFactorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SpeedFactorRequestCodec(),
              new Ros1Rosdemo_v3SpeedFactorResponseCodec(),
              (value: Ros1Rosdemo_v3SpeedFactorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SpeedFactor incoming request/response owner. */
export class Ros1Rosdemo_v3SpeedFactorServer extends BoundedServiceServer<Ros1Rosdemo_v3SpeedFactorRequest, Ros1Rosdemo_v3SpeedFactorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SpeedFactorRequestCodec(),
              new Ros1Rosdemo_v3SpeedFactorResponseCodec(),
              (value: Ros1Rosdemo_v3SpeedFactorResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/SpeedJ typed call and real-submit client. */
export class Ros1Rosdemo_v3SpeedJClient extends BoundedServiceClient<Ros1Rosdemo_v3SpeedJRequest, Ros1Rosdemo_v3SpeedJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SpeedJRequestCodec(),
              new Ros1Rosdemo_v3SpeedJResponseCodec(),
              (value: Ros1Rosdemo_v3SpeedJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SpeedJ incoming request/response owner. */
export class Ros1Rosdemo_v3SpeedJServer extends BoundedServiceServer<Ros1Rosdemo_v3SpeedJRequest, Ros1Rosdemo_v3SpeedJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SpeedJRequestCodec(),
              new Ros1Rosdemo_v3SpeedJResponseCodec(),
              (value: Ros1Rosdemo_v3SpeedJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/SpeedL typed call and real-submit client. */
export class Ros1Rosdemo_v3SpeedLClient extends BoundedServiceClient<Ros1Rosdemo_v3SpeedLRequest, Ros1Rosdemo_v3SpeedLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SpeedLRequestCodec(),
              new Ros1Rosdemo_v3SpeedLResponseCodec(),
              (value: Ros1Rosdemo_v3SpeedLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SpeedL incoming request/response owner. */
export class Ros1Rosdemo_v3SpeedLServer extends BoundedServiceServer<Ros1Rosdemo_v3SpeedLRequest, Ros1Rosdemo_v3SpeedLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SpeedLRequestCodec(),
              new Ros1Rosdemo_v3SpeedLResponseCodec(),
              (value: Ros1Rosdemo_v3SpeedLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/StartDrag typed call and real-submit client. */
export class Ros1Rosdemo_v3StartDragClient extends BoundedServiceClient<Ros1Rosdemo_v3StartDragRequest, Ros1Rosdemo_v3StartDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3StartDragRequestCodec(),
              new Ros1Rosdemo_v3StartDragResponseCodec(),
              (value: Ros1Rosdemo_v3StartDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/StartDrag incoming request/response owner. */
export class Ros1Rosdemo_v3StartDragServer extends BoundedServiceServer<Ros1Rosdemo_v3StartDragRequest, Ros1Rosdemo_v3StartDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3StartDragRequestCodec(),
              new Ros1Rosdemo_v3StartDragResponseCodec(),
              (value: Ros1Rosdemo_v3StartDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/StartFCTrace typed call and real-submit client. */
export class Ros1Rosdemo_v3StartFCTraceClient extends BoundedServiceClient<Ros1Rosdemo_v3StartFCTraceRequest, Ros1Rosdemo_v3StartFCTraceResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3StartFCTraceRequestCodec(),
              new Ros1Rosdemo_v3StartFCTraceResponseCodec(),
              (value: Ros1Rosdemo_v3StartFCTraceRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/StartFCTrace incoming request/response owner. */
export class Ros1Rosdemo_v3StartFCTraceServer extends BoundedServiceServer<Ros1Rosdemo_v3StartFCTraceRequest, Ros1Rosdemo_v3StartFCTraceResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3StartFCTraceRequestCodec(),
              new Ros1Rosdemo_v3StartFCTraceResponseCodec(),
              (value: Ros1Rosdemo_v3StartFCTraceResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v3/StartPath typed call and real-submit client. */
export class Ros1Rosdemo_v3StartPathClient extends BoundedServiceClient<Ros1Rosdemo_v3StartPathRequest, Ros1Rosdemo_v3StartPathResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3StartPathRequestCodec(),
              new Ros1Rosdemo_v3StartPathResponseCodec(),
              (value: Ros1Rosdemo_v3StartPathRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/StartPath incoming request/response owner. */
export class Ros1Rosdemo_v3StartPathServer extends BoundedServiceServer<Ros1Rosdemo_v3StartPathRequest, Ros1Rosdemo_v3StartPathResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3StartPathRequestCodec(),
              new Ros1Rosdemo_v3StartPathResponseCodec(),
              (value: Ros1Rosdemo_v3StartPathResponse): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete rosdemo_v3/StartTrace typed call and real-submit client. */
export class Ros1Rosdemo_v3StartTraceClient extends BoundedServiceClient<Ros1Rosdemo_v3StartTraceRequest, Ros1Rosdemo_v3StartTraceResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3StartTraceRequestCodec(),
              new Ros1Rosdemo_v3StartTraceResponseCodec(),
              (value: Ros1Rosdemo_v3StartTraceRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/StartTrace incoming request/response owner. */
export class Ros1Rosdemo_v3StartTraceServer extends BoundedServiceServer<Ros1Rosdemo_v3StartTraceRequest, Ros1Rosdemo_v3StartTraceResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3StartTraceRequestCodec(),
              new Ros1Rosdemo_v3StartTraceResponseCodec(),
              (value: Ros1Rosdemo_v3StartTraceResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v3/StopDrag typed call and real-submit client. */
export class Ros1Rosdemo_v3StopDragClient extends BoundedServiceClient<Ros1Rosdemo_v3StopDragRequest, Ros1Rosdemo_v3StopDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3StopDragRequestCodec(),
              new Ros1Rosdemo_v3StopDragResponseCodec(),
              (value: Ros1Rosdemo_v3StopDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/StopDrag incoming request/response owner. */
export class Ros1Rosdemo_v3StopDragServer extends BoundedServiceServer<Ros1Rosdemo_v3StopDragRequest, Ros1Rosdemo_v3StopDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3StopDragRequestCodec(),
              new Ros1Rosdemo_v3StopDragResponseCodec(),
              (value: Ros1Rosdemo_v3StopDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/StopScript typed call and real-submit client. */
export class Ros1Rosdemo_v3StopScriptClient extends BoundedServiceClient<Ros1Rosdemo_v3StopScriptRequest, Ros1Rosdemo_v3StopScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3StopScriptRequestCodec(),
              new Ros1Rosdemo_v3StopScriptResponseCodec(),
              (value: Ros1Rosdemo_v3StopScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/StopScript incoming request/response owner. */
export class Ros1Rosdemo_v3StopScriptServer extends BoundedServiceServer<Ros1Rosdemo_v3StopScriptRequest, Ros1Rosdemo_v3StopScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3StopScriptRequestCodec(),
              new Ros1Rosdemo_v3StopScriptResponseCodec(),
              (value: Ros1Rosdemo_v3StopScriptResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/StopmoveJog typed call and real-submit client. */
export class Ros1Rosdemo_v3StopmoveJogClient extends BoundedServiceClient<Ros1Rosdemo_v3StopmoveJogRequest, Ros1Rosdemo_v3StopmoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3StopmoveJogRequestCodec(),
              new Ros1Rosdemo_v3StopmoveJogResponseCodec(),
              (value: Ros1Rosdemo_v3StopmoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/StopmoveJog incoming request/response owner. */
export class Ros1Rosdemo_v3StopmoveJogServer extends BoundedServiceServer<Ros1Rosdemo_v3StopmoveJogRequest, Ros1Rosdemo_v3StopmoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3StopmoveJogRequestCodec(),
              new Ros1Rosdemo_v3StopmoveJogResponseCodec(),
              (value: Ros1Rosdemo_v3StopmoveJogResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/Sync typed call and real-submit client. */
export class Ros1Rosdemo_v3SyncClient extends BoundedServiceClient<Ros1Rosdemo_v3SyncRequest, Ros1Rosdemo_v3SyncResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SyncRequestCodec(),
              new Ros1Rosdemo_v3SyncResponseCodec(),
              (value: Ros1Rosdemo_v3SyncRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Sync incoming request/response owner. */
export class Ros1Rosdemo_v3SyncServer extends BoundedServiceServer<Ros1Rosdemo_v3SyncRequest, Ros1Rosdemo_v3SyncResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SyncRequestCodec(),
              new Ros1Rosdemo_v3SyncResponseCodec(),
              (value: Ros1Rosdemo_v3SyncResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/SyncAll typed call and real-submit client. */
export class Ros1Rosdemo_v3SyncAllClient extends BoundedServiceClient<Ros1Rosdemo_v3SyncAllRequest, Ros1Rosdemo_v3SyncAllResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3SyncAllRequestCodec(),
              new Ros1Rosdemo_v3SyncAllResponseCodec(),
              (value: Ros1Rosdemo_v3SyncAllRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SyncAll incoming request/response owner. */
export class Ros1Rosdemo_v3SyncAllServer extends BoundedServiceServer<Ros1Rosdemo_v3SyncAllRequest, Ros1Rosdemo_v3SyncAllResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3SyncAllRequestCodec(),
              new Ros1Rosdemo_v3SyncAllResponseCodec(),
              (value: Ros1Rosdemo_v3SyncAllResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeed typed call and real-submit client. */
export class Ros1Rosdemo_v3TCPSpeedClient extends BoundedServiceClient<Ros1Rosdemo_v3TCPSpeedRequest, Ros1Rosdemo_v3TCPSpeedResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3TCPSpeedRequestCodec(),
              new Ros1Rosdemo_v3TCPSpeedResponseCodec(),
              (value: Ros1Rosdemo_v3TCPSpeedRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeed incoming request/response owner. */
export class Ros1Rosdemo_v3TCPSpeedServer extends BoundedServiceServer<Ros1Rosdemo_v3TCPSpeedRequest, Ros1Rosdemo_v3TCPSpeedResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3TCPSpeedRequestCodec(),
              new Ros1Rosdemo_v3TCPSpeedResponseCodec(),
              (value: Ros1Rosdemo_v3TCPSpeedResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeedEnd typed call and real-submit client. */
export class Ros1Rosdemo_v3TCPSpeedEndClient extends BoundedServiceClient<Ros1Rosdemo_v3TCPSpeedEndRequest, Ros1Rosdemo_v3TCPSpeedEndResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3TCPSpeedEndRequestCodec(),
              new Ros1Rosdemo_v3TCPSpeedEndResponseCodec(),
              (value: Ros1Rosdemo_v3TCPSpeedEndRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeedEnd incoming request/response owner. */
export class Ros1Rosdemo_v3TCPSpeedEndServer extends BoundedServiceServer<Ros1Rosdemo_v3TCPSpeedEndRequest, Ros1Rosdemo_v3TCPSpeedEndResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3TCPSpeedEndRequestCodec(),
              new Ros1Rosdemo_v3TCPSpeedEndResponseCodec(),
              (value: Ros1Rosdemo_v3TCPSpeedEndResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v3/Tool typed call and real-submit client. */
export class Ros1Rosdemo_v3ToolClient extends BoundedServiceClient<Ros1Rosdemo_v3ToolRequest, Ros1Rosdemo_v3ToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ToolRequestCodec(),
              new Ros1Rosdemo_v3ToolResponseCodec(),
              (value: Ros1Rosdemo_v3ToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Tool incoming request/response owner. */
export class Ros1Rosdemo_v3ToolServer extends BoundedServiceServer<Ros1Rosdemo_v3ToolRequest, Ros1Rosdemo_v3ToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ToolRequestCodec(),
              new Ros1Rosdemo_v3ToolResponseCodec(),
              (value: Ros1Rosdemo_v3ToolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolAI typed call and real-submit client. */
export class Ros1Rosdemo_v3ToolAIClient extends BoundedServiceClient<Ros1Rosdemo_v3ToolAIRequest, Ros1Rosdemo_v3ToolAIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ToolAIRequestCodec(),
              new Ros1Rosdemo_v3ToolAIResponseCodec(),
              (value: Ros1Rosdemo_v3ToolAIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolAI incoming request/response owner. */
export class Ros1Rosdemo_v3ToolAIServer extends BoundedServiceServer<Ros1Rosdemo_v3ToolAIRequest, Ros1Rosdemo_v3ToolAIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ToolAIRequestCodec(),
              new Ros1Rosdemo_v3ToolAIResponseCodec(),
              (value: Ros1Rosdemo_v3ToolAIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolDI typed call and real-submit client. */
export class Ros1Rosdemo_v3ToolDIClient extends BoundedServiceClient<Ros1Rosdemo_v3ToolDIRequest, Ros1Rosdemo_v3ToolDIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ToolDIRequestCodec(),
              new Ros1Rosdemo_v3ToolDIResponseCodec(),
              (value: Ros1Rosdemo_v3ToolDIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolDI incoming request/response owner. */
export class Ros1Rosdemo_v3ToolDIServer extends BoundedServiceServer<Ros1Rosdemo_v3ToolDIRequest, Ros1Rosdemo_v3ToolDIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ToolDIRequestCodec(),
              new Ros1Rosdemo_v3ToolDIResponseCodec(),
              (value: Ros1Rosdemo_v3ToolDIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolDO typed call and real-submit client. */
export class Ros1Rosdemo_v3ToolDOClient extends BoundedServiceClient<Ros1Rosdemo_v3ToolDORequest, Ros1Rosdemo_v3ToolDOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ToolDORequestCodec(),
              new Ros1Rosdemo_v3ToolDOResponseCodec(),
              (value: Ros1Rosdemo_v3ToolDORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolDO incoming request/response owner. */
export class Ros1Rosdemo_v3ToolDOServer extends BoundedServiceServer<Ros1Rosdemo_v3ToolDORequest, Ros1Rosdemo_v3ToolDOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ToolDORequestCodec(),
              new Ros1Rosdemo_v3ToolDOResponseCodec(),
              (value: Ros1Rosdemo_v3ToolDOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolDOExecute typed call and real-submit client. */
export class Ros1Rosdemo_v3ToolDOExecuteClient extends BoundedServiceClient<Ros1Rosdemo_v3ToolDOExecuteRequest, Ros1Rosdemo_v3ToolDOExecuteResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3ToolDOExecuteRequestCodec(),
              new Ros1Rosdemo_v3ToolDOExecuteResponseCodec(),
              (value: Ros1Rosdemo_v3ToolDOExecuteRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/ToolDOExecute incoming request/response owner. */
export class Ros1Rosdemo_v3ToolDOExecuteServer extends BoundedServiceServer<Ros1Rosdemo_v3ToolDOExecuteRequest, Ros1Rosdemo_v3ToolDOExecuteResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3ToolDOExecuteRequestCodec(),
              new Ros1Rosdemo_v3ToolDOExecuteResponseCodec(),
              (value: Ros1Rosdemo_v3ToolDOExecuteResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v3/User typed call and real-submit client. */
export class Ros1Rosdemo_v3UserClient extends BoundedServiceClient<Ros1Rosdemo_v3UserRequest, Ros1Rosdemo_v3UserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3UserRequestCodec(),
              new Ros1Rosdemo_v3UserResponseCodec(),
              (value: Ros1Rosdemo_v3UserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/User incoming request/response owner. */
export class Ros1Rosdemo_v3UserServer extends BoundedServiceServer<Ros1Rosdemo_v3UserRequest, Ros1Rosdemo_v3UserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3UserRequestCodec(),
              new Ros1Rosdemo_v3UserResponseCodec(),
              (value: Ros1Rosdemo_v3UserResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/Wait typed call and real-submit client. */
export class Ros1Rosdemo_v3WaitClient extends BoundedServiceClient<Ros1Rosdemo_v3WaitRequest, Ros1Rosdemo_v3WaitResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3WaitRequestCodec(),
              new Ros1Rosdemo_v3WaitResponseCodec(),
              (value: Ros1Rosdemo_v3WaitRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/Wait incoming request/response owner. */
export class Ros1Rosdemo_v3WaitServer extends BoundedServiceServer<Ros1Rosdemo_v3WaitRequest, Ros1Rosdemo_v3WaitResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3WaitRequestCodec(),
              new Ros1Rosdemo_v3WaitResponseCodec(),
              (value: Ros1Rosdemo_v3WaitResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v3/pause typed call and real-submit client. */
export class Ros1Rosdemo_v3PauseClient extends BoundedServiceClient<Ros1Rosdemo_v3PauseRequest, Ros1Rosdemo_v3PauseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros1Rosdemo_v3PauseRequestCodec(),
              new Ros1Rosdemo_v3PauseResponseCodec(),
              (value: Ros1Rosdemo_v3PauseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/pause incoming request/response owner. */
export class Ros1Rosdemo_v3PauseServer extends BoundedServiceServer<Ros1Rosdemo_v3PauseRequest, Ros1Rosdemo_v3PauseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros1Rosdemo_v3PauseRequestCodec(),
              new Ros1Rosdemo_v3PauseResponseCodec(),
              (value: Ros1Rosdemo_v3PauseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}
