// @file bounded_interfaces.mjs
// @brief Full leju js codecs and original record metadata.
// @details Complete leju ros1_main_platform values in js. 532 original records retain 1587 fields and 378 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/leju/en_US/catalog/.
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

/** Complete easy_handeye_msgs/CheckStartingPose typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsCheckStartingPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsCheckStartingPoseRequestCodec,
              records.Ros1Easy_handeye_msgsCheckStartingPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/CheckStartingPose typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsCheckStartingPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsCheckStartingPoseRequestCodec,
              records.Ros1Easy_handeye_msgsCheckStartingPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/ComputeCalibration typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsComputeCalibrationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsComputeCalibrationRequestCodec,
              records.Ros1Easy_handeye_msgsComputeCalibrationResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/ComputeCalibration typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsComputeCalibrationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsComputeCalibrationRequestCodec,
              records.Ros1Easy_handeye_msgsComputeCalibrationResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/EnumerateTargetPoses typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsEnumerateTargetPosesClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodec,
              records.Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/EnumerateTargetPoses typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsEnumerateTargetPosesServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodec,
              records.Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/ExecutePlan typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsExecutePlanClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsExecutePlanRequestCodec,
              records.Ros1Easy_handeye_msgsExecutePlanResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/ExecutePlan typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsExecutePlanServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsExecutePlanRequestCodec,
              records.Ros1Easy_handeye_msgsExecutePlanResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/ListAlgorithms typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsListAlgorithmsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsListAlgorithmsRequestCodec,
              records.Ros1Easy_handeye_msgsListAlgorithmsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/ListAlgorithms typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsListAlgorithmsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsListAlgorithmsRequestCodec,
              records.Ros1Easy_handeye_msgsListAlgorithmsResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/PlanToSelectedTargetPose typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodec,
              records.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/PlanToSelectedTargetPose typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsPlanToSelectedTargetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodec,
              records.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/RemoveSample typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsRemoveSampleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsRemoveSampleRequestCodec,
              records.Ros1Easy_handeye_msgsRemoveSampleResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/RemoveSample typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsRemoveSampleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsRemoveSampleRequestCodec,
              records.Ros1Easy_handeye_msgsRemoveSampleResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/SelectTargetPose typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsSelectTargetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsSelectTargetPoseRequestCodec,
              records.Ros1Easy_handeye_msgsSelectTargetPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/SelectTargetPose typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsSelectTargetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsSelectTargetPoseRequestCodec,
              records.Ros1Easy_handeye_msgsSelectTargetPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/SetAlgorithm typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsSetAlgorithmClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsSetAlgorithmRequestCodec,
              records.Ros1Easy_handeye_msgsSetAlgorithmResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/SetAlgorithm typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsSetAlgorithmServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsSetAlgorithmRequestCodec,
              records.Ros1Easy_handeye_msgsSetAlgorithmResponseCodec,
              false,
              capacity);
    }
}

/** Complete easy_handeye_msgs/TakeSample typed client; optional observer is independently granted. */
export class Ros1Easy_handeye_msgsTakeSampleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Easy_handeye_msgsTakeSampleRequestCodec,
              records.Ros1Easy_handeye_msgsTakeSampleResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete easy_handeye_msgs/TakeSample typed server; callback replacement is caller-managed. */
export class Ros1Easy_handeye_msgsTakeSampleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Easy_handeye_msgsTakeSampleRequestCodec,
              records.Ros1Easy_handeye_msgsTakeSampleResponseCodec,
              false,
              capacity);
    }
}

/** Complete grid_map_msgs/GetGridMap typed client; optional observer is independently granted. */
export class Ros1Grid_map_msgsGetGridMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Grid_map_msgsGetGridMapRequestCodec, records.Ros1Grid_map_msgsGetGridMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete grid_map_msgs/GetGridMap typed server; callback replacement is caller-managed. */
export class Ros1Grid_map_msgsGetGridMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Grid_map_msgsGetGridMapRequestCodec,
              records.Ros1Grid_map_msgsGetGridMapResponseCodec,
              false,
              capacity);
    }
}

/** Complete grid_map_msgs/GetGridMapInfo typed client; optional observer is independently granted. */
export class Ros1Grid_map_msgsGetGridMapInfoClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Grid_map_msgsGetGridMapInfoRequestCodec,
              records.Ros1Grid_map_msgsGetGridMapInfoResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete grid_map_msgs/GetGridMapInfo typed server; callback replacement is caller-managed. */
export class Ros1Grid_map_msgsGetGridMapInfoServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Grid_map_msgsGetGridMapInfoRequestCodec,
              records.Ros1Grid_map_msgsGetGridMapInfoResponseCodec,
              false,
              capacity);
    }
}

/** Complete grid_map_msgs/ProcessFile typed client; optional observer is independently granted. */
export class Ros1Grid_map_msgsProcessFileClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Grid_map_msgsProcessFileRequestCodec, records.Ros1Grid_map_msgsProcessFileResponseCodec, observerAlias, capacity);
    }
}

/** Complete grid_map_msgs/ProcessFile typed server; callback replacement is caller-managed. */
export class Ros1Grid_map_msgsProcessFileServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Grid_map_msgsProcessFileRequestCodec,
              records.Ros1Grid_map_msgsProcessFileResponseCodec,
              false,
              capacity);
    }
}

/** Complete grid_map_msgs/SetGridMap typed client; optional observer is independently granted. */
export class Ros1Grid_map_msgsSetGridMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Grid_map_msgsSetGridMapRequestCodec, records.Ros1Grid_map_msgsSetGridMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete grid_map_msgs/SetGridMap typed server; callback replacement is caller-managed. */
export class Ros1Grid_map_msgsSetGridMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Grid_map_msgsSetGridMapRequestCodec,
              records.Ros1Grid_map_msgsSetGridMapResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/ExecuteArmAction typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodeExecuteArmActionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodeExecuteArmActionRequestCodec,
              records.Ros1H12pro_controller_nodeExecuteArmActionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/ExecuteArmAction typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodeExecuteArmActionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodeExecuteArmActionRequestCodec,
              records.Ros1H12pro_controller_nodeExecuteArmActionResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/changeAMBACCtrlMode typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodec,
              records.Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/changeAMBACCtrlMode typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodeChangeAMBACCtrlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodec,
              records.Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/changeArmCtrlMode typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodeChangeArmCtrlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodec,
              records.Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/changeArmCtrlMode typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodeChangeArmCtrlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodec,
              records.Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/changeHandArmPosesByConfigName typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodec,
              records.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/changeHandArmPosesByConfigName typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodec,
              records.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/playmusic typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodePlaymusicClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodePlaymusicRequestCodec,
              records.Ros1H12pro_controller_nodePlaymusicResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/playmusic typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodePlaymusicServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodePlaymusicRequestCodec,
              records.Ros1H12pro_controller_nodePlaymusicResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/srvChangePhases typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodeSrvChangePhasesClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodeSrvChangePhasesRequestCodec,
              records.Ros1H12pro_controller_nodeSrvChangePhasesResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/srvChangePhases typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodeSrvChangePhasesServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodeSrvChangePhasesRequestCodec,
              records.Ros1H12pro_controller_nodeSrvChangePhasesResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/srvClearPositionCMD typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodeSrvClearPositionCMDClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodec,
              records.Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/srvClearPositionCMD typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodeSrvClearPositionCMDServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodec,
              records.Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodec,
              false,
              capacity);
    }
}

/** Complete h12pro_controller_node/srvchangeCtlMode typed client; optional observer is independently granted. */
export class Ros1H12pro_controller_nodeSrvchangeCtlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodec,
              records.Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete h12pro_controller_node/srvchangeCtlMode typed server; callback replacement is caller-managed. */
export class Ros1H12pro_controller_nodeSrvchangeCtlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodec,
              records.Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete handcontrollerdemorosnode/changeHandTrackingMode typed client; optional observer is independently granted. */
export class Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodec,
              records.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete handcontrollerdemorosnode/changeHandTrackingMode typed server; callback replacement is caller-managed. */
export class Ros1HandcontrollerdemorosnodeChangeHandTrackingModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodec,
              records.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete handcontrollerdemorosnode/controlEndHand typed client; optional observer is independently granted. */
export class Ros1HandcontrollerdemorosnodeControlEndHandClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1HandcontrollerdemorosnodeControlEndHandRequestCodec,
              records.Ros1HandcontrollerdemorosnodeControlEndHandResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete handcontrollerdemorosnode/controlEndHand typed server; callback replacement is caller-managed. */
export class Ros1HandcontrollerdemorosnodeControlEndHandServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1HandcontrollerdemorosnodeControlEndHandRequestCodec,
              records.Ros1HandcontrollerdemorosnodeControlEndHandResponseCodec,
              false,
              capacity);
    }
}

/** Complete handcontrollerdemorosnode/srvArmIK typed client; optional observer is independently granted. */
export class Ros1HandcontrollerdemorosnodeSrvArmIKClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodec,
              records.Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete handcontrollerdemorosnode/srvArmIK typed server; callback replacement is caller-managed. */
export class Ros1HandcontrollerdemorosnodeSrvArmIKServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodec,
              records.Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodec,
              false,
              capacity);
    }
}

/** Complete humanoid_arm_control/armControl typed client; optional observer is independently granted. */
export class Ros1Humanoid_arm_controlArmControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Humanoid_arm_controlArmControlRequestCodec,
              records.Ros1Humanoid_arm_controlArmControlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete humanoid_arm_control/armControl typed server; callback replacement is caller-managed. */
export class Ros1Humanoid_arm_controlArmControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Humanoid_arm_controlArmControlRequestCodec,
              records.Ros1Humanoid_arm_controlArmControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete humanoid_arm_control/handUpAndGrab typed client; optional observer is independently granted. */
export class Ros1Humanoid_arm_controlHandUpAndGrabClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Humanoid_arm_controlHandUpAndGrabRequestCodec,
              records.Ros1Humanoid_arm_controlHandUpAndGrabResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete humanoid_arm_control/handUpAndGrab typed server; callback replacement is caller-managed. */
export class Ros1Humanoid_arm_controlHandUpAndGrabServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Humanoid_arm_controlHandUpAndGrabRequestCodec,
              records.Ros1Humanoid_arm_controlHandUpAndGrabResponseCodec,
              false,
              capacity);
    }
}

/** Complete humanoid_plan_arm_trajectory/ExecuteArmAction typed client; optional observer is independently granted. */
export class Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodec,
              records.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete humanoid_plan_arm_trajectory/ExecuteArmAction typed server; callback replacement is caller-managed. */
export class Ros1Humanoid_plan_arm_trajectoryExecuteArmActionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodec,
              records.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodec,
              false,
              capacity);
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve typed client; optional observer is independently granted. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodec,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve typed server; callback replacement is caller-managed. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodec,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodec,
              false,
              capacity);
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline typed client; optional observer is independently granted. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodec,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline typed server; callback replacement is caller-managed. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodec,
              records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_audio_player/audio_status typed client; optional observer is independently granted. */
export class Ros1Kuavo_audio_playerAudio_statusClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_audio_playerAudio_statusRequestCodec,
              records.Ros1Kuavo_audio_playerAudio_statusResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_audio_player/audio_status typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_audio_playerAudio_statusServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_audio_playerAudio_statusRequestCodec,
              records.Ros1Kuavo_audio_playerAudio_statusResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_audio_player/playmusic typed client; optional observer is independently granted. */
export class Ros1Kuavo_audio_playerPlaymusicClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_audio_playerPlaymusicRequestCodec,
              records.Ros1Kuavo_audio_playerPlaymusicResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_audio_player/playmusic typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_audio_playerPlaymusicServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_audio_playerPlaymusicRequestCodec,
              records.Ros1Kuavo_audio_playerPlaymusicResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/DeleteMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingDeleteMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_mappingDeleteMapRequestCodec, records.Ros1Kuavo_mappingDeleteMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_mapping/DeleteMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingDeleteMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_mappingDeleteMapRequestCodec, records.Ros1Kuavo_mappingDeleteMapResponseCodec, false, capacity);
    }
}

/** Complete kuavo_mapping/EditMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingEditMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_mappingEditMapRequestCodec, records.Ros1Kuavo_mappingEditMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_mapping/EditMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingEditMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_mappingEditMapRequestCodec, records.Ros1Kuavo_mappingEditMapResponseCodec, false, capacity);
    }
}

/** Complete kuavo_mapping/GetAllMaps typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingGetAllMapsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_mappingGetAllMapsRequestCodec, records.Ros1Kuavo_mappingGetAllMapsResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_mapping/GetAllMaps typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingGetAllMapsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingGetAllMapsRequestCodec,
              records.Ros1Kuavo_mappingGetAllMapsResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/GetCurrentMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingGetCurrentMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_mappingGetCurrentMapRequestCodec,
              records.Ros1Kuavo_mappingGetCurrentMapResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_mapping/GetCurrentMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingGetCurrentMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingGetCurrentMapRequestCodec,
              records.Ros1Kuavo_mappingGetCurrentMapResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/InitialPoseWithTaskPoint typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingInitialPoseWithTaskPointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodec,
              records.Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_mapping/InitialPoseWithTaskPoint typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingInitialPoseWithTaskPointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodec,
              records.Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/LoadMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingLoadMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_mappingLoadMapRequestCodec, records.Ros1Kuavo_mappingLoadMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_mapping/LoadMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingLoadMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_mappingLoadMapRequestCodec, records.Ros1Kuavo_mappingLoadMapResponseCodec, false, capacity);
    }
}

/** Complete kuavo_mapping/NavigateToTaskPoint typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingNavigateToTaskPointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_mappingNavigateToTaskPointRequestCodec,
              records.Ros1Kuavo_mappingNavigateToTaskPointResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_mapping/NavigateToTaskPoint typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingNavigateToTaskPointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingNavigateToTaskPointRequestCodec,
              records.Ros1Kuavo_mappingNavigateToTaskPointResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/RenameMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingRenameMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_mappingRenameMapRequestCodec, records.Ros1Kuavo_mappingRenameMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_mapping/RenameMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingRenameMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_mappingRenameMapRequestCodec, records.Ros1Kuavo_mappingRenameMapResponseCodec, false, capacity);
    }
}

/** Complete kuavo_mapping/SaveMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingSaveMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_mappingSaveMapRequestCodec, records.Ros1Kuavo_mappingSaveMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_mapping/SaveMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingSaveMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_mappingSaveMapRequestCodec, records.Ros1Kuavo_mappingSaveMapResponseCodec, false, capacity);
    }
}

/** Complete kuavo_mapping/SetInitialPose typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingSetInitialPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_mappingSetInitialPoseRequestCodec,
              records.Ros1Kuavo_mappingSetInitialPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_mapping/SetInitialPose typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingSetInitialPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingSetInitialPoseRequestCodec,
              records.Ros1Kuavo_mappingSetInitialPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/StartMapping typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingStartMappingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_mappingStartMappingRequestCodec,
              records.Ros1Kuavo_mappingStartMappingResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_mapping/StartMapping typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingStartMappingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingStartMappingRequestCodec,
              records.Ros1Kuavo_mappingStartMappingResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/StopMapping typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingStopMappingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_mappingStopMappingRequestCodec, records.Ros1Kuavo_mappingStopMappingResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_mapping/StopMapping typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingStopMappingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingStopMappingRequestCodec,
              records.Ros1Kuavo_mappingStopMappingResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_mapping/TaskPointOperation typed client; optional observer is independently granted. */
export class Ros1Kuavo_mappingTaskPointOperationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_mappingTaskPointOperationRequestCodec,
              records.Ros1Kuavo_mappingTaskPointOperationResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_mapping/TaskPointOperation typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_mappingTaskPointOperationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_mappingTaskPointOperationRequestCodec,
              records.Ros1Kuavo_mappingTaskPointOperationResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/CreatePath typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsCreatePathClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsCreatePathRequestCodec, records.Ros1Kuavo_msgsCreatePathResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/CreatePath typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsCreatePathServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsCreatePathRequestCodec, records.Ros1Kuavo_msgsCreatePathResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/ExecuteArmAction typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsExecuteArmActionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsExecuteArmActionRequestCodec,
              records.Ros1Kuavo_msgsExecuteArmActionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/ExecuteArmAction typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsExecuteArmActionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsExecuteArmActionRequestCodec,
              records.Ros1Kuavo_msgsExecuteArmActionResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/FallStandCommand typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsFallStandCommandClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsFallStandCommandRequestCodec,
              records.Ros1Kuavo_msgsFallStandCommandResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/FallStandCommand typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsFallStandCommandServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsFallStandCommandRequestCodec,
              records.Ros1Kuavo_msgsFallStandCommandResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/GetAllMaps typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetAllMapsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGetAllMapsRequestCodec, records.Ros1Kuavo_msgsGetAllMapsResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/GetAllMaps typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetAllMapsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsGetAllMapsRequestCodec, records.Ros1Kuavo_msgsGetAllMapsResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/GetBatteryInfo typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetBatteryInfoClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGetBatteryInfoRequestCodec, records.Ros1Kuavo_msgsGetBatteryInfoResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/GetBatteryInfo typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetBatteryInfoServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetBatteryInfoRequestCodec,
              records.Ros1Kuavo_msgsGetBatteryInfoResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/GetCurrentMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetCurrentMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGetCurrentMapRequestCodec, records.Ros1Kuavo_msgsGetCurrentMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/GetCurrentMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetCurrentMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetCurrentMapRequestCodec,
              records.Ros1Kuavo_msgsGetCurrentMapResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/GetPowerBoardStatus typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetPowerBoardStatusClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsGetPowerBoardStatusRequestCodec,
              records.Ros1Kuavo_msgsGetPowerBoardStatusResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/GetPowerBoardStatus typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetPowerBoardStatusServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetPowerBoardStatusRequestCodec,
              records.Ros1Kuavo_msgsGetPowerBoardStatusResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/GetStringList typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetStringListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGetStringListRequestCodec, records.Ros1Kuavo_msgsGetStringListResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/GetStringList typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetStringListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetStringListRequestCodec,
              records.Ros1Kuavo_msgsGetStringListResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/GetTargetPartPoseInCamera typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetTargetPartPoseInCameraClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodec,
              records.Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/GetTargetPartPoseInCamera typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetTargetPartPoseInCameraServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodec,
              records.Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/InitialPoseWithTaskPoint typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsInitialPoseWithTaskPointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodec,
              records.Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/InitialPoseWithTaskPoint typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsInitialPoseWithTaskPointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodec,
              records.Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/LoadMap typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsLoadMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsLoadMapRequestCodec, records.Ros1Kuavo_msgsLoadMapResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/LoadMap typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsLoadMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsLoadMapRequestCodec, records.Ros1Kuavo_msgsLoadMapResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/NavigateToTaskPoint typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsNavigateToTaskPointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsNavigateToTaskPointRequestCodec,
              records.Ros1Kuavo_msgsNavigateToTaskPointResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/NavigateToTaskPoint typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsNavigateToTaskPointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsNavigateToTaskPointRequestCodec,
              records.Ros1Kuavo_msgsNavigateToTaskPointResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/PlayMusicImmediate typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsPlayMusicImmediateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsPlayMusicImmediateRequestCodec,
              records.Ros1Kuavo_msgsPlayMusicImmediateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/PlayMusicImmediate typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsPlayMusicImmediateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsPlayMusicImmediateRequestCodec,
              records.Ros1Kuavo_msgsPlayMusicImmediateResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/RelaySelectChannel typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsRelaySelectChannelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsRelaySelectChannelRequestCodec,
              records.Ros1Kuavo_msgsRelaySelectChannelResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/RelaySelectChannel typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsRelaySelectChannelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsRelaySelectChannelRequestCodec,
              records.Ros1Kuavo_msgsRelaySelectChannelResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/RepublishTFs typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsRepublishTFsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsRepublishTFsRequestCodec, records.Ros1Kuavo_msgsRepublishTFsResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/RepublishTFs typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsRepublishTFsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsRepublishTFsRequestCodec, records.Ros1Kuavo_msgsRepublishTFsResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/SetHeadControlMode typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetHeadControlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSetHeadControlModeRequestCodec,
              records.Ros1Kuavo_msgsSetHeadControlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/SetHeadControlMode typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetHeadControlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetHeadControlModeRequestCodec,
              records.Ros1Kuavo_msgsSetHeadControlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/SetIncrementalArmTrajLink typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodec,
              records.Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/SetIncrementalArmTrajLink typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetIncrementalArmTrajLinkServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodec,
              records.Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/SetInitialPose typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetInitialPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsSetInitialPoseRequestCodec, records.Ros1Kuavo_msgsSetInitialPoseResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/SetInitialPose typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetInitialPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetInitialPoseRequestCodec,
              records.Ros1Kuavo_msgsSetInitialPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/SetJoyTopic typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetJoyTopicClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsSetJoyTopicRequestCodec, records.Ros1Kuavo_msgsSetJoyTopicResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/SetJoyTopic typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetJoyTopicServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsSetJoyTopicRequestCodec, records.Ros1Kuavo_msgsSetJoyTopicResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/SetLEDMode typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetLEDModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsSetLEDModeRequestCodec, records.Ros1Kuavo_msgsSetLEDModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/SetLEDMode typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetLEDModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsSetLEDModeRequestCodec, records.Ros1Kuavo_msgsSetLEDModeResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/SetLEDMode_free typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetLEDMode_freeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSetLEDMode_freeRequestCodec,
              records.Ros1Kuavo_msgsSetLEDMode_freeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/SetLEDMode_free typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetLEDMode_freeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetLEDMode_freeRequestCodec,
              records.Ros1Kuavo_msgsSetLEDMode_freeResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/SetString typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetStringClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsSetStringRequestCodec, records.Ros1Kuavo_msgsSetStringResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/SetString typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetStringServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsSetStringRequestCodec, records.Ros1Kuavo_msgsSetStringResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/SpeechSynthesis typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSpeechSynthesisClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSpeechSynthesisRequestCodec,
              records.Ros1Kuavo_msgsSpeechSynthesisResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/SpeechSynthesis typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSpeechSynthesisServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSpeechSynthesisRequestCodec,
              records.Ros1Kuavo_msgsSpeechSynthesisResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/TaskPointOperation typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsTaskPointOperationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsTaskPointOperationRequestCodec,
              records.Ros1Kuavo_msgsTaskPointOperationResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/TaskPointOperation typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsTaskPointOperationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsTaskPointOperationRequestCodec,
              records.Ros1Kuavo_msgsTaskPointOperationResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/TransportModeCommand typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsTransportModeCommandClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsTransportModeCommandRequestCodec,
              records.Ros1Kuavo_msgsTransportModeCommandResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/TransportModeCommand typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsTransportModeCommandServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsTransportModeCommandRequestCodec,
              records.Ros1Kuavo_msgsTransportModeCommandResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/accessIkSolve typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsAccessIkSolveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsAccessIkSolveRequestCodec, records.Ros1Kuavo_msgsAccessIkSolveResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/accessIkSolve typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsAccessIkSolveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsAccessIkSolveRequestCodec,
              records.Ros1Kuavo_msgsAccessIkSolveResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/adjustZeroPoint typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsAdjustZeroPointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsAdjustZeroPointRequestCodec,
              records.Ros1Kuavo_msgsAdjustZeroPointResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/adjustZeroPoint typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsAdjustZeroPointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsAdjustZeroPointRequestCodec,
              records.Ros1Kuavo_msgsAdjustZeroPointResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/changeArmCtrlMode typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChangeArmCtrlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChangeArmCtrlModeRequestCodec,
              records.Ros1Kuavo_msgsChangeArmCtrlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/changeArmCtrlMode typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChangeArmCtrlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChangeArmCtrlModeRequestCodec,
              records.Ros1Kuavo_msgsChangeArmCtrlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/changeArmCtrlModeKuavo typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodec,
              records.Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/changeArmCtrlModeKuavo typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChangeArmCtrlModeKuavoServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodec,
              records.Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/changeLbMpcObsUpdateModeSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodec,
              records.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/changeLbMpcObsUpdateModeSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodec,
              records.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/changeLbQuickModeSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChangeLbQuickModeSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodec,
              records.Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/changeLbQuickModeSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChangeLbQuickModeSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodec,
              records.Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/changeMotorParam typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChangeMotorParamClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChangeMotorParamRequestCodec,
              records.Ros1Kuavo_msgsChangeMotorParamResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/changeMotorParam typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChangeMotorParamServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChangeMotorParamRequestCodec,
              records.Ros1Kuavo_msgsChangeMotorParamResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/changeTorsoCtrlMode typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChangeTorsoCtrlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodec,
              records.Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/changeTorsoCtrlMode typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChangeTorsoCtrlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodec,
              records.Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/changeWaistCtrlMode typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChangeWaistCtrlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodec,
              records.Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/changeWaistCtrlMode typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChangeWaistCtrlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodec,
              records.Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/chassisPoseCmdSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsChassisPoseCmdSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodec,
              records.Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/chassisPoseCmdSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsChassisPoseCmdSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodec,
              records.Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/controlLejuClaw typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsControlLejuClawClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsControlLejuClawRequestCodec,
              records.Ros1Kuavo_msgsControlLejuClawResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/controlLejuClaw typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsControlLejuClawServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsControlLejuClawRequestCodec,
              records.Ros1Kuavo_msgsControlLejuClawResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/eePoseReachError typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsEePoseReachErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsEePoseReachErrorRequestCodec,
              records.Ros1Kuavo_msgsEePoseReachErrorResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/eePoseReachError typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsEePoseReachErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsEePoseReachErrorRequestCodec,
              records.Ros1Kuavo_msgsEePoseReachErrorResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/enableHandTouchSensor typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsEnableHandTouchSensorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsEnableHandTouchSensorRequestCodec,
              records.Ros1Kuavo_msgsEnableHandTouchSensorResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/enableHandTouchSensor typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsEnableHandTouchSensorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsEnableHandTouchSensorRequestCodec,
              records.Ros1Kuavo_msgsEnableHandTouchSensorResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/fkSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsFkSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsFkSrvRequestCodec, records.Ros1Kuavo_msgsFkSrvResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/fkSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsFkSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsFkSrvRequestCodec, records.Ros1Kuavo_msgsFkSrvResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/fkSrvWithReferFrame typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsFkSrvWithReferFrameClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodec,
              records.Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/fkSrvWithReferFrame typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsFkSrvWithReferFrameServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodec,
              records.Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/footPose6DTargetTrajectoriesSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodec,
              records.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/footPose6DTargetTrajectoriesSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodec,
              records.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/footPoseTargetTrajectoriesSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodec,
              records.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/footPoseTargetTrajectoriesSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodec,
              records.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/gestureExecute typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGestureExecuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGestureExecuteRequestCodec, records.Ros1Kuavo_msgsGestureExecuteResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/gestureExecute typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGestureExecuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGestureExecuteRequestCodec,
              records.Ros1Kuavo_msgsGestureExecuteResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/gestureExecuteState typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGestureExecuteStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsGestureExecuteStateRequestCodec,
              records.Ros1Kuavo_msgsGestureExecuteStateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/gestureExecuteState typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGestureExecuteStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGestureExecuteStateRequestCodec,
              records.Ros1Kuavo_msgsGestureExecuteStateResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/gestureList typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGestureListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGestureListRequestCodec, records.Ros1Kuavo_msgsGestureListResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/gestureList typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGestureListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsGestureListRequestCodec, records.Ros1Kuavo_msgsGestureListResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/getControllerList typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetControllerListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsGetControllerListRequestCodec,
              records.Ros1Kuavo_msgsGetControllerListResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/getControllerList typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetControllerListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetControllerListRequestCodec,
              records.Ros1Kuavo_msgsGetControllerListResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/getCurrentGaitName typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetCurrentGaitNameClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsGetCurrentGaitNameRequestCodec,
              records.Ros1Kuavo_msgsGetCurrentGaitNameResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/getCurrentGaitName typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetCurrentGaitNameServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetCurrentGaitNameRequestCodec,
              records.Ros1Kuavo_msgsGetCurrentGaitNameResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/getLbTorsoInitialPose typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetLbTorsoInitialPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodec,
              records.Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/getLbTorsoInitialPose typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetLbTorsoInitialPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodec,
              records.Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/getMotorParam typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetMotorParamClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGetMotorParamRequestCodec, records.Ros1Kuavo_msgsGetMotorParamResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/getMotorParam typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetMotorParamServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetMotorParamRequestCodec,
              records.Ros1Kuavo_msgsGetMotorParamResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/getMotorZeroPoints typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGetMotorZeroPointsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsGetMotorZeroPointsRequestCodec,
              records.Ros1Kuavo_msgsGetMotorZeroPointsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/getMotorZeroPoints typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGetMotorZeroPointsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGetMotorZeroPointsRequestCodec,
              records.Ros1Kuavo_msgsGetMotorZeroPointsResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/goToZeroPoint typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsGoToZeroPointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsGoToZeroPointRequestCodec, records.Ros1Kuavo_msgsGoToZeroPointResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/goToZeroPoint typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsGoToZeroPointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsGoToZeroPointRequestCodec,
              records.Ros1Kuavo_msgsGoToZeroPointResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/handForceLevel typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsHandForceLevelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsHandForceLevelRequestCodec, records.Ros1Kuavo_msgsHandForceLevelResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/handForceLevel typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsHandForceLevelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsHandForceLevelRequestCodec,
              records.Ros1Kuavo_msgsHandForceLevelResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/jointMoveTo typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsJointMoveToClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsJointMoveToRequestCodec, records.Ros1Kuavo_msgsJointMoveToResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/jointMoveTo typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsJointMoveToServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsJointMoveToRequestCodec, records.Ros1Kuavo_msgsJointMoveToResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/lbBaseLinkPoseCmdSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodec,
              records.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/lbBaseLinkPoseCmdSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodec,
              records.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/lbLegControlSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsLbLegControlSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsLbLegControlSrvRequestCodec,
              records.Ros1Kuavo_msgsLbLegControlSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/lbLegControlSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsLbLegControlSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsLbLegControlSrvRequestCodec,
              records.Ros1Kuavo_msgsLbLegControlSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/lbMultiTimedOfflineTraj typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodec,
              records.Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/lbMultiTimedOfflineTraj typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsLbMultiTimedOfflineTrajServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodec,
              records.Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/lbMultiTimedPosCmd typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsLbMultiTimedPosCmdClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodec,
              records.Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/lbMultiTimedPosCmd typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsLbMultiTimedPosCmdServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodec,
              records.Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/lbTimedPosCmd typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsLbTimedPosCmdClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsLbTimedPosCmdRequestCodec, records.Ros1Kuavo_msgsLbTimedPosCmdResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/lbTimedPosCmd typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsLbTimedPosCmdServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsLbTimedPosCmdRequestCodec,
              records.Ros1Kuavo_msgsLbTimedPosCmdResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/lejuClawRecovery typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsLejuClawRecoveryClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsLejuClawRecoveryRequestCodec,
              records.Ros1Kuavo_msgsLejuClawRecoveryResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/lejuClawRecovery typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsLejuClawRecoveryServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsLejuClawRecoveryRequestCodec,
              records.Ros1Kuavo_msgsLejuClawRecoveryResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/planArmTrajectoryBezierCurve typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodec,
              records.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/planArmTrajectoryBezierCurve typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodec,
              records.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/planArmTrajectoryCubicSpline typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodec,
              records.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/planArmTrajectoryCubicSpline typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodec,
              records.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/playmusic typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsPlaymusicClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsPlaymusicRequestCodec, records.Ros1Kuavo_msgsPlaymusicResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/playmusic typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsPlaymusicServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsPlaymusicRequestCodec, records.Ros1Kuavo_msgsPlaymusicResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/recordmusic typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsRecordmusicClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsRecordmusicRequestCodec, records.Ros1Kuavo_msgsRecordmusicResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/recordmusic typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsRecordmusicServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsRecordmusicRequestCodec, records.Ros1Kuavo_msgsRecordmusicResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/robotSwitchPose typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsRobotSwitchPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsRobotSwitchPoseRequestCodec,
              records.Ros1Kuavo_msgsRobotSwitchPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/robotSwitchPose typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsRobotSwitchPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsRobotSwitchPoseRequestCodec,
              records.Ros1Kuavo_msgsRobotSwitchPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/setContactForceInterpParams typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetContactForceInterpParamsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodec,
              records.Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/setContactForceInterpParams typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetContactForceInterpParamsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodec,
              records.Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/setHwIntialState typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetHwIntialStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSetHwIntialStateRequestCodec,
              records.Ros1Kuavo_msgsSetHwIntialStateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/setHwIntialState typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetHwIntialStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetHwIntialStateRequestCodec,
              records.Ros1Kuavo_msgsSetHwIntialStateResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/setMmCtrlFrame typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetMmCtrlFrameClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsSetMmCtrlFrameRequestCodec, records.Ros1Kuavo_msgsSetMmCtrlFrameResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/setMmCtrlFrame typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetMmCtrlFrameServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetMmCtrlFrameRequestCodec,
              records.Ros1Kuavo_msgsSetMmCtrlFrameResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/setMotorEncoderRoundService typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodec,
              records.Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/setMotorEncoderRoundService typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetMotorEncoderRoundServiceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodec,
              records.Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/setRuckigPlannerParams typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetRuckigPlannerParamsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodec,
              records.Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/setRuckigPlannerParams typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetRuckigPlannerParamsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodec,
              records.Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/setTagId typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSetTagIdClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Kuavo_msgsSetTagIdRequestCodec, records.Ros1Kuavo_msgsSetTagIdResponseCodec, observerAlias, capacity);
    }
}

/** Complete kuavo_msgs/setTagId typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSetTagIdServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Kuavo_msgsSetTagIdRequestCodec, records.Ros1Kuavo_msgsSetTagIdResponseCodec, false, capacity);
    }
}

/** Complete kuavo_msgs/singleStepControl typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSingleStepControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSingleStepControlRequestCodec,
              records.Ros1Kuavo_msgsSingleStepControlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/singleStepControl typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSingleStepControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSingleStepControlRequestCodec,
              records.Ros1Kuavo_msgsSingleStepControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/stairAlignmentSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsStairAlignmentSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsStairAlignmentSrvRequestCodec,
              records.Ros1Kuavo_msgsStairAlignmentSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/stairAlignmentSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsStairAlignmentSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsStairAlignmentSrvRequestCodec,
              records.Ros1Kuavo_msgsStairAlignmentSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/switchController typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSwitchControllerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSwitchControllerRequestCodec,
              records.Ros1Kuavo_msgsSwitchControllerResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/switchController typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSwitchControllerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSwitchControllerRequestCodec,
              records.Ros1Kuavo_msgsSwitchControllerResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/switchToNextController typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsSwitchToNextControllerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsSwitchToNextControllerRequestCodec,
              records.Ros1Kuavo_msgsSwitchToNextControllerResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/switchToNextController typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsSwitchToNextControllerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsSwitchToNextControllerRequestCodec,
              records.Ros1Kuavo_msgsSwitchToNextControllerResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdFreeSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodec,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdFreeSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodec,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdSrv typed client; optional observer is independently granted. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodec,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdSrv typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdSrvServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodec,
              records.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_pico_gmr/AmpJoyRoute typed client; optional observer is independently granted. */
export class Ros1Kuavo_pico_gmrAmpJoyRouteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodec,
              records.Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_pico_gmr/AmpJoyRoute typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_pico_gmrAmpJoyRouteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodec,
              records.Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_ros_interfaces/ocs2ChangeArmCtrlMode typed client; optional observer is independently granted. */
export class Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodec,
              records.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_ros_interfaces/ocs2ChangeArmCtrlMode typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodec,
              records.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_ros_interfaces/planArmTrajectoryBezierCurve typed client; optional observer is independently granted. */
export class Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodec,
              records.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_ros_interfaces/planArmTrajectoryBezierCurve typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodec,
              records.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodec,
              false,
              capacity);
    }
}

/** Complete kuavo_ros_interfaces/stopPlanArmTrajectory typed client; optional observer is independently granted. */
export class Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodec,
              records.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete kuavo_ros_interfaces/stopPlanArmTrajectory typed server; callback replacement is caller-managed. */
export class Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodec,
              records.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/BaseMove typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsBaseMoveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsBaseMoveRequestCodec,
              records.Ros1Leju_mobile_base_msgsBaseMoveResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/BaseMove typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsBaseMoveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsBaseMoveRequestCodec,
              records.Ros1Leju_mobile_base_msgsBaseMoveResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/CheckArrived typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsCheckArrivedClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsCheckArrivedRequestCodec,
              records.Ros1Leju_mobile_base_msgsCheckArrivedResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/CheckArrived typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsCheckArrivedServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsCheckArrivedRequestCodec,
              records.Ros1Leju_mobile_base_msgsCheckArrivedResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/ControlLaserScan typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsControlLaserScanClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsControlLaserScanRequestCodec,
              records.Ros1Leju_mobile_base_msgsControlLaserScanResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/ControlLaserScan typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsControlLaserScanServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsControlLaserScanRequestCodec,
              records.Ros1Leju_mobile_base_msgsControlLaserScanResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/DispatchMove typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsDispatchMoveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsDispatchMoveRequestCodec,
              records.Ros1Leju_mobile_base_msgsDispatchMoveResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/DispatchMove typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsDispatchMoveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsDispatchMoveRequestCodec,
              records.Ros1Leju_mobile_base_msgsDispatchMoveResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/ExecTask typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsExecTaskClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsExecTaskRequestCodec,
              records.Ros1Leju_mobile_base_msgsExecTaskResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/ExecTask typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsExecTaskServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsExecTaskRequestCodec,
              records.Ros1Leju_mobile_base_msgsExecTaskResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/GetGlobalOdometer typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsGetGlobalOdometerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodec,
              records.Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/GetGlobalOdometer typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsGetGlobalOdometerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodec,
              records.Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/GetLaserScanList typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsGetLaserScanListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodec,
              records.Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/GetLaserScanList typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsGetLaserScanListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodec,
              records.Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/MoveToTarget typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsMoveToTargetClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsMoveToTargetRequestCodec,
              records.Ros1Leju_mobile_base_msgsMoveToTargetResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/MoveToTarget typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsMoveToTargetServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsMoveToTargetRequestCodec,
              records.Ros1Leju_mobile_base_msgsMoveToTargetResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/ResetTemporaryOdometer typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodec,
              records.Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/ResetTemporaryOdometer typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsResetTemporaryOdometerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodec,
              records.Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/SetDispatchMode typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsSetDispatchModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodec,
              records.Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/SetDispatchMode typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsSetDispatchModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodec,
              records.Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/SetMapServer typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsSetMapServerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsSetMapServerRequestCodec,
              records.Ros1Leju_mobile_base_msgsSetMapServerResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/SetMapServer typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsSetMapServerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsSetMapServerRequestCodec,
              records.Ros1Leju_mobile_base_msgsSetMapServerResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/StartLocalization typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsStartLocalizationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsStartLocalizationRequestCodec,
              records.Ros1Leju_mobile_base_msgsStartLocalizationResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/StartLocalization typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsStartLocalizationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsStartLocalizationRequestCodec,
              records.Ros1Leju_mobile_base_msgsStartLocalizationResponseCodec,
              false,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/SyncCostmap typed client; optional observer is independently granted. */
export class Ros1Leju_mobile_base_msgsSyncCostmapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Leju_mobile_base_msgsSyncCostmapRequestCodec,
              records.Ros1Leju_mobile_base_msgsSyncCostmapResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete leju_mobile_base_msgs/SyncCostmap typed server; callback replacement is caller-managed. */
export class Ros1Leju_mobile_base_msgsSyncCostmapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Leju_mobile_base_msgsSyncCostmapRequestCodec,
              records.Ros1Leju_mobile_base_msgsSyncCostmapResponseCodec,
              false,
              capacity);
    }
}

/** Complete network_monitor/NetworkPing typed client; optional observer is independently granted. */
export class Ros1Network_monitorNetworkPingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Network_monitorNetworkPingRequestCodec,
              records.Ros1Network_monitorNetworkPingResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete network_monitor/NetworkPing typed server; callback replacement is caller-managed. */
export class Ros1Network_monitorNetworkPingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Network_monitorNetworkPingRequestCodec,
              records.Ros1Network_monitorNetworkPingResponseCodec,
              false,
              capacity);
    }
}

/** Complete ocs2_msgs/pause_resume typed client; optional observer is independently granted. */
export class Ros1Ocs2_msgsPause_resumeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Ocs2_msgsPause_resumeRequestCodec, records.Ros1Ocs2_msgsPause_resumeResponseCodec, observerAlias, capacity);
    }
}

/** Complete ocs2_msgs/pause_resume typed server; callback replacement is caller-managed. */
export class Ros1Ocs2_msgsPause_resumeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Ocs2_msgsPause_resumeRequestCodec, records.Ros1Ocs2_msgsPause_resumeResponseCodec, false, capacity);
    }
}

/** Complete ocs2_msgs/reset typed client; optional observer is independently granted. */
export class Ros1Ocs2_msgsResetClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Ocs2_msgsResetRequestCodec, records.Ros1Ocs2_msgsResetResponseCodec, observerAlias, capacity);
    }
}

/** Complete ocs2_msgs/reset typed server; callback replacement is caller-managed. */
export class Ros1Ocs2_msgsResetServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Ocs2_msgsResetRequestCodec, records.Ros1Ocs2_msgsResetResponseCodec, false, capacity);
    }
}

/** Complete ocs2_switched_model_msgs/trajectory_request typed client; optional observer is independently granted. */
export class Ros1Ocs2_switched_model_msgsTrajectory_requestClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodec,
              records.Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete ocs2_switched_model_msgs/trajectory_request typed server; callback replacement is caller-managed. */
export class Ros1Ocs2_switched_model_msgsTrajectory_requestServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodec,
              records.Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodec,
              false,
              capacity);
    }
}

/** Custom robot_calibration_msgs/GripperLedCommand client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Robot_calibration_msgsGripperLedCommandClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Robot_calibration_msgsGripperLedCommandGoalCodec,
              records.Ros1Robot_calibration_msgsGripperLedCommandResultCodec,
              records.Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodec,
              capacity);
    }
}

/** Custom robot_calibration_msgs/GripperLedCommand server; callbacks explicitly choose their responses. */
export class Ros1Robot_calibration_msgsGripperLedCommandServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Robot_calibration_msgsGripperLedCommandGoalCodec,
              records.Ros1Robot_calibration_msgsGripperLedCommandResultCodec,
              true,
              capacity,
              records.Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodec);
    }

    respondFeedback(id, value)
    {
        return this.respond(id, value, 1);
    }

    respondResult(id, kind, value)
    {
        if(!Number.isInteger(kind) || kind < 2 || kind > 4)
            invalid();
        return this.respond(id, value, kind);
    }
}

/** Complete robot_localization/FromLL typed client; optional observer is independently granted. */
export class Ros1Robot_localizationFromLLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Robot_localizationFromLLRequestCodec, records.Ros1Robot_localizationFromLLResponseCodec, observerAlias, capacity);
    }
}

/** Complete robot_localization/FromLL typed server; callback replacement is caller-managed. */
export class Ros1Robot_localizationFromLLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Robot_localizationFromLLRequestCodec,
              records.Ros1Robot_localizationFromLLResponseCodec,
              false,
              capacity);
    }
}

/** Complete robot_localization/GetState typed client; optional observer is independently granted. */
export class Ros1Robot_localizationGetStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Robot_localizationGetStateRequestCodec,
              records.Ros1Robot_localizationGetStateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete robot_localization/GetState typed server; callback replacement is caller-managed. */
export class Ros1Robot_localizationGetStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Robot_localizationGetStateRequestCodec,
              records.Ros1Robot_localizationGetStateResponseCodec,
              false,
              capacity);
    }
}

/** Complete robot_localization/SetDatum typed client; optional observer is independently granted. */
export class Ros1Robot_localizationSetDatumClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Robot_localizationSetDatumRequestCodec,
              records.Ros1Robot_localizationSetDatumResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete robot_localization/SetDatum typed server; callback replacement is caller-managed. */
export class Ros1Robot_localizationSetDatumServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Robot_localizationSetDatumRequestCodec,
              records.Ros1Robot_localizationSetDatumResponseCodec,
              false,
              capacity);
    }
}

/** Complete robot_localization/SetPose typed client; optional observer is independently granted. */
export class Ros1Robot_localizationSetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Robot_localizationSetPoseRequestCodec,
              records.Ros1Robot_localizationSetPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete robot_localization/SetPose typed server; callback replacement is caller-managed. */
export class Ros1Robot_localizationSetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Robot_localizationSetPoseRequestCodec,
              records.Ros1Robot_localizationSetPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete robot_localization/SetUTMZone typed client; optional observer is independently granted. */
export class Ros1Robot_localizationSetUTMZoneClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Robot_localizationSetUTMZoneRequestCodec,
              records.Ros1Robot_localizationSetUTMZoneResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete robot_localization/SetUTMZone typed server; callback replacement is caller-managed. */
export class Ros1Robot_localizationSetUTMZoneServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Robot_localizationSetUTMZoneRequestCodec,
              records.Ros1Robot_localizationSetUTMZoneResponseCodec,
              false,
              capacity);
    }
}

/** Complete robot_localization/ToLL typed client; optional observer is independently granted. */
export class Ros1Robot_localizationToLLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Robot_localizationToLLRequestCodec, records.Ros1Robot_localizationToLLResponseCodec, observerAlias, capacity);
    }
}

/** Complete robot_localization/ToLL typed server; callback replacement is caller-managed. */
export class Ros1Robot_localizationToLLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Robot_localizationToLLRequestCodec, records.Ros1Robot_localizationToLLResponseCodec, false, capacity);
    }
}

/** Complete robot_localization/ToggleFilterProcessing typed client; optional observer is independently granted. */
export class Ros1Robot_localizationToggleFilterProcessingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Robot_localizationToggleFilterProcessingRequestCodec,
              records.Ros1Robot_localizationToggleFilterProcessingResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete robot_localization/ToggleFilterProcessing typed server; callback replacement is caller-managed. */
export class Ros1Robot_localizationToggleFilterProcessingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Robot_localizationToggleFilterProcessingRequestCodec,
              records.Ros1Robot_localizationToggleFilterProcessingResponseCodec,
              false,
              capacity);
    }
}

/** Complete taiji_trigger_node/PerformTaiji typed client; optional observer is independently granted. */
export class Ros1Taiji_trigger_nodePerformTaijiClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Taiji_trigger_nodePerformTaijiRequestCodec,
              records.Ros1Taiji_trigger_nodePerformTaijiResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete taiji_trigger_node/PerformTaiji typed server; callback replacement is caller-managed. */
export class Ros1Taiji_trigger_nodePerformTaijiServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Taiji_trigger_nodePerformTaijiRequestCodec,
              records.Ros1Taiji_trigger_nodePerformTaijiResponseCodec,
              false,
              capacity);
    }
}
