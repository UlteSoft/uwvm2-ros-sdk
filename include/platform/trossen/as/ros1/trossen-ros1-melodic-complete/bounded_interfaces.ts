/**
 * @brief Generated custom RPC facades. Keep beside bounded_records.ts; select the
 * real ros1/ros2 NativeApi and explicit CLI-provisioned aliases. No factory
 * creates a grant, thread, clock, retry or native callback. A Wasm abort/trap
 * cannot promise cleanup; every normal caller-driven pass releases its lease.
 */
import {Api, Operation, Status} from 'ros/as/api';
import {Capability, Reply} from 'ros/as/roswasm';
import {Codec, validUnicode} from 'ros/as/codecs';
import {decodeUnifiedEvent, UnifiedEvent, EventKind} from 'ros/as/events';
import {
    Ros1Interbotix_xs_msgsMotorGainsRequest,
    Ros1Interbotix_xs_msgsMotorGainsRequestCodec,
    Ros1Interbotix_xs_msgsMotorGainsResponse,
    Ros1Interbotix_xs_msgsMotorGainsResponseCodec,
    Ros1Interbotix_xs_msgsOperatingModesRequest,
    Ros1Interbotix_xs_msgsOperatingModesRequestCodec,
    Ros1Interbotix_xs_msgsOperatingModesResponse,
    Ros1Interbotix_xs_msgsOperatingModesResponseCodec,
    Ros1Interbotix_xs_msgsRebootRequest,
    Ros1Interbotix_xs_msgsRebootRequestCodec,
    Ros1Interbotix_xs_msgsRebootResponse,
    Ros1Interbotix_xs_msgsRebootResponseCodec,
    Ros1Interbotix_xs_msgsRegisterValuesRequest,
    Ros1Interbotix_xs_msgsRegisterValuesRequestCodec,
    Ros1Interbotix_xs_msgsRegisterValuesResponse,
    Ros1Interbotix_xs_msgsRegisterValuesResponseCodec,
    Ros1Interbotix_xs_msgsRobotInfoRequest,
    Ros1Interbotix_xs_msgsRobotInfoRequestCodec,
    Ros1Interbotix_xs_msgsRobotInfoResponse,
    Ros1Interbotix_xs_msgsRobotInfoResponseCodec,
    Ros1Interbotix_xs_msgsTorqueEnableRequest,
    Ros1Interbotix_xs_msgsTorqueEnableRequestCodec,
    Ros1Interbotix_xs_msgsTorqueEnableResponse,
    Ros1Interbotix_xs_msgsTorqueEnableResponseCodec,
    Ros1Xarm_msgsClearErrRequest,
    Ros1Xarm_msgsClearErrRequestCodec,
    Ros1Xarm_msgsClearErrResponse,
    Ros1Xarm_msgsClearErrResponseCodec,
    Ros1Xarm_msgsConfigToolModbusRequest,
    Ros1Xarm_msgsConfigToolModbusRequestCodec,
    Ros1Xarm_msgsConfigToolModbusResponse,
    Ros1Xarm_msgsConfigToolModbusResponseCodec,
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
    Ros1Xarm_msgsMoveRequest,
    Ros1Xarm_msgsMoveRequestCodec,
    Ros1Xarm_msgsMoveResponse,
    Ros1Xarm_msgsMoveResponseCodec,
    Ros1Xarm_msgsSetAxisRequest,
    Ros1Xarm_msgsSetAxisRequestCodec,
    Ros1Xarm_msgsSetAxisResponse,
    Ros1Xarm_msgsSetAxisResponseCodec,
    Ros1Xarm_msgsSetDigitalIORequest,
    Ros1Xarm_msgsSetDigitalIORequestCodec,
    Ros1Xarm_msgsSetDigitalIOResponse,
    Ros1Xarm_msgsSetDigitalIOResponseCodec,
    Ros1Xarm_msgsSetInt16Request,
    Ros1Xarm_msgsSetInt16RequestCodec,
    Ros1Xarm_msgsSetInt16Response,
    Ros1Xarm_msgsSetInt16ResponseCodec,
    Ros1Xarm_msgsSetLoadRequest,
    Ros1Xarm_msgsSetLoadRequestCodec,
    Ros1Xarm_msgsSetLoadResponse,
    Ros1Xarm_msgsSetLoadResponseCodec,
    Ros1Xarm_msgsSetToolModbusRequest,
    Ros1Xarm_msgsSetToolModbusRequestCodec,
    Ros1Xarm_msgsSetToolModbusResponse,
    Ros1Xarm_msgsSetToolModbusResponseCodec,
    Ros1Xarm_msgsTCPOffsetRequest,
    Ros1Xarm_msgsTCPOffsetRequestCodec,
    Ros1Xarm_msgsTCPOffsetResponse,
    Ros1Xarm_msgsTCPOffsetResponseCodec
} from "./bounded_records";

/**
 * @brief Complete typed result. Inspect status before value; required is retained
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

/** @brief Primary failure remains separate from every attempted retirement result. */
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
 * @brief Generic implementation instantiated only with the generated complete codecs.
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

    /** @brief One synchronous call. No timeout/disconnect/TooLarge replay is attempted. */
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
     * @brief Real service_submit with the explicitly opened independent observer. The
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
     * @brief Use the existing SDK envelope decoder before source/stream/correlation and
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

    /** @brief Preserve all partial open cleanup facts independently of the primary status. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close each role once, preserving observer/source retirement errors. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }

    /** @brief Explicitly revoke only these already granted aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }
}

/**
 * @brief Incoming custom service implementation. Host still validates exact responder,
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

    /** @brief Poll at most one complete request; all malformed values leave outputs absent. */
    pollOnce(): RPCReply<Q>
    {
        const status = this.owners.check();
        return status ? new RPCReply<Q>(new Reply(status)) : this.pollInner();
    }

    /** @brief Respond once to a locally delivered ticket. Refusal retains local ownership. */
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
     * @brief A normal callback may respond but cannot poll/close/revoke this owner.
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

    /** @brief Inspect partial construction rollback separately. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close both roles only after callback preflight. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** @brief Deliberately revoke both existing aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** @brief Custom action owner with four distinct required roles and optional cancel-any. */
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

    /** @brief Send a complete generated goal; capacity checked before any import. */
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

    /** @brief Cancellation acknowledgement does not retire a local goal. */
    cancelOwn(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(1, Operation.action_cancel_own_goal, id);
    }

    /** @brief Zero means cancel-all and still requires the explicit fifth role. */
    cancelAny(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(4))
            status = Status.Denied;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(4, Operation.action_cancel_any_goal, id);
    }

    /** @brief Explicit cancel-all preserves the independent fifth-role requirement. */
    cancelAll(): RPCReply<R>
    {
        return this.cancelAny(0);
    }

    /** @brief Receive complete matching-ID feedback, retaining goal ownership on every refusal. */
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

    /** @brief Only decoded terminal kinds2/3/4 remove one locally owned goal. */
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

    /** @brief Observe every acquisition rollback result. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close every role once. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }

    /** @brief Revoke only existing role aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }
}

/** @brief Incoming custom action: feedback1 retains; accepted terminal2/3/4 retires. */
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

    /** @brief Poll once; nested dispatch returns Conflict before dequeue. */
    pollOnce(): RPCReply<G>
    {
        const status = this.owners.check();
        return status ? new RPCReply<G>(new Reply(status)) : this.pollInner();
    }

    /** @brief Respond only to a goal delivered to this owner. */
    respondFeedback(id: u64, value: F): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(!this.feedbackValid(value))
            return Status.Invalid;
        return this.owners.zero(1, Operation.action_respond, rpcFrame(id, this.feedbackCodec.encode(value), 1));
    }

    /** @brief Validate terminal kind and component before any response import. */
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

    /** @brief Handler runs locally under a lease and explicitly chooses later responses. */
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

    /** @brief Inspect original partial construction cleanup. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close both roles, preserving primary and every cleanup status. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** @brief Explicitly revoke the existing advertise/respond aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** @brief Complete interbotix_xs_msgs/MotorGains typed call and real-submit client. */
export class Ros1Interbotix_xs_msgsMotorGainsClient extends
    BoundedServiceClient<Ros1Interbotix_xs_msgsMotorGainsRequest, Ros1Interbotix_xs_msgsMotorGainsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Interbotix_xs_msgsMotorGainsRequestCodec(),
              new Ros1Interbotix_xs_msgsMotorGainsResponseCodec(),
              (value: Ros1Interbotix_xs_msgsMotorGainsRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/MotorGains incoming request/response owner. */
export class Ros1Interbotix_xs_msgsMotorGainsServer extends
    BoundedServiceServer<Ros1Interbotix_xs_msgsMotorGainsRequest, Ros1Interbotix_xs_msgsMotorGainsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Interbotix_xs_msgsMotorGainsRequestCodec(),
              new Ros1Interbotix_xs_msgsMotorGainsResponseCodec(),
              (value: Ros1Interbotix_xs_msgsMotorGainsResponse): bool => value.validValue(),
              292,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/OperatingModes typed call and real-submit client. */
export class Ros1Interbotix_xs_msgsOperatingModesClient extends
    BoundedServiceClient<Ros1Interbotix_xs_msgsOperatingModesRequest, Ros1Interbotix_xs_msgsOperatingModesResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Interbotix_xs_msgsOperatingModesRequestCodec(),
              new Ros1Interbotix_xs_msgsOperatingModesResponseCodec(),
              (value: Ros1Interbotix_xs_msgsOperatingModesRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/OperatingModes incoming request/response owner. */
export class Ros1Interbotix_xs_msgsOperatingModesServer extends
    BoundedServiceServer<Ros1Interbotix_xs_msgsOperatingModesRequest, Ros1Interbotix_xs_msgsOperatingModesResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Interbotix_xs_msgsOperatingModesRequestCodec(),
              new Ros1Interbotix_xs_msgsOperatingModesResponseCodec(),
              (value: Ros1Interbotix_xs_msgsOperatingModesResponse): bool => value.validValue(),
              536,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/Reboot typed call and real-submit client. */
export class Ros1Interbotix_xs_msgsRebootClient extends BoundedServiceClient<Ros1Interbotix_xs_msgsRebootRequest, Ros1Interbotix_xs_msgsRebootResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Interbotix_xs_msgsRebootRequestCodec(),
              new Ros1Interbotix_xs_msgsRebootResponseCodec(),
              (value: Ros1Interbotix_xs_msgsRebootRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/Reboot incoming request/response owner. */
export class Ros1Interbotix_xs_msgsRebootServer extends BoundedServiceServer<Ros1Interbotix_xs_msgsRebootRequest, Ros1Interbotix_xs_msgsRebootResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Interbotix_xs_msgsRebootRequestCodec(),
              new Ros1Interbotix_xs_msgsRebootResponseCodec(),
              (value: Ros1Interbotix_xs_msgsRebootResponse): bool => value.validValue(),
              266,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/RegisterValues typed call and real-submit client. */
export class Ros1Interbotix_xs_msgsRegisterValuesClient extends
    BoundedServiceClient<Ros1Interbotix_xs_msgsRegisterValuesRequest, Ros1Interbotix_xs_msgsRegisterValuesResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Interbotix_xs_msgsRegisterValuesRequestCodec(),
              new Ros1Interbotix_xs_msgsRegisterValuesResponseCodec(),
              (value: Ros1Interbotix_xs_msgsRegisterValuesRequest): bool => value.validValue(),
              68,
              observerAlias,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/RegisterValues incoming request/response owner. */
export class Ros1Interbotix_xs_msgsRegisterValuesServer extends
    BoundedServiceServer<Ros1Interbotix_xs_msgsRegisterValuesRequest, Ros1Interbotix_xs_msgsRegisterValuesResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Interbotix_xs_msgsRegisterValuesRequestCodec(),
              new Ros1Interbotix_xs_msgsRegisterValuesResponseCodec(),
              (value: Ros1Interbotix_xs_msgsRegisterValuesResponse): bool => value.validValue(),
              400,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/RobotInfo typed call and real-submit client. */
export class Ros1Interbotix_xs_msgsRobotInfoClient extends BoundedServiceClient<Ros1Interbotix_xs_msgsRobotInfoRequest, Ros1Interbotix_xs_msgsRobotInfoResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Interbotix_xs_msgsRobotInfoRequestCodec(),
              new Ros1Interbotix_xs_msgsRobotInfoResponseCodec(),
              (value: Ros1Interbotix_xs_msgsRobotInfoRequest): bool => value.validValue(),
              18474,
              observerAlias,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/RobotInfo incoming request/response owner. */
export class Ros1Interbotix_xs_msgsRobotInfoServer extends BoundedServiceServer<Ros1Interbotix_xs_msgsRobotInfoRequest, Ros1Interbotix_xs_msgsRobotInfoResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Interbotix_xs_msgsRobotInfoRequestCodec(),
              new Ros1Interbotix_xs_msgsRobotInfoResponseCodec(),
              (value: Ros1Interbotix_xs_msgsRobotInfoResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/TorqueEnable typed call and real-submit client. */
export class Ros1Interbotix_xs_msgsTorqueEnableClient extends
    BoundedServiceClient<Ros1Interbotix_xs_msgsTorqueEnableRequest, Ros1Interbotix_xs_msgsTorqueEnableResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Interbotix_xs_msgsTorqueEnableRequestCodec(),
              new Ros1Interbotix_xs_msgsTorqueEnableResponseCodec(),
              (value: Ros1Interbotix_xs_msgsTorqueEnableRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete interbotix_xs_msgs/TorqueEnable incoming request/response owner. */
export class Ros1Interbotix_xs_msgsTorqueEnableServer extends
    BoundedServiceServer<Ros1Interbotix_xs_msgsTorqueEnableRequest, Ros1Interbotix_xs_msgsTorqueEnableResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Interbotix_xs_msgsTorqueEnableRequestCodec(),
              new Ros1Interbotix_xs_msgsTorqueEnableResponseCodec(),
              (value: Ros1Interbotix_xs_msgsTorqueEnableResponse): bool => value.validValue(),
              265,
              capacity);
    }
}

/** @brief Complete xarm_msgs/ClearErr typed call and real-submit client. */
export class Ros1Xarm_msgsClearErrClient extends BoundedServiceClient<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsClearErrRequestCodec(),
              new Ros1Xarm_msgsClearErrResponseCodec(),
              (value: Ros1Xarm_msgsClearErrRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/ClearErr incoming request/response owner. */
export class Ros1Xarm_msgsClearErrServer extends BoundedServiceServer<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse>
{
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

/** @brief Complete xarm_msgs/ConfigToolModbus typed call and real-submit client. */
export class Ros1Xarm_msgsConfigToolModbusClient extends BoundedServiceClient<Ros1Xarm_msgsConfigToolModbusRequest, Ros1Xarm_msgsConfigToolModbusResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsConfigToolModbusRequestCodec(),
              new Ros1Xarm_msgsConfigToolModbusResponseCodec(),
              (value: Ros1Xarm_msgsConfigToolModbusRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/ConfigToolModbus incoming request/response owner. */
export class Ros1Xarm_msgsConfigToolModbusServer extends BoundedServiceServer<Ros1Xarm_msgsConfigToolModbusRequest, Ros1Xarm_msgsConfigToolModbusResponse>
{
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

/** @brief Complete xarm_msgs/GetAnalogIO typed call and real-submit client. */
export class Ros1Xarm_msgsGetAnalogIOClient extends BoundedServiceClient<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetAnalogIORequestCodec(),
              new Ros1Xarm_msgsGetAnalogIOResponseCodec(),
              (value: Ros1Xarm_msgsGetAnalogIORequest): bool => value.validValue(),
              138,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/GetAnalogIO incoming request/response owner. */
export class Ros1Xarm_msgsGetAnalogIOServer extends BoundedServiceServer<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse>
{
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

/** @brief Complete xarm_msgs/GetControllerDigitalIO typed call and real-submit client. */
export class Ros1Xarm_msgsGetControllerDigitalIOClient extends
    BoundedServiceClient<Ros1Xarm_msgsGetControllerDigitalIORequest, Ros1Xarm_msgsGetControllerDigitalIOResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetControllerDigitalIORequestCodec(),
              new Ros1Xarm_msgsGetControllerDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsGetControllerDigitalIORequest): bool => value.validValue(),
              136,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/GetControllerDigitalIO incoming request/response owner. */
export class Ros1Xarm_msgsGetControllerDigitalIOServer extends
    BoundedServiceServer<Ros1Xarm_msgsGetControllerDigitalIORequest, Ros1Xarm_msgsGetControllerDigitalIOResponse>
{
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

/** @brief Complete xarm_msgs/GetDigitalIO typed call and real-submit client. */
export class Ros1Xarm_msgsGetDigitalIOClient extends BoundedServiceClient<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetDigitalIORequestCodec(),
              new Ros1Xarm_msgsGetDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsGetDigitalIORequest): bool => value.validValue(),
              142,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/GetDigitalIO incoming request/response owner. */
export class Ros1Xarm_msgsGetDigitalIOServer extends BoundedServiceServer<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse>
{
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

/** @brief Complete xarm_msgs/GetErr typed call and real-submit client. */
export class Ros1Xarm_msgsGetErrClient extends BoundedServiceClient<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGetErrRequestCodec(),
              new Ros1Xarm_msgsGetErrResponseCodec(),
              (value: Ros1Xarm_msgsGetErrRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/GetErr incoming request/response owner. */
export class Ros1Xarm_msgsGetErrServer extends BoundedServiceServer<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse>
{
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

/** @brief Complete xarm_msgs/GripperConfig typed call and real-submit client. */
export class Ros1Xarm_msgsGripperConfigClient extends BoundedServiceClient<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGripperConfigRequestCodec(),
              new Ros1Xarm_msgsGripperConfigResponseCodec(),
              (value: Ros1Xarm_msgsGripperConfigRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/GripperConfig incoming request/response owner. */
export class Ros1Xarm_msgsGripperConfigServer extends BoundedServiceServer<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse>
{
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

/** @brief Complete xarm_msgs/GripperMove typed call and real-submit client. */
export class Ros1Xarm_msgsGripperMoveClient extends BoundedServiceClient<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGripperMoveRequestCodec(),
              new Ros1Xarm_msgsGripperMoveResponseCodec(),
              (value: Ros1Xarm_msgsGripperMoveRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/GripperMove incoming request/response owner. */
export class Ros1Xarm_msgsGripperMoveServer extends BoundedServiceServer<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse>
{
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

/** @brief Complete xarm_msgs/GripperState typed call and real-submit client. */
export class Ros1Xarm_msgsGripperStateClient extends BoundedServiceClient<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsGripperStateRequestCodec(),
              new Ros1Xarm_msgsGripperStateResponseCodec(),
              (value: Ros1Xarm_msgsGripperStateRequest): bool => value.validValue(),
              6,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/GripperState incoming request/response owner. */
export class Ros1Xarm_msgsGripperStateServer extends BoundedServiceServer<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse>
{
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

/** @brief Complete xarm_msgs/Move typed call and real-submit client. */
export class Ros1Xarm_msgsMoveClient extends BoundedServiceClient<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsMoveRequestCodec(),
              new Ros1Xarm_msgsMoveResponseCodec(),
              (value: Ros1Xarm_msgsMoveRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/Move incoming request/response owner. */
export class Ros1Xarm_msgsMoveServer extends BoundedServiceServer<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsMoveRequestCodec(),
              new Ros1Xarm_msgsMoveResponseCodec(),
              (value: Ros1Xarm_msgsMoveResponse): bool => value.validValue(),
              84,
              capacity);
    }
}

/** @brief Complete xarm_msgs/SetAxis typed call and real-submit client. */
export class Ros1Xarm_msgsSetAxisClient extends BoundedServiceClient<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetAxisRequestCodec(),
              new Ros1Xarm_msgsSetAxisResponseCodec(),
              (value: Ros1Xarm_msgsSetAxisRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/SetAxis incoming request/response owner. */
export class Ros1Xarm_msgsSetAxisServer extends BoundedServiceServer<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse>
{
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

/** @brief Complete xarm_msgs/SetDigitalIO typed call and real-submit client. */
export class Ros1Xarm_msgsSetDigitalIOClient extends BoundedServiceClient<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetDigitalIORequestCodec(),
              new Ros1Xarm_msgsSetDigitalIOResponseCodec(),
              (value: Ros1Xarm_msgsSetDigitalIORequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/SetDigitalIO incoming request/response owner. */
export class Ros1Xarm_msgsSetDigitalIOServer extends BoundedServiceServer<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse>
{
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

/** @brief Complete xarm_msgs/SetInt16 typed call and real-submit client. */
export class Ros1Xarm_msgsSetInt16Client extends BoundedServiceClient<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetInt16RequestCodec(),
              new Ros1Xarm_msgsSetInt16ResponseCodec(),
              (value: Ros1Xarm_msgsSetInt16Request): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/SetInt16 incoming request/response owner. */
export class Ros1Xarm_msgsSetInt16Server extends BoundedServiceServer<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response>
{
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

/** @brief Complete xarm_msgs/SetLoad typed call and real-submit client. */
export class Ros1Xarm_msgsSetLoadClient extends BoundedServiceClient<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetLoadRequestCodec(),
              new Ros1Xarm_msgsSetLoadResponseCodec(),
              (value: Ros1Xarm_msgsSetLoadRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/SetLoad incoming request/response owner. */
export class Ros1Xarm_msgsSetLoadServer extends BoundedServiceServer<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse>
{
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

/** @brief Complete xarm_msgs/SetToolModbus typed call and real-submit client. */
export class Ros1Xarm_msgsSetToolModbusClient extends BoundedServiceClient<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsSetToolModbusRequestCodec(),
              new Ros1Xarm_msgsSetToolModbusResponseCodec(),
              (value: Ros1Xarm_msgsSetToolModbusRequest): bool => value.validValue(),
              262,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/SetToolModbus incoming request/response owner. */
export class Ros1Xarm_msgsSetToolModbusServer extends BoundedServiceServer<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Xarm_msgsSetToolModbusRequestCodec(),
              new Ros1Xarm_msgsSetToolModbusResponseCodec(),
              (value: Ros1Xarm_msgsSetToolModbusResponse): bool => value.validValue(),
              262,
              capacity);
    }
}

/** @brief Complete xarm_msgs/TCPOffset typed call and real-submit client. */
export class Ros1Xarm_msgsTCPOffsetClient extends BoundedServiceClient<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Xarm_msgsTCPOffsetRequestCodec(),
              new Ros1Xarm_msgsTCPOffsetResponseCodec(),
              (value: Ros1Xarm_msgsTCPOffsetRequest): bool => value.validValue(),
              134,
              observerAlias,
              capacity);
    }
}

/** @brief Complete xarm_msgs/TCPOffset incoming request/response owner. */
export class Ros1Xarm_msgsTCPOffsetServer extends BoundedServiceServer<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse>
{
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
