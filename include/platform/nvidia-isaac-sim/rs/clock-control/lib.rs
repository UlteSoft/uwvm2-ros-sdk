//! @brief Complete typed clock-program operations over the shared raw12 SDK.
//! @details One local session, one pending request, forty explicit steps. The
//! actual native owner chooses Kit/domain/topics, performs real updates/pacing
//! and returns actual Clock callbacks. This crate supplies no simulator or clock.
//! Preparation must generate the complete records from clock_control's catalog;
//! positive use additionally requires genuine ROSIDL/native identity binding.
//! @permissions Exact independently granted call/observer/availability owners,
//! native service/QoS/schema/deadline policy and separately admitted simulation.
//! @see Session; roswasm_owned_service::Group; README.md
#![no_std]

use roswasm::Error;
/// @brief Original shared full QoS, receipt and same-take metadata types.
/// @details Reexports preserve the shared representation and ownership contracts.
/// @see Session::connect; Completion
pub use roswasm_owned_service::wire::{Qos, Receipt, ServiceInfo, Time};
use roswasm_owned_service::{
    Client, Codec, Config, ControlEvent, Definition, Delivery, Diagnostic, Group, Ticket,
};

// This file is emitted by the real shared bounded-record generator. Source
// preparation is required; there is deliberately no handwritten record fallback.
#[path = "generated/service_identity.rs"]
mod identity;
#[path = "generated/bounded_records.rs"]
mod records;
/// @brief Full actual Clock callback with signed seconds and nanoseconds.
/// @details Owned generated value; phase/frame identify dispatch, not publication.
/// @see Session::poll; Completion::response
pub use records::Ros2Uwvm_isaac_sim_bridgeMsgClockEvent as ClockEvent;
/// @brief Complete generated allowlisted operation request, including correlation.
/// @details The SDK fills all scheduling fields; it exposes no arbitrary Kit API.
/// @see Session::start; Session::step; Session::cancel_native
pub use records::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request as Request;
/// @brief Complete generated reply, retaining status, cleanup, counters and event.
/// @details has_event=false requires an all-zero event, and never means Clock(0).
/// @see Completion; Session::poll
pub use records::Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response as Response;

fn error(code: u32) -> Error {
    Error::new(code)
}
fn updates(steps: u32) -> u64 {
    4 + steps as u64 + u64::from(steps > 0) + u64::from(steps > 10)
}

/// @brief One fully decoded, correlated and commit-ACKed actual native reply.
/// @details Owns every returned field plus same-take metadata; no borrowed packet
/// escapes. Status failures are returned as errors rather than default values.
/// @see Session::poll
pub struct Completion {
    /// @brief Full successful ClockControl response, including cleanup outcome.
    /// @details Counters and every event field passed the session invariants.
    /// @see Response
    pub response: Response,
    /// @brief Actual same-take native sequence, timestamps and writer identity.
    /// @details These metadata bits establish no permission or native type proof.
    /// @see roswasm_owned_service::ServiceInfo
    pub info: ServiceInfo,
}

struct Pending {
    ticket: Ticket,
    operation: u8,
    phase: u8,
    frame: u32,
}

/// @brief Caller-driven, thread-local owner of one exact native clock session.
/// @details A failed/uncertain request makes business operations terminal. Local
/// abandon and endpoint close do not acknowledge native simulation cancellation.
/// Use cancel_native only with no pending request and inspect its real reply.
/// Explicit close preserves primary and independent shared transport diagnostics.
/// @see Session::connect; Session::close; Session::diagnostics
pub struct Session {
    group: Group,
    client: Option<Client<Request, Response>>,
    pending: Option<Pending>,
    last_response: Option<(Response, ServiceInfo)>,
    last_control: Option<ControlEvent>,
    nonce: u64,
    sequence: u32,
    steps: u32,
    state: u8,
    seen: u8,
    primary: u32,
    cleanup: u32,
    closed: bool,
}

impl Session {
    /// @brief Preallocate finite storage without opening a Host owner.
    /// @details Requires nonce>0; stores at most64 lifetime transactions and one
    /// pending request. Native ABI refusal/allocation errors remain original.
    /// @param[in] nonce Exact externally paired positive uint64 session value;
    /// correlation is application data and provides no authentication.
    /// @return New owner or22/12/95/shared error. No Kit or DDS work is performed.
    /// @see connect
    pub fn new(nonce: u64) -> Result<Self, Error> {
        if nonce == 0 {
            return Err(error(22));
        }
        let group = Group::new(Config {
            endpoints: 1,
            transactions_per_endpoint: 64,
            maximum_request: Request::MAX_WIRE_BYTES,
            maximum_response: Response::MAX_WIRE_BYTES,
        })?;
        Ok(Self {
            group,
            client: None,
            pending: None,
            last_response: None,
            last_control: None,
            nonce,
            sequence: 0,
            steps: 0,
            state: 0,
            seen: 0,
            primary: 0,
            cleanup: 0,
            closed: false,
        })
    }

    fn fail<T>(&mut self, code: u32) -> Result<T, Error> {
        self.primary = if self.primary == 0 {
            code
        } else {
            self.primary
        };
        self.state = 3;
        Err(error(code))
    }

    /// @brief Activate genuine retained owners and compare both actual QoS values.
    /// @details Exactly one connection attempt; no reopen after refusal. Receipt
    /// comes from the shared SDK's full native UMRE validation. Availability uses
    /// its own granted owner, not a probe client or graph/clock fallback.
    /// @param[in] call Exact pregranted call alias, UTF8 length1..255 without NUL.
    /// @param[in] observer Distinct corresponding pregranted observer alias.
    /// @param[in] availability Distinct pregranted availability alias.
    /// @param[in] expected Both independently selected actual native QoS profiles.
    /// @param[in] wait_ns Explicit availability wait0..1000000000ns;0 observes once.
    /// @return Full actual receipt, or original error/22/QoS mismatch/11 unavailable.
    /// No business request is sent until receipt/QoS/availability all pass.
    /// @see receipt; diagnostics; close
    pub fn connect(
        &mut self,
        call: &str,
        observer: &str,
        availability: &str,
        expected: [Qos; 2],
        wait_ns: u64,
    ) -> Result<Receipt, Error> {
        if self.closed || self.state == 3 {
            return Err(error(125));
        }
        if self.client.is_some() || self.group.attempted_endpoints() != 0 {
            return Err(error(17));
        }
        if wait_ns > 1_000_000_000 {
            return Err(error(22));
        }
        let definition = Definition {
            native_type: identity::NATIVE_TYPE,
            canonical_identity: identity::CANONICAL_IDENTITY,
            request: Codec::canonical(Request::MAX_WIRE_BYTES),
            response: Codec::canonical(Response::MAX_WIRE_BYTES),
        };
        let client = match self
            .group
            .client(definition, call, observer, Some(availability))
        {
            Ok(value) => value,
            Err(e) => return self.fail(e.code),
        };
        self.client = Some(client);
        let receipt = match self.client.as_ref().unwrap().receipt(&self.group) {
            Ok(value) => value,
            Err(e) => return self.fail(e.code),
        };
        if receipt.qos != expected {
            return self.fail(22);
        }
        match self
            .client
            .as_ref()
            .unwrap()
            .available(&mut self.group, wait_ns)
        {
            Ok(true) => Ok(receipt),
            Ok(false) => self.fail(11),
            Err(e) => self.fail(e.code),
        }
    }

    /// @brief Copy the actual saved receipt without native reactivation.
    /// @details The shared group validates original ownership; copies are data.
    /// @return Actual full receipt,9 before connection or original shared error.
    /// @see connect
    pub fn receipt(&self) -> Result<Receipt, Error> {
        self.client.as_ref().ok_or(error(9))?.receipt(&self.group)
    }

    fn submit(
        &mut self,
        operation: u8,
        phase: u8,
        frame: u32,
        impulse: bool,
        extra_update: bool,
        pacing_milliseconds: u16,
    ) -> Result<Ticket, Error> {
        if self.closed || self.state >= 2 {
            return Err(error(125));
        }
        if self.pending.is_some() {
            return Err(error(17));
        }
        let mut request = Request::default();
        request.operation = operation;
        request.session_nonce = self.nonce;
        request.request_sequence = self.sequence;
        request.phase = phase;
        request.frame = frame;
        request.impulse = impulse;
        request.extra_update = extra_update;
        request.pacing_milliseconds = pacing_milliseconds;
        let result = self
            .client
            .as_ref()
            .ok_or(error(9))?
            .submit(&mut self.group, &request);
        match result {
            Ok(ticket) => {
                self.pending = Some(Pending {
                    ticket,
                    operation,
                    phase,
                    frame,
                });
                Ok(ticket)
            }
            Err(e) => self.fail(e.code),
        }
    }

    /// @brief Submit original graph setup, discovery delay and playback start once.
    /// @details Sends START sequence0 with1000ms discovery pacing. No updates run
    /// locally; actual setup returns explicit_app_updates=4 from the native owner.
    /// @return Actual admitted ticket or original error/17/22/125; not completion.
    /// @see poll
    pub fn start(&mut self) -> Result<Ticket, Error> {
        if self.state != 0 || self.sequence != 0 {
            return Err(error(22));
        }
        self.submit(1, 0, 0, false, false, 1000)
    }

    /// @brief Submit one explicit original frame with exact impulse scheduling.
    /// @details The application calls forty times: phase0 frames0..19 thenphase1.
    /// Frames0/10 impulse; onlyphase0 impulse has the original extra update. Each
    /// native step performs one real callback poll and100ms source pacing.
    /// @param[in] phase Next phase0 or1; out-of-order requests refuse locally22.
    /// @param[in] frame Next phase-local frame0..19, never an elapsed timestamp.
    /// @return Actual admitted ticket or original error/22/17/125; no hidden loop.
    /// @see poll; finish
    pub fn step(&mut self, phase: u8, frame: u32) -> Result<Ticket, Error> {
        if self.state != 1
            || self.steps >= 40
            || phase as u32 != self.steps / 20
            || frame != self.steps % 20
        {
            return Err(error(22));
        }
        let impulse = frame % 10 == 0;
        self.submit(2, phase, frame, impulse, phase == 0 && impulse, 100)
    }

    /// @brief Submit acknowledged playback/reader retirement after all forty frames.
    /// @details Local completeness additionally requires both actual callback kinds
    /// in each phase. Missing observations return110 with session still active so
    /// the caller can explicitly cancel; invented timestamps are never inserted.
    /// @return Actual ticket,22 wrong progression,110 missing callbacks or shared error.
    /// @see poll; cancel_native
    pub fn finish(&mut self) -> Result<Ticket, Error> {
        if self.state != 1 || self.steps != 40 {
            return Err(error(22));
        }
        if self.seen != 15 {
            return Err(error(110));
        }
        self.submit(3, 0, 0, false, false, 0)
    }

    /// @brief Request explicit native simulation retirement with no pending work.
    /// @details Distinct from local ticket abandon. Only a successful correlated
    /// CANCEL reply acknowledges native cleanup; no physical stop claim follows.
    /// @return Actual ticket,17 pending,125 uncertain/retired or original shared error.
    /// @see poll; abandon_pending; close
    pub fn cancel_native(&mut self) -> Result<Ticket, Error> {
        self.submit(4, 0, 0, false, false, 0)
    }

    /// @brief Poll one actual reply; expose it only after full typed decode and ACK.
    /// @details Validates ticket/nonce/sequence/status/state/steps/update count,
    /// cleanup status and every event field. Native error or uncertain transport
    /// is terminal and is never replayed. Idle is None, not an empty Clock sample.
    /// @return Complete actual value+metadata, None idle, or original error/22.
    /// No clocks/sleeps/native updates or fallback providers are called here.
    /// @see abandon_pending; diagnostics
    pub fn poll(&mut self) -> Result<Option<Completion>, Error> {
        if self.closed || self.state >= 2 {
            return Err(error(125));
        }
        let pending = self.pending.as_ref().ok_or(error(22))?;
        let ticket = pending.ticket;
        let operation = pending.operation;
        let phase = pending.phase;
        let frame = pending.frame;
        let delivery = match self.client.as_ref().ok_or(error(9))?.poll(&mut self.group) {
            Ok(value) => value,
            Err(e) => return self.fail(e.code),
        };
        let (actual, value, info) = match delivery {
            None => return Ok(None),
            Some(Delivery::Control(c)) => {
                self.last_control = Some(c);
                return self.fail(if c.error != 0 { c.error } else { 125 });
            }
            Some(Delivery::Value {
                ticket,
                value,
                info,
            }) => (ticket, value, info),
        };
        // A real committed reply consumes this pending transaction even on refusal.
        self.pending = None;
        self.last_response = Some((value.clone(), info));
        if actual != ticket
            || value.session_nonce != self.nonce
            || value.request_sequence != self.sequence
        {
            return self.fail(22);
        }
        if value.status != 0 {
            return self.fail(value.status);
        }
        if value.cleanup_status != 0 {
            return self.fail(value.cleanup_status);
        }
        let completed = self.steps + u32::from(operation == 2);
        let expected_updates = if operation == 4 && self.state == 0 {
            1
        } else {
            updates(completed)
        };
        if value.state != (if operation >= 3 { 2 } else { 1 })
            || value.completed_steps != completed
            || value.actual_app_updates != expected_updates
        {
            return self.fail(22);
        }
        let event = &value.event;
        if value.has_event {
            if operation != 2
                || !(1..=2).contains(&event.kind)
                || event.phase != phase
                || event.frame != frame
                || event.nanosec >= 1_000_000_000
            {
                return self.fail(22);
            }
            self.seen |= 1 << (phase * 2 + event.kind - 1);
        } else if event.kind != 0
            || event.phase != 0
            || event.frame != 0
            || event.sec != 0
            || event.nanosec != 0
        {
            return self.fail(22);
        }
        self.steps = completed;
        self.sequence += 1;
        self.state = value.state;
        Ok(Some(Completion {
            response: value,
            info,
        }))
    }

    /// @brief Locally abandon one pending ticket and mark native outcome uncertain.
    /// @details Does not send CANCEL, undo Kit effects or permit resubmission.
    /// Original abandon errors remain visible through diagnostics and cleanup.
    /// @return Original abandon result;22 if no pending request,9 if unconnected.
    /// @see cancel_native; close
    pub fn abandon_pending(&mut self) -> Result<(), Error> {
        let pending = self.pending.take().ok_or(error(22))?;
        self.primary = if self.primary == 0 { 90 } else { self.primary };
        self.state = 3;
        self.client
            .as_ref()
            .ok_or(error(9))?
            .abandon(&mut self.group, pending.ticket)
    }

    /// @brief Once-close all actual retained/native/raw owners independently.
    /// @details Attempts pending abandonment before group shutdown. Saves cleanup
    /// separately and never overwrites an earlier business failure. Repeated calls
    /// return the same result; process traps can prevent ordinary Drop cleanup.
    /// @return First business status or cleanup status,0 when both are successful.
    /// @see diagnostics; cleanup_status
    pub fn close(&mut self) -> u32 {
        if self.closed {
            return if self.primary != 0 {
                self.primary
            } else {
                self.cleanup
            };
        }
        if self.pending.is_some() {
            if let Err(e) = self.abandon_pending() {
                self.cleanup = e.code;
            }
        }
        if let Err(e) = self.group.shutdown() {
            if self.cleanup == 0 {
                self.cleanup = e.code;
            }
        }
        self.closed = true;
        if self.primary != 0 {
            self.primary
        } else {
            self.cleanup
        }
    }

    /// @brief Copy the full shared activation/decode/ACK/abandon/retire/close journal.
    /// @details Available after close; None means no endpoint attempt was recorded.
    /// @return Owned actual diagnostic snapshot, never a replacement receipt.
    /// @see close
    pub fn diagnostics(&self) -> Option<Diagnostic> {
        self.group.diagnostics(0)
    }

    /// @brief Borrow the latest complete body-bearing actual reply and metadata.
    /// @details Retained after native error, local business rejection and close.
    /// The body passed shared decode/ACK but may have failed nonce/status/state
    /// checks; it is diagnostic data, never a successful Completion. Idle/control
    /// or decode failure leaves the preceding body snapshot. Borrow ends before
    /// any next mutable session operation; the fixed scalar-only clone allocates
    /// no containers and never aliases the transport packet.
    /// @return Full actual response/metadata, or None before a body was committed.
    /// @see poll; diagnostics
    pub fn last_response(&self) -> Option<(&Response, &ServiceInfo)> {
        self.last_response
            .as_ref()
            .map(|(response, info)| (response, info))
    }

    /// @brief Copy the latest actual commit-ACKed resource/endpoint control.
    /// @details Preserves every returned kind/flags/error/ticket field. Controls
    /// have no native service Time/writer, so none is fabricated. Idle or body
    /// delivery leaves this previous control observation, even after close.
    /// @return Actual control snapshot, or None before a control was committed.
    /// @see poll; diagnostics
    pub fn last_control(&self) -> Option<ControlEvent> {
        self.last_control
    }

    /// @brief Read the independent once-cleanup status after explicit close.
    /// @details Zero before close does not prove cleanup ran; inspect diagnostics.
    /// @return Original cleanup status, unaffected by earlier business failures.
    /// @see close
    pub fn cleanup_status(&self) -> u32 {
        self.cleanup
    }
}

impl Drop for Session {
    fn drop(&mut self) {
        self.close();
    }
}
