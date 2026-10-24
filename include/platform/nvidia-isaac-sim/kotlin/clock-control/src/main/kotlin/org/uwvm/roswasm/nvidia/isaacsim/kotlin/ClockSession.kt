package org.uwvm.roswasm.nvidia.isaacsim.kotlin

import org.uwvm.roswasm.OwnedApplicationFailure
import org.uwvm.roswasm.OwnedService
import org.uwvm.roswasm.nvidia.isaacsim.ClockSession as JavaClockSession
import org.uwvm.roswasm.nvidia.isaacsim.generated.BoundedRecords.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response

/**
 * @brief Kotlin owner of the complete original clock-program SDK operations.
 * @details The actual Kotlin/JVM-IR to TeaVM/WASI route uses the real shared Java
 * raw12 foundation and this platform's complete Java SDK, not a host JVM ROS
 * provider. One constructing Guest thread, one pending request and64 lifetime
 * transaction slots. All actual full records/QoS/ACK/correlation/cleanup checks
 * remain in the genuine underlying SDK. No wire parser or native identity is
 * recreated here. Kotlin unsigned values preserve every uint64/status bit.
 * @param[in] nonce Nonzero unsigned64 correlation paired with the native owner;
 * not authentication, a permission or a synthetic timestamp.
 * @see connect
 * @see poll
 * @see closeChecked
 */
class ClockSession(nonce: ULong) : AutoCloseable {
    private val actual = JavaClockSession(nonce.toLong())

    /**
     * @brief One complete actual poll result with unsigned platform status.
     * @details accepted alone identifies a fully correlated successful body.
     * transport is the original shared mutable result, including rejected ACK/
     * control/native-error metadata when returned by that real SDK. Null means
     * none. A diagnostic body/control never becomes a successful completion.
     * @param[in] status Full unsigned platform/transport code.
     * @param[in] accepted Actual underlying complete business-validation result.
     * @param[in] transport Original shared take outcome, borrowed without mutation.
     * @see poll
     */
    data class Poll(
        val status: UInt,
        val accepted: Boolean,
        val transport: OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>?
    )

    /**
     * @brief Open the exact original owners and validate actual full QoS once.
     * @details Original Group retains every partial open/activation/receipt and
     * cleanup outcome. Both profiles are expectations, never configuration/grants.
     * @param[in] call Exact pregranted call alias, strict UTF8 length1..255/no NUL.
     * @param[in] observer Distinct corresponding observer alias.
     * @param[in] availability Distinct independently granted availability alias.
     * @param[in] request Complete independently selected expected request QoS.
     * @param[in] response Complete independently selected expected response QoS.
     * @param[in] waitNanoseconds Actual native availability wait0..1000000000ns.
     * @return Original full unsigned status;11 unavailable,22 domain,17 repeat,
     *125 retired. No process, native graph or permission is created implicitly.
     * @see diagnostic
     * @see closeChecked
     */
    fun connect(call: String, observer: String, availability: String,
                request: OwnedService.Qos, response: OwnedService.Qos,
                waitNanoseconds: ULong): UInt {
        if (waitNanoseconds > 1_000_000_000uL) return 22u
        return actual.connect(call, observer, availability, request, response,
            waitNanoseconds.toLong()).toUInt()
    }

    /** @brief Submit original native setup/discovery/playback once.
     * @details Returned status/ticket is admission only, not native completion.
     * @return Original shared mutable submission; inspect code as unsigned bits.
     * @see poll
     */
    fun start(): OwnedService.Submission = actual.start()

    /** @brief Submit exactly the next original phase/frame.
     * @details Native pacing100ms and phase0-only impulse extra updates are
     * preserved by the underlying full platform SDK/native owner, without replay.
     * @param[in] phase Next phase0 or1, matching completed steps/20.
     * @param[in] frame Next local frame0..19, matching completed steps%20.
     * @return Original admission status/ticket;22 means wrong progression.
     * @see poll
     */
    fun step(phase: Int, frame: Int): OwnedService.Submission = actual.step(phase, frame)

    /** @brief Submit native FINISH after all40 steps and both actual callback kinds.
     * @details Missing either kind in either phase returns110, leaving a certain
     * session available for explicit native CANCEL. No callback is synthesized.
     * @return Original admission status/ticket; poll the actual response.
     * @see cancelNative
     */
    fun finish(): OwnedService.Submission = actual.finish()

    /** @brief Submit actual native simulation retirement with no pending uncertainty.
     * @details Only its real fully valid response acknowledges CANCEL. Local
     * abandon/close is independent and establishes no DDS/physical stop result.
     * @return Original status/ticket;17 pending,125 retired/uncertain.
     * @see poll
     * @see abandonPending
     */
    fun cancelNative(): OwnedService.Submission = actual.cancelNative()

    /** @brief Perform one real caller-driven response/control poll.
     * @details The underlying SDK retains all original outcomes and validates
     * complete generated bodies after exact ACK.11 is idle, not elapsed time.
     * The facade borrows the same result; it does not discard error metadata.
     * @return Full actual result; allocation/ordinary thrown failures propagate.
     * @see lastTransport
     * @see diagnostic
     */
    fun poll(): Poll {
        val returned = actual.poll()
        return Poll(returned.status.toUInt(), returned.accepted, returned.transport)
    }

    /** @brief Locally abandon a pending actual ticket after finite work exhaustion.
     * @details Preserves original abandonment failure and effect uncertainty;
     * does not send native CANCEL or prove a physical timeout.
     * @return Original unsigned abandon status or22 when no request is pending.
     * @see closeChecked
     */
    fun abandonPending(): UInt = actual.abandonPending().toUInt()

    /** @brief Independently close actual group/native/raw owners and Session once.
     * @details First terminal status remains primary; every shutdown/close/
     * retained-handle failure remains in the genuine preallocated envelope.
     * Repeat calls are inert. Fatal traps require the external whole-process owner.
     * @return Original first unsigned status or independent cleanup error.
     * @see cleanupEvidence
     */
    fun closeChecked(): UInt = actual.closeChecked().toUInt()

    /** @brief AutoCloseable convenience with the same once-only owner retirement.
     * @details Explicitly inspect closeChecked/cleanupEvidence for failure status;
     * this Unit convenience cannot replace that checked result channel.
     * @see closeChecked
     */
    override fun close() { closeChecked() }

    /** @brief First full unsigned terminal status;0 alone is no completion proof. @see poll */
    val primaryStatus: UInt get() = actual.primaryStatus().toUInt()
    /** @brief Independent full unsigned cleanup status, meaningful after close. @see closeChecked */
    val cleanupStatus: UInt get() = actual.cleanupStatus().toUInt()
    /** @brief Original full unsigned abandon status, meaningful after an attempt. @see abandonPending */
    val abandonStatus: UInt get() = actual.abandonStatus().toUInt()
    /** @brief Latest original actual thrown failure reference or null. @see cleanupEvidence */
    val lastFailure: Throwable? get() = actual.lastFailure()

    /** @brief Borrow the last original full actual take/control outcome or null.
     * @details May include rejected business/ACK/native error facts. Shared
     * mutable result; serial read-only inspection only, never completion proof.
     * @return Original underlying returned record, retained after local close.
     * @see poll
     */
    fun lastTransport(): OwnedService.Delivery<Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response>? =
        actual.lastTransport()

    /** @brief Copy every actual open/receipt/inspect/ACK/retirement diagnostic.
     * @details Underlying detached snapshot; mutable caller data cannot alter
     * the actual owner ledger. Allocation may fail; null means no row attempted.
     * @return Complete original shared diagnostic snapshot or null.
     * @see closeChecked
     */
    fun diagnostic(): OwnedService.Diagnostic? = actual.diagnostic()

    /** @brief Borrow the genuine preallocated cleanup/first-failure envelope.
     * @details Includes every independent native/raw/shutdown/snapshot/reporting
     * result and remaining owner handle. No copied number transfers ownership.
     * @return Original shared envelope, retained for this session lifetime.
     * @see closeChecked
     */
    fun cleanupEvidence(): OwnedApplicationFailure = actual.cleanupEvidence()
}
