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
    Ros1Rosdemo_v4AccJRequest,
    Ros1Rosdemo_v4AccJRequestCodec,
    Ros1Rosdemo_v4AccJResponse,
    Ros1Rosdemo_v4AccJResponseCodec,
    Ros1Rosdemo_v4AccLRequest,
    Ros1Rosdemo_v4AccLRequestCodec,
    Ros1Rosdemo_v4AccLResponse,
    Ros1Rosdemo_v4AccLResponseCodec,
    Ros1Rosdemo_v4AIRequest,
    Ros1Rosdemo_v4AIRequestCodec,
    Ros1Rosdemo_v4AIResponse,
    Ros1Rosdemo_v4AIResponseCodec,
    Ros1Rosdemo_v4AOInstantRequest,
    Ros1Rosdemo_v4AOInstantRequestCodec,
    Ros1Rosdemo_v4AOInstantResponse,
    Ros1Rosdemo_v4AOInstantResponseCodec,
    Ros1Rosdemo_v4AORequest,
    Ros1Rosdemo_v4AORequestCodec,
    Ros1Rosdemo_v4AOResponse,
    Ros1Rosdemo_v4AOResponseCodec,
    Ros1Rosdemo_v4ArcRequest,
    Ros1Rosdemo_v4ArcRequestCodec,
    Ros1Rosdemo_v4ArcResponse,
    Ros1Rosdemo_v4ArcResponseCodec,
    Ros1Rosdemo_v4BrakeControlRequest,
    Ros1Rosdemo_v4BrakeControlRequestCodec,
    Ros1Rosdemo_v4BrakeControlResponse,
    Ros1Rosdemo_v4BrakeControlResponseCodec,
    Ros1Rosdemo_v4CalcToolRequest,
    Ros1Rosdemo_v4CalcToolRequestCodec,
    Ros1Rosdemo_v4CalcToolResponse,
    Ros1Rosdemo_v4CalcToolResponseCodec,
    Ros1Rosdemo_v4CalcUserRequest,
    Ros1Rosdemo_v4CalcUserRequestCodec,
    Ros1Rosdemo_v4CalcUserResponse,
    Ros1Rosdemo_v4CalcUserResponseCodec,
    Ros1Rosdemo_v4CircleRequest,
    Ros1Rosdemo_v4CircleRequestCodec,
    Ros1Rosdemo_v4CircleResponse,
    Ros1Rosdemo_v4CircleResponseCodec,
    Ros1Rosdemo_v4ClearErrorRequest,
    Ros1Rosdemo_v4ClearErrorRequestCodec,
    Ros1Rosdemo_v4ClearErrorResponse,
    Ros1Rosdemo_v4ClearErrorResponseCodec,
    Ros1Rosdemo_v4ContinueRequest,
    Ros1Rosdemo_v4ContinueRequestCodec,
    Ros1Rosdemo_v4ContinueResponse,
    Ros1Rosdemo_v4ContinueResponseCodec,
    Ros1Rosdemo_v4CPRequest,
    Ros1Rosdemo_v4CPRequestCodec,
    Ros1Rosdemo_v4CPResponse,
    Ros1Rosdemo_v4CPResponseCodec,
    Ros1Rosdemo_v4DIGroupRequest,
    Ros1Rosdemo_v4DIGroupRequestCodec,
    Ros1Rosdemo_v4DIGroupResponse,
    Ros1Rosdemo_v4DIGroupResponseCodec,
    Ros1Rosdemo_v4DIRequest,
    Ros1Rosdemo_v4DIRequestCodec,
    Ros1Rosdemo_v4DIResponse,
    Ros1Rosdemo_v4DIResponseCodec,
    Ros1Rosdemo_v4DisableRobotRequest,
    Ros1Rosdemo_v4DisableRobotRequestCodec,
    Ros1Rosdemo_v4DisableRobotResponse,
    Ros1Rosdemo_v4DisableRobotResponseCodec,
    Ros1Rosdemo_v4DOGroupRequest,
    Ros1Rosdemo_v4DOGroupRequestCodec,
    Ros1Rosdemo_v4DOGroupResponse,
    Ros1Rosdemo_v4DOGroupResponseCodec,
    Ros1Rosdemo_v4DOInstantRequest,
    Ros1Rosdemo_v4DOInstantRequestCodec,
    Ros1Rosdemo_v4DOInstantResponse,
    Ros1Rosdemo_v4DOInstantResponseCodec,
    Ros1Rosdemo_v4DORequest,
    Ros1Rosdemo_v4DORequestCodec,
    Ros1Rosdemo_v4DOResponse,
    Ros1Rosdemo_v4DOResponseCodec,
    Ros1Rosdemo_v4DragSensivityRequest,
    Ros1Rosdemo_v4DragSensivityRequestCodec,
    Ros1Rosdemo_v4DragSensivityResponse,
    Ros1Rosdemo_v4DragSensivityResponseCodec,
    Ros1Rosdemo_v4EmergencyStopRequest,
    Ros1Rosdemo_v4EmergencyStopRequestCodec,
    Ros1Rosdemo_v4EmergencyStopResponse,
    Ros1Rosdemo_v4EmergencyStopResponseCodec,
    Ros1Rosdemo_v4EnableRobotRequest,
    Ros1Rosdemo_v4EnableRobotRequestCodec,
    Ros1Rosdemo_v4EnableRobotResponse,
    Ros1Rosdemo_v4EnableRobotResponseCodec,
    Ros1Rosdemo_v4EnableSafeSkinRequest,
    Ros1Rosdemo_v4EnableSafeSkinRequestCodec,
    Ros1Rosdemo_v4EnableSafeSkinResponse,
    Ros1Rosdemo_v4EnableSafeSkinResponseCodec,
    Ros1Rosdemo_v4GetAngleRequest,
    Ros1Rosdemo_v4GetAngleRequestCodec,
    Ros1Rosdemo_v4GetAngleResponse,
    Ros1Rosdemo_v4GetAngleResponseCodec,
    Ros1Rosdemo_v4GetAORequest,
    Ros1Rosdemo_v4GetAORequestCodec,
    Ros1Rosdemo_v4GetAOResponse,
    Ros1Rosdemo_v4GetAOResponseCodec,
    Ros1Rosdemo_v4GetCoilsRequest,
    Ros1Rosdemo_v4GetCoilsRequestCodec,
    Ros1Rosdemo_v4GetCoilsResponse,
    Ros1Rosdemo_v4GetCoilsResponseCodec,
    Ros1Rosdemo_v4GetCurrentCommandIdRequest,
    Ros1Rosdemo_v4GetCurrentCommandIdRequestCodec,
    Ros1Rosdemo_v4GetCurrentCommandIdResponse,
    Ros1Rosdemo_v4GetCurrentCommandIdResponseCodec,
    Ros1Rosdemo_v4GetDOGroupRequest,
    Ros1Rosdemo_v4GetDOGroupRequestCodec,
    Ros1Rosdemo_v4GetDOGroupResponse,
    Ros1Rosdemo_v4GetDOGroupResponseCodec,
    Ros1Rosdemo_v4GetDORequest,
    Ros1Rosdemo_v4GetDORequestCodec,
    Ros1Rosdemo_v4GetDOResponse,
    Ros1Rosdemo_v4GetDOResponseCodec,
    Ros1Rosdemo_v4GetErrorIDRequest,
    Ros1Rosdemo_v4GetErrorIDRequestCodec,
    Ros1Rosdemo_v4GetErrorIDResponse,
    Ros1Rosdemo_v4GetErrorIDResponseCodec,
    Ros1Rosdemo_v4GetHoldRegsRequest,
    Ros1Rosdemo_v4GetHoldRegsRequestCodec,
    Ros1Rosdemo_v4GetHoldRegsResponse,
    Ros1Rosdemo_v4GetHoldRegsResponseCodec,
    Ros1Rosdemo_v4GetInBitsRequest,
    Ros1Rosdemo_v4GetInBitsRequestCodec,
    Ros1Rosdemo_v4GetInBitsResponse,
    Ros1Rosdemo_v4GetInBitsResponseCodec,
    Ros1Rosdemo_v4GetInputBoolRequest,
    Ros1Rosdemo_v4GetInputBoolRequestCodec,
    Ros1Rosdemo_v4GetInputBoolResponse,
    Ros1Rosdemo_v4GetInputBoolResponseCodec,
    Ros1Rosdemo_v4GetInputFloatRequest,
    Ros1Rosdemo_v4GetInputFloatRequestCodec,
    Ros1Rosdemo_v4GetInputFloatResponse,
    Ros1Rosdemo_v4GetInputFloatResponseCodec,
    Ros1Rosdemo_v4GetInputIntRequest,
    Ros1Rosdemo_v4GetInputIntRequestCodec,
    Ros1Rosdemo_v4GetInputIntResponse,
    Ros1Rosdemo_v4GetInputIntResponseCodec,
    Ros1Rosdemo_v4GetInRegsRequest,
    Ros1Rosdemo_v4GetInRegsRequestCodec,
    Ros1Rosdemo_v4GetInRegsResponse,
    Ros1Rosdemo_v4GetInRegsResponseCodec,
    Ros1Rosdemo_v4GetOutputBoolRequest,
    Ros1Rosdemo_v4GetOutputBoolRequestCodec,
    Ros1Rosdemo_v4GetOutputBoolResponse,
    Ros1Rosdemo_v4GetOutputBoolResponseCodec,
    Ros1Rosdemo_v4GetOutputFloatRequest,
    Ros1Rosdemo_v4GetOutputFloatRequestCodec,
    Ros1Rosdemo_v4GetOutputFloatResponse,
    Ros1Rosdemo_v4GetOutputFloatResponseCodec,
    Ros1Rosdemo_v4GetOutputIntRequest,
    Ros1Rosdemo_v4GetOutputIntRequestCodec,
    Ros1Rosdemo_v4GetOutputIntResponse,
    Ros1Rosdemo_v4GetOutputIntResponseCodec,
    Ros1Rosdemo_v4GetPoseRequest,
    Ros1Rosdemo_v4GetPoseRequestCodec,
    Ros1Rosdemo_v4GetPoseResponse,
    Ros1Rosdemo_v4GetPoseResponseCodec,
    Ros1Rosdemo_v4GetStartPoseRequest,
    Ros1Rosdemo_v4GetStartPoseRequestCodec,
    Ros1Rosdemo_v4GetStartPoseResponse,
    Ros1Rosdemo_v4GetStartPoseResponseCodec,
    Ros1Rosdemo_v4InverseKinRequest,
    Ros1Rosdemo_v4InverseKinRequestCodec,
    Ros1Rosdemo_v4InverseKinResponse,
    Ros1Rosdemo_v4InverseKinResponseCodec,
    Ros1Rosdemo_v4InverseSolutionRequest,
    Ros1Rosdemo_v4InverseSolutionRequestCodec,
    Ros1Rosdemo_v4InverseSolutionResponse,
    Ros1Rosdemo_v4InverseSolutionResponseCodec,
    Ros1Rosdemo_v4ModbusCloseRequest,
    Ros1Rosdemo_v4ModbusCloseRequestCodec,
    Ros1Rosdemo_v4ModbusCloseResponse,
    Ros1Rosdemo_v4ModbusCloseResponseCodec,
    Ros1Rosdemo_v4ModbusCreateRequest,
    Ros1Rosdemo_v4ModbusCreateRequestCodec,
    Ros1Rosdemo_v4ModbusCreateResponse,
    Ros1Rosdemo_v4ModbusCreateResponseCodec,
    Ros1Rosdemo_v4ModbusRTUCreateRequest,
    Ros1Rosdemo_v4ModbusRTUCreateRequestCodec,
    Ros1Rosdemo_v4ModbusRTUCreateResponse,
    Ros1Rosdemo_v4ModbusRTUCreateResponseCodec,
    Ros1Rosdemo_v4MoveJogRequest,
    Ros1Rosdemo_v4MoveJogRequestCodec,
    Ros1Rosdemo_v4MoveJogResponse,
    Ros1Rosdemo_v4MoveJogResponseCodec,
    Ros1Rosdemo_v4MovJIORequest,
    Ros1Rosdemo_v4MovJIORequestCodec,
    Ros1Rosdemo_v4MovJIOResponse,
    Ros1Rosdemo_v4MovJIOResponseCodec,
    Ros1Rosdemo_v4MovJRequest,
    Ros1Rosdemo_v4MovJRequestCodec,
    Ros1Rosdemo_v4MovJResponse,
    Ros1Rosdemo_v4MovJResponseCodec,
    Ros1Rosdemo_v4MovLIORequest,
    Ros1Rosdemo_v4MovLIORequestCodec,
    Ros1Rosdemo_v4MovLIOResponse,
    Ros1Rosdemo_v4MovLIOResponseCodec,
    Ros1Rosdemo_v4MovLRequest,
    Ros1Rosdemo_v4MovLRequestCodec,
    Ros1Rosdemo_v4MovLResponse,
    Ros1Rosdemo_v4MovLResponseCodec,
    Ros1Rosdemo_v4PauseRequest,
    Ros1Rosdemo_v4PauseRequestCodec,
    Ros1Rosdemo_v4PauseResponse,
    Ros1Rosdemo_v4PauseResponseCodec,
    Ros1Rosdemo_v4PositiveKinRequest,
    Ros1Rosdemo_v4PositiveKinRequestCodec,
    Ros1Rosdemo_v4PositiveKinResponse,
    Ros1Rosdemo_v4PositiveKinResponseCodec,
    Ros1Rosdemo_v4PowerOnRequest,
    Ros1Rosdemo_v4PowerOnRequestCodec,
    Ros1Rosdemo_v4PowerOnResponse,
    Ros1Rosdemo_v4PowerOnResponseCodec,
    Ros1Rosdemo_v4RelJointMovJRequest,
    Ros1Rosdemo_v4RelJointMovJRequestCodec,
    Ros1Rosdemo_v4RelJointMovJResponse,
    Ros1Rosdemo_v4RelJointMovJResponseCodec,
    Ros1Rosdemo_v4RelMovJToolRequest,
    Ros1Rosdemo_v4RelMovJToolRequestCodec,
    Ros1Rosdemo_v4RelMovJToolResponse,
    Ros1Rosdemo_v4RelMovJToolResponseCodec,
    Ros1Rosdemo_v4RelMovJUserRequest,
    Ros1Rosdemo_v4RelMovJUserRequestCodec,
    Ros1Rosdemo_v4RelMovJUserResponse,
    Ros1Rosdemo_v4RelMovJUserResponseCodec,
    Ros1Rosdemo_v4RelMovLToolRequest,
    Ros1Rosdemo_v4RelMovLToolRequestCodec,
    Ros1Rosdemo_v4RelMovLToolResponse,
    Ros1Rosdemo_v4RelMovLToolResponseCodec,
    Ros1Rosdemo_v4RelMovLUserRequest,
    Ros1Rosdemo_v4RelMovLUserRequestCodec,
    Ros1Rosdemo_v4RelMovLUserResponse,
    Ros1Rosdemo_v4RelMovLUserResponseCodec,
    Ros1Rosdemo_v4RobotModeRequest,
    Ros1Rosdemo_v4RobotModeRequestCodec,
    Ros1Rosdemo_v4RobotModeResponse,
    Ros1Rosdemo_v4RobotModeResponseCodec,
    Ros1Rosdemo_v4RunScriptRequest,
    Ros1Rosdemo_v4RunScriptRequestCodec,
    Ros1Rosdemo_v4RunScriptResponse,
    Ros1Rosdemo_v4RunScriptResponseCodec,
    Ros1Rosdemo_v4ServoJRequest,
    Ros1Rosdemo_v4ServoJRequestCodec,
    Ros1Rosdemo_v4ServoJResponse,
    Ros1Rosdemo_v4ServoJResponseCodec,
    Ros1Rosdemo_v4ServoPRequest,
    Ros1Rosdemo_v4ServoPRequestCodec,
    Ros1Rosdemo_v4ServoPResponse,
    Ros1Rosdemo_v4ServoPResponseCodec,
    Ros1Rosdemo_v4SetBackDistanceRequest,
    Ros1Rosdemo_v4SetBackDistanceRequestCodec,
    Ros1Rosdemo_v4SetBackDistanceResponse,
    Ros1Rosdemo_v4SetBackDistanceResponseCodec,
    Ros1Rosdemo_v4SetCoilsRequest,
    Ros1Rosdemo_v4SetCoilsRequestCodec,
    Ros1Rosdemo_v4SetCoilsResponse,
    Ros1Rosdemo_v4SetCoilsResponseCodec,
    Ros1Rosdemo_v4SetCollisionLevelRequest,
    Ros1Rosdemo_v4SetCollisionLevelRequestCodec,
    Ros1Rosdemo_v4SetCollisionLevelResponse,
    Ros1Rosdemo_v4SetCollisionLevelResponseCodec,
    Ros1Rosdemo_v4SetHoldRegsRequest,
    Ros1Rosdemo_v4SetHoldRegsRequestCodec,
    Ros1Rosdemo_v4SetHoldRegsResponse,
    Ros1Rosdemo_v4SetHoldRegsResponseCodec,
    Ros1Rosdemo_v4SetOutputBoolRequest,
    Ros1Rosdemo_v4SetOutputBoolRequestCodec,
    Ros1Rosdemo_v4SetOutputBoolResponse,
    Ros1Rosdemo_v4SetOutputBoolResponseCodec,
    Ros1Rosdemo_v4SetOutputFloatRequest,
    Ros1Rosdemo_v4SetOutputFloatRequestCodec,
    Ros1Rosdemo_v4SetOutputFloatResponse,
    Ros1Rosdemo_v4SetOutputFloatResponseCodec,
    Ros1Rosdemo_v4SetOutputIntRequest,
    Ros1Rosdemo_v4SetOutputIntRequestCodec,
    Ros1Rosdemo_v4SetOutputIntResponse,
    Ros1Rosdemo_v4SetOutputIntResponseCodec,
    Ros1Rosdemo_v4SetPayloadRequest,
    Ros1Rosdemo_v4SetPayloadRequestCodec,
    Ros1Rosdemo_v4SetPayloadResponse,
    Ros1Rosdemo_v4SetPayloadResponseCodec,
    Ros1Rosdemo_v4SetPostCollisionModeRequest,
    Ros1Rosdemo_v4SetPostCollisionModeRequestCodec,
    Ros1Rosdemo_v4SetPostCollisionModeResponse,
    Ros1Rosdemo_v4SetPostCollisionModeResponseCodec,
    Ros1Rosdemo_v4SetSafeSkinRequest,
    Ros1Rosdemo_v4SetSafeSkinRequestCodec,
    Ros1Rosdemo_v4SetSafeSkinResponse,
    Ros1Rosdemo_v4SetSafeSkinResponseCodec,
    Ros1Rosdemo_v4SetSafeWallEnableRequest,
    Ros1Rosdemo_v4SetSafeWallEnableRequestCodec,
    Ros1Rosdemo_v4SetSafeWallEnableResponse,
    Ros1Rosdemo_v4SetSafeWallEnableResponseCodec,
    Ros1Rosdemo_v4SetTool485Request,
    Ros1Rosdemo_v4SetTool485RequestCodec,
    Ros1Rosdemo_v4SetTool485Response,
    Ros1Rosdemo_v4SetTool485ResponseCodec,
    Ros1Rosdemo_v4SetToolModeRequest,
    Ros1Rosdemo_v4SetToolModeRequestCodec,
    Ros1Rosdemo_v4SetToolModeResponse,
    Ros1Rosdemo_v4SetToolModeResponseCodec,
    Ros1Rosdemo_v4SetToolPowerRequest,
    Ros1Rosdemo_v4SetToolPowerRequestCodec,
    Ros1Rosdemo_v4SetToolPowerResponse,
    Ros1Rosdemo_v4SetToolPowerResponseCodec,
    Ros1Rosdemo_v4SetToolRequest,
    Ros1Rosdemo_v4SetToolRequestCodec,
    Ros1Rosdemo_v4SetToolResponse,
    Ros1Rosdemo_v4SetToolResponseCodec,
    Ros1Rosdemo_v4SetUserRequest,
    Ros1Rosdemo_v4SetUserRequestCodec,
    Ros1Rosdemo_v4SetUserResponse,
    Ros1Rosdemo_v4SetUserResponseCodec,
    Ros1Rosdemo_v4SpeedFactorRequest,
    Ros1Rosdemo_v4SpeedFactorRequestCodec,
    Ros1Rosdemo_v4SpeedFactorResponse,
    Ros1Rosdemo_v4SpeedFactorResponseCodec,
    Ros1Rosdemo_v4StartDragRequest,
    Ros1Rosdemo_v4StartDragRequestCodec,
    Ros1Rosdemo_v4StartDragResponse,
    Ros1Rosdemo_v4StartDragResponseCodec,
    Ros1Rosdemo_v4StartPathRequest,
    Ros1Rosdemo_v4StartPathRequestCodec,
    Ros1Rosdemo_v4StartPathResponse,
    Ros1Rosdemo_v4StartPathResponseCodec,
    Ros1Rosdemo_v4StopDragRequest,
    Ros1Rosdemo_v4StopDragRequestCodec,
    Ros1Rosdemo_v4StopDragResponse,
    Ros1Rosdemo_v4StopDragResponseCodec,
    Ros1Rosdemo_v4StopMoveJogRequest,
    Ros1Rosdemo_v4StopMoveJogRequestCodec,
    Ros1Rosdemo_v4StopMoveJogResponse,
    Ros1Rosdemo_v4StopMoveJogResponseCodec,
    Ros1Rosdemo_v4StopRequest,
    Ros1Rosdemo_v4StopRequestCodec,
    Ros1Rosdemo_v4StopResponse,
    Ros1Rosdemo_v4StopResponseCodec,
    Ros1Rosdemo_v4TcpDashboardRequest,
    Ros1Rosdemo_v4TcpDashboardRequestCodec,
    Ros1Rosdemo_v4TcpDashboardResponse,
    Ros1Rosdemo_v4TcpDashboardResponseCodec,
    Ros1Rosdemo_v4ToolAIRequest,
    Ros1Rosdemo_v4ToolAIRequestCodec,
    Ros1Rosdemo_v4ToolAIResponse,
    Ros1Rosdemo_v4ToolAIResponseCodec,
    Ros1Rosdemo_v4ToolDIRequest,
    Ros1Rosdemo_v4ToolDIRequestCodec,
    Ros1Rosdemo_v4ToolDIResponse,
    Ros1Rosdemo_v4ToolDIResponseCodec,
    Ros1Rosdemo_v4ToolDOInstantRequest,
    Ros1Rosdemo_v4ToolDOInstantRequestCodec,
    Ros1Rosdemo_v4ToolDOInstantResponse,
    Ros1Rosdemo_v4ToolDOInstantResponseCodec,
    Ros1Rosdemo_v4ToolDORequest,
    Ros1Rosdemo_v4ToolDORequestCodec,
    Ros1Rosdemo_v4ToolDOResponse,
    Ros1Rosdemo_v4ToolDOResponseCodec,
    Ros1Rosdemo_v4ToolRequest,
    Ros1Rosdemo_v4ToolRequestCodec,
    Ros1Rosdemo_v4ToolResponse,
    Ros1Rosdemo_v4ToolResponseCodec,
    Ros1Rosdemo_v4UserRequest,
    Ros1Rosdemo_v4UserRequestCodec,
    Ros1Rosdemo_v4UserResponse,
    Ros1Rosdemo_v4UserResponseCodec,
    Ros1Rosdemo_v4VelJRequest,
    Ros1Rosdemo_v4VelJRequestCodec,
    Ros1Rosdemo_v4VelJResponse,
    Ros1Rosdemo_v4VelJResponseCodec,
    Ros1Rosdemo_v4VelLRequest,
    Ros1Rosdemo_v4VelLRequestCodec,
    Ros1Rosdemo_v4VelLResponse,
    Ros1Rosdemo_v4VelLResponseCodec
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

/** Complete rosdemo_v4/AI typed call and real-submit client. */
export class Ros1Rosdemo_v4AIClient extends BoundedServiceClient<Ros1Rosdemo_v4AIRequest, Ros1Rosdemo_v4AIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4AIRequestCodec(),
              new Ros1Rosdemo_v4AIResponseCodec(),
              (value: Ros1Rosdemo_v4AIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/AI incoming request/response owner. */
export class Ros1Rosdemo_v4AIServer extends BoundedServiceServer<Ros1Rosdemo_v4AIRequest, Ros1Rosdemo_v4AIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4AIRequestCodec(),
              new Ros1Rosdemo_v4AIResponseCodec(),
              (value: Ros1Rosdemo_v4AIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/AO typed call and real-submit client. */
export class Ros1Rosdemo_v4AOClient extends BoundedServiceClient<Ros1Rosdemo_v4AORequest, Ros1Rosdemo_v4AOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4AORequestCodec(),
              new Ros1Rosdemo_v4AOResponseCodec(),
              (value: Ros1Rosdemo_v4AORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/AO incoming request/response owner. */
export class Ros1Rosdemo_v4AOServer extends BoundedServiceServer<Ros1Rosdemo_v4AORequest, Ros1Rosdemo_v4AOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4AORequestCodec(),
              new Ros1Rosdemo_v4AOResponseCodec(),
              (value: Ros1Rosdemo_v4AOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/AOInstant typed call and real-submit client. */
export class Ros1Rosdemo_v4AOInstantClient extends BoundedServiceClient<Ros1Rosdemo_v4AOInstantRequest, Ros1Rosdemo_v4AOInstantResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4AOInstantRequestCodec(),
              new Ros1Rosdemo_v4AOInstantResponseCodec(),
              (value: Ros1Rosdemo_v4AOInstantRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/AOInstant incoming request/response owner. */
export class Ros1Rosdemo_v4AOInstantServer extends BoundedServiceServer<Ros1Rosdemo_v4AOInstantRequest, Ros1Rosdemo_v4AOInstantResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4AOInstantRequestCodec(),
              new Ros1Rosdemo_v4AOInstantResponseCodec(),
              (value: Ros1Rosdemo_v4AOInstantResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/AccJ typed call and real-submit client. */
export class Ros1Rosdemo_v4AccJClient extends BoundedServiceClient<Ros1Rosdemo_v4AccJRequest, Ros1Rosdemo_v4AccJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4AccJRequestCodec(),
              new Ros1Rosdemo_v4AccJResponseCodec(),
              (value: Ros1Rosdemo_v4AccJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/AccJ incoming request/response owner. */
export class Ros1Rosdemo_v4AccJServer extends BoundedServiceServer<Ros1Rosdemo_v4AccJRequest, Ros1Rosdemo_v4AccJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4AccJRequestCodec(),
              new Ros1Rosdemo_v4AccJResponseCodec(),
              (value: Ros1Rosdemo_v4AccJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/AccL typed call and real-submit client. */
export class Ros1Rosdemo_v4AccLClient extends BoundedServiceClient<Ros1Rosdemo_v4AccLRequest, Ros1Rosdemo_v4AccLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4AccLRequestCodec(),
              new Ros1Rosdemo_v4AccLResponseCodec(),
              (value: Ros1Rosdemo_v4AccLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/AccL incoming request/response owner. */
export class Ros1Rosdemo_v4AccLServer extends BoundedServiceServer<Ros1Rosdemo_v4AccLRequest, Ros1Rosdemo_v4AccLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4AccLRequestCodec(),
              new Ros1Rosdemo_v4AccLResponseCodec(),
              (value: Ros1Rosdemo_v4AccLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/Arc typed call and real-submit client. */
export class Ros1Rosdemo_v4ArcClient extends BoundedServiceClient<Ros1Rosdemo_v4ArcRequest, Ros1Rosdemo_v4ArcResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ArcRequestCodec(),
              new Ros1Rosdemo_v4ArcResponseCodec(),
              (value: Ros1Rosdemo_v4ArcRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/Arc incoming request/response owner. */
export class Ros1Rosdemo_v4ArcServer extends BoundedServiceServer<Ros1Rosdemo_v4ArcRequest, Ros1Rosdemo_v4ArcResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ArcRequestCodec(),
              new Ros1Rosdemo_v4ArcResponseCodec(),
              (value: Ros1Rosdemo_v4ArcResponse): bool => value.validValue(),
              4261,
              capacity);
    }
}

/** Complete rosdemo_v4/BrakeControl typed call and real-submit client. */
export class Ros1Rosdemo_v4BrakeControlClient extends BoundedServiceClient<Ros1Rosdemo_v4BrakeControlRequest, Ros1Rosdemo_v4BrakeControlResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4BrakeControlRequestCodec(),
              new Ros1Rosdemo_v4BrakeControlResponseCodec(),
              (value: Ros1Rosdemo_v4BrakeControlRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/BrakeControl incoming request/response owner. */
export class Ros1Rosdemo_v4BrakeControlServer extends BoundedServiceServer<Ros1Rosdemo_v4BrakeControlRequest, Ros1Rosdemo_v4BrakeControlResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4BrakeControlRequestCodec(),
              new Ros1Rosdemo_v4BrakeControlResponseCodec(),
              (value: Ros1Rosdemo_v4BrakeControlResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/CP typed call and real-submit client. */
export class Ros1Rosdemo_v4CPClient extends BoundedServiceClient<Ros1Rosdemo_v4CPRequest, Ros1Rosdemo_v4CPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4CPRequestCodec(),
              new Ros1Rosdemo_v4CPResponseCodec(),
              (value: Ros1Rosdemo_v4CPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/CP incoming request/response owner. */
export class Ros1Rosdemo_v4CPServer extends BoundedServiceServer<Ros1Rosdemo_v4CPRequest, Ros1Rosdemo_v4CPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4CPRequestCodec(),
              new Ros1Rosdemo_v4CPResponseCodec(),
              (value: Ros1Rosdemo_v4CPResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/CalcTool typed call and real-submit client. */
export class Ros1Rosdemo_v4CalcToolClient extends BoundedServiceClient<Ros1Rosdemo_v4CalcToolRequest, Ros1Rosdemo_v4CalcToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4CalcToolRequestCodec(),
              new Ros1Rosdemo_v4CalcToolResponseCodec(),
              (value: Ros1Rosdemo_v4CalcToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/CalcTool incoming request/response owner. */
export class Ros1Rosdemo_v4CalcToolServer extends BoundedServiceServer<Ros1Rosdemo_v4CalcToolRequest, Ros1Rosdemo_v4CalcToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4CalcToolRequestCodec(),
              new Ros1Rosdemo_v4CalcToolResponseCodec(),
              (value: Ros1Rosdemo_v4CalcToolResponse): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete rosdemo_v4/CalcUser typed call and real-submit client. */
export class Ros1Rosdemo_v4CalcUserClient extends BoundedServiceClient<Ros1Rosdemo_v4CalcUserRequest, Ros1Rosdemo_v4CalcUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4CalcUserRequestCodec(),
              new Ros1Rosdemo_v4CalcUserResponseCodec(),
              (value: Ros1Rosdemo_v4CalcUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/CalcUser incoming request/response owner. */
export class Ros1Rosdemo_v4CalcUserServer extends BoundedServiceServer<Ros1Rosdemo_v4CalcUserRequest, Ros1Rosdemo_v4CalcUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4CalcUserRequestCodec(),
              new Ros1Rosdemo_v4CalcUserResponseCodec(),
              (value: Ros1Rosdemo_v4CalcUserResponse): bool => value.validValue(),
              268,
              capacity);
    }
}

/** Complete rosdemo_v4/Circle typed call and real-submit client. */
export class Ros1Rosdemo_v4CircleClient extends BoundedServiceClient<Ros1Rosdemo_v4CircleRequest, Ros1Rosdemo_v4CircleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4CircleRequestCodec(),
              new Ros1Rosdemo_v4CircleResponseCodec(),
              (value: Ros1Rosdemo_v4CircleRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/Circle incoming request/response owner. */
export class Ros1Rosdemo_v4CircleServer extends BoundedServiceServer<Ros1Rosdemo_v4CircleRequest, Ros1Rosdemo_v4CircleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4CircleRequestCodec(),
              new Ros1Rosdemo_v4CircleResponseCodec(),
              (value: Ros1Rosdemo_v4CircleResponse): bool => value.validValue(),
              4265,
              capacity);
    }
}

/** Complete rosdemo_v4/ClearError typed call and real-submit client. */
export class Ros1Rosdemo_v4ClearErrorClient extends BoundedServiceClient<Ros1Rosdemo_v4ClearErrorRequest, Ros1Rosdemo_v4ClearErrorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ClearErrorRequestCodec(),
              new Ros1Rosdemo_v4ClearErrorResponseCodec(),
              (value: Ros1Rosdemo_v4ClearErrorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ClearError incoming request/response owner. */
export class Ros1Rosdemo_v4ClearErrorServer extends BoundedServiceServer<Ros1Rosdemo_v4ClearErrorRequest, Ros1Rosdemo_v4ClearErrorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ClearErrorRequestCodec(),
              new Ros1Rosdemo_v4ClearErrorResponseCodec(),
              (value: Ros1Rosdemo_v4ClearErrorResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/Continue typed call and real-submit client. */
export class Ros1Rosdemo_v4ContinueClient extends BoundedServiceClient<Ros1Rosdemo_v4ContinueRequest, Ros1Rosdemo_v4ContinueResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ContinueRequestCodec(),
              new Ros1Rosdemo_v4ContinueResponseCodec(),
              (value: Ros1Rosdemo_v4ContinueRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/Continue incoming request/response owner. */
export class Ros1Rosdemo_v4ContinueServer extends BoundedServiceServer<Ros1Rosdemo_v4ContinueRequest, Ros1Rosdemo_v4ContinueResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ContinueRequestCodec(),
              new Ros1Rosdemo_v4ContinueResponseCodec(),
              (value: Ros1Rosdemo_v4ContinueResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/DI typed call and real-submit client. */
export class Ros1Rosdemo_v4DIClient extends BoundedServiceClient<Ros1Rosdemo_v4DIRequest, Ros1Rosdemo_v4DIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4DIRequestCodec(),
              new Ros1Rosdemo_v4DIResponseCodec(),
              (value: Ros1Rosdemo_v4DIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/DI incoming request/response owner. */
export class Ros1Rosdemo_v4DIServer extends BoundedServiceServer<Ros1Rosdemo_v4DIRequest, Ros1Rosdemo_v4DIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4DIRequestCodec(),
              new Ros1Rosdemo_v4DIResponseCodec(),
              (value: Ros1Rosdemo_v4DIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/DIGroup typed call and real-submit client. */
export class Ros1Rosdemo_v4DIGroupClient extends BoundedServiceClient<Ros1Rosdemo_v4DIGroupRequest, Ros1Rosdemo_v4DIGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4DIGroupRequestCodec(),
              new Ros1Rosdemo_v4DIGroupResponseCodec(),
              (value: Ros1Rosdemo_v4DIGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/DIGroup incoming request/response owner. */
export class Ros1Rosdemo_v4DIGroupServer extends BoundedServiceServer<Ros1Rosdemo_v4DIGroupRequest, Ros1Rosdemo_v4DIGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4DIGroupRequestCodec(),
              new Ros1Rosdemo_v4DIGroupResponseCodec(),
              (value: Ros1Rosdemo_v4DIGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete rosdemo_v4/DO typed call and real-submit client. */
export class Ros1Rosdemo_v4DOClient extends BoundedServiceClient<Ros1Rosdemo_v4DORequest, Ros1Rosdemo_v4DOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4DORequestCodec(),
              new Ros1Rosdemo_v4DOResponseCodec(),
              (value: Ros1Rosdemo_v4DORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/DO incoming request/response owner. */
export class Ros1Rosdemo_v4DOServer extends BoundedServiceServer<Ros1Rosdemo_v4DORequest, Ros1Rosdemo_v4DOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4DORequestCodec(),
              new Ros1Rosdemo_v4DOResponseCodec(),
              (value: Ros1Rosdemo_v4DOResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete rosdemo_v4/DOGroup typed call and real-submit client. */
export class Ros1Rosdemo_v4DOGroupClient extends BoundedServiceClient<Ros1Rosdemo_v4DOGroupRequest, Ros1Rosdemo_v4DOGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4DOGroupRequestCodec(),
              new Ros1Rosdemo_v4DOGroupResponseCodec(),
              (value: Ros1Rosdemo_v4DOGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/DOGroup incoming request/response owner. */
export class Ros1Rosdemo_v4DOGroupServer extends BoundedServiceServer<Ros1Rosdemo_v4DOGroupRequest, Ros1Rosdemo_v4DOGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4DOGroupRequestCodec(),
              new Ros1Rosdemo_v4DOGroupResponseCodec(),
              (value: Ros1Rosdemo_v4DOGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete rosdemo_v4/DOInstant typed call and real-submit client. */
export class Ros1Rosdemo_v4DOInstantClient extends BoundedServiceClient<Ros1Rosdemo_v4DOInstantRequest, Ros1Rosdemo_v4DOInstantResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4DOInstantRequestCodec(),
              new Ros1Rosdemo_v4DOInstantResponseCodec(),
              (value: Ros1Rosdemo_v4DOInstantRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/DOInstant incoming request/response owner. */
export class Ros1Rosdemo_v4DOInstantServer extends BoundedServiceServer<Ros1Rosdemo_v4DOInstantRequest, Ros1Rosdemo_v4DOInstantResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4DOInstantRequestCodec(),
              new Ros1Rosdemo_v4DOInstantResponseCodec(),
              (value: Ros1Rosdemo_v4DOInstantResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/DisableRobot typed call and real-submit client. */
export class Ros1Rosdemo_v4DisableRobotClient extends BoundedServiceClient<Ros1Rosdemo_v4DisableRobotRequest, Ros1Rosdemo_v4DisableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4DisableRobotRequestCodec(),
              new Ros1Rosdemo_v4DisableRobotResponseCodec(),
              (value: Ros1Rosdemo_v4DisableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/DisableRobot incoming request/response owner. */
export class Ros1Rosdemo_v4DisableRobotServer extends BoundedServiceServer<Ros1Rosdemo_v4DisableRobotRequest, Ros1Rosdemo_v4DisableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4DisableRobotRequestCodec(),
              new Ros1Rosdemo_v4DisableRobotResponseCodec(),
              (value: Ros1Rosdemo_v4DisableRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/DragSensivity typed call and real-submit client. */
export class Ros1Rosdemo_v4DragSensivityClient extends BoundedServiceClient<Ros1Rosdemo_v4DragSensivityRequest, Ros1Rosdemo_v4DragSensivityResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4DragSensivityRequestCodec(),
              new Ros1Rosdemo_v4DragSensivityResponseCodec(),
              (value: Ros1Rosdemo_v4DragSensivityRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/DragSensivity incoming request/response owner. */
export class Ros1Rosdemo_v4DragSensivityServer extends BoundedServiceServer<Ros1Rosdemo_v4DragSensivityRequest, Ros1Rosdemo_v4DragSensivityResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4DragSensivityRequestCodec(),
              new Ros1Rosdemo_v4DragSensivityResponseCodec(),
              (value: Ros1Rosdemo_v4DragSensivityResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/EmergencyStop typed call and real-submit client. */
export class Ros1Rosdemo_v4EmergencyStopClient extends BoundedServiceClient<Ros1Rosdemo_v4EmergencyStopRequest, Ros1Rosdemo_v4EmergencyStopResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4EmergencyStopRequestCodec(),
              new Ros1Rosdemo_v4EmergencyStopResponseCodec(),
              (value: Ros1Rosdemo_v4EmergencyStopRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/EmergencyStop incoming request/response owner. */
export class Ros1Rosdemo_v4EmergencyStopServer extends BoundedServiceServer<Ros1Rosdemo_v4EmergencyStopRequest, Ros1Rosdemo_v4EmergencyStopResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4EmergencyStopRequestCodec(),
              new Ros1Rosdemo_v4EmergencyStopResponseCodec(),
              (value: Ros1Rosdemo_v4EmergencyStopResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/EnableRobot typed call and real-submit client. */
export class Ros1Rosdemo_v4EnableRobotClient extends BoundedServiceClient<Ros1Rosdemo_v4EnableRobotRequest, Ros1Rosdemo_v4EnableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4EnableRobotRequestCodec(),
              new Ros1Rosdemo_v4EnableRobotResponseCodec(),
              (value: Ros1Rosdemo_v4EnableRobotRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/EnableRobot incoming request/response owner. */
export class Ros1Rosdemo_v4EnableRobotServer extends BoundedServiceServer<Ros1Rosdemo_v4EnableRobotRequest, Ros1Rosdemo_v4EnableRobotResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4EnableRobotRequestCodec(),
              new Ros1Rosdemo_v4EnableRobotResponseCodec(),
              (value: Ros1Rosdemo_v4EnableRobotResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/EnableSafeSkin typed call and real-submit client. */
export class Ros1Rosdemo_v4EnableSafeSkinClient extends BoundedServiceClient<Ros1Rosdemo_v4EnableSafeSkinRequest, Ros1Rosdemo_v4EnableSafeSkinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4EnableSafeSkinRequestCodec(),
              new Ros1Rosdemo_v4EnableSafeSkinResponseCodec(),
              (value: Ros1Rosdemo_v4EnableSafeSkinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/EnableSafeSkin incoming request/response owner. */
export class Ros1Rosdemo_v4EnableSafeSkinServer extends BoundedServiceServer<Ros1Rosdemo_v4EnableSafeSkinRequest, Ros1Rosdemo_v4EnableSafeSkinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4EnableSafeSkinRequestCodec(),
              new Ros1Rosdemo_v4EnableSafeSkinResponseCodec(),
              (value: Ros1Rosdemo_v4EnableSafeSkinResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetAO typed call and real-submit client. */
export class Ros1Rosdemo_v4GetAOClient extends BoundedServiceClient<Ros1Rosdemo_v4GetAORequest, Ros1Rosdemo_v4GetAOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetAORequestCodec(),
              new Ros1Rosdemo_v4GetAOResponseCodec(),
              (value: Ros1Rosdemo_v4GetAORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetAO incoming request/response owner. */
export class Ros1Rosdemo_v4GetAOServer extends BoundedServiceServer<Ros1Rosdemo_v4GetAORequest, Ros1Rosdemo_v4GetAOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetAORequestCodec(),
              new Ros1Rosdemo_v4GetAOResponseCodec(),
              (value: Ros1Rosdemo_v4GetAOResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetAngle typed call and real-submit client. */
export class Ros1Rosdemo_v4GetAngleClient extends BoundedServiceClient<Ros1Rosdemo_v4GetAngleRequest, Ros1Rosdemo_v4GetAngleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetAngleRequestCodec(),
              new Ros1Rosdemo_v4GetAngleResponseCodec(),
              (value: Ros1Rosdemo_v4GetAngleRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetAngle incoming request/response owner. */
export class Ros1Rosdemo_v4GetAngleServer extends BoundedServiceServer<Ros1Rosdemo_v4GetAngleRequest, Ros1Rosdemo_v4GetAngleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetAngleRequestCodec(),
              new Ros1Rosdemo_v4GetAngleResponseCodec(),
              (value: Ros1Rosdemo_v4GetAngleResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/GetCoils typed call and real-submit client. */
export class Ros1Rosdemo_v4GetCoilsClient extends BoundedServiceClient<Ros1Rosdemo_v4GetCoilsRequest, Ros1Rosdemo_v4GetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetCoilsRequestCodec(),
              new Ros1Rosdemo_v4GetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v4GetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetCoils incoming request/response owner. */
export class Ros1Rosdemo_v4GetCoilsServer extends BoundedServiceServer<Ros1Rosdemo_v4GetCoilsRequest, Ros1Rosdemo_v4GetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetCoilsRequestCodec(),
              new Ros1Rosdemo_v4GetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v4GetCoilsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete rosdemo_v4/GetCurrentCommandId typed call and real-submit client. */
export class Ros1Rosdemo_v4GetCurrentCommandIdClient extends
    BoundedServiceClient<Ros1Rosdemo_v4GetCurrentCommandIdRequest, Ros1Rosdemo_v4GetCurrentCommandIdResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetCurrentCommandIdRequestCodec(),
              new Ros1Rosdemo_v4GetCurrentCommandIdResponseCodec(),
              (value: Ros1Rosdemo_v4GetCurrentCommandIdRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetCurrentCommandId incoming request/response owner. */
export class Ros1Rosdemo_v4GetCurrentCommandIdServer extends
    BoundedServiceServer<Ros1Rosdemo_v4GetCurrentCommandIdRequest, Ros1Rosdemo_v4GetCurrentCommandIdResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetCurrentCommandIdRequestCodec(),
              new Ros1Rosdemo_v4GetCurrentCommandIdResponseCodec(),
              (value: Ros1Rosdemo_v4GetCurrentCommandIdResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/GetDO typed call and real-submit client. */
export class Ros1Rosdemo_v4GetDOClient extends BoundedServiceClient<Ros1Rosdemo_v4GetDORequest, Ros1Rosdemo_v4GetDOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetDORequestCodec(),
              new Ros1Rosdemo_v4GetDOResponseCodec(),
              (value: Ros1Rosdemo_v4GetDORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetDO incoming request/response owner. */
export class Ros1Rosdemo_v4GetDOServer extends BoundedServiceServer<Ros1Rosdemo_v4GetDORequest, Ros1Rosdemo_v4GetDOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetDORequestCodec(),
              new Ros1Rosdemo_v4GetDOResponseCodec(),
              (value: Ros1Rosdemo_v4GetDOResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetDOGroup typed call and real-submit client. */
export class Ros1Rosdemo_v4GetDOGroupClient extends BoundedServiceClient<Ros1Rosdemo_v4GetDOGroupRequest, Ros1Rosdemo_v4GetDOGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetDOGroupRequestCodec(),
              new Ros1Rosdemo_v4GetDOGroupResponseCodec(),
              (value: Ros1Rosdemo_v4GetDOGroupRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetDOGroup incoming request/response owner. */
export class Ros1Rosdemo_v4GetDOGroupServer extends BoundedServiceServer<Ros1Rosdemo_v4GetDOGroupRequest, Ros1Rosdemo_v4GetDOGroupResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetDOGroupRequestCodec(),
              new Ros1Rosdemo_v4GetDOGroupResponseCodec(),
              (value: Ros1Rosdemo_v4GetDOGroupResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete rosdemo_v4/GetErrorID typed call and real-submit client. */
export class Ros1Rosdemo_v4GetErrorIDClient extends BoundedServiceClient<Ros1Rosdemo_v4GetErrorIDRequest, Ros1Rosdemo_v4GetErrorIDResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetErrorIDRequestCodec(),
              new Ros1Rosdemo_v4GetErrorIDResponseCodec(),
              (value: Ros1Rosdemo_v4GetErrorIDRequest): bool => value.validValue(),
              72,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetErrorID incoming request/response owner. */
export class Ros1Rosdemo_v4GetErrorIDServer extends BoundedServiceServer<Ros1Rosdemo_v4GetErrorIDRequest, Ros1Rosdemo_v4GetErrorIDResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetErrorIDRequestCodec(),
              new Ros1Rosdemo_v4GetErrorIDResponseCodec(),
              (value: Ros1Rosdemo_v4GetErrorIDResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/GetHoldRegs typed call and real-submit client. */
export class Ros1Rosdemo_v4GetHoldRegsClient extends BoundedServiceClient<Ros1Rosdemo_v4GetHoldRegsRequest, Ros1Rosdemo_v4GetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v4GetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v4GetHoldRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetHoldRegs incoming request/response owner. */
export class Ros1Rosdemo_v4GetHoldRegsServer extends BoundedServiceServer<Ros1Rosdemo_v4GetHoldRegsRequest, Ros1Rosdemo_v4GetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v4GetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v4GetHoldRegsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInBits typed call and real-submit client. */
export class Ros1Rosdemo_v4GetInBitsClient extends BoundedServiceClient<Ros1Rosdemo_v4GetInBitsRequest, Ros1Rosdemo_v4GetInBitsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetInBitsRequestCodec(),
              new Ros1Rosdemo_v4GetInBitsResponseCodec(),
              (value: Ros1Rosdemo_v4GetInBitsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInBits incoming request/response owner. */
export class Ros1Rosdemo_v4GetInBitsServer extends BoundedServiceServer<Ros1Rosdemo_v4GetInBitsRequest, Ros1Rosdemo_v4GetInBitsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetInBitsRequestCodec(),
              new Ros1Rosdemo_v4GetInBitsResponseCodec(),
              (value: Ros1Rosdemo_v4GetInBitsResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInRegs typed call and real-submit client. */
export class Ros1Rosdemo_v4GetInRegsClient extends BoundedServiceClient<Ros1Rosdemo_v4GetInRegsRequest, Ros1Rosdemo_v4GetInRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetInRegsRequestCodec(),
              new Ros1Rosdemo_v4GetInRegsResponseCodec(),
              (value: Ros1Rosdemo_v4GetInRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInRegs incoming request/response owner. */
export class Ros1Rosdemo_v4GetInRegsServer extends BoundedServiceServer<Ros1Rosdemo_v4GetInRegsRequest, Ros1Rosdemo_v4GetInRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetInRegsRequestCodec(),
              new Ros1Rosdemo_v4GetInRegsResponseCodec(),
              (value: Ros1Rosdemo_v4GetInRegsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInputBool typed call and real-submit client. */
export class Ros1Rosdemo_v4GetInputBoolClient extends BoundedServiceClient<Ros1Rosdemo_v4GetInputBoolRequest, Ros1Rosdemo_v4GetInputBoolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetInputBoolRequestCodec(),
              new Ros1Rosdemo_v4GetInputBoolResponseCodec(),
              (value: Ros1Rosdemo_v4GetInputBoolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInputBool incoming request/response owner. */
export class Ros1Rosdemo_v4GetInputBoolServer extends BoundedServiceServer<Ros1Rosdemo_v4GetInputBoolRequest, Ros1Rosdemo_v4GetInputBoolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetInputBoolRequestCodec(),
              new Ros1Rosdemo_v4GetInputBoolResponseCodec(),
              (value: Ros1Rosdemo_v4GetInputBoolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInputFloat typed call and real-submit client. */
export class Ros1Rosdemo_v4GetInputFloatClient extends BoundedServiceClient<Ros1Rosdemo_v4GetInputFloatRequest, Ros1Rosdemo_v4GetInputFloatResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetInputFloatRequestCodec(),
              new Ros1Rosdemo_v4GetInputFloatResponseCodec(),
              (value: Ros1Rosdemo_v4GetInputFloatRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInputFloat incoming request/response owner. */
export class Ros1Rosdemo_v4GetInputFloatServer extends BoundedServiceServer<Ros1Rosdemo_v4GetInputFloatRequest, Ros1Rosdemo_v4GetInputFloatResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetInputFloatRequestCodec(),
              new Ros1Rosdemo_v4GetInputFloatResponseCodec(),
              (value: Ros1Rosdemo_v4GetInputFloatResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInputInt typed call and real-submit client. */
export class Ros1Rosdemo_v4GetInputIntClient extends BoundedServiceClient<Ros1Rosdemo_v4GetInputIntRequest, Ros1Rosdemo_v4GetInputIntResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetInputIntRequestCodec(),
              new Ros1Rosdemo_v4GetInputIntResponseCodec(),
              (value: Ros1Rosdemo_v4GetInputIntRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInputInt incoming request/response owner. */
export class Ros1Rosdemo_v4GetInputIntServer extends BoundedServiceServer<Ros1Rosdemo_v4GetInputIntRequest, Ros1Rosdemo_v4GetInputIntResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetInputIntRequestCodec(),
              new Ros1Rosdemo_v4GetInputIntResponseCodec(),
              (value: Ros1Rosdemo_v4GetInputIntResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputBool typed call and real-submit client. */
export class Ros1Rosdemo_v4GetOutputBoolClient extends BoundedServiceClient<Ros1Rosdemo_v4GetOutputBoolRequest, Ros1Rosdemo_v4GetOutputBoolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetOutputBoolRequestCodec(),
              new Ros1Rosdemo_v4GetOutputBoolResponseCodec(),
              (value: Ros1Rosdemo_v4GetOutputBoolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputBool incoming request/response owner. */
export class Ros1Rosdemo_v4GetOutputBoolServer extends BoundedServiceServer<Ros1Rosdemo_v4GetOutputBoolRequest, Ros1Rosdemo_v4GetOutputBoolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetOutputBoolRequestCodec(),
              new Ros1Rosdemo_v4GetOutputBoolResponseCodec(),
              (value: Ros1Rosdemo_v4GetOutputBoolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputFloat typed call and real-submit client. */
export class Ros1Rosdemo_v4GetOutputFloatClient extends BoundedServiceClient<Ros1Rosdemo_v4GetOutputFloatRequest, Ros1Rosdemo_v4GetOutputFloatResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetOutputFloatRequestCodec(),
              new Ros1Rosdemo_v4GetOutputFloatResponseCodec(),
              (value: Ros1Rosdemo_v4GetOutputFloatRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputFloat incoming request/response owner. */
export class Ros1Rosdemo_v4GetOutputFloatServer extends BoundedServiceServer<Ros1Rosdemo_v4GetOutputFloatRequest, Ros1Rosdemo_v4GetOutputFloatResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetOutputFloatRequestCodec(),
              new Ros1Rosdemo_v4GetOutputFloatResponseCodec(),
              (value: Ros1Rosdemo_v4GetOutputFloatResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputInt typed call and real-submit client. */
export class Ros1Rosdemo_v4GetOutputIntClient extends BoundedServiceClient<Ros1Rosdemo_v4GetOutputIntRequest, Ros1Rosdemo_v4GetOutputIntResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetOutputIntRequestCodec(),
              new Ros1Rosdemo_v4GetOutputIntResponseCodec(),
              (value: Ros1Rosdemo_v4GetOutputIntRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputInt incoming request/response owner. */
export class Ros1Rosdemo_v4GetOutputIntServer extends BoundedServiceServer<Ros1Rosdemo_v4GetOutputIntRequest, Ros1Rosdemo_v4GetOutputIntResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetOutputIntRequestCodec(),
              new Ros1Rosdemo_v4GetOutputIntResponseCodec(),
              (value: Ros1Rosdemo_v4GetOutputIntResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/GetPose typed call and real-submit client. */
export class Ros1Rosdemo_v4GetPoseClient extends BoundedServiceClient<Ros1Rosdemo_v4GetPoseRequest, Ros1Rosdemo_v4GetPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetPoseRequestCodec(),
              new Ros1Rosdemo_v4GetPoseResponseCodec(),
              (value: Ros1Rosdemo_v4GetPoseRequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetPose incoming request/response owner. */
export class Ros1Rosdemo_v4GetPoseServer extends BoundedServiceServer<Ros1Rosdemo_v4GetPoseRequest, Ros1Rosdemo_v4GetPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetPoseRequestCodec(),
              new Ros1Rosdemo_v4GetPoseResponseCodec(),
              (value: Ros1Rosdemo_v4GetPoseResponse): bool => value.validValue(),
              520,
              capacity);
    }
}

/** Complete rosdemo_v4/GetStartPose typed call and real-submit client. */
export class Ros1Rosdemo_v4GetStartPoseClient extends BoundedServiceClient<Ros1Rosdemo_v4GetStartPoseRequest, Ros1Rosdemo_v4GetStartPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4GetStartPoseRequestCodec(),
              new Ros1Rosdemo_v4GetStartPoseResponseCodec(),
              (value: Ros1Rosdemo_v4GetStartPoseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetStartPose incoming request/response owner. */
export class Ros1Rosdemo_v4GetStartPoseServer extends BoundedServiceServer<Ros1Rosdemo_v4GetStartPoseRequest, Ros1Rosdemo_v4GetStartPoseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4GetStartPoseRequestCodec(),
              new Ros1Rosdemo_v4GetStartPoseResponseCodec(),
              (value: Ros1Rosdemo_v4GetStartPoseResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v4/InverseKin typed call and real-submit client. */
export class Ros1Rosdemo_v4InverseKinClient extends BoundedServiceClient<Ros1Rosdemo_v4InverseKinRequest, Ros1Rosdemo_v4InverseKinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4InverseKinRequestCodec(),
              new Ros1Rosdemo_v4InverseKinResponseCodec(),
              (value: Ros1Rosdemo_v4InverseKinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/InverseKin incoming request/response owner. */
export class Ros1Rosdemo_v4InverseKinServer extends BoundedServiceServer<Ros1Rosdemo_v4InverseKinRequest, Ros1Rosdemo_v4InverseKinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4InverseKinRequestCodec(),
              new Ros1Rosdemo_v4InverseKinResponseCodec(),
              (value: Ros1Rosdemo_v4InverseKinResponse): bool => value.validValue(),
              1088,
              capacity);
    }
}

/** Complete rosdemo_v4/InverseSolution typed call and real-submit client. */
export class Ros1Rosdemo_v4InverseSolutionClient extends BoundedServiceClient<Ros1Rosdemo_v4InverseSolutionRequest, Ros1Rosdemo_v4InverseSolutionResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4InverseSolutionRequestCodec(),
              new Ros1Rosdemo_v4InverseSolutionResponseCodec(),
              (value: Ros1Rosdemo_v4InverseSolutionRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/InverseSolution incoming request/response owner. */
export class Ros1Rosdemo_v4InverseSolutionServer extends BoundedServiceServer<Ros1Rosdemo_v4InverseSolutionRequest, Ros1Rosdemo_v4InverseSolutionResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4InverseSolutionRequestCodec(),
              new Ros1Rosdemo_v4InverseSolutionResponseCodec(),
              (value: Ros1Rosdemo_v4InverseSolutionResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusClose typed call and real-submit client. */
export class Ros1Rosdemo_v4ModbusCloseClient extends BoundedServiceClient<Ros1Rosdemo_v4ModbusCloseRequest, Ros1Rosdemo_v4ModbusCloseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ModbusCloseRequestCodec(),
              new Ros1Rosdemo_v4ModbusCloseResponseCodec(),
              (value: Ros1Rosdemo_v4ModbusCloseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusClose incoming request/response owner. */
export class Ros1Rosdemo_v4ModbusCloseServer extends BoundedServiceServer<Ros1Rosdemo_v4ModbusCloseRequest, Ros1Rosdemo_v4ModbusCloseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ModbusCloseRequestCodec(),
              new Ros1Rosdemo_v4ModbusCloseResponseCodec(),
              (value: Ros1Rosdemo_v4ModbusCloseResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusCreate typed call and real-submit client. */
export class Ros1Rosdemo_v4ModbusCreateClient extends BoundedServiceClient<Ros1Rosdemo_v4ModbusCreateRequest, Ros1Rosdemo_v4ModbusCreateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ModbusCreateRequestCodec(),
              new Ros1Rosdemo_v4ModbusCreateResponseCodec(),
              (value: Ros1Rosdemo_v4ModbusCreateRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusCreate incoming request/response owner. */
export class Ros1Rosdemo_v4ModbusCreateServer extends BoundedServiceServer<Ros1Rosdemo_v4ModbusCreateRequest, Ros1Rosdemo_v4ModbusCreateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ModbusCreateRequestCodec(),
              new Ros1Rosdemo_v4ModbusCreateResponseCodec(),
              (value: Ros1Rosdemo_v4ModbusCreateResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusRTUCreate typed call and real-submit client. */
export class Ros1Rosdemo_v4ModbusRTUCreateClient extends BoundedServiceClient<Ros1Rosdemo_v4ModbusRTUCreateRequest, Ros1Rosdemo_v4ModbusRTUCreateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ModbusRTUCreateRequestCodec(),
              new Ros1Rosdemo_v4ModbusRTUCreateResponseCodec(),
              (value: Ros1Rosdemo_v4ModbusRTUCreateRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusRTUCreate incoming request/response owner. */
export class Ros1Rosdemo_v4ModbusRTUCreateServer extends BoundedServiceServer<Ros1Rosdemo_v4ModbusRTUCreateRequest, Ros1Rosdemo_v4ModbusRTUCreateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ModbusRTUCreateRequestCodec(),
              new Ros1Rosdemo_v4ModbusRTUCreateResponseCodec(),
              (value: Ros1Rosdemo_v4ModbusRTUCreateResponse): bool => value.validValue(),
              276,
              capacity);
    }
}

/** Complete rosdemo_v4/MovJ typed call and real-submit client. */
export class Ros1Rosdemo_v4MovJClient extends BoundedServiceClient<Ros1Rosdemo_v4MovJRequest, Ros1Rosdemo_v4MovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4MovJRequestCodec(),
              new Ros1Rosdemo_v4MovJResponseCodec(),
              (value: Ros1Rosdemo_v4MovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/MovJ incoming request/response owner. */
export class Ros1Rosdemo_v4MovJServer extends BoundedServiceServer<Ros1Rosdemo_v4MovJRequest, Ros1Rosdemo_v4MovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4MovJRequestCodec(),
              new Ros1Rosdemo_v4MovJResponseCodec(),
              (value: Ros1Rosdemo_v4MovJResponse): bool => value.validValue(),
              4213,
              capacity);
    }
}

/** Complete rosdemo_v4/MovJIO typed call and real-submit client. */
export class Ros1Rosdemo_v4MovJIOClient extends BoundedServiceClient<Ros1Rosdemo_v4MovJIORequest, Ros1Rosdemo_v4MovJIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4MovJIORequestCodec(),
              new Ros1Rosdemo_v4MovJIOResponseCodec(),
              (value: Ros1Rosdemo_v4MovJIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/MovJIO incoming request/response owner. */
export class Ros1Rosdemo_v4MovJIOServer extends BoundedServiceServer<Ros1Rosdemo_v4MovJIORequest, Ros1Rosdemo_v4MovJIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4MovJIORequestCodec(),
              new Ros1Rosdemo_v4MovJIOResponseCodec(),
              (value: Ros1Rosdemo_v4MovJIOResponse): bool => value.validValue(),
              8377,
              capacity);
    }
}

/** Complete rosdemo_v4/MovL typed call and real-submit client. */
export class Ros1Rosdemo_v4MovLClient extends BoundedServiceClient<Ros1Rosdemo_v4MovLRequest, Ros1Rosdemo_v4MovLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4MovLRequestCodec(),
              new Ros1Rosdemo_v4MovLResponseCodec(),
              (value: Ros1Rosdemo_v4MovLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/MovL incoming request/response owner. */
export class Ros1Rosdemo_v4MovLServer extends BoundedServiceServer<Ros1Rosdemo_v4MovLRequest, Ros1Rosdemo_v4MovLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4MovLRequestCodec(),
              new Ros1Rosdemo_v4MovLResponseCodec(),
              (value: Ros1Rosdemo_v4MovLResponse): bool => value.validValue(),
              4213,
              capacity);
    }
}

/** Complete rosdemo_v4/MovLIO typed call and real-submit client. */
export class Ros1Rosdemo_v4MovLIOClient extends BoundedServiceClient<Ros1Rosdemo_v4MovLIORequest, Ros1Rosdemo_v4MovLIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4MovLIORequestCodec(),
              new Ros1Rosdemo_v4MovLIOResponseCodec(),
              (value: Ros1Rosdemo_v4MovLIORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/MovLIO incoming request/response owner. */
export class Ros1Rosdemo_v4MovLIOServer extends BoundedServiceServer<Ros1Rosdemo_v4MovLIORequest, Ros1Rosdemo_v4MovLIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4MovLIORequestCodec(),
              new Ros1Rosdemo_v4MovLIOResponseCodec(),
              (value: Ros1Rosdemo_v4MovLIOResponse): bool => value.validValue(),
              8377,
              capacity);
    }
}

/** Complete rosdemo_v4/MoveJog typed call and real-submit client. */
export class Ros1Rosdemo_v4MoveJogClient extends BoundedServiceClient<Ros1Rosdemo_v4MoveJogRequest, Ros1Rosdemo_v4MoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4MoveJogRequestCodec(),
              new Ros1Rosdemo_v4MoveJogResponseCodec(),
              (value: Ros1Rosdemo_v4MoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/MoveJog incoming request/response owner. */
export class Ros1Rosdemo_v4MoveJogServer extends BoundedServiceServer<Ros1Rosdemo_v4MoveJogRequest, Ros1Rosdemo_v4MoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4MoveJogRequestCodec(),
              new Ros1Rosdemo_v4MoveJogResponseCodec(),
              (value: Ros1Rosdemo_v4MoveJogResponse): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete rosdemo_v4/Pause typed call and real-submit client. */
export class Ros1Rosdemo_v4PauseClient extends BoundedServiceClient<Ros1Rosdemo_v4PauseRequest, Ros1Rosdemo_v4PauseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4PauseRequestCodec(),
              new Ros1Rosdemo_v4PauseResponseCodec(),
              (value: Ros1Rosdemo_v4PauseRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/Pause incoming request/response owner. */
export class Ros1Rosdemo_v4PauseServer extends BoundedServiceServer<Ros1Rosdemo_v4PauseRequest, Ros1Rosdemo_v4PauseResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4PauseRequestCodec(),
              new Ros1Rosdemo_v4PauseResponseCodec(),
              (value: Ros1Rosdemo_v4PauseResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/PositiveKin typed call and real-submit client. */
export class Ros1Rosdemo_v4PositiveKinClient extends BoundedServiceClient<Ros1Rosdemo_v4PositiveKinRequest, Ros1Rosdemo_v4PositiveKinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4PositiveKinRequestCodec(),
              new Ros1Rosdemo_v4PositiveKinResponseCodec(),
              (value: Ros1Rosdemo_v4PositiveKinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/PositiveKin incoming request/response owner. */
export class Ros1Rosdemo_v4PositiveKinServer extends BoundedServiceServer<Ros1Rosdemo_v4PositiveKinRequest, Ros1Rosdemo_v4PositiveKinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4PositiveKinRequestCodec(),
              new Ros1Rosdemo_v4PositiveKinResponseCodec(),
              (value: Ros1Rosdemo_v4PositiveKinResponse): bool => value.validValue(),
              568,
              capacity);
    }
}

/** Complete rosdemo_v4/PowerOn typed call and real-submit client. */
export class Ros1Rosdemo_v4PowerOnClient extends BoundedServiceClient<Ros1Rosdemo_v4PowerOnRequest, Ros1Rosdemo_v4PowerOnResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4PowerOnRequestCodec(),
              new Ros1Rosdemo_v4PowerOnResponseCodec(),
              (value: Ros1Rosdemo_v4PowerOnRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/PowerOn incoming request/response owner. */
export class Ros1Rosdemo_v4PowerOnServer extends BoundedServiceServer<Ros1Rosdemo_v4PowerOnRequest, Ros1Rosdemo_v4PowerOnResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4PowerOnRequestCodec(),
              new Ros1Rosdemo_v4PowerOnResponseCodec(),
              (value: Ros1Rosdemo_v4PowerOnResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/RelJointMovJ typed call and real-submit client. */
export class Ros1Rosdemo_v4RelJointMovJClient extends BoundedServiceClient<Ros1Rosdemo_v4RelJointMovJRequest, Ros1Rosdemo_v4RelJointMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4RelJointMovJRequestCodec(),
              new Ros1Rosdemo_v4RelJointMovJResponseCodec(),
              (value: Ros1Rosdemo_v4RelJointMovJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/RelJointMovJ incoming request/response owner. */
export class Ros1Rosdemo_v4RelJointMovJServer extends BoundedServiceServer<Ros1Rosdemo_v4RelJointMovJRequest, Ros1Rosdemo_v4RelJointMovJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4RelJointMovJRequestCodec(),
              new Ros1Rosdemo_v4RelJointMovJResponseCodec(),
              (value: Ros1Rosdemo_v4RelJointMovJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovJTool typed call and real-submit client. */
export class Ros1Rosdemo_v4RelMovJToolClient extends BoundedServiceClient<Ros1Rosdemo_v4RelMovJToolRequest, Ros1Rosdemo_v4RelMovJToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4RelMovJToolRequestCodec(),
              new Ros1Rosdemo_v4RelMovJToolResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovJToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovJTool incoming request/response owner. */
export class Ros1Rosdemo_v4RelMovJToolServer extends BoundedServiceServer<Ros1Rosdemo_v4RelMovJToolRequest, Ros1Rosdemo_v4RelMovJToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4RelMovJToolRequestCodec(),
              new Ros1Rosdemo_v4RelMovJToolResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovJToolResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovJUser typed call and real-submit client. */
export class Ros1Rosdemo_v4RelMovJUserClient extends BoundedServiceClient<Ros1Rosdemo_v4RelMovJUserRequest, Ros1Rosdemo_v4RelMovJUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4RelMovJUserRequestCodec(),
              new Ros1Rosdemo_v4RelMovJUserResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovJUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovJUser incoming request/response owner. */
export class Ros1Rosdemo_v4RelMovJUserServer extends BoundedServiceServer<Ros1Rosdemo_v4RelMovJUserRequest, Ros1Rosdemo_v4RelMovJUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4RelMovJUserRequestCodec(),
              new Ros1Rosdemo_v4RelMovJUserResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovJUserResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovLTool typed call and real-submit client. */
export class Ros1Rosdemo_v4RelMovLToolClient extends BoundedServiceClient<Ros1Rosdemo_v4RelMovLToolRequest, Ros1Rosdemo_v4RelMovLToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4RelMovLToolRequestCodec(),
              new Ros1Rosdemo_v4RelMovLToolResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovLToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovLTool incoming request/response owner. */
export class Ros1Rosdemo_v4RelMovLToolServer extends BoundedServiceServer<Ros1Rosdemo_v4RelMovLToolRequest, Ros1Rosdemo_v4RelMovLToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4RelMovLToolRequestCodec(),
              new Ros1Rosdemo_v4RelMovLToolResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovLToolResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovLUser typed call and real-submit client. */
export class Ros1Rosdemo_v4RelMovLUserClient extends BoundedServiceClient<Ros1Rosdemo_v4RelMovLUserRequest, Ros1Rosdemo_v4RelMovLUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4RelMovLUserRequestCodec(),
              new Ros1Rosdemo_v4RelMovLUserResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovLUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/RelMovLUser incoming request/response owner. */
export class Ros1Rosdemo_v4RelMovLUserServer extends BoundedServiceServer<Ros1Rosdemo_v4RelMovLUserRequest, Ros1Rosdemo_v4RelMovLUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4RelMovLUserRequestCodec(),
              new Ros1Rosdemo_v4RelMovLUserResponseCodec(),
              (value: Ros1Rosdemo_v4RelMovLUserResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v4/RobotMode typed call and real-submit client. */
export class Ros1Rosdemo_v4RobotModeClient extends BoundedServiceClient<Ros1Rosdemo_v4RobotModeRequest, Ros1Rosdemo_v4RobotModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4RobotModeRequestCodec(),
              new Ros1Rosdemo_v4RobotModeResponseCodec(),
              (value: Ros1Rosdemo_v4RobotModeRequest): bool => value.validValue(),
              8,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/RobotMode incoming request/response owner. */
export class Ros1Rosdemo_v4RobotModeServer extends BoundedServiceServer<Ros1Rosdemo_v4RobotModeRequest, Ros1Rosdemo_v4RobotModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4RobotModeRequestCodec(),
              new Ros1Rosdemo_v4RobotModeResponseCodec(),
              (value: Ros1Rosdemo_v4RobotModeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/RunScript typed call and real-submit client. */
export class Ros1Rosdemo_v4RunScriptClient extends BoundedServiceClient<Ros1Rosdemo_v4RunScriptRequest, Ros1Rosdemo_v4RunScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4RunScriptRequestCodec(),
              new Ros1Rosdemo_v4RunScriptResponseCodec(),
              (value: Ros1Rosdemo_v4RunScriptRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/RunScript incoming request/response owner. */
export class Ros1Rosdemo_v4RunScriptServer extends BoundedServiceServer<Ros1Rosdemo_v4RunScriptRequest, Ros1Rosdemo_v4RunScriptResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4RunScriptRequestCodec(),
              new Ros1Rosdemo_v4RunScriptResponseCodec(),
              (value: Ros1Rosdemo_v4RunScriptResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v4/ServoJ typed call and real-submit client. */
export class Ros1Rosdemo_v4ServoJClient extends BoundedServiceClient<Ros1Rosdemo_v4ServoJRequest, Ros1Rosdemo_v4ServoJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ServoJRequestCodec(),
              new Ros1Rosdemo_v4ServoJResponseCodec(),
              (value: Ros1Rosdemo_v4ServoJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ServoJ incoming request/response owner. */
export class Ros1Rosdemo_v4ServoJServer extends BoundedServiceServer<Ros1Rosdemo_v4ServoJRequest, Ros1Rosdemo_v4ServoJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ServoJRequestCodec(),
              new Ros1Rosdemo_v4ServoJResponseCodec(),
              (value: Ros1Rosdemo_v4ServoJResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v4/ServoP typed call and real-submit client. */
export class Ros1Rosdemo_v4ServoPClient extends BoundedServiceClient<Ros1Rosdemo_v4ServoPRequest, Ros1Rosdemo_v4ServoPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ServoPRequestCodec(),
              new Ros1Rosdemo_v4ServoPResponseCodec(),
              (value: Ros1Rosdemo_v4ServoPRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ServoP incoming request/response owner. */
export class Ros1Rosdemo_v4ServoPServer extends BoundedServiceServer<Ros1Rosdemo_v4ServoPRequest, Ros1Rosdemo_v4ServoPResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ServoPRequestCodec(),
              new Ros1Rosdemo_v4ServoPResponseCodec(),
              (value: Ros1Rosdemo_v4ServoPResponse): bool => value.validValue(),
              4212,
              capacity);
    }
}

/** Complete rosdemo_v4/SetBackDistance typed call and real-submit client. */
export class Ros1Rosdemo_v4SetBackDistanceClient extends BoundedServiceClient<Ros1Rosdemo_v4SetBackDistanceRequest, Ros1Rosdemo_v4SetBackDistanceResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetBackDistanceRequestCodec(),
              new Ros1Rosdemo_v4SetBackDistanceResponseCodec(),
              (value: Ros1Rosdemo_v4SetBackDistanceRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetBackDistance incoming request/response owner. */
export class Ros1Rosdemo_v4SetBackDistanceServer extends BoundedServiceServer<Ros1Rosdemo_v4SetBackDistanceRequest, Ros1Rosdemo_v4SetBackDistanceResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetBackDistanceRequestCodec(),
              new Ros1Rosdemo_v4SetBackDistanceResponseCodec(),
              (value: Ros1Rosdemo_v4SetBackDistanceResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/SetCoils typed call and real-submit client. */
export class Ros1Rosdemo_v4SetCoilsClient extends BoundedServiceClient<Ros1Rosdemo_v4SetCoilsRequest, Ros1Rosdemo_v4SetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetCoilsRequestCodec(),
              new Ros1Rosdemo_v4SetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v4SetCoilsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetCoils incoming request/response owner. */
export class Ros1Rosdemo_v4SetCoilsServer extends BoundedServiceServer<Ros1Rosdemo_v4SetCoilsRequest, Ros1Rosdemo_v4SetCoilsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetCoilsRequestCodec(),
              new Ros1Rosdemo_v4SetCoilsResponseCodec(),
              (value: Ros1Rosdemo_v4SetCoilsResponse): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete rosdemo_v4/SetCollisionLevel typed call and real-submit client. */
export class Ros1Rosdemo_v4SetCollisionLevelClient extends BoundedServiceClient<Ros1Rosdemo_v4SetCollisionLevelRequest, Ros1Rosdemo_v4SetCollisionLevelResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetCollisionLevelRequestCodec(),
              new Ros1Rosdemo_v4SetCollisionLevelResponseCodec(),
              (value: Ros1Rosdemo_v4SetCollisionLevelRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetCollisionLevel incoming request/response owner. */
export class Ros1Rosdemo_v4SetCollisionLevelServer extends BoundedServiceServer<Ros1Rosdemo_v4SetCollisionLevelRequest, Ros1Rosdemo_v4SetCollisionLevelResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetCollisionLevelRequestCodec(),
              new Ros1Rosdemo_v4SetCollisionLevelResponseCodec(),
              (value: Ros1Rosdemo_v4SetCollisionLevelResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/SetHoldRegs typed call and real-submit client. */
export class Ros1Rosdemo_v4SetHoldRegsClient extends BoundedServiceClient<Ros1Rosdemo_v4SetHoldRegsRequest, Ros1Rosdemo_v4SetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v4SetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v4SetHoldRegsRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetHoldRegs incoming request/response owner. */
export class Ros1Rosdemo_v4SetHoldRegsServer extends BoundedServiceServer<Ros1Rosdemo_v4SetHoldRegsRequest, Ros1Rosdemo_v4SetHoldRegsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetHoldRegsRequestCodec(),
              new Ros1Rosdemo_v4SetHoldRegsResponseCodec(),
              (value: Ros1Rosdemo_v4SetHoldRegsResponse): bool => value.validValue(),
              532,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputBool typed call and real-submit client. */
export class Ros1Rosdemo_v4SetOutputBoolClient extends BoundedServiceClient<Ros1Rosdemo_v4SetOutputBoolRequest, Ros1Rosdemo_v4SetOutputBoolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetOutputBoolRequestCodec(),
              new Ros1Rosdemo_v4SetOutputBoolResponseCodec(),
              (value: Ros1Rosdemo_v4SetOutputBoolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputBool incoming request/response owner. */
export class Ros1Rosdemo_v4SetOutputBoolServer extends BoundedServiceServer<Ros1Rosdemo_v4SetOutputBoolRequest, Ros1Rosdemo_v4SetOutputBoolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetOutputBoolRequestCodec(),
              new Ros1Rosdemo_v4SetOutputBoolResponseCodec(),
              (value: Ros1Rosdemo_v4SetOutputBoolResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputFloat typed call and real-submit client. */
export class Ros1Rosdemo_v4SetOutputFloatClient extends BoundedServiceClient<Ros1Rosdemo_v4SetOutputFloatRequest, Ros1Rosdemo_v4SetOutputFloatResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetOutputFloatRequestCodec(),
              new Ros1Rosdemo_v4SetOutputFloatResponseCodec(),
              (value: Ros1Rosdemo_v4SetOutputFloatRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputFloat incoming request/response owner. */
export class Ros1Rosdemo_v4SetOutputFloatServer extends BoundedServiceServer<Ros1Rosdemo_v4SetOutputFloatRequest, Ros1Rosdemo_v4SetOutputFloatResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetOutputFloatRequestCodec(),
              new Ros1Rosdemo_v4SetOutputFloatResponseCodec(),
              (value: Ros1Rosdemo_v4SetOutputFloatResponse): bool => value.validValue(),
              12,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputInt typed call and real-submit client. */
export class Ros1Rosdemo_v4SetOutputIntClient extends BoundedServiceClient<Ros1Rosdemo_v4SetOutputIntRequest, Ros1Rosdemo_v4SetOutputIntResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetOutputIntRequestCodec(),
              new Ros1Rosdemo_v4SetOutputIntResponseCodec(),
              (value: Ros1Rosdemo_v4SetOutputIntRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputInt incoming request/response owner. */
export class Ros1Rosdemo_v4SetOutputIntServer extends BoundedServiceServer<Ros1Rosdemo_v4SetOutputIntRequest, Ros1Rosdemo_v4SetOutputIntResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetOutputIntRequestCodec(),
              new Ros1Rosdemo_v4SetOutputIntResponseCodec(),
              (value: Ros1Rosdemo_v4SetOutputIntResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/SetPayload typed call and real-submit client. */
export class Ros1Rosdemo_v4SetPayloadClient extends BoundedServiceClient<Ros1Rosdemo_v4SetPayloadRequest, Ros1Rosdemo_v4SetPayloadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetPayloadRequestCodec(),
              new Ros1Rosdemo_v4SetPayloadResponseCodec(),
              (value: Ros1Rosdemo_v4SetPayloadRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetPayload incoming request/response owner. */
export class Ros1Rosdemo_v4SetPayloadServer extends BoundedServiceServer<Ros1Rosdemo_v4SetPayloadRequest, Ros1Rosdemo_v4SetPayloadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetPayloadRequestCodec(),
              new Ros1Rosdemo_v4SetPayloadResponseCodec(),
              (value: Ros1Rosdemo_v4SetPayloadResponse): bool => value.validValue(),
              32,
              capacity);
    }
}

/** Complete rosdemo_v4/SetPostCollisionMode typed call and real-submit client. */
export class Ros1Rosdemo_v4SetPostCollisionModeClient extends
    BoundedServiceClient<Ros1Rosdemo_v4SetPostCollisionModeRequest, Ros1Rosdemo_v4SetPostCollisionModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetPostCollisionModeRequestCodec(),
              new Ros1Rosdemo_v4SetPostCollisionModeResponseCodec(),
              (value: Ros1Rosdemo_v4SetPostCollisionModeRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetPostCollisionMode incoming request/response owner. */
export class Ros1Rosdemo_v4SetPostCollisionModeServer extends
    BoundedServiceServer<Ros1Rosdemo_v4SetPostCollisionModeRequest, Ros1Rosdemo_v4SetPostCollisionModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetPostCollisionModeRequestCodec(),
              new Ros1Rosdemo_v4SetPostCollisionModeResponseCodec(),
              (value: Ros1Rosdemo_v4SetPostCollisionModeResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/SetSafeSkin typed call and real-submit client. */
export class Ros1Rosdemo_v4SetSafeSkinClient extends BoundedServiceClient<Ros1Rosdemo_v4SetSafeSkinRequest, Ros1Rosdemo_v4SetSafeSkinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetSafeSkinRequestCodec(),
              new Ros1Rosdemo_v4SetSafeSkinResponseCodec(),
              (value: Ros1Rosdemo_v4SetSafeSkinRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetSafeSkin incoming request/response owner. */
export class Ros1Rosdemo_v4SetSafeSkinServer extends BoundedServiceServer<Ros1Rosdemo_v4SetSafeSkinRequest, Ros1Rosdemo_v4SetSafeSkinResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetSafeSkinRequestCodec(),
              new Ros1Rosdemo_v4SetSafeSkinResponseCodec(),
              (value: Ros1Rosdemo_v4SetSafeSkinResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/SetSafeWallEnable typed call and real-submit client. */
export class Ros1Rosdemo_v4SetSafeWallEnableClient extends BoundedServiceClient<Ros1Rosdemo_v4SetSafeWallEnableRequest, Ros1Rosdemo_v4SetSafeWallEnableResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetSafeWallEnableRequestCodec(),
              new Ros1Rosdemo_v4SetSafeWallEnableResponseCodec(),
              (value: Ros1Rosdemo_v4SetSafeWallEnableRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetSafeWallEnable incoming request/response owner. */
export class Ros1Rosdemo_v4SetSafeWallEnableServer extends BoundedServiceServer<Ros1Rosdemo_v4SetSafeWallEnableRequest, Ros1Rosdemo_v4SetSafeWallEnableResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetSafeWallEnableRequestCodec(),
              new Ros1Rosdemo_v4SetSafeWallEnableResponseCodec(),
              (value: Ros1Rosdemo_v4SetSafeWallEnableResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/SetTool typed call and real-submit client. */
export class Ros1Rosdemo_v4SetToolClient extends BoundedServiceClient<Ros1Rosdemo_v4SetToolRequest, Ros1Rosdemo_v4SetToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetToolRequestCodec(),
              new Ros1Rosdemo_v4SetToolResponseCodec(),
              (value: Ros1Rosdemo_v4SetToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetTool incoming request/response owner. */
export class Ros1Rosdemo_v4SetToolServer extends BoundedServiceServer<Ros1Rosdemo_v4SetToolRequest, Ros1Rosdemo_v4SetToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetToolRequestCodec(),
              new Ros1Rosdemo_v4SetToolResponseCodec(),
              (value: Ros1Rosdemo_v4SetToolResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete rosdemo_v4/SetTool485 typed call and real-submit client. */
export class Ros1Rosdemo_v4SetTool485Client extends BoundedServiceClient<Ros1Rosdemo_v4SetTool485Request, Ros1Rosdemo_v4SetTool485Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetTool485RequestCodec(),
              new Ros1Rosdemo_v4SetTool485ResponseCodec(),
              (value: Ros1Rosdemo_v4SetTool485Request): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetTool485 incoming request/response owner. */
export class Ros1Rosdemo_v4SetTool485Server extends BoundedServiceServer<Ros1Rosdemo_v4SetTool485Request, Ros1Rosdemo_v4SetTool485Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetTool485RequestCodec(),
              new Ros1Rosdemo_v4SetTool485ResponseCodec(),
              (value: Ros1Rosdemo_v4SetTool485Response): bool => value.validValue(),
              272,
              capacity);
    }
}

/** Complete rosdemo_v4/SetToolMode typed call and real-submit client. */
export class Ros1Rosdemo_v4SetToolModeClient extends BoundedServiceClient<Ros1Rosdemo_v4SetToolModeRequest, Ros1Rosdemo_v4SetToolModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetToolModeRequestCodec(),
              new Ros1Rosdemo_v4SetToolModeResponseCodec(),
              (value: Ros1Rosdemo_v4SetToolModeRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetToolMode incoming request/response owner. */
export class Ros1Rosdemo_v4SetToolModeServer extends BoundedServiceServer<Ros1Rosdemo_v4SetToolModeRequest, Ros1Rosdemo_v4SetToolModeResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetToolModeRequestCodec(),
              new Ros1Rosdemo_v4SetToolModeResponseCodec(),
              (value: Ros1Rosdemo_v4SetToolModeResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/SetToolPower typed call and real-submit client. */
export class Ros1Rosdemo_v4SetToolPowerClient extends BoundedServiceClient<Ros1Rosdemo_v4SetToolPowerRequest, Ros1Rosdemo_v4SetToolPowerResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetToolPowerRequestCodec(),
              new Ros1Rosdemo_v4SetToolPowerResponseCodec(),
              (value: Ros1Rosdemo_v4SetToolPowerRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetToolPower incoming request/response owner. */
export class Ros1Rosdemo_v4SetToolPowerServer extends BoundedServiceServer<Ros1Rosdemo_v4SetToolPowerRequest, Ros1Rosdemo_v4SetToolPowerResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetToolPowerRequestCodec(),
              new Ros1Rosdemo_v4SetToolPowerResponseCodec(),
              (value: Ros1Rosdemo_v4SetToolPowerResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/SetUser typed call and real-submit client. */
export class Ros1Rosdemo_v4SetUserClient extends BoundedServiceClient<Ros1Rosdemo_v4SetUserRequest, Ros1Rosdemo_v4SetUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SetUserRequestCodec(),
              new Ros1Rosdemo_v4SetUserResponseCodec(),
              (value: Ros1Rosdemo_v4SetUserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetUser incoming request/response owner. */
export class Ros1Rosdemo_v4SetUserServer extends BoundedServiceServer<Ros1Rosdemo_v4SetUserRequest, Ros1Rosdemo_v4SetUserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SetUserRequestCodec(),
              new Ros1Rosdemo_v4SetUserResponseCodec(),
              (value: Ros1Rosdemo_v4SetUserResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete rosdemo_v4/SpeedFactor typed call and real-submit client. */
export class Ros1Rosdemo_v4SpeedFactorClient extends BoundedServiceClient<Ros1Rosdemo_v4SpeedFactorRequest, Ros1Rosdemo_v4SpeedFactorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4SpeedFactorRequestCodec(),
              new Ros1Rosdemo_v4SpeedFactorResponseCodec(),
              (value: Ros1Rosdemo_v4SpeedFactorRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SpeedFactor incoming request/response owner. */
export class Ros1Rosdemo_v4SpeedFactorServer extends BoundedServiceServer<Ros1Rosdemo_v4SpeedFactorRequest, Ros1Rosdemo_v4SpeedFactorResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4SpeedFactorRequestCodec(),
              new Ros1Rosdemo_v4SpeedFactorResponseCodec(),
              (value: Ros1Rosdemo_v4SpeedFactorResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/StartDrag typed call and real-submit client. */
export class Ros1Rosdemo_v4StartDragClient extends BoundedServiceClient<Ros1Rosdemo_v4StartDragRequest, Ros1Rosdemo_v4StartDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4StartDragRequestCodec(),
              new Ros1Rosdemo_v4StartDragResponseCodec(),
              (value: Ros1Rosdemo_v4StartDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/StartDrag incoming request/response owner. */
export class Ros1Rosdemo_v4StartDragServer extends BoundedServiceServer<Ros1Rosdemo_v4StartDragRequest, Ros1Rosdemo_v4StartDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4StartDragRequestCodec(),
              new Ros1Rosdemo_v4StartDragResponseCodec(),
              (value: Ros1Rosdemo_v4StartDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/StartPath typed call and real-submit client. */
export class Ros1Rosdemo_v4StartPathClient extends BoundedServiceClient<Ros1Rosdemo_v4StartPathRequest, Ros1Rosdemo_v4StartPathResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4StartPathRequestCodec(),
              new Ros1Rosdemo_v4StartPathResponseCodec(),
              (value: Ros1Rosdemo_v4StartPathRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/StartPath incoming request/response owner. */
export class Ros1Rosdemo_v4StartPathServer extends BoundedServiceServer<Ros1Rosdemo_v4StartPathRequest, Ros1Rosdemo_v4StartPathResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4StartPathRequestCodec(),
              new Ros1Rosdemo_v4StartPathResponseCodec(),
              (value: Ros1Rosdemo_v4StartPathResponse): bool => value.validValue(),
              4424,
              capacity);
    }
}

/** Complete rosdemo_v4/Stop typed call and real-submit client. */
export class Ros1Rosdemo_v4StopClient extends BoundedServiceClient<Ros1Rosdemo_v4StopRequest, Ros1Rosdemo_v4StopResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4StopRequestCodec(),
              new Ros1Rosdemo_v4StopResponseCodec(),
              (value: Ros1Rosdemo_v4StopRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/Stop incoming request/response owner. */
export class Ros1Rosdemo_v4StopServer extends BoundedServiceServer<Ros1Rosdemo_v4StopRequest, Ros1Rosdemo_v4StopResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4StopRequestCodec(),
              new Ros1Rosdemo_v4StopResponseCodec(),
              (value: Ros1Rosdemo_v4StopResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/StopDrag typed call and real-submit client. */
export class Ros1Rosdemo_v4StopDragClient extends BoundedServiceClient<Ros1Rosdemo_v4StopDragRequest, Ros1Rosdemo_v4StopDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4StopDragRequestCodec(),
              new Ros1Rosdemo_v4StopDragResponseCodec(),
              (value: Ros1Rosdemo_v4StopDragRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/StopDrag incoming request/response owner. */
export class Ros1Rosdemo_v4StopDragServer extends BoundedServiceServer<Ros1Rosdemo_v4StopDragRequest, Ros1Rosdemo_v4StopDragResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4StopDragRequestCodec(),
              new Ros1Rosdemo_v4StopDragResponseCodec(),
              (value: Ros1Rosdemo_v4StopDragResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/StopMoveJog typed call and real-submit client. */
export class Ros1Rosdemo_v4StopMoveJogClient extends BoundedServiceClient<Ros1Rosdemo_v4StopMoveJogRequest, Ros1Rosdemo_v4StopMoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4StopMoveJogRequestCodec(),
              new Ros1Rosdemo_v4StopMoveJogResponseCodec(),
              (value: Ros1Rosdemo_v4StopMoveJogRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/StopMoveJog incoming request/response owner. */
export class Ros1Rosdemo_v4StopMoveJogServer extends BoundedServiceServer<Ros1Rosdemo_v4StopMoveJogRequest, Ros1Rosdemo_v4StopMoveJogResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4StopMoveJogRequestCodec(),
              new Ros1Rosdemo_v4StopMoveJogResponseCodec(),
              (value: Ros1Rosdemo_v4StopMoveJogResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete rosdemo_v4/TcpDashboard typed call and real-submit client. */
export class Ros1Rosdemo_v4TcpDashboardClient extends BoundedServiceClient<Ros1Rosdemo_v4TcpDashboardRequest, Ros1Rosdemo_v4TcpDashboardResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4TcpDashboardRequestCodec(),
              new Ros1Rosdemo_v4TcpDashboardResponseCodec(),
              (value: Ros1Rosdemo_v4TcpDashboardRequest): bool => value.validValue(),
              260,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/TcpDashboard incoming request/response owner. */
export class Ros1Rosdemo_v4TcpDashboardServer extends BoundedServiceServer<Ros1Rosdemo_v4TcpDashboardRequest, Ros1Rosdemo_v4TcpDashboardResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4TcpDashboardRequestCodec(),
              new Ros1Rosdemo_v4TcpDashboardResponseCodec(),
              (value: Ros1Rosdemo_v4TcpDashboardResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete rosdemo_v4/Tool typed call and real-submit client. */
export class Ros1Rosdemo_v4ToolClient extends BoundedServiceClient<Ros1Rosdemo_v4ToolRequest, Ros1Rosdemo_v4ToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ToolRequestCodec(),
              new Ros1Rosdemo_v4ToolResponseCodec(),
              (value: Ros1Rosdemo_v4ToolRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/Tool incoming request/response owner. */
export class Ros1Rosdemo_v4ToolServer extends BoundedServiceServer<Ros1Rosdemo_v4ToolRequest, Ros1Rosdemo_v4ToolResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ToolRequestCodec(),
              new Ros1Rosdemo_v4ToolResponseCodec(),
              (value: Ros1Rosdemo_v4ToolResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolAI typed call and real-submit client. */
export class Ros1Rosdemo_v4ToolAIClient extends BoundedServiceClient<Ros1Rosdemo_v4ToolAIRequest, Ros1Rosdemo_v4ToolAIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ToolAIRequestCodec(),
              new Ros1Rosdemo_v4ToolAIResponseCodec(),
              (value: Ros1Rosdemo_v4ToolAIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolAI incoming request/response owner. */
export class Ros1Rosdemo_v4ToolAIServer extends BoundedServiceServer<Ros1Rosdemo_v4ToolAIRequest, Ros1Rosdemo_v4ToolAIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ToolAIRequestCodec(),
              new Ros1Rosdemo_v4ToolAIResponseCodec(),
              (value: Ros1Rosdemo_v4ToolAIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolDI typed call and real-submit client. */
export class Ros1Rosdemo_v4ToolDIClient extends BoundedServiceClient<Ros1Rosdemo_v4ToolDIRequest, Ros1Rosdemo_v4ToolDIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ToolDIRequestCodec(),
              new Ros1Rosdemo_v4ToolDIResponseCodec(),
              (value: Ros1Rosdemo_v4ToolDIRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolDI incoming request/response owner. */
export class Ros1Rosdemo_v4ToolDIServer extends BoundedServiceServer<Ros1Rosdemo_v4ToolDIRequest, Ros1Rosdemo_v4ToolDIResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ToolDIRequestCodec(),
              new Ros1Rosdemo_v4ToolDIResponseCodec(),
              (value: Ros1Rosdemo_v4ToolDIResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolDO typed call and real-submit client. */
export class Ros1Rosdemo_v4ToolDOClient extends BoundedServiceClient<Ros1Rosdemo_v4ToolDORequest, Ros1Rosdemo_v4ToolDOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ToolDORequestCodec(),
              new Ros1Rosdemo_v4ToolDOResponseCodec(),
              (value: Ros1Rosdemo_v4ToolDORequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolDO incoming request/response owner. */
export class Ros1Rosdemo_v4ToolDOServer extends BoundedServiceServer<Ros1Rosdemo_v4ToolDORequest, Ros1Rosdemo_v4ToolDOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ToolDORequestCodec(),
              new Ros1Rosdemo_v4ToolDOResponseCodec(),
              (value: Ros1Rosdemo_v4ToolDOResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolDOInstant typed call and real-submit client. */
export class Ros1Rosdemo_v4ToolDOInstantClient extends BoundedServiceClient<Ros1Rosdemo_v4ToolDOInstantRequest, Ros1Rosdemo_v4ToolDOInstantResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4ToolDOInstantRequestCodec(),
              new Ros1Rosdemo_v4ToolDOInstantResponseCodec(),
              (value: Ros1Rosdemo_v4ToolDOInstantRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ToolDOInstant incoming request/response owner. */
export class Ros1Rosdemo_v4ToolDOInstantServer extends BoundedServiceServer<Ros1Rosdemo_v4ToolDOInstantRequest, Ros1Rosdemo_v4ToolDOInstantResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4ToolDOInstantRequestCodec(),
              new Ros1Rosdemo_v4ToolDOInstantResponseCodec(),
              (value: Ros1Rosdemo_v4ToolDOInstantResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete rosdemo_v4/User typed call and real-submit client. */
export class Ros1Rosdemo_v4UserClient extends BoundedServiceClient<Ros1Rosdemo_v4UserRequest, Ros1Rosdemo_v4UserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4UserRequestCodec(),
              new Ros1Rosdemo_v4UserResponseCodec(),
              (value: Ros1Rosdemo_v4UserRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/User incoming request/response owner. */
export class Ros1Rosdemo_v4UserServer extends BoundedServiceServer<Ros1Rosdemo_v4UserRequest, Ros1Rosdemo_v4UserResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4UserRequestCodec(),
              new Ros1Rosdemo_v4UserResponseCodec(),
              (value: Ros1Rosdemo_v4UserResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/VelJ typed call and real-submit client. */
export class Ros1Rosdemo_v4VelJClient extends BoundedServiceClient<Ros1Rosdemo_v4VelJRequest, Ros1Rosdemo_v4VelJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4VelJRequestCodec(),
              new Ros1Rosdemo_v4VelJResponseCodec(),
              (value: Ros1Rosdemo_v4VelJRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/VelJ incoming request/response owner. */
export class Ros1Rosdemo_v4VelJServer extends BoundedServiceServer<Ros1Rosdemo_v4VelJRequest, Ros1Rosdemo_v4VelJResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4VelJRequestCodec(),
              new Ros1Rosdemo_v4VelJResponseCodec(),
              (value: Ros1Rosdemo_v4VelJResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete rosdemo_v4/VelL typed call and real-submit client. */
export class Ros1Rosdemo_v4VelLClient extends BoundedServiceClient<Ros1Rosdemo_v4VelLRequest, Ros1Rosdemo_v4VelLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Rosdemo_v4VelLRequestCodec(),
              new Ros1Rosdemo_v4VelLResponseCodec(),
              (value: Ros1Rosdemo_v4VelLRequest): bool => value.validValue(),
              4,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/VelL incoming request/response owner. */
export class Ros1Rosdemo_v4VelLServer extends BoundedServiceServer<Ros1Rosdemo_v4VelLRequest, Ros1Rosdemo_v4VelLResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Rosdemo_v4VelLRequestCodec(),
              new Ros1Rosdemo_v4VelLResponseCodec(),
              (value: Ros1Rosdemo_v4VelLResponse): bool => value.validValue(),
              4,
              capacity);
    }
}
