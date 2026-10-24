/**
 * @file bounded_interfaces.mjs
 * @brief Preserve the complete original dobot/ros1_demo_v4 canonical value domain.
 * @details The selected domain contains 188 complete record/components and 346 original fields. Declared
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

/** Complete rosdemo_v4/AI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4AIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4AIRequestCodec, records.Ros1Rosdemo_v4AIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/AI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4AIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4AIRequestCodec, records.Ros1Rosdemo_v4AIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/AO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4AOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4AORequestCodec, records.Ros1Rosdemo_v4AOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/AO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4AOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4AORequestCodec, records.Ros1Rosdemo_v4AOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/AOInstant typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4AOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4AOInstantRequestCodec, records.Ros1Rosdemo_v4AOInstantResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/AOInstant typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4AOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4AOInstantRequestCodec, records.Ros1Rosdemo_v4AOInstantResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/AccJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4AccJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4AccJRequestCodec, records.Ros1Rosdemo_v4AccJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/AccJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4AccJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4AccJRequestCodec, records.Ros1Rosdemo_v4AccJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/AccL typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4AccLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4AccLRequestCodec, records.Ros1Rosdemo_v4AccLResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/AccL typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4AccLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4AccLRequestCodec, records.Ros1Rosdemo_v4AccLResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/Arc typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ArcClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ArcRequestCodec, records.Ros1Rosdemo_v4ArcResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/Arc typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ArcServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ArcRequestCodec, records.Ros1Rosdemo_v4ArcResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/BrakeControl typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4BrakeControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4BrakeControlRequestCodec, records.Ros1Rosdemo_v4BrakeControlResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/BrakeControl typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4BrakeControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4BrakeControlRequestCodec, records.Ros1Rosdemo_v4BrakeControlResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/CP typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4CPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4CPRequestCodec, records.Ros1Rosdemo_v4CPResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/CP typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4CPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4CPRequestCodec, records.Ros1Rosdemo_v4CPResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/CalcTool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4CalcToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4CalcToolRequestCodec, records.Ros1Rosdemo_v4CalcToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/CalcTool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4CalcToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4CalcToolRequestCodec, records.Ros1Rosdemo_v4CalcToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/CalcUser typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4CalcUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4CalcUserRequestCodec, records.Ros1Rosdemo_v4CalcUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/CalcUser typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4CalcUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4CalcUserRequestCodec, records.Ros1Rosdemo_v4CalcUserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/Circle typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4CircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4CircleRequestCodec, records.Ros1Rosdemo_v4CircleResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/Circle typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4CircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4CircleRequestCodec, records.Ros1Rosdemo_v4CircleResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ClearError typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ClearErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ClearErrorRequestCodec, records.Ros1Rosdemo_v4ClearErrorResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ClearError typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ClearErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ClearErrorRequestCodec, records.Ros1Rosdemo_v4ClearErrorResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/Continue typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ContinueClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ContinueRequestCodec, records.Ros1Rosdemo_v4ContinueResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/Continue typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ContinueServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ContinueRequestCodec, records.Ros1Rosdemo_v4ContinueResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/DI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4DIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4DIRequestCodec, records.Ros1Rosdemo_v4DIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/DI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4DIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4DIRequestCodec, records.Ros1Rosdemo_v4DIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/DIGroup typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4DIGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4DIGroupRequestCodec, records.Ros1Rosdemo_v4DIGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/DIGroup typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4DIGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4DIGroupRequestCodec, records.Ros1Rosdemo_v4DIGroupResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/DO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4DOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4DORequestCodec, records.Ros1Rosdemo_v4DOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/DO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4DOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4DORequestCodec, records.Ros1Rosdemo_v4DOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/DOGroup typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4DOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4DOGroupRequestCodec, records.Ros1Rosdemo_v4DOGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/DOGroup typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4DOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4DOGroupRequestCodec, records.Ros1Rosdemo_v4DOGroupResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/DOInstant typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4DOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4DOInstantRequestCodec, records.Ros1Rosdemo_v4DOInstantResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/DOInstant typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4DOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4DOInstantRequestCodec, records.Ros1Rosdemo_v4DOInstantResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/DisableRobot typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4DisableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4DisableRobotRequestCodec, records.Ros1Rosdemo_v4DisableRobotResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/DisableRobot typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4DisableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4DisableRobotRequestCodec, records.Ros1Rosdemo_v4DisableRobotResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/DragSensivity typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4DragSensivityClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4DragSensivityRequestCodec, records.Ros1Rosdemo_v4DragSensivityResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/DragSensivity typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4DragSensivityServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4DragSensivityRequestCodec,
              records.Ros1Rosdemo_v4DragSensivityResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/EmergencyStop typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4EmergencyStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4EmergencyStopRequestCodec, records.Ros1Rosdemo_v4EmergencyStopResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/EmergencyStop typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4EmergencyStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4EmergencyStopRequestCodec,
              records.Ros1Rosdemo_v4EmergencyStopResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/EnableRobot typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4EnableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4EnableRobotRequestCodec, records.Ros1Rosdemo_v4EnableRobotResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/EnableRobot typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4EnableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4EnableRobotRequestCodec, records.Ros1Rosdemo_v4EnableRobotResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/EnableSafeSkin typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4EnableSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4EnableSafeSkinRequestCodec, records.Ros1Rosdemo_v4EnableSafeSkinResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/EnableSafeSkin typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4EnableSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4EnableSafeSkinRequestCodec,
              records.Ros1Rosdemo_v4EnableSafeSkinResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/GetAO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetAOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetAORequestCodec, records.Ros1Rosdemo_v4GetAOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetAO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetAOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetAORequestCodec, records.Ros1Rosdemo_v4GetAOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetAngle typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetAngleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetAngleRequestCodec, records.Ros1Rosdemo_v4GetAngleResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetAngle typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetAngleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetAngleRequestCodec, records.Ros1Rosdemo_v4GetAngleResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetCoils typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetCoilsRequestCodec, records.Ros1Rosdemo_v4GetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetCoils typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetCoilsRequestCodec, records.Ros1Rosdemo_v4GetCoilsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetCurrentCommandId typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetCurrentCommandIdClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v4GetCurrentCommandIdRequestCodec,
              records.Ros1Rosdemo_v4GetCurrentCommandIdResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/GetCurrentCommandId typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetCurrentCommandIdServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4GetCurrentCommandIdRequestCodec,
              records.Ros1Rosdemo_v4GetCurrentCommandIdResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/GetDO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetDORequestCodec, records.Ros1Rosdemo_v4GetDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetDO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetDORequestCodec, records.Ros1Rosdemo_v4GetDOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetDOGroup typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetDOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetDOGroupRequestCodec, records.Ros1Rosdemo_v4GetDOGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetDOGroup typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetDOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetDOGroupRequestCodec, records.Ros1Rosdemo_v4GetDOGroupResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetErrorID typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetErrorIDClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetErrorIDRequestCodec, records.Ros1Rosdemo_v4GetErrorIDResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetErrorID typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetErrorIDServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetErrorIDRequestCodec, records.Ros1Rosdemo_v4GetErrorIDResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetHoldRegsRequestCodec, records.Ros1Rosdemo_v4GetHoldRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetHoldRegsRequestCodec, records.Ros1Rosdemo_v4GetHoldRegsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetInBits typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetInBitsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetInBitsRequestCodec, records.Ros1Rosdemo_v4GetInBitsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetInBits typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetInBitsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetInBitsRequestCodec, records.Ros1Rosdemo_v4GetInBitsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetInRegs typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetInRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetInRegsRequestCodec, records.Ros1Rosdemo_v4GetInRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetInRegs typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetInRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetInRegsRequestCodec, records.Ros1Rosdemo_v4GetInRegsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetInputBool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetInputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetInputBoolRequestCodec, records.Ros1Rosdemo_v4GetInputBoolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetInputBool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetInputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetInputBoolRequestCodec, records.Ros1Rosdemo_v4GetInputBoolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetInputFloat typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetInputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetInputFloatRequestCodec, records.Ros1Rosdemo_v4GetInputFloatResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetInputFloat typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetInputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4GetInputFloatRequestCodec,
              records.Ros1Rosdemo_v4GetInputFloatResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/GetInputInt typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetInputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetInputIntRequestCodec, records.Ros1Rosdemo_v4GetInputIntResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetInputInt typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetInputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetInputIntRequestCodec, records.Ros1Rosdemo_v4GetInputIntResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetOutputBool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetOutputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetOutputBoolRequestCodec, records.Ros1Rosdemo_v4GetOutputBoolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetOutputBool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetOutputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4GetOutputBoolRequestCodec,
              records.Ros1Rosdemo_v4GetOutputBoolResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputFloat typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetOutputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetOutputFloatRequestCodec, records.Ros1Rosdemo_v4GetOutputFloatResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetOutputFloat typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetOutputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4GetOutputFloatRequestCodec,
              records.Ros1Rosdemo_v4GetOutputFloatResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/GetOutputInt typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetOutputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetOutputIntRequestCodec, records.Ros1Rosdemo_v4GetOutputIntResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetOutputInt typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetOutputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetOutputIntRequestCodec, records.Ros1Rosdemo_v4GetOutputIntResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetPose typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetPoseRequestCodec, records.Ros1Rosdemo_v4GetPoseResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetPose typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetPoseRequestCodec, records.Ros1Rosdemo_v4GetPoseResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/GetStartPose typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4GetStartPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4GetStartPoseRequestCodec, records.Ros1Rosdemo_v4GetStartPoseResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/GetStartPose typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4GetStartPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4GetStartPoseRequestCodec, records.Ros1Rosdemo_v4GetStartPoseResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/InverseKin typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4InverseKinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4InverseKinRequestCodec, records.Ros1Rosdemo_v4InverseKinResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/InverseKin typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4InverseKinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4InverseKinRequestCodec, records.Ros1Rosdemo_v4InverseKinResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/InverseSolution typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4InverseSolutionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v4InverseSolutionRequestCodec,
              records.Ros1Rosdemo_v4InverseSolutionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/InverseSolution typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4InverseSolutionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4InverseSolutionRequestCodec,
              records.Ros1Rosdemo_v4InverseSolutionResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusClose typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ModbusCloseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ModbusCloseRequestCodec, records.Ros1Rosdemo_v4ModbusCloseResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ModbusClose typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ModbusCloseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ModbusCloseRequestCodec, records.Ros1Rosdemo_v4ModbusCloseResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ModbusCreate typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ModbusCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ModbusCreateRequestCodec, records.Ros1Rosdemo_v4ModbusCreateResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ModbusCreate typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ModbusCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ModbusCreateRequestCodec, records.Ros1Rosdemo_v4ModbusCreateResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ModbusRTUCreate typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ModbusRTUCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v4ModbusRTUCreateRequestCodec,
              records.Ros1Rosdemo_v4ModbusRTUCreateResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/ModbusRTUCreate typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ModbusRTUCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4ModbusRTUCreateRequestCodec,
              records.Ros1Rosdemo_v4ModbusRTUCreateResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/MovJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4MovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4MovJRequestCodec, records.Ros1Rosdemo_v4MovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/MovJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4MovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4MovJRequestCodec, records.Ros1Rosdemo_v4MovJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/MovJIO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4MovJIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4MovJIORequestCodec, records.Ros1Rosdemo_v4MovJIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/MovJIO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4MovJIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4MovJIORequestCodec, records.Ros1Rosdemo_v4MovJIOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/MovL typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4MovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4MovLRequestCodec, records.Ros1Rosdemo_v4MovLResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/MovL typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4MovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4MovLRequestCodec, records.Ros1Rosdemo_v4MovLResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/MovLIO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4MovLIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4MovLIORequestCodec, records.Ros1Rosdemo_v4MovLIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/MovLIO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4MovLIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4MovLIORequestCodec, records.Ros1Rosdemo_v4MovLIOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/MoveJog typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4MoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4MoveJogRequestCodec, records.Ros1Rosdemo_v4MoveJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/MoveJog typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4MoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4MoveJogRequestCodec, records.Ros1Rosdemo_v4MoveJogResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/Pause typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4PauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4PauseRequestCodec, records.Ros1Rosdemo_v4PauseResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/Pause typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4PauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4PauseRequestCodec, records.Ros1Rosdemo_v4PauseResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/PositiveKin typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4PositiveKinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4PositiveKinRequestCodec, records.Ros1Rosdemo_v4PositiveKinResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/PositiveKin typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4PositiveKinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4PositiveKinRequestCodec, records.Ros1Rosdemo_v4PositiveKinResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/PowerOn typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4PowerOnClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4PowerOnRequestCodec, records.Ros1Rosdemo_v4PowerOnResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/PowerOn typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4PowerOnServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4PowerOnRequestCodec, records.Ros1Rosdemo_v4PowerOnResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/RelJointMovJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4RelJointMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4RelJointMovJRequestCodec, records.Ros1Rosdemo_v4RelJointMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/RelJointMovJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4RelJointMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4RelJointMovJRequestCodec, records.Ros1Rosdemo_v4RelJointMovJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/RelMovJTool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4RelMovJToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4RelMovJToolRequestCodec, records.Ros1Rosdemo_v4RelMovJToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/RelMovJTool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4RelMovJToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4RelMovJToolRequestCodec, records.Ros1Rosdemo_v4RelMovJToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/RelMovJUser typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4RelMovJUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4RelMovJUserRequestCodec, records.Ros1Rosdemo_v4RelMovJUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/RelMovJUser typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4RelMovJUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4RelMovJUserRequestCodec, records.Ros1Rosdemo_v4RelMovJUserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/RelMovLTool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4RelMovLToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4RelMovLToolRequestCodec, records.Ros1Rosdemo_v4RelMovLToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/RelMovLTool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4RelMovLToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4RelMovLToolRequestCodec, records.Ros1Rosdemo_v4RelMovLToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/RelMovLUser typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4RelMovLUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4RelMovLUserRequestCodec, records.Ros1Rosdemo_v4RelMovLUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/RelMovLUser typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4RelMovLUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4RelMovLUserRequestCodec, records.Ros1Rosdemo_v4RelMovLUserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/RobotMode typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4RobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4RobotModeRequestCodec, records.Ros1Rosdemo_v4RobotModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/RobotMode typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4RobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4RobotModeRequestCodec, records.Ros1Rosdemo_v4RobotModeResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/RunScript typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4RunScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4RunScriptRequestCodec, records.Ros1Rosdemo_v4RunScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/RunScript typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4RunScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4RunScriptRequestCodec, records.Ros1Rosdemo_v4RunScriptResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ServoJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ServoJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ServoJRequestCodec, records.Ros1Rosdemo_v4ServoJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ServoJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ServoJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ServoJRequestCodec, records.Ros1Rosdemo_v4ServoJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ServoP typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ServoPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ServoPRequestCodec, records.Ros1Rosdemo_v4ServoPResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ServoP typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ServoPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ServoPRequestCodec, records.Ros1Rosdemo_v4ServoPResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetBackDistance typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetBackDistanceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v4SetBackDistanceRequestCodec,
              records.Ros1Rosdemo_v4SetBackDistanceResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetBackDistance typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetBackDistanceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4SetBackDistanceRequestCodec,
              records.Ros1Rosdemo_v4SetBackDistanceResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/SetCoils typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetCoilsRequestCodec, records.Ros1Rosdemo_v4SetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetCoils typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetCoilsRequestCodec, records.Ros1Rosdemo_v4SetCoilsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetCollisionLevel typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetCollisionLevelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v4SetCollisionLevelRequestCodec,
              records.Ros1Rosdemo_v4SetCollisionLevelResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetCollisionLevel typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetCollisionLevelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4SetCollisionLevelRequestCodec,
              records.Ros1Rosdemo_v4SetCollisionLevelResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/SetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetHoldRegsRequestCodec, records.Ros1Rosdemo_v4SetHoldRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetHoldRegsRequestCodec, records.Ros1Rosdemo_v4SetHoldRegsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetOutputBool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetOutputBoolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetOutputBoolRequestCodec, records.Ros1Rosdemo_v4SetOutputBoolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetOutputBool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetOutputBoolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4SetOutputBoolRequestCodec,
              records.Ros1Rosdemo_v4SetOutputBoolResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputFloat typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetOutputFloatClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetOutputFloatRequestCodec, records.Ros1Rosdemo_v4SetOutputFloatResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetOutputFloat typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetOutputFloatServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4SetOutputFloatRequestCodec,
              records.Ros1Rosdemo_v4SetOutputFloatResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/SetOutputInt typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetOutputIntClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetOutputIntRequestCodec, records.Ros1Rosdemo_v4SetOutputIntResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetOutputInt typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetOutputIntServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetOutputIntRequestCodec, records.Ros1Rosdemo_v4SetOutputIntResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetPayload typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetPayloadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetPayloadRequestCodec, records.Ros1Rosdemo_v4SetPayloadResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetPayload typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetPayloadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetPayloadRequestCodec, records.Ros1Rosdemo_v4SetPayloadResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetPostCollisionMode typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetPostCollisionModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v4SetPostCollisionModeRequestCodec,
              records.Ros1Rosdemo_v4SetPostCollisionModeResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetPostCollisionMode typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetPostCollisionModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4SetPostCollisionModeRequestCodec,
              records.Ros1Rosdemo_v4SetPostCollisionModeResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/SetSafeSkin typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetSafeSkinRequestCodec, records.Ros1Rosdemo_v4SetSafeSkinResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetSafeSkin typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetSafeSkinRequestCodec, records.Ros1Rosdemo_v4SetSafeSkinResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetSafeWallEnable typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetSafeWallEnableClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v4SetSafeWallEnableRequestCodec,
              records.Ros1Rosdemo_v4SetSafeWallEnableResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v4/SetSafeWallEnable typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetSafeWallEnableServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4SetSafeWallEnableRequestCodec,
              records.Ros1Rosdemo_v4SetSafeWallEnableResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/SetTool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetToolRequestCodec, records.Ros1Rosdemo_v4SetToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetTool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetToolRequestCodec, records.Ros1Rosdemo_v4SetToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetTool485 typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetTool485Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetTool485RequestCodec, records.Ros1Rosdemo_v4SetTool485ResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetTool485 typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetTool485Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetTool485RequestCodec, records.Ros1Rosdemo_v4SetTool485ResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetToolMode typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetToolModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetToolModeRequestCodec, records.Ros1Rosdemo_v4SetToolModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetToolMode typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetToolModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetToolModeRequestCodec, records.Ros1Rosdemo_v4SetToolModeResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetToolPower typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetToolPowerClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetToolPowerRequestCodec, records.Ros1Rosdemo_v4SetToolPowerResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetToolPower typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetToolPowerServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetToolPowerRequestCodec, records.Ros1Rosdemo_v4SetToolPowerResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SetUser typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SetUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SetUserRequestCodec, records.Ros1Rosdemo_v4SetUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SetUser typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SetUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SetUserRequestCodec, records.Ros1Rosdemo_v4SetUserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/SpeedFactor typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4SpeedFactorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4SpeedFactorRequestCodec, records.Ros1Rosdemo_v4SpeedFactorResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/SpeedFactor typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4SpeedFactorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4SpeedFactorRequestCodec, records.Ros1Rosdemo_v4SpeedFactorResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/StartDrag typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4StartDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4StartDragRequestCodec, records.Ros1Rosdemo_v4StartDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/StartDrag typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4StartDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4StartDragRequestCodec, records.Ros1Rosdemo_v4StartDragResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/StartPath typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4StartPathClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4StartPathRequestCodec, records.Ros1Rosdemo_v4StartPathResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/StartPath typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4StartPathServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4StartPathRequestCodec, records.Ros1Rosdemo_v4StartPathResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/Stop typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4StopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4StopRequestCodec, records.Ros1Rosdemo_v4StopResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/Stop typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4StopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4StopRequestCodec, records.Ros1Rosdemo_v4StopResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/StopDrag typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4StopDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4StopDragRequestCodec, records.Ros1Rosdemo_v4StopDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/StopDrag typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4StopDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4StopDragRequestCodec, records.Ros1Rosdemo_v4StopDragResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/StopMoveJog typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4StopMoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4StopMoveJogRequestCodec, records.Ros1Rosdemo_v4StopMoveJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/StopMoveJog typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4StopMoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4StopMoveJogRequestCodec, records.Ros1Rosdemo_v4StopMoveJogResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/TcpDashboard typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4TcpDashboardClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4TcpDashboardRequestCodec, records.Ros1Rosdemo_v4TcpDashboardResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/TcpDashboard typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4TcpDashboardServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4TcpDashboardRequestCodec, records.Ros1Rosdemo_v4TcpDashboardResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/Tool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ToolRequestCodec, records.Ros1Rosdemo_v4ToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/Tool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ToolRequestCodec, records.Ros1Rosdemo_v4ToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ToolAI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ToolAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ToolAIRequestCodec, records.Ros1Rosdemo_v4ToolAIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ToolAI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ToolAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ToolAIRequestCodec, records.Ros1Rosdemo_v4ToolAIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ToolDI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ToolDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ToolDIRequestCodec, records.Ros1Rosdemo_v4ToolDIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ToolDI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ToolDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ToolDIRequestCodec, records.Ros1Rosdemo_v4ToolDIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ToolDO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ToolDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ToolDORequestCodec, records.Ros1Rosdemo_v4ToolDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ToolDO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ToolDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4ToolDORequestCodec, records.Ros1Rosdemo_v4ToolDOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/ToolDOInstant typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4ToolDOInstantClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4ToolDOInstantRequestCodec, records.Ros1Rosdemo_v4ToolDOInstantResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/ToolDOInstant typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4ToolDOInstantServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v4ToolDOInstantRequestCodec,
              records.Ros1Rosdemo_v4ToolDOInstantResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v4/User typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4UserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4UserRequestCodec, records.Ros1Rosdemo_v4UserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/User typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4UserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4UserRequestCodec, records.Ros1Rosdemo_v4UserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/VelJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4VelJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4VelJRequestCodec, records.Ros1Rosdemo_v4VelJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/VelJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4VelJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4VelJRequestCodec, records.Ros1Rosdemo_v4VelJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v4/VelL typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v4VelLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v4VelLRequestCodec, records.Ros1Rosdemo_v4VelLResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v4/VelL typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v4VelLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v4VelLRequestCodec, records.Ros1Rosdemo_v4VelLResponseCodec, false, capacity);
    }
}
