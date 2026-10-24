"""@brief Validate complete copied unified-event v1 envelopes locally.

@details This module neither polls an event nor grants observer/source rights.
It parses the fixed64-byte LE header and exact copied body synchronously.
Sequence/Instance/session audit is explicit through Binding; no clock, thread,
background callback, implicit acknowledgement or retry is started.
@see Binding
"""

from dataclasses import dataclass
from .codecs import Reader


@dataclass(frozen=True)
class Event:
    """@brief Retain every unified-event header field and its unchanged body.

    @details Frozen value object. decode supplies validated integers and owned
    immutable bytes; manual construction does not validate arbitrary fields.
    These IDs remain local to their originating Runtime Instance/session and
    are not transferable permission or evidence of an active native endpoint.
    @param kind [in] Envelope kind1..7 admitted by the v1 decoder.
    @param backend [in] ROS backend1/2 carried in the header.
    @param flags [in] Kind-specific one-byte flags; unsupported bits are rejected.
    @param error [in] Numeric u32 status; data kinds require0, failure kind6
    requires nonzero. Status alone does not authorize replay of an admitted call.
    @param source [in] Nonzero unsigned64-bit source handle/ID.
    @param correlation [in] Unsigned64-bit correlation,0 where the kind permits it.
    @param sequence [in] Nonzero unsigned64-bit observer sequence number.
    @param instance [in] Nonzero unsigned64-bit Instance identity.
    @param session [in] Nonzero unsigned64-bit session/incarnation identity.
    @param body [in] Complete immutable canonical body bytes; message decoding
    is separate and never projects away fields here.
    @see decode
    """

    kind: int
    """@brief Validated unified-event discriminator in1..7.
    @details Determines the flags, status and body-correlation rules applied by
    decode. A manually constructed Event has no automatic field validation.
    @see decode
    """
    backend: int
    """@brief Originating ROS backend identifier1 or2.
    @details Local envelope identity only; copying it grants no backend access.
    Binding checks this value against the already selected observer backend.
    @see Binding.decode
    """
    flags: int
    """@brief One-byte kind-specific event flags with no unknown bits admitted.
    @details The complete decoder validates each kind's allowed combination;
    flags never create callback, source, replay or cleanup authority.
    @see decode
    """
    error: int
    """@brief Unsigned32-bit status retained independently of the copied body.
    @details Data kinds require0; failure kind6 requires nonzero. Timeout or
    disconnect status does not establish that an external effect was absent.
    @see decode
    """
    source: int
    """@brief Nonzero unsigned64-bit source identity from this Runtime Instance.
    @details Exact Python integer; not a pointer, cross-Instance reference or
    independently owned resource. Binding compares it without narrowing.
    @see Binding.decode
    """
    correlation: int
    """@brief Exact unsigned64-bit request/goal correlation, including legal zero.
    @details Zero and embedded-body equality rules depend on kind. The value
    does not authorize replay, a response or cancellation of another goal.
    @see decode
    """
    sequence: int
    """@brief Nonzero unsigned64-bit observer sequence from the envelope.
    @details Binding requires the next contiguous value beginning at1; it
    rejects gaps and replays without silently resynchronizing its state.
    @see Binding.decode
    """
    instance: int
    """@brief Nonzero unsigned64-bit Runtime Instance identity.
    @details Meaningful only with the original session and source. Binding
    refuses a change after its first successful decode; copying grants no rights.
    @see Binding.decode
    """
    session: int
    """@brief Nonzero unsigned64-bit session/incarnation identity.
    @details Binding retains the first accepted identity and refuses a later
    replacement. This value neither reconnects nor revives an expired resource.
    @see Binding.decode
    """
    body: bytes
    """@brief Owned immutable complete body bytes after the64-byte header.
    @details The envelope decoder checks exact extent and required correlation,
    while native message schema decoding remains a separate codec operation.
    @see decode
    """


def decode(data):
    """@brief Decode one complete unified-event v1 header/body with strict shape.

    @details Requires magic0x45525755, version1, zero reserved bits and exact
    body-length/whole-input consumption. Checks kind1..7, backend1/2, nonzero
    source/sequence/Instance/session, kind-specific flags/status/correlation,
    and embedded body correlation for kinds2/4/5. It does not validate the body's
    native message schema, poll a queue, mutate a Binding or admit a callback.
    @param data [in] Immutable canonical bytes, at least64 and at most4194304
    bytes; the u64 body length must equal the remaining extent.
    @return New frozen Event containing all copied fields and immutable body.
    @raises ValueError Invalid type/extent, magic/version, flags, identifiers,
    status, correlation, truncated body or trailing bytes.
    @see Binding.decode
    """
    r = Reader(data)
    if r.integer(4) != 0x45525755 or r.integer(2) != 1:
        raise ValueError("unified event magic/version")
    kind, backend, flags = r.integer(2), r.integer(1), r.integer(1)
    if r.integer(2):
        raise ValueError("event reserved bits")
    error = r.integer(4)
    source, correlation, sequence, instance, session, size = (
        r.integer(8) for _ in range(6)
    )
    body = r.take(size)
    r.end()
    if (
        kind not in range(1, 8)
        or backend not in (1, 2)
        or not all((source, sequence, instance, session))
    ):
        raise ValueError("invalid event identity")
    if kind >= 6:
        if (
            body
            or flags & ~3
            or (kind == 6 and not error)
            or (kind == 7 and not flags & 1)
        ):
            raise ValueError("invalid resource state event")
    else:
        if error:
            raise ValueError("data event has an error")
        if kind == 1:
            if correlation or flags not in (0, 8):
                raise ValueError("invalid topic/parameter event")
        elif not correlation or flags not in ((0, 4) if kind == 2 else (0,)):
            raise ValueError("invalid correlated event")
        if kind in (2, 4, 5) and (
            len(body) < 8 or int.from_bytes(body[:8], "little") != correlation
        ):
            raise ValueError("body/envelope correlation mismatch")
    return Event(
        kind,
        backend,
        flags,
        error,
        source,
        correlation,
        sequence,
        instance,
        session,
        body,
    )


class Binding:
    """@brief Audit exact source/sequence identity for one already owned observer.

    @details Binds Instance/session on the first validated event and then requires
    the same pair and contiguous sequence numbers starting at1. No resynchronizing
    skip, authority creation or retry is implicit. Keep state on one caller
    thread and do not mutate it during decode; no locking/executor is provided.
    @see Binding.decode
    """

    def __init__(self, backend, source, correlation=0):
        """@brief Create a local audit binding without opening or polling resources.

        @param backend [in] Selected ROS backend1 or2.
        @param source [in] Exact int source ID in1..2**64-1, excluding bool.
        @param correlation [in] Exact int in0..2**64-1;0 disables correlation
        matching. Zero-correlation state notifications remain admissible.
        @return None; caller owns this binding and its local sequence state.
        @details Starts with sequence0 and unknown Instance/session, committing
        them only after a complete first decode succeeds. No I/O occurs.
        @raises ValueError Invalid backend, source or correlation range/type.
        @see decode
        """
        if backend not in (1, 2) or type(source) is not int or not 0 < source < 1 << 64:
            raise ValueError("invalid source binding")
        if type(correlation) is not int or not 0 <= correlation < 1 << 64:
            raise ValueError("invalid correlation binding")
        self.backend, self.source, self.correlation = backend, source, correlation
        """@brief Configured backend, source and optional correlation constraints.
        @details Treat these exact local identities as immutable after creation.
        Mutating them bypasses the caller's audit choice and grants no authority.
        @see Binding.__init__
        """
        self.instance = self.session = None
        """@brief Instance/session pair retained by the first accepted envelope.
        @details Initially None; both commit only after all checks succeed.
        Caller mutation or concurrent access is unsupported; no lock is provided.
        @see Binding.decode
        """
        self.sequence = 0
        """@brief Last successfully accepted observer sequence, initially0.
        @details Successful decode advances exactly once. Failure preserves the
        previous value; caller resets must never be used to conceal a gap/replay.
        @see Binding.decode
        """

    def decode(self, data):
        """@brief Validate one envelope and commit only a contiguous bound event.

        @details First uses the complete v1 decoder, then verifies backend/source,
        sequence=previous+1, stable Instance/session after the first event, and
        equality when both configured/event correlations are nonzero. Validation
        failure commits no new sequence. No message callback, queue poll or
        automatic recovery from gaps/disconnect/revocation is performed.
        @param data [in] Complete immutable canonical unified-event bytes.
        @return New Event with all fields/body; commits its Instance/session/sequence.
        @raises ValueError Invalid envelope, wrong source/backend/correlation,
        sequence gap/replay or changed Instance/session.
        @see Binding.__init__
        """
        value = decode(data)
        if (
            value.backend != self.backend
            or value.source != self.source
            or value.sequence != self.sequence + 1
            or (
                self.instance is not None
                and (value.instance != self.instance or value.session != self.session)
            )
            or (
                self.correlation
                and value.correlation
                and self.correlation != value.correlation
            )
        ):
            raise ValueError("source/session/sequence mismatch")
        self.instance, self.session, self.sequence = (
            value.instance,
            value.session,
            value.sequence,
        )
        return value
