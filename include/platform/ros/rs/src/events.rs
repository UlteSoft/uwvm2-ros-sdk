//! Unified event v1 codecs. These functions allocate nothing and grant no rights.
//! Use `Capability::watch_events` with an independently opened observer/source;
//! ordinary Session/Node ownership and checked cleanup still apply. The body is
//! the source's unchanged codec, including request/goalID8 where applicable.
//! Structural decoders accept caller-supplied bytes and cannot authenticate
//! their provenance. Binding checks continuity against its own local state;
//! genuine Runtime policy/session/source admission is independently required.
use crate::{codes, Error};
/// Stable copied seven-kind unified event selector, encoded as LE u16.
/// Constructing a variant is local data; it neither subscribes to that kind nor
/// admits its body/source. [`decode`] checks each kind's actual flag/ID shape.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
#[repr(u16)]
pub enum Kind {
    /// Canonical topic body; flags8 selects an explicitly authorized parameter projection.
    TopicMessage = 1,
    /// ID8 plus request body; flags4 identifies an incoming Action source.
    ServiceRequest = 2,
    /// Canonical service response; correlation is a successful submit's owned ID.
    ServiceResponse = 3,
    /// ID8 plus canonical Action feedback.
    ActionFeedback = 4,
    /// ID8 plus outcome and canonical Action result.
    ActionResult = 5,
    /// Body-free numeric failure. Source retirement is explicitly marked.
    ResourceError = 6,
    /// Body-free source-retirement notification; observer remains independently live.
    ResourceClosed = 7,
}
/// Complete local event representation with a body borrowed for `'a`.
/// [`decode`] validates framing and structural combinations; direct public-field
/// construction/mutation may bypass those checks. Neither route authenticates
/// a native source. Retain the actual input unchanged for any decoded body borrow.
#[derive(Debug)]
pub struct Event<'a> {
    /// Decoded/local kind selector, copied by value. It is not an admitted
    /// observer mask or proof that a native publisher/service produced the body.
    pub kind: Kind,
    /// Protocol backend1 or2 after checked decode, never inferred from names.
    /// This plain byte does not grant another backend's capability or connection.
    pub backend: u8,
    /// Stable flag bits: retired1,external-effects2,incoming-action4,parameter8.
    /// Decode checks the kind-specific combination; this mutable field alone
    /// certifies neither retirement nor an actual external/native effect.
    pub flags: u8,
    /// Original unsigned numeric failure, or0 for structurally valid data.
    /// ResourceError needs nonzero; ResourceClosed can carry0. Unknown values
    /// remain data, independently from any later local callback/cleanup failure.
    pub error: u32,
    /// Full nonzero source-handle field after decode. [`Binding`] compares it to
    /// its configured source; neither the field nor parsing transfers ownership.
    pub source: u64,
    /// Full request/goal correlation, or0 for topic/uncorrelated control data.
    /// Matching duplicated ID prefixes are checked where the protocol requires
    /// them. This copied integer does not prove native issuance or ownership.
    pub correlation: u64,
    /// Nonzero delivery sequence field. Stateless [`decode`] checks only
    /// nonzero; [`Binding::decode`] separately requires its next contiguous value.
    pub sequence: u64,
    /// Nonzero protocol Runtime Instance identity, never interpreted as a pointer.
    /// This decoded value is not an authenticated Runtime observation by itself;
    /// a Binding latches the first value and requires it on later deliveries.
    pub instance: u64,
    /// Nonzero protocol session field, including retired-session metadata.
    /// A Binding requires the first value thereafter; structural parsing of
    /// arbitrary bytes does not authenticate an actual native session.
    pub session: u64,
    /// Exact borrowed suffix after the64-byte envelope, without allocation.
    /// Kind-specific framing checks do not replace the actual source's complete
    /// typed body decoder. Retain input unchanged and use only a successful result.
    pub body: &'a [u8],
}
fn integer(bytes: &[u8], at: usize, width: usize) -> u64 {
    let mut value = 0;
    for i in 0..width {
        value |= (bytes[at + i] as u64) << (8 * i);
    }
    value
}
/// Validate an entire unaligned little-endian64-byte envelope transactionally.
/// Unknown flags, backend/kind/version, nonzero reserved bytes, malformed lengths,
/// zero identities and mismatched duplicated ID prefixes return22.
/// `bytes` must be one complete64..4194304-byte envelope. Returns a local Event
/// borrowing its body, with scalar fields copied. Resource controls require an
/// empty body and their allowed flags/error combination; data requires error0
/// and the exact kind-specific correlation/flag shape. Failure publishes no
/// partial Event. No imported call, allocation, sequence-history update, typed
/// body decode or authentication occurs. See [`Binding::decode`] for continuity.
pub fn decode(bytes: &[u8]) -> Result<Event<'_>, Error> {
    let invalid = || Error::new(codes::INVALID);
    if bytes.len() < 64
        || bytes.len() > 4_194_304
        || integer(bytes, 0, 4) != 0x45525755
        || integer(bytes, 4, 2) != 1
        || integer(bytes, 10, 2) != 0
    {
        return Err(invalid());
    }
    let kind = match integer(bytes, 6, 2) {
        1 => Kind::TopicMessage,
        2 => Kind::ServiceRequest,
        3 => Kind::ServiceResponse,
        4 => Kind::ActionFeedback,
        5 => Kind::ActionResult,
        6 => Kind::ResourceError,
        7 => Kind::ResourceClosed,
        _ => return Err(invalid()),
    };
    let event = Event {
        kind,
        backend: bytes[8],
        flags: bytes[9],
        error: integer(bytes, 12, 4) as u32,
        source: integer(bytes, 16, 8),
        correlation: integer(bytes, 24, 8),
        sequence: integer(bytes, 32, 8),
        instance: integer(bytes, 40, 8),
        session: integer(bytes, 48, 8),
        body: &bytes[64..],
    };
    if !(1..=2).contains(&event.backend)
        || event.source == 0
        || event.sequence == 0
        || event.instance == 0
        || event.session == 0
        || integer(bytes, 56, 8) != event.body.len() as u64
    {
        return Err(invalid());
    }
    if matches!(kind, Kind::ResourceError | Kind::ResourceClosed) {
        if !event.body.is_empty()
            || event.flags & !3 != 0
            || (kind == Kind::ResourceError && event.error == 0)
            || (kind == Kind::ResourceClosed && event.flags & 1 == 0)
        {
            return Err(invalid());
        }
    } else {
        if event.error != 0 {
            return Err(invalid());
        }
        if kind == Kind::TopicMessage {
            if event.correlation != 0 || !(event.flags == 0 || event.flags == 8) {
                return Err(invalid());
            }
        } else if event.correlation == 0
            || (kind == Kind::ServiceRequest && !(event.flags == 0 || event.flags == 4))
            || (kind != Kind::ServiceRequest && event.flags != 0)
        {
            return Err(invalid());
        }
        if matches!(
            kind,
            Kind::ServiceRequest | Kind::ActionFeedback | Kind::ActionResult
        ) && (event.body.len() < 8 || integer(event.body, 0, 8) != event.correlation)
        {
            return Err(invalid());
        }
    }
    Ok(event)
}
/// Four copied full64 readiness fields. A snapshot is not reserved capacity.
/// Public construction or [`decode_readiness`] does not prove current admission,
/// coherent credit, physical RSS availability or a native queue's contents.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Readiness {
    /// Protocol count of queued data/control events, copied as u64.
    /// It is an observation field and may change before the next poll.
    pub ready_events: u64,
    /// Protocol size in bytes of the next complete envelope, or0 when empty.
    /// The standalone decoder does not cross-check it against ready_events or
    /// any memory allocation; no automatic buffer growth follows.
    pub next_event_bytes: u64,
    /// Protocol logical admission slots observed at the producer's snapshot.
    /// This is not a reservation, native entity count or local Session capacity.
    pub admission_slots: u64,
    /// Protocol input/task/response admission byte credit at that snapshot.
    /// The value is neither physical memory nor permission to exceed a schema,
    /// alias, queue, rate or subsequent actual admission check.
    pub admission_bytes: u64,
}
/// Decode borrowed `bytes` as exactly four LE u64s, without wasm32 narrowing.
/// Returns an owned Readiness, or Invalid22 for any other extent. All full64
/// field values are preserved without cross-field/coherence/quota validation.
/// This allocates nothing, imports nothing and grants no admission reservation.
pub fn decode_readiness(bytes: &[u8]) -> Result<Readiness, Error> {
    if bytes.len() != 32 {
        return Err(Error::new(codes::INVALID));
    }
    Ok(Readiness {
        ready_events: integer(bytes, 0, 8),
        next_event_bytes: integer(bytes, 8, 8),
        admission_slots: integer(bytes, 16, 8),
        admission_bytes: integer(bytes, 24, 8),
    })
}

/// Allocation-free local binding for one explicitly watched source.
/// A malformed record does not advance sequence or change the latched session.
/// This audit never substitutes for Runtime capability/goal ownership checks.
/// Copy/Clone duplicates only a local validation cursor, without a new watch or
/// rights. The first accepted nonzero Instance/session fields are latched from
/// input data; this state cannot authenticate who produced that first record.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Binding {
    backend: u8,
    source: u64,
    correlation: u64,
    sequence: u64,
    instance: u64,
    session: u64,
}
impl Binding {
    /// Initialize local state only; the first valid delivery must be sequence1.
    /// `backend` must be1/2 and `source` nonzero; otherwise return Invalid22.
    /// `correlation` is the caller-selected full64 scope, with0 unbound. Returns
    /// an empty local cursor with no allocation, import or watcher activation.
    pub fn new(backend: u8, source: u64, correlation: u64) -> Result<Self, Error> {
        if !(1..=2).contains(&backend) || source == 0 {
            return Err(Error::new(codes::INVALID));
        }
        Ok(Self {
            backend,
            source,
            correlation,
            sequence: 0,
            instance: 0,
            session: 0,
        })
    }
    /// Validate source, contiguous sequence, session and optional owned goal.
    /// Uncorrelated error metadata is permitted on a goal-bound watch. Body
    /// storage remains borrowed from `bytes`; retain an owning copy if needed.
    /// Returns the complete Event after stateless framing, exact backend/source,
    /// checked next-sequence and latched Instance/session checks. The selected
    /// correlation is compared only when both configured and event values are
    /// nonzero; actual kind/type/mask permissions remain Host checks. Invalid22
    /// leaves this cursor unchanged. Success advances it before any caller
    /// callback; native queue consumption may already have happened even when
    /// this local check refuses. No rewind, sequence wrap or replay is supplied.
    pub fn decode<'a>(&mut self, bytes: &'a [u8]) -> Result<Event<'a>, Error> {
        let event = decode(bytes)?;
        if event.backend != self.backend
            || event.source != self.source
            || self.sequence.checked_add(1) != Some(event.sequence)
            || (self.instance != 0
                && (event.instance != self.instance || event.session != self.session))
            || (self.correlation != 0
                && event.correlation != 0
                && event.correlation != self.correlation)
        {
            return Err(Error::new(codes::INVALID));
        }
        self.sequence = event.sequence;
        self.instance = event.instance;
        self.session = event.session;
        Ok(event)
    }
}

/// Owned unified-event source and independent observer, without implicit opens.
/// Both actual owners are transferred in, then exactly one watch is attempted.
/// Failed construction drops both transferred owners once; explicitly retain
/// aliases outside this API only if separate caller-controlled cleanup is needed.
/// No legacy subscribe/advertise, clock, worker thread or synchronous RPC runs.
pub struct Stream {
    observer: crate::Capability,
    source: crate::Capability,
    binding: Binding,
}
impl Stream {
    /// Bind two live owners in the same selected backend. Zero correlation is
    /// used for topics/services and metadata; outgoing Action data uses its owned ID.
    /// Consumes `observer` and `source`, requiring live distinct IDs in one
    /// backend; mismatch/equal IDs returns22 and retired owners return9. The
    /// exact `correlation` is forwarded to one real observer.watch_events call.
    /// Success transfers both owners into the Stream. A busy/Host watch error
    /// is preserved; failure drops the consumed owners with best-effort cleanup,
    /// whose errors cannot be recovered from this single construction result.
    pub fn new(
        observer: crate::Capability,
        source: crate::Capability,
        correlation: u64,
    ) -> Result<Self, Error> {
        let backend = match source.backend() {
            #[cfg(feature = "ros1")]
            crate::Backend::Ros1 => 1,
            #[cfg(feature = "ros2")]
            crate::Backend::Ros2 => 2,
        };
        let source_id = source.raw_handle()?;
        if observer.backend() != source.backend() || observer.raw_handle()? == source_id {
            return Err(Error::new(codes::INVALID));
        }
        let binding = Binding::new(backend, source_id, correlation)?;
        observer.watch_events(&source, correlation)?;
        Ok(Self {
            observer,
            source,
            binding,
        })
    }
    /// Receive one complete record into explicit caller storage. Capacity90
    /// retains the Runtime's pinned event; no resize/retry or callback occurs here.
    /// Borrow `output` as scratch for the returned Event body's lifetime. Success
    /// advances the local Binding; idle11/other import errors and invalid22 remain
    /// errors. An envelope consumed by the real poll can fail subsequent Binding
    /// validation without a cursor advance; no event is silently replayed.
    pub fn poll<'a>(&mut self, output: &'a mut [u8]) -> Result<Event<'a>, Error> {
        let n = self.observer.poll_event_v1(output)?;
        self.binding.decode(&output[..n])
    }
    /// Dispatch one complete event on the Guest thread, returning false on idle11.
    /// The shared observer retirement lease spans the callback, including unwind;
    /// Session/Node cleanup cannot retire it while borrowed. Source operation
    /// identity remains independent. A callback failure does not replay the event.
    /// `output` is temporary scratch; `handler` consumes one borrowed Event and
    /// cannot retain that borrow beyond its actual input lifetime. Returns
    /// `Ok(false)` only for polling idle11, `Ok(true)` after one successful
    /// handler, or exact polling/Binding/lease/callback error. A callback's own
    /// error11 is still an error, never converted to idle. Binding has already
    /// advanced before the callback, and consumed data is not rolled back.
    pub fn spin_once(
        &mut self,
        output: &mut [u8],
        handler: impl FnOnce(Event<'_>) -> Result<(), Error>,
    ) -> Result<bool, Error> {
        let n = match self.observer.poll_event_v1(output) {
            Ok(n) => n,
            Err(e) if e.code == codes::AGAIN => return Ok(false),
            Err(e) => return Err(e),
        };
        let event = self.binding.decode(&output[..n])?;
        let _lease = self.observer.callback_guard()?;
        handler(event)?;
        Ok(true)
    }
    /// Observe finite credit without reserving a subsequent request.
    /// Returns the real observer's copied Readiness or its unchanged local/Host/
    /// decode error. It creates no native resource, callback, wait or clock grant.
    pub fn readiness(&self) -> Result<Readiness, Error> {
        self.observer.event_readiness()
    }
    /// Submit real bounded native asynchronous work once. Its nonzero ID is
    /// admission only; inspect a later response/error event with that exact ID.
    /// Borrow complete canonical `input` until this call returns. The Stream's
    /// real source and observer perform the original service_submit operation;
    /// return its full nonzero u64 or exact local/Host error. No later response
    /// is awaited or decoded, no timeout is treated as zero effect, and no raw12
    /// owned-native client/retained Service incarnation is synthesized.
    pub fn submit(&self, input: &[u8]) -> Result<u64, Error> {
        self.source.submit_service(&self.observer, input)
    }
    /// Retire the source separately; observer remains available for permitted
    /// error/closed metadata. This never cancels another principal's work.
    /// Returns the source's exact checked close result. After successful local
    /// preflight the source stays retired even on an imported failure, while
    /// the observer's lifetime and separately admitted control mask are unchanged.
    pub fn close_source(&mut self) -> Result<(), Error> {
        self.source.close()
    }
    /// Close only the observer once, preserving the real cleanup status.
    /// Returns its ordinary close result without closing the transferred source.
    /// The remaining source still requires explicit checked close_source or
    /// best-effort destruction. A failure never authorizes reopening/replay.
    pub fn close(&mut self) -> Result<(), Error> {
        self.observer.close()
    }
    /// Revoke only the observer alias, with no inferred source/cancel-any rights.
    /// Returns its exact revoke result and retires the observer after successful
    /// local preflight. The source remains independently owned; alias siblings
    /// are subject to actual Host revocation rather than local field rewriting.
    pub fn revoke(&mut self) -> Result<(), Error> {
        self.observer.revoke()
    }
}

#[cfg(feature = "alloc")]
struct ExecutorEntry {
    stream: Stream,
    callback: alloc::boxed::Box<dyn for<'a> FnMut(Event<'a>) -> Result<(), Error>>,
}
/// Bounded registering executor for unified events, enabled by `alloc`.
/// Existing legacy Subscription executors keep their original queue semantics.
/// This executor owns Stream registrations and polls each once per explicit pass;
/// no background task, implicit clock or native callback enters Wasm.
#[cfg(feature = "alloc")]
pub struct Executor {
    entries: alloc::vec::Vec<ExecutorEntry>,
    scratch: alloc::vec::Vec<u8>,
    closed: bool,
}
#[cfg(feature = "alloc")]
impl Executor {
    /// Allocate64..4194304 bytes including the envelope; host quotas stay fixed.
    /// `capacity` is this executor's reused scratch byte size. Returns a new
    /// empty open executor, or Invalid22 outside that range before allocation.
    /// Allocation can abort; it is not converted into an Error. No Stream,
    /// native watcher, callback, default clock or worker is created here.
    pub fn new(capacity: usize) -> Result<Self, Error> {
        if !(64..=4_194_304).contains(&capacity) {
            return Err(Error::new(codes::INVALID));
        }
        Ok(Self {
            entries: alloc::vec::Vec::new(),
            scratch: alloc::vec![0;capacity],
            closed: false,
        })
    }
    /// Transfer one Stream and guest callback, up to1024 registrations. A
    /// rejected transferred Stream drops its owners; check setup errors first.
    /// `callback` is retained as a boxed `'static` Guest closure; its Event borrow
    /// is valid only during each invocation. Returns `Ok(())`, closed9 or full90.
    /// On rejection the consumed Stream is dropped, with cleanup errors outside
    /// this result. Successful boxing/Vec growth can allocate or abort; this
    /// registration itself performs no watch, native call or callback invocation.
    pub fn add(
        &mut self,
        stream: Stream,
        callback: impl for<'a> FnMut(Event<'a>) -> Result<(), Error> + 'static,
    ) -> Result<(), Error> {
        if self.closed {
            return Err(Error::new(codes::BAD_HANDLE));
        }
        if self.entries.len() >= 1024 {
            return Err(Error::new(codes::TOO_LARGE));
        }
        self.entries.push(ExecutorEntry {
            stream,
            callback: alloc::boxed::Box::new(callback),
        });
        Ok(())
    }
    /// Remove a Stream without closing either of its owners. Rust's exclusive
    /// borrow prevents registration mutation or nested spin during this pass.
    /// `index` is the current zero-based registration index; later entries shift
    /// down. Returns the owned Stream, closed9 or invalid-index22. Its callback
    /// is dropped; the caller now owns both actual Stream cleanup obligations.
    pub fn remove(&mut self, index: usize) -> Result<Stream, Error> {
        if self.closed {
            return Err(Error::new(codes::BAD_HANDLE));
        }
        if index >= self.entries.len() {
            return Err(Error::new(codes::INVALID));
        }
        Ok(self.entries.remove(index).stream)
    }
    /// Poll each registration once; idle is skipped and the first actual
    /// failure ends the pass. Previously consumed events are never replayed.
    /// Returns the number of successful callbacks only if the whole pass
    /// succeeds; empty/fully idle passes return0. Closed executors return9.
    /// On a later polling/Binding/callback error the exact error is returned
    /// without a partial count, although earlier callbacks/effects remain.
    /// This is a finite work pass, with no blocking wait, sleep or clock import.
    pub fn spin_once(&mut self) -> Result<usize, Error> {
        if self.closed {
            return Err(Error::new(codes::BAD_HANDLE));
        }
        let mut delivered = 0;
        for entry in &mut self.entries {
            let callback = &mut entry.callback;
            if entry
                .stream
                .spin_once(&mut self.scratch, |event| callback(event))?
            {
                delivered += 1;
            }
        }
        Ok(delivered)
    }
    /// Attempt every live observer AND transferred source close once, then
    /// retire registrations. Report the first error without skipping cleanup.
    /// Marks the executor closed first, then visits each registration's observer
    /// followed by source, skipping already retired owners. Returns `Ok(())`
    /// when all ordinary attempts succeed, the first ordinary error otherwise,
    /// or9 on repeated close without another pass. Registrations/callbacks are
    /// then dropped; their destructors and later Guest aborts cannot promise a
    /// complete independent cleanup report. This does not revoke either alias.
    pub fn close(&mut self) -> Result<(), Error> {
        if self.closed {
            return Err(Error::new(codes::BAD_HANDLE));
        }
        self.closed = true;
        let mut first = None;
        for entry in &mut self.entries {
            for owner in [&mut entry.stream.observer, &mut entry.stream.source] {
                if owner.is_open() {
                    if let Err(e) = owner.close() {
                        if first.is_none() {
                            first = Some(e);
                        }
                    }
                }
            }
        }
        self.entries.clear();
        match first {
            Some(e) => Err(e),
            None => Ok(()),
        }
    }
}
