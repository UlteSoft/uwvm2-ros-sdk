package org.uwvm.roswasm.nvidia.isaacsim.kotlin.example

import org.uwvm.roswasm.OwnedService
import org.uwvm.roswasm.nvidia.isaacsim.kotlin.ClockSession
import org.uwvm.roswasm.nvidia.isaacsim.generated.BoundedRecords.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response

/**
 * @brief Complete original clock program compiled from actual Kotlin source.
 * @details JVM-IR/TeaVM WASI application owns both twenty-frame loops and uses
 * the complete real platform SDK/shared Java raw12 foundation. No host JVM ROS
 * provider, synthetic timestamp, hidden callback driver or model is supplied.
 * @see main
 * @see ClockSession
 */
object ClockProgram {
    private fun line(text: String) {
        System.out.println(text)
        check(!System.out.checkError()) { "Actual Guest stdout stream reported failure" }
    }

    private fun hex(text: String): ByteArray {
        require(Regex("[0-9a-f]{160}").matches(text)) { "Complete lower-hex QoS80 required" }
        return ByteArray(80) { index -> text.substring(index * 2, index * 2 + 2).toInt(16).toByte() }
    }

    private fun show(value: OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>?) {
        if (value == null) return
        line("transport code=${value.code.toUInt()} kind=${value.kind} flags=${value.controlFlags}" +
            " nativeError=${value.nativeError.toUInt()} hasValue=${value.hasValue} abandoned=${value.abandoned}" +
            " ticket=${value.ticket.toULong()} sequence=${value.sequence.toULong()}" +
            " reservation=${value.reservation.toULong()} failure=${value.failure}")
        if (value.sequence != 0L && value.kind != 6 && value.kind != 7) {
            line("actual same-take metadata sourceNs=${value.sourceTimestamp}" +
                " receivedNs=${value.receivedTimestamp} nativeSequence=${value.nativeSequence}" +
                " writerBytes=${value.writerGuid.contentToString()}")
        } else {
            line("native metadata absent on control/no-record; no timestamp/writer synthesized")
        }
        val body = value.value ?: return
        line("actual complete body (may be rejected) status=${body.status}" +
            " nonce=${body.session_nonce.toULong()} sequence=${body.request_sequence}" +
            " state=${body.state} updates=${body.actual_app_updates.toULong()} steps=${body.completed_steps}" +
            " hasEvent=${body.has_event} kind=${body.event.kind} phase=${body.event.phase}" +
            " frame=${body.event.frame} sec=${body.event.sec} nanosec=${body.event.nanosec}" +
            " cleanup=${body.cleanup_status}")
    }

    private fun wait(session: ClockSession, work: Int): UInt {
        repeat(work) {
            val result = session.poll()
            if (result.status != 11u) {
                show(result.transport)
                return if (result.status != 0u) result.status else if (result.accepted) 0u else 22u
            }
        }
        val abandoned = session.abandonPending()
        line("work budget90; localAbandon=$abandoned; native effect remains uncertain")
        return 90u
    }

    private fun program(session: ClockSession, args: Array<String>, work: Int,
                        request: OwnedService.Qos, response: OwnedService.Qos): UInt {
        var code = session.connect(args[0], args[1], args[2], request, response, 1_000_000uL)
        if (code != 0u) return code
        var sent = session.start()
        if (sent.code != 0) return sent.code.toUInt()
        code = wait(session, work)
        if (code != 0u) return code
        for (phase in 0..1) {
            for (frame in 0 until 20) {
                sent = session.step(phase, frame)
                if (sent.code != 0) return sent.code.toUInt()
                code = wait(session, work)
                if (code != 0u) return code
            }
        }
        sent = session.finish()
        return if (sent.code != 0) sent.code.toUInt() else wait(session, work)
    }

    private fun outcome(label: String, value: OwnedService.Outcome) {
        line("$label attempted=${value.attempted} returned=${value.returned} code=${value.code.toUInt()}" +
            " failure=${value.failure} rawReturned=${value.rawReturned} rawCode=${value.rawCode.toUInt()}" +
            " preparationFailure=${value.preparationFailure} deliveryCleanupAttempted=${value.deliveryCleanupAttempted}" +
            " deliveryCleanupCode=${value.deliveryCleanupCode.toUInt()} deliveryCleanupPrimary=${value.deliveryCleanupPrimary}" +
            " deliveryCleanupFailure=${value.deliveryCleanupFailure}")
    }

    private fun diagnostics(session: ClockSession) {
        show(session.lastTransport())
        val actual = session.diagnostic()
        if (actual != null) {
            line("diagnostic primary=${actual.primary.toUInt()} primaryFailure=${actual.primaryFailure}" +
                " activationValidation=${actual.activationValidation.toUInt()} inspectionValidation=${actual.inspectionValidation.toUInt()}" +
                " poisoned=${actual.poisoned} originalPresent=${actual.originalPresent} inspectionPresent=${actual.inspectionPresent}" +
                " lastTicket=${actual.lastTicket.toULong()} committedSequence=${actual.lastCommittedSequence.toULong()}" +
                " reservation=${actual.lastReservation.toULong()} transactionSlots=${actual.transactionSlots}" +
                " original=${actual.original.contentToString()} inspection=${actual.inspection.contentToString()}" +
                " lastPacketPrefix=${actual.lastPacketPrefix.contentToString()}")
            actual.operations.forEachIndexed { index, value -> outcome("actual operation[$index]", value) }
            for (index in 0..2) {
                outcome("open[$index]", actual.open[index])
                outcome("close[$index]", actual.close[index])
                outcome("revoke[$index]", actual.revoke[index])
            }
        }
        val evidence = session.cleanupEvidence()
        line("cleanup finished=${evidence.finished()} attempted=${evidence.cleanupAttempted()}" +
            " returned=${evidence.cleanupReturned()} code=${evidence.cleanupCode().toUInt()}" +
            " primaryFailure=${evidence.primaryFailure()} cleanupFailure=${evidence.cleanupFailure()}" +
            " shutdownFailure=${evidence.shutdownFailure()} beforeSnapshotFailure=${evidence.beforeSnapshotFailure()}" +
            " afterSnapshotFailure=${evidence.afterSnapshotFailure()} reportingFailure=${evidence.reportingFailure()}")
        for (row in 0 until evidence.endpointCount()) {
            for (slot in 0..2) {
                val owner = evidence.owner(row, slot)
                line("owner row=$row slot=$slot present=${owner.present()} alias=${owner.alias()}" +
                    " operation=${owner.operation()} boundary=${owner.boundary()} attempted=${owner.attempted()}" +
                    " returned=${owner.returned()} code=${owner.code().toUInt()} failure=${owner.failure()}" +
                    " preparationFailure=${owner.firstPreparationFailure()} beforeHandle=${owner.beforeHandle().toULong()}" +
                    " remainingHandle=${owner.remainingHandle().toULong()} retirementHandle=${owner.retirementHandle().toULong()}" +
                    " number=${owner.number().toULong()}")
            }
        }
    }

    /**
     * @brief Execute all40 original frames using the real Kotlin platform SDK.
     * @details Seven actual WASI arguments: call,observer,availability,nonce,
     * work1..65536,requestQos80hex,responseQos80hex. UInt/ULong retain all original
     * status/nonces; every body/transport/owner field is reported. First business
     * failure survives explicit native CANCEL and independent endpoint/shutdown/
     * reporting failures. No environment/path/domain/model defaults are read.
     * @param[in] args Complete explicit original input; invalid input throws
     * before any capability open. Native/blocking/fatal work needs its finite owner.
     * @see ClockSession
     */
    @JvmStatic
    fun main(args: Array<String>) {
        require(args.size == 7 && Regex("[0-9]{1,20}").matches(args[3]) &&
            Regex("[0-9]{1,5}").matches(args[4])) { "Seven explicit clock arguments required" }
        val nonce = args[3].toULongOrNull() ?: error("uint64 nonce overflow")
        val work = args[4].toInt()
        require(nonce != 0uL && work in 1..65536) { "nonce/work domain" }
        val request = OwnedService.Qos.fromBytes(hex(args[5]))
        val response = OwnedService.Qos.fromBytes(hex(args[6]))
        val session = ClockSession(nonce)
        var primary = 0u
        var firstFailure: Throwable? = null
        try {
            primary = program(session, args, work, request, response)
        } catch (failure: Throwable) {
            primary = 5u
            firstFailure = failure
            session.cleanupEvidence().recordPrimary(failure)
        } finally {
            if (primary != 0u) {
                try {
                    val canceled = session.cancelNative()
                    val code = if (canceled.code != 0) canceled.code.toUInt() else wait(session, work)
                    line("explicit native cancel=$code")
                } catch (failure: Throwable) {
                    session.cleanupEvidence().recordReportingFailure(failure)
                }
            }
            val closed = session.closeChecked()
            if (primary == 0u) primary = closed
            try {
                diagnostics(session)
            } catch (failure: Throwable) {
                session.cleanupEvidence().recordReportingFailure(failure)
                if (primary == 0u) { primary = 5u; firstFailure = failure }
            }
        }
        try {
            line("clock-program primary=$primary originalFailure=$firstFailure independentCleanup=${session.cleanupStatus}")
        } catch (failure: Throwable) {
            session.cleanupEvidence().recordReportingFailure(failure)
            if (primary == 0u) { primary = 5u; firstFailure = failure }
        }
        if (primary != 0u) {
            val cause = firstFailure ?: session.cleanupEvidence().primaryFailure() ?:
                session.cleanupEvidence().cleanupFailure() ?: session.cleanupEvidence().shutdownFailure()
            throw IllegalStateException("Clock program failed: $primary", cause)
        }
        session.cleanupEvidence().throwIfFailed()
    }
}
