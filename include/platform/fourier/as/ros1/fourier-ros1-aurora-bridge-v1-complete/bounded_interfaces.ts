// @file bounded_interfaces.ts
// @brief Full fourier as codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in as. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
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
    Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
    Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec,
    Ros1Uwvm_fourier_bridgeExecuteMoveResponse,
    Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec,
    Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
    Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec,
    Ros1Uwvm_fourier_bridgeGetBaseDataResponse,
    Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec,
    Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
    Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec,
    Ros1Uwvm_fourier_bridgeGetCartesianStateResponse,
    Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec,
    Ros1Uwvm_fourier_bridgeGetContactDataRequest,
    Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec,
    Ros1Uwvm_fourier_bridgeGetContactDataResponse,
    Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec,
    Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
    Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec,
    Ros1Uwvm_fourier_bridgeGetFsmNameResponse,
    Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec,
    Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
    Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec,
    Ros1Uwvm_fourier_bridgeGetFsmStateResponse,
    Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec,
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec,
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse,
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec,
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec,
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse,
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec,
    Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
    Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec,
    Ros1Uwvm_fourier_bridgeGetGroupStateResponse,
    Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec,
    Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
    Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec,
    Ros1Uwvm_fourier_bridgeGetSnapshotResponse,
    Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec,
    Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
    Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec,
    Ros1Uwvm_fourier_bridgeGetStandPoseResponse,
    Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec,
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec,
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse,
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec,
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec,
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse,
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse,
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec,
    Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
    Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec,
    Ros1Uwvm_fourier_bridgeSetFsmStateResponse,
    Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec,
    Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
    Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec,
    Ros1Uwvm_fourier_bridgeSetGroupCommandResponse,
    Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec,
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec,
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse,
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec,
    Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
    Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec,
    Ros1Uwvm_fourier_bridgeSetStandPoseResponse,
    Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec,
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec,
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse,
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec,
    Ros1Uwvm_fourier_bridgeSetVelocityRequest,
    Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec,
    Ros1Uwvm_fourier_bridgeSetVelocityResponse,
    Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec,
    Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
    Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec,
    Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse,
    Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec,
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec,
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse,
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec,
} from './bounded_records';

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
    constructor(
        public primary: u32,
        public statuses: Array<u32>,
    )
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
    private caps: Array<Capability> = [];
    busy: bool = false;
    status: u32 = 0;
    constructionCleanup: RPCCleanup = new RPCCleanup(0, []);

    constructor(
        api: Api,
        version: u32,
        aliases: Array<string>,
        public capacity: i32,
    )
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
    private pending: Array<u64> = [];
    private sequence: u64 = 0;
    private instance: u64 = 0;
    private session: u64 = 0;

    constructor(
        api: Api,
        private version: u32,
        alias: string,
        private requestCodec: Codec<Q>,
        private responseCodec: Codec<S>,
        private requestValid: (value: Q) => bool,
        private responseMax: i32,
        observerAlias: string = '',
        capacity: i32 = 8,
    )
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
    private live: Array<u64> = [];

    constructor(
        api: Api,
        version: u32,
        advertise: string,
        respond: string,
        private input: Codec<Q>,
        private output: Codec<S>,
        private outputValid: (value: S) => bool,
        private inputMax: i32,
        capacity: i32 = 8,
    )
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
    private goals: Array<u64> = [];

    constructor(
        api: Api,
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
        capacity: i32 = 8,
    )
    {
        this.owners = new RPCOwners(
            api,
            version,
            cancelAny.length ? [ send, cancelOwn, feedback, result, cancelAny ] : [ send, cancelOwn, feedback, result ],
            capacity,
        );
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
    private live: Array<u64> = [];

    constructor(
        api: Api,
        version: u32,
        advertise: string,
        respond: string,
        private goal: Codec<G>,
        private resultCodec: Codec<R>,
        private feedbackCodec: Codec<F>,
        private resultValid: (value: R) => bool,
        private feedbackValid: (value: F) => bool,
        private goalMax: i32,
        capacity: i32 = 8,
    )
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
        const status = this.owners.zero(
            1,
            Operation.action_respond,
            rpcFrame(id, this.resultCodec.encode(value), kind),
        );
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

/** Complete uwvm_fourier_bridge/ExecuteMove typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeExecuteMoveClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeExecuteMoveRequest, Ros1Uwvm_fourier_bridgeExecuteMoveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec(),
            new Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeExecuteMoveRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/ExecuteMove incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeExecuteMoveServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeExecuteMoveRequest, Ros1Uwvm_fourier_bridgeExecuteMoveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec(),
            new Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeExecuteMoveResponse): bool => value.validValue(),
            9372,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetBaseData typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetBaseDataClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetBaseDataRequest, Ros1Uwvm_fourier_bridgeGetBaseDataResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetBaseDataRequest): bool => value.validValue(),
            652,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetBaseData incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetBaseDataServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetBaseDataRequest, Ros1Uwvm_fourier_bridgeGetBaseDataResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetBaseDataResponse): bool => value.validValue(),
            140,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetCartesianState typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetCartesianStateClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest, Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest): bool => value.validValue(),
            652,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetCartesianState incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetCartesianStateServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetCartesianStateRequest, Ros1Uwvm_fourier_bridgeGetCartesianStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse): bool => value.validValue(),
            272,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetContactData typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetContactDataClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetContactDataRequest, Ros1Uwvm_fourier_bridgeGetContactDataResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetContactDataRequest): bool => value.validValue(),
            652,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetContactData incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetContactDataServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetContactDataRequest, Ros1Uwvm_fourier_bridgeGetContactDataResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetContactDataResponse): bool => value.validValue(),
            140,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetFsmName typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetFsmNameClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetFsmNameRequest, Ros1Uwvm_fourier_bridgeGetFsmNameResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetFsmNameRequest): bool => value.validValue(),
            268,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetFsmName incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetFsmNameServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetFsmNameRequest, Ros1Uwvm_fourier_bridgeGetFsmNameResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetFsmNameResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetFsmState typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetFsmStateClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetFsmStateRequest, Ros1Uwvm_fourier_bridgeGetFsmStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetFsmStateRequest): bool => value.validValue(),
            140,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetFsmState incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetFsmStateServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetFsmStateRequest, Ros1Uwvm_fourier_bridgeGetFsmStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetFsmStateResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetGroupMotionState typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest, Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest): bool => value.validValue(),
            140,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetGroupMotionState incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest, Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse): bool => value.validValue(),
            140,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetGroupMotorCfg typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest): bool => value.validValue(),
            652,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetGroupMotorCfg incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse): bool => value.validValue(),
            272,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetGroupState typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetGroupStateClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetGroupStateRequest, Ros1Uwvm_fourier_bridgeGetGroupStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetGroupStateRequest): bool => value.validValue(),
            652,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetGroupState incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetGroupStateServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetGroupStateRequest, Ros1Uwvm_fourier_bridgeGetGroupStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetGroupStateResponse): bool => value.validValue(),
            272,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetSnapshot typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetSnapshotClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetSnapshotRequest, Ros1Uwvm_fourier_bridgeGetSnapshotResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetSnapshotRequest): bool => value.validValue(),
            14536,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetSnapshot incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetSnapshotServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetSnapshotRequest, Ros1Uwvm_fourier_bridgeGetSnapshotResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetSnapshotResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetStandPose typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetStandPoseClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetStandPoseRequest, Ros1Uwvm_fourier_bridgeGetStandPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetStandPoseRequest): bool => value.validValue(),
            652,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetStandPose incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetStandPoseServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetStandPoseRequest, Ros1Uwvm_fourier_bridgeGetStandPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetStandPoseResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetUpperFsmName typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest): bool => value.validValue(),
            268,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetUpperFsmName incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetUpperFsmState typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest): bool => value.validValue(),
            140,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetUpperFsmState incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetVelocitySource typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest, Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest): bool => value.validValue(),
            140,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetVelocitySource incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest, Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetVelocitySourceName typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest, Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest): bool => value.validValue(),
            268,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/GetVelocitySourceName incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest, Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec(),
            new Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetFsmState typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeSetFsmStateClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeSetFsmStateRequest, Ros1Uwvm_fourier_bridgeSetFsmStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetFsmStateRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetFsmState incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeSetFsmStateServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeSetFsmStateRequest, Ros1Uwvm_fourier_bridgeSetFsmStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetFsmStateResponse): bool => value.validValue(),
            12,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetGroupCommand typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeSetGroupCommandClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetGroupCommand incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeSetGroupCommandServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, Ros1Uwvm_fourier_bridgeSetGroupCommandResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse): bool => value.validValue(),
            15572,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetMotorCfgPd typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetMotorCfgPd incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse): bool => value.validValue(),
            10384,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetStandPose typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeSetStandPoseClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeSetStandPoseRequest, Ros1Uwvm_fourier_bridgeSetStandPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetStandPoseRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetStandPose incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeSetStandPoseServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeSetStandPoseRequest, Ros1Uwvm_fourier_bridgeSetStandPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetStandPoseResponse): bool => value.validValue(),
            32,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetUpperFsmState typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetUpperFsmState incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse): bool => value.validValue(),
            12,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetVelocity typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeSetVelocityClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeSetVelocityRequest, Ros1Uwvm_fourier_bridgeSetVelocityResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetVelocityRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetVelocity incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeSetVelocityServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeSetVelocityRequest, Ros1Uwvm_fourier_bridgeSetVelocityResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetVelocityResponse): bool => value.validValue(),
            40,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetVelocitySource typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeSetVelocitySourceClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest, Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest): bool => value.validValue(),
            136,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/SetVelocitySource incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeSetVelocitySourceServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest, Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec(),
            new Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse): bool => value.validValue(),
            12,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/WaitGroupsMotionComplete typed call and real-submit client. */
export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteClient extends
    BoundedServiceClient<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest, Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec(),
            new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest): bool => value.validValue(),
            137,
            observerAlias,
            capacity,
        );
    }
}

/** Complete uwvm_fourier_bridge/WaitGroupsMotionComplete incoming request/response owner. */
export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteServer extends
    BoundedServiceServer<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest, Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec(),
            new Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec(),
            (value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse): bool => value.validValue(),
            1084,
            capacity,
        );
    }
}
