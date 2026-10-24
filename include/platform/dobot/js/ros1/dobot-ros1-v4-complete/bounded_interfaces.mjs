/**
 * @file bounded_interfaces.mjs
 * @brief Preserve the complete original dobot/ros1_v4 canonical value domain.
 * @details The selected domain contains 190 complete record/components and 356 original fields. Declared
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
 * Place beside bounded_records.mjs under the selected dobot profile directory.
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

/** Complete dobot_v4_bringup/AI typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupAIRequestCodec, records.Ros1Dobot_v4_bringupAIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/AI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupAIRequestCodec, records.Ros1Dobot_v4_bringupAIResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/AO typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupAOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupAORequestCodec, records.Ros1Dobot_v4_bringupAOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/AO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupAOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupAORequestCodec, records.Ros1Dobot_v4_bringupAOResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/AOInstant typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupAOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupAOInstantRequestCodec,
              records.Ros1Dobot_v4_bringupAOInstantResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AOInstant typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupAOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupAOInstantRequestCodec,
              records.Ros1Dobot_v4_bringupAOInstantResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/AccJ typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupAccJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupAccJRequestCodec, records.Ros1Dobot_v4_bringupAccJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/AccJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupAccJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupAccJRequestCodec, records.Ros1Dobot_v4_bringupAccJResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/AccL typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupAccLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupAccLRequestCodec, records.Ros1Dobot_v4_bringupAccLResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/AccL typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupAccLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupAccLRequestCodec, records.Ros1Dobot_v4_bringupAccLResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/Arc typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupArcClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupArcRequestCodec, records.Ros1Dobot_v4_bringupArcResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/Arc typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupArcServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupArcRequestCodec, records.Ros1Dobot_v4_bringupArcResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/BrakeControl typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupBrakeControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupBrakeControlRequestCodec,
              records.Ros1Dobot_v4_bringupBrakeControlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/BrakeControl typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupBrakeControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupBrakeControlRequestCodec,
              records.Ros1Dobot_v4_bringupBrakeControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CP typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupCPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupCPRequestCodec, records.Ros1Dobot_v4_bringupCPResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/CP typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupCPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupCPRequestCodec, records.Ros1Dobot_v4_bringupCPResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/CalcTool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupCalcToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupCalcToolRequestCodec, records.Ros1Dobot_v4_bringupCalcToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/CalcTool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupCalcToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupCalcToolRequestCodec,
              records.Ros1Dobot_v4_bringupCalcToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/CalcUser typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupCalcUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupCalcUserRequestCodec, records.Ros1Dobot_v4_bringupCalcUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/CalcUser typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupCalcUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupCalcUserRequestCodec,
              records.Ros1Dobot_v4_bringupCalcUserResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Circle typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupCircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupCircleRequestCodec, records.Ros1Dobot_v4_bringupCircleResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/Circle typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupCircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupCircleRequestCodec, records.Ros1Dobot_v4_bringupCircleResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/ClearError typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupClearErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupClearErrorRequestCodec,
              records.Ros1Dobot_v4_bringupClearErrorResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ClearError typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupClearErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupClearErrorRequestCodec,
              records.Ros1Dobot_v4_bringupClearErrorResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Continue typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupContinueClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupContinueRequestCodec, records.Ros1Dobot_v4_bringupContinueResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/Continue typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupContinueServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupContinueRequestCodec,
              records.Ros1Dobot_v4_bringupContinueResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DI typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupDIRequestCodec, records.Ros1Dobot_v4_bringupDIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/DI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupDIRequestCodec, records.Ros1Dobot_v4_bringupDIResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/DIGroup typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupDIGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupDIGroupRequestCodec, records.Ros1Dobot_v4_bringupDIGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/DIGroup typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupDIGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupDIGroupRequestCodec,
              records.Ros1Dobot_v4_bringupDIGroupResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DO typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupDORequestCodec, records.Ros1Dobot_v4_bringupDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/DO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupDORequestCodec, records.Ros1Dobot_v4_bringupDOResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/DOGroup typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupDOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupDOGroupRequestCodec, records.Ros1Dobot_v4_bringupDOGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/DOGroup typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupDOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupDOGroupRequestCodec,
              records.Ros1Dobot_v4_bringupDOGroupResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DOInstant typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupDOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupDOInstantRequestCodec,
              records.Ros1Dobot_v4_bringupDOInstantResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DOInstant typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupDOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupDOInstantRequestCodec,
              records.Ros1Dobot_v4_bringupDOInstantResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DisableRobot typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupDisableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupDisableRobotRequestCodec,
              records.Ros1Dobot_v4_bringupDisableRobotResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DisableRobot typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupDisableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupDisableRobotRequestCodec,
              records.Ros1Dobot_v4_bringupDisableRobotResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DragSensivity typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupDragSensivityClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupDragSensivityRequestCodec,
              records.Ros1Dobot_v4_bringupDragSensivityResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/DragSensivity typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupDragSensivityServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupDragSensivityRequestCodec,
              records.Ros1Dobot_v4_bringupDragSensivityResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EmergencyStop typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupEmergencyStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupEmergencyStopRequestCodec,
              records.Ros1Dobot_v4_bringupEmergencyStopResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EmergencyStop typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupEmergencyStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupEmergencyStopRequestCodec,
              records.Ros1Dobot_v4_bringupEmergencyStopResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableRobot typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupEnableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupEnableRobotRequestCodec,
              records.Ros1Dobot_v4_bringupEnableRobotResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableRobot typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupEnableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupEnableRobotRequestCodec,
              records.Ros1Dobot_v4_bringupEnableRobotResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableSafeSkin typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupEnableSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupEnableSafeSkinRequestCodec,
              records.Ros1Dobot_v4_bringupEnableSafeSkinResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/EnableSafeSkin typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupEnableSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupEnableSafeSkinRequestCodec,
              records.Ros1Dobot_v4_bringupEnableSafeSkinResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetAO typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetAOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupGetAORequestCodec, records.Ros1Dobot_v4_bringupGetAOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/GetAO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetAOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupGetAORequestCodec, records.Ros1Dobot_v4_bringupGetAOResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/GetAngle typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetAngleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupGetAngleRequestCodec, records.Ros1Dobot_v4_bringupGetAngleResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/GetAngle typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetAngleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetAngleRequestCodec,
              records.Ros1Dobot_v4_bringupGetAngleResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetCoils typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupGetCoilsRequestCodec, records.Ros1Dobot_v4_bringupGetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/GetCoils typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetCoilsRequestCodec,
              records.Ros1Dobot_v4_bringupGetCoilsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetCurrentCommandId typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetCurrentCommandIdClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCodec,
              records.Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetCurrentCommandId typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetCurrentCommandIdServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetCurrentCommandIdRequestCodec,
              records.Ros1Dobot_v4_bringupGetCurrentCommandIdResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetDO typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupGetDORequestCodec, records.Ros1Dobot_v4_bringupGetDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/GetDO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupGetDORequestCodec, records.Ros1Dobot_v4_bringupGetDOResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/GetDOGroup typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetDOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetDOGroupRequestCodec,
              records.Ros1Dobot_v4_bringupGetDOGroupResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetDOGroup typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetDOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetDOGroupRequestCodec,
              records.Ros1Dobot_v4_bringupGetDOGroupResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetErrorID typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetErrorIDClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetErrorIDRequestCodec,
              records.Ros1Dobot_v4_bringupGetErrorIDResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetErrorID typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetErrorIDServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetErrorIDRequestCodec,
              records.Ros1Dobot_v4_bringupGetErrorIDResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetHoldRegsRequestCodec,
              records.Ros1Dobot_v4_bringupGetHoldRegsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetHoldRegsRequestCodec,
              records.Ros1Dobot_v4_bringupGetHoldRegsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInBits typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetInBitsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetInBitsRequestCodec,
              records.Ros1Dobot_v4_bringupGetInBitsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInBits typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetInBitsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetInBitsRequestCodec,
              records.Ros1Dobot_v4_bringupGetInBitsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInRegs typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetInRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetInRegsRequestCodec,
              records.Ros1Dobot_v4_bringupGetInRegsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInRegs typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetInRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetInRegsRequestCodec,
              records.Ros1Dobot_v4_bringupGetInRegsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputBool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetInputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetInputBoolRequestCodec,
              records.Ros1Dobot_v4_bringupGetInputBoolResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputBool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetInputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetInputBoolRequestCodec,
              records.Ros1Dobot_v4_bringupGetInputBoolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputFloat typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetInputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetInputFloatRequestCodec,
              records.Ros1Dobot_v4_bringupGetInputFloatResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputFloat typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetInputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetInputFloatRequestCodec,
              records.Ros1Dobot_v4_bringupGetInputFloatResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputInt typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetInputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetInputIntRequestCodec,
              records.Ros1Dobot_v4_bringupGetInputIntResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetInputInt typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetInputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetInputIntRequestCodec,
              records.Ros1Dobot_v4_bringupGetInputIntResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputBool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetOutputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetOutputBoolRequestCodec,
              records.Ros1Dobot_v4_bringupGetOutputBoolResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputBool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetOutputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetOutputBoolRequestCodec,
              records.Ros1Dobot_v4_bringupGetOutputBoolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputFloat typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetOutputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetOutputFloatRequestCodec,
              records.Ros1Dobot_v4_bringupGetOutputFloatResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputFloat typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetOutputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetOutputFloatRequestCodec,
              records.Ros1Dobot_v4_bringupGetOutputFloatResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputInt typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetOutputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetOutputIntRequestCodec,
              records.Ros1Dobot_v4_bringupGetOutputIntResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetOutputInt typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetOutputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetOutputIntRequestCodec,
              records.Ros1Dobot_v4_bringupGetOutputIntResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetPose typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupGetPoseRequestCodec, records.Ros1Dobot_v4_bringupGetPoseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/GetPose typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetPoseRequestCodec,
              records.Ros1Dobot_v4_bringupGetPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetStartPose typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupGetStartPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupGetStartPoseRequestCodec,
              records.Ros1Dobot_v4_bringupGetStartPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/GetStartPose typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupGetStartPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupGetStartPoseRequestCodec,
              records.Ros1Dobot_v4_bringupGetStartPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseKin typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupInverseKinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupInverseKinRequestCodec,
              records.Ros1Dobot_v4_bringupInverseKinResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseKin typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupInverseKinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupInverseKinRequestCodec,
              records.Ros1Dobot_v4_bringupInverseKinResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseSolution typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupInverseSolutionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupInverseSolutionRequestCodec,
              records.Ros1Dobot_v4_bringupInverseSolutionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/InverseSolution typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupInverseSolutionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupInverseSolutionRequestCodec,
              records.Ros1Dobot_v4_bringupInverseSolutionResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusClose typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupModbusCloseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupModbusCloseRequestCodec,
              records.Ros1Dobot_v4_bringupModbusCloseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusClose typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupModbusCloseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupModbusCloseRequestCodec,
              records.Ros1Dobot_v4_bringupModbusCloseResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusCreate typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupModbusCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupModbusCreateRequestCodec,
              records.Ros1Dobot_v4_bringupModbusCreateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusCreate typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupModbusCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupModbusCreateRequestCodec,
              records.Ros1Dobot_v4_bringupModbusCreateResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusRTUCreate typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupModbusRTUCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupModbusRTUCreateRequestCodec,
              records.Ros1Dobot_v4_bringupModbusRTUCreateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ModbusRTUCreate typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupModbusRTUCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupModbusRTUCreateRequestCodec,
              records.Ros1Dobot_v4_bringupModbusRTUCreateResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/MovJ typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupMovJRequestCodec, records.Ros1Dobot_v4_bringupMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/MovJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupMovJRequestCodec, records.Ros1Dobot_v4_bringupMovJResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/MovJIO typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupMovJIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupMovJIORequestCodec, records.Ros1Dobot_v4_bringupMovJIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/MovJIO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupMovJIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupMovJIORequestCodec, records.Ros1Dobot_v4_bringupMovJIOResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/MovL typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupMovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupMovLRequestCodec, records.Ros1Dobot_v4_bringupMovLResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/MovL typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupMovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupMovLRequestCodec, records.Ros1Dobot_v4_bringupMovLResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/MovLIO typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupMovLIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupMovLIORequestCodec, records.Ros1Dobot_v4_bringupMovLIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/MovLIO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupMovLIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupMovLIORequestCodec, records.Ros1Dobot_v4_bringupMovLIOResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/MoveJog typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupMoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupMoveJogRequestCodec, records.Ros1Dobot_v4_bringupMoveJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/MoveJog typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupMoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupMoveJogRequestCodec,
              records.Ros1Dobot_v4_bringupMoveJogResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Pause typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupPauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupPauseRequestCodec, records.Ros1Dobot_v4_bringupPauseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/Pause typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupPauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupPauseRequestCodec, records.Ros1Dobot_v4_bringupPauseResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/PositiveKin typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupPositiveKinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupPositiveKinRequestCodec,
              records.Ros1Dobot_v4_bringupPositiveKinResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/PositiveKin typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupPositiveKinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupPositiveKinRequestCodec,
              records.Ros1Dobot_v4_bringupPositiveKinResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/PowerOn typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupPowerOnClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupPowerOnRequestCodec, records.Ros1Dobot_v4_bringupPowerOnResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/PowerOn typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupPowerOnServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupPowerOnRequestCodec,
              records.Ros1Dobot_v4_bringupPowerOnResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelJointMovJ typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupRelJointMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupRelJointMovJRequestCodec,
              records.Ros1Dobot_v4_bringupRelJointMovJResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelJointMovJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupRelJointMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupRelJointMovJRequestCodec,
              records.Ros1Dobot_v4_bringupRelJointMovJResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJTool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupRelMovJToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupRelMovJToolRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovJToolResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJTool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupRelMovJToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupRelMovJToolRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovJToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJUser typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupRelMovJUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupRelMovJUserRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovJUserResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovJUser typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupRelMovJUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupRelMovJUserRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovJUserResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLTool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupRelMovLToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupRelMovLToolRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovLToolResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLTool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupRelMovLToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupRelMovLToolRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovLToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLUser typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupRelMovLUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupRelMovLUserRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovLUserResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RelMovLUser typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupRelMovLUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupRelMovLUserRequestCodec,
              records.Ros1Dobot_v4_bringupRelMovLUserResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RobotMode typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupRobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupRobotModeRequestCodec,
              records.Ros1Dobot_v4_bringupRobotModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RobotMode typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupRobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupRobotModeRequestCodec,
              records.Ros1Dobot_v4_bringupRobotModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RunScript typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupRunScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupRunScriptRequestCodec,
              records.Ros1Dobot_v4_bringupRunScriptResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/RunScript typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupRunScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupRunScriptRequestCodec,
              records.Ros1Dobot_v4_bringupRunScriptResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ServoJ typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupServoJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupServoJRequestCodec, records.Ros1Dobot_v4_bringupServoJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/ServoJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupServoJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupServoJRequestCodec, records.Ros1Dobot_v4_bringupServoJResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/ServoP typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupServoPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupServoPRequestCodec, records.Ros1Dobot_v4_bringupServoPResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/ServoP typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupServoPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupServoPRequestCodec, records.Ros1Dobot_v4_bringupServoPResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/SetBackDistance typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetBackDistanceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetBackDistanceRequestCodec,
              records.Ros1Dobot_v4_bringupSetBackDistanceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetBackDistance typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetBackDistanceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetBackDistanceRequestCodec,
              records.Ros1Dobot_v4_bringupSetBackDistanceResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetCoils typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupSetCoilsRequestCodec, records.Ros1Dobot_v4_bringupSetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/SetCoils typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetCoilsRequestCodec,
              records.Ros1Dobot_v4_bringupSetCoilsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetCollisionLevel typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetCollisionLevelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetCollisionLevelRequestCodec,
              records.Ros1Dobot_v4_bringupSetCollisionLevelResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetCollisionLevel typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetCollisionLevelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetCollisionLevelRequestCodec,
              records.Ros1Dobot_v4_bringupSetCollisionLevelResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetHoldRegsRequestCodec,
              records.Ros1Dobot_v4_bringupSetHoldRegsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetHoldRegsRequestCodec,
              records.Ros1Dobot_v4_bringupSetHoldRegsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputBool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetOutputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetOutputBoolRequestCodec,
              records.Ros1Dobot_v4_bringupSetOutputBoolResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputBool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetOutputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetOutputBoolRequestCodec,
              records.Ros1Dobot_v4_bringupSetOutputBoolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputFloat typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetOutputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetOutputFloatRequestCodec,
              records.Ros1Dobot_v4_bringupSetOutputFloatResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputFloat typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetOutputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetOutputFloatRequestCodec,
              records.Ros1Dobot_v4_bringupSetOutputFloatResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputInt typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetOutputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetOutputIntRequestCodec,
              records.Ros1Dobot_v4_bringupSetOutputIntResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetOutputInt typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetOutputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetOutputIntRequestCodec,
              records.Ros1Dobot_v4_bringupSetOutputIntResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetPayload typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetPayloadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetPayloadRequestCodec,
              records.Ros1Dobot_v4_bringupSetPayloadResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetPayload typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetPayloadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetPayloadRequestCodec,
              records.Ros1Dobot_v4_bringupSetPayloadResponseCodec,
              false,
              capacity);
    }
}

/**
 * Complete dobot_v4_bringup/SetPostCollisionMode typed client; optional observer is independently granted.
 */
export class Ros1Dobot_v4_bringupSetPostCollisionModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetPostCollisionModeRequestCodec,
              records.Ros1Dobot_v4_bringupSetPostCollisionModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetPostCollisionMode typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetPostCollisionModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetPostCollisionModeRequestCodec,
              records.Ros1Dobot_v4_bringupSetPostCollisionModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeSkin typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetSafeSkinRequestCodec,
              records.Ros1Dobot_v4_bringupSetSafeSkinResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeSkin typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetSafeSkinRequestCodec,
              records.Ros1Dobot_v4_bringupSetSafeSkinResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeWallEnable typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetSafeWallEnableClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetSafeWallEnableRequestCodec,
              records.Ros1Dobot_v4_bringupSetSafeWallEnableResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetSafeWallEnable typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetSafeWallEnableServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetSafeWallEnableRequestCodec,
              records.Ros1Dobot_v4_bringupSetSafeWallEnableResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupSetToolRequestCodec, records.Ros1Dobot_v4_bringupSetToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetToolRequestCodec,
              records.Ros1Dobot_v4_bringupSetToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool485 typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetTool485Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetTool485RequestCodec,
              records.Ros1Dobot_v4_bringupSetTool485ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetTool485 typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetTool485Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetTool485RequestCodec,
              records.Ros1Dobot_v4_bringupSetTool485ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolMode typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetToolModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetToolModeRequestCodec,
              records.Ros1Dobot_v4_bringupSetToolModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolMode typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetToolModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetToolModeRequestCodec,
              records.Ros1Dobot_v4_bringupSetToolModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolPower typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetToolPowerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSetToolPowerRequestCodec,
              records.Ros1Dobot_v4_bringupSetToolPowerResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetToolPower typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetToolPowerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetToolPowerRequestCodec,
              records.Ros1Dobot_v4_bringupSetToolPowerResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SetUser typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSetUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupSetUserRequestCodec, records.Ros1Dobot_v4_bringupSetUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/SetUser typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSetUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSetUserRequestCodec,
              records.Ros1Dobot_v4_bringupSetUserResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SpeedFactor typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupSpeedFactorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupSpeedFactorRequestCodec,
              records.Ros1Dobot_v4_bringupSpeedFactorResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/SpeedFactor typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupSpeedFactorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupSpeedFactorRequestCodec,
              records.Ros1Dobot_v4_bringupSpeedFactorResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartDrag typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupStartDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupStartDragRequestCodec,
              records.Ros1Dobot_v4_bringupStartDragResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartDrag typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupStartDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupStartDragRequestCodec,
              records.Ros1Dobot_v4_bringupStartDragResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartPath typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupStartPathClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupStartPathRequestCodec,
              records.Ros1Dobot_v4_bringupStartPathResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StartPath typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupStartPathServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupStartPathRequestCodec,
              records.Ros1Dobot_v4_bringupStartPathResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Stop typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupStopRequestCodec, records.Ros1Dobot_v4_bringupStopResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/Stop typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupStopRequestCodec, records.Ros1Dobot_v4_bringupStopResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/StopDrag typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupStopDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupStopDragRequestCodec, records.Ros1Dobot_v4_bringupStopDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/StopDrag typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupStopDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupStopDragRequestCodec,
              records.Ros1Dobot_v4_bringupStopDragResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StopMoveJog typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupStopMoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupStopMoveJogRequestCodec,
              records.Ros1Dobot_v4_bringupStopMoveJogResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/StopMoveJog typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupStopMoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupStopMoveJogRequestCodec,
              records.Ros1Dobot_v4_bringupStopMoveJogResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/TcpDashboard typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupTcpDashboardClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupTcpDashboardRequestCodec,
              records.Ros1Dobot_v4_bringupTcpDashboardResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/TcpDashboard typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupTcpDashboardServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupTcpDashboardRequestCodec,
              records.Ros1Dobot_v4_bringupTcpDashboardResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/Tool typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupToolRequestCodec, records.Ros1Dobot_v4_bringupToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/Tool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupToolRequestCodec, records.Ros1Dobot_v4_bringupToolResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/ToolAI typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupToolAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupToolAIRequestCodec, records.Ros1Dobot_v4_bringupToolAIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/ToolAI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupToolAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupToolAIRequestCodec, records.Ros1Dobot_v4_bringupToolAIResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDI typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupToolDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupToolDIRequestCodec, records.Ros1Dobot_v4_bringupToolDIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupToolDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupToolDIRequestCodec, records.Ros1Dobot_v4_bringupToolDIResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDO typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupToolDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupToolDORequestCodec, records.Ros1Dobot_v4_bringupToolDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupToolDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupToolDORequestCodec, records.Ros1Dobot_v4_bringupToolDOResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDOInstant typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupToolDOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_v4_bringupToolDOInstantRequestCodec,
              records.Ros1Dobot_v4_bringupToolDOInstantResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_v4_bringup/ToolDOInstant typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupToolDOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_v4_bringupToolDOInstantRequestCodec,
              records.Ros1Dobot_v4_bringupToolDOInstantResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_v4_bringup/User typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupUserRequestCodec, records.Ros1Dobot_v4_bringupUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/User typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupUserRequestCodec, records.Ros1Dobot_v4_bringupUserResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/VelJ typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupVelJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupVelJRequestCodec, records.Ros1Dobot_v4_bringupVelJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/VelJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupVelJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupVelJRequestCodec, records.Ros1Dobot_v4_bringupVelJResponseCodec, false, capacity);
    }
}

/** Complete dobot_v4_bringup/VelL typed client; optional observer is independently granted. */
export class Ros1Dobot_v4_bringupVelLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_v4_bringupVelLRequestCodec, records.Ros1Dobot_v4_bringupVelLResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_v4_bringup/VelL typed server; callback replacement is caller-managed. */
export class Ros1Dobot_v4_bringupVelLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_v4_bringupVelLRequestCodec, records.Ros1Dobot_v4_bringupVelLResponseCodec, false, capacity);
    }
}
