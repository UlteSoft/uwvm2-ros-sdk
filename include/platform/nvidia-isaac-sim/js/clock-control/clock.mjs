/**
 * @file clock.mjs
 * @brief Complete original clock operations through the genuine shared JS raw12 SDK.
 * @details Import only in the real embedded QuickJS Wasm command. Both builtins
 * belong to that same Wasm principal; no injected binding, Node/desktop provider,
 * network loader, synthetic clock or legacy service fallback is accepted here.
 * @see ClockSession; CLOCK-SDK.md
 */
import * as native from "roswasm:rmw_service_native";

import {createGuestSession} from "../../../ros2/js/guest.mjs";
import {OwnedServiceBridge} from "../../../ros2/js/owned_service/bridge.mjs";
import {
    OwnedClient,
    serviceDefinition,
} from "../../../ros2/js/owned_service/owned.mjs";

import * as records from "./generated/bounded_records.mjs";
import {ClockIdentity} from "./generated/service_identity.mjs";

const requestCodec = records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec;
const responseCodec = records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec;
const definition = serviceDefinition(
    ClockIdentity,
    requestCodec,
    responseCodec,
);
const U64_MAX = 0xffffffffffffffffn;
const failure = (code) => ({status : code, ticket : null});
const expectedUpdates = (n) => 4n + BigInt(n) + (n > 0 ? 1n : 0n) + (n > 10 ? 1n : 0n);

function codeOf(error)
{
    try
    {
        const code = error?.code;
        return Number.isInteger(code) && code > 0 && code <= 0xffffffff ? code : 5;
    }
    catch
    {
        return 5;
    }
}

function alias(value)
{
    return (typeof value === "string" && value.length > 0 && !value.includes("\0") &&
            !/[\uD800-\uDBFF](?![\uDC00-\uDFFF])|(?<![\uD800-\uDBFF])[\uDC00-\uDFFF]/u.test(
                value,
                ) &&
            new TextEncoder().encode(value).length <= 255);
}

function closeRow()
{
    return {
        attempted : false,
        finished : false,
        retained : false,
        status : null,
        threw : false,
        error : undefined,
        handle : null,
    };
}

/**
 * @brief Single-thread owner of one finite genuine native clock session.
 * @details One pending request, at most64 lifetime transactions. Unknown effects
 * poison business work. Local abandon does not acknowledge native cancellation.
 * Failed setup and endpoint close preserve every independent owner outcome.
 * @see connect; poll; cancelNative; close; diagnostics
 */
export class ClockSession
{
    #nonce;
    #session = null;
    #endpoint = null;
    #owners = [ null, null, null ];
    #cleanupRows = [ closeRow(), closeRow(), closeRow() ];
    #sequence = 0;
    #steps = 0;
    #state = 0;
    #seen = 0;
    #pending = null;
    #attempted = false;
    #closing = false;
    #closed = false;
    #closeCalls = 0;
    #primary = 0;
    #cleanup = 0;
    #exception = {threw : false, value: undefined};
    #lastResponse = null;
    #lastControl = null;
    #abandonStatus = null;

    /**
     * @brief Allocate local finite bookkeeping without opening any owner.
     * @param[in] nonce Positive full uint64 BigInt, independently paired with the
     * native owner. It is correlation data, not authentication or permission.
     * @return New owner; invalid input throws TypeError before any native import.
     * @see connect
     */
    constructor(nonce)
    {
        if(typeof nonce !== "bigint" || nonce <= 0n || nonce > U64_MAX)
            throw new TypeError("Positive uint64 clock nonce required");
        this.#nonce = nonce;
    }

    #fail(code, error, threw = false)
    {
        if(!this.#primary)
            this.#primary = code;
        if(threw && !this.#exception.threw)
            this.#exception = {threw : true, value : error};
        this.#state = 3;
        return code;
    }

    /**
     * @brief Open exact granted owners, activate once and query actual readiness.
     * @details The genuine shared transport checks the full actual receipt against
     * both supplied80-byte QoS profiles before business submission. It does not
     * expose its private receipt buffers; this API never substitutes expected bytes
     * for an actual receipt. Partial setup remains reachable for explicit close.
     * @param[in] call Exact call alias, strict UTF8 length1..255 without NUL.
     * @param[in] observer Distinct corresponding observer alias.
     * @param[in] availability Distinct separately granted availability alias.
     * @param[in] expectedQos Array of two independently selected Uint8Array80 profiles.
     * @param[in] waitNs Explicit actual availability wait0..1000000000ns as BigInt.
     * @return Original status,11 unavailable,22 malformed,17 repeat or125 retired.
     * Exceptions, including falsy thrown values, retain separate diagnostic facts.
     * @see diagnostics; close
     */
    connect(call, observer, availability, expectedQos, waitNs = 0n)
    {
        if(this.#closed || this.#state === 3)
            return 125;
        if(this.#attempted)
            return 17;
        if(![call, observer, availability].every(alias) || new Set([ call, observer, availability ]).size !== 3 || !Array.isArray(expectedQos) ||
           expectedQos.length !== 2 || !expectedQos.every((q) => q instanceof Uint8Array && q.length === 80) || typeof waitNs !== "bigint" || waitNs < 0n ||
           waitNs > 1000000000n)
            return 22;
        // Capture caller data before the first actual open; shared code validates
        // every QoS field and retains its own private copy before activation.
        const qos = expectedQos.map((q) => new Uint8Array(q));
        this.#attempted = true;
        try
        {
            this.#session = createGuestSession();
            if(this.#session.version !== 2)
                return this.#fail(95);
            this.#owners[0] = this.#session.open(call);
            this.#owners[1] = this.#session.open(observer);
            this.#owners[2] = this.#session.open(availability);
            this.#endpoint = new OwnedClient(
                new OwnedServiceBridge(native),
                this.#owners[0],
                this.#owners[1],
                definition,
                {
                    ownership : "owned",
                    availability : this.#owners[2],
                    historyEntries : 64,
                    expectedQos : qos,
                },
            );
            const status = this.#endpoint.activate();
            if(status)
                return this.#fail(status);
            const ready = this.#endpoint.available(waitNs);
            return ready.status ? this.#fail(ready.status) : ready.available ? 0 : this.#fail(11);
        }
        catch(error)
        {
            return this.#fail(codeOf(error), error, true);
        }
    }

    #submit(operation, phase, frame, impulse, extra, pacing)
    {
        if(this.#closed || this.#state >= 2)
            return failure(125);
        if(this.#pending !== null)
            return failure(17);
        if(this.#endpoint === null)
            return failure(9);
        const request = requestCodec.defaultValue();
        Object.assign(request, {
            operation,
            session_nonce : this.#nonce,
            request_sequence : this.#sequence,
            phase,
            frame,
            impulse,
            extra_update : extra,
            pacing_milliseconds : pacing,
        });
        try
        {
            const result = this.#endpoint.submit(request);
            if(result.status)
                this.#fail(result.status);
            else
                this.#pending = {ticket : result.ticket, operation, phase, frame};
            return result;
        }
        catch(error)
        {
            return failure(this.#fail(codeOf(error), error, true));
        }
    }

    /**
     * @brief Submit original graph setup,1s discovery delay and playback start once.
     * @details Sequence0 only. No local simulation, sleep or clock is used.
     * @return Actual admission status/ticket; poll must acknowledge completion.
     * @see poll
     */
    start()
    {
        if(this.#state !== 0 || this.#sequence !== 0)
            return failure(22);
        return this.#submit(1, 0, 0, false, false, 1000);
    }

    /**
     * @brief Submit the application's next exact original phase/frame.
     * @details Impulse on frames0/10; onlyphase0 impulse adds the extra update.
     * Native performs its normal update, one real Clock poll and100ms pacing.
     * @param[in] phase Next exact phase0 or1 as Number.
     * @param[in] frame Next phase-local frame0..19 as Number.
     * @return Actual admission status/ticket or22 progression refusal; no hidden loop.
     * @see poll; finish
     */
    step(phase, frame)
    {
        if(this.#state !== 1 || this.#steps >= 40 || phase !== Math.floor(this.#steps / 20) || frame !== this.#steps % 20)
            return failure(22);
        const impulse = frame % 10 === 0;
        return this.#submit(2, phase, frame, impulse, phase === 0 && impulse, 100);
    }

    /**
     * @brief Submit acknowledged retirement after forty successful actual steps.
     * @details Both actual callback kinds must have appeared in each phase. Missing
     * observations return110 and leave explicit native CANCEL available.
     * @return Actual ticket/status or22/110 local refusal.
     * @see cancelNative; poll
     */
    finish()
    {
        if(this.#state !== 1 || this.#steps !== 40)
            return failure(22);
        if(this.#seen !== 15)
            return failure(110);
        return this.#submit(3, 0, 0, false, false, 0);
    }

    /**
     * @brief Request explicit native simulation retirement with no pending work.
     * @details Only a valid actual reply acknowledges native cancellation. Local
     * abandon/endpoint close cannot undo unknown effects or prove physical stop.
     * @return Actual admission ticket/status,17 pending,125 uncertain/retired.
     * @see poll; abandonPending; close
     */
    cancelNative()
    {
        return this.#submit(4, 0, 0, false, false, 0);
    }

    /**
     * @brief Poll one actual complete private-decoded and commit-ACKed response.
     * @details Preserves all returned data/control metadata. Every business field
     * is checked before advancing state or returning a successful completion.
     * Status11 is idle. A no-event zero record never becomes a Clock sample.
     * @return Object with status and nullable complete actual delivery. Rejected
     * bodies remain in diagnostics but are never returned as success values.
     * @see diagnostics; abandonPending
     */
    poll()
    {
        const result = {status : 0, delivery : null};
        if(this.#closed || this.#state >= 2)
            return {...result, status : 125};
        if(this.#pending === null || this.#endpoint === null)
            return {...result, status : 22};
        try
        {
            const taken = this.#endpoint.take();
            if(taken.status === 11)
                return {...result, status : 11};
            if(taken.status)
                return {...result, status : this.#fail(taken.status)};
            const delivery = taken.delivery;
            if(delivery === null || taken.discarded)
                return {...result, status : this.#fail(22)};
            if(delivery.control)
            {
                this.#lastControl = delivery;
                return {...result, status : this.#fail(delivery.error || 125)};
            }
            this.#lastResponse = delivery;
            const pending = this.#pending;
            this.#pending = null;
            const value = delivery.value, event = value.event;
            if(delivery.ticket !== pending.ticket || value.session_nonce !== this.#nonce || value.request_sequence !== this.#sequence)
                return {...result, status : this.#fail(22)};
            if(value.status)
                return {...result, status : this.#fail(value.status)};
            if(value.cleanup_status)
                return {...result, status : this.#fail(value.cleanup_status)};
            const completed = this.#steps + (pending.operation === 2 ? 1 : 0);
            const updates = pending.operation === 4 && this.#state === 0 ? 1n : expectedUpdates(completed);
            if(value.state !== (pending.operation >= 3 ? 2 : 1) || value.completed_steps !== completed || value.actual_app_updates !== updates)
                return {...result, status : this.#fail(22)};
            if(value.has_event)
            {
                if(pending.operation !== 2 || (event.kind !== 1 && event.kind !== 2) || event.phase !== pending.phase || event.frame !== pending.frame ||
                   event.nanosec >= 1000000000)
                    return {...result, status : this.#fail(22)};
                this.#seen |= 1 << (pending.phase * 2 + event.kind - 1);
            }
            else if(event.kind !== 0 || event.phase !== 0 || event.frame !== 0 || event.sec !== 0 || event.nanosec !== 0)
            {
                return {...result, status : this.#fail(22)};
            }
            this.#steps = completed;
            this.#state = value.state;
            ++this.#sequence;
            return {status : 0, delivery};
        }
        catch(error)
        {
            return {...result, status : this.#fail(codeOf(error), error, true)};
        }
    }

    /**
     * @brief Locally abandon the pending real ticket and mark native uncertainty.
     * @details No CANCEL/replay/rollback or physical-time claim. Actual abandon
     * status/throw is retained independently of work-budget status90.
     * @return Original abandon status,22 no ticket or9 no endpoint.
     * @see cancelNative; diagnostics; close
     */
    abandonPending()
    {
        if(this.#pending === null)
            return 22;
        const ticket = this.#pending.ticket;
        this.#pending = null;
        this.#fail(90);
        try
        {
            this.#abandonStatus = this.#endpoint.abandon(ticket);
            return this.#abandonStatus;
        }
        catch(error)
        {
            this.#abandonStatus = codeOf(error);
            this.#fail(this.#abandonStatus, error, true);
            return this.#abandonStatus;
        }
    }

    /**
     * @brief Close actual Native/raw owners independently, retaining first errors.
     * @details Native retirement/attempted Host closes are never replayed by the
     * shared SDK. A later explicit close may retry only a genuinely retained local
     * preflight refusal. At most64 explicit calls; reentry17. Traps/OOM still need
     * outer Host drain. No simulation cancellation acknowledgement is inferred.
     * @return First terminal business error, otherwise first cleanup error or0.
     * @see diagnostics; cancelNative
     */
    close()
    {
        if(this.#closing)
            return 17;
        if(this.#closeCalls >= 64)
            return this.#primary || this.#cleanup || 90;
        ++this.#closeCalls;
        this.#closing = true;
        try
        {
            this.#closed = true;
            if(this.#pending !== null)
            {
                const code = this.abandonPending();
                if(code && !this.#cleanup)
                    this.#cleanup = code;
            }
            if(this.#endpoint !== null)
            {
                try
                {
                    const code = this.#endpoint.close();
                    if(code && !this.#cleanup)
                        this.#cleanup = code;
                }
                catch(error)
                {
                    if(!this.#cleanup)
                        this.#cleanup = codeOf(error);
                    this.#fail(codeOf(error), error, true);
                }
            }
            else
            {
                for(let i = 2; i >= 0; --i)
                {
                    const owner = this.#owners[i], row = this.#cleanupRows[i];
                    if(owner === null || row.finished)
                        continue;
                    row.handle = owner.handle;
                    if(owner.closed)
                    {
                        row.finished = true;
                        row.retained = false;
                        continue;
                    }
                    try
                    {
                        row.status = owner.close();
                        if(row.status && !this.#cleanup)
                            this.#cleanup = row.status;
                    }
                    catch(error)
                    {
                        row.threw = true;
                        row.error = error;
                        if(!this.#cleanup)
                            this.#cleanup = codeOf(error);
                    }
                    finally
                    {
                        row.attempted = owner.closed;
                        row.finished = owner.closed;
                        row.retained = !owner.closed;
                    }
                    if(row.retained && !this.#cleanup)
                        this.#cleanup = row.status || 17;
                }
            }
        }
        finally
        {
            this.#closing = false;
        }
        return this.#primary || this.#cleanup;
    }

    /**
     * @brief Copy bookkeeping and retain complete actual response/control references.
     * @details Shared facts include every transport and raw-owner cleanup outcome.
     * Last delivery references own their full typed values/metadata after commit;
     * they may have failed business checks and are diagnostic, not success proof.
     * Their mutable payloads share the original returned values. Serial access only;
     * caller mutation cannot alter private counters/history/authority. Absent is null.
     * @return Complete diagnostic object, available after close. Snapshot allocation
     * can fail normally; falsy thrown values retain an independent threw flag.
     * @see poll; close
     */
    diagnostics()
    {
        return {
            primary : this.#primary,
            cleanup : this.#cleanup,
            state : this.#state,
            steps : this.#steps,
            sequence : this.#sequence,
            pending : this.#pending,
            closed : this.#closed,
            closeCalls : this.#closeCalls,
            abandonStatus : this.#abandonStatus,
            exception : {...this.#exception},
            partialOwners : this.#cleanupRows.map((row) => ({...row})),
            lastResponse : this.#lastResponse,
            lastControl : this.#lastControl,
            transport : this.#endpoint === null ? null : this.#endpoint.facts(),
        };
    }
}
