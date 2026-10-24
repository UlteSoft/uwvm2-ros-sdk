/**
 * @file bounded_interfaces.mjs
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros2-humble-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/**
 * Generated custom RPC owners. All aliases must be explicitly granted by the host.
 * Callers own each facade and must inspect closeChecked()/revokeChecked(). No
 * builtin service/action factory, native thread, timer or implicit retry is used.
 * Place beside bounded_records.mjs under sdk/origin/custom-types/<generated-directory>.
 * Relocation requires updating only the SDK module imports below.
 */
import {Status, RosError, Session, Capability} from 'ros/js/roswasm.mjs';
import {EventKind, EventBinding} from 'ros/js/events.mjs';
import * as records from 'doosan/js/ros2/doosan-ros2-humble-complete/bounded_records.mjs';
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

/** Custom dsr_msgs2/action/JogH2r client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros2Dsr_msgs2ActionJogH2rClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              2,
              aliases,
              records.Ros2Dsr_msgs2ActionJogH2r_GoalCodec,
              records.Ros2Dsr_msgs2ActionJogH2r_ResultCodec,
              records.Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec,
              capacity);
    }
}

/** Custom dsr_msgs2/action/JogH2r server; callbacks explicitly choose their responses. */
export class Ros2Dsr_msgs2ActionJogH2rServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2ActionJogH2r_GoalCodec,
              records.Ros2Dsr_msgs2ActionJogH2r_ResultCodec,
              true,
              capacity,
              records.Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec);
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

/** Custom dsr_msgs2/action/MovejH2r client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros2Dsr_msgs2ActionMovejH2rClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              2,
              aliases,
              records.Ros2Dsr_msgs2ActionMovejH2r_GoalCodec,
              records.Ros2Dsr_msgs2ActionMovejH2r_ResultCodec,
              records.Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec,
              capacity);
    }
}

/** Custom dsr_msgs2/action/MovejH2r server; callbacks explicitly choose their responses. */
export class Ros2Dsr_msgs2ActionMovejH2rServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2ActionMovejH2r_GoalCodec,
              records.Ros2Dsr_msgs2ActionMovejH2r_ResultCodec,
              true,
              capacity,
              records.Ros2Dsr_msgs2ActionMovejH2r_FeedbackCodec);
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

/** Custom dsr_msgs2/action/MovelH2r client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros2Dsr_msgs2ActionMovelH2rClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              2,
              aliases,
              records.Ros2Dsr_msgs2ActionMovelH2r_GoalCodec,
              records.Ros2Dsr_msgs2ActionMovelH2r_ResultCodec,
              records.Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec,
              capacity);
    }
}

/** Custom dsr_msgs2/action/MovelH2r server; callbacks explicitly choose their responses. */
export class Ros2Dsr_msgs2ActionMovelH2rServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2ActionMovelH2r_GoalCodec,
              records.Ros2Dsr_msgs2ActionMovelH2r_ResultCodec,
              true,
              capacity,
              records.Ros2Dsr_msgs2ActionMovelH2r_FeedbackCodec);
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

/** Complete dsr_msgs2/srv/AlignAxis1 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvAlignAxis1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec, records.Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/AlignAxis1 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvAlignAxis1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvAlignAxis1_RequestCodec,
              records.Ros2Dsr_msgs2SrvAlignAxis1_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlignAxis2 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvAlignAxis2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec, records.Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/AlignAxis2 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvAlignAxis2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvAlignAxis2_RequestCodec,
              records.Ros2Dsr_msgs2SrvAlignAxis2_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/AlterMotion typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvAlterMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvAlterMotion_RequestCodec, records.Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/AlterMotion typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvAlterMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvAlterMotion_RequestCodec,
              records.Ros2Dsr_msgs2SrvAlterMotion_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CalcCoord typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvCalcCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvCalcCoord_RequestCodec, records.Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/CalcCoord typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvCalcCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvCalcCoord_RequestCodec, records.Ros2Dsr_msgs2SrvCalcCoord_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeCollisionSensitivity typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec,
              records.Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeCollisionSensitivity typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvChangeCollisionSensitivityServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvChangeCollisionSensitivity_RequestCodec,
              records.Ros2Dsr_msgs2SrvChangeCollisionSensitivity_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeOperationSpeed typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvChangeOperationSpeedClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec,
              records.Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ChangeOperationSpeed typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvChangeOperationSpeedServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvChangeOperationSpeed_RequestCodec,
              records.Ros2Dsr_msgs2SrvChangeOperationSpeed_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckForceCondition typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvCheckForceConditionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckForceCondition typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvCheckForceConditionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvCheckForceCondition_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckForceCondition_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckMotion typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvCheckMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvCheckMotion_RequestCodec, records.Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckMotion typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvCheckMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvCheckMotion_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckMotion_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition1 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition1 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition1_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition1_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition2 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckOrientationCondition2 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvCheckOrientationCondition2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition2_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckOrientationCondition2_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckPositionCondition typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvCheckPositionConditionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CheckPositionCondition typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvCheckPositionConditionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvCheckPositionCondition_RequestCodec,
              records.Ros2Dsr_msgs2SrvCheckPositionCondition_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateModbus typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvConfigCreateModbusClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateModbus typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvConfigCreateModbusServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvConfigCreateModbus_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigCreateModbus_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTcp typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvConfigCreateTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTcp typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvConfigCreateTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvConfigCreateTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigCreateTcp_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTool typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvConfigCreateToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigCreateTool typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvConfigCreateToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvConfigCreateTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigCreateTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteModbus typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvConfigDeleteModbusClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteModbus typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvConfigDeleteModbusServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvConfigDeleteModbus_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigDeleteModbus_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTcp typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvConfigDeleteTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTcp typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvConfigDeleteTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvConfigDeleteTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigDeleteTcp_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTool typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvConfigDeleteToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConfigDeleteTool typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvConfigDeleteToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvConfigDeleteTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvConfigDeleteTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConnectRtControl typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvConnectRtControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ConnectRtControl typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvConnectRtControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvConnectRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvConnectRtControl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CoordTransform typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvCoordTransformClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvCoordTransform_RequestCodec,
              records.Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/CoordTransform typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvCoordTransformServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvCoordTransform_RequestCodec,
              records.Ros2Dsr_msgs2SrvCoordTransform_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisableAlterMotion typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvDisableAlterMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec,
              records.Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisableAlterMotion typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvDisableAlterMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvDisableAlterMotion_RequestCodec,
              records.Ros2Dsr_msgs2SrvDisableAlterMotion_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisconnectRtControl typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvDisconnectRtControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DisconnectRtControl typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvDisconnectRtControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvDisconnectRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvDisconnectRtControl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlPause typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvDrlPauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvDrlPause_RequestCodec, records.Ros2Dsr_msgs2SrvDrlPause_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlPause typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvDrlPauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvDrlPause_RequestCodec, records.Ros2Dsr_msgs2SrvDrlPause_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlResume typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvDrlResumeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvDrlResume_RequestCodec, records.Ros2Dsr_msgs2SrvDrlResume_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlResume typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvDrlResumeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvDrlResume_RequestCodec, records.Ros2Dsr_msgs2SrvDrlResume_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStart typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvDrlStartClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvDrlStart_RequestCodec, records.Ros2Dsr_msgs2SrvDrlStart_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStart typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvDrlStartServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvDrlStart_RequestCodec, records.Ros2Dsr_msgs2SrvDrlStart_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStop typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvDrlStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvDrlStop_RequestCodec, records.Ros2Dsr_msgs2SrvDrlStop_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/DrlStop typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvDrlStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvDrlStop_RequestCodec, records.Ros2Dsr_msgs2SrvDrlStop_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/EnableAlterMotion typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvEnableAlterMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec,
              records.Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/EnableAlterMotion typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvEnableAlterMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvEnableAlterMotion_RequestCodec,
              records.Ros2Dsr_msgs2SrvEnableAlterMotion_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Fkin typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvFkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvFkin_RequestCodec, records.Ros2Dsr_msgs2SrvFkin_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/Fkin typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvFkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvFkin_RequestCodec, records.Ros2Dsr_msgs2SrvFkin_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlMode typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetControlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetControlMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlMode typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetControlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetControlMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetControlMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlSpace typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetControlSpaceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetControlSpace typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetControlSpaceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetControlSpace_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetControlSpace_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxAnalogInput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxAnalogInput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalInput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalInput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalOutput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCtrlBoxDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPose typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPose typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentPose_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentPose_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosj typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentPosjClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosj typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentPosjServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentPosj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentPosj_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosx typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentPosxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentPosx typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentPosxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentPosx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentPosx_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentRotm typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentRotmClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentRotm typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentRotmServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentRotm_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentRotm_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentSolutionSpace typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentSolutionSpace typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTcp typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTcp typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentTcp_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTool typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentTool typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentToolFlangePosx typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentToolFlangePosx typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelj typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentVeljClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelj typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentVeljServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentVelj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentVelj_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelx typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetCurrentVelxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetCurrentVelx typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetCurrentVelxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetCurrentVelx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetCurrentVelx_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosj typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetDesiredPosjClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosj typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetDesiredPosjServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetDesiredPosj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredPosj_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosx typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetDesiredPosxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredPosx typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetDesiredPosxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetDesiredPosx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredPosx_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelj typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetDesiredVeljClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelj typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetDesiredVeljServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetDesiredVelj_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredVelj_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelx typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetDesiredVelxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDesiredVelx typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetDesiredVelxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetDesiredVelx_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDesiredVelx_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDrlState typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetDrlStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvGetDrlState_RequestCodec, records.Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/GetDrlState typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetDrlStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetDrlState_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetDrlState_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetExternalTorque typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetExternalTorqueClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetExternalTorque typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetExternalTorqueServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetExternalTorque_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetExternalTorque_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterBit typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetInputRegisterBitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterBit typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetInputRegisterBitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetInputRegisterBit_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetInputRegisterBit_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterFloat typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetInputRegisterFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterFloat typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetInputRegisterFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetInputRegisterFloat_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetInputRegisterFloat_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterInt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetInputRegisterIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetInputRegisterInt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetInputRegisterIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetInputRegisterInt_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetInputRegisterInt_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetJointTorque typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetJointTorqueClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetJointTorque typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetJointTorqueServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetJointTorque_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetJointTorque_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetLastAlarm typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetLastAlarmClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetLastAlarm typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetLastAlarmServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetLastAlarm_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetLastAlarm_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetModbusInput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetModbusInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetModbusInput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetModbusInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetModbusInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetModbusInput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOrientationError typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetOrientationErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOrientationError typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetOrientationErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetOrientationError_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOrientationError_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterBit typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterBitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterBit typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterBitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterBit_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterBit_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterFloat typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterFloat typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterFloat_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterFloat_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterInt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetOutputRegisterInt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetOutputRegisterIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterInt_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetOutputRegisterInt_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotLinkInfo typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRobotLinkInfoClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotLinkInfo typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRobotLinkInfoServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRobotLinkInfo_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotLinkInfo_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotMode typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotMode typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRobotMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSpeedMode typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRobotSpeedModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSpeedMode typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRobotSpeedModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRobotSpeedMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotSpeedMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotState typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRobotStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRobotState_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotState typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRobotStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRobotState_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSystem typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRobotSystemClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRobotSystem typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRobotSystemServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRobotSystem_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRobotSystem_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputDataList typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRtControlInputDataListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputDataList typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRtControlInputDataListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRtControlInputDataList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlInputDataList_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputVersionList typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlInputVersionList typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRtControlInputVersionListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRtControlInputVersionList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlInputVersionList_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputDataList typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputDataList typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputDataListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputDataList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputDataList_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputVersionList typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetRtControlOutputVersionList typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetRtControlOutputVersionListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetSolutionSpace typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetSolutionSpaceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetSolutionSpace typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetSolutionSpaceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetSolutionSpace_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetSolutionSpace_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalInput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetToolDigitalInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalInput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetToolDigitalInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetToolDigitalInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetToolDigitalInput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalOutput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetToolDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetToolDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetToolDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetToolDigitalOutput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolForce typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetToolForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetToolForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetToolForce typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetToolForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetToolForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetToolForce_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetUserCartCoord typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetUserCartCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetUserCartCoord typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetUserCartCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetUserCartCoord_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetUserCartCoord_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetWorkpieceWeight typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvGetWorkpieceWeightClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/GetWorkpieceWeight typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvGetWorkpieceWeightServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvGetWorkpieceWeight_RequestCodec,
              records.Ros2Dsr_msgs2SrvGetWorkpieceWeight_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Ikin typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvIkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvIkin_RequestCodec, records.Ros2Dsr_msgs2SrvIkin_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/Ikin typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvIkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvIkin_RequestCodec, records.Ros2Dsr_msgs2SrvIkin_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/IsDoneBoltTightening typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec,
              records.Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/IsDoneBoltTightening typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvIsDoneBoltTighteningServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvIsDoneBoltTightening_RequestCodec,
              records.Ros2Dsr_msgs2SrvIsDoneBoltTightening_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Jog typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvJog_RequestCodec, records.Ros2Dsr_msgs2SrvJog_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/Jog typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvJog_RequestCodec, records.Ros2Dsr_msgs2SrvJog_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/JogMulti typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvJogMultiClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvJogMulti_RequestCodec, records.Ros2Dsr_msgs2SrvJogMulti_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/JogMulti typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvJogMultiServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvJogMulti_RequestCodec, records.Ros2Dsr_msgs2SrvJogMulti_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveBlending typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveBlendingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvMoveBlending_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveBlending typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveBlendingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMoveBlending_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveBlending_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveCircle typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveCircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveCircle_RequestCodec, records.Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveCircle typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveCircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMoveCircle_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveCircle_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveHome typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveHomeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveHome_RequestCodec, records.Ros2Dsr_msgs2SrvMoveHome_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveHome typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveHomeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvMoveHome_RequestCodec, records.Ros2Dsr_msgs2SrvMoveHome_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJoint typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveJointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveJoint_RequestCodec, records.Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJoint typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveJointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvMoveJoint_RequestCodec, records.Ros2Dsr_msgs2SrvMoveJoint_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJointx typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveJointxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveJointx_RequestCodec, records.Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveJointx typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveJointxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMoveJointx_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveJointx_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveLine typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveLineClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveLine_RequestCodec, records.Ros2Dsr_msgs2SrvMoveLine_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveLine typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveLineServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvMoveLine_RequestCodec, records.Ros2Dsr_msgs2SrvMoveLine_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePause typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMovePauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMovePause_RequestCodec, records.Ros2Dsr_msgs2SrvMovePause_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePause typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMovePauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvMovePause_RequestCodec, records.Ros2Dsr_msgs2SrvMovePause_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePeriodic typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMovePeriodicClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec,
              records.Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MovePeriodic typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMovePeriodicServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMovePeriodic_RequestCodec,
              records.Ros2Dsr_msgs2SrvMovePeriodic_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveResume typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveResumeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveResume_RequestCodec, records.Ros2Dsr_msgs2SrvMoveResume_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveResume typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveResumeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMoveResume_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveResume_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSpiral typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveSpiralClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec, records.Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSpiral typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveSpiralServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMoveSpiral_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveSpiral_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineJoint typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveSplineJointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineJoint typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveSplineJointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMoveSplineJoint_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveSplineJoint_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineTask typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveSplineTaskClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveSplineTask typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveSplineTaskServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvMoveSplineTask_RequestCodec,
              records.Ros2Dsr_msgs2SrvMoveSplineTask_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveStop typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveStop_RequestCodec, records.Ros2Dsr_msgs2SrvMoveStop_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveStop typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvMoveStop_RequestCodec, records.Ros2Dsr_msgs2SrvMoveStop_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveWait typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvMoveWaitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvMoveWait_RequestCodec, records.Ros2Dsr_msgs2SrvMoveWait_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/MoveWait typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvMoveWaitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvMoveWait_RequestCodec, records.Ros2Dsr_msgs2SrvMoveWait_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/OverwriteUserCartCoord typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec,
              records.Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/OverwriteUserCartCoord typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvOverwriteUserCartCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvOverwriteUserCartCoord_RequestCodec,
              records.Ros2Dsr_msgs2SrvOverwriteUserCartCoord_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis1 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvParallelAxis1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec,
              records.Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis1 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvParallelAxis1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvParallelAxis1_RequestCodec,
              records.Ros2Dsr_msgs2SrvParallelAxis1_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis2 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvParallelAxis2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec,
              records.Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ParallelAxis2 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvParallelAxis2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvParallelAxis2_RequestCodec,
              records.Ros2Dsr_msgs2SrvParallelAxis2_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReadDataRt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvReadDataRtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvReadDataRt_RequestCodec, records.Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/ReadDataRt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvReadDataRtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvReadDataRt_RequestCodec,
              records.Ros2Dsr_msgs2SrvReadDataRt_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseComplianceCtrl typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec,
              records.Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseComplianceCtrl typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvReleaseComplianceCtrlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvReleaseComplianceCtrl_RequestCodec,
              records.Ros2Dsr_msgs2SrvReleaseComplianceCtrl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseForce typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvReleaseForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvReleaseForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ReleaseForce typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvReleaseForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvReleaseForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvReleaseForce_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ResetWorkpieceWeight typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvResetWorkpieceWeightClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec,
              records.Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ResetWorkpieceWeight typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvResetWorkpieceWeightServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvResetWorkpieceWeight_RequestCodec,
              records.Ros2Dsr_msgs2SrvResetWorkpieceWeight_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FClose typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvRobotiq2FCloseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec,
              records.Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FClose typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvRobotiq2FCloseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvRobotiq2FClose_RequestCodec,
              records.Ros2Dsr_msgs2SrvRobotiq2FClose_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FMove typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvRobotiq2FMoveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec,
              records.Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FMove typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvRobotiq2FMoveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvRobotiq2FMove_RequestCodec,
              records.Ros2Dsr_msgs2SrvRobotiq2FMove_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FOpen typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvRobotiq2FOpenClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec,
              records.Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Robotiq2FOpen typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvRobotiq2FOpenServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvRobotiq2FOpen_RequestCodec,
              records.Ros2Dsr_msgs2SrvRobotiq2FOpen_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SerialSendData typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSerialSendDataClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSerialSendData_RequestCodec,
              records.Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SerialSendData typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSerialSendDataServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSerialSendData_RequestCodec,
              records.Ros2Dsr_msgs2SrvSerialSendData_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/ServoOff typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvServoOffClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvServoOff_RequestCodec, records.Ros2Dsr_msgs2SrvServoOff_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/ServoOff typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvServoOffServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvServoOff_RequestCodec, records.Ros2Dsr_msgs2SrvServoOff_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccjRt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetAccjRtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccjRt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetAccjRtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvSetAccjRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetAccjRt_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccxRt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetAccxRtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetAccxRt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetAccxRtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvSetAccxRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetAccxRt_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogInputType typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogInputType typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutputType typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxAnalogOutputType typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxDigitalOutput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCtrlBoxDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTcp typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetCurrentTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTcp typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetCurrentTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetCurrentTcp_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCurrentTcp_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTool typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetCurrentToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetCurrentTool typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetCurrentToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetCurrentTool_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetCurrentTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetDesiredForce typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetDesiredForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetDesiredForce typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetDesiredForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetDesiredForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetDesiredForce_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetModbusOutput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetModbusOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetModbusOutput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetModbusOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetModbusOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetModbusOutput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterBit typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterBitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterBit typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterBitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterBit_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterBit_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterFloat typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterFloat typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterFloat_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterFloat_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterInt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetOutputRegisterInt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetOutputRegisterIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterInt_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetOutputRegisterInt_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRefCoord typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetRefCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec, records.Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRefCoord typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetRefCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetRefCoord_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRefCoord_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotControl typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetRobotControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotControl typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetRobotControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetRobotControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotControl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotMode typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetRobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotMode typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetRobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetRobotMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSpeedMode typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetRobotSpeedModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSpeedMode typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetRobotSpeedModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetRobotSpeedMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotSpeedMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSystem typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetRobotSystemClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRobotSystem typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetRobotSystemServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetRobotSystem_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRobotSystem_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlInput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetRtControlInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlInput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetRtControlInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetRtControlInput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRtControlInput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlOutput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetRtControlOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetRtControlOutput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetRtControlOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetRtControlOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetRtControlOutput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafeStopResetType typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafeStopResetType typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetSafeStopResetTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetSafeStopResetType_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSafeStopResetType_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafetyMode typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetSafetyModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSafetyMode typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetSafetyModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetSafetyMode_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSafetyMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularHandlingForce typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetSingularHandlingForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularHandlingForce typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetSingularHandlingForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetSingularHandlingForce_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSingularHandlingForce_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularityHandling typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetSingularityHandlingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetSingularityHandling typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetSingularityHandlingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetSingularityHandling_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetSingularityHandling_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetStiffnessx typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetStiffnessxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetStiffnessx typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetStiffnessxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetStiffnessx_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetStiffnessx_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolDigitalOutput typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetToolDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetToolDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetToolDigitalOutput_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetToolDigitalOutput_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolShape typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetToolShapeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetToolShape_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetToolShape typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetToolShapeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetToolShape_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetToolShape_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord1 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord1 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord1_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord1_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord2 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord2 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord2_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord2_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord3 typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord3Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetUserCartCoord3 typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetUserCartCoord3Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord3_RequestCodec,
              records.Ros2Dsr_msgs2SrvSetUserCartCoord3_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVeljRt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetVeljRtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVeljRt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetVeljRtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvSetVeljRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetVeljRt_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVelxRt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvSetVelxRtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/SetVelxRt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvSetVelxRtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvSetVelxRt_RequestCodec, records.Ros2Dsr_msgs2SrvSetVelxRt_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/StartRtControl typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvStartRtControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvStartRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/StartRtControl typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvStartRtControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvStartRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvStartRtControl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/StopRtControl typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvStopRtControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvStopRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/StopRtControl typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvStopRtControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvStopRtControl_RequestCodec,
              records.Ros2Dsr_msgs2SrvStopRtControl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/TaskComplianceCtrl typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvTaskComplianceCtrlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec,
              records.Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/TaskComplianceCtrl typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvTaskComplianceCtrlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvTaskComplianceCtrl_RequestCodec,
              records.Ros2Dsr_msgs2SrvTaskComplianceCtrl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs2/srv/Trans typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvTransClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvTrans_RequestCodec, records.Ros2Dsr_msgs2SrvTrans_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/Trans typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvTransServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dsr_msgs2SrvTrans_RequestCodec, records.Ros2Dsr_msgs2SrvTrans_ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs2/srv/WriteDataRt typed client; optional observer is independently granted. */
export class Ros2Dsr_msgs2SrvWriteDataRtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec, records.Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs2/srv/WriteDataRt typed server; callback replacement is caller-managed. */
export class Ros2Dsr_msgs2SrvWriteDataRtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dsr_msgs2SrvWriteDataRt_RequestCodec,
              records.Ros2Dsr_msgs2SrvWriteDataRt_ResponseCodec,
              false,
              capacity);
    }
}
