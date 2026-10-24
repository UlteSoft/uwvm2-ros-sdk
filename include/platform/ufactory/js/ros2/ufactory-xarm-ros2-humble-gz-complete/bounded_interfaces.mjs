/**
 * @file bounded_interfaces.mjs
 * @brief Preserve the complete original ufactory/ros2_humble_gz canonical value domain.
 * @details The selected domain contains 111 complete record/components and 300 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
/**
 * Generated custom RPC owners. All aliases must be explicitly granted by the host.
 * Callers own each facade and must inspect closeChecked()/revokeChecked(). No
 * builtin service/action factory, native thread, timer or implicit retry is used.
 * Place beside bounded_records.mjs under the selected ufactory profile directory.
 * Relocation requires updating only the SDK module imports below.
 */
import {EventBinding, EventKind} from 'ros/js/events.mjs';
import {Capability, RosError, Session, Status} from 'ros/js/roswasm.mjs';

import * as records from './bounded_records.mjs';

const empty = new Uint8Array(), MAX_SLOTS = 1024;
const apply = Reflect.apply, openCapability = Session.prototype.open;
const closeCapability = Capability.prototype.close, revokeCapability = Capability.prototype.revoke;
const noArgs = Object.freeze([]);

/**
 * @brief Check the complete finite representation of the selected original interface.
 * @details Inspect only initialized active elements and original scalar domains. Byte counts describe
 * canonical content rather than object sizeof, reserved capacity, native identities or granted quotas.
 * @param message Complete original component or local protocol value, with its documented owner and bounds.
 * @return Documented Boolean, byte count or original numeric status; this local check grants no authority.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
function invalid(message = 'invalid custom RPC envelope')
{
    throw new RosError(Status.INVALID, message);
}

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param reply Complete original component or local protocol value, with its documented owner and bounds.
 * @param operation Complete original component or local protocol value, with its documented owner and
 * bounds.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
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

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param reply Complete original component or local protocol value, with its documented owner and bounds.
 * @param operation Complete original component or local protocol value, with its documented owner and
 * bounds.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
function zero(reply, operation)
{
    if(checked(reply, operation).length)
        invalid();
}

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param id Complete original component or local protocol value, with its documented owner and bounds.
 * @param allowZero Complete original component or local protocol value, with its documented owner and
 * bounds.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
function idBytes(id, allowZero = false)
{
    if(typeof id !== 'bigint' || id < 0n || id > 0xffffffffffffffffn || (!allowZero && !id))
        invalid();
    const b = new Uint8Array(8);
    new DataView(b.buffer).setBigUint64(0, id, true);
    return b;
}

/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
function readId(bytes)
{
    if(bytes.length < 8)
        invalid();
    const id = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength).getBigUint64(0, true);
    if(!id)
        invalid();
    return id;
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
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
function framed(id, body, kind = null)
{
    const prefix = idBytes(id), out = new Uint8Array(body.length + (kind === null ? 8 : 9));
    out.set(prefix);
    if(kind !== null)
        out[8] = kind;
    out.set(body, kind === null ? 8 : 9);
    return out;
}

/**
 * @brief Decode the whole canonical value for the selected original interface.
 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a complete
 * value. Returned nested values own their storage and retain every original field.
 * @param codec Complete original component or local protocol value, with its documented owner and bounds.
 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
 * @return Complete owning value on success; codec failure exposes no accepted partial record.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
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

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param count Finite active count/capacity in bytes or elements as specified by the selected schema.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
 * policy.
 */
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

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param retry Complete original component or local protocol value, with its documented owner and bounds.
     * @param inspect Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
    retryCleanup()
    {
        return this.#retry();
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
    diagnostics()
    {
        return this.#inspect();
    }
}

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param role Complete original component or local protocol value, with its documented owner and bounds.
 * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
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

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param row Complete original component or local protocol value, with its documented owner and bounds.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
function copyFact(row)
{
    return {...row};
}

/**
 * @brief Maintain the bounded local protocol state for the selected original interface.
 * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
 * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through synchronous
 * return.
 * @param row Complete original component or local protocol value, with its documented owner and bounds.
 * @param threw Complete original component or local protocol value, with its documented owner and bounds.
 * @param status Complete original component or local protocol value, with its documented owner and bounds.
 * @param error Complete original component or local protocol value, with its documented owner and bounds.
 * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
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

/**
 * @brief Retire explicit owners while preserving the independent primary failure.
 * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the native
 * cleanup reports an error. Report each cleanup result separately; do not reopen or replay an operation.
 * @param row Complete original component or local protocol value, with its documented owner and bounds.
 * @return Original cleanup status/facts; cleanup is independent of service or action application completion.
 * @par Permissions
 * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
 */
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

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param session Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
     * call.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param aliases Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param i Complete original component or local protocol value, with its documented owner and bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    cap(i)
    {
        if(this.#cleaning)
            throw new RosError(Status.CONFLICT, 'active custom cleanup');
        const cap = this.#caps[i];
        if(!cap || cap.closed)
            throw new RosError(Status.BAD_HANDLE, 'retired custom RPC owner');
        return cap;
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    check()
    {
        if(this.#busy || this.#cleaning)
            throw new RosError(Status.CONFLICT, 'active custom callback/cleanup');
        this.cap(0);
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
    enter()
    {
        this.check();
        this.#busy = true;
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

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param revoke Complete original component or local protocol value, with its documented owner and
     *     bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param session Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
     * call.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param alias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param request Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param response Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param observerAlias Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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
    closeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary);
        if(!r.blocked && r.retained === 0)
            this.#pending.clear();
        return r;
    }

    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param session Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
     * call.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param advertise Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param respond Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param input Complete initialized immutable canonical bytes, borrowed until return.
     * @param output Exclusive caller-owned writable storage with the documented finite capacity.
     * @param action Complete original component or local protocol value, with its documented owner and
     *     bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @param feedback Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Perform one caller-driven receive/dispatch pass for the selected original interface.
     * @details Idle 11 retains pending ownership and does not supply a response. Decode a full component
     * before calling user code. Serialize the facade, its callback state and borrowed storage throughout this
     * pass.
     * @return Original receive/codec/dispatch status and only genuinely observed response or ticket facts.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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
        /**
         * @brief Maintain the bounded local protocol state for the selected original interface.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit
         * capability policy.
         */
        zero(this.#owners.cap(1).request(this.#action ? 'action_respond' : 'service_respond', framed(id, codec.encode(value), kind)),
             this.#action ? 'action_respond' : 'service_respond');
        if(!this.#action || kind !== 1)
            this.#live.delete(id);
    }

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
    closeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary);
        if(!r.blocked && r.retained === 0)
            this.#live.clear();
        return r;
    }

    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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

    /**
     * @brief Construct local facade state and track only explicitly acquired owners.
     * @details Retain the selected backend and borrowed inputs for synchronous use. Each alias must be
     * independently granted by the host. Construction refusal preserves original failure and acquired-owner
     * cleanup facts.
     * @param session Borrowed live owner/context/backend; retain it unchanged throughout this synchronous
     * call.
     * @param version Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param aliases Existing distinct policy alias; the host supplies its operation, type and quotas.
     * @param goal Complete original component or local protocol value, with its documented owner and bounds.
     * @param result Complete original component or local protocol value, with its documented owner and
     *     bounds.
     * @param feedback Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param capacity Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
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

    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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

    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    cancelOwn(id)
    {
        this.#owners.check();
        this.#owns(id);
        const b = checked(this.#owners.cap(1).request('action_cancel_own_goal', idBytes(id)), 'action_cancel_own_goal');
        if(b.length !== 1 || b[0] > 1)
            invalid();
        return b[0] === 1;
    }

    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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

    /**
     * @brief Issue one explicit operation for the selected original interface.
     * @details The caller supplies an already granted exact operation alias and a complete bounded
     * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never silently
     * replayed; a timeout is not evidence of rollback or actuator completion.
     * @return Original operation status with its independent presence/required-length facts; no fallback
     * response.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    cancelAll()
    {
        return this.cancelAny(0n);
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    feedback(id)
    {
        this.#owners.check();
        this.#owns(id);
        const b = checked(this.#owners.cap(2).request('action_receive_feedback', idBytes(id)), 'action_receive_feedback');
        if(readId(b) !== id)
            invalid();
        return decode(this.#feedback, b.subarray(8));
    }

    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param id Complete original component or local protocol value, with its documented owner and bounds.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
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
    closeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary);
        if(!r.blocked && r.retained === 0)
            this.#goals.clear();
        return r;
    }

    /**
     * @brief Retire explicit owners while preserving the independent primary failure.
     * @details Follow the facade's once-only owner ledger. Closing retires local ownership even when the
     * native cleanup reports an error. Report each cleanup result separately; do not reopen or replay an
     * operation.
     * @param primary Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @return Original cleanup status/facts; cleanup is independent of service or action application
     * completion.
     * @par Permissions Pure codecs need no grant; native operations retain the enclosing explicit capability
     * policy.
     */
    revokeChecked(primary = 0)
    {
        const r = this.#owners.cleanup(primary, true);
        if(!r.blocked && r.retained === 0)
            this.#goals.clear();
        return r;
    }
}

/** Complete xarm_msgs/srv/BioGripperCtrl typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvBioGripperCtrlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec,
              records.Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/BioGripperCtrl typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvBioGripperCtrlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec,
              records.Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/BioGripperEnable typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvBioGripperEnableClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec,
              records.Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/BioGripperEnable typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvBioGripperEnableServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec,
              records.Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/Call typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvCallClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvCall_RequestCodec, records.Ros2Xarm_msgsSrvCall_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/Call typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvCallServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvCall_RequestCodec, records.Ros2Xarm_msgsSrvCall_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/FtAdmittanceParams typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvFtAdmittanceParamsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCodec,
              records.Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtAdmittanceParams typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvFtAdmittanceParamsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCodec,
              records.Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtCaliLoad typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvFtCaliLoadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec, records.Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/FtCaliLoad typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvFtCaliLoadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec,
              records.Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForceConfig typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvFtForceConfigClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvFtForceConfig_RequestCodec,
              records.Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForceConfig typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvFtForceConfigServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvFtForceConfig_RequestCodec,
              records.Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForceParams typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvFtForceParamsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvFtForceParams_RequestCodec,
              records.Ros2Xarm_msgsSrvFtForceParams_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForceParams typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvFtForceParamsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvFtForceParams_RequestCodec,
              records.Ros2Xarm_msgsSrvFtForceParams_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtForcePid typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvFtForcePidClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvFtForcePid_RequestCodec, records.Ros2Xarm_msgsSrvFtForcePid_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/FtForcePid typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvFtForcePidServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvFtForcePid_RequestCodec,
              records.Ros2Xarm_msgsSrvFtForcePid_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/FtImpedance typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvFtImpedanceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvFtImpedance_RequestCodec, records.Ros2Xarm_msgsSrvFtImpedance_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/FtImpedance typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvFtImpedanceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvFtImpedance_RequestCodec,
              records.Ros2Xarm_msgsSrvFtImpedance_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetAnalogIO typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetAnalogIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec, records.Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/GetAnalogIO typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetAnalogIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec,
              records.Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetDigitalIO typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetDigitalIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec,
              records.Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetDigitalIO typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetDigitalIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec,
              records.Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32 typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetFloat32Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvGetFloat32_RequestCodec, records.Ros2Xarm_msgsSrvGetFloat32_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32 typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetFloat32Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGetFloat32_RequestCodec,
              records.Ros2Xarm_msgsSrvGetFloat32_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32List typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetFloat32ListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvGetFloat32List_RequestCodec,
              records.Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetFloat32List typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetFloat32ListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGetFloat32List_RequestCodec,
              records.Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16 typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetInt16Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvGetInt16_RequestCodec, records.Ros2Xarm_msgsSrvGetInt16_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16 typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetInt16Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvGetInt16_RequestCodec, records.Ros2Xarm_msgsSrvGetInt16_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16List typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetInt16ListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvGetInt16List_RequestCodec,
              records.Ros2Xarm_msgsSrvGetInt16List_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt16List typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetInt16ListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGetInt16List_RequestCodec,
              records.Ros2Xarm_msgsSrvGetInt16List_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32 typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetInt32Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvGetInt32_RequestCodec, records.Ros2Xarm_msgsSrvGetInt32_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32 typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetInt32Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvGetInt32_RequestCodec, records.Ros2Xarm_msgsSrvGetInt32_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32ByType typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetInt32ByTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec,
              records.Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetInt32ByType typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetInt32ByTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec,
              records.Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetSetModbusData typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGetSetModbusDataClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec,
              records.Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GetSetModbusData typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGetSetModbusDataServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec,
              records.Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/GripperMove typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvGripperMoveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvGripperMove_RequestCodec, records.Ros2Xarm_msgsSrvGripperMove_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/GripperMove typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvGripperMoveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvGripperMove_RequestCodec,
              records.Ros2Xarm_msgsSrvGripperMove_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/IdenLoad typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvIdenLoadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvIdenLoad_RequestCodec, records.Ros2Xarm_msgsSrvIdenLoad_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/IdenLoad typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvIdenLoadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvIdenLoad_RequestCodec, records.Ros2Xarm_msgsSrvIdenLoad_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/LinearMotorBackOrigin typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvLinearMotorBackOriginClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearMotorBackOrigin typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvLinearMotorBackOriginServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearMotorSetPos typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvLinearMotorSetPosClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearMotorSetPos typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvLinearMotorSetPosServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackBackOrigin typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvLinearTrackBackOriginClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackBackOrigin typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvLinearTrackBackOriginServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackSetPos typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvLinearTrackSetPosClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/LinearTrackSetPos typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvLinearTrackSetPosServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec,
              records.Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCartesian typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvMoveCartesianClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvMoveCartesian_RequestCodec,
              records.Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCartesian typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvMoveCartesianServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvMoveCartesian_RequestCodec,
              records.Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCircle typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvMoveCircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvMoveCircle_RequestCodec, records.Ros2Xarm_msgsSrvMoveCircle_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/MoveCircle typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvMoveCircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvMoveCircle_RequestCodec,
              records.Ros2Xarm_msgsSrvMoveCircle_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveHome typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvMoveHomeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvMoveHome_RequestCodec, records.Ros2Xarm_msgsSrvMoveHome_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/MoveHome typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvMoveHomeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvMoveHome_RequestCodec, records.Ros2Xarm_msgsSrvMoveHome_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/MoveJoint typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvMoveJointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvMoveJoint_RequestCodec, records.Ros2Xarm_msgsSrvMoveJoint_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/MoveJoint typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvMoveJointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvMoveJoint_RequestCodec, records.Ros2Xarm_msgsSrvMoveJoint_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/MoveVelocity typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvMoveVelocityClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvMoveVelocity_RequestCodec,
              records.Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/MoveVelocity typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvMoveVelocityServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvMoveVelocity_RequestCodec,
              records.Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanExec typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvPlanExecClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvPlanExec_RequestCodec, records.Ros2Xarm_msgsSrvPlanExec_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/PlanExec typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvPlanExecServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvPlanExec_RequestCodec, records.Ros2Xarm_msgsSrvPlanExec_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/PlanJoint typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvPlanJointClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvPlanJoint_RequestCodec, records.Ros2Xarm_msgsSrvPlanJoint_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/PlanJoint typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvPlanJointServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvPlanJoint_RequestCodec, records.Ros2Xarm_msgsSrvPlanJoint_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/PlanPose typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvPlanPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvPlanPose_RequestCodec, records.Ros2Xarm_msgsSrvPlanPose_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/PlanPose typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvPlanPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvPlanPose_RequestCodec, records.Ros2Xarm_msgsSrvPlanPose_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/PlanSingleStraight typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvPlanSingleStraightClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec,
              records.Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/PlanSingleStraight typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvPlanSingleStraightServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec,
              records.Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqActivate typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvRobotiqActivateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec,
              records.Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqActivate typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvRobotiqActivateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec,
              records.Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqGetStatus typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvRobotiqGetStatusClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec,
              records.Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqGetStatus typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvRobotiqGetStatusServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec,
              records.Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqMove typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvRobotiqMoveClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvRobotiqMove_RequestCodec, records.Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqMove typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvRobotiqMoveServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvRobotiqMove_RequestCodec,
              records.Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqReset typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvRobotiqResetClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvRobotiqReset_RequestCodec,
              records.Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/RobotiqReset typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvRobotiqResetServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvRobotiqReset_RequestCodec,
              records.Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetAnalogIO typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetAnalogIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec, records.Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/SetAnalogIO typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetAnalogIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec,
              records.Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetDigitalIO typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetDigitalIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec,
              records.Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetDigitalIO typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetDigitalIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec,
              records.Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32 typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetFloat32Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvSetFloat32_RequestCodec, records.Ros2Xarm_msgsSrvSetFloat32_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32 typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetFloat32Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetFloat32_RequestCodec,
              records.Ros2Xarm_msgsSrvSetFloat32_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32List typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetFloat32ListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvSetFloat32List_RequestCodec,
              records.Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetFloat32List typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetFloat32ListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetFloat32List_RequestCodec,
              records.Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16 typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetInt16Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvSetInt16_RequestCodec, records.Ros2Xarm_msgsSrvSetInt16_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16 typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetInt16Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvSetInt16_RequestCodec, records.Ros2Xarm_msgsSrvSetInt16_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16ById typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetInt16ByIdClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvSetInt16ById_RequestCodec,
              records.Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16ById typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetInt16ByIdServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetInt16ById_RequestCodec,
              records.Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16List typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetInt16ListClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvSetInt16List_RequestCodec,
              records.Ros2Xarm_msgsSrvSetInt16List_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt16List typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetInt16ListServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetInt16List_RequestCodec,
              records.Ros2Xarm_msgsSrvSetInt16List_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32 typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetInt32Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvSetInt32_RequestCodec, records.Ros2Xarm_msgsSrvSetInt32_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32 typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetInt32Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvSetInt32_RequestCodec, records.Ros2Xarm_msgsSrvSetInt32_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32ByType typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetInt32ByTypeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec,
              records.Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetInt32ByType typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetInt32ByTypeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec,
              records.Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetModbusTimeout typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetModbusTimeoutClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec,
              records.Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetModbusTimeout typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetModbusTimeoutServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec,
              records.Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/SetTcpLoad typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvSetTcpLoadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec, records.Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/SetTcpLoad typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvSetTcpLoadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec,
              records.Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete xarm_msgs/srv/TrajCtrl typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvTrajCtrlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvTrajCtrl_RequestCodec, records.Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/TrajCtrl typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvTrajCtrlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvTrajCtrl_RequestCodec, records.Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/TrajPlay typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvTrajPlayClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Xarm_msgsSrvTrajPlay_RequestCodec, records.Ros2Xarm_msgsSrvTrajPlay_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete xarm_msgs/srv/TrajPlay typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvTrajPlayServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Xarm_msgsSrvTrajPlay_RequestCodec, records.Ros2Xarm_msgsSrvTrajPlay_ResponseCodec, false, capacity);
    }
}

/** Complete xarm_msgs/srv/VacuumGripperCtrl typed client; optional observer is independently granted. */
export class Ros2Xarm_msgsSrvVacuumGripperCtrlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec,
              records.Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete xarm_msgs/srv/VacuumGripperCtrl typed server; callback replacement is caller-managed. */
export class Ros2Xarm_msgsSrvVacuumGripperCtrlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec,
              records.Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec,
              false,
              capacity);
    }
}
