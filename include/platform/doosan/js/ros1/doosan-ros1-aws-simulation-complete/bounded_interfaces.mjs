/**
 * @file bounded_interfaces.mjs
 * @brief Typed service and action operations for the exact doosan source domain.
 * @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
 * identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
 * roles; this module grants no resource permission.
 * @see share/platform/doosan/domains/doosan-ros1-aws-simulation-complete.ir.json
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
import * as records from 'doosan/js/ros1/doosan-ros1-aws-simulation-complete/bounded_records.mjs';
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
