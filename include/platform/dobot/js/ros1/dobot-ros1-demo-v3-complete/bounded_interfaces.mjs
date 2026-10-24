/**
 * @file bounded_interfaces.mjs
 * @brief Preserve the complete original dobot/ros1_demo_v3 canonical value domain.
 * @details The selected domain contains 190 complete record/components and 344 original fields. Declared
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

/** Complete rosdemo_v3/AI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3AIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3AIRequestCodec, records.Ros1Rosdemo_v3AIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/AI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3AIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3AIRequestCodec, records.Ros1Rosdemo_v3AIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/AO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3AOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3AORequestCodec, records.Ros1Rosdemo_v3AOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/AO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3AOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3AORequestCodec, records.Ros1Rosdemo_v3AOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/AOExecute typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3AOExecuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3AOExecuteRequestCodec, records.Ros1Rosdemo_v3AOExecuteResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/AOExecute typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3AOExecuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3AOExecuteRequestCodec, records.Ros1Rosdemo_v3AOExecuteResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/AccJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3AccJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3AccJRequestCodec, records.Ros1Rosdemo_v3AccJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/AccJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3AccJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3AccJRequestCodec, records.Ros1Rosdemo_v3AccJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/AccL typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3AccLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3AccLRequestCodec, records.Ros1Rosdemo_v3AccLResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/AccL typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3AccLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3AccLRequestCodec, records.Ros1Rosdemo_v3AccLResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/Arc typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ArcClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ArcRequestCodec, records.Ros1Rosdemo_v3ArcResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Arc typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ArcServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ArcRequestCodec, records.Ros1Rosdemo_v3ArcResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/Arch typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ArchClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ArchRequestCodec, records.Ros1Rosdemo_v3ArchResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Arch typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ArchServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ArchRequestCodec, records.Ros1Rosdemo_v3ArchResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/BrakeControl typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3BrakeControlClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3BrakeControlRequestCodec, records.Ros1Rosdemo_v3BrakeControlResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/BrakeControl typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3BrakeControlServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3BrakeControlRequestCodec, records.Ros1Rosdemo_v3BrakeControlResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/CP typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3CPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3CPRequestCodec, records.Ros1Rosdemo_v3CPResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/CP typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3CPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3CPRequestCodec, records.Ros1Rosdemo_v3CPResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/Circle typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3CircleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3CircleRequestCodec, records.Ros1Rosdemo_v3CircleResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Circle typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3CircleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3CircleRequestCodec, records.Ros1Rosdemo_v3CircleResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ClearError typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ClearErrorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ClearErrorRequestCodec, records.Ros1Rosdemo_v3ClearErrorResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ClearError typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ClearErrorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ClearErrorRequestCodec, records.Ros1Rosdemo_v3ClearErrorResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ContinueScript typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ContinueScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ContinueScriptRequestCodec, records.Ros1Rosdemo_v3ContinueScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ContinueScript typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ContinueScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3ContinueScriptRequestCodec,
              records.Ros1Rosdemo_v3ContinueScriptResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/Continues typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ContinuesClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ContinuesRequestCodec, records.Ros1Rosdemo_v3ContinuesResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Continues typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ContinuesServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ContinuesRequestCodec, records.Ros1Rosdemo_v3ContinuesResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/DI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3DIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3DIRequestCodec, records.Ros1Rosdemo_v3DIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/DI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3DIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3DIRequestCodec, records.Ros1Rosdemo_v3DIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/DIGroup typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3DIGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3DIGroupRequestCodec, records.Ros1Rosdemo_v3DIGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/DIGroup typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3DIGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3DIGroupRequestCodec, records.Ros1Rosdemo_v3DIGroupResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/DO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3DOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3DORequestCodec, records.Ros1Rosdemo_v3DOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/DO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3DOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3DORequestCodec, records.Ros1Rosdemo_v3DOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/DOExecute typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3DOExecuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3DOExecuteRequestCodec, records.Ros1Rosdemo_v3DOExecuteResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/DOExecute typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3DOExecuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3DOExecuteRequestCodec, records.Ros1Rosdemo_v3DOExecuteResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/DOGroup typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3DOGroupClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3DOGroupRequestCodec, records.Ros1Rosdemo_v3DOGroupResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/DOGroup typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3DOGroupServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3DOGroupRequestCodec, records.Ros1Rosdemo_v3DOGroupResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/DigitalOutputs typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3DigitalOutputsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3DigitalOutputsRequestCodec, records.Ros1Rosdemo_v3DigitalOutputsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/DigitalOutputs typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3DigitalOutputsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3DigitalOutputsRequestCodec,
              records.Ros1Rosdemo_v3DigitalOutputsResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/DisableRobot typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3DisableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3DisableRobotRequestCodec, records.Ros1Rosdemo_v3DisableRobotResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/DisableRobot typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3DisableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3DisableRobotRequestCodec, records.Ros1Rosdemo_v3DisableRobotResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/EmergencyStop typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3EmergencyStopClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3EmergencyStopRequestCodec, records.Ros1Rosdemo_v3EmergencyStopResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/EmergencyStop typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3EmergencyStopServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3EmergencyStopRequestCodec,
              records.Ros1Rosdemo_v3EmergencyStopResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/EnableRobot typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3EnableRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3EnableRobotRequestCodec, records.Ros1Rosdemo_v3EnableRobotResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/EnableRobot typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3EnableRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3EnableRobotRequestCodec, records.Ros1Rosdemo_v3EnableRobotResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetAngle typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetAngleClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetAngleRequestCodec, records.Ros1Rosdemo_v3GetAngleResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetAngle typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetAngleServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3GetAngleRequestCodec, records.Ros1Rosdemo_v3GetAngleResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetCoils typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetCoilsRequestCodec, records.Ros1Rosdemo_v3GetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetCoils typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3GetCoilsRequestCodec, records.Ros1Rosdemo_v3GetCoilsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetErrorID typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetErrorIDClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetErrorIDRequestCodec, records.Ros1Rosdemo_v3GetErrorIDResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetErrorID typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetErrorIDServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3GetErrorIDRequestCodec, records.Ros1Rosdemo_v3GetErrorIDResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetHoldRegsRequestCodec, records.Ros1Rosdemo_v3GetHoldRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3GetHoldRegsRequestCodec, records.Ros1Rosdemo_v3GetHoldRegsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetInBits typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetInBitsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetInBitsRequestCodec, records.Ros1Rosdemo_v3GetInBitsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetInBits typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetInBitsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3GetInBitsRequestCodec, records.Ros1Rosdemo_v3GetInBitsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetInRegs typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetInRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetInRegsRequestCodec, records.Ros1Rosdemo_v3GetInRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetInRegs typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetInRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3GetInRegsRequestCodec, records.Ros1Rosdemo_v3GetInRegsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetPathStartPose typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetPathStartPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3GetPathStartPoseRequestCodec,
              records.Ros1Rosdemo_v3GetPathStartPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetPathStartPose typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetPathStartPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3GetPathStartPoseRequestCodec,
              records.Ros1Rosdemo_v3GetPathStartPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/GetPose typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetPoseRequestCodec, records.Ros1Rosdemo_v3GetPoseResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetPose typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3GetPoseRequestCodec, records.Ros1Rosdemo_v3GetPoseResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/GetSixForceData typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetSixForceDataClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3GetSixForceDataRequestCodec,
              records.Ros1Rosdemo_v3GetSixForceDataResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetSixForceData typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetSixForceDataServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3GetSixForceDataRequestCodec,
              records.Ros1Rosdemo_v3GetSixForceDataResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/GetTerminal485 typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetTerminal485Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3GetTerminal485RequestCodec, records.Ros1Rosdemo_v3GetTerminal485ResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/GetTerminal485 typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetTerminal485Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3GetTerminal485RequestCodec,
              records.Ros1Rosdemo_v3GetTerminal485ResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/GetTraceStartPose typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3GetTraceStartPoseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3GetTraceStartPoseRequestCodec,
              records.Ros1Rosdemo_v3GetTraceStartPoseResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/GetTraceStartPose typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3GetTraceStartPoseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3GetTraceStartPoseRequestCodec,
              records.Ros1Rosdemo_v3GetTraceStartPoseResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/HandleTrajPoints typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3HandleTrajPointsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3HandleTrajPointsRequestCodec,
              records.Ros1Rosdemo_v3HandleTrajPointsResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/HandleTrajPoints typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3HandleTrajPointsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3HandleTrajPointsRequestCodec,
              records.Ros1Rosdemo_v3HandleTrajPointsResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/InverseSolution typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3InverseSolutionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3InverseSolutionRequestCodec,
              records.Ros1Rosdemo_v3InverseSolutionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/InverseSolution typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3InverseSolutionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3InverseSolutionRequestCodec,
              records.Ros1Rosdemo_v3InverseSolutionResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/JointMovJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3JointMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3JointMovJRequestCodec, records.Ros1Rosdemo_v3JointMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/JointMovJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3JointMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3JointMovJRequestCodec, records.Ros1Rosdemo_v3JointMovJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/Jump typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3JumpClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3JumpRequestCodec, records.Ros1Rosdemo_v3JumpResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Jump typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3JumpServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3JumpRequestCodec, records.Ros1Rosdemo_v3JumpResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/LimZ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3LimZClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3LimZRequestCodec, records.Ros1Rosdemo_v3LimZResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/LimZ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3LimZServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3LimZRequestCodec, records.Ros1Rosdemo_v3LimZResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/LoadSwitch typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3LoadSwitchClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3LoadSwitchRequestCodec, records.Ros1Rosdemo_v3LoadSwitchResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/LoadSwitch typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3LoadSwitchServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3LoadSwitchRequestCodec, records.Ros1Rosdemo_v3LoadSwitchResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ModbusClose typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ModbusCloseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ModbusCloseRequestCodec, records.Ros1Rosdemo_v3ModbusCloseResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ModbusClose typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ModbusCloseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ModbusCloseRequestCodec, records.Ros1Rosdemo_v3ModbusCloseResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ModbusCreate typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ModbusCreateClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ModbusCreateRequestCodec, records.Ros1Rosdemo_v3ModbusCreateResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ModbusCreate typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ModbusCreateServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ModbusCreateRequestCodec, records.Ros1Rosdemo_v3ModbusCreateResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/MovJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3MovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3MovJRequestCodec, records.Ros1Rosdemo_v3MovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/MovJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3MovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3MovJRequestCodec, records.Ros1Rosdemo_v3MovJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/MovJExt typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3MovJExtClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3MovJExtRequestCodec, records.Ros1Rosdemo_v3MovJExtResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/MovJExt typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3MovJExtServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3MovJExtRequestCodec, records.Ros1Rosdemo_v3MovJExtResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/MovJIO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3MovJIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3MovJIORequestCodec, records.Ros1Rosdemo_v3MovJIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/MovJIO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3MovJIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3MovJIORequestCodec, records.Ros1Rosdemo_v3MovJIOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/MovL typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3MovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3MovLRequestCodec, records.Ros1Rosdemo_v3MovLResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/MovL typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3MovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3MovLRequestCodec, records.Ros1Rosdemo_v3MovLResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/MovLIO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3MovLIOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3MovLIORequestCodec, records.Ros1Rosdemo_v3MovLIOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/MovLIO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3MovLIOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3MovLIORequestCodec, records.Ros1Rosdemo_v3MovLIOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/MoveJog typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3MoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3MoveJogRequestCodec, records.Ros1Rosdemo_v3MoveJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/MoveJog typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3MoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3MoveJogRequestCodec, records.Ros1Rosdemo_v3MoveJogResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/PauseScript typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3PauseScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3PauseScriptRequestCodec, records.Ros1Rosdemo_v3PauseScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/PauseScript typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3PauseScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3PauseScriptRequestCodec, records.Ros1Rosdemo_v3PauseScriptResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/PayLoad typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3PayLoadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3PayLoadRequestCodec, records.Ros1Rosdemo_v3PayLoadResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/PayLoad typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3PayLoadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3PayLoadRequestCodec, records.Ros1Rosdemo_v3PayLoadResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/PositiveSolution typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3PositiveSolutionClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3PositiveSolutionRequestCodec,
              records.Ros1Rosdemo_v3PositiveSolutionResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/PositiveSolution typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3PositiveSolutionServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3PositiveSolutionRequestCodec,
              records.Ros1Rosdemo_v3PositiveSolutionResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/PowerOn typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3PowerOnClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3PowerOnRequestCodec, records.Ros1Rosdemo_v3PowerOnResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/PowerOn typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3PowerOnServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3PowerOnRequestCodec, records.Ros1Rosdemo_v3PowerOnResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RelJointMovJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RelJointMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RelJointMovJRequestCodec, records.Ros1Rosdemo_v3RelJointMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RelJointMovJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RelJointMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RelJointMovJRequestCodec, records.Ros1Rosdemo_v3RelJointMovJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RelMovJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RelMovJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RelMovJRequestCodec, records.Ros1Rosdemo_v3RelMovJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RelMovJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RelMovJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RelMovJRequestCodec, records.Ros1Rosdemo_v3RelMovJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RelMovJTool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RelMovJToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RelMovJToolRequestCodec, records.Ros1Rosdemo_v3RelMovJToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RelMovJTool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RelMovJToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RelMovJToolRequestCodec, records.Ros1Rosdemo_v3RelMovJToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RelMovJUser typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RelMovJUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RelMovJUserRequestCodec, records.Ros1Rosdemo_v3RelMovJUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RelMovJUser typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RelMovJUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RelMovJUserRequestCodec, records.Ros1Rosdemo_v3RelMovJUserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RelMovL typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RelMovLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RelMovLRequestCodec, records.Ros1Rosdemo_v3RelMovLResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RelMovL typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RelMovLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RelMovLRequestCodec, records.Ros1Rosdemo_v3RelMovLResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RelMovLTool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RelMovLToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RelMovLToolRequestCodec, records.Ros1Rosdemo_v3RelMovLToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RelMovLTool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RelMovLToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RelMovLToolRequestCodec, records.Ros1Rosdemo_v3RelMovLToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RelMovLUser typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RelMovLUserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RelMovLUserRequestCodec, records.Ros1Rosdemo_v3RelMovLUserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RelMovLUser typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RelMovLUserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RelMovLUserRequestCodec, records.Ros1Rosdemo_v3RelMovLUserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ResetRobot typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ResetRobotClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ResetRobotRequestCodec, records.Ros1Rosdemo_v3ResetRobotResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ResetRobot typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ResetRobotServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ResetRobotRequestCodec, records.Ros1Rosdemo_v3ResetRobotResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RobotMode typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RobotModeClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RobotModeRequestCodec, records.Ros1Rosdemo_v3RobotModeResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RobotMode typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RobotModeServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RobotModeRequestCodec, records.Ros1Rosdemo_v3RobotModeResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/RunScript typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3RunScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3RunScriptRequestCodec, records.Ros1Rosdemo_v3RunScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/RunScript typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3RunScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3RunScriptRequestCodec, records.Ros1Rosdemo_v3RunScriptResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ServoJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ServoJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ServoJRequestCodec, records.Ros1Rosdemo_v3ServoJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ServoJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ServoJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ServoJRequestCodec, records.Ros1Rosdemo_v3ServoJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ServoP typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ServoPClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ServoPRequestCodec, records.Ros1Rosdemo_v3ServoPResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ServoP typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ServoPServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ServoPRequestCodec, records.Ros1Rosdemo_v3ServoPResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SetArmOrientation typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetArmOrientationClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3SetArmOrientationRequestCodec,
              records.Ros1Rosdemo_v3SetArmOrientationResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetArmOrientation typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetArmOrientationServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3SetArmOrientationRequestCodec,
              records.Ros1Rosdemo_v3SetArmOrientationResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCoils typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetCoilsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SetCoilsRequestCodec, records.Ros1Rosdemo_v3SetCoilsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SetCoils typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetCoilsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SetCoilsRequestCodec, records.Ros1Rosdemo_v3SetCoilsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SetCollideDrag typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetCollideDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SetCollideDragRequestCodec, records.Ros1Rosdemo_v3SetCollideDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SetCollideDrag typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetCollideDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3SetCollideDragRequestCodec,
              records.Ros1Rosdemo_v3SetCollideDragResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCollisionLevel typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetCollisionLevelClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3SetCollisionLevelRequestCodec,
              records.Ros1Rosdemo_v3SetCollisionLevelResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetCollisionLevel typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetCollisionLevelServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3SetCollisionLevelRequestCodec,
              records.Ros1Rosdemo_v3SetCollisionLevelResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/SetHoldRegs typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetHoldRegsClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SetHoldRegsRequestCodec, records.Ros1Rosdemo_v3SetHoldRegsResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SetHoldRegs typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetHoldRegsServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SetHoldRegsRequestCodec, records.Ros1Rosdemo_v3SetHoldRegsResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SetObstacleAvoid typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetObstacleAvoidClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3SetObstacleAvoidRequestCodec,
              records.Ros1Rosdemo_v3SetObstacleAvoidResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetObstacleAvoid typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetObstacleAvoidServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3SetObstacleAvoidRequestCodec,
              records.Ros1Rosdemo_v3SetObstacleAvoidResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/SetPayload typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetPayloadClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SetPayloadRequestCodec, records.Ros1Rosdemo_v3SetPayloadResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SetPayload typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetPayloadServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SetPayloadRequestCodec, records.Ros1Rosdemo_v3SetPayloadResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SetSafeSkin typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetSafeSkinClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SetSafeSkinRequestCodec, records.Ros1Rosdemo_v3SetSafeSkinResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SetSafeSkin typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetSafeSkinServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SetSafeSkinRequestCodec, records.Ros1Rosdemo_v3SetSafeSkinResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SetTerminal485 typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetTerminal485Client extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SetTerminal485RequestCodec, records.Ros1Rosdemo_v3SetTerminal485ResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SetTerminal485 typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetTerminal485Server extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3SetTerminal485RequestCodec,
              records.Ros1Rosdemo_v3SetTerminal485ResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/SetTerminalKeys typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SetTerminalKeysClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session,
              1,
              alias,
              records.Ros1Rosdemo_v3SetTerminalKeysRequestCodec,
              records.Ros1Rosdemo_v3SetTerminalKeysResponseCodec,
              observerAlias,
              capacity);
    }
}

/** Complete rosdemo_v3/SetTerminalKeys typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SetTerminalKeysServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3SetTerminalKeysRequestCodec,
              records.Ros1Rosdemo_v3SetTerminalKeysResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/SpeedFactor typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SpeedFactorClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SpeedFactorRequestCodec, records.Ros1Rosdemo_v3SpeedFactorResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SpeedFactor typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SpeedFactorServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SpeedFactorRequestCodec, records.Ros1Rosdemo_v3SpeedFactorResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SpeedJ typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SpeedJClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SpeedJRequestCodec, records.Ros1Rosdemo_v3SpeedJResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SpeedJ typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SpeedJServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SpeedJRequestCodec, records.Ros1Rosdemo_v3SpeedJResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SpeedL typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SpeedLClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SpeedLRequestCodec, records.Ros1Rosdemo_v3SpeedLResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SpeedL typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SpeedLServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SpeedLRequestCodec, records.Ros1Rosdemo_v3SpeedLResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/StartDrag typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3StartDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3StartDragRequestCodec, records.Ros1Rosdemo_v3StartDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/StartDrag typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3StartDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3StartDragRequestCodec, records.Ros1Rosdemo_v3StartDragResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/StartFCTrace typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3StartFCTraceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3StartFCTraceRequestCodec, records.Ros1Rosdemo_v3StartFCTraceResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/StartFCTrace typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3StartFCTraceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3StartFCTraceRequestCodec, records.Ros1Rosdemo_v3StartFCTraceResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/StartPath typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3StartPathClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3StartPathRequestCodec, records.Ros1Rosdemo_v3StartPathResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/StartPath typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3StartPathServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3StartPathRequestCodec, records.Ros1Rosdemo_v3StartPathResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/StartTrace typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3StartTraceClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3StartTraceRequestCodec, records.Ros1Rosdemo_v3StartTraceResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/StartTrace typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3StartTraceServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3StartTraceRequestCodec, records.Ros1Rosdemo_v3StartTraceResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/StopDrag typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3StopDragClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3StopDragRequestCodec, records.Ros1Rosdemo_v3StopDragResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/StopDrag typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3StopDragServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3StopDragRequestCodec, records.Ros1Rosdemo_v3StopDragResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/StopScript typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3StopScriptClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3StopScriptRequestCodec, records.Ros1Rosdemo_v3StopScriptResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/StopScript typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3StopScriptServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3StopScriptRequestCodec, records.Ros1Rosdemo_v3StopScriptResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/StopmoveJog typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3StopmoveJogClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3StopmoveJogRequestCodec, records.Ros1Rosdemo_v3StopmoveJogResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/StopmoveJog typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3StopmoveJogServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3StopmoveJogRequestCodec, records.Ros1Rosdemo_v3StopmoveJogResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/Sync typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SyncClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SyncRequestCodec, records.Ros1Rosdemo_v3SyncResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Sync typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SyncServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SyncRequestCodec, records.Ros1Rosdemo_v3SyncResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/SyncAll typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3SyncAllClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3SyncAllRequestCodec, records.Ros1Rosdemo_v3SyncAllResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/SyncAll typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3SyncAllServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3SyncAllRequestCodec, records.Ros1Rosdemo_v3SyncAllResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeed typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3TCPSpeedClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3TCPSpeedRequestCodec, records.Ros1Rosdemo_v3TCPSpeedResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeed typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3TCPSpeedServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3TCPSpeedRequestCodec, records.Ros1Rosdemo_v3TCPSpeedResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeedEnd typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3TCPSpeedEndClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3TCPSpeedEndRequestCodec, records.Ros1Rosdemo_v3TCPSpeedEndResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/TCPSpeedEnd typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3TCPSpeedEndServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3TCPSpeedEndRequestCodec, records.Ros1Rosdemo_v3TCPSpeedEndResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/Tool typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ToolClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ToolRequestCodec, records.Ros1Rosdemo_v3ToolResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Tool typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ToolServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ToolRequestCodec, records.Ros1Rosdemo_v3ToolResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ToolAI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ToolAIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ToolAIRequestCodec, records.Ros1Rosdemo_v3ToolAIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ToolAI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ToolAIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ToolAIRequestCodec, records.Ros1Rosdemo_v3ToolAIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ToolDI typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ToolDIClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ToolDIRequestCodec, records.Ros1Rosdemo_v3ToolDIResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ToolDI typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ToolDIServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ToolDIRequestCodec, records.Ros1Rosdemo_v3ToolDIResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ToolDO typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ToolDOClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ToolDORequestCodec, records.Ros1Rosdemo_v3ToolDOResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ToolDO typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ToolDOServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3ToolDORequestCodec, records.Ros1Rosdemo_v3ToolDOResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/ToolDOExecute typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3ToolDOExecuteClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3ToolDOExecuteRequestCodec, records.Ros1Rosdemo_v3ToolDOExecuteResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/ToolDOExecute typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3ToolDOExecuteServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session,
              1,
              advertise,
              respond,
              records.Ros1Rosdemo_v3ToolDOExecuteRequestCodec,
              records.Ros1Rosdemo_v3ToolDOExecuteResponseCodec,
              false,
              capacity);
    }
}

/** Complete rosdemo_v3/User typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3UserClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3UserRequestCodec, records.Ros1Rosdemo_v3UserResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/User typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3UserServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3UserRequestCodec, records.Ros1Rosdemo_v3UserResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/Wait typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3WaitClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3WaitRequestCodec, records.Ros1Rosdemo_v3WaitResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/Wait typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3WaitServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3WaitRequestCodec, records.Ros1Rosdemo_v3WaitResponseCodec, false, capacity);
    }
}

/** Complete rosdemo_v3/pause typed client; optional observer is independently granted. */
export class Ros1Rosdemo_v3PauseClient extends TypedServiceClient
{
    constructor(session, alias, observerAlias = null, capacity = 8)
    {
        super(session, 1, alias, records.Ros1Rosdemo_v3PauseRequestCodec, records.Ros1Rosdemo_v3PauseResponseCodec, observerAlias, capacity);
    }
}

/** Complete rosdemo_v3/pause typed server; callback replacement is caller-managed. */
export class Ros1Rosdemo_v3PauseServer extends TypedServer
{
    constructor(session, advertise, respond, capacity = 8)
    {
        super(session, 1, advertise, respond, records.Ros1Rosdemo_v3PauseRequestCodec, records.Ros1Rosdemo_v3PauseResponseCodec, false, capacity);
    }
}
