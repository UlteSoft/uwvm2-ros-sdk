/**
 * @brief Complete typed original clock operations using genuine shared raw12.
 * @details One admitted Guest thread, one pending request, no simulator/provider,
 * clocks, callbacks or automatic retries. The real generator supplies records
 * and exact service-root identity; native ROSIDL/policy proof remains separate.
 * @see ClockSession; CLOCK-SDK.md
 */
import {
    CheckedCodec,
    DecodeResult,
    EncodeResult,
} from "../../../ros2/as/ros2/rmw_service/checked";
import {NativeServiceImports} from "../../../ros2/as/ros2/rmw_service/imports";
import {
    Diagnostics,
    Limits,
    OwnedService,
    SubmitResult,
    TakeResult,
} from "../../../ros2/as/ros2/rmw_service/owned";
import {Delivery} from "../../../ros2/as/ros2/rmw_service/wire";
import {Capability, NativeApi} from "../../../ros2/as/ros2/roswasm";

import * as records from "./generated/bounded_records";
import {ClockIdentity} from "./generated/service_identity";

/**
 * @brief Full generated request; no arbitrary Kit/path/plugin/domain operation.
 * @details All scheduling fields are filled by ClockSession.
 * @see ClockSession.start; ClockSession.step
 */
export type Request = records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request;
/**
 * @brief Full generated reply; every scalar/event field is retained.
 * @details has_event=false is absence and requires an all-zero event.
 * @see ClockSession.poll
 */
export type Response = records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response;

class RequestCodec extends CheckedCodec<Request>
{
    private actual: records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec = new records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec();

    encodeChecked(value: Request): EncodeResult
    {
        const r = this.actual.encodeChecked(value);
        return new EncodeResult(r.status, r.bytes);
    }

    decodeChecked(bytes: Uint8Array): DecodeResult<Request>
    {
        const r = this.actual.decodeChecked(bytes);
        return new DecodeResult<Request>(r.status, r.value);
    }
}

class ResponseCodec extends CheckedCodec<Response>
{
    private actual: records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec = new records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec();

    encodeChecked(value: Response): EncodeResult
    {
        const r = this.actual.encodeChecked(value);
        return new EncodeResult(r.status, r.bytes);
    }

    decodeChecked(bytes: Uint8Array): DecodeResult<Response>
    {
        const r = this.actual.decodeChecked(bytes);
        return new DecodeResult<Response>(r.status, r.value);
    }
}

/**
 * @brief Once-close owner of one finite actual native ClockControl session.
 * @details Production fixes NativeApi/NativeServiceImports. Failed/uncertain work
 * is terminal. Shared private decode/association/ACK happens before typed values
 * escape. Local abandonment does not cancel native Kit work or prove any stop.
 * @see connect; close; diagnostics
 */
export class ClockSession
{
    private api: NativeApi = new NativeApi();
    private query: Capability = new Capability(this.api);
    private endpoint: OwnedService|null = null;
    private requests: RequestCodec = new RequestCodec();
    private responses: ResponseCodec = new ResponseCodec();
    private sequence: u32 = 0;
    private steps: u32 = 0;
    private state: u8 = 0;
    private seen: u8 = 0;
    private pending: u64 = 0;
    private operation: u8 = 0;
    private phase: u8 = 0;
    private frame: u32 = 0;
    private lastValue: Response|null = null;
    private lastInformation: Delivery|null = null;
    private lastControlValue: Delivery|null = null;
    private attempted: bool = false;
    private closed: bool = false;
    private primary: u32 = 0;
    private cleanup: u32 = 0;
    private queryCleanup: u32 = 0;
    private queryCloseAttempted: bool = false;

    /**
     * @brief Allocate only local finite session state; open no capability.
     * @details Positive nonce must match the separately admitted native owner.
     * @param[in] nonce Positive uint64 correlation, never authentication or grant.
     * @return New owner; allocation traps need external Host drain. nonce0 sets22.
     * @see connect; status
     */
    constructor(private nonce: u64)
    {
        if(!nonce)
            this.fail(22);
    }

    private fail(code: u32): u32
    {
        if(!this.primary)
            this.primary = code;
        this.state = 3;
        return code;
    }

    private reject(code: u32): SubmitResult
    {
        const r = new SubmitResult();
        r.status = code;
        return r;
    }

    private updates(steps: u32): u64
    {
        return 4 + <u64>steps + (steps > 0 ? 1 : 0) + (steps > 10 ? 1 : 0);
    }

    /**
     * @brief Read first terminal business error without issuing native work.
     * @details Zero does not imply connection, completion or native acceptance.
     * @return Original unsigned status.
     * @see close; cleanupStatus
     */
    get status(): u32
    {
        return this.primary;
    }

    /**
     * @brief Activate exact aliases, compare complete QoS bytes and query readiness.
     * @details One attempt. Shared code validates all256 actual receipt bytes;
     * this method compares its independently supplied160 QoS bytes at64..223.
     * It does not invent another receipt parser or use a probe/graph fallback.
     * @param[in] call Exact pregranted call alias, UTF8 length1..255 without NUL.
     * @param[in] observer Distinct paired pregranted observer alias.
     * @param[in] availability Distinct independently pregranted query alias.
     * @param[in] expectedQos Two complete80-byte UMRE QoS records concatenated.
     * @param[in] waitNs Actual query wait0..1000000000ns,0 observes once.
     * @return Original status,11 unavailable,22 mismatch/input,17 repeat,125 retired.
     * No business request is sent until every check passes.
     * @see originalReceipt; diagnostics; close
     */
    connect(
        call: string,
        observer: string,
        availability: string,
        expectedQos: Uint8Array,
        waitNs: u64,
        ): u32
    {
        if(this.closed || this.state == 3)
            return 125;
        if(this.attempted)
            return 17;
        if(expectedQos.length != 160 || waitNs > 1000000000 || !availability.length || availability == call || availability == observer || call == observer)
            return 22;
        if(ClockIdentity.nativeType != "uwvm_isaac_sim_bridge/srv/ClockControl" || ClockIdentity.canonicalIdentity.length != 73)
            return this.fail(22);
        this.attempted = true;
        const endpoint = OwnedService.openClient(
            this.api,
            new NativeServiceImports(),
            call,
            observer,
            new Limits(
                records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec.maxWireBytes,
                records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec.maxWireBytes,
                64,
                16,
                ),
        );
        this.endpoint = endpoint;
        if(endpoint.status)
            return this.fail(endpoint.status);
        const receipt = endpoint.originalReceipt();
        for(let i = 0; i < 160; ++i)
            if(receipt[64 + i] != expectedQos[i])
                return this.fail(22);
        const opened = this.query.open(availability);
        if(opened)
            return this.fail(opened);
        const ready = endpoint.available(this.query, waitNs);
        if(ready.status)
            return this.fail(ready.status);
        return ready.value ? 0 : this.fail(11);
    }

    /**
     * @brief Copy all actual activation receipt bytes without opening new owners.
     * @details Empty means no endpoint was attempted; never an all-zero receipt.
     * @return Owned256-byte actual snapshot or empty Uint8Array before connection.
     * @see connect; diagnostics
     */
    originalReceipt(): Uint8Array
    {
        const e = this.endpoint;
        return e === null ? new Uint8Array(0) : e.originalReceipt();
    }

    private submit(
        operation: u8,
        phase: u8,
        frame: u32,
        impulse: bool,
        extra: bool,
        pacing: u16,
        ): SubmitResult
    {
        if(this.closed || this.state >= 2)
            return this.reject(125);
        if(this.pending)
            return this.reject(17);
        const e = this.endpoint;
        if(e === null)
            return this.reject(9);
        const q = new records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request();
        q.operation = operation;
        q.session_nonce = this.nonce;
        q.request_sequence = this.sequence;
        q.phase = phase;
        q.frame = frame;
        q.impulse = impulse;
        q.extra_update = extra;
        q.pacing_milliseconds = pacing;
        const result = e.submit<Request>(q, this.requests);
        if(result.status)
            this.fail(result.status);
        else
        {
            this.pending = result.ticket;
            this.operation = operation;
            this.phase = phase;
            this.frame = frame;
        }
        return result;
    }

    /**
     * @brief Submit original graph creation,1s discovery and playback start once.
     * @details Sequence0 only; native acknowledgment carries four explicit updates.
     * @return Actual admission ticket/status; completion requires poll.
     * @see poll
     */
    start(): SubmitResult
    {
        if(this.state != 0 || this.sequence != 0)
            return this.reject(22);
        return this.submit(1, 0, 0, false, false, 1000);
    }

    /**
     * @brief Submit the application's next explicit original source frame.
     * @details Frame0/10 impulse; onlyphase0 impulse gets the extra update. Real
     * native does one normal update, one actual Clock poll and100ms pacing.
     * @param[in] phase Next exact phase0 or1.
     * @param[in] frame Next phase-local frame0..19.
     * @return Actual admission ticket/status or22 out-of-order. No hidden loop.
     * @see poll; finish
     */
    step(phase: u8, frame: u32): SubmitResult
    {
        if(this.state != 1 || this.steps >= 40 || phase != this.steps / 20 || frame != this.steps % 20)
            return this.reject(22);
        const impulse = frame % 10 == 0;
        return this.submit(2, phase, frame, impulse, phase == 0 && impulse, 100);
    }

    /**
     * @brief Submit explicit native retirement after all40 acknowledged steps.
     * @details Requires both genuine callback kinds in both phases. Missing
     * observations return110 and leave explicit native cancellation possible.
     * @return Actual ticket/status,22 wrong state,110 missing callback coverage.
     * @see cancelNative; poll
     */
    finish(): SubmitResult
    {
        if(this.state != 1 || this.steps != 40)
            return this.reject(22);
        if(this.seen != 15)
            return this.reject(110);
        return this.submit(3, 0, 0, false, false, 0);
    }

    /**
     * @brief Request actual simulation retirement, distinct from local abandon.
     * @details Only a valid real reply acknowledges cancellation; no physical stop
     * guarantee. Pending/uncertain sessions refuse instead of replaying work.
     * @return Actual ticket/status,17 pending,125 retired/uncertain.
     * @see poll; abandonPending; close
     */
    cancelNative(): SubmitResult
    {
        return this.submit(4, 0, 0, false, false, 0);
    }

    /**
     * @brief Poll one actual response after shared full decode and exact commit0.
     * @details Every business field and actual event is validated before exposure.
     * Errors retain actual metadata/commit status but clear typed value; status11
     * is idle. No synthetic Clock, app update, sleep or time grant occurs here.
     * @return Complete actual TakeResult<Response>; failure never contains value.
     * @see abandonPending; diagnostics
     */
    poll(): TakeResult<Response>
    {
        const empty = new TakeResult<Response>();
        if(this.closed || this.state >= 2)
        {
            empty.status = 125;
            return empty;
        }
        const e = this.endpoint;
        if(e === null || !this.pending)
        {
            empty.status = 22;
            return empty;
        }
        const result = e.take<Response>(this.responses);
        if(result.committed && (result.metadata.kind == 6 || result.metadata.kind == 7))
            this.lastControlValue = result.metadata;
        if(result.status == 11)
            return result;
        if(result.status)
        {
            this.fail(result.status);
            return result;
        }
        const value = result.value, ticket = this.pending;
        this.pending = 0;
        if(value !== null && result.committed)
        {
            this.lastValue = value;
            this.lastInformation = result.metadata;
        }
        let code: u32 = 0;
        if(value === null || !result.committed || result.abandoned || result.metadata.ticket != ticket)
            code = 22;
        else
        {
            if(value.session_nonce != this.nonce || value.request_sequence != this.sequence)
                code = 22;
            else if(value.status)
                code = value.status;
            else if(value.cleanup_status)
                code = value.cleanup_status;
            else
            {
                const completed = this.steps + (this.operation == 2 ? 1 : 0);
                const expectedUpdates: u64 = this.operation == 4 && this.state == 0 ? 1 : this.updates(completed);
                const event = value.event;
                if(value.state != (this.operation >= 3 ? 2 : 1) || value.completed_steps != completed || value.actual_app_updates != expectedUpdates)
                    code = 22;
                else if(value.has_event)
                {
                    if(this.operation != 2 || event.kind < 1 || event.kind > 2 || event.phase != this.phase || event.frame != this.frame ||
                       event.nanosec >= 1000000000)
                        code = 22;
                    else
                        this.seen |= <u8>(1 << (this.phase * 2 + event.kind - 1));
                }
                else if(event.kind || event.phase || event.frame || event.sec || event.nanosec)
                    code = 22;
                if(!code)
                {
                    this.steps = completed;
                    this.sequence++;
                    this.state = value.state;
                }
            }
        }
        if(code)
        {
            result.status = this.fail(code);
            result.value = null;
        }
        return result;
    }

    /**
     * @brief Locally abandon the actual pending ticket and mark native uncertainty.
     * @details This does not send CANCEL, roll back updates or permit resubmission.
     * Work-budget exhaustion90 is distinct from a native timeout110.
     * @return Original abandon status,22 no pending ticket,9 no endpoint.
     * @see cancelNative; close; diagnostics
     */
    abandonPending(): u32
    {
        const e = this.endpoint;
        if(e === null)
            return 9;
        if(!this.pending)
            return 22;
        const ticket = this.pending;
        this.pending = 0;
        this.fail(90);
        return e.abandon(ticket);
    }

    /**
     * @brief Once-attempt pending abandon, native/raw close and independent query close.
     * @details Attempts each cleanup despite other failure; traps can still prevent
     * ordinary cleanup. Repeated calls are inert and preserve the initial outcome.
     * @return First business error, otherwise independent cleanup status.
     * @see cleanupStatus; queryCloseStatus; diagnostics
     */
    close(): u32
    {
        if(!this.closed)
        {
            if(this.pending)
                this.cleanup = this.abandonPending();
            const e = this.endpoint;
            if(e !== null)
            {
                const code = e.close();
                if(!this.cleanup)
                    this.cleanup = code;
            }
            if(this.query.isOpen())
            {
                this.queryCloseAttempted = true;
                this.queryCleanup = this.query.close();
                if(!this.cleanup)
                    this.cleanup = this.queryCleanup;
            }
            this.closed = true;
        }
        return this.primary ? this.primary : this.cleanup;
    }

    /**
     * @brief Copy full shared activation/receipt/decode/ACK/retire/close diagnostics.
     * @details Null before endpoint attempt; available after close, no native calls.
     * @return Owned snapshot; allocation failure can trap normally.
     * @see close; originalReceipt
     */
    diagnostics(): Diagnostics|null
    {
        const e = this.endpoint;
        return e === null ? null : e.diagnostics();
    }

    /**
     * @brief Borrow the latest complete actual reply, including rejected/error fields.
     * @details Passed shared full decode/ACK, possibly failed business validation.
     * Diagnostic only. Idle/control/decode failure leaves the preceding body.
     * Returned mutable reference is module-owned until replaced; changes cannot
     * change private counters, ticket history or transport/permission state.
     * Serialize reads with session operations; no atomic snapshot is promised.
     * @return Full actual body or null before a committed body-bearing response.
     * @see lastMetadata; poll; diagnostics
     */
    lastResponse(): Response|null
    {
        return this.lastValue;
    }

    /**
     * @brief Borrow the actual same-take metadata paired with lastResponse.
     * @details Diagnostic mutable reference, same retention rules as lastResponse.
     * No packet pointer or ownership capability is exposed.
     * @return Complete shared Delivery or null before a body-bearing response.
     * @see lastResponse
     */
    lastMetadata(): Delivery|null
    {
        return this.lastInformation;
    }

    /**
     * @brief Borrow all fields of the latest actual commit-ACKed resource control.
     * @details Module-owned mutable diagnostic reference, retained after close.
     * It cannot change private state/history/authority. Controls carry no native
     * service time/writer; absent native metadata is never made a Clock sample.
     * Body/idle/decode refusal leaves the preceding control. Serialize access.
     * @return Complete actual Delivery or null before a committed control.
     * @see poll; diagnostics
     */
    lastControl(): Delivery|null
    {
        return this.lastControlValue;
    }

    /**
     * @brief Read independent cleanup status; zero before close proves no attempt.
     * @return Actual first cleanup status, separate from primary.
     * @see close
     */
    get cleanupStatus(): u32
    {
        return this.cleanup;
    }

    /**
     * @brief Read actual independent query-close status with its attempt flag.
     * @return Original status; meaningful only when didCloseQuery is true.
     * @see didCloseQuery; close
     */
    get queryCloseStatus(): u32
    {
        return this.queryCleanup;
    }

    /**
     * @brief Distinguish absent query close from real successful close0.
     * @return True only when this owner attempted query close.
     * @see queryCloseStatus
     */
    get didCloseQuery(): bool
    {
        return this.queryCloseAttempted;
    }
}
