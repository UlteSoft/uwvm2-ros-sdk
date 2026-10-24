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
    Ros2Xarm_msgsSrvBioGripperCtrl_Request,
    Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec,
    Ros2Xarm_msgsSrvBioGripperCtrl_Response,
    Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec,
    Ros2Xarm_msgsSrvBioGripperEnable_Request,
    Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec,
    Ros2Xarm_msgsSrvBioGripperEnable_Response,
    Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec,
    Ros2Xarm_msgsSrvCall_Request,
    Ros2Xarm_msgsSrvCall_RequestCodec,
    Ros2Xarm_msgsSrvCall_Response,
    Ros2Xarm_msgsSrvCall_ResponseCodec,
    Ros2Xarm_msgsSrvFtCaliLoad_Request,
    Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec,
    Ros2Xarm_msgsSrvFtCaliLoad_Response,
    Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec,
    Ros2Xarm_msgsSrvFtForceConfig_Request,
    Ros2Xarm_msgsSrvFtForceConfig_RequestCodec,
    Ros2Xarm_msgsSrvFtForceConfig_Response,
    Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec,
    Ros2Xarm_msgsSrvFtForcePid_Request,
    Ros2Xarm_msgsSrvFtForcePid_RequestCodec,
    Ros2Xarm_msgsSrvFtForcePid_Response,
    Ros2Xarm_msgsSrvFtForcePid_ResponseCodec,
    Ros2Xarm_msgsSrvFtImpedance_Request,
    Ros2Xarm_msgsSrvFtImpedance_RequestCodec,
    Ros2Xarm_msgsSrvFtImpedance_Response,
    Ros2Xarm_msgsSrvFtImpedance_ResponseCodec,
    Ros2Xarm_msgsSrvGetAnalogIO_Request,
    Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec,
    Ros2Xarm_msgsSrvGetAnalogIO_Response,
    Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec,
    Ros2Xarm_msgsSrvGetDigitalIO_Request,
    Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec,
    Ros2Xarm_msgsSrvGetDigitalIO_Response,
    Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec,
    Ros2Xarm_msgsSrvGetFloat32_Request,
    Ros2Xarm_msgsSrvGetFloat32_RequestCodec,
    Ros2Xarm_msgsSrvGetFloat32_Response,
    Ros2Xarm_msgsSrvGetFloat32_ResponseCodec,
    Ros2Xarm_msgsSrvGetFloat32List_Request,
    Ros2Xarm_msgsSrvGetFloat32List_RequestCodec,
    Ros2Xarm_msgsSrvGetFloat32List_Response,
    Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec,
    Ros2Xarm_msgsSrvGetInt16_Request,
    Ros2Xarm_msgsSrvGetInt16_RequestCodec,
    Ros2Xarm_msgsSrvGetInt16_Response,
    Ros2Xarm_msgsSrvGetInt16_ResponseCodec,
    Ros2Xarm_msgsSrvGetInt16List_Request,
    Ros2Xarm_msgsSrvGetInt16List_RequestCodec,
    Ros2Xarm_msgsSrvGetInt16List_Response,
    Ros2Xarm_msgsSrvGetInt16List_ResponseCodec,
    Ros2Xarm_msgsSrvGetInt32_Request,
    Ros2Xarm_msgsSrvGetInt32_RequestCodec,
    Ros2Xarm_msgsSrvGetInt32_Response,
    Ros2Xarm_msgsSrvGetInt32_ResponseCodec,
    Ros2Xarm_msgsSrvGetInt32ByType_Request,
    Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec,
    Ros2Xarm_msgsSrvGetInt32ByType_Response,
    Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec,
    Ros2Xarm_msgsSrvGetSetModbusData_Request,
    Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec,
    Ros2Xarm_msgsSrvGetSetModbusData_Response,
    Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec,
    Ros2Xarm_msgsSrvGripperMove_Request,
    Ros2Xarm_msgsSrvGripperMove_RequestCodec,
    Ros2Xarm_msgsSrvGripperMove_Response,
    Ros2Xarm_msgsSrvGripperMove_ResponseCodec,
    Ros2Xarm_msgsSrvIdenLoad_Request,
    Ros2Xarm_msgsSrvIdenLoad_RequestCodec,
    Ros2Xarm_msgsSrvIdenLoad_Response,
    Ros2Xarm_msgsSrvIdenLoad_ResponseCodec,
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request,
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec,
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response,
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec,
    Ros2Xarm_msgsSrvLinearTrackSetPos_Request,
    Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec,
    Ros2Xarm_msgsSrvLinearTrackSetPos_Response,
    Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec,
    Ros2Xarm_msgsSrvMoveCartesian_Request,
    Ros2Xarm_msgsSrvMoveCartesian_RequestCodec,
    Ros2Xarm_msgsSrvMoveCartesian_Response,
    Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec,
    Ros2Xarm_msgsSrvMoveCircle_Request,
    Ros2Xarm_msgsSrvMoveCircle_RequestCodec,
    Ros2Xarm_msgsSrvMoveCircle_Response,
    Ros2Xarm_msgsSrvMoveCircle_ResponseCodec,
    Ros2Xarm_msgsSrvMoveHome_Request,
    Ros2Xarm_msgsSrvMoveHome_RequestCodec,
    Ros2Xarm_msgsSrvMoveHome_Response,
    Ros2Xarm_msgsSrvMoveHome_ResponseCodec,
    Ros2Xarm_msgsSrvMoveJoint_Request,
    Ros2Xarm_msgsSrvMoveJoint_RequestCodec,
    Ros2Xarm_msgsSrvMoveJoint_Response,
    Ros2Xarm_msgsSrvMoveJoint_ResponseCodec,
    Ros2Xarm_msgsSrvMoveVelocity_Request,
    Ros2Xarm_msgsSrvMoveVelocity_RequestCodec,
    Ros2Xarm_msgsSrvMoveVelocity_Response,
    Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec,
    Ros2Xarm_msgsSrvPlanExec_Request,
    Ros2Xarm_msgsSrvPlanExec_RequestCodec,
    Ros2Xarm_msgsSrvPlanExec_Response,
    Ros2Xarm_msgsSrvPlanExec_ResponseCodec,
    Ros2Xarm_msgsSrvPlanJoint_Request,
    Ros2Xarm_msgsSrvPlanJoint_RequestCodec,
    Ros2Xarm_msgsSrvPlanJoint_Response,
    Ros2Xarm_msgsSrvPlanJoint_ResponseCodec,
    Ros2Xarm_msgsSrvPlanPose_Request,
    Ros2Xarm_msgsSrvPlanPose_RequestCodec,
    Ros2Xarm_msgsSrvPlanPose_Response,
    Ros2Xarm_msgsSrvPlanPose_ResponseCodec,
    Ros2Xarm_msgsSrvPlanSingleStraight_Request,
    Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec,
    Ros2Xarm_msgsSrvPlanSingleStraight_Response,
    Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec,
    Ros2Xarm_msgsSrvRobotiqActivate_Request,
    Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec,
    Ros2Xarm_msgsSrvRobotiqActivate_Response,
    Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec,
    Ros2Xarm_msgsSrvRobotiqGetStatus_Request,
    Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec,
    Ros2Xarm_msgsSrvRobotiqGetStatus_Response,
    Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec,
    Ros2Xarm_msgsSrvRobotiqMove_Request,
    Ros2Xarm_msgsSrvRobotiqMove_RequestCodec,
    Ros2Xarm_msgsSrvRobotiqMove_Response,
    Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec,
    Ros2Xarm_msgsSrvRobotiqReset_Request,
    Ros2Xarm_msgsSrvRobotiqReset_RequestCodec,
    Ros2Xarm_msgsSrvRobotiqReset_Response,
    Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec,
    Ros2Xarm_msgsSrvSetAnalogIO_Request,
    Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec,
    Ros2Xarm_msgsSrvSetAnalogIO_Response,
    Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec,
    Ros2Xarm_msgsSrvSetDigitalIO_Request,
    Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec,
    Ros2Xarm_msgsSrvSetDigitalIO_Response,
    Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec,
    Ros2Xarm_msgsSrvSetFloat32_Request,
    Ros2Xarm_msgsSrvSetFloat32_RequestCodec,
    Ros2Xarm_msgsSrvSetFloat32_Response,
    Ros2Xarm_msgsSrvSetFloat32_ResponseCodec,
    Ros2Xarm_msgsSrvSetFloat32List_Request,
    Ros2Xarm_msgsSrvSetFloat32List_RequestCodec,
    Ros2Xarm_msgsSrvSetFloat32List_Response,
    Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec,
    Ros2Xarm_msgsSrvSetInt16_Request,
    Ros2Xarm_msgsSrvSetInt16_RequestCodec,
    Ros2Xarm_msgsSrvSetInt16_Response,
    Ros2Xarm_msgsSrvSetInt16_ResponseCodec,
    Ros2Xarm_msgsSrvSetInt16ById_Request,
    Ros2Xarm_msgsSrvSetInt16ById_RequestCodec,
    Ros2Xarm_msgsSrvSetInt16ById_Response,
    Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec,
    Ros2Xarm_msgsSrvSetInt16List_Request,
    Ros2Xarm_msgsSrvSetInt16List_RequestCodec,
    Ros2Xarm_msgsSrvSetInt16List_Response,
    Ros2Xarm_msgsSrvSetInt16List_ResponseCodec,
    Ros2Xarm_msgsSrvSetInt32_Request,
    Ros2Xarm_msgsSrvSetInt32_RequestCodec,
    Ros2Xarm_msgsSrvSetInt32_Response,
    Ros2Xarm_msgsSrvSetInt32_ResponseCodec,
    Ros2Xarm_msgsSrvSetInt32ByType_Request,
    Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec,
    Ros2Xarm_msgsSrvSetInt32ByType_Response,
    Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec,
    Ros2Xarm_msgsSrvSetModbusTimeout_Request,
    Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec,
    Ros2Xarm_msgsSrvSetModbusTimeout_Response,
    Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec,
    Ros2Xarm_msgsSrvSetTcpLoad_Request,
    Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec,
    Ros2Xarm_msgsSrvSetTcpLoad_Response,
    Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec,
    Ros2Xarm_msgsSrvTrajCtrl_Request,
    Ros2Xarm_msgsSrvTrajCtrl_RequestCodec,
    Ros2Xarm_msgsSrvTrajCtrl_Response,
    Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec,
    Ros2Xarm_msgsSrvTrajPlay_Request,
    Ros2Xarm_msgsSrvTrajPlay_RequestCodec,
    Ros2Xarm_msgsSrvTrajPlay_Response,
    Ros2Xarm_msgsSrvTrajPlay_ResponseCodec,
    Ros2Xarm_msgsSrvVacuumGripperCtrl_Request,
    Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec,
    Ros2Xarm_msgsSrvVacuumGripperCtrl_Response,
    Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec
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

/** Complete xarm_msgs/srv/BioGripperCtrl typed call and real-submit client. */
export class Ros2Xarm_msgsSrvBioGripperCtrlClient extends BoundedServiceClient<Ros2Xarm_msgsSrvBioGripperCtrl_Request, Ros2Xarm_msgsSrvBioGripperCtrl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec(),
              new Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvBioGripperCtrl_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/BioGripperCtrl incoming request/response owner. */
export class Ros2Xarm_msgsSrvBioGripperCtrlServer extends BoundedServiceServer<Ros2Xarm_msgsSrvBioGripperCtrl_Request, Ros2Xarm_msgsSrvBioGripperCtrl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec(),
              new Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvBioGripperCtrl_Response): bool => value.validValue(),
              7,
              capacity);
    }
}

/** Complete xarm_msgs/srv/BioGripperEnable typed call and real-submit client. */
export class Ros2Xarm_msgsSrvBioGripperEnableClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvBioGripperEnable_Request, Ros2Xarm_msgsSrvBioGripperEnable_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec(),
              new Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvBioGripperEnable_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/BioGripperEnable incoming request/response owner. */
export class Ros2Xarm_msgsSrvBioGripperEnableServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvBioGripperEnable_Request, Ros2Xarm_msgsSrvBioGripperEnable_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec(),
              new Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvBioGripperEnable_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete xarm_msgs/srv/Call typed call and real-submit client. */
export class Ros2Xarm_msgsSrvCallClient extends BoundedServiceClient<Ros2Xarm_msgsSrvCall_Request, Ros2Xarm_msgsSrvCall_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvCall_RequestCodec(),
              new Ros2Xarm_msgsSrvCall_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvCall_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/Call incoming request/response owner. */
export class Ros2Xarm_msgsSrvCallServer extends BoundedServiceServer<Ros2Xarm_msgsSrvCall_Request, Ros2Xarm_msgsSrvCall_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvCall_RequestCodec(),
              new Ros2Xarm_msgsSrvCall_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvCall_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtCaliLoad typed call and real-submit client. */
export class Ros2Xarm_msgsSrvFtCaliLoadClient extends BoundedServiceClient<Ros2Xarm_msgsSrvFtCaliLoad_Request, Ros2Xarm_msgsSrvFtCaliLoad_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec(),
              new Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtCaliLoad_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtCaliLoad incoming request/response owner. */
export class Ros2Xarm_msgsSrvFtCaliLoadServer extends BoundedServiceServer<Ros2Xarm_msgsSrvFtCaliLoad_Request, Ros2Xarm_msgsSrvFtCaliLoad_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec(),
              new Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtCaliLoad_Response): bool => value.validValue(),
              149,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForceConfig typed call and real-submit client. */
export class Ros2Xarm_msgsSrvFtForceConfigClient extends BoundedServiceClient<Ros2Xarm_msgsSrvFtForceConfig_Request, Ros2Xarm_msgsSrvFtForceConfig_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvFtForceConfig_RequestCodec(),
              new Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtForceConfig_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForceConfig incoming request/response owner. */
export class Ros2Xarm_msgsSrvFtForceConfigServer extends BoundedServiceServer<Ros2Xarm_msgsSrvFtForceConfig_Request, Ros2Xarm_msgsSrvFtForceConfig_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvFtForceConfig_RequestCodec(),
              new Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtForceConfig_Response): bool => value.validValue(),
              334,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForcePid typed call and real-submit client. */
export class Ros2Xarm_msgsSrvFtForcePidClient extends BoundedServiceClient<Ros2Xarm_msgsSrvFtForcePid_Request, Ros2Xarm_msgsSrvFtForcePid_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvFtForcePid_RequestCodec(),
              new Ros2Xarm_msgsSrvFtForcePid_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtForcePid_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForcePid incoming request/response owner. */
export class Ros2Xarm_msgsSrvFtForcePidServer extends BoundedServiceServer<Ros2Xarm_msgsSrvFtForcePid_Request, Ros2Xarm_msgsSrvFtForcePid_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvFtForcePid_RequestCodec(),
              new Ros2Xarm_msgsSrvFtForcePid_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtForcePid_Response): bool => value.validValue(),
              528,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtImpedance typed call and real-submit client. */
export class Ros2Xarm_msgsSrvFtImpedanceClient extends BoundedServiceClient<Ros2Xarm_msgsSrvFtImpedance_Request, Ros2Xarm_msgsSrvFtImpedance_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvFtImpedance_RequestCodec(),
              new Ros2Xarm_msgsSrvFtImpedance_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtImpedance_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtImpedance incoming request/response owner. */
export class Ros2Xarm_msgsSrvFtImpedanceServer extends BoundedServiceServer<Ros2Xarm_msgsSrvFtImpedance_Request, Ros2Xarm_msgsSrvFtImpedance_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvFtImpedance_RequestCodec(),
              new Ros2Xarm_msgsSrvFtImpedance_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvFtImpedance_Response): bool => value.validValue(),
              466,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetAnalogIO typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetAnalogIOClient extends BoundedServiceClient<Ros2Xarm_msgsSrvGetAnalogIO_Request, Ros2Xarm_msgsSrvGetAnalogIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec(),
              new Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetAnalogIO_Request): bool => value.validValue(),
              266,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetAnalogIO incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetAnalogIOServer extends BoundedServiceServer<Ros2Xarm_msgsSrvGetAnalogIO_Request, Ros2Xarm_msgsSrvGetAnalogIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec(),
              new Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetAnalogIO_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetDigitalIO typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetDigitalIOClient extends BoundedServiceClient<Ros2Xarm_msgsSrvGetDigitalIO_Request, Ros2Xarm_msgsSrvGetDigitalIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec(),
              new Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetDigitalIO_Request): bool => value.validValue(),
              330,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetDigitalIO incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetDigitalIOServer extends BoundedServiceServer<Ros2Xarm_msgsSrvGetDigitalIO_Request, Ros2Xarm_msgsSrvGetDigitalIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec(),
              new Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetDigitalIO_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32 typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetFloat32Client extends BoundedServiceClient<Ros2Xarm_msgsSrvGetFloat32_Request, Ros2Xarm_msgsSrvGetFloat32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetFloat32_RequestCodec(),
              new Ros2Xarm_msgsSrvGetFloat32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetFloat32_Request): bool => value.validValue(),
              266,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32 incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetFloat32Server extends BoundedServiceServer<Ros2Xarm_msgsSrvGetFloat32_Request, Ros2Xarm_msgsSrvGetFloat32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetFloat32_RequestCodec(),
              new Ros2Xarm_msgsSrvGetFloat32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetFloat32_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32List typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetFloat32ListClient extends BoundedServiceClient<Ros2Xarm_msgsSrvGetFloat32List_Request, Ros2Xarm_msgsSrvGetFloat32List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetFloat32List_RequestCodec(),
              new Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetFloat32List_Request): bool => value.validValue(),
              394,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32List incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetFloat32ListServer extends BoundedServiceServer<Ros2Xarm_msgsSrvGetFloat32List_Request, Ros2Xarm_msgsSrvGetFloat32List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetFloat32List_RequestCodec(),
              new Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetFloat32List_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16 typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetInt16Client extends BoundedServiceClient<Ros2Xarm_msgsSrvGetInt16_Request, Ros2Xarm_msgsSrvGetInt16_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetInt16_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt16_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt16_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16 incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetInt16Server extends BoundedServiceServer<Ros2Xarm_msgsSrvGetInt16_Request, Ros2Xarm_msgsSrvGetInt16_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetInt16_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt16_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt16_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16List typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetInt16ListClient extends BoundedServiceClient<Ros2Xarm_msgsSrvGetInt16List_Request, Ros2Xarm_msgsSrvGetInt16List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetInt16List_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt16List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt16List_Request): bool => value.validValue(),
              330,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16List incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetInt16ListServer extends BoundedServiceServer<Ros2Xarm_msgsSrvGetInt16List_Request, Ros2Xarm_msgsSrvGetInt16List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetInt16List_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt16List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt16List_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32 typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetInt32Client extends BoundedServiceClient<Ros2Xarm_msgsSrvGetInt32_Request, Ros2Xarm_msgsSrvGetInt32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetInt32_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt32_Request): bool => value.validValue(),
              266,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32 incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetInt32Server extends BoundedServiceServer<Ros2Xarm_msgsSrvGetInt32_Request, Ros2Xarm_msgsSrvGetInt32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetInt32_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt32_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32ByType typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetInt32ByTypeClient extends BoundedServiceClient<Ros2Xarm_msgsSrvGetInt32ByType_Request, Ros2Xarm_msgsSrvGetInt32ByType_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt32ByType_Request): bool => value.validValue(),
              266,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32ByType incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetInt32ByTypeServer extends BoundedServiceServer<Ros2Xarm_msgsSrvGetInt32ByType_Request, Ros2Xarm_msgsSrvGetInt32ByType_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec(),
              new Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetInt32ByType_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetSetModbusData typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGetSetModbusDataClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvGetSetModbusData_Request, Ros2Xarm_msgsSrvGetSetModbusData_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec(),
              new Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetSetModbusData_Request): bool => value.validValue(),
              4362,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetSetModbusData incoming request/response owner. */
export class Ros2Xarm_msgsSrvGetSetModbusDataServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvGetSetModbusData_Request, Ros2Xarm_msgsSrvGetSetModbusData_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec(),
              new Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGetSetModbusData_Response): bool => value.validValue(),
              4107,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GripperMove typed call and real-submit client. */
export class Ros2Xarm_msgsSrvGripperMoveClient extends BoundedServiceClient<Ros2Xarm_msgsSrvGripperMove_Request, Ros2Xarm_msgsSrvGripperMove_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvGripperMove_RequestCodec(),
              new Ros2Xarm_msgsSrvGripperMove_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGripperMove_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GripperMove incoming request/response owner. */
export class Ros2Xarm_msgsSrvGripperMoveServer extends BoundedServiceServer<Ros2Xarm_msgsSrvGripperMove_Request, Ros2Xarm_msgsSrvGripperMove_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvGripperMove_RequestCodec(),
              new Ros2Xarm_msgsSrvGripperMove_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvGripperMove_Response): bool => value.validValue(),
              9,
              capacity);
    }
}

/** Complete xarm_msgs/srv/IdenLoad typed call and real-submit client. */
export class Ros2Xarm_msgsSrvIdenLoadClient extends BoundedServiceClient<Ros2Xarm_msgsSrvIdenLoad_Request, Ros2Xarm_msgsSrvIdenLoad_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvIdenLoad_RequestCodec(),
              new Ros2Xarm_msgsSrvIdenLoad_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvIdenLoad_Request): bool => value.validValue(),
              394,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/IdenLoad incoming request/response owner. */
export class Ros2Xarm_msgsSrvIdenLoadServer extends BoundedServiceServer<Ros2Xarm_msgsSrvIdenLoad_Request, Ros2Xarm_msgsSrvIdenLoad_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvIdenLoad_RequestCodec(),
              new Ros2Xarm_msgsSrvIdenLoad_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvIdenLoad_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackBackOrigin typed call and real-submit client. */
export class Ros2Xarm_msgsSrvLinearTrackBackOriginClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request, Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec(),
              new Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackBackOrigin incoming request/response owner. */
export class Ros2Xarm_msgsSrvLinearTrackBackOriginServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request, Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec(),
              new Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackSetPos typed call and real-submit client. */
export class Ros2Xarm_msgsSrvLinearTrackSetPosClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvLinearTrackSetPos_Request, Ros2Xarm_msgsSrvLinearTrackSetPos_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec(),
              new Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvLinearTrackSetPos_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackSetPos incoming request/response owner. */
export class Ros2Xarm_msgsSrvLinearTrackSetPosServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvLinearTrackSetPos_Request, Ros2Xarm_msgsSrvLinearTrackSetPos_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec(),
              new Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvLinearTrackSetPos_Response): bool => value.validValue(),
              10,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCartesian typed call and real-submit client. */
export class Ros2Xarm_msgsSrvMoveCartesianClient extends BoundedServiceClient<Ros2Xarm_msgsSrvMoveCartesian_Request, Ros2Xarm_msgsSrvMoveCartesian_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvMoveCartesian_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveCartesian_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCartesian incoming request/response owner. */
export class Ros2Xarm_msgsSrvMoveCartesianServer extends BoundedServiceServer<Ros2Xarm_msgsSrvMoveCartesian_Request, Ros2Xarm_msgsSrvMoveCartesian_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvMoveCartesian_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveCartesian_Response): bool => value.validValue(),
              155,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCircle typed call and real-submit client. */
export class Ros2Xarm_msgsSrvMoveCircleClient extends BoundedServiceClient<Ros2Xarm_msgsSrvMoveCircle_Request, Ros2Xarm_msgsSrvMoveCircle_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvMoveCircle_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveCircle_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveCircle_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCircle incoming request/response owner. */
export class Ros2Xarm_msgsSrvMoveCircleServer extends BoundedServiceServer<Ros2Xarm_msgsSrvMoveCircle_Request, Ros2Xarm_msgsSrvMoveCircle_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvMoveCircle_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveCircle_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveCircle_Response): bool => value.validValue(),
              285,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveHome typed call and real-submit client. */
export class Ros2Xarm_msgsSrvMoveHomeClient extends BoundedServiceClient<Ros2Xarm_msgsSrvMoveHome_Request, Ros2Xarm_msgsSrvMoveHome_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvMoveHome_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveHome_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveHome_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveHome incoming request/response owner. */
export class Ros2Xarm_msgsSrvMoveHomeServer extends BoundedServiceServer<Ros2Xarm_msgsSrvMoveHome_Request, Ros2Xarm_msgsSrvMoveHome_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvMoveHome_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveHome_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveHome_Response): bool => value.validValue(),
              17,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveJoint typed call and real-submit client. */
export class Ros2Xarm_msgsSrvMoveJointClient extends BoundedServiceClient<Ros2Xarm_msgsSrvMoveJoint_Request, Ros2Xarm_msgsSrvMoveJoint_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvMoveJoint_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveJoint_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveJoint_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveJoint incoming request/response owner. */
export class Ros2Xarm_msgsSrvMoveJointServer extends BoundedServiceServer<Ros2Xarm_msgsSrvMoveJoint_Request, Ros2Xarm_msgsSrvMoveJoint_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvMoveJoint_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveJoint_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveJoint_Response): bool => value.validValue(),
              153,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveVelocity typed call and real-submit client. */
export class Ros2Xarm_msgsSrvMoveVelocityClient extends BoundedServiceClient<Ros2Xarm_msgsSrvMoveVelocity_Request, Ros2Xarm_msgsSrvMoveVelocity_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvMoveVelocity_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveVelocity_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveVelocity incoming request/response owner. */
export class Ros2Xarm_msgsSrvMoveVelocityServer extends BoundedServiceServer<Ros2Xarm_msgsSrvMoveVelocity_Request, Ros2Xarm_msgsSrvMoveVelocity_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvMoveVelocity_RequestCodec(),
              new Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvMoveVelocity_Response): bool => value.validValue(),
              138,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanExec typed call and real-submit client. */
export class Ros2Xarm_msgsSrvPlanExecClient extends BoundedServiceClient<Ros2Xarm_msgsSrvPlanExec_Request, Ros2Xarm_msgsSrvPlanExec_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvPlanExec_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanExec_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanExec_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanExec incoming request/response owner. */
export class Ros2Xarm_msgsSrvPlanExecServer extends BoundedServiceServer<Ros2Xarm_msgsSrvPlanExec_Request, Ros2Xarm_msgsSrvPlanExec_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvPlanExec_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanExec_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanExec_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanJoint typed call and real-submit client. */
export class Ros2Xarm_msgsSrvPlanJointClient extends BoundedServiceClient<Ros2Xarm_msgsSrvPlanJoint_Request, Ros2Xarm_msgsSrvPlanJoint_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvPlanJoint_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanJoint_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanJoint_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanJoint incoming request/response owner. */
export class Ros2Xarm_msgsSrvPlanJointServer extends BoundedServiceServer<Ros2Xarm_msgsSrvPlanJoint_Request, Ros2Xarm_msgsSrvPlanJoint_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvPlanJoint_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanJoint_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanJoint_Response): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanPose typed call and real-submit client. */
export class Ros2Xarm_msgsSrvPlanPoseClient extends BoundedServiceClient<Ros2Xarm_msgsSrvPlanPose_Request, Ros2Xarm_msgsSrvPlanPose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvPlanPose_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanPose_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanPose_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanPose incoming request/response owner. */
export class Ros2Xarm_msgsSrvPlanPoseServer extends BoundedServiceServer<Ros2Xarm_msgsSrvPlanPose_Request, Ros2Xarm_msgsSrvPlanPose_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvPlanPose_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanPose_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanPose_Response): bool => value.validValue(),
              56,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanSingleStraight typed call and real-submit client. */
export class Ros2Xarm_msgsSrvPlanSingleStraightClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvPlanSingleStraight_Request, Ros2Xarm_msgsSrvPlanSingleStraight_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanSingleStraight_Request): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanSingleStraight incoming request/response owner. */
export class Ros2Xarm_msgsSrvPlanSingleStraightServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvPlanSingleStraight_Request, Ros2Xarm_msgsSrvPlanSingleStraight_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec(),
              new Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvPlanSingleStraight_Response): bool => value.validValue(),
              56,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqActivate typed call and real-submit client. */
export class Ros2Xarm_msgsSrvRobotiqActivateClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvRobotiqActivate_Request, Ros2Xarm_msgsSrvRobotiqActivate_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqActivate_Request): bool => value.validValue(),
              4362,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqActivate incoming request/response owner. */
export class Ros2Xarm_msgsSrvRobotiqActivateServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvRobotiqActivate_Request, Ros2Xarm_msgsSrvRobotiqActivate_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqActivate_Response): bool => value.validValue(),
              5,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqGetStatus typed call and real-submit client. */
export class Ros2Xarm_msgsSrvRobotiqGetStatusClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvRobotiqGetStatus_Request, Ros2Xarm_msgsSrvRobotiqGetStatus_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqGetStatus_Request): bool => value.validValue(),
              4362,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqGetStatus incoming request/response owner. */
export class Ros2Xarm_msgsSrvRobotiqGetStatusServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvRobotiqGetStatus_Request, Ros2Xarm_msgsSrvRobotiqGetStatus_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqGetStatus_Response): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqMove typed call and real-submit client. */
export class Ros2Xarm_msgsSrvRobotiqMoveClient extends BoundedServiceClient<Ros2Xarm_msgsSrvRobotiqMove_Request, Ros2Xarm_msgsSrvRobotiqMove_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvRobotiqMove_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqMove_Request): bool => value.validValue(),
              4362,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqMove incoming request/response owner. */
export class Ros2Xarm_msgsSrvRobotiqMoveServer extends BoundedServiceServer<Ros2Xarm_msgsSrvRobotiqMove_Request, Ros2Xarm_msgsSrvRobotiqMove_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvRobotiqMove_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqMove_Response): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqReset typed call and real-submit client. */
export class Ros2Xarm_msgsSrvRobotiqResetClient extends BoundedServiceClient<Ros2Xarm_msgsSrvRobotiqReset_Request, Ros2Xarm_msgsSrvRobotiqReset_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvRobotiqReset_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqReset_Request): bool => value.validValue(),
              4362,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqReset incoming request/response owner. */
export class Ros2Xarm_msgsSrvRobotiqResetServer extends BoundedServiceServer<Ros2Xarm_msgsSrvRobotiqReset_Request, Ros2Xarm_msgsSrvRobotiqReset_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvRobotiqReset_RequestCodec(),
              new Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvRobotiqReset_Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetAnalogIO typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetAnalogIOClient extends BoundedServiceClient<Ros2Xarm_msgsSrvSetAnalogIO_Request, Ros2Xarm_msgsSrvSetAnalogIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec(),
              new Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetAnalogIO_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetAnalogIO incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetAnalogIOServer extends BoundedServiceServer<Ros2Xarm_msgsSrvSetAnalogIO_Request, Ros2Xarm_msgsSrvSetAnalogIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec(),
              new Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetAnalogIO_Response): bool => value.validValue(),
              142,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetDigitalIO typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetDigitalIOClient extends BoundedServiceClient<Ros2Xarm_msgsSrvSetDigitalIO_Request, Ros2Xarm_msgsSrvSetDigitalIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec(),
              new Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetDigitalIO_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetDigitalIO incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetDigitalIOServer extends BoundedServiceServer<Ros2Xarm_msgsSrvSetDigitalIO_Request, Ros2Xarm_msgsSrvSetDigitalIO_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec(),
              new Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetDigitalIO_Response): bool => value.validValue(),
              144,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32 typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetFloat32Client extends BoundedServiceClient<Ros2Xarm_msgsSrvSetFloat32_Request, Ros2Xarm_msgsSrvSetFloat32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetFloat32_RequestCodec(),
              new Ros2Xarm_msgsSrvSetFloat32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetFloat32_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32 incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetFloat32Server extends BoundedServiceServer<Ros2Xarm_msgsSrvSetFloat32_Request, Ros2Xarm_msgsSrvSetFloat32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetFloat32_RequestCodec(),
              new Ros2Xarm_msgsSrvSetFloat32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetFloat32_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32List typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetFloat32ListClient extends BoundedServiceClient<Ros2Xarm_msgsSrvSetFloat32List_Request, Ros2Xarm_msgsSrvSetFloat32List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetFloat32List_RequestCodec(),
              new Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetFloat32List_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32List incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetFloat32ListServer extends BoundedServiceServer<Ros2Xarm_msgsSrvSetFloat32List_Request, Ros2Xarm_msgsSrvSetFloat32List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetFloat32List_RequestCodec(),
              new Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetFloat32List_Response): bool => value.validValue(),
              132,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16 typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetInt16Client extends BoundedServiceClient<Ros2Xarm_msgsSrvSetInt16_Request, Ros2Xarm_msgsSrvSetInt16_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetInt16_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt16_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt16_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16 incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetInt16Server extends BoundedServiceServer<Ros2Xarm_msgsSrvSetInt16_Request, Ros2Xarm_msgsSrvSetInt16_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetInt16_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt16_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt16_Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16ById typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetInt16ByIdClient extends BoundedServiceClient<Ros2Xarm_msgsSrvSetInt16ById_Request, Ros2Xarm_msgsSrvSetInt16ById_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetInt16ById_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt16ById_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16ById incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetInt16ByIdServer extends BoundedServiceServer<Ros2Xarm_msgsSrvSetInt16ById_Request, Ros2Xarm_msgsSrvSetInt16ById_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetInt16ById_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt16ById_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16List typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetInt16ListClient extends BoundedServiceClient<Ros2Xarm_msgsSrvSetInt16List_Request, Ros2Xarm_msgsSrvSetInt16List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetInt16List_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt16List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt16List_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16List incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetInt16ListServer extends BoundedServiceServer<Ros2Xarm_msgsSrvSetInt16List_Request, Ros2Xarm_msgsSrvSetInt16List_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetInt16List_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt16List_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt16List_Response): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32 typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetInt32Client extends BoundedServiceClient<Ros2Xarm_msgsSrvSetInt32_Request, Ros2Xarm_msgsSrvSetInt32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetInt32_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt32_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32 incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetInt32Server extends BoundedServiceServer<Ros2Xarm_msgsSrvSetInt32_Request, Ros2Xarm_msgsSrvSetInt32_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetInt32_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt32_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt32_Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32ByType typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetInt32ByTypeClient extends BoundedServiceClient<Ros2Xarm_msgsSrvSetInt32ByType_Request, Ros2Xarm_msgsSrvSetInt32ByType_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt32ByType_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32ByType incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetInt32ByTypeServer extends BoundedServiceServer<Ros2Xarm_msgsSrvSetInt32ByType_Request, Ros2Xarm_msgsSrvSetInt32ByType_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec(),
              new Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetInt32ByType_Response): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetModbusTimeout typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetModbusTimeoutClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvSetModbusTimeout_Request, Ros2Xarm_msgsSrvSetModbusTimeout_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec(),
              new Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetModbusTimeout_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetModbusTimeout incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetModbusTimeoutServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvSetModbusTimeout_Request, Ros2Xarm_msgsSrvSetModbusTimeout_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec(),
              new Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetModbusTimeout_Response): bool => value.validValue(),
              5,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetTcpLoad typed call and real-submit client. */
export class Ros2Xarm_msgsSrvSetTcpLoadClient extends BoundedServiceClient<Ros2Xarm_msgsSrvSetTcpLoad_Request, Ros2Xarm_msgsSrvSetTcpLoad_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec(),
              new Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetTcpLoad_Request): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetTcpLoad incoming request/response owner. */
export class Ros2Xarm_msgsSrvSetTcpLoadServer extends BoundedServiceServer<Ros2Xarm_msgsSrvSetTcpLoad_Request, Ros2Xarm_msgsSrvSetTcpLoad_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec(),
              new Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvSetTcpLoad_Response): bool => value.validValue(),
              136,
              capacity);
    }
}

/** Complete xarm_msgs/srv/TrajCtrl typed call and real-submit client. */
export class Ros2Xarm_msgsSrvTrajCtrlClient extends BoundedServiceClient<Ros2Xarm_msgsSrvTrajCtrl_Request, Ros2Xarm_msgsSrvTrajCtrl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvTrajCtrl_RequestCodec(),
              new Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvTrajCtrl_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/TrajCtrl incoming request/response owner. */
export class Ros2Xarm_msgsSrvTrajCtrlServer extends BoundedServiceServer<Ros2Xarm_msgsSrvTrajCtrl_Request, Ros2Xarm_msgsSrvTrajCtrl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvTrajCtrl_RequestCodec(),
              new Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvTrajCtrl_Response): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete xarm_msgs/srv/TrajPlay typed call and real-submit client. */
export class Ros2Xarm_msgsSrvTrajPlayClient extends BoundedServiceClient<Ros2Xarm_msgsSrvTrajPlay_Request, Ros2Xarm_msgsSrvTrajPlay_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvTrajPlay_RequestCodec(),
              new Ros2Xarm_msgsSrvTrajPlay_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvTrajPlay_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/TrajPlay incoming request/response owner. */
export class Ros2Xarm_msgsSrvTrajPlayServer extends BoundedServiceServer<Ros2Xarm_msgsSrvTrajPlay_Request, Ros2Xarm_msgsSrvTrajPlay_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvTrajPlay_RequestCodec(),
              new Ros2Xarm_msgsSrvTrajPlay_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvTrajPlay_Response): bool => value.validValue(),
              265,
              capacity);
    }
}

/** Complete xarm_msgs/srv/VacuumGripperCtrl typed call and real-submit client. */
export class Ros2Xarm_msgsSrvVacuumGripperCtrlClient extends
    BoundedServiceClient<Ros2Xarm_msgsSrvVacuumGripperCtrl_Request, Ros2Xarm_msgsSrvVacuumGripperCtrl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
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
              new Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec(),
              new Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvVacuumGripperCtrl_Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/VacuumGripperCtrl incoming request/response owner. */
export class Ros2Xarm_msgsSrvVacuumGripperCtrlServer extends
    BoundedServiceServer<Ros2Xarm_msgsSrvVacuumGripperCtrl_Request, Ros2Xarm_msgsSrvVacuumGripperCtrl_Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
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
              new Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec(),
              new Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec(),
              (value: Ros2Xarm_msgsSrvVacuumGripperCtrl_Response): bool => value.validValue(),
              10,
              capacity);
    }
}
