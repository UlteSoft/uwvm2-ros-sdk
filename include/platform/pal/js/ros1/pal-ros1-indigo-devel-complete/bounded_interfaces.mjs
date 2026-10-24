/**
 * @brief Generated custom RPC owners. All aliases must be explicitly granted by the host.
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
 * @brief Constructor failures always use this preallocated carrier. primaryKnown and
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
 * @brief Private capabilities are never returned to a handler. A local busy lease
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
 * @brief Typed service source with optional independently granted completion observer.
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
 * @brief Two separate advertise/respond grants; response IDs must have been polled
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
 * @brief Custom action client: send/cancel-own/feedback/result are distinct aliases;
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

/** @brief Complete pal_behaviour_msgs/BehaviourEvent typed client; optional observer is independently granted. */
export class Ros1Pal_behaviour_msgsBehaviourEventClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_behaviour_msgsBehaviourEventRequestCodec,
              records.Ros1Pal_behaviour_msgsBehaviourEventResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_behaviour_msgs/BehaviourEvent typed server; callback replacement is caller-managed. */
export class Ros1Pal_behaviour_msgsBehaviourEventServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_behaviour_msgsBehaviourEventRequestCodec,
              records.Ros1Pal_behaviour_msgsBehaviourEventResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_behaviour_msgs/BehaviourTask client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_behaviour_msgsBehaviourTaskClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_behaviour_msgsBehaviourTaskGoalCodec,
              records.Ros1Pal_behaviour_msgsBehaviourTaskResultCodec,
              records.Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_behaviour_msgs/BehaviourTask server; callbacks explicitly choose their responses. */
export class Ros1Pal_behaviour_msgsBehaviourTaskServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_behaviour_msgsBehaviourTaskGoalCodec,
              records.Ros1Pal_behaviour_msgsBehaviourTaskResultCodec,
              true,
              capacity,
              records.Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodec);
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

/** @brief Custom pal_behaviour_msgs/Presentation client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_behaviour_msgsPresentationClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_behaviour_msgsPresentationGoalCodec,
              records.Ros1Pal_behaviour_msgsPresentationResultCodec,
              records.Ros1Pal_behaviour_msgsPresentationFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_behaviour_msgs/Presentation server; callbacks explicitly choose their responses. */
export class Ros1Pal_behaviour_msgsPresentationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_behaviour_msgsPresentationGoalCodec,
              records.Ros1Pal_behaviour_msgsPresentationResultCodec,
              true,
              capacity,
              records.Ros1Pal_behaviour_msgsPresentationFeedbackCodec);
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

/** @brief Custom pal_common_msgs/Disable client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_common_msgsDisableClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_common_msgsDisableGoalCodec,
              records.Ros1Pal_common_msgsDisableResultCodec,
              records.Ros1Pal_common_msgsDisableFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_common_msgs/Disable server; callbacks explicitly choose their responses. */
export class Ros1Pal_common_msgsDisableServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_common_msgsDisableGoalCodec,
              records.Ros1Pal_common_msgsDisableResultCodec,
              true,
              capacity,
              records.Ros1Pal_common_msgsDisableFeedbackCodec);
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

/** @brief Custom pal_common_msgs/Empty client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_common_msgsEmptyClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_common_msgsEmptyGoalCodec,
              records.Ros1Pal_common_msgsEmptyResultCodec,
              records.Ros1Pal_common_msgsEmptyFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_common_msgs/Empty server; callbacks explicitly choose their responses. */
export class Ros1Pal_common_msgsEmptyServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_common_msgsEmptyGoalCodec,
              records.Ros1Pal_common_msgsEmptyResultCodec,
              true,
              capacity,
              records.Ros1Pal_common_msgsEmptyFeedbackCodec);
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

/** @brief Complete pal_common_msgs/GetString typed client; optional observer is independently granted. */
export class Ros1Pal_common_msgsGetStringClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Pal_common_msgsGetStringRequestCodec, records.Ros1Pal_common_msgsGetStringResponseCodec, observerAlias, capacity);
    }
}

/** @brief Complete pal_common_msgs/GetString typed server; callback replacement is caller-managed. */
export class Ros1Pal_common_msgsGetStringServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_common_msgsGetStringRequestCodec,
              records.Ros1Pal_common_msgsGetStringResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_common_msgs/SetString typed client; optional observer is independently granted. */
export class Ros1Pal_common_msgsSetStringClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Pal_common_msgsSetStringRequestCodec, records.Ros1Pal_common_msgsSetStringResponseCodec, observerAlias, capacity);
    }
}

/** @brief Complete pal_common_msgs/SetString typed server; callback replacement is caller-managed. */
export class Ros1Pal_common_msgsSetStringServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_common_msgsSetStringRequestCodec,
              records.Ros1Pal_common_msgsSetStringResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_control_msgs/CurrentLimit typed client; optional observer is independently granted. */
export class Ros1Pal_control_msgsCurrentLimitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_control_msgsCurrentLimitRequestCodec,
              records.Ros1Pal_control_msgsCurrentLimitResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_control_msgs/CurrentLimit typed server; callback replacement is caller-managed. */
export class Ros1Pal_control_msgsCurrentLimitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_control_msgsCurrentLimitRequestCodec,
              records.Ros1Pal_control_msgsCurrentLimitResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_control_msgs/MotionManager client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_control_msgsMotionManagerClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_control_msgsMotionManagerGoalCodec,
              records.Ros1Pal_control_msgsMotionManagerResultCodec,
              records.Ros1Pal_control_msgsMotionManagerFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_control_msgs/MotionManager server; callbacks explicitly choose their responses. */
export class Ros1Pal_control_msgsMotionManagerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_control_msgsMotionManagerGoalCodec,
              records.Ros1Pal_control_msgsMotionManagerResultCodec,
              true,
              capacity,
              records.Ros1Pal_control_msgsMotionManagerFeedbackCodec);
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

/** @brief Custom pal_control_msgs/RigidBodyTrajectory client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_control_msgsRigidBodyTrajectoryClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_control_msgsRigidBodyTrajectoryGoalCodec,
              records.Ros1Pal_control_msgsRigidBodyTrajectoryResultCodec,
              records.Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_control_msgs/RigidBodyTrajectory server; callbacks explicitly choose their responses. */
export class Ros1Pal_control_msgsRigidBodyTrajectoryServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_control_msgsRigidBodyTrajectoryGoalCodec,
              records.Ros1Pal_control_msgsRigidBodyTrajectoryResultCodec,
              true,
              capacity,
              records.Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodec);
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

/** @brief Complete pal_detection_msgs/AddTexturedObject typed client; optional observer is independently granted. */
export class Ros1Pal_detection_msgsAddTexturedObjectClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_detection_msgsAddTexturedObjectRequestCodec,
              records.Ros1Pal_detection_msgsAddTexturedObjectResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/AddTexturedObject typed server; callback replacement is caller-managed. */
export class Ros1Pal_detection_msgsAddTexturedObjectServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsAddTexturedObjectRequestCodec,
              records.Ros1Pal_detection_msgsAddTexturedObjectResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/ChangeObjectRecognizerModel typed client; optional observer is independently granted. */
export class Ros1Pal_detection_msgsChangeObjectRecognizerModelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodec,
              records.Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/ChangeObjectRecognizerModel typed server; callback replacement is caller-managed. */
export class Ros1Pal_detection_msgsChangeObjectRecognizerModelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodec,
              records.Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_detection_msgs/RecognizeObjects client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_detection_msgsRecognizeObjectsClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_detection_msgsRecognizeObjectsGoalCodec,
              records.Ros1Pal_detection_msgsRecognizeObjectsResultCodec,
              records.Ros1Pal_detection_msgsRecognizeObjectsFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_detection_msgs/RecognizeObjects server; callbacks explicitly choose their responses. */
export class Ros1Pal_detection_msgsRecognizeObjectsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsRecognizeObjectsGoalCodec,
              records.Ros1Pal_detection_msgsRecognizeObjectsResultCodec,
              true,
              capacity,
              records.Ros1Pal_detection_msgsRecognizeObjectsFeedbackCodec);
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

/** @brief Complete pal_detection_msgs/Recognizer typed client; optional observer is independently granted. */
export class Ros1Pal_detection_msgsRecognizerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_detection_msgsRecognizerRequestCodec,
              records.Ros1Pal_detection_msgsRecognizerResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/Recognizer typed server; callback replacement is caller-managed. */
export class Ros1Pal_detection_msgsRecognizerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsRecognizerRequestCodec,
              records.Ros1Pal_detection_msgsRecognizerResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SelectTexturedObject typed client; optional observer is independently granted. */
export class Ros1Pal_detection_msgsSelectTexturedObjectClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_detection_msgsSelectTexturedObjectRequestCodec,
              records.Ros1Pal_detection_msgsSelectTexturedObjectResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SelectTexturedObject typed server; callback replacement is caller-managed. */
export class Ros1Pal_detection_msgsSelectTexturedObjectServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsSelectTexturedObjectRequestCodec,
              records.Ros1Pal_detection_msgsSelectTexturedObjectResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SetDatabase typed client; optional observer is independently granted. */
export class Ros1Pal_detection_msgsSetDatabaseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_detection_msgsSetDatabaseRequestCodec,
              records.Ros1Pal_detection_msgsSetDatabaseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SetDatabase typed server; callback replacement is caller-managed. */
export class Ros1Pal_detection_msgsSetDatabaseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsSetDatabaseRequestCodec,
              records.Ros1Pal_detection_msgsSetDatabaseResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StartEnrollment typed client; optional observer is independently granted. */
export class Ros1Pal_detection_msgsStartEnrollmentClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_detection_msgsStartEnrollmentRequestCodec,
              records.Ros1Pal_detection_msgsStartEnrollmentResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StartEnrollment typed server; callback replacement is caller-managed. */
export class Ros1Pal_detection_msgsStartEnrollmentServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsStartEnrollmentRequestCodec,
              records.Ros1Pal_detection_msgsStartEnrollmentResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StopEnrollment typed client; optional observer is independently granted. */
export class Ros1Pal_detection_msgsStopEnrollmentClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_detection_msgsStopEnrollmentRequestCodec,
              records.Ros1Pal_detection_msgsStopEnrollmentResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StopEnrollment typed server; callback replacement is caller-managed. */
export class Ros1Pal_detection_msgsStopEnrollmentServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_detection_msgsStopEnrollmentRequestCodec,
              records.Ros1Pal_detection_msgsStopEnrollmentResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/CancelEffect typed client; optional observer is independently granted. */
export class Ros1Pal_device_msgsCancelEffectClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_device_msgsCancelEffectRequestCodec,
              records.Ros1Pal_device_msgsCancelEffectResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/CancelEffect typed server; callback replacement is caller-managed. */
export class Ros1Pal_device_msgsCancelEffectServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_device_msgsCancelEffectRequestCodec,
              records.Ros1Pal_device_msgsCancelEffectResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_device_msgs/DoTimedLedEffect client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_device_msgsDoTimedLedEffectClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_device_msgsDoTimedLedEffectGoalCodec,
              records.Ros1Pal_device_msgsDoTimedLedEffectResultCodec,
              records.Ros1Pal_device_msgsDoTimedLedEffectFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_device_msgs/DoTimedLedEffect server; callbacks explicitly choose their responses. */
export class Ros1Pal_device_msgsDoTimedLedEffectServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_device_msgsDoTimedLedEffectGoalCodec,
              records.Ros1Pal_device_msgsDoTimedLedEffectResultCodec,
              true,
              capacity,
              records.Ros1Pal_device_msgsDoTimedLedEffectFeedbackCodec);
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

/** @brief Complete pal_device_msgs/ShutdownAndWakeUpRobot typed client; optional observer is independently granted. */
export class Ros1Pal_device_msgsShutdownAndWakeUpRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_device_msgsShutdownAndWakeUpRobotRequestCodec,
              records.Ros1Pal_device_msgsShutdownAndWakeUpRobotResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/ShutdownAndWakeUpRobot typed server; callback replacement is caller-managed. */
export class Ros1Pal_device_msgsShutdownAndWakeUpRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_device_msgsShutdownAndWakeUpRobotRequestCodec,
              records.Ros1Pal_device_msgsShutdownAndWakeUpRobotResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/TimedBlinkEffect typed client; optional observer is independently granted. */
export class Ros1Pal_device_msgsTimedBlinkEffectClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_device_msgsTimedBlinkEffectRequestCodec,
              records.Ros1Pal_device_msgsTimedBlinkEffectResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/TimedBlinkEffect typed server; callback replacement is caller-managed. */
export class Ros1Pal_device_msgsTimedBlinkEffectServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_device_msgsTimedBlinkEffectRequestCodec,
              records.Ros1Pal_device_msgsTimedBlinkEffectResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/TimedColourEffect typed client; optional observer is independently granted. */
export class Ros1Pal_device_msgsTimedColourEffectClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_device_msgsTimedColourEffectRequestCodec,
              records.Ros1Pal_device_msgsTimedColourEffectResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/TimedColourEffect typed server; callback replacement is caller-managed. */
export class Ros1Pal_device_msgsTimedColourEffectServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_device_msgsTimedColourEffectRequestCodec,
              records.Ros1Pal_device_msgsTimedColourEffectResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/TimedFadeEffect typed client; optional observer is independently granted. */
export class Ros1Pal_device_msgsTimedFadeEffectClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_device_msgsTimedFadeEffectRequestCodec,
              records.Ros1Pal_device_msgsTimedFadeEffectResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_device_msgs/TimedFadeEffect typed server; callback replacement is caller-managed. */
export class Ros1Pal_device_msgsTimedFadeEffectServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_device_msgsTimedFadeEffectRequestCodec,
              records.Ros1Pal_device_msgsTimedFadeEffectResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/ASRFile client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_interaction_msgsASRFileClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_interaction_msgsASRFileGoalCodec,
              records.Ros1Pal_interaction_msgsASRFileResultCodec,
              records.Ros1Pal_interaction_msgsASRFileFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/ASRFile server; callbacks explicitly choose their responses. */
export class Ros1Pal_interaction_msgsASRFileServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsASRFileGoalCodec,
              records.Ros1Pal_interaction_msgsASRFileResultCodec,
              true,
              capacity,
              records.Ros1Pal_interaction_msgsASRFileFeedbackCodec);
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

/** @brief Complete pal_interaction_msgs/ASRService typed client; optional observer is independently granted. */
export class Ros1Pal_interaction_msgsASRServiceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_interaction_msgsASRServiceRequestCodec,
              records.Ros1Pal_interaction_msgsASRServiceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/ASRService typed server; callback replacement is caller-managed. */
export class Ros1Pal_interaction_msgsASRServiceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsASRServiceRequestCodec,
              records.Ros1Pal_interaction_msgsASRServiceResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/AudioPlay client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_interaction_msgsAudioPlayClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_interaction_msgsAudioPlayGoalCodec,
              records.Ros1Pal_interaction_msgsAudioPlayResultCodec,
              records.Ros1Pal_interaction_msgsAudioPlayFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/AudioPlay server; callbacks explicitly choose their responses. */
export class Ros1Pal_interaction_msgsAudioPlayServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsAudioPlayGoalCodec,
              records.Ros1Pal_interaction_msgsAudioPlayResultCodec,
              true,
              capacity,
              records.Ros1Pal_interaction_msgsAudioPlayFeedbackCodec);
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

/** @brief Complete pal_interaction_msgs/GetSpeechDuration typed client; optional observer is independently granted. */
export class Ros1Pal_interaction_msgsGetSpeechDurationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_interaction_msgsGetSpeechDurationRequestCodec,
              records.Ros1Pal_interaction_msgsGetSpeechDurationResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/GetSpeechDuration typed server; callback replacement is caller-managed. */
export class Ros1Pal_interaction_msgsGetSpeechDurationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsGetSpeechDurationRequestCodec,
              records.Ros1Pal_interaction_msgsGetSpeechDurationResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/Sound client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_interaction_msgsSoundClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_interaction_msgsSoundGoalCodec,
              records.Ros1Pal_interaction_msgsSoundResultCodec,
              records.Ros1Pal_interaction_msgsSoundFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/Sound server; callbacks explicitly choose their responses. */
export class Ros1Pal_interaction_msgsSoundServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsSoundGoalCodec,
              records.Ros1Pal_interaction_msgsSoundResultCodec,
              true,
              capacity,
              records.Ros1Pal_interaction_msgsSoundFeedbackCodec);
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

/** @brief Complete pal_interaction_msgs/SoundLocalisationService typed client; optional observer is independently granted. */
export class Ros1Pal_interaction_msgsSoundLocalisationServiceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodec,
              records.Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/SoundLocalisationService typed server; callback replacement is caller-managed. */
export class Ros1Pal_interaction_msgsSoundLocalisationServiceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodec,
              records.Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/Tts client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_interaction_msgsTtsClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_interaction_msgsTtsGoalCodec,
              records.Ros1Pal_interaction_msgsTtsResultCodec,
              records.Ros1Pal_interaction_msgsTtsFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_interaction_msgs/Tts server; callbacks explicitly choose their responses. */
export class Ros1Pal_interaction_msgsTtsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsTtsGoalCodec,
              records.Ros1Pal_interaction_msgsTtsResultCodec,
              true,
              capacity,
              records.Ros1Pal_interaction_msgsTtsFeedbackCodec);
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

/** @brief Complete pal_interaction_msgs/recognizerService typed client; optional observer is independently granted. */
export class Ros1Pal_interaction_msgsRecognizerServiceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_interaction_msgsRecognizerServiceRequestCodec,
              records.Ros1Pal_interaction_msgsRecognizerServiceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/recognizerService typed server; callback replacement is caller-managed. */
export class Ros1Pal_interaction_msgsRecognizerServiceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_interaction_msgsRecognizerServiceRequestCodec,
              records.Ros1Pal_interaction_msgsRecognizerServiceResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_motion_model_msgs/GetMotionMap typed client; optional observer is independently granted. */
export class Ros1Pal_motion_model_msgsGetMotionMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_motion_model_msgsGetMotionMapRequestCodec,
              records.Ros1Pal_motion_model_msgsGetMotionMapResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_motion_model_msgs/GetMotionMap typed server; callback replacement is caller-managed. */
export class Ros1Pal_motion_model_msgsGetMotionMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_motion_model_msgsGetMotionMapRequestCodec,
              records.Ros1Pal_motion_model_msgsGetMotionMapResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StartRecording typed client; optional observer is independently granted. */
export class Ros1Pal_video_recording_msgsStartRecordingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_video_recording_msgsStartRecordingRequestCodec,
              records.Ros1Pal_video_recording_msgsStartRecordingResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StartRecording typed server; callback replacement is caller-managed. */
export class Ros1Pal_video_recording_msgsStartRecordingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_video_recording_msgsStartRecordingRequestCodec,
              records.Ros1Pal_video_recording_msgsStartRecordingResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StopRecording typed client; optional observer is independently granted. */
export class Ros1Pal_video_recording_msgsStopRecordingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_video_recording_msgsStopRecordingRequestCodec,
              records.Ros1Pal_video_recording_msgsStopRecordingResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StopRecording typed server; callback replacement is caller-managed. */
export class Ros1Pal_video_recording_msgsStopRecordingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_video_recording_msgsStopRecordingRequestCodec,
              records.Ros1Pal_video_recording_msgsStopRecordingResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_vision_msgs/FaceRecognition client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_vision_msgsFaceRecognitionClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_vision_msgsFaceRecognitionGoalCodec,
              records.Ros1Pal_vision_msgsFaceRecognitionResultCodec,
              records.Ros1Pal_vision_msgsFaceRecognitionFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_vision_msgs/FaceRecognition server; callbacks explicitly choose their responses. */
export class Ros1Pal_vision_msgsFaceRecognitionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_vision_msgsFaceRecognitionGoalCodec,
              records.Ros1Pal_vision_msgsFaceRecognitionResultCodec,
              true,
              capacity,
              records.Ros1Pal_vision_msgsFaceRecognitionFeedbackCodec);
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

/** @brief Complete pal_vision_msgs/FaceTrackingStart typed client; optional observer is independently granted. */
export class Ros1Pal_vision_msgsFaceTrackingStartClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_vision_msgsFaceTrackingStartRequestCodec,
              records.Ros1Pal_vision_msgsFaceTrackingStartResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FaceTrackingStart typed server; callback replacement is caller-managed. */
export class Ros1Pal_vision_msgsFaceTrackingStartServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_vision_msgsFaceTrackingStartRequestCodec,
              records.Ros1Pal_vision_msgsFaceTrackingStartResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FaceTrackingStop typed client; optional observer is independently granted. */
export class Ros1Pal_vision_msgsFaceTrackingStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_vision_msgsFaceTrackingStopRequestCodec,
              records.Ros1Pal_vision_msgsFaceTrackingStopResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FaceTrackingStop typed server; callback replacement is caller-managed. */
export class Ros1Pal_vision_msgsFaceTrackingStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_vision_msgsFaceTrackingStopRequestCodec,
              records.Ros1Pal_vision_msgsFaceTrackingStopResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStart typed client; optional observer is independently granted. */
export class Ros1Pal_vision_msgsFollowMeStartClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_vision_msgsFollowMeStartRequestCodec,
              records.Ros1Pal_vision_msgsFollowMeStartResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStart typed server; callback replacement is caller-managed. */
export class Ros1Pal_vision_msgsFollowMeStartServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_vision_msgsFollowMeStartRequestCodec,
              records.Ros1Pal_vision_msgsFollowMeStartResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStop typed client; optional observer is independently granted. */
export class Ros1Pal_vision_msgsFollowMeStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_vision_msgsFollowMeStopRequestCodec,
              records.Ros1Pal_vision_msgsFollowMeStopResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStop typed server; callback replacement is caller-managed. */
export class Ros1Pal_vision_msgsFollowMeStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_vision_msgsFollowMeStopRequestCodec,
              records.Ros1Pal_vision_msgsFollowMeStopResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/LookToPixel typed client; optional observer is independently granted. */
export class Ros1Pal_vision_msgsLookToPixelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_vision_msgsLookToPixelRequestCodec,
              records.Ros1Pal_vision_msgsLookToPixelResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/LookToPixel typed server; callback replacement is caller-managed. */
export class Ros1Pal_vision_msgsLookToPixelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_vision_msgsLookToPixelRequestCodec,
              records.Ros1Pal_vision_msgsLookToPixelResponseCodec,
              false,
              capacity);
    }
}

/** @brief Custom pal_visual_localization_msgs/VisualLocAddPlace client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodec,
              records.Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodec,
              records.Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_visual_localization_msgs/VisualLocAddPlace server; callbacks explicitly choose their responses. */
export class Ros1Pal_visual_localization_msgsVisualLocAddPlaceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodec,
              records.Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodec,
              true,
              capacity,
              records.Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodec);
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

/** @brief Custom pal_visual_localization_msgs/VisualLocRecognize client; aliases send/cancelOwn/feedback/result are mandatory. */
export class Ros1Pal_visual_localization_msgsVisualLocRecognizeClient extends TypedActionClient
{
    constructor(session, aliases, capacity = 8)
    {
        super(session,
              1,
              aliases,
              records.Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodec,
              records.Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodec,
              records.Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodec,
              capacity);
    }
}

/** @brief Custom pal_visual_localization_msgs/VisualLocRecognize server; callbacks explicitly choose their responses. */
export class Ros1Pal_visual_localization_msgsVisualLocRecognizeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodec,
              records.Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodec,
              true,
              capacity,
              records.Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodec);
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

/** @brief Complete pal_walking_msgs/MoveHipFeet typed client; optional observer is independently granted. */
export class Ros1Pal_walking_msgsMoveHipFeetClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_walking_msgsMoveHipFeetRequestCodec,
              records.Ros1Pal_walking_msgsMoveHipFeetResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/MoveHipFeet typed server; callback replacement is caller-managed. */
export class Ros1Pal_walking_msgsMoveHipFeetServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_walking_msgsMoveHipFeetRequestCodec,
              records.Ros1Pal_walking_msgsMoveHipFeetResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/Sit typed client; optional observer is independently granted. */
export class Ros1Pal_walking_msgsSitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Pal_walking_msgsSitRequestCodec, records.Ros1Pal_walking_msgsSitResponseCodec, observerAlias, capacity);
    }
}

/** @brief Complete pal_walking_msgs/Sit typed server; callback replacement is caller-managed. */
export class Ros1Pal_walking_msgsSitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Pal_walking_msgsSitRequestCodec, records.Ros1Pal_walking_msgsSitResponseCodec, false, capacity);
    }
}

/** @brief Complete pal_walking_msgs/StepOver typed client; optional observer is independently granted. */
export class Ros1Pal_walking_msgsStepOverClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Pal_walking_msgsStepOverRequestCodec, records.Ros1Pal_walking_msgsStepOverResponseCodec, observerAlias, capacity);
    }
}

/** @brief Complete pal_walking_msgs/StepOver typed server; callback replacement is caller-managed. */
export class Ros1Pal_walking_msgsStepOverServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_walking_msgsStepOverRequestCodec,
              records.Ros1Pal_walking_msgsStepOverResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/WalkSteps typed client; optional observer is independently granted. */
export class Ros1Pal_walking_msgsWalkStepsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_walking_msgsWalkStepsRequestCodec,
              records.Ros1Pal_walking_msgsWalkStepsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/WalkSteps typed server; callback replacement is caller-managed. */
export class Ros1Pal_walking_msgsWalkStepsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_walking_msgsWalkStepsRequestCodec,
              records.Ros1Pal_walking_msgsWalkStepsResponseCodec,
              false,
              capacity);
    }
}

/** @brief Complete pal_wifi_localization_msgs/GetWifiMap typed client; optional observer is independently granted. */
export class Ros1Pal_wifi_localization_msgsGetWifiMapClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Pal_wifi_localization_msgsGetWifiMapRequestCodec,
              records.Ros1Pal_wifi_localization_msgsGetWifiMapResponseCodec,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_wifi_localization_msgs/GetWifiMap typed server; callback replacement is caller-managed. */
export class Ros1Pal_wifi_localization_msgsGetWifiMapServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Pal_wifi_localization_msgsGetWifiMapRequestCodec,
              records.Ros1Pal_wifi_localization_msgsGetWifiMapResponseCodec,
              false,
              capacity);
    }
}
