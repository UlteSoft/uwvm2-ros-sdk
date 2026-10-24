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
    Ros1Xarm_gripperMoveFeedback,
    Ros1Xarm_gripperMoveFeedbackCodec,
    Ros1Xarm_gripperMoveGoal,
    Ros1Xarm_gripperMoveGoalCodec,
    Ros1Xarm_gripperMoveResult,
    Ros1Xarm_gripperMoveResultCodec,
    Ros1Xarm_msgsCallRequest,
    Ros1Xarm_msgsCallRequestCodec,
    Ros1Xarm_msgsCallResponse,
    Ros1Xarm_msgsCallResponseCodec,
    Ros1Xarm_msgsClearErrRequest,
    Ros1Xarm_msgsClearErrRequestCodec,
    Ros1Xarm_msgsClearErrResponse,
    Ros1Xarm_msgsClearErrResponseCodec,
    Ros1Xarm_msgsConfigToolModbusRequest,
    Ros1Xarm_msgsConfigToolModbusRequestCodec,
    Ros1Xarm_msgsConfigToolModbusResponse,
    Ros1Xarm_msgsConfigToolModbusResponseCodec,
    Ros1Xarm_msgsFtCaliLoadRequest,
    Ros1Xarm_msgsFtCaliLoadRequestCodec,
    Ros1Xarm_msgsFtCaliLoadResponse,
    Ros1Xarm_msgsFtCaliLoadResponseCodec,
    Ros1Xarm_msgsFtIdenLoadRequest,
    Ros1Xarm_msgsFtIdenLoadRequestCodec,
    Ros1Xarm_msgsFtIdenLoadResponse,
    Ros1Xarm_msgsFtIdenLoadResponseCodec,
    Ros1Xarm_msgsGetAnalogIORequest,
    Ros1Xarm_msgsGetAnalogIORequestCodec,
    Ros1Xarm_msgsGetAnalogIOResponse,
    Ros1Xarm_msgsGetAnalogIOResponseCodec,
    Ros1Xarm_msgsGetControllerDigitalIORequest,
    Ros1Xarm_msgsGetControllerDigitalIORequestCodec,
    Ros1Xarm_msgsGetControllerDigitalIOResponse,
    Ros1Xarm_msgsGetControllerDigitalIOResponseCodec,
    Ros1Xarm_msgsGetDigitalIORequest,
    Ros1Xarm_msgsGetDigitalIORequestCodec,
    Ros1Xarm_msgsGetDigitalIOResponse,
    Ros1Xarm_msgsGetDigitalIOResponseCodec,
    Ros1Xarm_msgsGetErrRequest,
    Ros1Xarm_msgsGetErrRequestCodec,
    Ros1Xarm_msgsGetErrResponse,
    Ros1Xarm_msgsGetErrResponseCodec,
    Ros1Xarm_msgsGetFloat32ListRequest,
    Ros1Xarm_msgsGetFloat32ListRequestCodec,
    Ros1Xarm_msgsGetFloat32ListResponse,
    Ros1Xarm_msgsGetFloat32ListResponseCodec,
    Ros1Xarm_msgsGetInt32Request,
    Ros1Xarm_msgsGetInt32RequestCodec,
    Ros1Xarm_msgsGetInt32Response,
    Ros1Xarm_msgsGetInt32ResponseCodec,
    Ros1Xarm_msgsGetSetModbusDataRequest,
    Ros1Xarm_msgsGetSetModbusDataRequestCodec,
    Ros1Xarm_msgsGetSetModbusDataResponse,
    Ros1Xarm_msgsGetSetModbusDataResponseCodec,
    Ros1Xarm_msgsGripperConfigRequest,
    Ros1Xarm_msgsGripperConfigRequestCodec,
    Ros1Xarm_msgsGripperConfigResponse,
    Ros1Xarm_msgsGripperConfigResponseCodec,
    Ros1Xarm_msgsGripperMoveRequest,
    Ros1Xarm_msgsGripperMoveRequestCodec,
    Ros1Xarm_msgsGripperMoveResponse,
    Ros1Xarm_msgsGripperMoveResponseCodec,
    Ros1Xarm_msgsGripperStateRequest,
    Ros1Xarm_msgsGripperStateRequestCodec,
    Ros1Xarm_msgsGripperStateResponse,
    Ros1Xarm_msgsGripperStateResponseCodec,
    Ros1Xarm_msgsMoveAxisAngleRequest,
    Ros1Xarm_msgsMoveAxisAngleRequestCodec,
    Ros1Xarm_msgsMoveAxisAngleResponse,
    Ros1Xarm_msgsMoveAxisAngleResponseCodec,
    Ros1Xarm_msgsMoveRequest,
    Ros1Xarm_msgsMoveRequestCodec,
    Ros1Xarm_msgsMoveResponse,
    Ros1Xarm_msgsMoveResponseCodec,
    Ros1Xarm_msgsMoveVelocityRequest,
    Ros1Xarm_msgsMoveVelocityRequestCodec,
    Ros1Xarm_msgsMoveVelocityResponse,
    Ros1Xarm_msgsMoveVelocityResponseCodec,
    Ros1Xarm_msgsMoveVeloRequest,
    Ros1Xarm_msgsMoveVeloRequestCodec,
    Ros1Xarm_msgsMoveVeloResponse,
    Ros1Xarm_msgsMoveVeloResponseCodec,
    Ros1Xarm_msgsPlayTrajRequest,
    Ros1Xarm_msgsPlayTrajRequestCodec,
    Ros1Xarm_msgsPlayTrajResponse,
    Ros1Xarm_msgsPlayTrajResponseCodec,
    Ros1Xarm_msgsSetAxisRequest,
    Ros1Xarm_msgsSetAxisRequestCodec,
    Ros1Xarm_msgsSetAxisResponse,
    Ros1Xarm_msgsSetAxisResponseCodec,
    Ros1Xarm_msgsSetControllerAnalogIORequest,
    Ros1Xarm_msgsSetControllerAnalogIORequestCodec,
    Ros1Xarm_msgsSetControllerAnalogIOResponse,
    Ros1Xarm_msgsSetControllerAnalogIOResponseCodec,
    Ros1Xarm_msgsSetDigitalIORequest,
    Ros1Xarm_msgsSetDigitalIORequestCodec,
    Ros1Xarm_msgsSetDigitalIOResponse,
    Ros1Xarm_msgsSetDigitalIOResponseCodec,
    Ros1Xarm_msgsSetFloat32Request,
    Ros1Xarm_msgsSetFloat32RequestCodec,
    Ros1Xarm_msgsSetFloat32Response,
    Ros1Xarm_msgsSetFloat32ResponseCodec,
    Ros1Xarm_msgsSetInt16Request,
    Ros1Xarm_msgsSetInt16RequestCodec,
    Ros1Xarm_msgsSetInt16Response,
    Ros1Xarm_msgsSetInt16ResponseCodec,
    Ros1Xarm_msgsSetLoadRequest,
    Ros1Xarm_msgsSetLoadRequestCodec,
    Ros1Xarm_msgsSetLoadResponse,
    Ros1Xarm_msgsSetLoadResponseCodec,
    Ros1Xarm_msgsSetModbusTimeoutRequest,
    Ros1Xarm_msgsSetModbusTimeoutRequestCodec,
    Ros1Xarm_msgsSetModbusTimeoutResponse,
    Ros1Xarm_msgsSetModbusTimeoutResponseCodec,
    Ros1Xarm_msgsSetMultipleIntsRequest,
    Ros1Xarm_msgsSetMultipleIntsRequestCodec,
    Ros1Xarm_msgsSetMultipleIntsResponse,
    Ros1Xarm_msgsSetMultipleIntsResponseCodec,
    Ros1Xarm_msgsSetStringRequest,
    Ros1Xarm_msgsSetStringRequestCodec,
    Ros1Xarm_msgsSetStringResponse,
    Ros1Xarm_msgsSetStringResponseCodec,
    Ros1Xarm_msgsSetToolModbusRequest,
    Ros1Xarm_msgsSetToolModbusRequestCodec,
    Ros1Xarm_msgsSetToolModbusResponse,
    Ros1Xarm_msgsSetToolModbusResponseCodec,
    Ros1Xarm_msgsTCPOffsetRequest,
    Ros1Xarm_msgsTCPOffsetRequestCodec,
    Ros1Xarm_msgsTCPOffsetResponse,
    Ros1Xarm_msgsTCPOffsetResponseCodec,
    Ros1Xarm_msgsVacuumGripperCtrlRequest,
    Ros1Xarm_msgsVacuumGripperCtrlRequestCodec,
    Ros1Xarm_msgsVacuumGripperCtrlResponse,
    Ros1Xarm_msgsVacuumGripperCtrlResponseCodec,
    Ros1Xarm_plannerExec_planRequest,
    Ros1Xarm_plannerExec_planRequestCodec,
    Ros1Xarm_plannerExec_planResponse,
    Ros1Xarm_plannerExec_planResponseCodec,
    Ros1Xarm_plannerJoint_planRequest,
    Ros1Xarm_plannerJoint_planRequestCodec,
    Ros1Xarm_plannerJoint_planResponse,
    Ros1Xarm_plannerJoint_planResponseCodec,
    Ros1Xarm_plannerPose_planRequest,
    Ros1Xarm_plannerPose_planRequestCodec,
    Ros1Xarm_plannerPose_planResponse,
    Ros1Xarm_plannerPose_planResponseCodec,
    Ros1Xarm_plannerSingle_straight_planRequest,
    Ros1Xarm_plannerSingle_straight_planRequestCodec,
    Ros1Xarm_plannerSingle_straight_planResponse,
    Ros1Xarm_plannerSingle_straight_planResponseCodec
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

/** Complete custom xarm_gripper/Move client. Role aliases never imply grants. */
export class Ros1Xarm_gripperMoveClient extends BoundedActionClient<Ros1Xarm_gripperMoveGoal, Ros1Xarm_gripperMoveResult, Ros1Xarm_gripperMoveFeedback>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param send Complete original component or local protocol value, with its documented owner and bounds.
     * @param cancelOwn Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param feedback Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param result Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param cancelAny Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Xarm_gripperMoveGoalCodec(),
              new Ros1Xarm_gripperMoveResultCodec(),
              new Ros1Xarm_gripperMoveFeedbackCodec(),
              (value: Ros1Xarm_gripperMoveGoal): bool => value.validValue(),
              3,
              4,
              cancelAny,
              capacity);
    }
}

/** Complete custom xarm_gripper/Move server with matching-ID response codecs. */
export class Ros1Xarm_gripperMoveServer extends BoundedActionServer<Ros1Xarm_gripperMoveGoal, Ros1Xarm_gripperMoveResult, Ros1Xarm_gripperMoveFeedback>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_gripperMoveGoalCodec(),
              new Ros1Xarm_gripperMoveResultCodec(),
              new Ros1Xarm_gripperMoveFeedbackCodec(),
              (value: Ros1Xarm_gripperMoveResult): bool => value.validValue(),
              (value: Ros1Xarm_gripperMoveFeedback): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete xarm_msgs/Call typed call and real-submit client. */
export class Ros1Xarm_msgsCallClient extends BoundedServiceClient<Ros1Xarm_msgsCallRequest, Ros1Xarm_msgsCallResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsCallRequestCodec(),
              new Ros1Xarm_msgsCallResponseCodec(),
              (value: Ros1Xarm_msgsCallRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/Call incoming request/response owner. */
export class Ros1Xarm_msgsCallServer extends BoundedServiceServer<Ros1Xarm_msgsCallRequest, Ros1Xarm_msgsCallResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsCallRequestCodec(),
              new Ros1Xarm_msgsCallResponseCodec(),
              (value: Ros1Xarm_msgsCallResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/ClearErr typed call and real-submit client. */
export class Ros1Xarm_msgsClearErrClient extends BoundedServiceClient<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsClearErrRequestCodec(),
              new Ros1Xarm_msgsClearErrResponseCodec(),
              (value: Ros1Xarm_msgsClearErrRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/ClearErr incoming request/response owner. */
export class Ros1Xarm_msgsClearErrServer extends BoundedServiceServer<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsClearErrRequestCodec(),
              new Ros1Xarm_msgsClearErrResponseCodec(),
              (value: Ros1Xarm_msgsClearErrResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/ConfigToolModbus typed call and real-submit client. */
export class Ros1Xarm_msgsConfigToolModbusClient extends BoundedServiceClient<Ros1Xarm_msgsConfigToolModbusRequest, Ros1Xarm_msgsConfigToolModbusResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsConfigToolModbusRequestCodec(),
              new Ros1Xarm_msgsConfigToolModbusResponseCodec(),
              (value: Ros1Xarm_msgsConfigToolModbusRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/ConfigToolModbus incoming request/response owner. */
export class Ros1Xarm_msgsConfigToolModbusServer extends BoundedServiceServer<Ros1Xarm_msgsConfigToolModbusRequest, Ros1Xarm_msgsConfigToolModbusResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsConfigToolModbusRequestCodec(),
              new Ros1Xarm_msgsConfigToolModbusResponseCodec(),
              (value: Ros1Xarm_msgsConfigToolModbusResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** Complete xarm_msgs/FtCaliLoad typed call and real-submit client. */
export class Ros1Xarm_msgsFtCaliLoadClient extends BoundedServiceClient<Ros1Xarm_msgsFtCaliLoadRequest, Ros1Xarm_msgsFtCaliLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsFtCaliLoadRequestCodec(),
              new Ros1Xarm_msgsFtCaliLoadResponseCodec(),
              (value: Ros1Xarm_msgsFtCaliLoadRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/FtCaliLoad incoming request/response owner. */
export class Ros1Xarm_msgsFtCaliLoadServer extends BoundedServiceServer<Ros1Xarm_msgsFtCaliLoadRequest, Ros1Xarm_msgsFtCaliLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsFtCaliLoadRequestCodec(),
              new Ros1Xarm_msgsFtCaliLoadResponseCodec(),
              (value: Ros1Xarm_msgsFtCaliLoadResponse): bool => value.validValue(),
              133,
              capacity);
    }
}

/** Complete xarm_msgs/FtIdenLoad typed call and real-submit client. */
export class Ros1Xarm_msgsFtIdenLoadClient extends BoundedServiceClient<Ros1Xarm_msgsFtIdenLoadRequest, Ros1Xarm_msgsFtIdenLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsFtIdenLoadRequestCodec(),
              new Ros1Xarm_msgsFtIdenLoadResponseCodec(),
              (value: Ros1Xarm_msgsFtIdenLoadRequest): bool => value.validValue(),
              394,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/FtIdenLoad incoming request/response owner. */
export class Ros1Xarm_msgsFtIdenLoadServer extends BoundedServiceServer<Ros1Xarm_msgsFtIdenLoadRequest, Ros1Xarm_msgsFtIdenLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsFtIdenLoadRequestCodec(),
              new Ros1Xarm_msgsFtIdenLoadResponseCodec(),
              (value: Ros1Xarm_msgsFtIdenLoadResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/GetAnalogIO typed call and real-submit client. */
export class Ros1Xarm_msgsGetAnalogIOClient extends BoundedServiceClient<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetAnalogIORequestCodec(),
              new Ros1Xarm_msgsGetAnalogIOResponseCodec(),
              (value: Ros1Xarm_msgsGetAnalogIORequest): bool => value.validValue(),
              266,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GetAnalogIO incoming request/response owner. */
export class Ros1Xarm_msgsGetAnalogIOServer extends BoundedServiceServer<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGetAnalogIORequestCodec(),
              new Ros1Xarm_msgsGetAnalogIOResponseCodec(),
              (value: Ros1Xarm_msgsGetAnalogIOResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete xarm_msgs/GetControllerDigitalIO typed call and real-submit client. */
export class Ros1Xarm_msgsGetControllerDigitalIOClient extends
    BoundedServiceClient<Ros1Xarm_msgsGetControllerDigitalIORequest, Ros1Xarm_msgsGetControllerDigitalIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetControllerDigitalIORequestCodec(),
              new Ros1Xarm_msgsGetControllerDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsGetControllerDigitalIORequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GetControllerDigitalIO incoming request/response owner. */
export class Ros1Xarm_msgsGetControllerDigitalIOServer extends
    BoundedServiceServer<Ros1Xarm_msgsGetControllerDigitalIORequest, Ros1Xarm_msgsGetControllerDigitalIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGetControllerDigitalIORequestCodec(),
              new Ros1Xarm_msgsGetControllerDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsGetControllerDigitalIOResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete xarm_msgs/GetDigitalIO typed call and real-submit client. */
export class Ros1Xarm_msgsGetDigitalIOClient extends BoundedServiceClient<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetDigitalIORequestCodec(),
              new Ros1Xarm_msgsGetDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsGetDigitalIORequest): bool => value.validValue(),
              270,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GetDigitalIO incoming request/response owner. */
export class Ros1Xarm_msgsGetDigitalIOServer extends BoundedServiceServer<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGetDigitalIORequestCodec(),
              new Ros1Xarm_msgsGetDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsGetDigitalIOResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/GetErr typed call and real-submit client. */
export class Ros1Xarm_msgsGetErrClient extends BoundedServiceClient<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetErrRequestCodec(),
              new Ros1Xarm_msgsGetErrResponseCodec(),
              (value: Ros1Xarm_msgsGetErrRequest): bool => value.validValue(),
              264,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GetErr incoming request/response owner. */
export class Ros1Xarm_msgsGetErrServer extends BoundedServiceServer<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGetErrRequestCodec(),
              new Ros1Xarm_msgsGetErrResponseCodec(),
              (value: Ros1Xarm_msgsGetErrResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/GetFloat32List typed call and real-submit client. */
export class Ros1Xarm_msgsGetFloat32ListClient extends BoundedServiceClient<Ros1Xarm_msgsGetFloat32ListRequest, Ros1Xarm_msgsGetFloat32ListResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetFloat32ListRequestCodec(),
              new Ros1Xarm_msgsGetFloat32ListResponseCodec(),
              (value: Ros1Xarm_msgsGetFloat32ListRequest): bool => value.validValue(),
              394,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GetFloat32List incoming request/response owner. */
export class Ros1Xarm_msgsGetFloat32ListServer extends BoundedServiceServer<Ros1Xarm_msgsGetFloat32ListRequest, Ros1Xarm_msgsGetFloat32ListResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGetFloat32ListRequestCodec(),
              new Ros1Xarm_msgsGetFloat32ListResponseCodec(),
              (value: Ros1Xarm_msgsGetFloat32ListResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/GetInt32 typed call and real-submit client. */
export class Ros1Xarm_msgsGetInt32Client extends BoundedServiceClient<Ros1Xarm_msgsGetInt32Request, Ros1Xarm_msgsGetInt32Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetInt32RequestCodec(),
              new Ros1Xarm_msgsGetInt32ResponseCodec(),
              (value: Ros1Xarm_msgsGetInt32Request): bool => value.validValue(),
              266,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GetInt32 incoming request/response owner. */
export class Ros1Xarm_msgsGetInt32Server extends BoundedServiceServer<Ros1Xarm_msgsGetInt32Request, Ros1Xarm_msgsGetInt32Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGetInt32RequestCodec(),
              new Ros1Xarm_msgsGetInt32ResponseCodec(),
              (value: Ros1Xarm_msgsGetInt32Response): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/GetSetModbusData typed call and real-submit client. */
export class Ros1Xarm_msgsGetSetModbusDataClient extends BoundedServiceClient<Ros1Xarm_msgsGetSetModbusDataRequest, Ros1Xarm_msgsGetSetModbusDataResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetSetModbusDataRequestCodec(),
              new Ros1Xarm_msgsGetSetModbusDataResponseCodec(),
              (value: Ros1Xarm_msgsGetSetModbusDataRequest): bool => value.validValue(),
              4362,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GetSetModbusData incoming request/response owner. */
export class Ros1Xarm_msgsGetSetModbusDataServer extends BoundedServiceServer<Ros1Xarm_msgsGetSetModbusDataRequest, Ros1Xarm_msgsGetSetModbusDataResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGetSetModbusDataRequestCodec(),
              new Ros1Xarm_msgsGetSetModbusDataResponseCodec(),
              (value: Ros1Xarm_msgsGetSetModbusDataResponse): bool => value.validValue(),
              4105,
              capacity);
    }
}

/** Complete xarm_msgs/GripperConfig typed call and real-submit client. */
export class Ros1Xarm_msgsGripperConfigClient extends BoundedServiceClient<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGripperConfigRequestCodec(),
              new Ros1Xarm_msgsGripperConfigResponseCodec(),
              (value: Ros1Xarm_msgsGripperConfigRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GripperConfig incoming request/response owner. */
export class Ros1Xarm_msgsGripperConfigServer extends BoundedServiceServer<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGripperConfigRequestCodec(),
              new Ros1Xarm_msgsGripperConfigResponseCodec(),
              (value: Ros1Xarm_msgsGripperConfigResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/GripperMove typed call and real-submit client. */
export class Ros1Xarm_msgsGripperMoveClient extends BoundedServiceClient<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGripperMoveRequestCodec(),
              new Ros1Xarm_msgsGripperMoveResponseCodec(),
              (value: Ros1Xarm_msgsGripperMoveRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GripperMove incoming request/response owner. */
export class Ros1Xarm_msgsGripperMoveServer extends BoundedServiceServer<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGripperMoveRequestCodec(),
              new Ros1Xarm_msgsGripperMoveResponseCodec(),
              (value: Ros1Xarm_msgsGripperMoveResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/GripperState typed call and real-submit client. */
export class Ros1Xarm_msgsGripperStateClient extends BoundedServiceClient<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGripperStateRequestCodec(),
              new Ros1Xarm_msgsGripperStateResponseCodec(),
              (value: Ros1Xarm_msgsGripperStateRequest): bool => value.validValue(),
              268,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/GripperState incoming request/response owner. */
export class Ros1Xarm_msgsGripperStateServer extends BoundedServiceServer<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsGripperStateRequestCodec(),
              new Ros1Xarm_msgsGripperStateResponseCodec(),
              (value: Ros1Xarm_msgsGripperStateResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** Complete xarm_msgs/Move typed call and real-submit client. */
export class Ros1Xarm_msgsMoveClient extends BoundedServiceClient<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsMoveRequestCodec(),
              new Ros1Xarm_msgsMoveResponseCodec(),
              (value: Ros1Xarm_msgsMoveRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/Move incoming request/response owner. */
export class Ros1Xarm_msgsMoveServer extends BoundedServiceServer<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsMoveRequestCodec(),
              new Ros1Xarm_msgsMoveResponseCodec(),
              (value: Ros1Xarm_msgsMoveResponse): bool => value.validValue(),
              148,
              capacity);
    }
}

/** Complete xarm_msgs/MoveAxisAngle typed call and real-submit client. */
export class Ros1Xarm_msgsMoveAxisAngleClient extends BoundedServiceClient<Ros1Xarm_msgsMoveAxisAngleRequest, Ros1Xarm_msgsMoveAxisAngleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsMoveAxisAngleRequestCodec(),
              new Ros1Xarm_msgsMoveAxisAngleResponseCodec(),
              (value: Ros1Xarm_msgsMoveAxisAngleRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/MoveAxisAngle incoming request/response owner. */
export class Ros1Xarm_msgsMoveAxisAngleServer extends BoundedServiceServer<Ros1Xarm_msgsMoveAxisAngleRequest, Ros1Xarm_msgsMoveAxisAngleResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsMoveAxisAngleRequestCodec(),
              new Ros1Xarm_msgsMoveAxisAngleResponseCodec(),
              (value: Ros1Xarm_msgsMoveAxisAngleResponse): bool => value.validValue(),
              148,
              capacity);
    }
}

/** Complete xarm_msgs/MoveVelo typed call and real-submit client. */
export class Ros1Xarm_msgsMoveVeloClient extends BoundedServiceClient<Ros1Xarm_msgsMoveVeloRequest, Ros1Xarm_msgsMoveVeloResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsMoveVeloRequestCodec(),
              new Ros1Xarm_msgsMoveVeloResponseCodec(),
              (value: Ros1Xarm_msgsMoveVeloRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/MoveVelo incoming request/response owner. */
export class Ros1Xarm_msgsMoveVeloServer extends BoundedServiceServer<Ros1Xarm_msgsMoveVeloRequest, Ros1Xarm_msgsMoveVeloResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsMoveVeloRequestCodec(),
              new Ros1Xarm_msgsMoveVeloResponseCodec(),
              (value: Ros1Xarm_msgsMoveVeloResponse): bool => value.validValue(),
              136,
              capacity);
    }
}

/** Complete xarm_msgs/MoveVelocity typed call and real-submit client. */
export class Ros1Xarm_msgsMoveVelocityClient extends BoundedServiceClient<Ros1Xarm_msgsMoveVelocityRequest, Ros1Xarm_msgsMoveVelocityResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsMoveVelocityRequestCodec(),
              new Ros1Xarm_msgsMoveVelocityResponseCodec(),
              (value: Ros1Xarm_msgsMoveVelocityRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/MoveVelocity incoming request/response owner. */
export class Ros1Xarm_msgsMoveVelocityServer extends BoundedServiceServer<Ros1Xarm_msgsMoveVelocityRequest, Ros1Xarm_msgsMoveVelocityResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsMoveVelocityRequestCodec(),
              new Ros1Xarm_msgsMoveVelocityResponseCodec(),
              (value: Ros1Xarm_msgsMoveVelocityResponse): bool => value.validValue(),
              138,
              capacity);
    }
}

/** Complete xarm_msgs/PlayTraj typed call and real-submit client. */
export class Ros1Xarm_msgsPlayTrajClient extends BoundedServiceClient<Ros1Xarm_msgsPlayTrajRequest, Ros1Xarm_msgsPlayTrajResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsPlayTrajRequestCodec(),
              new Ros1Xarm_msgsPlayTrajResponseCodec(),
              (value: Ros1Xarm_msgsPlayTrajRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/PlayTraj incoming request/response owner. */
export class Ros1Xarm_msgsPlayTrajServer extends BoundedServiceServer<Ros1Xarm_msgsPlayTrajRequest, Ros1Xarm_msgsPlayTrajResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsPlayTrajRequestCodec(),
              new Ros1Xarm_msgsPlayTrajResponseCodec(),
              (value: Ros1Xarm_msgsPlayTrajResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete xarm_msgs/SetAxis typed call and real-submit client. */
export class Ros1Xarm_msgsSetAxisClient extends BoundedServiceClient<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetAxisRequestCodec(),
              new Ros1Xarm_msgsSetAxisResponseCodec(),
              (value: Ros1Xarm_msgsSetAxisRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetAxis incoming request/response owner. */
export class Ros1Xarm_msgsSetAxisServer extends BoundedServiceServer<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetAxisRequestCodec(),
              new Ros1Xarm_msgsSetAxisResponseCodec(),
              (value: Ros1Xarm_msgsSetAxisResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/SetControllerAnalogIO typed call and real-submit client. */
export class Ros1Xarm_msgsSetControllerAnalogIOClient extends
    BoundedServiceClient<Ros1Xarm_msgsSetControllerAnalogIORequest, Ros1Xarm_msgsSetControllerAnalogIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetControllerAnalogIORequestCodec(),
              new Ros1Xarm_msgsSetControllerAnalogIOResponseCodec(),
              (value: Ros1Xarm_msgsSetControllerAnalogIORequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetControllerAnalogIO incoming request/response owner. */
export class Ros1Xarm_msgsSetControllerAnalogIOServer extends
    BoundedServiceServer<Ros1Xarm_msgsSetControllerAnalogIORequest, Ros1Xarm_msgsSetControllerAnalogIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetControllerAnalogIORequestCodec(),
              new Ros1Xarm_msgsSetControllerAnalogIOResponseCodec(),
              (value: Ros1Xarm_msgsSetControllerAnalogIOResponse): bool => value.validValue(),
              6,
              capacity);
    }
}

/** Complete xarm_msgs/SetDigitalIO typed call and real-submit client. */
export class Ros1Xarm_msgsSetDigitalIOClient extends BoundedServiceClient<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetDigitalIORequestCodec(),
              new Ros1Xarm_msgsSetDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsSetDigitalIORequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetDigitalIO incoming request/response owner. */
export class Ros1Xarm_msgsSetDigitalIOServer extends BoundedServiceServer<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetDigitalIORequestCodec(),
              new Ros1Xarm_msgsSetDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsSetDigitalIOResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/SetFloat32 typed call and real-submit client. */
export class Ros1Xarm_msgsSetFloat32Client extends BoundedServiceClient<Ros1Xarm_msgsSetFloat32Request, Ros1Xarm_msgsSetFloat32Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetFloat32RequestCodec(),
              new Ros1Xarm_msgsSetFloat32ResponseCodec(),
              (value: Ros1Xarm_msgsSetFloat32Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetFloat32 incoming request/response owner. */
export class Ros1Xarm_msgsSetFloat32Server extends BoundedServiceServer<Ros1Xarm_msgsSetFloat32Request, Ros1Xarm_msgsSetFloat32Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetFloat32RequestCodec(),
              new Ros1Xarm_msgsSetFloat32ResponseCodec(),
              (value: Ros1Xarm_msgsSetFloat32Response): bool => value.validValue(),
              4,
              capacity);
    }
}

/** Complete xarm_msgs/SetInt16 typed call and real-submit client. */
export class Ros1Xarm_msgsSetInt16Client extends BoundedServiceClient<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetInt16RequestCodec(),
              new Ros1Xarm_msgsSetInt16ResponseCodec(),
              (value: Ros1Xarm_msgsSetInt16Request): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetInt16 incoming request/response owner. */
export class Ros1Xarm_msgsSetInt16Server extends BoundedServiceServer<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetInt16RequestCodec(),
              new Ros1Xarm_msgsSetInt16ResponseCodec(),
              (value: Ros1Xarm_msgsSetInt16Response): bool => value.validValue(),
              2,
              capacity);
    }
}

/** Complete xarm_msgs/SetLoad typed call and real-submit client. */
export class Ros1Xarm_msgsSetLoadClient extends BoundedServiceClient<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetLoadRequestCodec(),
              new Ros1Xarm_msgsSetLoadResponseCodec(),
              (value: Ros1Xarm_msgsSetLoadRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetLoad incoming request/response owner. */
export class Ros1Xarm_msgsSetLoadServer extends BoundedServiceServer<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetLoadRequestCodec(),
              new Ros1Xarm_msgsSetLoadResponseCodec(),
              (value: Ros1Xarm_msgsSetLoadResponse): bool => value.validValue(),
              16,
              capacity);
    }
}

/** Complete xarm_msgs/SetModbusTimeout typed call and real-submit client. */
export class Ros1Xarm_msgsSetModbusTimeoutClient extends BoundedServiceClient<Ros1Xarm_msgsSetModbusTimeoutRequest, Ros1Xarm_msgsSetModbusTimeoutResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetModbusTimeoutRequestCodec(),
              new Ros1Xarm_msgsSetModbusTimeoutResponseCodec(),
              (value: Ros1Xarm_msgsSetModbusTimeoutRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetModbusTimeout incoming request/response owner. */
export class Ros1Xarm_msgsSetModbusTimeoutServer extends BoundedServiceServer<Ros1Xarm_msgsSetModbusTimeoutRequest, Ros1Xarm_msgsSetModbusTimeoutResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetModbusTimeoutRequestCodec(),
              new Ros1Xarm_msgsSetModbusTimeoutResponseCodec(),
              (value: Ros1Xarm_msgsSetModbusTimeoutResponse): bool => value.validValue(),
              5,
              capacity);
    }
}

/** Complete xarm_msgs/SetMultipleInts typed call and real-submit client. */
export class Ros1Xarm_msgsSetMultipleIntsClient extends BoundedServiceClient<Ros1Xarm_msgsSetMultipleIntsRequest, Ros1Xarm_msgsSetMultipleIntsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetMultipleIntsRequestCodec(),
              new Ros1Xarm_msgsSetMultipleIntsResponseCodec(),
              (value: Ros1Xarm_msgsSetMultipleIntsRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetMultipleInts incoming request/response owner. */
export class Ros1Xarm_msgsSetMultipleIntsServer extends BoundedServiceServer<Ros1Xarm_msgsSetMultipleIntsRequest, Ros1Xarm_msgsSetMultipleIntsResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetMultipleIntsRequestCodec(),
              new Ros1Xarm_msgsSetMultipleIntsResponseCodec(),
              (value: Ros1Xarm_msgsSetMultipleIntsResponse): bool => value.validValue(),
              68,
              capacity);
    }
}

/** Complete xarm_msgs/SetString typed call and real-submit client. */
export class Ros1Xarm_msgsSetStringClient extends BoundedServiceClient<Ros1Xarm_msgsSetStringRequest, Ros1Xarm_msgsSetStringResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetStringRequestCodec(),
              new Ros1Xarm_msgsSetStringResponseCodec(),
              (value: Ros1Xarm_msgsSetStringRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetString incoming request/response owner. */
export class Ros1Xarm_msgsSetStringServer extends BoundedServiceServer<Ros1Xarm_msgsSetStringRequest, Ros1Xarm_msgsSetStringResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetStringRequestCodec(),
              new Ros1Xarm_msgsSetStringResponseCodec(),
              (value: Ros1Xarm_msgsSetStringResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** Complete xarm_msgs/SetToolModbus typed call and real-submit client. */
export class Ros1Xarm_msgsSetToolModbusClient extends BoundedServiceClient<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetToolModbusRequestCodec(),
              new Ros1Xarm_msgsSetToolModbusResponseCodec(),
              (value: Ros1Xarm_msgsSetToolModbusRequest): bool => value.validValue(),
              4362,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/SetToolModbus incoming request/response owner. */
export class Ros1Xarm_msgsSetToolModbusServer extends BoundedServiceServer<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetToolModbusRequestCodec(),
              new Ros1Xarm_msgsSetToolModbusResponseCodec(),
              (value: Ros1Xarm_msgsSetToolModbusResponse): bool => value.validValue(),
              4102,
              capacity);
    }
}

/** Complete xarm_msgs/TCPOffset typed call and real-submit client. */
export class Ros1Xarm_msgsTCPOffsetClient extends BoundedServiceClient<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsTCPOffsetRequestCodec(),
              new Ros1Xarm_msgsTCPOffsetResponseCodec(),
              (value: Ros1Xarm_msgsTCPOffsetRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/TCPOffset incoming request/response owner. */
export class Ros1Xarm_msgsTCPOffsetServer extends BoundedServiceServer<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsTCPOffsetRequestCodec(),
              new Ros1Xarm_msgsTCPOffsetResponseCodec(),
              (value: Ros1Xarm_msgsTCPOffsetResponse): bool => value.validValue(),
              24,
              capacity);
    }
}

/** Complete xarm_msgs/VacuumGripperCtrl typed call and real-submit client. */
export class Ros1Xarm_msgsVacuumGripperCtrlClient extends BoundedServiceClient<Ros1Xarm_msgsVacuumGripperCtrlRequest, Ros1Xarm_msgsVacuumGripperCtrlResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsVacuumGripperCtrlRequestCodec(),
              new Ros1Xarm_msgsVacuumGripperCtrlResponseCodec(),
              (value: Ros1Xarm_msgsVacuumGripperCtrlRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/VacuumGripperCtrl incoming request/response owner. */
export class Ros1Xarm_msgsVacuumGripperCtrlServer extends BoundedServiceServer<Ros1Xarm_msgsVacuumGripperCtrlRequest, Ros1Xarm_msgsVacuumGripperCtrlResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsVacuumGripperCtrlRequestCodec(),
              new Ros1Xarm_msgsVacuumGripperCtrlResponseCodec(),
              (value: Ros1Xarm_msgsVacuumGripperCtrlResponse): bool => value.validValue(),
              13,
              capacity);
    }
}

/** Complete xarm_planner/exec_plan typed call and real-submit client. */
export class Ros1Xarm_plannerExec_planClient extends BoundedServiceClient<Ros1Xarm_plannerExec_planRequest, Ros1Xarm_plannerExec_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_plannerExec_planRequestCodec(),
              new Ros1Xarm_plannerExec_planResponseCodec(),
              (value: Ros1Xarm_plannerExec_planRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_planner/exec_plan incoming request/response owner. */
export class Ros1Xarm_plannerExec_planServer extends BoundedServiceServer<Ros1Xarm_plannerExec_planRequest, Ros1Xarm_plannerExec_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_plannerExec_planRequestCodec(),
              new Ros1Xarm_plannerExec_planResponseCodec(),
              (value: Ros1Xarm_plannerExec_planResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** Complete xarm_planner/joint_plan typed call and real-submit client. */
export class Ros1Xarm_plannerJoint_planClient extends BoundedServiceClient<Ros1Xarm_plannerJoint_planRequest, Ros1Xarm_plannerJoint_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_plannerJoint_planRequestCodec(),
              new Ros1Xarm_plannerJoint_planResponseCodec(),
              (value: Ros1Xarm_plannerJoint_planRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_planner/joint_plan incoming request/response owner. */
export class Ros1Xarm_plannerJoint_planServer extends BoundedServiceServer<Ros1Xarm_plannerJoint_planRequest, Ros1Xarm_plannerJoint_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_plannerJoint_planRequestCodec(),
              new Ros1Xarm_plannerJoint_planResponseCodec(),
              (value: Ros1Xarm_plannerJoint_planResponse): bool => value.validValue(),
              260,
              capacity);
    }
}

/** Complete xarm_planner/pose_plan typed call and real-submit client. */
export class Ros1Xarm_plannerPose_planClient extends BoundedServiceClient<Ros1Xarm_plannerPose_planRequest, Ros1Xarm_plannerPose_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_plannerPose_planRequestCodec(),
              new Ros1Xarm_plannerPose_planResponseCodec(),
              (value: Ros1Xarm_plannerPose_planRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_planner/pose_plan incoming request/response owner. */
export class Ros1Xarm_plannerPose_planServer extends BoundedServiceServer<Ros1Xarm_plannerPose_planRequest, Ros1Xarm_plannerPose_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_plannerPose_planRequestCodec(),
              new Ros1Xarm_plannerPose_planResponseCodec(),
              (value: Ros1Xarm_plannerPose_planResponse): bool => value.validValue(),
              56,
              capacity);
    }
}

/** Complete xarm_planner/single_straight_plan typed call and real-submit client. */
export class Ros1Xarm_plannerSingle_straight_planClient extends
    BoundedServiceClient<Ros1Xarm_plannerSingle_straight_planRequest, Ros1Xarm_plannerSingle_straight_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_plannerSingle_straight_planRequestCodec(),
              new Ros1Xarm_plannerSingle_straight_planResponseCodec(),
              (value: Ros1Xarm_plannerSingle_straight_planRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_planner/single_straight_plan incoming request/response owner. */
export class Ros1Xarm_plannerSingle_straight_planServer extends
    BoundedServiceServer<Ros1Xarm_plannerSingle_straight_planRequest, Ros1Xarm_plannerSingle_straight_planResponse>
{
    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param api Complete original component or local protocol value, with its documented owner and bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_plannerSingle_straight_planRequestCodec(),
              new Ros1Xarm_plannerSingle_straight_planResponseCodec(),
              (value: Ros1Xarm_plannerSingle_straight_planResponse): bool => value.validValue(),
              56,
              capacity);
    }
}
