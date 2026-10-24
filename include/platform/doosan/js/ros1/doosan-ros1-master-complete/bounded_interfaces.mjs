/**
 * @file bounded_interfaces.mjs
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros1-master-complete.ir.json
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
import * as records from 'doosan/js/ros1/doosan-ros1-master-complete/bounded_records.mjs';
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

/** Complete dsr_msgs/AlignAxis1 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsAlignAxis1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsAlignAxis1RequestCodec, records.Ros1Dsr_msgsAlignAxis1ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/AlignAxis1 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsAlignAxis1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsAlignAxis1RequestCodec, records.Ros1Dsr_msgsAlignAxis1ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/AlignAxis2 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsAlignAxis2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsAlignAxis2RequestCodec, records.Ros1Dsr_msgsAlignAxis2ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/AlignAxis2 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsAlignAxis2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsAlignAxis2RequestCodec, records.Ros1Dsr_msgsAlignAxis2ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/AlterMotion typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsAlterMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsAlterMotionRequestCodec, records.Ros1Dsr_msgsAlterMotionResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/AlterMotion typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsAlterMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsAlterMotionRequestCodec, records.Ros1Dsr_msgsAlterMotionResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/CalcCoord typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsCalcCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsCalcCoordRequestCodec, records.Ros1Dsr_msgsCalcCoordResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/CalcCoord typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsCalcCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsCalcCoordRequestCodec, records.Ros1Dsr_msgsCalcCoordResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/ChangeOperationSpeed typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsChangeOperationSpeedClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsChangeOperationSpeedRequestCodec,
              records.Ros1Dsr_msgsChangeOperationSpeedResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ChangeOperationSpeed typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsChangeOperationSpeedServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsChangeOperationSpeedRequestCodec,
              records.Ros1Dsr_msgsChangeOperationSpeedResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/CheckForceCondition typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsCheckForceConditionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsCheckForceConditionRequestCodec,
              records.Ros1Dsr_msgsCheckForceConditionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckForceCondition typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsCheckForceConditionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsCheckForceConditionRequestCodec,
              records.Ros1Dsr_msgsCheckForceConditionResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/CheckMotion typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsCheckMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsCheckMotionRequestCodec, records.Ros1Dsr_msgsCheckMotionResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/CheckMotion typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsCheckMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsCheckMotionRequestCodec, records.Ros1Dsr_msgsCheckMotionResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition1 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsCheckOrientationCondition1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsCheckOrientationCondition1RequestCodec,
              records.Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition1 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsCheckOrientationCondition1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsCheckOrientationCondition1RequestCodec,
              records.Ros1Dsr_msgsCheckOrientationCondition1ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition2 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsCheckOrientationCondition2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsCheckOrientationCondition2RequestCodec,
              records.Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckOrientationCondition2 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsCheckOrientationCondition2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsCheckOrientationCondition2RequestCodec,
              records.Ros1Dsr_msgsCheckOrientationCondition2ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/CheckPositionCondition typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsCheckPositionConditionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsCheckPositionConditionRequestCodec,
              records.Ros1Dsr_msgsCheckPositionConditionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/CheckPositionCondition typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsCheckPositionConditionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsCheckPositionConditionRequestCodec,
              records.Ros1Dsr_msgsCheckPositionConditionResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateModbus typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsConfigCreateModbusClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsConfigCreateModbusRequestCodec,
              records.Ros1Dsr_msgsConfigCreateModbusResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateModbus typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsConfigCreateModbusServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsConfigCreateModbusRequestCodec,
              records.Ros1Dsr_msgsConfigCreateModbusResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTcp typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsConfigCreateTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsConfigCreateTcpRequestCodec, records.Ros1Dsr_msgsConfigCreateTcpResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTcp typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsConfigCreateTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsConfigCreateTcpRequestCodec,
              records.Ros1Dsr_msgsConfigCreateTcpResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTool typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsConfigCreateToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsConfigCreateToolRequestCodec, records.Ros1Dsr_msgsConfigCreateToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ConfigCreateTool typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsConfigCreateToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsConfigCreateToolRequestCodec,
              records.Ros1Dsr_msgsConfigCreateToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteModbus typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsConfigDeleteModbusClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsConfigDeleteModbusRequestCodec,
              records.Ros1Dsr_msgsConfigDeleteModbusResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteModbus typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsConfigDeleteModbusServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsConfigDeleteModbusRequestCodec,
              records.Ros1Dsr_msgsConfigDeleteModbusResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTcp typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsConfigDeleteTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsConfigDeleteTcpRequestCodec, records.Ros1Dsr_msgsConfigDeleteTcpResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTcp typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsConfigDeleteTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsConfigDeleteTcpRequestCodec,
              records.Ros1Dsr_msgsConfigDeleteTcpResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTool typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsConfigDeleteToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsConfigDeleteToolRequestCodec, records.Ros1Dsr_msgsConfigDeleteToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ConfigDeleteTool typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsConfigDeleteToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsConfigDeleteToolRequestCodec,
              records.Ros1Dsr_msgsConfigDeleteToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ConnectRTControl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsConnectRTControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsConnectRTControlRequestCodec, records.Ros1Dsr_msgsConnectRTControlResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ConnectRTControl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsConnectRTControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsConnectRTControlRequestCodec,
              records.Ros1Dsr_msgsConnectRTControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/CoordTransform typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsCoordTransformClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsCoordTransformRequestCodec, records.Ros1Dsr_msgsCoordTransformResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/CoordTransform typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsCoordTransformServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsCoordTransformRequestCodec, records.Ros1Dsr_msgsCoordTransformResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/DisableAlterMotion typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsDisableAlterMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsDisableAlterMotionRequestCodec,
              records.Ros1Dsr_msgsDisableAlterMotionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DisableAlterMotion typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsDisableAlterMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsDisableAlterMotionRequestCodec,
              records.Ros1Dsr_msgsDisableAlterMotionResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/DisconnectRTControl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsDisconnectRTControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsDisconnectRTControlRequestCodec,
              records.Ros1Dsr_msgsDisconnectRTControlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/DisconnectRTControl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsDisconnectRTControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsDisconnectRTControlRequestCodec,
              records.Ros1Dsr_msgsDisconnectRTControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/DrlPause typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsDrlPauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsDrlPauseRequestCodec, records.Ros1Dsr_msgsDrlPauseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/DrlPause typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsDrlPauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsDrlPauseRequestCodec, records.Ros1Dsr_msgsDrlPauseResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/DrlResume typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsDrlResumeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsDrlResumeRequestCodec, records.Ros1Dsr_msgsDrlResumeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/DrlResume typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsDrlResumeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsDrlResumeRequestCodec, records.Ros1Dsr_msgsDrlResumeResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/DrlStart typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsDrlStartClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsDrlStartRequestCodec, records.Ros1Dsr_msgsDrlStartResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/DrlStart typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsDrlStartServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsDrlStartRequestCodec, records.Ros1Dsr_msgsDrlStartResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/DrlStop typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsDrlStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsDrlStopRequestCodec, records.Ros1Dsr_msgsDrlStopResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/DrlStop typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsDrlStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsDrlStopRequestCodec, records.Ros1Dsr_msgsDrlStopResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/EnableAlterMotion typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsEnableAlterMotionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsEnableAlterMotionRequestCodec,
              records.Ros1Dsr_msgsEnableAlterMotionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/EnableAlterMotion typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsEnableAlterMotionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsEnableAlterMotionRequestCodec,
              records.Ros1Dsr_msgsEnableAlterMotionResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/Fkin typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsFkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsFkinRequestCodec, records.Ros1Dsr_msgsFkinResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/Fkin typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsFkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsFkinRequestCodec, records.Ros1Dsr_msgsFkinResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetControlMode typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetControlModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetControlModeRequestCodec, records.Ros1Dsr_msgsGetControlModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetControlMode typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetControlModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetControlModeRequestCodec, records.Ros1Dsr_msgsGetControlModeResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetControlSpace typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetControlSpaceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetControlSpaceRequestCodec, records.Ros1Dsr_msgsGetControlSpaceResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetControlSpace typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetControlSpaceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetControlSpaceRequestCodec,
              records.Ros1Dsr_msgsGetControlSpaceResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxAnalogInput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCtrlBoxAnalogInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec,
              records.Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxAnalogInput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCtrlBoxAnalogInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetCtrlBoxAnalogInputRequestCodec,
              records.Ros1Dsr_msgsGetCtrlBoxAnalogInputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalInput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalInput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalInputRequestCodec,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalInputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalOutput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCtrlBoxDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCtrlBoxDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPose typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentPoseRequestCodec, records.Ros1Dsr_msgsGetCurrentPoseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPose typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentPoseRequestCodec, records.Ros1Dsr_msgsGetCurrentPoseResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosj typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentPosjClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentPosjRequestCodec, records.Ros1Dsr_msgsGetCurrentPosjResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosj typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentPosjServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentPosjRequestCodec, records.Ros1Dsr_msgsGetCurrentPosjResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentPosxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentPosxRequestCodec, records.Ros1Dsr_msgsGetCurrentPosxResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentPosx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentPosxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentPosxRequestCodec, records.Ros1Dsr_msgsGetCurrentPosxResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentRotm typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentRotmClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentRotmRequestCodec, records.Ros1Dsr_msgsGetCurrentRotmResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentRotm typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentRotmServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentRotmRequestCodec, records.Ros1Dsr_msgsGetCurrentRotmResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentSolutionSpace typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentSolutionSpaceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec,
              records.Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentSolutionSpace typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentSolutionSpaceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetCurrentSolutionSpaceRequestCodec,
              records.Ros1Dsr_msgsGetCurrentSolutionSpaceResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTcp typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentTcpRequestCodec, records.Ros1Dsr_msgsGetCurrentTcpResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTcp typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentTcpRequestCodec, records.Ros1Dsr_msgsGetCurrentTcpResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTool typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentToolRequestCodec, records.Ros1Dsr_msgsGetCurrentToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentTool typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentToolRequestCodec, records.Ros1Dsr_msgsGetCurrentToolResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentToolFlangePosx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentToolFlangePosxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec,
              records.Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentToolFlangePosx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentToolFlangePosxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetCurrentToolFlangePosxRequestCodec,
              records.Ros1Dsr_msgsGetCurrentToolFlangePosxResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelj typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentVeljClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentVeljRequestCodec, records.Ros1Dsr_msgsGetCurrentVeljResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelj typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentVeljServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentVeljRequestCodec, records.Ros1Dsr_msgsGetCurrentVeljResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetCurrentVelxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetCurrentVelxRequestCodec, records.Ros1Dsr_msgsGetCurrentVelxResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetCurrentVelx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetCurrentVelxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetCurrentVelxRequestCodec, records.Ros1Dsr_msgsGetCurrentVelxResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosj typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetDesiredPosjClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetDesiredPosjRequestCodec, records.Ros1Dsr_msgsGetDesiredPosjResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosj typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetDesiredPosjServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetDesiredPosjRequestCodec, records.Ros1Dsr_msgsGetDesiredPosjResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetDesiredPosxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetDesiredPosxRequestCodec, records.Ros1Dsr_msgsGetDesiredPosxResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredPosx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetDesiredPosxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetDesiredPosxRequestCodec, records.Ros1Dsr_msgsGetDesiredPosxResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelj typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetDesiredVeljClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetDesiredVeljRequestCodec, records.Ros1Dsr_msgsGetDesiredVeljResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelj typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetDesiredVeljServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetDesiredVeljRequestCodec, records.Ros1Dsr_msgsGetDesiredVeljResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetDesiredVelxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetDesiredVelxRequestCodec, records.Ros1Dsr_msgsGetDesiredVelxResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetDesiredVelx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetDesiredVelxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetDesiredVelxRequestCodec, records.Ros1Dsr_msgsGetDesiredVelxResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetDrlState typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetDrlStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetDrlStateRequestCodec, records.Ros1Dsr_msgsGetDrlStateResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetDrlState typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetDrlStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetDrlStateRequestCodec, records.Ros1Dsr_msgsGetDrlStateResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetExternalTorque typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetExternalTorqueClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetExternalTorqueRequestCodec,
              records.Ros1Dsr_msgsGetExternalTorqueResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetExternalTorque typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetExternalTorqueServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetExternalTorqueRequestCodec,
              records.Ros1Dsr_msgsGetExternalTorqueResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetJointTorque typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetJointTorqueClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetJointTorqueRequestCodec, records.Ros1Dsr_msgsGetJointTorqueResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetJointTorque typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetJointTorqueServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetJointTorqueRequestCodec, records.Ros1Dsr_msgsGetJointTorqueResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetLastAlarm typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetLastAlarmClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetLastAlarmRequestCodec, records.Ros1Dsr_msgsGetLastAlarmResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetLastAlarm typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetLastAlarmServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetLastAlarmRequestCodec, records.Ros1Dsr_msgsGetLastAlarmResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetModbusInput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetModbusInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetModbusInputRequestCodec, records.Ros1Dsr_msgsGetModbusInputResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetModbusInput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetModbusInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetModbusInputRequestCodec, records.Ros1Dsr_msgsGetModbusInputResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetOrientationError typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetOrientationErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetOrientationErrorRequestCodec,
              records.Ros1Dsr_msgsGetOrientationErrorResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetOrientationError typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetOrientationErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetOrientationErrorRequestCodec,
              records.Ros1Dsr_msgsGetOrientationErrorResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputDataList typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRTControlInputDataListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetRTControlInputDataListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlInputDataListResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputDataList typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRTControlInputDataListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetRTControlInputDataListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlInputDataListResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputVersionList typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRTControlInputVersionListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlInputVersionList typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRTControlInputVersionListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetRTControlInputVersionListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlInputVersionListResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputDataList typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRTControlOutputDataListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputDataList typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRTControlOutputDataListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetRTControlOutputDataListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlOutputDataListResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputVersionList typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRTControlOutputVersionListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRTControlOutputVersionList typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRTControlOutputVersionListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetRTControlOutputVersionListRequestCodec,
              records.Ros1Dsr_msgsGetRTControlOutputVersionListResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotMode typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetRobotModeRequestCodec, records.Ros1Dsr_msgsGetRobotModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetRobotMode typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetRobotModeRequestCodec, records.Ros1Dsr_msgsGetRobotModeResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetRobotSpeedMode typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRobotSpeedModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetRobotSpeedModeRequestCodec,
              records.Ros1Dsr_msgsGetRobotSpeedModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotSpeedMode typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRobotSpeedModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetRobotSpeedModeRequestCodec,
              records.Ros1Dsr_msgsGetRobotSpeedModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetRobotState typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRobotStateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetRobotStateRequestCodec, records.Ros1Dsr_msgsGetRobotStateResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetRobotState typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRobotStateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetRobotStateRequestCodec, records.Ros1Dsr_msgsGetRobotStateResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetRobotSystem typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetRobotSystemClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetRobotSystemRequestCodec, records.Ros1Dsr_msgsGetRobotSystemResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetRobotSystem typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetRobotSystemServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetRobotSystemRequestCodec, records.Ros1Dsr_msgsGetRobotSystemResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetSolutionSpace typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetSolutionSpaceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetSolutionSpaceRequestCodec, records.Ros1Dsr_msgsGetSolutionSpaceResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetSolutionSpace typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetSolutionSpaceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetSolutionSpaceRequestCodec,
              records.Ros1Dsr_msgsGetSolutionSpaceResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalInput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetToolDigitalInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetToolDigitalInputRequestCodec,
              records.Ros1Dsr_msgsGetToolDigitalInputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalInput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetToolDigitalInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetToolDigitalInputRequestCodec,
              records.Ros1Dsr_msgsGetToolDigitalInputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalOutput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetToolDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetToolDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsGetToolDigitalOutputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetToolDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetToolDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsGetToolDigitalOutputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetToolForce typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetToolForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetToolForceRequestCodec, records.Ros1Dsr_msgsGetToolForceResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetToolForce typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetToolForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsGetToolForceRequestCodec, records.Ros1Dsr_msgsGetToolForceResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/GetUserCartCoord typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetUserCartCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsGetUserCartCoordRequestCodec, records.Ros1Dsr_msgsGetUserCartCoordResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/GetUserCartCoord typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetUserCartCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetUserCartCoordRequestCodec,
              records.Ros1Dsr_msgsGetUserCartCoordResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/GetWorkpieceWeight typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsGetWorkpieceWeightClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsGetWorkpieceWeightRequestCodec,
              records.Ros1Dsr_msgsGetWorkpieceWeightResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/GetWorkpieceWeight typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsGetWorkpieceWeightServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsGetWorkpieceWeightRequestCodec,
              records.Ros1Dsr_msgsGetWorkpieceWeightResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/Ikin typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsIkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsIkinRequestCodec, records.Ros1Dsr_msgsIkinResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/Ikin typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsIkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsIkinRequestCodec, records.Ros1Dsr_msgsIkinResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/IkinEx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsIkinExClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsIkinExRequestCodec, records.Ros1Dsr_msgsIkinExResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/IkinEx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsIkinExServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsIkinExRequestCodec, records.Ros1Dsr_msgsIkinExResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/IsDoneBoltTightening typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsIsDoneBoltTighteningClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec,
              records.Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/IsDoneBoltTightening typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsIsDoneBoltTighteningServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsIsDoneBoltTighteningRequestCodec,
              records.Ros1Dsr_msgsIsDoneBoltTighteningResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/Jog typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsJogRequestCodec, records.Ros1Dsr_msgsJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/Jog typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsJogRequestCodec, records.Ros1Dsr_msgsJogResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/JogMulti typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsJogMultiClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsJogMultiRequestCodec, records.Ros1Dsr_msgsJogMultiResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/JogMulti typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsJogMultiServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsJogMultiRequestCodec, records.Ros1Dsr_msgsJogMultiResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/ManageAccessControl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsManageAccessControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsManageAccessControlRequestCodec,
              records.Ros1Dsr_msgsManageAccessControlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ManageAccessControl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsManageAccessControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsManageAccessControlRequestCodec,
              records.Ros1Dsr_msgsManageAccessControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/MoveBlending typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveBlendingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveBlendingRequestCodec, records.Ros1Dsr_msgsMoveBlendingResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveBlending typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveBlendingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveBlendingRequestCodec, records.Ros1Dsr_msgsMoveBlendingResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveCircle typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveCircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveCircleRequestCodec, records.Ros1Dsr_msgsMoveCircleResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveCircle typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveCircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveCircleRequestCodec, records.Ros1Dsr_msgsMoveCircleResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveHome typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveHomeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveHomeRequestCodec, records.Ros1Dsr_msgsMoveHomeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveHome typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveHomeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveHomeRequestCodec, records.Ros1Dsr_msgsMoveHomeResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveJoint typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveJointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveJointRequestCodec, records.Ros1Dsr_msgsMoveJointResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveJoint typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveJointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveJointRequestCodec, records.Ros1Dsr_msgsMoveJointResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveJointx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveJointxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveJointxRequestCodec, records.Ros1Dsr_msgsMoveJointxResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveJointx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveJointxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveJointxRequestCodec, records.Ros1Dsr_msgsMoveJointxResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveLine typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveLineClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveLineRequestCodec, records.Ros1Dsr_msgsMoveLineResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveLine typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveLineServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveLineRequestCodec, records.Ros1Dsr_msgsMoveLineResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MovePause typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMovePauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMovePauseRequestCodec, records.Ros1Dsr_msgsMovePauseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MovePause typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMovePauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMovePauseRequestCodec, records.Ros1Dsr_msgsMovePauseResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MovePeriodic typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMovePeriodicClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMovePeriodicRequestCodec, records.Ros1Dsr_msgsMovePeriodicResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MovePeriodic typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMovePeriodicServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMovePeriodicRequestCodec, records.Ros1Dsr_msgsMovePeriodicResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveResume typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveResumeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveResumeRequestCodec, records.Ros1Dsr_msgsMoveResumeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveResume typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveResumeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveResumeRequestCodec, records.Ros1Dsr_msgsMoveResumeResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveSpiral typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveSpiralClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveSpiralRequestCodec, records.Ros1Dsr_msgsMoveSpiralResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveSpiral typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveSpiralServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveSpiralRequestCodec, records.Ros1Dsr_msgsMoveSpiralResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveSplineJoint typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveSplineJointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveSplineJointRequestCodec, records.Ros1Dsr_msgsMoveSplineJointResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveSplineJoint typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveSplineJointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsMoveSplineJointRequestCodec,
              records.Ros1Dsr_msgsMoveSplineJointResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/MoveSplineTask typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveSplineTaskClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveSplineTaskRequestCodec, records.Ros1Dsr_msgsMoveSplineTaskResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveSplineTask typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveSplineTaskServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveSplineTaskRequestCodec, records.Ros1Dsr_msgsMoveSplineTaskResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveStop typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveStopRequestCodec, records.Ros1Dsr_msgsMoveStopResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveStop typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveStopRequestCodec, records.Ros1Dsr_msgsMoveStopResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/MoveWait typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsMoveWaitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsMoveWaitRequestCodec, records.Ros1Dsr_msgsMoveWaitResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/MoveWait typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsMoveWaitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsMoveWaitRequestCodec, records.Ros1Dsr_msgsMoveWaitResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/OverwriteUserCartCoord typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsOverwriteUserCartCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec,
              records.Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/OverwriteUserCartCoord typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsOverwriteUserCartCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsOverwriteUserCartCoordRequestCodec,
              records.Ros1Dsr_msgsOverwriteUserCartCoordResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis1 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsParallelAxis1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsParallelAxis1RequestCodec, records.Ros1Dsr_msgsParallelAxis1ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis1 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsParallelAxis1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsParallelAxis1RequestCodec, records.Ros1Dsr_msgsParallelAxis1ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis2 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsParallelAxis2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsParallelAxis2RequestCodec, records.Ros1Dsr_msgsParallelAxis2ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ParallelAxis2 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsParallelAxis2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsParallelAxis2RequestCodec, records.Ros1Dsr_msgsParallelAxis2ResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/ReadDataRT typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsReadDataRTClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsReadDataRTRequestCodec, records.Ros1Dsr_msgsReadDataRTResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ReadDataRT typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsReadDataRTServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsReadDataRTRequestCodec, records.Ros1Dsr_msgsReadDataRTResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/ReleaseComplianceCtrl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsReleaseComplianceCtrlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec,
              records.Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseComplianceCtrl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsReleaseComplianceCtrlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsReleaseComplianceCtrlRequestCodec,
              records.Ros1Dsr_msgsReleaseComplianceCtrlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseForce typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsReleaseForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsReleaseForceRequestCodec, records.Ros1Dsr_msgsReleaseForceResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/ReleaseForce typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsReleaseForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsReleaseForceRequestCodec, records.Ros1Dsr_msgsReleaseForceResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/ReleaseProtectiveStop typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsReleaseProtectiveStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsReleaseProtectiveStopRequestCodec,
              records.Ros1Dsr_msgsReleaseProtectiveStopResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ReleaseProtectiveStop typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsReleaseProtectiveStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsReleaseProtectiveStopRequestCodec,
              records.Ros1Dsr_msgsReleaseProtectiveStopResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/ResetWorkpieceWeight typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsResetWorkpieceWeightClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsResetWorkpieceWeightRequestCodec,
              records.Ros1Dsr_msgsResetWorkpieceWeightResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/ResetWorkpieceWeight typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsResetWorkpieceWeightServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsResetWorkpieceWeightRequestCodec,
              records.Ros1Dsr_msgsResetWorkpieceWeightResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FClose typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsRobotiq2FCloseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsRobotiq2FCloseRequestCodec, records.Ros1Dsr_msgsRobotiq2FCloseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FClose typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsRobotiq2FCloseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsRobotiq2FCloseRequestCodec, records.Ros1Dsr_msgsRobotiq2FCloseResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FMove typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsRobotiq2FMoveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsRobotiq2FMoveRequestCodec, records.Ros1Dsr_msgsRobotiq2FMoveResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FMove typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsRobotiq2FMoveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsRobotiq2FMoveRequestCodec, records.Ros1Dsr_msgsRobotiq2FMoveResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FOpen typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsRobotiq2FOpenClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsRobotiq2FOpenRequestCodec, records.Ros1Dsr_msgsRobotiq2FOpenResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/Robotiq2FOpen typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsRobotiq2FOpenServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsRobotiq2FOpenRequestCodec, records.Ros1Dsr_msgsRobotiq2FOpenResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SerialSendData typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSerialSendDataClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSerialSendDataRequestCodec, records.Ros1Dsr_msgsSerialSendDataResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SerialSendData typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSerialSendDataServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSerialSendDataRequestCodec, records.Ros1Dsr_msgsSerialSendDataResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetAccJRT typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetAccJRTClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetAccJRTRequestCodec, records.Ros1Dsr_msgsSetAccJRTResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetAccJRT typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetAccJRTServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetAccJRTRequestCodec, records.Ros1Dsr_msgsSetAccJRTResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetAccXRT typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetAccXRTClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetAccXRTRequestCodec, records.Ros1Dsr_msgsSetAccXRTResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetAccXRT typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetAccXRTServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetAccXRTRequestCodec, records.Ros1Dsr_msgsSetAccXRTResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogInputType typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogInputType typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutputType typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxAnalogOutputType typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxDigitalOutput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetCtrlBoxDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetCtrlBoxDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTcp typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetCurrentTcpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetCurrentTcpRequestCodec, records.Ros1Dsr_msgsSetCurrentTcpResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTcp typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetCurrentTcpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetCurrentTcpRequestCodec, records.Ros1Dsr_msgsSetCurrentTcpResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTool typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetCurrentToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetCurrentToolRequestCodec, records.Ros1Dsr_msgsSetCurrentToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetCurrentTool typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetCurrentToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetCurrentToolRequestCodec, records.Ros1Dsr_msgsSetCurrentToolResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetDesiredForce typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetDesiredForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetDesiredForceRequestCodec, records.Ros1Dsr_msgsSetDesiredForceResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetDesiredForce typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetDesiredForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetDesiredForceRequestCodec,
              records.Ros1Dsr_msgsSetDesiredForceResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetModbusOutput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetModbusOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetModbusOutputRequestCodec, records.Ros1Dsr_msgsSetModbusOutputResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetModbusOutput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetModbusOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetModbusOutputRequestCodec,
              records.Ros1Dsr_msgsSetModbusOutputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlInput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetRTControlInputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetRTControlInputRequestCodec,
              records.Ros1Dsr_msgsSetRTControlInputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlInput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetRTControlInputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetRTControlInputRequestCodec,
              records.Ros1Dsr_msgsSetRTControlInputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlOutput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetRTControlOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetRTControlOutputRequestCodec,
              records.Ros1Dsr_msgsSetRTControlOutputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRTControlOutput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetRTControlOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetRTControlOutputRequestCodec,
              records.Ros1Dsr_msgsSetRTControlOutputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetRefCoord typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetRefCoordClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetRefCoordRequestCodec, records.Ros1Dsr_msgsSetRefCoordResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetRefCoord typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetRefCoordServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetRefCoordRequestCodec, records.Ros1Dsr_msgsSetRefCoordResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetRobotControl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetRobotControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetRobotControlRequestCodec, records.Ros1Dsr_msgsSetRobotControlResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetRobotControl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetRobotControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetRobotControlRequestCodec,
              records.Ros1Dsr_msgsSetRobotControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotMode typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetRobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetRobotModeRequestCodec, records.Ros1Dsr_msgsSetRobotModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetRobotMode typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetRobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetRobotModeRequestCodec, records.Ros1Dsr_msgsSetRobotModeResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetRobotSpeedMode typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetRobotSpeedModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetRobotSpeedModeRequestCodec,
              records.Ros1Dsr_msgsSetRobotSpeedModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotSpeedMode typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetRobotSpeedModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetRobotSpeedModeRequestCodec,
              records.Ros1Dsr_msgsSetRobotSpeedModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetRobotSystem typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetRobotSystemClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetRobotSystemRequestCodec, records.Ros1Dsr_msgsSetRobotSystemResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetRobotSystem typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetRobotSystemServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetRobotSystemRequestCodec, records.Ros1Dsr_msgsSetRobotSystemResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetSafeStopResetType typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetSafeStopResetTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec,
              records.Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetSafeStopResetType typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetSafeStopResetTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetSafeStopResetTypeRequestCodec,
              records.Ros1Dsr_msgsSetSafeStopResetTypeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetSingularityHandling typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetSingularityHandlingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetSingularityHandlingRequestCodec,
              records.Ros1Dsr_msgsSetSingularityHandlingResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetSingularityHandling typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetSingularityHandlingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetSingularityHandlingRequestCodec,
              records.Ros1Dsr_msgsSetSingularityHandlingResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetStiffnessx typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetStiffnessxClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetStiffnessxRequestCodec, records.Ros1Dsr_msgsSetStiffnessxResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetStiffnessx typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetStiffnessxServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetStiffnessxRequestCodec, records.Ros1Dsr_msgsSetStiffnessxResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetToolDigitalOutput typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetToolDigitalOutputClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetToolDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsSetToolDigitalOutputResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetToolDigitalOutput typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetToolDigitalOutputServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetToolDigitalOutputRequestCodec,
              records.Ros1Dsr_msgsSetToolDigitalOutputResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetToolShape typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetToolShapeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetToolShapeRequestCodec, records.Ros1Dsr_msgsSetToolShapeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetToolShape typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetToolShapeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetToolShapeRequestCodec, records.Ros1Dsr_msgsSetToolShapeResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord1 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetUserCartCoord1Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetUserCartCoord1RequestCodec,
              records.Ros1Dsr_msgsSetUserCartCoord1ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord1 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetUserCartCoord1Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetUserCartCoord1RequestCodec,
              records.Ros1Dsr_msgsSetUserCartCoord1ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord2 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetUserCartCoord2Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetUserCartCoord2RequestCodec,
              records.Ros1Dsr_msgsSetUserCartCoord2ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord2 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetUserCartCoord2Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetUserCartCoord2RequestCodec,
              records.Ros1Dsr_msgsSetUserCartCoord2ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord3 typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetUserCartCoord3Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsSetUserCartCoord3RequestCodec,
              records.Ros1Dsr_msgsSetUserCartCoord3ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/SetUserCartCoord3 typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetUserCartCoord3Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsSetUserCartCoord3RequestCodec,
              records.Ros1Dsr_msgsSetUserCartCoord3ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/SetVelJRT typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetVelJRTClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetVelJRTRequestCodec, records.Ros1Dsr_msgsSetVelJRTResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetVelJRT typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetVelJRTServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetVelJRTRequestCodec, records.Ros1Dsr_msgsSetVelJRTResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/SetVelXRT typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsSetVelXRTClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsSetVelXRTRequestCodec, records.Ros1Dsr_msgsSetVelXRTResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/SetVelXRT typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsSetVelXRTServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsSetVelXRTRequestCodec, records.Ros1Dsr_msgsSetVelXRTResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/StartRTControl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsStartRTControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsStartRTControlRequestCodec, records.Ros1Dsr_msgsStartRTControlResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/StartRTControl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsStartRTControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsStartRTControlRequestCodec, records.Ros1Dsr_msgsStartRTControlResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/StopRTControl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsStopRTControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsStopRTControlRequestCodec, records.Ros1Dsr_msgsStopRTControlResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/StopRTControl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsStopRTControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsStopRTControlRequestCodec, records.Ros1Dsr_msgsStopRTControlResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/TaskComplianceCtrl typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsTaskComplianceCtrlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dsr_msgsTaskComplianceCtrlRequestCodec,
              records.Ros1Dsr_msgsTaskComplianceCtrlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dsr_msgs/TaskComplianceCtrl typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsTaskComplianceCtrlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dsr_msgsTaskComplianceCtrlRequestCodec,
              records.Ros1Dsr_msgsTaskComplianceCtrlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dsr_msgs/Trans typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsTransClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsTransRequestCodec, records.Ros1Dsr_msgsTransResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/Trans typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsTransServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsTransRequestCodec, records.Ros1Dsr_msgsTransResponseCodec, false, capacity);
    }
}

/** Complete dsr_msgs/WriteDataRT typed client; optional observer is independently granted. */
export class Ros1Dsr_msgsWriteDataRTClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dsr_msgsWriteDataRTRequestCodec, records.Ros1Dsr_msgsWriteDataRTResponseCodec, observerAlias, capacity);
    }
}

/** Complete dsr_msgs/WriteDataRT typed server; callback replacement is caller-managed. */
export class Ros1Dsr_msgsWriteDataRTServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dsr_msgsWriteDataRTRequestCodec, records.Ros1Dsr_msgsWriteDataRTResponseCodec, false, capacity);
    }
}
