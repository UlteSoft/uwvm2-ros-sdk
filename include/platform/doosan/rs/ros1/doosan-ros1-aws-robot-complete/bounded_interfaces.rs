//! @file bounded_interfaces.rs
//! @brief Typed service and action operations for the exact doosan source domain.
//! @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
//! identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
//! roles; this module grants no resource permission.
//! @see share/platform/doosan/domains/doosan-ros1-aws-robot-complete.ir.json
//! @see document/platform/doosan/en_US/README.md

//! Generated typed custom RPC owners. Enable roswasm's alloc and selected ROS feature.
//! Declare this module beside bounded_records; no builtin factory is reinterpreted.
//! All aliases are explicit. Operations are caller-driven and never retried.
extern crate alloc;
use super::bounded_records::*;
use alloc::{rc::Rc, vec::Vec};
use core::{cell::Cell, marker::PhantomData};
use roswasm::events::{self, Kind};
use roswasm::typed::Canonical;
use roswasm::{codes, Backend, Capability, Error, Operation};

/// A generated component's finite bound and actual ROS version, not a grant.
pub trait Component: Canonical {
    const MAX_WIRE: usize;
    const ROS_VERSION: u8;
}
fn invalid() -> Error {
    Error::new(codes::INVALID)
}
fn id(bytes: &[u8]) -> Result<u64, Error> {
    let value = u64::from_le_bytes(
        bytes
            .get(..8)
            .ok_or(invalid())?
            .try_into()
            .map_err(|_| invalid())?,
    );
    if value == 0 {
        Err(invalid())
    } else {
        Ok(value)
    }
}
fn frame(ticket: u64, kind: Option<u8>, body: &[u8]) -> Result<Vec<u8>, Error> {
    if ticket == 0 {
        return Err(invalid());
    }
    let mut wire = Vec::with_capacity(9 + body.len());
    wire.extend_from_slice(&ticket.to_le_bytes());
    if let Some(value) = kind {
        wire.push(value);
    }
    wire.extend_from_slice(body);
    Ok(wire)
}
fn remove(values: &mut Vec<u64>, ticket: u64) -> bool {
    if let Some(i) = values.iter().position(|v| *v == ticket) {
        values.swap_remove(i);
        true
    } else {
        false
    }
}
fn owned(values: &[u64], ticket: u64) -> Result<(), Error> {
    if ticket == 0 || !values.contains(&ticket) {
        Err(Error::new(codes::BAD_HANDLE))
    } else {
        Ok(())
    }
}

/// Every owned cleanup result, preserving a separate primary operation failure.
#[derive(Debug)]
pub struct Cleanup {
    pub primary: u32,
    pub statuses: Vec<Result<(), Error>>,
}
/// Construction refusal plus every attempted rollback, with no automatic reopen.
#[derive(Debug)]
pub struct OpenError {
    pub primary: Error,
    pub rollback: Cleanup,
}
struct Owners {
    caps: Vec<Capability>,
    busy: Rc<Cell<bool>>,
    capacity: usize,
}
struct Pass(Rc<Cell<bool>>);
impl Drop for Pass {
    fn drop(&mut self) {
        self.0.set(false);
    }
}
impl Owners {
    fn open(
        backend: Backend,
        version: u8,
        aliases: &[&str],
        capacity: usize,
    ) -> Result<Self, OpenError> {
        let mut value = Self {
            caps: Vec::new(),
            busy: Rc::new(Cell::new(false)),
            capacity,
        };
        let result = (|| {
            if !(1..=1024).contains(&capacity)
                || !(1..=2).contains(&version)
                || aliases.is_empty()
                || aliases.iter().enumerate().any(|(i, a)| {
                    a.is_empty()
                        || a.len() > 255
                        || a.as_bytes().contains(&0)
                        || aliases[..i].contains(a)
                })
            {
                return Err(invalid());
            }
            if backend.abi_version() != 1 {
                return Err(Error::new(codes::UNSUPPORTED));
            }
            for alias in aliases {
                let cap = Capability::open(backend, alias)?;
                if value
                    .caps
                    .iter()
                    .any(|old| old.raw_handle().ok() == cap.raw_handle().ok())
                {
                    return Err(Error::new(codes::CONFLICT));
                }
                value.caps.push(cap);
            }
            Ok(())
        })();
        match result {
            Ok(()) => Ok(value),
            Err(primary) => {
                let rollback = value.cleanup(primary.code, false);
                Err(OpenError { primary, rollback })
            }
        }
    }
    fn cap(&self, index: usize) -> Result<&Capability, Error> {
        let cap = self.caps.get(index).ok_or(Error::new(codes::BAD_HANDLE))?;
        cap.raw_handle()?;
        Ok(cap)
    }
    fn idle(&self) -> Result<(), Error> {
        if self.busy.get() {
            return Err(Error::new(codes::CONFLICT));
        }
        self.cap(0)?;
        Ok(())
    }
    fn enter(&self) -> Result<Pass, Error> {
        self.idle()?;
        self.busy.set(true);
        Ok(Pass(Rc::clone(&self.busy)))
    }
    fn cleanup(&mut self, primary: u32, revoke: bool) -> Cleanup {
        let mut statuses = Vec::new();
        if self.busy.get() {
            statuses.push(Err(Error::new(codes::CONFLICT)));
            return Cleanup { primary, statuses };
        }
        for cap in self.caps.iter_mut().rev() {
            if cap.is_open() {
                statuses.push(if revoke { cap.revoke() } else { cap.close() });
            }
        }
        Cleanup { primary, statuses }
    }
    fn request(
        &self,
        index: usize,
        op: Operation,
        input: &[u8],
        maximum: usize,
    ) -> Result<Vec<u8>, Error> {
        let mut output = alloc::vec![0u8;maximum];
        let used = self.cap(index)?.request(op, input, &mut output)?;
        output.truncate(used);
        Ok(output)
    }
    fn zero(&self, index: usize, op: Operation, input: &[u8]) -> Result<(), Error> {
        if self.request(index, op, input, 0)?.is_empty() {
            Ok(())
        } else {
            Err(invalid())
        }
    }
    fn poll(&self, maximum: usize) -> Result<Vec<u8>, Error> {
        let mut bytes = alloc::vec![0u8;maximum];
        let used = self.cap(0)?.poll(&mut bytes)?;
        bytes.truncate(used);
        Ok(bytes)
    }
}

/// A successfully decoded asynchronous completion; admission itself is not completion.
pub enum Completion<T> {
    Response { request_id: u64, value: T },
    Failure { request_id: u64, error: u32 },
}
/// Custom service owner. Optional observer_alias opens a distinct response/error
/// observer. That observer is exclusive to this facade and starts unconsumed.
pub struct ServiceClient<Q: Component, S: Component> {
    owners: Owners,
    pending: Vec<u64>,
    binding: Option<(u64, u64, u64)>,
    marker: PhantomData<(Q, S)>,
}
impl<Q: Component, S: Component> ServiceClient<Q, S> {
    /// Open explicitly granted call and optional observer roles exactly once.
    pub fn open(
        backend: Backend,
        alias: &str,
        observer_alias: Option<&str>,
        capacity: usize,
    ) -> Result<Self, OpenError> {
        let aliases = if let Some(o) = observer_alias {
            alloc::vec![alias, o]
        } else {
            alloc::vec![alias]
        };
        let owners = Owners::open(backend, Q::ROS_VERSION, &aliases, capacity)?;
        Ok(Self {
            owners,
            pending: Vec::new(),
            binding: None,
            marker: PhantomData,
        })
    }
    /// Perform one synchronous call and decode only a complete generated response.
    pub fn call(&self, value: &Q) -> Result<S, Error> {
        self.owners.idle()?;
        S::decode(
            &self
                .owners
                .request(0, Operation::ServiceCall, &value.encode()?, S::MAX_WIRE)?,
        )
    }
    /// Admit a copied request using the real service_submit import, never deferred call().
    pub fn submit(&mut self, value: &Q) -> Result<u64, Error> {
        self.owners.idle()?;
        if self.owners.caps.len() != 2 {
            return Err(Error::new(codes::DENIED));
        }
        if self.pending.len() == self.owners.capacity {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let observer = self.owners.cap(1)?;
        let ticket = self
            .owners
            .cap(0)?
            .submit_service(observer, &value.encode()?)?;
        if self.pending.contains(&ticket) {
            return Err(invalid());
        }
        self.pending.push(ticket);
        Ok(ticket)
    }
    /// Poll the existing SDK unified decoder; enforce source/backend/stream and
    /// owned correlation before committing a typed response or numeric failure.
    pub fn poll_completion(&mut self) -> Result<Completion<S>, Error> {
        self.owners.idle()?;
        if self.owners.caps.len() != 2 {
            return Err(Error::new(codes::DENIED));
        }
        let source = self.owners.cap(0)?.raw_handle()?;
        let observer = self.owners.cap(1)?;
        let mut bytes = alloc::vec![0u8;64+S::MAX_WIRE];
        let n = observer.poll_event_v1(&mut bytes)?;
        let event = events::decode(&bytes[..n])?;
        let (last, instance, session) = self.binding.unwrap_or((0, event.instance, event.session));
        if event.backend != Q::ROS_VERSION
            || event.source != source
            || event.sequence != last.checked_add(1).ok_or(invalid())?
            || event.instance != instance
            || event.session != session
        {
            return Err(invalid());
        }
        self.binding = Some((event.sequence, instance, session));
        if event.kind == Kind::ResourceClosed {
            return Err(Error::new(codes::BAD_HANDLE));
        }
        owned(&self.pending, event.correlation)?;
        let result = match event.kind {
            Kind::ServiceResponse => Completion::Response {
                request_id: event.correlation,
                value: S::decode(event.body)?,
            },
            Kind::ResourceError => Completion::Failure {
                request_id: event.correlation,
                error: event.error,
            },
            _ => return Err(invalid()),
        };
        remove(&mut self.pending, event.correlation);
        Ok(result)
    }
    /// Attempt every close once; no retry after a host retirement failure.
    pub fn close_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, false);
        if !self.owners.busy.get() {
            self.pending.clear();
        }
        report
    }
    /// Explicitly revoke existing roles; this creates no stronger permission.
    pub fn revoke_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, true);
        if !self.owners.busy.get() {
            self.pending.clear();
        }
        report
    }
}

/// Typed incoming service, with separate advertise/respond ownership.
pub struct ServiceServer<Q: Component, S: Component> {
    owners: Owners,
    live: Vec<u64>,
    marker: PhantomData<(Q, S)>,
}
impl<Q: Component, S: Component> ServiceServer<Q, S> {
    /// Open both roles before activating advertisement; rollback remains inspectable.
    pub fn open(
        backend: Backend,
        advertise: &str,
        respond: &str,
        capacity: usize,
    ) -> Result<Self, OpenError> {
        let mut owners = Owners::open(backend, Q::ROS_VERSION, &[advertise, respond], capacity)?;
        if let Err(primary) = owners.cap(0).and_then(Capability::advertise_service) {
            let rollback = owners.cleanup(primary.code, false);
            return Err(OpenError { primary, rollback });
        }
        Ok(Self {
            owners,
            live: Vec::new(),
            marker: PhantomData,
        })
    }
    fn poll_inner(&mut self) -> Result<(u64, Q), Error> {
        if self.live.len() == self.owners.capacity {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let bytes = self.owners.poll(Q::MAX_WIRE + 8)?;
        let ticket = id(&bytes)?;
        if self.live.contains(&ticket) {
            return Err(invalid());
        }
        let value = Q::decode(&bytes[8..])?;
        self.live.push(ticket);
        Ok((ticket, value))
    }
    /// Poll at most one complete request. Again11 leaves all owner tables unchanged.
    pub fn poll_once(&mut self) -> Result<(u64, Q), Error> {
        self.owners.idle()?;
        self.poll_inner()
    }
    /// Respond only to a ticket delivered here; host still verifies principal/deadline.
    pub fn respond(&mut self, ticket: u64, value: &S) -> Result<(), Error> {
        owned(&self.live, ticket)?;
        self.owners.zero(
            1,
            Operation::ServiceRespond,
            &frame(ticket, None, &value.encode()?)?,
        )?;
        remove(&mut self.live, ticket);
        Ok(())
    }
    /// Run one local handler. Error/unwind releases the lease; no response is replayed.
    pub fn spin_once<F: FnOnce(u64, Q) -> Result<S, Error>>(
        &mut self,
        handler: F,
    ) -> Result<(), Error> {
        let _pass = self.owners.enter()?;
        let (ticket, value) = self.poll_inner()?;
        let response = handler(ticket, value)?;
        self.respond(ticket, &response)
    }
    /// Observe every role close, retaining the primary error separately.
    pub fn close_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, false);
        if !self.owners.busy.get() {
            self.live.clear();
        }
        report
    }
    /// Deliberately revoke the two granted aliases.
    pub fn revoke_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, true);
        if !self.owners.busy.get() {
            self.live.clear();
        }
        report
    }
}

/// Four mandatory action roles and an optional independently granted cancel-any role.
pub struct ActionClient<G: Component, R: Component, F: Component> {
    owners: Owners,
    goals: Vec<u64>,
    marker: PhantomData<(G, R, F)>,
}
impl<G: Component, R: Component, F: Component> ActionClient<G, R, F> {
    /// Role order is send, cancel-own, feedback, result; cancel-any is separate.
    pub fn open(
        backend: Backend,
        aliases: [&str; 4],
        cancel_any: Option<&str>,
        capacity: usize,
    ) -> Result<Self, OpenError> {
        let mut selected = aliases.to_vec();
        if let Some(alias) = cancel_any {
            selected.push(alias);
        }
        Ok(Self {
            owners: Owners::open(backend, G::ROS_VERSION, &selected, capacity)?,
            goals: Vec::new(),
            marker: PhantomData,
        })
    }
    /// Send once, admitting a unique nonzero locally owned goal.
    pub fn send_goal(&mut self, value: &G) -> Result<u64, Error> {
        self.owners.idle()?;
        if self.goals.len() == self.owners.capacity {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let bytes = self
            .owners
            .request(0, Operation::ActionSendGoal, &value.encode()?, 8)?;
        if bytes.len() != 8 {
            return Err(invalid());
        }
        let ticket = id(&bytes)?;
        if self.goals.contains(&ticket) {
            return Err(invalid());
        }
        self.goals.push(ticket);
        Ok(ticket)
    }
    fn cancel(&self, index: usize, op: Operation, ticket: u64) -> Result<bool, Error> {
        let bytes = self.owners.request(index, op, &ticket.to_le_bytes(), 1)?;
        if bytes.len() != 1 || bytes[0] > 1 {
            return Err(invalid());
        }
        Ok(bytes[0] != 0)
    }
    /// Cancellation acknowledgement retains the goal until its terminal result.
    pub fn cancel_own(&self, ticket: u64) -> Result<bool, Error> {
        self.owners.idle()?;
        owned(&self.goals, ticket)?;
        self.cancel(1, Operation::ActionCancelOwnGoal, ticket)
    }
    /// Requires the fifth role. Zero explicitly means cancel-all, never cancel-own.
    pub fn cancel_any(&self, ticket: u64) -> Result<bool, Error> {
        self.owners.idle()?;
        if self.owners.caps.len() != 5 {
            return Err(Error::new(codes::DENIED));
        }
        self.cancel(4, Operation::ActionCancelAnyGoal, ticket)
    }
    /// Explicit cancel-all still requires the fifth independently granted role.
    pub fn cancel_all(&self) -> Result<bool, Error> {
        self.cancel_any(0)
    }
    /// Receive feedback only for an owned ID and matching complete envelope.
    pub fn feedback(&self, ticket: u64) -> Result<F, Error> {
        self.owners.idle()?;
        owned(&self.goals, ticket)?;
        let bytes = self.owners.request(
            2,
            Operation::ActionReceiveFeedback,
            &ticket.to_le_bytes(),
            F::MAX_WIRE + 8,
        )?;
        if id(&bytes)? != ticket {
            return Err(invalid());
        }
        F::decode(&bytes[8..])
    }
    /// A fully decoded terminal kind2/3/4 removes exactly one local goal.
    pub fn result(&mut self, ticket: u64) -> Result<(u8, R), Error> {
        self.owners.idle()?;
        owned(&self.goals, ticket)?;
        let bytes = self.owners.request(
            3,
            Operation::ActionReceiveResult,
            &ticket.to_le_bytes(),
            R::MAX_WIRE + 9,
        )?;
        if bytes.len() < 9 || id(&bytes)? != ticket || !(2..=4).contains(&bytes[8]) {
            return Err(invalid());
        }
        let value = R::decode(&bytes[9..])?;
        remove(&mut self.goals, ticket);
        Ok((bytes[8], value))
    }
    /// Checked close attempts every acquired role exactly once.
    pub fn close_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, false);
        self.goals.clear();
        report
    }
    /// Checked revoke never silently promotes cancel-own to cancel-any.
    pub fn revoke_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, true);
        self.goals.clear();
        report
    }
}

/// Custom incoming action owner; feedback retains, successful terminal response retires.
pub struct ActionServer<G: Component, R: Component, F: Component> {
    owners: Owners,
    live: Vec<u64>,
    marker: PhantomData<(G, R, F)>,
}
impl<G: Component, R: Component, F: Component> ActionServer<G, R, F> {
    /// Activate the action only after both distinct aliases are open.
    pub fn open(
        backend: Backend,
        advertise: &str,
        respond: &str,
        capacity: usize,
    ) -> Result<Self, OpenError> {
        let mut owners = Owners::open(backend, G::ROS_VERSION, &[advertise, respond], capacity)?;
        if let Err(primary) = owners.zero(0, Operation::ActionAdvertise, &[]) {
            let rollback = owners.cleanup(primary.code, false);
            return Err(OpenError { primary, rollback });
        }
        Ok(Self {
            owners,
            live: Vec::new(),
            marker: PhantomData,
        })
    }
    fn poll_inner(&mut self) -> Result<(u64, G), Error> {
        if self.live.len() == self.owners.capacity {
            return Err(Error::new(codes::TOO_LARGE));
        }
        let bytes = self.owners.poll(G::MAX_WIRE + 8)?;
        let ticket = id(&bytes)?;
        if self.live.contains(&ticket) {
            return Err(invalid());
        }
        let value = G::decode(&bytes[8..])?;
        self.live.push(ticket);
        Ok((ticket, value))
    }
    /// Poll one complete goal; no native callback enters Rust.
    pub fn poll_once(&mut self) -> Result<(u64, G), Error> {
        self.owners.idle()?;
        self.poll_inner()
    }
    /// Send feedback for one locally received live goal.
    pub fn respond_feedback(&self, ticket: u64, value: &F) -> Result<(), Error> {
        owned(&self.live, ticket)?;
        self.owners.zero(
            1,
            Operation::ActionRespond,
            &frame(ticket, Some(1), &value.encode()?)?,
        )
    }
    /// Send terminal success2/abort3/cancel4; remove only after actual host success.
    pub fn respond_result(&mut self, ticket: u64, kind: u8, value: &R) -> Result<(), Error> {
        owned(&self.live, ticket)?;
        if !(2..=4).contains(&kind) {
            return Err(invalid());
        }
        self.owners.zero(
            1,
            Operation::ActionRespond,
            &frame(ticket, Some(kind), &value.encode()?)?,
        )?;
        remove(&mut self.live, ticket);
        Ok(())
    }
    /// Dispatch once under a local lease; the handler owns no capability and may
    /// return a decision for a later explicit response, with no implicit terminal reply.
    pub fn spin_once<T, H: FnOnce(u64, G) -> Result<T, Error>>(
        &mut self,
        handler: H,
    ) -> Result<T, Error> {
        let _pass = self.owners.enter()?;
        let (ticket, value) = self.poll_inner()?;
        handler(ticket, value)
    }
    /// Inspect every close; dropping this non-Clone owner is only best-effort cleanup.
    pub fn close_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, false);
        if !self.owners.busy.get() {
            self.live.clear();
        }
        report
    }
    /// Revoke existing aliases with separately observable cleanup errors.
    pub fn revoke_checked(&mut self, primary: u32) -> Cleanup {
        let report = self.owners.cleanup(primary, true);
        if !self.owners.busy.get() {
            self.live.clear();
        }
        report
    }
}

/// Complete canonical component bound for dsr_msgs/ConfigCreateModbusRequest.
impl Component for Ros1Dsr_msgsConfigCreateModbusRequest {
    const MAX_WIRE: usize = 531;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigCreateModbusResponse.
impl Component for Ros1Dsr_msgsConfigCreateModbusResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigCreateTcpRequest.
impl Component for Ros1Dsr_msgsConfigCreateTcpRequest {
    const MAX_WIRE: usize = 308;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigCreateTcpResponse.
impl Component for Ros1Dsr_msgsConfigCreateTcpResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigCreateToolRequest.
impl Component for Ros1Dsr_msgsConfigCreateToolRequest {
    const MAX_WIRE: usize = 340;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigCreateToolResponse.
impl Component for Ros1Dsr_msgsConfigCreateToolResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigDeleteModbusRequest.
impl Component for Ros1Dsr_msgsConfigDeleteModbusRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigDeleteModbusResponse.
impl Component for Ros1Dsr_msgsConfigDeleteModbusResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigDeleteTcpRequest.
impl Component for Ros1Dsr_msgsConfigDeleteTcpRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigDeleteTcpResponse.
impl Component for Ros1Dsr_msgsConfigDeleteTcpResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigDeleteToolRequest.
impl Component for Ros1Dsr_msgsConfigDeleteToolRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/ConfigDeleteToolResponse.
impl Component for Ros1Dsr_msgsConfigDeleteToolResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlPauseRequest.
impl Component for Ros1Dsr_msgsDrlPauseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlPauseResponse.
impl Component for Ros1Dsr_msgsDrlPauseResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlResumeRequest.
impl Component for Ros1Dsr_msgsDrlResumeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlResumeResponse.
impl Component for Ros1Dsr_msgsDrlResumeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlStartRequest.
impl Component for Ros1Dsr_msgsDrlStartRequest {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlStartResponse.
impl Component for Ros1Dsr_msgsDrlStartResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlStopRequest.
impl Component for Ros1Dsr_msgsDrlStopRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/DrlStopResponse.
impl Component for Ros1Dsr_msgsDrlStopResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCtrlBoxAnalogInputRequest.
impl Component for Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCtrlBoxAnalogInputResponse.
impl Component for Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCtrlBoxDigitalInputRequest.
impl Component for Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCtrlBoxDigitalInputResponse.
impl Component for Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentPoseRequest.
impl Component for Ros1Dsr_msgsGetCurrentPoseRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentPoseResponse.
impl Component for Ros1Dsr_msgsGetCurrentPoseResponse {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentSolutionSpaceRequest.
impl Component for Ros1Dsr_msgsGetCurrentSolutionSpaceRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentSolutionSpaceResponse.
impl Component for Ros1Dsr_msgsGetCurrentSolutionSpaceResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentTcpRequest.
impl Component for Ros1Dsr_msgsGetCurrentTcpRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentTcpResponse.
impl Component for Ros1Dsr_msgsGetCurrentTcpResponse {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentToolRequest.
impl Component for Ros1Dsr_msgsGetCurrentToolRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetCurrentToolResponse.
impl Component for Ros1Dsr_msgsGetCurrentToolResponse {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetDrlStateRequest.
impl Component for Ros1Dsr_msgsGetDrlStateRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetDrlStateResponse.
impl Component for Ros1Dsr_msgsGetDrlStateResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetExternalTorqueRequest.
impl Component for Ros1Dsr_msgsGetExternalTorqueRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetExternalTorqueResponse.
impl Component for Ros1Dsr_msgsGetExternalTorqueResponse {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetJointTorqueRequest.
impl Component for Ros1Dsr_msgsGetJointTorqueRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetJointTorqueResponse.
impl Component for Ros1Dsr_msgsGetJointTorqueResponse {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetLastAlarmRequest.
impl Component for Ros1Dsr_msgsGetLastAlarmRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetLastAlarmResponse.
impl Component for Ros1Dsr_msgsGetLastAlarmResponse {
    const MAX_WIRE: usize = 792;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetModbusInputRequest.
impl Component for Ros1Dsr_msgsGetModbusInputRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetModbusInputResponse.
impl Component for Ros1Dsr_msgsGetModbusInputResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotModeRequest.
impl Component for Ros1Dsr_msgsGetRobotModeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotModeResponse.
impl Component for Ros1Dsr_msgsGetRobotModeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotSpeedModeRequest.
impl Component for Ros1Dsr_msgsGetRobotSpeedModeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotSpeedModeResponse.
impl Component for Ros1Dsr_msgsGetRobotSpeedModeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotStateRequest.
impl Component for Ros1Dsr_msgsGetRobotStateRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotStateResponse.
impl Component for Ros1Dsr_msgsGetRobotStateResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotSystemRequest.
impl Component for Ros1Dsr_msgsGetRobotSystemRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetRobotSystemResponse.
impl Component for Ros1Dsr_msgsGetRobotSystemResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetToolDigitalInputRequest.
impl Component for Ros1Dsr_msgsGetToolDigitalInputRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetToolDigitalInputResponse.
impl Component for Ros1Dsr_msgsGetToolDigitalInputResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetToolForceRequest.
impl Component for Ros1Dsr_msgsGetToolForceRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/GetToolForceResponse.
impl Component for Ros1Dsr_msgsGetToolForceResponse {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/JogRequest.
impl Component for Ros1Dsr_msgsJogRequest {
    const MAX_WIRE: usize = 10;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/JogResponse.
impl Component for Ros1Dsr_msgsJogResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/JogMultiRequest.
impl Component for Ros1Dsr_msgsJogMultiRequest {
    const MAX_WIRE: usize = 57;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/JogMultiResponse.
impl Component for Ros1Dsr_msgsJogMultiResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveBlendingRequest.
impl Component for Ros1Dsr_msgsMoveBlendingRequest {
    const MAX_WIRE: usize = 2256;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveBlendingResponse.
impl Component for Ros1Dsr_msgsMoveBlendingResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveCircleRequest.
impl Component for Ros1Dsr_msgsMoveCircleRequest {
    const MAX_WIRE: usize = 2280;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveCircleResponse.
impl Component for Ros1Dsr_msgsMoveCircleResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveJointRequest.
impl Component for Ros1Dsr_msgsMoveJointRequest {
    const MAX_WIRE: usize = 83;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveJointResponse.
impl Component for Ros1Dsr_msgsMoveJointResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveJointxRequest.
impl Component for Ros1Dsr_msgsMoveJointxRequest {
    const MAX_WIRE: usize = 85;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveJointxResponse.
impl Component for Ros1Dsr_msgsMoveJointxResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveLineRequest.
impl Component for Ros1Dsr_msgsMoveLineRequest {
    const MAX_WIRE: usize = 100;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveLineResponse.
impl Component for Ros1Dsr_msgsMoveLineResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MovePauseRequest.
impl Component for Ros1Dsr_msgsMovePauseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MovePauseResponse.
impl Component for Ros1Dsr_msgsMovePauseResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MovePeriodicRequest.
impl Component for Ros1Dsr_msgsMovePeriodicRequest {
    const MAX_WIRE: usize = 107;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MovePeriodicResponse.
impl Component for Ros1Dsr_msgsMovePeriodicResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveResumeRequest.
impl Component for Ros1Dsr_msgsMoveResumeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveResumeResponse.
impl Component for Ros1Dsr_msgsMoveResumeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveSpiralRequest.
impl Component for Ros1Dsr_msgsMoveSpiralRequest {
    const MAX_WIRE: usize = 67;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveSpiralResponse.
impl Component for Ros1Dsr_msgsMoveSpiralResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveSplineJointRequest.
impl Component for Ros1Dsr_msgsMoveSplineJointRequest {
    const MAX_WIRE: usize = 2239;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveSplineJointResponse.
impl Component for Ros1Dsr_msgsMoveSplineJointResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveSplineTaskRequest.
impl Component for Ros1Dsr_msgsMoveSplineTaskRequest {
    const MAX_WIRE: usize = 2257;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveSplineTaskResponse.
impl Component for Ros1Dsr_msgsMoveSplineTaskResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveStopRequest.
impl Component for Ros1Dsr_msgsMoveStopRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveStopResponse.
impl Component for Ros1Dsr_msgsMoveStopResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveWaitRequest.
impl Component for Ros1Dsr_msgsMoveWaitRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/MoveWaitResponse.
impl Component for Ros1Dsr_msgsMoveWaitResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/Robotiq2FCloseRequest.
impl Component for Ros1Dsr_msgsRobotiq2FCloseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/Robotiq2FCloseResponse.
impl Component for Ros1Dsr_msgsRobotiq2FCloseResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/Robotiq2FMoveRequest.
impl Component for Ros1Dsr_msgsRobotiq2FMoveRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/Robotiq2FMoveResponse.
impl Component for Ros1Dsr_msgsRobotiq2FMoveResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/Robotiq2FOpenRequest.
impl Component for Ros1Dsr_msgsRobotiq2FOpenRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/Robotiq2FOpenResponse.
impl Component for Ros1Dsr_msgsRobotiq2FOpenResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SerialSendDataRequest.
impl Component for Ros1Dsr_msgsSerialSendDataRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SerialSendDataResponse.
impl Component for Ros1Dsr_msgsSerialSendDataResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxAnalogInputTypeRequest.
impl Component for Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxAnalogInputTypeResponse.
impl Component for Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxAnalogOutputRequest.
impl Component for Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest {
    const MAX_WIRE: usize = 9;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxAnalogOutputResponse.
impl Component for Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest.
impl Component for Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse.
impl Component for Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxDigitalOutputRequest.
impl Component for Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCtrlBoxDigitalOutputResponse.
impl Component for Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCurrentTcpRequest.
impl Component for Ros1Dsr_msgsSetCurrentTcpRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCurrentTcpResponse.
impl Component for Ros1Dsr_msgsSetCurrentTcpResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCurrentToolRequest.
impl Component for Ros1Dsr_msgsSetCurrentToolRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetCurrentToolResponse.
impl Component for Ros1Dsr_msgsSetCurrentToolResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetModbusOutputRequest.
impl Component for Ros1Dsr_msgsSetModbusOutputRequest {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetModbusOutputResponse.
impl Component for Ros1Dsr_msgsSetModbusOutputResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetRobotModeRequest.
impl Component for Ros1Dsr_msgsSetRobotModeRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetRobotModeResponse.
impl Component for Ros1Dsr_msgsSetRobotModeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetRobotSpeedModeRequest.
impl Component for Ros1Dsr_msgsSetRobotSpeedModeRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetRobotSpeedModeResponse.
impl Component for Ros1Dsr_msgsSetRobotSpeedModeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetRobotSystemRequest.
impl Component for Ros1Dsr_msgsSetRobotSystemRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetRobotSystemResponse.
impl Component for Ros1Dsr_msgsSetRobotSystemResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetSafeStopResetTypeRequest.
impl Component for Ros1Dsr_msgsSetSafeStopResetTypeRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetSafeStopResetTypeResponse.
impl Component for Ros1Dsr_msgsSetSafeStopResetTypeResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetToolDigitalOutputRequest.
impl Component for Ros1Dsr_msgsSetToolDigitalOutputRequest {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dsr_msgs/SetToolDigitalOutputResponse.
impl Component for Ros1Dsr_msgsSetToolDigitalOutputResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Typed dsr_msgs/ConfigCreateModbus call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsConfigCreateModbusClient =
    ServiceClient<Ros1Dsr_msgsConfigCreateModbusRequest, Ros1Dsr_msgsConfigCreateModbusResponse>;

/// Typed dsr_msgs/ConfigCreateModbus advertiser/responder with independent grants.
pub type Ros1Dsr_msgsConfigCreateModbusServer =
    ServiceServer<Ros1Dsr_msgsConfigCreateModbusRequest, Ros1Dsr_msgsConfigCreateModbusResponse>;

/// Typed dsr_msgs/ConfigCreateTcp call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsConfigCreateTcpClient =
    ServiceClient<Ros1Dsr_msgsConfigCreateTcpRequest, Ros1Dsr_msgsConfigCreateTcpResponse>;

/// Typed dsr_msgs/ConfigCreateTcp advertiser/responder with independent grants.
pub type Ros1Dsr_msgsConfigCreateTcpServer =
    ServiceServer<Ros1Dsr_msgsConfigCreateTcpRequest, Ros1Dsr_msgsConfigCreateTcpResponse>;

/// Typed dsr_msgs/ConfigCreateTool call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsConfigCreateToolClient =
    ServiceClient<Ros1Dsr_msgsConfigCreateToolRequest, Ros1Dsr_msgsConfigCreateToolResponse>;

/// Typed dsr_msgs/ConfigCreateTool advertiser/responder with independent grants.
pub type Ros1Dsr_msgsConfigCreateToolServer =
    ServiceServer<Ros1Dsr_msgsConfigCreateToolRequest, Ros1Dsr_msgsConfigCreateToolResponse>;

/// Typed dsr_msgs/ConfigDeleteModbus call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsConfigDeleteModbusClient =
    ServiceClient<Ros1Dsr_msgsConfigDeleteModbusRequest, Ros1Dsr_msgsConfigDeleteModbusResponse>;

/// Typed dsr_msgs/ConfigDeleteModbus advertiser/responder with independent grants.
pub type Ros1Dsr_msgsConfigDeleteModbusServer =
    ServiceServer<Ros1Dsr_msgsConfigDeleteModbusRequest, Ros1Dsr_msgsConfigDeleteModbusResponse>;

/// Typed dsr_msgs/ConfigDeleteTcp call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsConfigDeleteTcpClient =
    ServiceClient<Ros1Dsr_msgsConfigDeleteTcpRequest, Ros1Dsr_msgsConfigDeleteTcpResponse>;

/// Typed dsr_msgs/ConfigDeleteTcp advertiser/responder with independent grants.
pub type Ros1Dsr_msgsConfigDeleteTcpServer =
    ServiceServer<Ros1Dsr_msgsConfigDeleteTcpRequest, Ros1Dsr_msgsConfigDeleteTcpResponse>;

/// Typed dsr_msgs/ConfigDeleteTool call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsConfigDeleteToolClient =
    ServiceClient<Ros1Dsr_msgsConfigDeleteToolRequest, Ros1Dsr_msgsConfigDeleteToolResponse>;

/// Typed dsr_msgs/ConfigDeleteTool advertiser/responder with independent grants.
pub type Ros1Dsr_msgsConfigDeleteToolServer =
    ServiceServer<Ros1Dsr_msgsConfigDeleteToolRequest, Ros1Dsr_msgsConfigDeleteToolResponse>;

/// Typed dsr_msgs/DrlPause call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsDrlPauseClient =
    ServiceClient<Ros1Dsr_msgsDrlPauseRequest, Ros1Dsr_msgsDrlPauseResponse>;

/// Typed dsr_msgs/DrlPause advertiser/responder with independent grants.
pub type Ros1Dsr_msgsDrlPauseServer =
    ServiceServer<Ros1Dsr_msgsDrlPauseRequest, Ros1Dsr_msgsDrlPauseResponse>;

/// Typed dsr_msgs/DrlResume call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsDrlResumeClient =
    ServiceClient<Ros1Dsr_msgsDrlResumeRequest, Ros1Dsr_msgsDrlResumeResponse>;

/// Typed dsr_msgs/DrlResume advertiser/responder with independent grants.
pub type Ros1Dsr_msgsDrlResumeServer =
    ServiceServer<Ros1Dsr_msgsDrlResumeRequest, Ros1Dsr_msgsDrlResumeResponse>;

/// Typed dsr_msgs/DrlStart call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsDrlStartClient =
    ServiceClient<Ros1Dsr_msgsDrlStartRequest, Ros1Dsr_msgsDrlStartResponse>;

/// Typed dsr_msgs/DrlStart advertiser/responder with independent grants.
pub type Ros1Dsr_msgsDrlStartServer =
    ServiceServer<Ros1Dsr_msgsDrlStartRequest, Ros1Dsr_msgsDrlStartResponse>;

/// Typed dsr_msgs/DrlStop call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsDrlStopClient =
    ServiceClient<Ros1Dsr_msgsDrlStopRequest, Ros1Dsr_msgsDrlStopResponse>;

/// Typed dsr_msgs/DrlStop advertiser/responder with independent grants.
pub type Ros1Dsr_msgsDrlStopServer =
    ServiceServer<Ros1Dsr_msgsDrlStopRequest, Ros1Dsr_msgsDrlStopResponse>;

/// Typed dsr_msgs/GetCtrlBoxAnalogInput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetCtrlBoxAnalogInputClient = ServiceClient<
    Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest,
    Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse,
>;

/// Typed dsr_msgs/GetCtrlBoxAnalogInput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetCtrlBoxAnalogInputServer = ServiceServer<
    Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest,
    Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse,
>;

/// Typed dsr_msgs/GetCtrlBoxDigitalInput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetCtrlBoxDigitalInputClient = ServiceClient<
    Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest,
    Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse,
>;

/// Typed dsr_msgs/GetCtrlBoxDigitalInput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetCtrlBoxDigitalInputServer = ServiceServer<
    Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest,
    Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse,
>;

/// Typed dsr_msgs/GetCurrentPose call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetCurrentPoseClient =
    ServiceClient<Ros1Dsr_msgsGetCurrentPoseRequest, Ros1Dsr_msgsGetCurrentPoseResponse>;

/// Typed dsr_msgs/GetCurrentPose advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetCurrentPoseServer =
    ServiceServer<Ros1Dsr_msgsGetCurrentPoseRequest, Ros1Dsr_msgsGetCurrentPoseResponse>;

/// Typed dsr_msgs/GetCurrentSolutionSpace call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetCurrentSolutionSpaceClient = ServiceClient<
    Ros1Dsr_msgsGetCurrentSolutionSpaceRequest,
    Ros1Dsr_msgsGetCurrentSolutionSpaceResponse,
>;

/// Typed dsr_msgs/GetCurrentSolutionSpace advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetCurrentSolutionSpaceServer = ServiceServer<
    Ros1Dsr_msgsGetCurrentSolutionSpaceRequest,
    Ros1Dsr_msgsGetCurrentSolutionSpaceResponse,
>;

/// Typed dsr_msgs/GetCurrentTcp call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetCurrentTcpClient =
    ServiceClient<Ros1Dsr_msgsGetCurrentTcpRequest, Ros1Dsr_msgsGetCurrentTcpResponse>;

/// Typed dsr_msgs/GetCurrentTcp advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetCurrentTcpServer =
    ServiceServer<Ros1Dsr_msgsGetCurrentTcpRequest, Ros1Dsr_msgsGetCurrentTcpResponse>;

/// Typed dsr_msgs/GetCurrentTool call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetCurrentToolClient =
    ServiceClient<Ros1Dsr_msgsGetCurrentToolRequest, Ros1Dsr_msgsGetCurrentToolResponse>;

/// Typed dsr_msgs/GetCurrentTool advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetCurrentToolServer =
    ServiceServer<Ros1Dsr_msgsGetCurrentToolRequest, Ros1Dsr_msgsGetCurrentToolResponse>;

/// Typed dsr_msgs/GetDrlState call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetDrlStateClient =
    ServiceClient<Ros1Dsr_msgsGetDrlStateRequest, Ros1Dsr_msgsGetDrlStateResponse>;

/// Typed dsr_msgs/GetDrlState advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetDrlStateServer =
    ServiceServer<Ros1Dsr_msgsGetDrlStateRequest, Ros1Dsr_msgsGetDrlStateResponse>;

/// Typed dsr_msgs/GetExternalTorque call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetExternalTorqueClient =
    ServiceClient<Ros1Dsr_msgsGetExternalTorqueRequest, Ros1Dsr_msgsGetExternalTorqueResponse>;

/// Typed dsr_msgs/GetExternalTorque advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetExternalTorqueServer =
    ServiceServer<Ros1Dsr_msgsGetExternalTorqueRequest, Ros1Dsr_msgsGetExternalTorqueResponse>;

/// Typed dsr_msgs/GetJointTorque call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetJointTorqueClient =
    ServiceClient<Ros1Dsr_msgsGetJointTorqueRequest, Ros1Dsr_msgsGetJointTorqueResponse>;

/// Typed dsr_msgs/GetJointTorque advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetJointTorqueServer =
    ServiceServer<Ros1Dsr_msgsGetJointTorqueRequest, Ros1Dsr_msgsGetJointTorqueResponse>;

/// Typed dsr_msgs/GetLastAlarm call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetLastAlarmClient =
    ServiceClient<Ros1Dsr_msgsGetLastAlarmRequest, Ros1Dsr_msgsGetLastAlarmResponse>;

/// Typed dsr_msgs/GetLastAlarm advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetLastAlarmServer =
    ServiceServer<Ros1Dsr_msgsGetLastAlarmRequest, Ros1Dsr_msgsGetLastAlarmResponse>;

/// Typed dsr_msgs/GetModbusInput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetModbusInputClient =
    ServiceClient<Ros1Dsr_msgsGetModbusInputRequest, Ros1Dsr_msgsGetModbusInputResponse>;

/// Typed dsr_msgs/GetModbusInput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetModbusInputServer =
    ServiceServer<Ros1Dsr_msgsGetModbusInputRequest, Ros1Dsr_msgsGetModbusInputResponse>;

/// Typed dsr_msgs/GetRobotMode call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetRobotModeClient =
    ServiceClient<Ros1Dsr_msgsGetRobotModeRequest, Ros1Dsr_msgsGetRobotModeResponse>;

/// Typed dsr_msgs/GetRobotMode advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetRobotModeServer =
    ServiceServer<Ros1Dsr_msgsGetRobotModeRequest, Ros1Dsr_msgsGetRobotModeResponse>;

/// Typed dsr_msgs/GetRobotSpeedMode call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetRobotSpeedModeClient =
    ServiceClient<Ros1Dsr_msgsGetRobotSpeedModeRequest, Ros1Dsr_msgsGetRobotSpeedModeResponse>;

/// Typed dsr_msgs/GetRobotSpeedMode advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetRobotSpeedModeServer =
    ServiceServer<Ros1Dsr_msgsGetRobotSpeedModeRequest, Ros1Dsr_msgsGetRobotSpeedModeResponse>;

/// Typed dsr_msgs/GetRobotState call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetRobotStateClient =
    ServiceClient<Ros1Dsr_msgsGetRobotStateRequest, Ros1Dsr_msgsGetRobotStateResponse>;

/// Typed dsr_msgs/GetRobotState advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetRobotStateServer =
    ServiceServer<Ros1Dsr_msgsGetRobotStateRequest, Ros1Dsr_msgsGetRobotStateResponse>;

/// Typed dsr_msgs/GetRobotSystem call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetRobotSystemClient =
    ServiceClient<Ros1Dsr_msgsGetRobotSystemRequest, Ros1Dsr_msgsGetRobotSystemResponse>;

/// Typed dsr_msgs/GetRobotSystem advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetRobotSystemServer =
    ServiceServer<Ros1Dsr_msgsGetRobotSystemRequest, Ros1Dsr_msgsGetRobotSystemResponse>;

/// Typed dsr_msgs/GetToolDigitalInput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetToolDigitalInputClient =
    ServiceClient<Ros1Dsr_msgsGetToolDigitalInputRequest, Ros1Dsr_msgsGetToolDigitalInputResponse>;

/// Typed dsr_msgs/GetToolDigitalInput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetToolDigitalInputServer =
    ServiceServer<Ros1Dsr_msgsGetToolDigitalInputRequest, Ros1Dsr_msgsGetToolDigitalInputResponse>;

/// Typed dsr_msgs/GetToolForce call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsGetToolForceClient =
    ServiceClient<Ros1Dsr_msgsGetToolForceRequest, Ros1Dsr_msgsGetToolForceResponse>;

/// Typed dsr_msgs/GetToolForce advertiser/responder with independent grants.
pub type Ros1Dsr_msgsGetToolForceServer =
    ServiceServer<Ros1Dsr_msgsGetToolForceRequest, Ros1Dsr_msgsGetToolForceResponse>;

/// Typed dsr_msgs/Jog call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsJogClient = ServiceClient<Ros1Dsr_msgsJogRequest, Ros1Dsr_msgsJogResponse>;

/// Typed dsr_msgs/Jog advertiser/responder with independent grants.
pub type Ros1Dsr_msgsJogServer = ServiceServer<Ros1Dsr_msgsJogRequest, Ros1Dsr_msgsJogResponse>;

/// Typed dsr_msgs/JogMulti call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsJogMultiClient =
    ServiceClient<Ros1Dsr_msgsJogMultiRequest, Ros1Dsr_msgsJogMultiResponse>;

/// Typed dsr_msgs/JogMulti advertiser/responder with independent grants.
pub type Ros1Dsr_msgsJogMultiServer =
    ServiceServer<Ros1Dsr_msgsJogMultiRequest, Ros1Dsr_msgsJogMultiResponse>;

/// Typed dsr_msgs/MoveBlending call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveBlendingClient =
    ServiceClient<Ros1Dsr_msgsMoveBlendingRequest, Ros1Dsr_msgsMoveBlendingResponse>;

/// Typed dsr_msgs/MoveBlending advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveBlendingServer =
    ServiceServer<Ros1Dsr_msgsMoveBlendingRequest, Ros1Dsr_msgsMoveBlendingResponse>;

/// Typed dsr_msgs/MoveCircle call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveCircleClient =
    ServiceClient<Ros1Dsr_msgsMoveCircleRequest, Ros1Dsr_msgsMoveCircleResponse>;

/// Typed dsr_msgs/MoveCircle advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveCircleServer =
    ServiceServer<Ros1Dsr_msgsMoveCircleRequest, Ros1Dsr_msgsMoveCircleResponse>;

/// Typed dsr_msgs/MoveJoint call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveJointClient =
    ServiceClient<Ros1Dsr_msgsMoveJointRequest, Ros1Dsr_msgsMoveJointResponse>;

/// Typed dsr_msgs/MoveJoint advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveJointServer =
    ServiceServer<Ros1Dsr_msgsMoveJointRequest, Ros1Dsr_msgsMoveJointResponse>;

/// Typed dsr_msgs/MoveJointx call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveJointxClient =
    ServiceClient<Ros1Dsr_msgsMoveJointxRequest, Ros1Dsr_msgsMoveJointxResponse>;

/// Typed dsr_msgs/MoveJointx advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveJointxServer =
    ServiceServer<Ros1Dsr_msgsMoveJointxRequest, Ros1Dsr_msgsMoveJointxResponse>;

/// Typed dsr_msgs/MoveLine call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveLineClient =
    ServiceClient<Ros1Dsr_msgsMoveLineRequest, Ros1Dsr_msgsMoveLineResponse>;

/// Typed dsr_msgs/MoveLine advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveLineServer =
    ServiceServer<Ros1Dsr_msgsMoveLineRequest, Ros1Dsr_msgsMoveLineResponse>;

/// Typed dsr_msgs/MovePause call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMovePauseClient =
    ServiceClient<Ros1Dsr_msgsMovePauseRequest, Ros1Dsr_msgsMovePauseResponse>;

/// Typed dsr_msgs/MovePause advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMovePauseServer =
    ServiceServer<Ros1Dsr_msgsMovePauseRequest, Ros1Dsr_msgsMovePauseResponse>;

/// Typed dsr_msgs/MovePeriodic call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMovePeriodicClient =
    ServiceClient<Ros1Dsr_msgsMovePeriodicRequest, Ros1Dsr_msgsMovePeriodicResponse>;

/// Typed dsr_msgs/MovePeriodic advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMovePeriodicServer =
    ServiceServer<Ros1Dsr_msgsMovePeriodicRequest, Ros1Dsr_msgsMovePeriodicResponse>;

/// Typed dsr_msgs/MoveResume call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveResumeClient =
    ServiceClient<Ros1Dsr_msgsMoveResumeRequest, Ros1Dsr_msgsMoveResumeResponse>;

/// Typed dsr_msgs/MoveResume advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveResumeServer =
    ServiceServer<Ros1Dsr_msgsMoveResumeRequest, Ros1Dsr_msgsMoveResumeResponse>;

/// Typed dsr_msgs/MoveSpiral call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveSpiralClient =
    ServiceClient<Ros1Dsr_msgsMoveSpiralRequest, Ros1Dsr_msgsMoveSpiralResponse>;

/// Typed dsr_msgs/MoveSpiral advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveSpiralServer =
    ServiceServer<Ros1Dsr_msgsMoveSpiralRequest, Ros1Dsr_msgsMoveSpiralResponse>;

/// Typed dsr_msgs/MoveSplineJoint call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveSplineJointClient =
    ServiceClient<Ros1Dsr_msgsMoveSplineJointRequest, Ros1Dsr_msgsMoveSplineJointResponse>;

/// Typed dsr_msgs/MoveSplineJoint advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveSplineJointServer =
    ServiceServer<Ros1Dsr_msgsMoveSplineJointRequest, Ros1Dsr_msgsMoveSplineJointResponse>;

/// Typed dsr_msgs/MoveSplineTask call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveSplineTaskClient =
    ServiceClient<Ros1Dsr_msgsMoveSplineTaskRequest, Ros1Dsr_msgsMoveSplineTaskResponse>;

/// Typed dsr_msgs/MoveSplineTask advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveSplineTaskServer =
    ServiceServer<Ros1Dsr_msgsMoveSplineTaskRequest, Ros1Dsr_msgsMoveSplineTaskResponse>;

/// Typed dsr_msgs/MoveStop call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveStopClient =
    ServiceClient<Ros1Dsr_msgsMoveStopRequest, Ros1Dsr_msgsMoveStopResponse>;

/// Typed dsr_msgs/MoveStop advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveStopServer =
    ServiceServer<Ros1Dsr_msgsMoveStopRequest, Ros1Dsr_msgsMoveStopResponse>;

/// Typed dsr_msgs/MoveWait call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsMoveWaitClient =
    ServiceClient<Ros1Dsr_msgsMoveWaitRequest, Ros1Dsr_msgsMoveWaitResponse>;

/// Typed dsr_msgs/MoveWait advertiser/responder with independent grants.
pub type Ros1Dsr_msgsMoveWaitServer =
    ServiceServer<Ros1Dsr_msgsMoveWaitRequest, Ros1Dsr_msgsMoveWaitResponse>;

/// Typed dsr_msgs/Robotiq2FClose call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsRobotiq2FCloseClient =
    ServiceClient<Ros1Dsr_msgsRobotiq2FCloseRequest, Ros1Dsr_msgsRobotiq2FCloseResponse>;

/// Typed dsr_msgs/Robotiq2FClose advertiser/responder with independent grants.
pub type Ros1Dsr_msgsRobotiq2FCloseServer =
    ServiceServer<Ros1Dsr_msgsRobotiq2FCloseRequest, Ros1Dsr_msgsRobotiq2FCloseResponse>;

/// Typed dsr_msgs/Robotiq2FMove call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsRobotiq2FMoveClient =
    ServiceClient<Ros1Dsr_msgsRobotiq2FMoveRequest, Ros1Dsr_msgsRobotiq2FMoveResponse>;

/// Typed dsr_msgs/Robotiq2FMove advertiser/responder with independent grants.
pub type Ros1Dsr_msgsRobotiq2FMoveServer =
    ServiceServer<Ros1Dsr_msgsRobotiq2FMoveRequest, Ros1Dsr_msgsRobotiq2FMoveResponse>;

/// Typed dsr_msgs/Robotiq2FOpen call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsRobotiq2FOpenClient =
    ServiceClient<Ros1Dsr_msgsRobotiq2FOpenRequest, Ros1Dsr_msgsRobotiq2FOpenResponse>;

/// Typed dsr_msgs/Robotiq2FOpen advertiser/responder with independent grants.
pub type Ros1Dsr_msgsRobotiq2FOpenServer =
    ServiceServer<Ros1Dsr_msgsRobotiq2FOpenRequest, Ros1Dsr_msgsRobotiq2FOpenResponse>;

/// Typed dsr_msgs/SerialSendData call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSerialSendDataClient =
    ServiceClient<Ros1Dsr_msgsSerialSendDataRequest, Ros1Dsr_msgsSerialSendDataResponse>;

/// Typed dsr_msgs/SerialSendData advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSerialSendDataServer =
    ServiceServer<Ros1Dsr_msgsSerialSendDataRequest, Ros1Dsr_msgsSerialSendDataResponse>;

/// Typed dsr_msgs/SetCtrlBoxAnalogInputType call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeClient = ServiceClient<
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse,
>;

/// Typed dsr_msgs/SetCtrlBoxAnalogInputType advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeServer = ServiceServer<
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse,
>;

/// Typed dsr_msgs/SetCtrlBoxAnalogOutput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetCtrlBoxAnalogOutputClient = ServiceClient<
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse,
>;

/// Typed dsr_msgs/SetCtrlBoxAnalogOutput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetCtrlBoxAnalogOutputServer = ServiceServer<
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse,
>;

/// Typed dsr_msgs/SetCtrlBoxAnalogOutputType call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeClient = ServiceClient<
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse,
>;

/// Typed dsr_msgs/SetCtrlBoxAnalogOutputType advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeServer = ServiceServer<
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest,
    Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse,
>;

/// Typed dsr_msgs/SetCtrlBoxDigitalOutput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetCtrlBoxDigitalOutputClient = ServiceClient<
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest,
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse,
>;

/// Typed dsr_msgs/SetCtrlBoxDigitalOutput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetCtrlBoxDigitalOutputServer = ServiceServer<
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest,
    Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse,
>;

/// Typed dsr_msgs/SetCurrentTcp call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetCurrentTcpClient =
    ServiceClient<Ros1Dsr_msgsSetCurrentTcpRequest, Ros1Dsr_msgsSetCurrentTcpResponse>;

/// Typed dsr_msgs/SetCurrentTcp advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetCurrentTcpServer =
    ServiceServer<Ros1Dsr_msgsSetCurrentTcpRequest, Ros1Dsr_msgsSetCurrentTcpResponse>;

/// Typed dsr_msgs/SetCurrentTool call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetCurrentToolClient =
    ServiceClient<Ros1Dsr_msgsSetCurrentToolRequest, Ros1Dsr_msgsSetCurrentToolResponse>;

/// Typed dsr_msgs/SetCurrentTool advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetCurrentToolServer =
    ServiceServer<Ros1Dsr_msgsSetCurrentToolRequest, Ros1Dsr_msgsSetCurrentToolResponse>;

/// Typed dsr_msgs/SetModbusOutput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetModbusOutputClient =
    ServiceClient<Ros1Dsr_msgsSetModbusOutputRequest, Ros1Dsr_msgsSetModbusOutputResponse>;

/// Typed dsr_msgs/SetModbusOutput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetModbusOutputServer =
    ServiceServer<Ros1Dsr_msgsSetModbusOutputRequest, Ros1Dsr_msgsSetModbusOutputResponse>;

/// Typed dsr_msgs/SetRobotMode call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetRobotModeClient =
    ServiceClient<Ros1Dsr_msgsSetRobotModeRequest, Ros1Dsr_msgsSetRobotModeResponse>;

/// Typed dsr_msgs/SetRobotMode advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetRobotModeServer =
    ServiceServer<Ros1Dsr_msgsSetRobotModeRequest, Ros1Dsr_msgsSetRobotModeResponse>;

/// Typed dsr_msgs/SetRobotSpeedMode call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetRobotSpeedModeClient =
    ServiceClient<Ros1Dsr_msgsSetRobotSpeedModeRequest, Ros1Dsr_msgsSetRobotSpeedModeResponse>;

/// Typed dsr_msgs/SetRobotSpeedMode advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetRobotSpeedModeServer =
    ServiceServer<Ros1Dsr_msgsSetRobotSpeedModeRequest, Ros1Dsr_msgsSetRobotSpeedModeResponse>;

/// Typed dsr_msgs/SetRobotSystem call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetRobotSystemClient =
    ServiceClient<Ros1Dsr_msgsSetRobotSystemRequest, Ros1Dsr_msgsSetRobotSystemResponse>;

/// Typed dsr_msgs/SetRobotSystem advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetRobotSystemServer =
    ServiceServer<Ros1Dsr_msgsSetRobotSystemRequest, Ros1Dsr_msgsSetRobotSystemResponse>;

/// Typed dsr_msgs/SetSafeStopResetType call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetSafeStopResetTypeClient = ServiceClient<
    Ros1Dsr_msgsSetSafeStopResetTypeRequest,
    Ros1Dsr_msgsSetSafeStopResetTypeResponse,
>;

/// Typed dsr_msgs/SetSafeStopResetType advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetSafeStopResetTypeServer = ServiceServer<
    Ros1Dsr_msgsSetSafeStopResetTypeRequest,
    Ros1Dsr_msgsSetSafeStopResetTypeResponse,
>;

/// Typed dsr_msgs/SetToolDigitalOutput call/real-submit owner; every alias is explicit.
pub type Ros1Dsr_msgsSetToolDigitalOutputClient = ServiceClient<
    Ros1Dsr_msgsSetToolDigitalOutputRequest,
    Ros1Dsr_msgsSetToolDigitalOutputResponse,
>;

/// Typed dsr_msgs/SetToolDigitalOutput advertiser/responder with independent grants.
pub type Ros1Dsr_msgsSetToolDigitalOutputServer = ServiceServer<
    Ros1Dsr_msgsSetToolDigitalOutputRequest,
    Ros1Dsr_msgsSetToolDigitalOutputResponse,
>;
