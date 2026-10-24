// @file bounded_interfaces.mjs
// @brief Full agibot js codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_2_main values in js. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
/**
 * Generated custom RPC owners. All aliases must be explicitly granted by the host.
 * Callers own each facade and must inspect closeChecked()/revokeChecked(). No
 * builtin service/action factory, native thread, timer or implicit retry is used.
 * Place beside bounded_records.mjs under sdk/origin/custom-types/<generated-directory>.
 * Relocation requires updating only the SDK module imports below.
 */
import {Status, RosError, Session, Capability} from 'ros/js/roswasm.mjs';
import {EventKind, EventBinding} from 'ros/js/events.mjs';
import * as records from './bounded_records.mjs';
const empty = new Uint8Array(), MAX_SLOTS = 1024;
const apply = Reflect.apply, openCapability = Session.prototype.open;
const closeCapability = Capability.prototype.close, revokeCapability = Capability.prototype.revoke;
const noArgs = Object.freeze([]);

function invalid(message = 'invalid custom RPC envelope')
{
    throw new RosError(Status.INVALID, message);
}

function checked(reply, operation)
{
    if(reply.status)
    {
        const error = new RosError(reply.status, operation);
        error.required = reply.required;
        throw error;
    }
    return reply.bytes;
}

function zero(reply, operation)
{
    if(checked(reply, operation).length)
        invalid();
}

function idBytes(id, allowZero = false)
{
    if(typeof id !== 'bigint' || id < 0n || id > 0xffffffffffffffffn || (!allowZero && !id))
        invalid();
    const b = new Uint8Array(8);
    new DataView(b.buffer).setBigUint64(0, id, true);
    return b;
}

function readId(bytes)
{
    if(bytes.length < 8)
        invalid();
    const id = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength).getBigUint64(0, true);
    if(!id)
        invalid();
    return id;
}

function framed(id, body, kind = null)
{
    const prefix = idBytes(id), out = new Uint8Array(body.length + (kind === null ? 8 : 9));
    out.set(prefix);
    if(kind !== null)
        out[8] = kind;
    out.set(body, kind === null ? 8 : 9);
    return out;
}

function decode(codec, bytes)
{
    try
    {
        return codec.decode(bytes);
    }
    catch(error)
    {
        if(error instanceof RosError)
            throw error;
        const failure = new RosError(Status.INVALID, 'custom component decode');
        failure.cause = error;
        throw failure;
    }
}

function slots(count)
{
    if(!Number.isInteger(count) || count < 1 || count > MAX_SLOTS)
        invalid('bounded local owner capacity');
    return count;
}

/**
 * Constructor failures always use this preallocated carrier. primaryKnown and
 * primary retain the original thrown value, including null/undefined/false/0
 * and frozen objects; the original object is never modified. cleanupThrew is
 * independent of cleanupException. diagnostics() returns copied facts only.
 * retryCleanup() retries retained local preflight owners, never an owner whose
 * genuine SDK lifetime already entered close/revoke. No RPC is replayed.
 */
export class RpcConstructionFailure extends Error
{
    #retry;
    #inspect;

    constructor(retry, inspect)
    {
        super('Custom RPC construction failed; inspect primary and cleanup facts');
        this.name = 'RpcConstructionFailure';
        this.primaryKnown = false;
        this.primary = undefined;
        this.cleanup = null;
        this.cleanupAttempted = false;
        this.cleanupCalls = 0;
        this.cleanupReturned = false;
        this.cleanupThrew = false;
        this.cleanupException = undefined;
        this.#retry = retry;
        this.#inspect = inspect;
    }

    retryCleanup()
    {
        return this.#retry();
    }

    diagnostics()
    {
        return this.#inspect();
    }
}

function ownerFact(role, alias)
{
    return {
        role,
        alias,
        handle : null,
        acquired : false,
        openInvoked : false,
        openReturned : false,
        openThrew : false,
        openException : undefined,
        duplicateOf : null,
        calls : 0,
        invoked : false,
        inFlight : false,
        attempted : false,
        returned : false,
        status : null,
        threw : false,
        exception : undefined,
        retained : false,
        externallyClosed : false,
        failureKnown : false,
        firstFailureThrew : false,
        firstFailureStatus : null,
        firstFailureException : undefined
    };
}

function copyFact(row)
{
    return {...row};
}

function failedFact(row, threw, status, error)
{
    if(!row.failureKnown)
    {
        row.failureKnown = true;
        row.firstFailureThrew = threw;
        row.firstFailureStatus = status;
        row.firstFailureException = error;
    }
}

function cleanupCode(row)
{
    if(row.firstFailureThrew)
        return Status.INVALID;
    const value = row.firstFailureStatus;
    return Number.isInteger(value) && value > 0 ? value : Status.INVALID;
}

/**
 * Private capabilities are never returned to a handler. A local busy lease
 * spans poll/decode/callback/await/respond; callback exceptions release it in
 * finally and leave the already delivered ticket available for manual response.
 * Construction opens all distinct roles before advertising. Rollback closes
 * each acquired owner once and preserves the original refusal and cleanup facts.
 */
class Owners
{
    #caps;
    #rows;
    #failure;
    #busy = false;
    #cleaning = false;

    constructor(session, version, aliases)
    {
        if(!(session instanceof Session) || session.version !== version)
            throw new RosError(Status.INVALID, 'selected genuine ROS Session/backend');
        if(!Array.isArray(aliases) || !aliases.length || aliases.some(a => typeof a !== 'string' || !a.length || a.includes('\0')) ||
           new Set(aliases).size !== aliases.length)
            invalid('distinct explicit role aliases');
        // All owner slots, per-role call arguments and the failure carrier exist
        // before the first open. A returned owner is stored before later checks.
        this.#caps = new Array(aliases.length).fill(null);
        this.#rows = aliases.map((alias, i) => ownerFact(i, alias));
        const argumentsByRole = aliases.map(alias => [alias]);
        const duplicate = new RosError(Status.CONFLICT, 'duplicate role handle');
        this.#failure = new RpcConstructionFailure(() => this.#retryCleanup(), () => this.diagnostics());
        try
        {
            for(let i = 0; i < aliases.length; ++i)
            {
                const row = this.#rows[i];
                row.openInvoked = true;
                try
                {
                    this.#caps[i] = apply(openCapability, session, argumentsByRole[i]);
                    row.openReturned = true;
                }
                catch(error)
                {
                    row.openThrew = true;
                    row.openException = error;
                    throw error;
                }
                row.acquired = true;
                row.retained = true;
                row.handle = this.#caps[i].handle;
                for(let j = 0; j < i; ++j)
                    if(this.#rows[j].acquired && this.#rows[j].handle === row.handle)
                    {
                        row.duplicateOf = j;
                        throw duplicate;
                    }
            }
        }
        catch(error)
        {
            this.fail(error);
        }
    }

    cap(i)
    {
        if(this.#cleaning)
            throw new RosError(Status.CONFLICT, 'active custom cleanup');
        const cap = this.#caps[i];
        if(!cap || cap.closed)
            throw new RosError(Status.BAD_HANDLE, 'retired custom RPC owner');
        return cap;
    }

    check()
    {
        if(this.#busy || this.#cleaning)
            throw new RosError(Status.CONFLICT, 'active custom callback/cleanup');
        this.cap(0);
    }

    enter()
    {
        this.check();
        this.#busy = true;
    }

    leave()
    {
        this.#busy = false;
    }

    #refresh()
    {
        for(let i = 0; i < this.#caps.length; ++i)
        {
            const cap = this.#caps[i];
            if(cap !== null)
            {
                const row = this.#rows[i];
                row.retained = !cap.closed;
                if(cap.closed && row.invoked)
                    row.attempted = true;
            }
        }
    }

    diagnostics()
    {
        this.#refresh();
        return Object.freeze(this.#rows.map(row => Object.freeze(copyFact(row))));
    }

    #retryCleanup()
    {
        const failure = this.#failure;
        failure.cleanupAttempted = true;
        failure.cleanupCalls += 1;
        try
        {
            failure.cleanup = this.cleanup(failure.primary);
            failure.cleanupReturned = true;
            return failure.cleanup;
        }
        catch(error)
        {
            if(!failure.cleanupThrew)
                failure.cleanupException = error;
            failure.cleanupThrew = true;
            throw error;
        }
    }

    fail(primary)
    {
        const failure = this.#failure;
        failure.primaryKnown = true;
        failure.primary = primary;
        try
        {
            this.#retryCleanup();
        }
        catch
        { /* Same carrier retains independent cleanup exception. */
        }
        throw failure;
    }

    cleanup(primary = 0, revoke = false)
    {
        // Allocate every output slot before any cleanup delegate. The private
        // lifetime ledger survives a later snapshot/freeze allocation failure.
        this.#refresh();
        const statuses = this.#rows.map(copyFact);
        const report = {
            primary,
            cleanupError : 0,
            cleanupThrew : false,
            cleanupException : undefined,
            blocked : this.#busy || this.#cleaning,
            invoked : 0,
            attempted : 0,
            failed : 0,
            retained : 0,
            statuses
        };
        if(report.blocked)
        {
            report.cleanupError = Status.CONFLICT;
        }
        else
        {
            this.#cleaning = true;
            try
            {
                for(let i = this.#caps.length - 1; i >= 0; --i)
                {
                    const cap = this.#caps[i], row = this.#rows[i];
                    if(cap === null)
                        continue;
                    if(cap.closed)
                    {
                        row.externallyClosed = !row.attempted;
                        row.retained = false;
                        continue;
                    }
                    // A duplicate raw handle cannot be made retired by writing the SDK's
                    // read-only closed mirror or by issuing an ambiguous second close.
                    if(row.duplicateOf !== null)
                    {
                        row.retained = true;
                        failedFact(row, false, Status.CONFLICT, undefined);
                        continue;
                    }
                    row.calls += 1;
                    row.invoked = true;
                    row.inFlight = true;
                    row.returned = false;
                    row.status = null;
                    row.threw = false;
                    row.exception = undefined;
                    report.invoked += 1;
                    try
                    {
                        row.status = apply(revoke ? revokeCapability : closeCapability, cap, noArgs);
                        row.returned = true;
                    }
                    catch(error)
                    {
                        row.threw = true;
                        row.exception = error;
                    }
                    finally
                    {
                        row.inFlight = false;
                        row.attempted = cap.closed;
                        row.retained = !cap.closed;
                        if(row.attempted)
                            report.attempted += 1;
                    }
                    if(row.threw || row.status !== 0)
                        failedFact(row, row.threw, row.status, row.exception);
                }
            }
            finally
            {
                this.#cleaning = false;
            }
        }
        for(let i = 0; i < this.#rows.length; ++i)
        {
            const row = this.#rows[i];
            if(row.retained)
                report.retained += 1;
            if(row.failureKnown)
            {
                report.failed += 1;
                if(report.cleanupError === 0)
                    report.cleanupError = cleanupCode(row);
                if(row.firstFailureThrew && !report.cleanupThrew)
                {
                    report.cleanupThrew = true;
                    report.cleanupException = row.firstFailureException;
                }
            }
            Object.assign(statuses[i], row);
            Object.freeze(statuses[i]);
        }
        Object.freeze(statuses);
        return Object.freeze(report);
    }
}

/**
 * Typed service source with optional independently granted completion observer.
 * observerAlias=null provides synchronous calls only. submit() always uses the
 * real service_submit import; it never defers a blocking call. Its ID indicates
 * admission, not completion. This facade exclusively polls its fresh observer.
 * Completion bodies are decoded by the existing SDK envelope decoder first.
 */
class TypedServiceClient
{
    #owners;
    #request;
    #response;
    #limit;
    #pending = new Set();
    #binding = null;
    #version;

    constructor(session, version, alias, request, response, observerAlias = null, capacity = 8)
    {
        this.#limit = slots(capacity);
        this.#request = request;
        this.#response = response;
        this.#version = version;
        this.#owners = new Owners(session, version, observerAlias === null ? [ alias ] : [ alias, observerAlias ]);
        try
        {
            if(observerAlias !== null)
                this.#binding = new EventBinding(version, this.#owners.cap(0).handle);
        }
        catch(error)
        {
            this.#owners.fail(error);
        }
    }

    call(value)
    {
        this.#owners.check();
        return decode(this.#response, checked(this.#owners.cap(0).request('service_call', this.#request.encode(value)), 'service_call'));
    }

    submit(value)
    {
        this.#owners.check();
        if(!this.#binding)
            throw new RosError(Status.DENIED, 'explicit completion observer required');
        if(this.#pending.size === this.#limit)
            throw new RosError(Status.TOO_LARGE, 'pending service capacity');
        const admitted = this.#owners.cap(0).submitService(this.#owners.cap(1), this.#request.encode(value));
        if(admitted.status)
            throw new RosError(admitted.status, 'service_submit');
        const id = admitted.requestId;
        if(typeof id !== 'bigint' || !id || this.#pending.has(id))
            invalid('nonzero unique admitted request ID');
        this.#pending.add(id);
        return id;
    }

    pollCompletion()
    {
        this.#owners.check();
        if(!this.#binding)
            throw new RosError(Status.DENIED, 'explicit completion observer required');
        const bytes = checked(this.#owners.cap(1).pollEventV1(), 'event_poll_v1'), event = decode(this.#binding, bytes);
        if(event.kind === EventKind.RESOURCE_CLOSED)
        {
            throw new RosError(Status.BAD_HANDLE, 'service source retired; pending requests remain observable');
        }
        if(!this.#pending.has(event.correlation))
            invalid('foreign service correlation');
        if(event.kind === EventKind.RESOURCE_ERROR)
        {
            this.#pending.delete(event.correlation);
            return Object.freeze({requestId : event.correlation, error : event.error, value : null, event});
        }
        if(event.kind !== EventKind.SERVICE_RESPONSE)
            invalid('service completion kind');
        const value = decode(this.#response, event.body);
        this.#pending.delete(event.correlation);
        return Object.freeze({requestId : event.correlation, error : 0, value, event});
    }

    closeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary);
        if(!r.blocked && r.retained === 0)
            this.#pending.clear();
        return r;
    }

    revokeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary, true);
        if(!r.blocked && r.retained === 0)
            this.#pending.clear();
        return r;
    }
}

/**
 * Two separate advertise/respond grants; response IDs must have been polled
 * by this owner. Successful response removes one ID; malformed values and host
 * refusal retain it. Host ownership, deadline and revocation remain mandatory.
 */
class TypedServer
{
    #owners;
    #input;
    #output;
    #feedback;
    #action;
    #live = new Set();
    #limit;

    constructor(session, version, advertise, respond, input, output, action, capacity = 8, feedback = null)
    {
        this.#limit = slots(capacity);
        this.#input = input;
        this.#output = output;
        this.#feedback = feedback;
        this.#action = action;
        this.#owners = new Owners(session, version, [ advertise, respond ]);
        try
        {
            if(action)
                zero(this.#owners.cap(0).request('action_advertise'), 'action_advertise');
            else
            {
                const c = this.#owners.cap(0), code = c.session.raw.service_advertise(c.handle);
                if(code)
                    throw new RosError(code, 'service_advertise');
            }
        }
        catch(error)
        {
            this.#owners.fail(error);
        }
    }

    #poll()
    {
        if(this.#live.size === this.#limit)
            throw new RosError(Status.TOO_LARGE, 'incoming ticket capacity');
        const body = checked(this.#owners.cap(0).poll(), 'event_poll'), id = readId(body);
        if(this.#live.has(id))
            invalid('duplicate incoming ID');
        const value = decode(this.#input, body.subarray(8));
        this.#live.add(id);
        return Object.freeze({id, value});
    }

    pollOnce()
    {
        this.#owners.check();
        return this.#poll();
    }

    respond(id, value, kind = null)
    {
        if(!this.#live.has(id))
            throw new RosError(Status.BAD_HANDLE, 'foreign or completed ticket');
        if(this.#action)
        {
            if(!Number.isInteger(kind) || kind < 1 || kind > 4)
                invalid('action response kind');
        }
        else if(kind !== null)
            invalid();
        const codec = this.#action && kind === 1 ? this.#feedback : this.#output;
        zero(this.#owners.cap(1).request(this.#action ? 'action_respond' : 'service_respond', framed(id, codec.encode(value), kind)),
             this.#action ? 'action_respond' : 'service_respond');
        if(!this.#action || kind !== 1)
            this.#live.delete(id);
    }

    async spinOnce(handler)
    {
        if(typeof handler !== 'function')
            invalid('local typed handler required');
        this.#owners.enter();
        try
        {
            const incoming = this.#poll(), value = await handler(incoming.value, incoming.id);
            if(!this.#action)
                this.respond(incoming.id, value);
            return incoming;
        }
        finally
        {
            this.#owners.leave();
        }
    }

    closeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary);
        if(!r.blocked && r.retained === 0)
            this.#live.clear();
        return r;
    }

    revokeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary, true);
        if(!r.blocked && r.retained === 0)
            this.#live.clear();
        return r;
    }
}

/**
 * Custom action client: send/cancel-own/feedback/result are distinct aliases;
 * cancel-any is optional and never inferred from cancel-own. Cancellation ACK
 * does not retire a local goal. Only a validated terminal result does so.
 */
class TypedActionClient
{
    #owners;
    #goal;
    #feedback;
    #result;
    #goals = new Set();
    #limit;
    #any;

    constructor(session, version, aliases, goal, result, feedback, capacity = 8)
    {
        const keys = [ 'send', 'cancelOwn', 'feedback', 'result' ];
        if(!aliases || Object.keys(aliases).some(k => ![...keys, 'cancelAny'].includes(k)))
            invalid('explicit action roles');
        this.#limit = slots(capacity);
        this.#goal = goal;
        this.#feedback = feedback;
        this.#result = result;
        this.#any = aliases.cancelAny !== undefined;
        this.#owners = new Owners(session, version, [...keys.map(k => aliases[k]), ...(this.#any ? [ aliases.cancelAny ] : []) ]);
    }

    #owns(id)
    {
        idBytes(id);
        if(!this.#goals.has(id))
            throw new RosError(Status.BAD_HANDLE, 'foreign goal');
    }

    sendGoal(value)
    {
        this.#owners.check();
        if(this.#goals.size === this.#limit)
            throw new RosError(Status.TOO_LARGE, 'goal capacity');
        const b = checked(this.#owners.cap(0).request('action_send_goal', this.#goal.encode(value)), 'action_send_goal');
        if(b.length !== 8)
            invalid();
        const id = readId(b);
        if(this.#goals.has(id))
            invalid('duplicate goal');
        this.#goals.add(id);
        return id;
    }

    cancelOwn(id)
    {
        this.#owners.check();
        this.#owns(id);
        const b = checked(this.#owners.cap(1).request('action_cancel_own_goal', idBytes(id)), 'action_cancel_own_goal');
        if(b.length !== 1 || b[0] > 1)
            invalid();
        return b[0] === 1;
    }

    cancelAny(id)
    {
        this.#owners.check();
        if(!this.#any)
            throw new RosError(Status.DENIED, 'cancel-any grant required');
        const b = checked(this.#owners.cap(4).request('action_cancel_any_goal', idBytes(id, true)), 'action_cancel_any_goal');
        if(b.length !== 1 || b[0] > 1)
            invalid();
        return b[0] === 1;
    }

    cancelAll()
    {
        return this.cancelAny(0n);
    }

    feedback(id)
    {
        this.#owners.check();
        this.#owns(id);
        const b = checked(this.#owners.cap(2).request('action_receive_feedback', idBytes(id)), 'action_receive_feedback');
        if(readId(b) !== id)
            invalid();
        return decode(this.#feedback, b.subarray(8));
    }

    result(id)
    {
        this.#owners.check();
        this.#owns(id);
        const b = checked(this.#owners.cap(3).request('action_receive_result', idBytes(id)), 'action_receive_result');
        if(b.length < 9 || readId(b) !== id || b[8] < 2 || b[8] > 4)
            invalid();
        const value = decode(this.#result, b.subarray(9));
        this.#goals.delete(id);
        return Object.freeze({id, kind : b[8], value});
    }

    closeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary);
        if(!r.blocked && r.retained === 0)
            this.#goals.clear();
        return r;
    }

    revokeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary, true);
        if(!r.blocked && r.retained === 0)
            this.#goals.clear();
        return r;
    }
}

/** Complete aimdk_msgs/srv/GetAllJointState typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvGetAllJointStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetAllJointState typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvGetAllJointStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetCurrentInputSource typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSourceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetCurrentInputSource typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSourceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetHandType typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvGetHandTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvGetHandType_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetHandType_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetHandType typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvGetHandTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvGetHandType_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetHandType_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetMcAction typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvGetMcActionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvGetMcAction_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetMcAction typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvGetMcActionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvGetMcAction_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/GetMute typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvGetMuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Aimdk_msgsSrvGetMute_RequestCodec, records.Ros2Aimdk_msgsSrvGetMute_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete aimdk_msgs/srv/GetMute typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvGetMuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Aimdk_msgsSrvGetMute_RequestCodec, records.Ros2Aimdk_msgsSrvGetMute_ResponseCodec, false, capacity);
    }
}

/** Complete aimdk_msgs/srv/GetVolume typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvGetVolumeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Aimdk_msgsSrvGetVolume_RequestCodec, records.Ros2Aimdk_msgsSrvGetVolume_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete aimdk_msgs/srv/GetVolume typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvGetVolumeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvGetVolume_RequestCodec,
              records.Ros2Aimdk_msgsSrvGetVolume_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/LedStripCommand typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvLedStripCommandClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec,
              records.Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/LedStripCommand typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvLedStripCommandServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec,
              records.Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayEmoji typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvPlayEmojiClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec, records.Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayEmoji typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvPlayEmojiServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec,
              records.Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayMediaFile typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvPlayMediaFileClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec,
              records.Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayMediaFile typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvPlayMediaFileServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec,
              records.Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayTts typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvPlayTtsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Aimdk_msgsSrvPlayTts_RequestCodec, records.Ros2Aimdk_msgsSrvPlayTts_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayTts typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvPlayTtsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Aimdk_msgsSrvPlayTts_RequestCodec, records.Ros2Aimdk_msgsSrvPlayTts_ResponseCodec, false, capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayVideo typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvPlayVideoClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Aimdk_msgsSrvPlayVideo_RequestCodec, records.Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete aimdk_msgs/srv/PlayVideo typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvPlayVideoServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvPlayVideo_RequestCodec,
              records.Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetAgentPropertiesRequest typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequestClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetAgentPropertiesRequest typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequestServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMcAction typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvSetMcActionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvSetMcAction_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMcAction typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvSetMcActionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvSetMcAction_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMcInputSource typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvSetMcInputSourceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMcInputSource typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvSetMcInputSourceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMcPresetMotion typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMcPresetMotion typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMute typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvSetMuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Aimdk_msgsSrvSetMute_RequestCodec, records.Ros2Aimdk_msgsSrvSetMute_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete aimdk_msgs/srv/SetMute typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvSetMuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Aimdk_msgsSrvSetMute_RequestCodec, records.Ros2Aimdk_msgsSrvSetMute_ResponseCodec, false, capacity);
    }
}

/** Complete aimdk_msgs/srv/SetVolume typed client; optional observer is independently granted. */
export class Ros2Aimdk_msgsSrvSetVolumeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Aimdk_msgsSrvSetVolume_RequestCodec, records.Ros2Aimdk_msgsSrvSetVolume_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete aimdk_msgs/srv/SetVolume typed server; callback replacement is caller-managed. */
export class Ros2Aimdk_msgsSrvSetVolumeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Aimdk_msgsSrvSetVolume_RequestCodec,
              records.Ros2Aimdk_msgsSrvSetVolume_ResponseCodec,
              false,
              capacity);
    }
}
