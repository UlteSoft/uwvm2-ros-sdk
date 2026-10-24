package org.uwvm.roswasm.nvidia.isaacsim;

import org.uwvm.roswasm.OwnedApplicationFailure;
import org.uwvm.roswasm.OwnedService;
import org.uwvm.roswasm.Ros2OwnedServiceTransport;
import org.uwvm.roswasm.Session;
import org.uwvm.roswasm.nvidia.isaacsim.generated.BoundedRecords.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request;
import org.uwvm.roswasm.nvidia.isaacsim.generated.BoundedRecords.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response;
import org.uwvm.roswasm.nvidia.isaacsim.generated.ClockDefinitions;

/**
 * @brief Complete original clock operations through the genuine shared Java raw12 SDK.
 * @details One admitted TeaVM/WASI Guest thread and one pending request. This
 * class selects the real Ros2OwnedServiceTransport; it has no JVM/JNI substitute,
 * fake transport, implicit clock, simulator, thread or legacy service fallback.
 * Generated whole records/root facts are mandatory. Native identity and runtime
 * permissions remain independently verified Host policy.
 * @see connect
 * @see poll
 * @see closeChecked
 */
public final class ClockSession implements AutoCloseable
{
    /**
     * @brief Complete local result of one caller-driven poll.
     * @details The original transport outcome is never rewritten. Its metadata
     * can describe a refused/uncertain ACK; only accepted means successful full
     * business validation. Diagnostic references share the returned SDK values.
     * @see poll
     */
    public static final class Poll
    {
        /** @brief Original unsigned status bits or platform validation failure. @see poll */
        public int status;
        /** @brief True only for complete, ACKed, correlated successful business data. @see poll */
        public boolean accepted;
        /** @brief Full original transport outcome; null before an actual take. @see OwnedService.Delivery */
        public OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> transport;
    }

    private static final class StatusFailure extends RuntimeException
    {
        private static final long serialVersionUID = 1L;
        int code;

        StatusFailure()
        {
            super("Clock session terminal status; inspect primaryStatus() unsigned bits");
        }
    }

    private final long nonce;
    private final Session session;
    private final OwnedService.Group group;
    private final OwnedApplicationFailure cleanup;
    private final StatusFailure statusFailure = new StatusFailure();
    private OwnedService.Client<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request, Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> client;
    private long ticket;
    private int sequence, steps, state, seen, operation, phase, frame, primary;
    private int abandonStatus, cleanupStatus;
    private boolean attempted, closed;
    private Throwable lastFailure;
    private OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> lastTransport;

    /**
     * @brief Preallocate a finite genuine SDK owner before any capability open.
     * @details Long holds all uint64 bits; negative Java values can be valid
     * nonces. Use unsigned input/display. Actual TeaVM import/runtime closure is
     * required when constructed in a Guest; never run this as a JVM ROS provider.
     * @param nonce Nonzero full uint64 bit pattern, externally paired native session.
     * @return New local owner; actual initialization/allocation exceptions propagate.
     * @see connect
     */
    public ClockSession(long nonce)
    {
        if(nonce == 0)
            throw new IllegalArgumentException("Nonzero uint64 nonce required");
        this.nonce = nonce;
        session = new Session(new Ros2OwnedServiceTransport(), 3);
        group = new OwnedService.Group(session,
                                       new OwnedService.Options(1,
                                                                64,
                                                                Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request.MAX_WIRE_BYTES,
                                                                Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response.MAX_WIRE_BYTES,
                                                                1000000000L,
                                                                1024 * 1024));
        cleanup = new OwnedApplicationFailure(session, group);
    }

    private int fail(int code, Throwable failure)
    {
        if(failure != null)
            lastFailure = failure;
        if(primary == 0)
        {
            primary = code;
            statusFailure.code = code;
            cleanup.recordPrimary(failure == null ? statusFailure : failure);
        }
        state = 3;
        return code;
    }

    /**
     * @brief Open exact owners, validate actual full QoS and query native readiness once.
     * @details The genuine shared group validates/retains the actual receipt,
     * full association and both expected profiles. Partial failures remain owned
     * for independent cleanup. No graph/probe client or grant is created.
     * @param call Existing independently granted call alias.
     * @param observer Distinct corresponding observer alias.
     * @param availability Distinct separately granted availability alias, mandatory.
     * @param requestQos Complete independently selected expected request QoS.
     * @param responseQos Complete independently selected expected response QoS.
     * @param waitNanoseconds Explicit actual availability wait0..1000000000ns.
     * @return Original unsigned status bits,11 unavailable,22 input,17 repeat or125 retired.
     * @see diagnostic
     * @see closeChecked
     */
    public int connect(String call, String observer, String availability, OwnedService.Qos requestQos, OwnedService.Qos responseQos, long waitNanoseconds)
    {
        if(closed || state == 3)
            return 125;
        if(attempted)
            return 17;
        if(availability == null || availability.length() == 0 || requestQos == null || responseQos == null || waitNanoseconds < 0 ||
           waitNanoseconds > 1000000000L)
            return 22;
        attempted = true;
        try
        {
            OwnedService
                .Opening<OwnedService.Client<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request, Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>> opened =
                group.client(ClockDefinitions.create(), call, observer, availability, requestQos, responseQos);
            if(opened.code != 0)
                return fail(opened.code, opened.failure);
            client = opened.value;
            OwnedService.Availability available = client.available(waitNanoseconds);
            if(available.code != 0)
                return fail(available.code, available.failure);
            return available.available ? 0 : fail(11, null);
        }
        catch(Throwable failure)
        {
            return fail(5, failure);
        }
    }

    private static OwnedService.Submission refused(int code)
    {
        OwnedService.Submission result = new OwnedService.Submission();
        result.code = code;
        return result;
    }

    private OwnedService.Submission submit(int op, int nextPhase, int nextFrame, boolean impulse, boolean extra, int pacing)
    {
        if(closed || state >= 2)
            return refused(125);
        if(ticket != 0)
            return refused(17);
        if(client == null)
            return refused(9);
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request request = new Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request();
        request.operation = op;
        request.session_nonce = nonce;
        request.request_sequence = sequence;
        request.phase = nextPhase;
        request.frame = nextFrame;
        request.impulse = impulse;
        request.extra_update = extra;
        request.pacing_milliseconds = pacing;
        OwnedService.Submission thrown = new OwnedService.Submission();
        try
        {
            OwnedService.Submission sent = client.submit(request);
            if(sent.code != 0)
                fail(sent.code, sent.failure);
            else
            {
                ticket = sent.ticket;
                operation = op;
                phase = nextPhase;
                frame = nextFrame;
            }
            return sent;
        }
        catch(Throwable failure)
        {
            thrown.code = fail(5, failure);
            thrown.failure = failure;
            return thrown;
        }
    }

    /**
     * @brief Submit original graph setup,1s discovery delay and playback start once.
     * @details Native performs real setup; no local sleep, simulation or clock.
     * @return Actual admission status/ticket or22 progression refusal, never completion.
     * @see poll
     */
    public OwnedService.Submission start()
    {
        return state == 0 && sequence == 0 ? submit(1, 0, 0, false, false, 1000) : refused(22);
    }

    /**
     * @brief Submit exactly the application's next original phase/frame.
     * @details Frame0/10 impulse; onlyphase0 impulse has the extra update. Native
     * performs one normal update, one actual Clock poll and100ms pacing.
     * @param phase Next exact phase0 or1.
     * @param frame Next phase-local frame0..19.
     * @return Actual admission status/ticket or22 progression refusal.
     * @see poll
     * @see finish
     */
    public OwnedService.Submission step(int phase, int frame)
    {
        if(state != 1 || steps >= 40 || phase != steps / 20 || frame != steps % 20)
            return refused(22);
        boolean impulse = frame % 10 == 0;
        return submit(2, phase, frame, impulse, phase == 0 && impulse, 100);
    }

    /**
     * @brief Submit acknowledged native retirement after all forty actual steps.
     * @details Missing either real callback kind in either phase returns110 and
     * leaves the certain session available for an explicit native CANCEL.
     * @return Actual admission status/ticket,22 wrong progression or110 missing observations.
     * @see cancelNative
     * @see poll
     */
    public OwnedService.Submission finish()
    {
        if(state != 1 || steps != 40)
            return refused(22);
        return seen == 15 ? submit(3, 0, 0, false, false, 0) : refused(110);
    }

    /**
     * @brief Submit actual native simulation retirement, distinct from local abandon.
     * @details Only a complete valid reply acknowledges cancellation. No replay,
     * physical stop guarantee or permission change is performed.
     * @return Actual ticket/status,17 pending or125 retired/uncertain.
     * @see poll
     * @see abandonPending
     */
    public OwnedService.Submission cancelNative()
    {
        return submit(4, 0, 0, false, false, 0);
    }

    /**
     * @brief Poll once and validate every returned business field after real decode/ACK.
     * @details Preserve the original transport result even on failure. Its
     * diagnostic metadata may precede a refused ACK; inspect the shared commit
     * outcome rather than assuming consumption from sequence presence. Successful
     * data requires hasValue/code0 plus exact ticket/nonce/sequence/counters and
     * every Clock field. Absence is never a Clock(0) sample. No work is replayed.
     * @return Full outcome with platform status and accepted flag;11 means idle.
     * @see lastTransport
     * @see diagnostic
     */
    public Poll poll()
    {
        Poll result = new Poll();
        if(closed || state >= 2)
        {
            result.status = 125;
            return result;
        }
        if(ticket == 0 || client == null)
        {
            result.status = 22;
            return result;
        }
        try
        {
            OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> taken = client.takeResponse();
            result.transport = taken;
            if(taken.sequence != 0)
                lastTransport = taken;
            if(taken.code == 11)
            {
                result.status = 11;
                return result;
            }
            if(taken.code != 0)
            {
                result.status = fail(taken.code, taken.failure);
                return result;
            }
            if(!taken.hasValue || taken.abandoned || taken.value == null)
            {
                result.status = fail(taken.nativeError != 0 ? taken.nativeError : 125, taken.failure);
                return result;
            }
            long actualTicket = ticket;
            ticket = 0;
            Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response value = taken.value;
            if(taken.ticket != actualTicket || value.session_nonce != nonce || value.request_sequence != sequence)
            {
                result.status = fail(22, null);
                return result;
            }
            if(value.status != 0)
            {
                result.status = fail((int)value.status, null);
                return result;
            }
            if(value.cleanup_status != 0)
            {
                result.status = fail((int)value.cleanup_status, null);
                return result;
            }
            int completed = steps + (operation == 2 ? 1 : 0);
            long expectedUpdates = operation == 4 && state == 0 ? 1L : 4L + completed + (completed > 0 ? 1 : 0) + (completed > 10 ? 1 : 0);
            if(value.state != (operation >= 3 ? 2 : 1) || value.completed_steps != completed || value.actual_app_updates != expectedUpdates)
            {
                result.status = fail(22, null);
                return result;
            }
            if(value.has_event)
            {
                if(operation != 2 || value.event.kind < 1 || value.event.kind > 2 || value.event.phase != phase || value.event.frame != frame ||
                   value.event.nanosec >= 1000000000L)
                {
                    result.status = fail(22, null);
                    return result;
                }
                seen |= 1 << (phase * 2 + value.event.kind - 1);
            }
            else if(value.event.kind != 0 || value.event.phase != 0 || value.event.frame != 0 || value.event.sec != 0 || value.event.nanosec != 0)
            {
                result.status = fail(22, null);
                return result;
            }
            steps = completed;
            state = value.state;
            sequence++;
            result.accepted = true;
            return result;
        }
        catch(Throwable failure)
        {
            result.status = fail(5, failure);
            return result;
        }
    }

    /**
     * @brief Locally abandon the pending real ticket and mark native effect uncertainty.
     * @details Work exhaustion90 is not a physical timeout or native CANCEL.
     * Original abandon status/Throwable remains independent and no retry is added.
     * @return Original status,22 no pending request or5 unclassified thrown failure.
     * @see closeChecked
     * @see cancelNative
     */
    public int abandonPending()
    {
        if(ticket == 0 || client == null)
            return 22;
        long abandoned = ticket;
        ticket = 0;
        fail(90, null);
        try
        {
            abandonStatus = client.abandon(abandoned);
        }
        catch(Throwable failure)
        {
            abandonStatus = fail(5, failure);
        }
        return abandonStatus;
    }

    /**
     * @brief Independently finish real group/native/raw owners and Session shutdown once.
     * @details Uses the genuine preallocated shared cleanup envelope. Pending
     * abandonment is attempted first. Original primary, each cleanup failure,
     * shutdown and owner-retention facts remain separately readable. Fatal traps
     * can prevent cleanup and still require the external finite owner/Host drain.
     * @return First terminal status, otherwise original cleanup status or5 if only
     * a retained Throwable/owner-retention failure exists. Repeated calls are inert.
     * @see cleanupEvidence
     */
    public int closeChecked()
    {
        if(!closed)
        {
            closed = true;
            if(ticket != 0)
            {
                int code = abandonPending();
                if(code != 0)
                    cleanupStatus = code;
            }
            cleanup.finish();
            if(cleanupStatus == 0)
                cleanupStatus = cleanup.cleanupCode();
            if(cleanupStatus == 0 && cleanup.cleanupFailed())
                cleanupStatus = 5;
        }
        return primary != 0 ? primary : cleanupStatus;
    }

    /**
     * @brief AutoCloseable retirement without hiding the checked status channel.
     * @details Call closeChecked and inspect cleanupEvidence when reporting errors;
     * this convenience performs the same once-only retirement and never retries.
     * @see closeChecked
     */
    @Override public void close()
    {
        closeChecked();
    }

    /** @brief Read first terminal unsigned status bits;0 does not prove completion. @see poll */
    public int primaryStatus()
    {
        return primary;
    }

    /** @brief Read independent cleanup status;0 before close proves no attempt. @see closeChecked */
    public int cleanupStatus()
    {
        return cleanupStatus;
    }

    /** @brief Read original actual abandon result; meaningful after an attempt. @see abandonPending */
    public int abandonStatus()
    {
        return abandonStatus;
    }

    /** @brief Borrow the exact latest native/shared thrown failure, or null. @see cleanupEvidence */
    public Throwable lastFailure()
    {
        return lastFailure;
    }

    /**
     * @brief Borrow the last full returned body/control transport outcome.
     * @details Shared mutable diagnostic reference, possibly failed ACK/business
     * validation. It never implies accepted completion. Idle leaves the prior
     * record; null means none. Caller mutation cannot alter private state/history.
     * Serialize use on the admitted Guest thread; no atomic snapshot is promised.
     * @return Original full outcome including every response/control/metadata field.
     * @see poll
     * @see diagnostic
     */
    public OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> lastTransport()
    {
        return lastTransport;
    }

    /**
     * @brief Copy all actual activation/receipt/ACK/retirement diagnostics.
     * @details Null before a group row was attempted; independent snapshot remains
     * available after close. Actual receipt bytes are data, never authority.
     * @return Complete shared snapshot or null; ordinary allocation can fail.
     * @see closeChecked
     */
    public OwnedService.Diagnostic diagnostic()
    {
        return group.rows() == 0 ? null : group.diagnostic(0);
    }

    /**
     * @brief Borrow the genuine shared preallocated cleanup/failure envelope.
     * @details Inspect exact primary Throwable, all shutdown/snapshot/reporting
     * failures and per-owner attempted/retained/remaining-handle evidence after
     * close. No numeric copy transfers ownership or establishes native delivery.
     * @return Actual shared owner evidence, retained for this session lifetime.
     * @see closeChecked
     */
    public OwnedApplicationFailure cleanupEvidence()
    {
        return cleanup;
    }
}
