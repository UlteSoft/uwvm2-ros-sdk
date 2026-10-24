// @file bounded_interfaces.ts
// @brief Full agibot as codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in as. 166 original records retain 552 fields and 133
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
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
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
    Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec,
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Response,
    Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec,
    Ros2Aimdk_msgsSrvExecuteActionResource_Request,
    Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec,
    Ros2Aimdk_msgsSrvExecuteActionResource_Response,
    Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec,
    Ros2Aimdk_msgsSrvGetAllJointState_Request,
    Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec,
    Ros2Aimdk_msgsSrvGetAllJointState_Response,
    Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec,
    Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
    Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec,
    Ros2Aimdk_msgsSrvGetCurrentInputSource_Response,
    Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec,
    Ros2Aimdk_msgsSrvGetHandType_Request,
    Ros2Aimdk_msgsSrvGetHandType_RequestCodec,
    Ros2Aimdk_msgsSrvGetHandType_Response,
    Ros2Aimdk_msgsSrvGetHandType_ResponseCodec,
    Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
    Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec,
    Ros2Aimdk_msgsSrvGetHdsEventHistory_Response,
    Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec,
    Ros2Aimdk_msgsSrvGetMcAction_Request,
    Ros2Aimdk_msgsSrvGetMcAction_RequestCodec,
    Ros2Aimdk_msgsSrvGetMcAction_Response,
    Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec,
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec,
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response,
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec,
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec,
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response,
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec,
    Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
    Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec,
    Ros2Aimdk_msgsSrvGetMicSourceRequest_Response,
    Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec,
    Ros2Aimdk_msgsSrvGetMute_Request,
    Ros2Aimdk_msgsSrvGetMute_RequestCodec,
    Ros2Aimdk_msgsSrvGetMute_Response,
    Ros2Aimdk_msgsSrvGetMute_ResponseCodec,
    Ros2Aimdk_msgsSrvGetRobotResources_Request,
    Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec,
    Ros2Aimdk_msgsSrvGetRobotResources_Response,
    Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec,
    Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
    Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec,
    Ros2Aimdk_msgsSrvGetStoredMapByName_Response,
    Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec,
    Ros2Aimdk_msgsSrvGetSystemState_Request,
    Ros2Aimdk_msgsSrvGetSystemState_RequestCodec,
    Ros2Aimdk_msgsSrvGetSystemState_Response,
    Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec,
    Ros2Aimdk_msgsSrvGetVolume_Request,
    Ros2Aimdk_msgsSrvGetVolume_RequestCodec,
    Ros2Aimdk_msgsSrvGetVolume_Response,
    Ros2Aimdk_msgsSrvGetVolume_ResponseCodec,
    Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
    Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec,
    Ros2Aimdk_msgsSrvGroupControlTimeSync_Response,
    Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec,
    Ros2Aimdk_msgsSrvMigrateSystemState_Request,
    Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec,
    Ros2Aimdk_msgsSrvMigrateSystemState_Response,
    Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec,
    Ros2Aimdk_msgsSrvPlayAudioFile_Request,
    Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec,
    Ros2Aimdk_msgsSrvPlayAudioFile_Response,
    Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec,
    Ros2Aimdk_msgsSrvPlayEmoji_Request,
    Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec,
    Ros2Aimdk_msgsSrvPlayEmoji_Response,
    Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec,
    Ros2Aimdk_msgsSrvPlayEmojiGroup_Request,
    Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec,
    Ros2Aimdk_msgsSrvPlayEmojiGroup_Response,
    Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec,
    Ros2Aimdk_msgsSrvPlayTts_Request,
    Ros2Aimdk_msgsSrvPlayTts_RequestCodec,
    Ros2Aimdk_msgsSrvPlayTts_Response,
    Ros2Aimdk_msgsSrvPlayTts_ResponseCodec,
    Ros2Aimdk_msgsSrvPlayVideo_Request,
    Ros2Aimdk_msgsSrvPlayVideo_RequestCodec,
    Ros2Aimdk_msgsSrvPlayVideo_Response,
    Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec,
    Ros2Aimdk_msgsSrvPlayVideoGroup_Request,
    Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec,
    Ros2Aimdk_msgsSrvPlayVideoGroup_Response,
    Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec,
    Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
    Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec,
    Ros2Aimdk_msgsSrvRequestAudioFocus_Response,
    Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec,
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec,
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response,
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec,
    Ros2Aimdk_msgsSrvSetMcAction_Request,
    Ros2Aimdk_msgsSrvSetMcAction_RequestCodec,
    Ros2Aimdk_msgsSrvSetMcAction_Response,
    Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec,
    Ros2Aimdk_msgsSrvSetMcInputSource_Request,
    Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec,
    Ros2Aimdk_msgsSrvSetMcInputSource_Response,
    Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec,
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
    Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec,
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Response,
    Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec,
    Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
    Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec,
    Ros2Aimdk_msgsSrvSetMicSourceRequest_Response,
    Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec,
    Ros2Aimdk_msgsSrvSetMute_Request,
    Ros2Aimdk_msgsSrvSetMute_RequestCodec,
    Ros2Aimdk_msgsSrvSetMute_Response,
    Ros2Aimdk_msgsSrvSetMute_ResponseCodec,
    Ros2Aimdk_msgsSrvSetPmuLed_Request,
    Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec,
    Ros2Aimdk_msgsSrvSetPmuLed_Response,
    Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec,
    Ros2Aimdk_msgsSrvSetVolume_Request,
    Ros2Aimdk_msgsSrvSetVolume_RequestCodec,
    Ros2Aimdk_msgsSrvSetVolume_Response,
    Ros2Aimdk_msgsSrvSetVolume_ResponseCodec,
    Ros2Aimdk_msgsSrvStopAudioPlay_Request,
    Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec,
    Ros2Aimdk_msgsSrvStopAudioPlay_Response,
    Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec,
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

/** Complete aimdk_msgs/srv/AbandonAudioFocus typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvAbandonAudioFocusClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec(),
            new Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request): bool => value.validValue(),
            285,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/AbandonAudioFocus incoming request/response owner. */
export class Ros2Aimdk_msgsSrvAbandonAudioFocusServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, Ros2Aimdk_msgsSrvAbandonAudioFocus_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodec(),
            new Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response): bool => value.validValue(),
            148,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/ExecuteActionResource typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvExecuteActionResourceClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvExecuteActionResource_Request, Ros2Aimdk_msgsSrvExecuteActionResource_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec(),
            new Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvExecuteActionResource_Request): bool => value.validValue(),
            152,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/ExecuteActionResource incoming request/response owner. */
export class Ros2Aimdk_msgsSrvExecuteActionResourceServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvExecuteActionResource_Request, Ros2Aimdk_msgsSrvExecuteActionResource_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodec(),
            new Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvExecuteActionResource_Response): bool => value.validValue(),
            936,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetAllJointState typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetAllJointStateClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetAllJointState_Request, Ros2Aimdk_msgsSrvGetAllJointState_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetAllJointState_Request): bool => value.validValue(),
            2696,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetAllJointState incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetAllJointStateServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetAllJointState_Request, Ros2Aimdk_msgsSrvGetAllJointState_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetAllJointState_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetCurrentInputSource typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSourceClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request): bool => value.validValue(),
            168,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetCurrentInputSource incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSourceServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, Ros2Aimdk_msgsSrvGetCurrentInputSource_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetHandType typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetHandTypeClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvGetHandType_Request, Ros2Aimdk_msgsSrvGetHandType_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetHandType_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetHandType_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetHandType_Request): bool => value.validValue(),
            154,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetHandType incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetHandTypeServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvGetHandType_Request, Ros2Aimdk_msgsSrvGetHandType_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetHandType_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetHandType_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetHandType_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetHdsEventHistory typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetHdsEventHistoryClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Request): bool => value.validValue(),
            1277,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetHdsEventHistory incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetHdsEventHistoryServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, Ros2Aimdk_msgsSrvGetHdsEventHistory_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Response): bool => value.validValue(),
            4398,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMcAction typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetMcActionClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvGetMcAction_Request, Ros2Aimdk_msgsSrvGetMcAction_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetMcAction_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMcAction_Request): bool => value.validValue(),
            156,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMcAction incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetMcActionServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvGetMcAction_Request, Ros2Aimdk_msgsSrvGetMcAction_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetMcAction_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMcAction_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMcLocomotionSpeedStatus typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatusClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request, Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request): bool => value.validValue(),
            328,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMcLocomotionSpeedStatus incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatusServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request, Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMcPresetMotionState typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetMcPresetMotionStateClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request, Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request): bool => value.validValue(),
            28,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMcPresetMotionState incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetMcPresetMotionStateServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request, Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response): bool => value.validValue(),
            16,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMicSourceRequest typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetMicSourceRequestClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request): bool => value.validValue(),
            156,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMicSourceRequest incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetMicSourceRequestServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, Ros2Aimdk_msgsSrvGetMicSourceRequest_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMute typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetMuteClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvGetMute_Request, Ros2Aimdk_msgsSrvGetMute_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetMute_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMute_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMute_Request): bool => value.validValue(),
            153,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetMute incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetMuteServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvGetMute_Request, Ros2Aimdk_msgsSrvGetMute_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetMute_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetMute_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetMute_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetRobotResources typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetRobotResourcesClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetRobotResources_Request, Ros2Aimdk_msgsSrvGetRobotResources_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetRobotResources_Request): bool => value.validValue(),
            10236,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetRobotResources incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetRobotResourcesServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetRobotResources_Request, Ros2Aimdk_msgsSrvGetRobotResources_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetRobotResources_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetRobotResources_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetStoredMapByName typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetStoredMapByNameClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetStoredMapByName_Request, Ros2Aimdk_msgsSrvGetStoredMapByName_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetStoredMapByName_Request): bool => value.validValue(),
            3400,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetStoredMapByName incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetStoredMapByNameServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetStoredMapByName_Request, Ros2Aimdk_msgsSrvGetStoredMapByName_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetStoredMapByName_Response): bool => value.validValue(),
            272,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetSystemState typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetSystemStateClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGetSystemState_Request, Ros2Aimdk_msgsSrvGetSystemState_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetSystemState_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetSystemState_Request): bool => value.validValue(),
            285,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetSystemState incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetSystemStateServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGetSystemState_Request, Ros2Aimdk_msgsSrvGetSystemState_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetSystemState_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetSystemState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetSystemState_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetVolume typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGetVolumeClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvGetVolume_Request, Ros2Aimdk_msgsSrvGetVolume_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGetVolume_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetVolume_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetVolume_Request): bool => value.validValue(),
            156,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GetVolume incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGetVolumeServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvGetVolume_Request, Ros2Aimdk_msgsSrvGetVolume_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGetVolume_RequestCodec(),
            new Ros2Aimdk_msgsSrvGetVolume_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGetVolume_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GroupControlTimeSync typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvGroupControlTimeSyncClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec(),
            new Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Request): bool => value.validValue(),
            288,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/GroupControlTimeSync incoming request/response owner. */
export class Ros2Aimdk_msgsSrvGroupControlTimeSyncServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, Ros2Aimdk_msgsSrvGroupControlTimeSync_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodec(),
            new Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Response): bool => value.validValue(),
            540,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/MigrateSystemState typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvMigrateSystemStateClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvMigrateSystemState_Request, Ros2Aimdk_msgsSrvMigrateSystemState_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec(),
            new Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvMigrateSystemState_Request): bool => value.validValue(),
            152,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/MigrateSystemState incoming request/response owner. */
export class Ros2Aimdk_msgsSrvMigrateSystemStateServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvMigrateSystemState_Request, Ros2Aimdk_msgsSrvMigrateSystemState_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodec(),
            new Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvMigrateSystemState_Response): bool => value.validValue(),
            140,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayAudioFile typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvPlayAudioFileClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvPlayAudioFile_Request, Ros2Aimdk_msgsSrvPlayAudioFile_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayAudioFile_Request): bool => value.validValue(),
            152,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayAudioFile incoming request/response owner. */
export class Ros2Aimdk_msgsSrvPlayAudioFileServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvPlayAudioFile_Request, Ros2Aimdk_msgsSrvPlayAudioFile_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayAudioFile_Response): bool => value.validValue(),
            693,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayEmoji typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvPlayEmojiClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvPlayEmoji_Request, Ros2Aimdk_msgsSrvPlayEmoji_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayEmoji_Request): bool => value.validValue(),
            285,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayEmoji incoming request/response owner. */
export class Ros2Aimdk_msgsSrvPlayEmojiServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvPlayEmoji_Request, Ros2Aimdk_msgsSrvPlayEmoji_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayEmoji_Response): bool => value.validValue(),
            14,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayEmojiGroup typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvPlayEmojiGroupClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Request): bool => value.validValue(),
            285,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayEmojiGroup incoming request/response owner. */
export class Ros2Aimdk_msgsSrvPlayEmojiGroupServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, Ros2Aimdk_msgsSrvPlayEmojiGroup_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Response): bool => value.validValue(),
            273,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayTts typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvPlayTtsClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvPlayTts_Request, Ros2Aimdk_msgsSrvPlayTts_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvPlayTts_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayTts_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayTts_Request): bool => value.validValue(),
            691,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayTts incoming request/response owner. */
export class Ros2Aimdk_msgsSrvPlayTtsServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvPlayTts_Request, Ros2Aimdk_msgsSrvPlayTts_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvPlayTts_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayTts_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayTts_Response): bool => value.validValue(),
            410,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayVideo typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvPlayVideoClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvPlayVideo_Request, Ros2Aimdk_msgsSrvPlayVideo_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvPlayVideo_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayVideo_Request): bool => value.validValue(),
            285,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayVideo incoming request/response owner. */
export class Ros2Aimdk_msgsSrvPlayVideoServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvPlayVideo_Request, Ros2Aimdk_msgsSrvPlayVideo_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvPlayVideo_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayVideo_Response): bool => value.validValue(),
            145,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayVideoGroup typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvPlayVideoGroupClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvPlayVideoGroup_Request, Ros2Aimdk_msgsSrvPlayVideoGroup_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayVideoGroup_Request): bool => value.validValue(),
            285,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/PlayVideoGroup incoming request/response owner. */
export class Ros2Aimdk_msgsSrvPlayVideoGroupServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvPlayVideoGroup_Request, Ros2Aimdk_msgsSrvPlayVideoGroup_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodec(),
            new Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvPlayVideoGroup_Response): bool => value.validValue(),
            2129,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/RequestAudioFocus typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvRequestAudioFocusClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvRequestAudioFocus_Request, Ros2Aimdk_msgsSrvRequestAudioFocus_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec(),
            new Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvRequestAudioFocus_Request): bool => value.validValue(),
            285,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/RequestAudioFocus incoming request/response owner. */
export class Ros2Aimdk_msgsSrvRequestAudioFocusServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvRequestAudioFocus_Request, Ros2Aimdk_msgsSrvRequestAudioFocus_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodec(),
            new Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvRequestAudioFocus_Response): bool => value.validValue(),
            148,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetAgentPropertiesRequest typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request, Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request): bool => value.validValue(),
            152,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetAgentPropertiesRequest incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequestServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request, Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response): bool => value.validValue(),
            544,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMcAction typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetMcActionClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvSetMcAction_Request, Ros2Aimdk_msgsSrvSetMcAction_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetMcAction_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMcAction_Request): bool => value.validValue(),
            152,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMcAction incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetMcActionServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvSetMcAction_Request, Ros2Aimdk_msgsSrvSetMcAction_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetMcAction_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMcAction_Response): bool => value.validValue(),
            276,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMcInputSource typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetMcInputSourceClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvSetMcInputSource_Request, Ros2Aimdk_msgsSrvSetMcInputSource_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMcInputSource_Request): bool => value.validValue(),
            28,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMcInputSource incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetMcInputSourceServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvSetMcInputSource_Request, Ros2Aimdk_msgsSrvSetMcInputSource_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMcInputSource_Response): bool => value.validValue(),
            152,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMcPresetMotion typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotionClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request): bool => value.validValue(),
            28,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMcPresetMotion incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotionServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, Ros2Aimdk_msgsSrvSetMcPresetMotion_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response): bool => value.validValue(),
            297,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMicSourceRequest typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetMicSourceRequestClient extends
    BoundedServiceClient<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request): bool => value.validValue(),
            152,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMicSourceRequest incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetMicSourceRequestServer extends
    BoundedServiceServer<Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, Ros2Aimdk_msgsSrvSetMicSourceRequest_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response): bool => value.validValue(),
            12,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMute typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetMuteClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvSetMute_Request, Ros2Aimdk_msgsSrvSetMute_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetMute_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMute_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMute_Request): bool => value.validValue(),
            153,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetMute incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetMuteServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvSetMute_Request, Ros2Aimdk_msgsSrvSetMute_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetMute_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetMute_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetMute_Response): bool => value.validValue(),
            9,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetPmuLed typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetPmuLedClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvSetPmuLed_Request, Ros2Aimdk_msgsSrvSetPmuLed_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetPmuLed_Request): bool => value.validValue(),
            18,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetPmuLed incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetPmuLedServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvSetPmuLed_Request, Ros2Aimdk_msgsSrvSetPmuLed_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetPmuLed_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetPmuLed_Response): bool => value.validValue(),
            149,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetVolume typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvSetVolumeClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvSetVolume_Request, Ros2Aimdk_msgsSrvSetVolume_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvSetVolume_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetVolume_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetVolume_Request): bool => value.validValue(),
            156,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/SetVolume incoming request/response owner. */
export class Ros2Aimdk_msgsSrvSetVolumeServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvSetVolume_Request, Ros2Aimdk_msgsSrvSetVolume_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvSetVolume_RequestCodec(),
            new Ros2Aimdk_msgsSrvSetVolume_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvSetVolume_Response): bool => value.validValue(),
            12,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/StopAudioPlay typed call and real-submit client. */
export class Ros2Aimdk_msgsSrvStopAudioPlayClient extends BoundedServiceClient<Ros2Aimdk_msgsSrvStopAudioPlay_Request, Ros2Aimdk_msgsSrvStopAudioPlay_Response>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            2,
            alias,
            new Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec(),
            new Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvStopAudioPlay_Request): bool => value.validValue(),
            152,
            observerAlias,
            capacity,
        );
    }
}

/** Complete aimdk_msgs/srv/StopAudioPlay incoming request/response owner. */
export class Ros2Aimdk_msgsSrvStopAudioPlayServer extends BoundedServiceServer<Ros2Aimdk_msgsSrvStopAudioPlay_Request, Ros2Aimdk_msgsSrvStopAudioPlay_Response>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            2,
            advertise,
            respond,
            new Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodec(),
            new Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodec(),
            (value: Ros2Aimdk_msgsSrvStopAudioPlay_Response): bool => value.validValue(),
            8,
            capacity,
        );
    }
}
