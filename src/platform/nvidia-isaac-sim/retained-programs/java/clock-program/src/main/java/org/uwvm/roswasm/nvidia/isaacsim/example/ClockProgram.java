package org.uwvm.roswasm.nvidia.isaacsim.example;

import java.util.Arrays;
import org.uwvm.roswasm.OwnedApplicationFailure;
import org.uwvm.roswasm.OwnedService;
import org.uwvm.roswasm.nvidia.isaacsim.ClockSession;
import org.uwvm.roswasm.nvidia.isaacsim.generated.BoundedRecords.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response;

/**
 * @brief Complete original clock program using the genuine Java platform SDK.
 * @details TeaVM/WASI main owns both twenty-frame loops. No JVM ROS provider,
 * synthetic timestamp, hidden executor or replacement model is supplied.
 * @see main
 * @see ClockSession
 */
public final class ClockProgram
{
    private ClockProgram()
    {
    }

    private static void line(String text)
    {
        System.out.println(text);
        if(System.out.checkError())
            throw new IllegalStateException("Actual Guest stdout stream reported failure");
    }

    private static String u(long value)
    {
        return Long.toUnsignedString(value);
    }

    private static String u(int value)
    {
        return Integer.toUnsignedString(value);
    }

    private static byte[] hex(String text)
    {
        if(text.length() != 160 || !text.matches("[0-9a-f]{160}"))
            throw new IllegalArgumentException("Complete lower-hex QoS80 required");
        byte[] bytes = new byte[80];
        for(int i = 0; i < 80; i++)
            bytes[i] = (byte)Integer.parseInt(text.substring(i * 2, i * 2 + 2), 16);
        return bytes;
    }

    private static void show(OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response> d)
    {
        if(d == null)
            return;
        line("transport code=" + u(d.code) + " kind=" + d.kind + " flags=" + d.controlFlags + " nativeError=" + u(d.nativeError) + " hasValue=" + d.hasValue +
             " abandoned=" + d.abandoned + " ticket=" + u(d.ticket) + " sequence=" + u(d.sequence) + " reservation=" + u(d.reservation) +
             " failure=" + d.failure);
        if(d.kind != 6 && d.kind != 7 && d.sequence != 0)
        {
            line("actual same-take metadata sourceNs=" + d.sourceTimestamp + " receivedNs=" + d.receivedTimestamp + " nativeSequence=" + d.nativeSequence +
                 " writerBytes=" + Arrays.toString(d.writerGuid));
        }
        else
        {
            line("native service metadata absent on control/no-record; no Time or writer synthesized");
        }
        Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response r = d.value;
        if(r != null)
        {
            line("actual complete body (may be rejected) status=" + r.status + " nonce=" + u(r.session_nonce) + " sequence=" + r.request_sequence +
                 " state=" + r.state + " updates=" + u(r.actual_app_updates) + " steps=" + r.completed_steps + " hasEvent=" + r.has_event +
                 " kind=" + r.event.kind + " phase=" + r.event.phase + " frame=" + r.event.frame + " sec=" + r.event.sec + " nanosec=" + r.event.nanosec +
                 " cleanup=" + r.cleanup_status);
        }
    }

    private static int wait(ClockSession session, int work)
    {
        for(int i = 0; i < work; i++)
        {
            ClockSession.Poll result = session.poll();
            if(result.status == 11)
                continue;
            show(result.transport);
            if(result.status != 0)
                return result.status;
            return result.accepted ? 0 : 22;
        }
        int abandoned = session.abandonPending();
        line("work budget90; localAbandon=" + u(abandoned) + "; native effects uncertain");
        return 90;
    }

    private static int program(ClockSession session, String[] args, int work, OwnedService.Qos request, OwnedService.Qos response)
    {
        int code = session.connect(args[0], args[1], args[2], request, response, 1000000L);
        if(code != 0)
            return code;
        OwnedService.Submission sent = session.start();
        if(sent.code != 0)
            return sent.code;
        code = wait(session, work);
        if(code != 0)
            return code;
        for(int phase = 0; phase < 2; phase++)
        {
            for(int frame = 0; frame < 20; frame++)
            {
                sent = session.step(phase, frame);
                if(sent.code != 0)
                    return sent.code;
                code = wait(session, work);
                if(code != 0)
                    return code;
            }
        }
        sent = session.finish();
        return sent.code != 0 ? sent.code : wait(session, work);
    }

    private static void outcome(String label, OwnedService.Outcome value)
    {
        line(label + " attempted=" + value.attempted + " returned=" + value.returned + " code=" + u(value.code) + " failure=" + value.failure +
             " rawReturned=" + value.rawReturned + " rawCode=" + u(value.rawCode) + " preparationFailure=" + value.preparationFailure +
             " deliveryCleanupAttempted=" + value.deliveryCleanupAttempted + " deliveryCleanupCode=" + u(value.deliveryCleanupCode) +
             " deliveryCleanupPrimary=" + value.deliveryCleanupPrimary + " deliveryCleanupFailure=" + value.deliveryCleanupFailure);
    }

    private static void diagnostics(ClockSession session)
    {
        show(session.lastTransport());
        OwnedService.Diagnostic d = session.diagnostic();
        if(d != null)
        {
            line("diagnostic primary=" + u(d.primary) + " failure=" + d.primaryFailure + " activationValidation=" + u(d.activationValidation) +
                 " inspectionValidation=" + u(d.inspectionValidation) + " poisoned=" + d.poisoned + " originalPresent=" + d.originalPresent +
                 " inspectionPresent=" + d.inspectionPresent + " lastTicket=" + u(d.lastTicket) + " committedSequence=" + u(d.lastCommittedSequence) +
                 " reservation=" + u(d.lastReservation) + " transactionSlots=" + d.transactionSlots + " original=" + Arrays.toString(d.original) +
                 " inspection=" + Arrays.toString(d.inspection) + " lastPacketPrefix=" + Arrays.toString(d.lastPacketPrefix));
            for(int i = 0; i < d.operations.length; i++)
                outcome("actual operation[" + i + "]", d.operations[i]);
            for(int i = 0; i < 3; i++)
            {
                outcome("open[" + i + "]", d.open[i]);
                outcome("close[" + i + "]", d.close[i]);
                outcome("revoke[" + i + "]", d.revoke[i]);
            }
        }
        OwnedApplicationFailure evidence = session.cleanupEvidence();
        line("cleanup finished=" + evidence.finished() + " attempted=" + evidence.cleanupAttempted() + " returned=" + evidence.cleanupReturned() +
             " code=" + u(evidence.cleanupCode()) + " primaryFailure=" + evidence.primaryFailure() + " cleanupFailure=" + evidence.cleanupFailure() +
             " shutdownFailure=" + evidence.shutdownFailure() + " beforeSnapshotFailure=" + evidence.beforeSnapshotFailure() +
             " afterSnapshotFailure=" + evidence.afterSnapshotFailure() + " reportingFailure=" + evidence.reportingFailure());
        for(int row = 0; row < evidence.endpointCount(); row++)
        {
            for(int slot = 0; slot < 3; slot++)
            {
                OwnedApplicationFailure.OwnerEvidence owner = evidence.owner(row, slot);
                line("owner row=" + row + " slot=" + slot + " present=" + owner.present() + " alias=" + owner.alias() + " operation=" + owner.operation() +
                     " boundary=" + owner.boundary() + " attempted=" + owner.attempted() + " returned=" + owner.returned() + " code=" + u(owner.code()) +
                     " failure=" + owner.failure() + " preparationFailure=" + owner.firstPreparationFailure() + " beforeHandle=" + u(owner.beforeHandle()) +
                     " remainingHandle=" + u(owner.remainingHandle()) + " retirementHandle=" + u(owner.retirementHandle()) + " number=" + u(owner.number()));
            }
        }
    }

    /**
     * @brief Run all forty application-owned original frames in a genuine TeaVM Guest.
     * @details Args are call,observer,availability,nonce,work,requestQos80hex,
     * responseQos80hex. Unsigned long input/display preserves every uint64 bit.
     * First failure survives explicit native CANCEL and every cleanup/reporting
     * outcome. The same shared SDK owns all actual aliases and native retirement.
     * @param args Seven explicit actual command arguments; work1..65536. No ambient
     * service/domain/topic/model, environment or permission defaults are read.
     * @see ClockSession
     */
    public static void main(String[] args)
    {
        if(args.length != 7 || !args[3].matches("[0-9]{1,20}") || !args[4].matches("[0-9]{1,5}"))
            throw new IllegalArgumentException("Seven explicit clock arguments required");
        long nonce = Long.parseUnsignedLong(args[3]);
        int work = Integer.parseInt(args[4]);
        if(nonce == 0 || work < 1 || work > 65536)
            throw new IllegalArgumentException("nonce/work domain");
        OwnedService.Qos request = OwnedService.Qos.fromBytes(hex(args[5]));
        OwnedService.Qos response = OwnedService.Qos.fromBytes(hex(args[6]));
        ClockSession session = new ClockSession(nonce);
        int primary = 0;
        Throwable primaryFailure = null;
        try
        {
            primary = program(session, args, work, request, response);
        }
        catch(Throwable failure)
        {
            primary = 5;
            primaryFailure = failure;
        }
        finally
        {
            if(primary != 0)
            {
                try
                {
                    OwnedService.Submission canceled = session.cancelNative();
                    int code = canceled.code != 0 ? canceled.code : wait(session, work);
                    line("explicit native cancel=" + u(code));
                }
                catch(Throwable failure)
                {
                    session.cleanupEvidence().recordReportingFailure(failure);
                }
            }
            int closed = session.closeChecked();
            if(primary == 0)
                primary = closed;
            try
            {
                diagnostics(session);
            }
            catch(Throwable failure)
            {
                session.cleanupEvidence().recordReportingFailure(failure);
                if(primary == 0)
                {
                    primary = 5;
                    primaryFailure = failure;
                }
            }
        }
        try
        {
            line("clock-program primary=" + u(primary) + " originalFailure=" + primaryFailure + " independentCleanup=" + u(session.cleanupStatus()));
        }
        catch(Throwable failure)
        {
            session.cleanupEvidence().recordReportingFailure(failure);
            if(primary == 0)
            {
                primary = 5;
                primaryFailure = failure;
            }
        }
        if(primary != 0)
        {
            Throwable cause = primaryFailure != null ? primaryFailure : session.cleanupEvidence().primaryFailure();
            if(cause == null)
                cause = session.cleanupEvidence().cleanupFailure();
            if(cause == null)
                cause = session.cleanupEvidence().shutdownFailure();
            throw new IllegalStateException("Clock program failed: " + u(primary), cause);
        }
        session.cleanupEvidence().throwIfFailed();
    }
}
