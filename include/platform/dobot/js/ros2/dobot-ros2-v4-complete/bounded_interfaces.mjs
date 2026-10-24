/**
 * @file bounded_interfaces.mjs
 * @brief Preserve the complete original dobot/ros2_v4 canonical value domain.
 * @details The selected domain contains 250 complete record/components and 554 original fields. Declared
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

/** Complete dobot_msgs_v4/srv/AI typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvAI_RequestCodec, records.Ros2Dobot_msgs_v4SrvAI_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AI typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvAI_RequestCodec, records.Ros2Dobot_msgs_v4SrvAI_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvAOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvAO_RequestCodec, records.Ros2Dobot_msgs_v4SrvAO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvAOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvAO_RequestCodec, records.Ros2Dobot_msgs_v4SrvAO_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AOInstant typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvAOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvAOInstant_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvAOInstant_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AOInstant typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvAOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvAOInstant_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvAOInstant_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccJ typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvAccJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvAccJ_RequestCodec, records.Ros2Dobot_msgs_v4SrvAccJ_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccJ typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvAccJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvAccJ_RequestCodec, records.Ros2Dobot_msgs_v4SrvAccJ_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccL typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvAccLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvAccL_RequestCodec, records.Ros2Dobot_msgs_v4SrvAccL_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/AccL typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvAccLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvAccL_RequestCodec, records.Ros2Dobot_msgs_v4SrvAccL_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Arc typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvArcClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvArc_RequestCodec, records.Ros2Dobot_msgs_v4SrvArc_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Arc typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvArcServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvArc_RequestCodec, records.Ros2Dobot_msgs_v4SrvArc_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/BrakeControl typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvBrakeControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvBrakeControl_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/BrakeControl typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvBrakeControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvBrakeControl_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvBrakeControl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CP typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvCPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvCP_RequestCodec, records.Ros2Dobot_msgs_v4SrvCP_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CP typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvCPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvCP_RequestCodec, records.Ros2Dobot_msgs_v4SrvCP_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcTool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvCalcToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvCalcTool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCalcTool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcTool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvCalcToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvCalcTool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCalcTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcUser typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvCalcUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvCalcUser_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCalcUser_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CalcUser typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvCalcUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvCalcUser_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCalcUser_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovC typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovCClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovC typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovCServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovC_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovJ typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovJ typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovJ_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovJ_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovL typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/CheckOddMovL typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvCheckOddMovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovL_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCheckOddMovL_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Circle typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvCircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvCircle_RequestCodec, records.Ros2Dobot_msgs_v4SrvCircle_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Circle typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvCircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvCircle_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvCircle_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ClearError typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvClearErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvClearError_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvClearError_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ClearError typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvClearErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvClearError_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvClearError_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Continue typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvContinueClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvContinue_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvContinue_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Continue typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvContinueServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvContinue_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvContinue_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DI typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvDI_RequestCodec, records.Ros2Dobot_msgs_v4SrvDI_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DI typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvDI_RequestCodec, records.Ros2Dobot_msgs_v4SrvDI_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroup typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDIGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvDIGroup_RequestCodec, records.Ros2Dobot_msgs_v4SrvDIGroup_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroup typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDIGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvDIGroup_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDIGroup_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroupDEC typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDIGroupDECClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DIGroupDEC typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDIGroupDECServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvDIGroupDEC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDIGroupDEC_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvDO_RequestCodec, records.Ros2Dobot_msgs_v4SrvDO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvDO_RequestCodec, records.Ros2Dobot_msgs_v4SrvDO_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroup typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvDOGroup_RequestCodec, records.Ros2Dobot_msgs_v4SrvDOGroup_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroup typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvDOGroup_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDOGroup_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroupDEC typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDOGroupDECClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOGroupDEC typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDOGroupDECServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvDOGroupDEC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDOGroupDEC_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOInstant typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvDOInstant_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDOInstant_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DOInstant typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvDOInstant_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDOInstant_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DisableRobot typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDisableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvDisableRobot_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DisableRobot typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDisableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvDisableRobot_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDisableRobot_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DragSensivity typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvDragSensivityClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvDragSensivity_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/DragSensivity typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvDragSensivityServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvDragSensivity_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvDragSensivity_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EmergencyStop typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvEmergencyStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EmergencyStop typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvEmergencyStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvEmergencyStop_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEmergencyStop_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableFTSensor typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvEnableFTSensorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableFTSensor typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvEnableFTSensorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvEnableFTSensor_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEnableFTSensor_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableRobot typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvEnableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvEnableRobot_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableRobot typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvEnableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvEnableRobot_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEnableRobot_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableSafeSkin typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvEnableSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EnableSafeSkin typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvEnableSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvEnableSafeSkin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEnableSafeSkin_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EndRTOffset typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvEndRTOffsetClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/EndRTOffset typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvEndRTOffsetServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvEndRTOffset_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvEndRTOffset_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCCollisionSwitch typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCCollisionSwitchClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCCollisionSwitch typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCCollisionSwitchServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCCollisionSwitch_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCCollisionSwitch_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCForceMode typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCForceModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCForceMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCForceMode typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCForceModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCForceMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCForceMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCOff typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCOffClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvFCOff_RequestCodec, records.Ros2Dobot_msgs_v4SrvFCOff_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCOff typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCOffServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvFCOff_RequestCodec, records.Ros2Dobot_msgs_v4SrvFCOff_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDamping typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCSetDampingClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDamping typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCSetDampingServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCSetDamping_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetDamping_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDeviation typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCSetDeviationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetDeviation typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCSetDeviationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCSetDeviation_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetDeviation_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForce typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCSetForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCSetForce_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForce typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCSetForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCSetForce_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetForce_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForceLimit typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCSetForceLimitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForceLimit typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCSetForceLimitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCSetForceLimit_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetForceLimit_ResponseCodec,
              false,
              capacity);
    }
}

/**
 * Complete dobot_msgs_v4/srv/FCSetForceSpeedLimit typed client; optional observer is independently granted.
 */
export class Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetForceSpeedLimit typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetMass typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCSetMassClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCSetMass_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetMass typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCSetMassServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCSetMass_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetMass_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetStiffness typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvFCSetStiffnessClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/FCSetStiffness typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvFCSetStiffnessServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvFCSetStiffness_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvFCSetStiffness_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveMode typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvForceDriveModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveMode typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvForceDriveModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvForceDriveMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvForceDriveMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveSpeed typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvForceDriveSpeedClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ForceDriveSpeed typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvForceDriveSpeedServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvForceDriveSpeed_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvForceDriveSpeed_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetAOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvGetAO_RequestCodec, records.Ros2Dobot_msgs_v4SrvGetAO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetAOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvGetAO_RequestCodec, records.Ros2Dobot_msgs_v4SrvGetAO_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAngle typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetAngleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetAngle_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetAngle_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetAngle typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetAngleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetAngle_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetAngle_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetCoils typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetCoils_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetCoils_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetCoils typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetCoils_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetCoils_ResponseCodec,
              false,
              capacity);
    }
}

/**
 * Complete dobot_msgs_v4/srv/GetCurrentCommandId typed client; optional observer is independently granted.
 */
export class Ros2Dobot_msgs_v4SrvGetCurrentCommandIdClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetCurrentCommandId typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetCurrentCommandIdServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetCurrentCommandId_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetCurrentCommandId_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvGetDO_RequestCodec, records.Ros2Dobot_msgs_v4SrvGetDO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvGetDO_RequestCodec, records.Ros2Dobot_msgs_v4SrvGetDO_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroup typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroup typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetDOGroup_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetDOGroup_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroupDEC typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupDECClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetDOGroupDEC typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetDOGroupDECServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetDOGroupDEC_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetDOGroupDEC_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetError typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetError_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetError_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetError typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetError_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetError_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetErrorID typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetErrorIDClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetErrorID_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetErrorID typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetErrorIDServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetErrorID_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetErrorID_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetForce typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetForceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetForce_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetForce_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetForce typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetForceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetForce_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetForce_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetHoldRegs typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetHoldRegs_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetHoldRegs_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInBits typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetInBitsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetInBits_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInBits_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInBits typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetInBitsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetInBits_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInBits_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInRegs typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetInRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetInRegs_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInRegs typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetInRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetInRegs_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInRegs_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputBool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetInputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetInputBool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputBool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetInputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetInputBool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInputBool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputFloat typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetInputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputFloat typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetInputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetInputFloat_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInputFloat_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputInt typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetInputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetInputInt_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetInputInt typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetInputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetInputInt_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetInputInt_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputBool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetOutputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputBool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetOutputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetOutputBool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetOutputBool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputFloat typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetOutputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputFloat typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetOutputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetOutputFloat_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetOutputFloat_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputInt typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetOutputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetOutputInt typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetOutputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetOutputInt_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetOutputInt_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetPose typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvGetPose_RequestCodec, records.Ros2Dobot_msgs_v4SrvGetPose_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetPose typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetPose_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetPose_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetStartPose typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetStartPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetStartPose_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetStartPose typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetStartPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetStartPose_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetStartPose_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetToolDO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvGetToolDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvGetToolDO_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/GetToolDO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvGetToolDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvGetToolDO_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvGetToolDO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseKin typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvInverseKinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvInverseKin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvInverseKin_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseKin typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvInverseKinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvInverseKin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvInverseKin_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseSolution typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvInverseSolutionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvInverseSolution_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/InverseSolution typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvInverseSolutionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvInverseSolution_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvInverseSolution_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusClose typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvModbusCloseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvModbusClose_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvModbusClose_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusClose typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvModbusCloseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvModbusClose_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvModbusClose_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusCreate typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvModbusCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvModbusCreate_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusCreate typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvModbusCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvModbusCreate_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvModbusCreate_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusRTUCreate typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvModbusRTUCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ModbusRTUCreate typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvModbusRTUCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvModbusRTUCreate_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvModbusRTUCreate_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJ typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvMovJ_RequestCodec, records.Ros2Dobot_msgs_v4SrvMovJ_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJ typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvMovJ_RequestCodec, records.Ros2Dobot_msgs_v4SrvMovJ_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJIO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvMovJIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvMovJIO_RequestCodec, records.Ros2Dobot_msgs_v4SrvMovJIO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovJIO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvMovJIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvMovJIO_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvMovJIO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovL typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvMovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvMovL_RequestCodec, records.Ros2Dobot_msgs_v4SrvMovL_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovL typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvMovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvMovL_RequestCodec, records.Ros2Dobot_msgs_v4SrvMovL_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovLIO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvMovLIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvMovLIO_RequestCodec, records.Ros2Dobot_msgs_v4SrvMovLIO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MovLIO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvMovLIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvMovLIO_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvMovLIO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MoveJog typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvMoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvMoveJog_RequestCodec, records.Ros2Dobot_msgs_v4SrvMoveJog_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/MoveJog typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvMoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvMoveJog_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvMoveJog_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Pause typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvPauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvPause_RequestCodec, records.Ros2Dobot_msgs_v4SrvPause_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Pause typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvPauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvPause_RequestCodec, records.Ros2Dobot_msgs_v4SrvPause_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PositiveKin typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvPositiveKinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvPositiveKin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PositiveKin typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvPositiveKinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvPositiveKin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvPositiveKin_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PowerOn typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvPowerOnClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvPowerOn_RequestCodec, records.Ros2Dobot_msgs_v4SrvPowerOn_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/PowerOn typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvPowerOnServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvPowerOn_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvPowerOn_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelJointMovJ typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRelJointMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelJointMovJ typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRelJointMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRelJointMovJ_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelJointMovJ_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJTool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRelMovJToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJTool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRelMovJToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRelMovJTool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovJTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJUser typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRelMovJUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovJUser typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRelMovJUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRelMovJUser_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovJUser_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLTool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRelMovLToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLTool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRelMovLToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRelMovLTool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovLTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLUser typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRelMovLUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RelMovLUser typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRelMovLUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRelMovLUser_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRelMovLUser_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RequestControl typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRequestControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRequestControl_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRequestControl_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RequestControl typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRequestControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRequestControl_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRequestControl_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ResetRobot typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvResetRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvResetRobot_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvResetRobot_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ResetRobot typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvResetRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvResetRobot_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvResetRobot_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RobotMode typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRobotMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRobotMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RobotMode typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRobotMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRobotMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunScript typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRunScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvRunScript_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRunScript_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunScript typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRunScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvRunScript_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvRunScript_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunTo typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvRunToClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvRunTo_RequestCodec, records.Ros2Dobot_msgs_v4SrvRunTo_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/RunTo typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvRunToServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvRunTo_RequestCodec, records.Ros2Dobot_msgs_v4SrvRunTo_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoJ typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvServoJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvServoJ_RequestCodec, records.Ros2Dobot_msgs_v4SrvServoJ_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoJ typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvServoJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvServoJ_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvServoJ_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoP typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvServoPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvServoP_RequestCodec, records.Ros2Dobot_msgs_v4SrvServoP_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ServoP typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvServoPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvServoP_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvServoP_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetBackDistance typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetBackDistanceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetBackDistance typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetBackDistanceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetBackDistance_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetBackDistance_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCoils typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetCoils_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetCoils_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCoils typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetCoils_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetCoils_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCollisionLevel typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetCollisionLevelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetCollisionLevel typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetCollisionLevelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetCollisionLevel_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetCollisionLevel_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetFCCollision typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetFCCollisionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetFCCollision typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetFCCollisionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetFCCollision_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetFCCollision_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetHoldRegs typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetHoldRegs_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetHoldRegs_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputBool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetOutputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputBool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetOutputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetOutputBool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetOutputBool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputFloat typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetOutputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputFloat typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetOutputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetOutputFloat_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetOutputFloat_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputInt typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetOutputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetOutputInt typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetOutputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetOutputInt_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetOutputInt_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetPayload typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetPayloadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetPayload_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetPayload_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetPayload typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetPayloadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetPayload_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetPayload_ResponseCodec,
              false,
              capacity);
    }
}

/**
 * Complete dobot_msgs_v4/srv/SetPostCollisionMode typed client; optional observer is independently granted.
 */
export class Ros2Dobot_msgs_v4SrvSetPostCollisionModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetPostCollisionMode typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetPostCollisionModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetPostCollisionMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetPostCollisionMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeSkin typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeSkin typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetSafeSkin_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetSafeSkin_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeWallEnable typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetSafeWallEnableClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetSafeWallEnable typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetSafeWallEnableServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetSafeWallEnable_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetSafeWallEnable_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvSetTool_RequestCodec, records.Ros2Dobot_msgs_v4SrvSetTool_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetTool_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetTool_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool485 typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetTool485Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetTool485_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetTool485_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetTool485 typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetTool485Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetTool485_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetTool485_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolMode typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetToolModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetToolMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolMode typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetToolModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetToolMode_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetToolMode_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolPower typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetToolPowerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetToolPower_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetToolPower typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetToolPowerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetToolPower_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetToolPower_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetUser typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvSetUser_RequestCodec, records.Ros2Dobot_msgs_v4SrvSetUser_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetUser typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetUser_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetUser_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetWorkZoneEnable typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSetWorkZoneEnableClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SetWorkZoneEnable typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSetWorkZoneEnableServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SixForceHome typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSixForceHomeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSixForceHome_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SixForceHome typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSixForceHomeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSixForceHome_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSixForceHome_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SpeedFactor typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvSpeedFactorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/SpeedFactor typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvSpeedFactorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvSpeedFactor_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvSpeedFactor_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartDrag typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvStartDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvStartDrag_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStartDrag_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartDrag typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvStartDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvStartDrag_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStartDrag_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartPath typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvStartPathClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvStartPath_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStartPath_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartPath typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvStartPathServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvStartPath_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStartPath_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartRTOffset typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvStartRTOffsetClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StartRTOffset typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvStartRTOffsetServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvStartRTOffset_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStartRTOffset_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Stop typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvStop_RequestCodec, records.Ros2Dobot_msgs_v4SrvStop_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Stop typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvStop_RequestCodec, records.Ros2Dobot_msgs_v4SrvStop_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopDrag typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvStopDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvStopDrag_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStopDrag_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopDrag typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvStopDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvStopDrag_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStopDrag_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopMoveJog typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvStopMoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/StopMoveJog typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvStopMoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvStopMoveJog_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvStopMoveJog_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/TcpDashboard typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvTcpDashboardClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/TcpDashboard typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvTcpDashboardServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvTcpDashboard_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvTcpDashboard_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Tool typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvTool_RequestCodec, records.Ros2Dobot_msgs_v4SrvTool_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/Tool typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvTool_RequestCodec, records.Ros2Dobot_msgs_v4SrvTool_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolAI typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvToolAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvToolAI_RequestCodec, records.Ros2Dobot_msgs_v4SrvToolAI_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolAI typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvToolAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvToolAI_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvToolAI_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDI typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvToolDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvToolDI_RequestCodec, records.Ros2Dobot_msgs_v4SrvToolDI_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDI typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvToolDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvToolDI_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvToolDI_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDO typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvToolDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvToolDO_RequestCodec, records.Ros2Dobot_msgs_v4SrvToolDO_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDO typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvToolDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvToolDO_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvToolDO_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDOInstant typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvToolDOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              2,
              alias,
              records.Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/ToolDOInstant typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvToolDOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              2,
              advertise,
              respond,
              records.Ros2Dobot_msgs_v4SrvToolDOInstant_RequestCodec,
              records.Ros2Dobot_msgs_v4SrvToolDOInstant_ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_msgs_v4/srv/User typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvUser_RequestCodec, records.Ros2Dobot_msgs_v4SrvUser_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/User typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvUser_RequestCodec, records.Ros2Dobot_msgs_v4SrvUser_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelJ typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvVelJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvVelJ_RequestCodec, records.Ros2Dobot_msgs_v4SrvVelJ_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelJ typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvVelJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvVelJ_RequestCodec, records.Ros2Dobot_msgs_v4SrvVelJ_ResponseCodec, false, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelL typed client; optional observer is independently granted. */
export class Ros2Dobot_msgs_v4SrvVelLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 2, alias, records.Ros2Dobot_msgs_v4SrvVelL_RequestCodec, records.Ros2Dobot_msgs_v4SrvVelL_ResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_msgs_v4/srv/VelL typed server; callback replacement is caller-managed. */
export class Ros2Dobot_msgs_v4SrvVelLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 2, advertise, respond, records.Ros2Dobot_msgs_v4SrvVelL_RequestCodec, records.Ros2Dobot_msgs_v4SrvVelL_ResponseCodec, false, capacity);
    }
}
