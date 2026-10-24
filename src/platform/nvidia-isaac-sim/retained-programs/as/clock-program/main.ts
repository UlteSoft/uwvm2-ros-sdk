/**
 * Complete original two-phase clock program through the actual platform SDK.
 * argv: call observer availability nonce poll_work_budget qos160bytes_lower_hex
 */
import {ClockSession} from "nvidia-isaac-sim/as/clock-control/clock";

import {decimal, exit, readArguments, write} from "./wasi";

function hex(bytes: Uint8Array): string
{
    const digits = "0123456789abcdef";
    let out = "";
    for(let i = 0; i < bytes.length; ++i)
        out += digits.charAt(bytes[i] >> 4) + digits.charAt(bytes[i] & 15);
    return out;
}

function unhex(text: string): Uint8Array
{
    if(text.length != 320)
        return new Uint8Array(0);
    const bytes = new Uint8Array(160), digits = "0123456789abcdef";
    for(let i = 0; i < 160; ++i)
    {
        const a = digits.indexOf(text.charAt(i * 2)), b = digits.indexOf(text.charAt(i * 2 + 1));
        if(a < 0 || b < 0)
            return new Uint8Array(0);
        bytes[i] = <u8>((a << 4) | b);
    }
    return bytes;
}

function wait(s: ClockSession, work: u32): u32
{
    for(let i: u32 = 0; i < work; ++i)
    {
        const taken = s.poll();
        if(taken.status == 11)
            continue;
        if(taken.status)
            return taken.status;
        const value = taken.value;
        if(value === null)
            return 22;
        const event = value.event, m = taken.metadata;
        let code = write(
            "response status=" + value.status.toString() + " nonce=" + value.session_nonce.toString() + " sequence=" + value.request_sequence.toString() +
                " state=" + value.state.toString() + " updates=" + value.actual_app_updates.toString() + " steps=" + value.completed_steps.toString() +
                " has_event=" + value.has_event.toString() + " kind=" + event.kind.toString() + " phase=" + event.phase.toString() +
                " frame=" + event.frame.toString() + " sec=" + event.sec.toString() + " nanosec=" + event.nanosec.toString() +
                " cleanup=" + value.cleanup_status.toString(),
        );
        const metadata = write(
            "metadata associated=" + m.associated.toString() + " sequence=" + m.sequence.toString() + " reservation=" + m.reservation.toString() +
                " ticket=" + m.ticket.toString() + " bodyBytes=" + m.bodyBytes.toString() + " source=" + m.source.toString() +
                " instance=" + m.instance.toString() + " generation=" + m.generation.toString() + " session=" + m.session.toString() +
                " incarnation=" + m.incarnation.toString() + " role=" + m.role.toString() + " kind=" + m.kind.toString() + " flags=" + m.flags.toString() +
                " error=" + m.error.toString() + " nativePresent=" + m.nativePresent.toString() + " sourceTimestamp=" + m.sourceTimestamp.toString() +
                " receivedTimestamp=" + m.receivedTimestamp.toString() + " nativeSequence=" + m.nativeSequence.toString() + " writer=" + hex(m.writer),
        );
        return code ? code : metadata;
    }
    const abandoned = s.abandonPending();
    write(
        "work budget90; local abandon=" + abandoned.toString() + "; native effects uncertain",
    );
    return 90;
}

function program(
    s: ClockSession,
    args: Array<string>,
    work: u32,
    qos: Uint8Array,
    ): u32
{
    let code = s.connect(args[1], args[2], args[3], qos, 1000000);
    if(code)
        return code;
    code = write("actual full receipt=" + hex(s.originalReceipt()));
    if(code)
        return code;
    let submitted = s.start();
    if(submitted.status)
        return submitted.status;
    code = wait(s, work);
    if(code)
        return code;
    for(let phase: u8 = 0; phase < 2; ++phase)
    {
        for(let frame: u32 = 0; frame < 20; ++frame)
        {
            submitted = s.step(phase, frame);
            if(submitted.status)
                return submitted.status;
            code = wait(s, work);
            if(code)
                return code;
        }
    }
    submitted = s.finish();
    if(submitted.status)
        return submitted.status;
    return wait(s, work);
}

function diagnostics(s: ClockSession): u32
{
    let code = write(
        "independent_cleanup=" + s.cleanupStatus.toString() + " query_close_attempted=" + s.didCloseQuery.toString() +
            " query_close_status=" + s.queryCloseStatus.toString(),
    );
    const r = s.lastResponse();
    if(r !== null)
    {
        const e = r.event;
        const observed = write(
            "latest actual body (may be rejected) status=" + r.status.toString() + " nonce=" + r.session_nonce.toString() +
                " sequence=" + r.request_sequence.toString() + " state=" + r.state.toString() + " updates=" + r.actual_app_updates.toString() + " steps=" +
                r.completed_steps.toString() + " has_event=" + r.has_event.toString() + " kind=" + e.kind.toString() + " phase=" + e.phase.toString() +
                " frame=" + e.frame.toString() + " sec=" + e.sec.toString() + " nanosec=" + e.nanosec.toString() + " cleanup=" + r.cleanup_status.toString(),
        );
        if(!code)
            code = observed;
    }
    const m = s.lastMetadata();
    if(m !== null)
    {
        const observed = write(
            "latest actual body metadata associated=" + m.associated.toString() + " sequence=" + m.sequence.toString() + " reservation=" +
                m.reservation.toString() + " ticket=" + m.ticket.toString() + " bodyBytes=" + m.bodyBytes.toString() + " source=" + m.source.toString() +
                " instance=" + m.instance.toString() + " generation=" + m.generation.toString() + " session=" + m.session.toString() +
                " incarnation=" + m.incarnation.toString() + " role=" + m.role.toString() + " kind=" + m.kind.toString() + " flags=" + m.flags.toString() +
                " error=" + m.error.toString() + " nativePresent=" + m.nativePresent.toString() + " sourceTimestamp=" + m.sourceTimestamp.toString() +
                " receivedTimestamp=" + m.receivedTimestamp.toString() + " nativeSequence=" + m.nativeSequence.toString() + " writer=" + hex(m.writer),
        );
        if(!code)
            code = observed;
    }
    const c = s.lastControl();
    if(c !== null)
    {
        const observed = write(
            "latest actual control associated=" + c.associated.toString() + " sequence=" + c.sequence.toString() + " reservation=" + c.reservation.toString() +
                " ticket=" + c.ticket.toString() + " bodyBytes=" + c.bodyBytes.toString() + " source=" + c.source.toString() +
                " instance=" + c.instance.toString() + " generation=" + c.generation.toString() + " session=" + c.session.toString() +
                " incarnation=" + c.incarnation.toString() + " role=" + c.role.toString() + " kind=" + c.kind.toString() + " flags=" + c.flags.toString() +
                " error=" + c.error.toString() + " nativePresent=" + c.nativePresent.toString() + " sourceTimestamp=" + c.sourceTimestamp.toString() +
                " receivedTimestamp=" + c.receivedTimestamp.toString() + " nativeSequence=" + c.nativeSequence.toString() + " writer=" + hex(c.writer),
        );
        if(!code)
            code = observed;
    }
    const d = s.diagnostics();
    if(d === null)
        return code ? code : write("no endpoint attempt");
    const first = write(
        "diagnostic firstPrimary=" + d.firstPrimary.toString() + " activation=" + d.activation.toString() + " activationValidation=" +
            d.activationValidation.toString() + " inspect=" + d.inspect.toString() + " inspectValidation=" + d.inspectValidation.toString() +
            " submit=" + d.submit.toString() + " peek=" + d.peek.toString() + " peekValidation=" + d.peekValidation.toString() +
            " respond=" + d.respond.toString() + " available=" + d.available.toString() + " abandon=" + d.abandon.toString() +
            " encode=" + d.encode.toString() + " decode=" + d.decode.toString() + " commit=" + d.commit.toString() + " cancel=" + d.cancel.toString() +
            " retire=" + d.retire.toString() + " sourceClose=" + d.sourceClose.toString() + " peerClose=" + d.peerClose.toString(),
    );
    if(!code)
        code = first;
    const second = write(
        "diagnostic activationAttempted=" + d.activationAttempted.toString() + " commitAttempted=" + d.commitAttempted.toString() + " cancelAttempted=" +
            d.cancelAttempted.toString() + " retireAttempted=" + d.retireAttempted.toString() + " sourceCloseAttempted=" + d.sourceCloseAttempted.toString() +
            " peerCloseAttempted=" + d.peerCloseAttempted.toString() + " associated=" + d.associated.toString() + " poisoned=" + d.poisoned.toString() +
            " lastCommitSucceeded=" + d.lastCommitSucceeded.toString() + " submits=" + d.submits.toString() + " peeks=" + d.peeks.toString() +
            " commits=" + d.commits.toString() + " cancels=" + d.cancels.toString() + " responses=" + d.responses.toString() +
            " lastSequence=" + d.lastSequence.toString() + " lastReservation=" + d.lastReservation.toString() + " lastTicket=" + d.lastTicket.toString() +
            " historyUsed=" + d.historyUsed.toString() + " originalPresent=" + d.originalPresent.toString() + " inspectPresent=" + d.inspectPresent.toString() +
            " recordPresent=" + d.recordPresent.toString() + " original=" + hex(d.original) + " observed=" + hex(d.observed) + " prefix=" + hex(d.prefix),
    );
    return code ? code : second;
}

/**
 * @brief Execute all40 application-owned frames through the genuine SDK.
 * @details Strict actual argv only. Separate explicit CANCEL is attempted after
 * a failure only when session state allows it. All owners close before exit;
 * primary and independent cleanup diagnostics remain distinct. No simulator,
 * provider mock, clock, path, model or authority API is linked by this program.
 * @return No normal value; actual status is printed and command exits accordingly.
 * @see ClockSession; readArguments
 */
export function _start(): void
{
    const input = readArguments();
    if(input.status)
    {
        exit(input.status);
        return;
    }
    const args = input.values, nonce = decimal(args[4]), work = decimal(args[5]), qos = unhex(args[6]);
    if(nonce.status || !nonce.value || work.status || !work.value || work.value > 65536 || qos.length != 160)
    {
        exit(22);
        return;
    }
    const session = new ClockSession(nonce.value);
    let primary = program(session, args, <u32>work.value, qos);
    if(primary)
    {
        const cancel = session.cancelNative();
        const cancelStatus = cancel.status ? cancel.status : wait(session, <u32>work.value);
        write(
            "explicit native cancel status=" + cancelStatus.toString() + "; only actual reply acknowledges native cleanup",
        );
    }
    const closed = session.close();
    if(!primary)
        primary = closed;
    const observed = diagnostics(session);
    if(!primary)
        primary = observed;
    const printed = write(
        "clock-program primary=" + primary.toString() + " close=" + closed.toString(),
    );
    exit(primary ? primary : printed);
}
