/**
 * @file bounded_interfaces.mjs
 * @brief Preserve the complete original dobot/ros1_v3 canonical value domain.
 * @details The selected domain contains 198 complete record/components and 362 original fields. Declared
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

/** Complete dobot_bringup/AI typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupAIRequestCodec, records.Ros1Dobot_bringupAIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/AI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupAIRequestCodec, records.Ros1Dobot_bringupAIResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/AO typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupAOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupAORequestCodec, records.Ros1Dobot_bringupAOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/AO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupAOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupAORequestCodec, records.Ros1Dobot_bringupAOResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/AOExecute typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupAOExecuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupAOExecuteRequestCodec, records.Ros1Dobot_bringupAOExecuteResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/AOExecute typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupAOExecuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupAOExecuteRequestCodec, records.Ros1Dobot_bringupAOExecuteResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/AccJ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupAccJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupAccJRequestCodec, records.Ros1Dobot_bringupAccJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/AccJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupAccJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupAccJRequestCodec, records.Ros1Dobot_bringupAccJResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/AccL typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupAccLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupAccLRequestCodec, records.Ros1Dobot_bringupAccLResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/AccL typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupAccLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupAccLRequestCodec, records.Ros1Dobot_bringupAccLResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/Arc typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupArcClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupArcRequestCodec, records.Ros1Dobot_bringupArcResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Arc typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupArcServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupArcRequestCodec, records.Ros1Dobot_bringupArcResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/Arch typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupArchClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupArchRequestCodec, records.Ros1Dobot_bringupArchResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Arch typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupArchServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupArchRequestCodec, records.Ros1Dobot_bringupArchResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/BrakeControl typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupBrakeControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupBrakeControlRequestCodec,
              records.Ros1Dobot_bringupBrakeControlResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/BrakeControl typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupBrakeControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupBrakeControlRequestCodec,
              records.Ros1Dobot_bringupBrakeControlResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/CP typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupCPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupCPRequestCodec, records.Ros1Dobot_bringupCPResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/CP typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupCPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupCPRequestCodec, records.Ros1Dobot_bringupCPResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/Circle typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupCircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupCircleRequestCodec, records.Ros1Dobot_bringupCircleResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Circle typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupCircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupCircleRequestCodec, records.Ros1Dobot_bringupCircleResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/ClearError typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupClearErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupClearErrorRequestCodec, records.Ros1Dobot_bringupClearErrorResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ClearError typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupClearErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupClearErrorRequestCodec,
              records.Ros1Dobot_bringupClearErrorResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/ContinueScript typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupContinueScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupContinueScriptRequestCodec,
              records.Ros1Dobot_bringupContinueScriptResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ContinueScript typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupContinueScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupContinueScriptRequestCodec,
              records.Ros1Dobot_bringupContinueScriptResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/Continues typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupContinuesClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupContinuesRequestCodec, records.Ros1Dobot_bringupContinuesResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Continues typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupContinuesServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupContinuesRequestCodec, records.Ros1Dobot_bringupContinuesResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/DI typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupDIRequestCodec, records.Ros1Dobot_bringupDIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/DI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupDIRequestCodec, records.Ros1Dobot_bringupDIResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/DIGroup typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupDIGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupDIGroupRequestCodec, records.Ros1Dobot_bringupDIGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/DIGroup typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupDIGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupDIGroupRequestCodec, records.Ros1Dobot_bringupDIGroupResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/DO typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupDORequestCodec, records.Ros1Dobot_bringupDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/DO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupDORequestCodec, records.Ros1Dobot_bringupDOResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/DOExecute typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupDOExecuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupDOExecuteRequestCodec, records.Ros1Dobot_bringupDOExecuteResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/DOExecute typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupDOExecuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupDOExecuteRequestCodec, records.Ros1Dobot_bringupDOExecuteResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/DOGroup typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupDOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupDOGroupRequestCodec, records.Ros1Dobot_bringupDOGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/DOGroup typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupDOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupDOGroupRequestCodec, records.Ros1Dobot_bringupDOGroupResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/DigitalOutputs typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupDigitalOutputsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupDigitalOutputsRequestCodec,
              records.Ros1Dobot_bringupDigitalOutputsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DigitalOutputs typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupDigitalOutputsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupDigitalOutputsRequestCodec,
              records.Ros1Dobot_bringupDigitalOutputsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/DisableRobot typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupDisableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupDisableRobotRequestCodec,
              records.Ros1Dobot_bringupDisableRobotResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/DisableRobot typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupDisableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupDisableRobotRequestCodec,
              records.Ros1Dobot_bringupDisableRobotResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/EmergencyStop typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupEmergencyStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupEmergencyStopRequestCodec,
              records.Ros1Dobot_bringupEmergencyStopResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/EmergencyStop typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupEmergencyStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupEmergencyStopRequestCodec,
              records.Ros1Dobot_bringupEmergencyStopResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/EnableRobot typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupEnableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupEnableRobotRequestCodec, records.Ros1Dobot_bringupEnableRobotResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/EnableRobot typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupEnableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupEnableRobotRequestCodec,
              records.Ros1Dobot_bringupEnableRobotResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/GetAngle typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetAngleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupGetAngleRequestCodec, records.Ros1Dobot_bringupGetAngleResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/GetAngle typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetAngleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupGetAngleRequestCodec, records.Ros1Dobot_bringupGetAngleResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/GetCoils typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupGetCoilsRequestCodec, records.Ros1Dobot_bringupGetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/GetCoils typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupGetCoilsRequestCodec, records.Ros1Dobot_bringupGetCoilsResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/GetErrorID typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetErrorIDClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupGetErrorIDRequestCodec, records.Ros1Dobot_bringupGetErrorIDResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/GetErrorID typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetErrorIDServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupGetErrorIDRequestCodec,
              records.Ros1Dobot_bringupGetErrorIDResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/GetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupGetHoldRegsRequestCodec, records.Ros1Dobot_bringupGetHoldRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/GetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupGetHoldRegsRequestCodec,
              records.Ros1Dobot_bringupGetHoldRegsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/GetInBits typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetInBitsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupGetInBitsRequestCodec, records.Ros1Dobot_bringupGetInBitsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/GetInBits typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetInBitsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupGetInBitsRequestCodec, records.Ros1Dobot_bringupGetInBitsResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/GetInRegs typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetInRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupGetInRegsRequestCodec, records.Ros1Dobot_bringupGetInRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/GetInRegs typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetInRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupGetInRegsRequestCodec, records.Ros1Dobot_bringupGetInRegsResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/GetPathStartPose typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetPathStartPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupGetPathStartPoseRequestCodec,
              records.Ros1Dobot_bringupGetPathStartPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetPathStartPose typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetPathStartPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupGetPathStartPoseRequestCodec,
              records.Ros1Dobot_bringupGetPathStartPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/GetPose typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupGetPoseRequestCodec, records.Ros1Dobot_bringupGetPoseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/GetPose typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupGetPoseRequestCodec, records.Ros1Dobot_bringupGetPoseResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/GetSixForceData typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetSixForceDataClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupGetSixForceDataRequestCodec,
              records.Ros1Dobot_bringupGetSixForceDataResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetSixForceData typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetSixForceDataServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupGetSixForceDataRequestCodec,
              records.Ros1Dobot_bringupGetSixForceDataResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/GetTerminal485 typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetTerminal485Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupGetTerminal485RequestCodec,
              records.Ros1Dobot_bringupGetTerminal485ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetTerminal485 typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetTerminal485Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupGetTerminal485RequestCodec,
              records.Ros1Dobot_bringupGetTerminal485ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/GetTraceStartPose typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupGetTraceStartPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupGetTraceStartPoseRequestCodec,
              records.Ros1Dobot_bringupGetTraceStartPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/GetTraceStartPose typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupGetTraceStartPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupGetTraceStartPoseRequestCodec,
              records.Ros1Dobot_bringupGetTraceStartPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/HandleTrajPoints typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupHandleTrajPointsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupHandleTrajPointsRequestCodec,
              records.Ros1Dobot_bringupHandleTrajPointsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/HandleTrajPoints typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupHandleTrajPointsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupHandleTrajPointsRequestCodec,
              records.Ros1Dobot_bringupHandleTrajPointsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/InverseSolution typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupInverseSolutionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupInverseSolutionRequestCodec,
              records.Ros1Dobot_bringupInverseSolutionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/InverseSolution typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupInverseSolutionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupInverseSolutionRequestCodec,
              records.Ros1Dobot_bringupInverseSolutionResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/JointMovJ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupJointMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupJointMovJRequestCodec, records.Ros1Dobot_bringupJointMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/JointMovJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupJointMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupJointMovJRequestCodec, records.Ros1Dobot_bringupJointMovJResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/Jump typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupJumpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupJumpRequestCodec, records.Ros1Dobot_bringupJumpResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Jump typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupJumpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupJumpRequestCodec, records.Ros1Dobot_bringupJumpResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/LimZ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupLimZClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupLimZRequestCodec, records.Ros1Dobot_bringupLimZResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/LimZ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupLimZServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupLimZRequestCodec, records.Ros1Dobot_bringupLimZResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/LoadSwitch typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupLoadSwitchClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupLoadSwitchRequestCodec, records.Ros1Dobot_bringupLoadSwitchResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/LoadSwitch typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupLoadSwitchServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupLoadSwitchRequestCodec,
              records.Ros1Dobot_bringupLoadSwitchResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/ModbusClose typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupModbusCloseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupModbusCloseRequestCodec, records.Ros1Dobot_bringupModbusCloseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ModbusClose typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupModbusCloseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupModbusCloseRequestCodec,
              records.Ros1Dobot_bringupModbusCloseResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/ModbusCreate typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupModbusCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupModbusCreateRequestCodec,
              records.Ros1Dobot_bringupModbusCreateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ModbusCreate typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupModbusCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupModbusCreateRequestCodec,
              records.Ros1Dobot_bringupModbusCreateResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/MovJ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupMovJRequestCodec, records.Ros1Dobot_bringupMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/MovJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupMovJRequestCodec, records.Ros1Dobot_bringupMovJResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/MovJExt typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupMovJExtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupMovJExtRequestCodec, records.Ros1Dobot_bringupMovJExtResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/MovJExt typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupMovJExtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupMovJExtRequestCodec, records.Ros1Dobot_bringupMovJExtResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/MovJIO typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupMovJIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupMovJIORequestCodec, records.Ros1Dobot_bringupMovJIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/MovJIO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupMovJIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupMovJIORequestCodec, records.Ros1Dobot_bringupMovJIOResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/MovL typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupMovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupMovLRequestCodec, records.Ros1Dobot_bringupMovLResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/MovL typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupMovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupMovLRequestCodec, records.Ros1Dobot_bringupMovLResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/MovLIO typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupMovLIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupMovLIORequestCodec, records.Ros1Dobot_bringupMovLIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/MovLIO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupMovLIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupMovLIORequestCodec, records.Ros1Dobot_bringupMovLIOResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/MoveJog typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupMoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupMoveJogRequestCodec, records.Ros1Dobot_bringupMoveJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/MoveJog typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupMoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupMoveJogRequestCodec, records.Ros1Dobot_bringupMoveJogResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/PauseScript typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupPauseScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupPauseScriptRequestCodec, records.Ros1Dobot_bringupPauseScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/PauseScript typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupPauseScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupPauseScriptRequestCodec,
              records.Ros1Dobot_bringupPauseScriptResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/PayLoad typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupPayLoadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupPayLoadRequestCodec, records.Ros1Dobot_bringupPayLoadResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/PayLoad typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupPayLoadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupPayLoadRequestCodec, records.Ros1Dobot_bringupPayLoadResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/PositiveSolution typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupPositiveSolutionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupPositiveSolutionRequestCodec,
              records.Ros1Dobot_bringupPositiveSolutionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/PositiveSolution typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupPositiveSolutionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupPositiveSolutionRequestCodec,
              records.Ros1Dobot_bringupPositiveSolutionResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/PowerOn typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupPowerOnClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupPowerOnRequestCodec, records.Ros1Dobot_bringupPowerOnResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/PowerOn typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupPowerOnServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupPowerOnRequestCodec, records.Ros1Dobot_bringupPowerOnResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/RelJointMovJ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRelJointMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupRelJointMovJRequestCodec,
              records.Ros1Dobot_bringupRelJointMovJResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/RelJointMovJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRelJointMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupRelJointMovJRequestCodec,
              records.Ros1Dobot_bringupRelJointMovJResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRelMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRelMovJRequestCodec, records.Ros1Dobot_bringupRelMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RelMovJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRelMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupRelMovJRequestCodec, records.Ros1Dobot_bringupRelMovJResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/RelMovJTool typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRelMovJToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRelMovJToolRequestCodec, records.Ros1Dobot_bringupRelMovJToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RelMovJTool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRelMovJToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupRelMovJToolRequestCodec,
              records.Ros1Dobot_bringupRelMovJToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovJUser typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRelMovJUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRelMovJUserRequestCodec, records.Ros1Dobot_bringupRelMovJUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RelMovJUser typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRelMovJUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupRelMovJUserRequestCodec,
              records.Ros1Dobot_bringupRelMovJUserResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovL typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRelMovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRelMovLRequestCodec, records.Ros1Dobot_bringupRelMovLResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RelMovL typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRelMovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupRelMovLRequestCodec, records.Ros1Dobot_bringupRelMovLResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/RelMovLTool typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRelMovLToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRelMovLToolRequestCodec, records.Ros1Dobot_bringupRelMovLToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RelMovLTool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRelMovLToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupRelMovLToolRequestCodec,
              records.Ros1Dobot_bringupRelMovLToolResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/RelMovLUser typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRelMovLUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRelMovLUserRequestCodec, records.Ros1Dobot_bringupRelMovLUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RelMovLUser typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRelMovLUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupRelMovLUserRequestCodec,
              records.Ros1Dobot_bringupRelMovLUserResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/ResetRobot typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupResetRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupResetRobotRequestCodec, records.Ros1Dobot_bringupResetRobotResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ResetRobot typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupResetRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupResetRobotRequestCodec,
              records.Ros1Dobot_bringupResetRobotResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/RobotMode typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRobotModeRequestCodec, records.Ros1Dobot_bringupRobotModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RobotMode typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupRobotModeRequestCodec, records.Ros1Dobot_bringupRobotModeResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/RunScript typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupRunScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupRunScriptRequestCodec, records.Ros1Dobot_bringupRunScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/RunScript typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupRunScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupRunScriptRequestCodec, records.Ros1Dobot_bringupRunScriptResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/ServoJ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupServoJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupServoJRequestCodec, records.Ros1Dobot_bringupServoJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ServoJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupServoJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupServoJRequestCodec, records.Ros1Dobot_bringupServoJResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/ServoJParam typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupServoJParamClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupServoJParamRequestCodec, records.Ros1Dobot_bringupServoJParamResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ServoJParam typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupServoJParamServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupServoJParamRequestCodec,
              records.Ros1Dobot_bringupServoJParamResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/ServoP typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupServoPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupServoPRequestCodec, records.Ros1Dobot_bringupServoPResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ServoP typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupServoPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupServoPRequestCodec, records.Ros1Dobot_bringupServoPResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/SetArmOrientation typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetArmOrientationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupSetArmOrientationRequestCodec,
              records.Ros1Dobot_bringupSetArmOrientationResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetArmOrientation typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetArmOrientationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetArmOrientationRequestCodec,
              records.Ros1Dobot_bringupSetArmOrientationResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetCoils typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSetCoilsRequestCodec, records.Ros1Dobot_bringupSetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SetCoils typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupSetCoilsRequestCodec, records.Ros1Dobot_bringupSetCoilsResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/SetCollideDrag typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetCollideDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupSetCollideDragRequestCodec,
              records.Ros1Dobot_bringupSetCollideDragResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetCollideDrag typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetCollideDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetCollideDragRequestCodec,
              records.Ros1Dobot_bringupSetCollideDragResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetCollisionLevel typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetCollisionLevelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupSetCollisionLevelRequestCodec,
              records.Ros1Dobot_bringupSetCollisionLevelResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetCollisionLevel typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetCollisionLevelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetCollisionLevelRequestCodec,
              records.Ros1Dobot_bringupSetCollisionLevelResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSetHoldRegsRequestCodec, records.Ros1Dobot_bringupSetHoldRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetHoldRegsRequestCodec,
              records.Ros1Dobot_bringupSetHoldRegsResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetObstacleAvoid typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetObstacleAvoidClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupSetObstacleAvoidRequestCodec,
              records.Ros1Dobot_bringupSetObstacleAvoidResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetObstacleAvoid typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetObstacleAvoidServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetObstacleAvoidRequestCodec,
              records.Ros1Dobot_bringupSetObstacleAvoidResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetPayload typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetPayloadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSetPayloadRequestCodec, records.Ros1Dobot_bringupSetPayloadResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SetPayload typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetPayloadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetPayloadRequestCodec,
              records.Ros1Dobot_bringupSetPayloadResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetSafeSkin typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSetSafeSkinRequestCodec, records.Ros1Dobot_bringupSetSafeSkinResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SetSafeSkin typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetSafeSkinRequestCodec,
              records.Ros1Dobot_bringupSetSafeSkinResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminal485 typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetTerminal485Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupSetTerminal485RequestCodec,
              records.Ros1Dobot_bringupSetTerminal485ResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminal485 typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetTerminal485Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetTerminal485RequestCodec,
              records.Ros1Dobot_bringupSetTerminal485ResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminalKeys typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSetTerminalKeysClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupSetTerminalKeysRequestCodec,
              records.Ros1Dobot_bringupSetTerminalKeysResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/SetTerminalKeys typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSetTerminalKeysServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSetTerminalKeysRequestCodec,
              records.Ros1Dobot_bringupSetTerminalKeysResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedFactor typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSpeedFactorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSpeedFactorRequestCodec, records.Ros1Dobot_bringupSpeedFactorResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SpeedFactor typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSpeedFactorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupSpeedFactorRequestCodec,
              records.Ros1Dobot_bringupSpeedFactorResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/SpeedJ typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSpeedJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSpeedJRequestCodec, records.Ros1Dobot_bringupSpeedJResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SpeedJ typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSpeedJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupSpeedJRequestCodec, records.Ros1Dobot_bringupSpeedJResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/SpeedL typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSpeedLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSpeedLRequestCodec, records.Ros1Dobot_bringupSpeedLResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SpeedL typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSpeedLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupSpeedLRequestCodec, records.Ros1Dobot_bringupSpeedLResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/StartDrag typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupStartDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupStartDragRequestCodec, records.Ros1Dobot_bringupStartDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/StartDrag typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupStartDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupStartDragRequestCodec, records.Ros1Dobot_bringupStartDragResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/StartFCTrace typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupStartFCTraceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupStartFCTraceRequestCodec,
              records.Ros1Dobot_bringupStartFCTraceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/StartFCTrace typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupStartFCTraceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupStartFCTraceRequestCodec,
              records.Ros1Dobot_bringupStartFCTraceResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/StartPath typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupStartPathClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupStartPathRequestCodec, records.Ros1Dobot_bringupStartPathResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/StartPath typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupStartPathServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupStartPathRequestCodec, records.Ros1Dobot_bringupStartPathResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/StartTrace typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupStartTraceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupStartTraceRequestCodec, records.Ros1Dobot_bringupStartTraceResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/StartTrace typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupStartTraceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupStartTraceRequestCodec,
              records.Ros1Dobot_bringupStartTraceResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/StopDrag typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupStopDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupStopDragRequestCodec, records.Ros1Dobot_bringupStopDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/StopDrag typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupStopDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupStopDragRequestCodec, records.Ros1Dobot_bringupStopDragResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/StopScript typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupStopScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupStopScriptRequestCodec, records.Ros1Dobot_bringupStopScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/StopScript typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupStopScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupStopScriptRequestCodec,
              records.Ros1Dobot_bringupStopScriptResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/StopmoveJog typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupStopmoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupStopmoveJogRequestCodec, records.Ros1Dobot_bringupStopmoveJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/StopmoveJog typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupStopmoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupStopmoveJogRequestCodec,
              records.Ros1Dobot_bringupStopmoveJogResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/Sync typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSyncClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSyncRequestCodec, records.Ros1Dobot_bringupSyncResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Sync typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSyncServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupSyncRequestCodec, records.Ros1Dobot_bringupSyncResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/SyncAll typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupSyncAllClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupSyncAllRequestCodec, records.Ros1Dobot_bringupSyncAllResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/SyncAll typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupSyncAllServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupSyncAllRequestCodec, records.Ros1Dobot_bringupSyncAllResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/TCPSpeed typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupTCPSpeedClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupTCPSpeedRequestCodec, records.Ros1Dobot_bringupTCPSpeedResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/TCPSpeed typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupTCPSpeedServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupTCPSpeedRequestCodec, records.Ros1Dobot_bringupTCPSpeedResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/TCPSpeedEnd typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupTCPSpeedEndClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupTCPSpeedEndRequestCodec, records.Ros1Dobot_bringupTCPSpeedEndResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/TCPSpeedEnd typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupTCPSpeedEndServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupTCPSpeedEndRequestCodec,
              records.Ros1Dobot_bringupTCPSpeedEndResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/TcpDashboard typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupTcpDashboardClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupTcpDashboardRequestCodec,
              records.Ros1Dobot_bringupTcpDashboardResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/TcpDashboard typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupTcpDashboardServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupTcpDashboardRequestCodec,
              records.Ros1Dobot_bringupTcpDashboardResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/TcpRealData typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupTcpRealDataClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupTcpRealDataRequestCodec, records.Ros1Dobot_bringupTcpRealDataResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/TcpRealData typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupTcpRealDataServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupTcpRealDataRequestCodec,
              records.Ros1Dobot_bringupTcpRealDataResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/Tool typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupToolRequestCodec, records.Ros1Dobot_bringupToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Tool typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupToolRequestCodec, records.Ros1Dobot_bringupToolResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/ToolAI typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupToolAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupToolAIRequestCodec, records.Ros1Dobot_bringupToolAIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ToolAI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupToolAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupToolAIRequestCodec, records.Ros1Dobot_bringupToolAIResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/ToolDI typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupToolDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupToolDIRequestCodec, records.Ros1Dobot_bringupToolDIResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ToolDI typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupToolDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupToolDIRequestCodec, records.Ros1Dobot_bringupToolDIResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/ToolDO typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupToolDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupToolDORequestCodec, records.Ros1Dobot_bringupToolDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/ToolDO typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupToolDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupToolDORequestCodec, records.Ros1Dobot_bringupToolDOResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/ToolDOExecute typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupToolDOExecuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Dobot_bringupToolDOExecuteRequestCodec,
              records.Ros1Dobot_bringupToolDOExecuteResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete dobot_bringup/ToolDOExecute typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupToolDOExecuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Dobot_bringupToolDOExecuteRequestCodec,
              records.Ros1Dobot_bringupToolDOExecuteResponseCodec,
              false,
              capacity);
    }
}

/** Complete dobot_bringup/User typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupUserRequestCodec, records.Ros1Dobot_bringupUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/User typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupUserRequestCodec, records.Ros1Dobot_bringupUserResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/Wait typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupWaitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupWaitRequestCodec, records.Ros1Dobot_bringupWaitResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/Wait typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupWaitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupWaitRequestCodec, records.Ros1Dobot_bringupWaitResponseCodec, false, capacity);
    }
}

/** Complete dobot_bringup/pause typed client; optional observer is independently granted. */
export class Ros1Dobot_bringupPauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Dobot_bringupPauseRequestCodec, records.Ros1Dobot_bringupPauseResponseCodec, observerAlias, capacity);
    }
}

/** Complete dobot_bringup/pause typed server; callback replacement is caller-managed. */
export class Ros1Dobot_bringupPauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Dobot_bringupPauseRequestCodec, records.Ros1Dobot_bringupPauseResponseCodec, false, capacity);
    }
}
