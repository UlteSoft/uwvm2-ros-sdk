//! @file bounded_interfaces.rs
//! @brief Typed service and action operations for the exact doosan source domain.
//! @details Preserve complete request/response/goal/feedback/result values, admitted role ownership, correlation
//! identifiers, primary errors and independent cleanup outcomes. The caller retains all explicitly borrowed
//! roles; this module grants no resource permission.
//! @see share/platform/doosan/domains/doosan-ros2-jazzy-complete.ir.json
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

/// Complete canonical component bound for dsr_msgs2/action/JogH2r_Goal.
impl Component for Ros2Dsr_msgs2ActionJogH2r_Goal {
    const MAX_WIRE: usize = 10;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/JogH2r_Result.
impl Component for Ros2Dsr_msgs2ActionJogH2r_Result {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/JogH2r_Feedback.
impl Component for Ros2Dsr_msgs2ActionJogH2r_Feedback {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/MovejH2r_Goal.
impl Component for Ros2Dsr_msgs2ActionMovejH2r_Goal {
    const MAX_WIRE: usize = 144;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/MovejH2r_Result.
impl Component for Ros2Dsr_msgs2ActionMovejH2r_Result {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/MovejH2r_Feedback.
impl Component for Ros2Dsr_msgs2ActionMovejH2r_Feedback {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/MovelH2r_Goal.
impl Component for Ros2Dsr_msgs2ActionMovelH2r_Goal {
    const MAX_WIRE: usize = 80;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/MovelH2r_Result.
impl Component for Ros2Dsr_msgs2ActionMovelH2r_Result {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/action/MovelH2r_Feedback.
impl Component for Ros2Dsr_msgs2ActionMovelH2r_Feedback {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/AlignAxis1_Request.
impl Component for Ros2Dsr_msgs2SrvAlignAxis1_Request {
    const MAX_WIRE: usize = 170;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/AlignAxis1_Response.
impl Component for Ros2Dsr_msgs2SrvAlignAxis1_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/AlignAxis2_Request.
impl Component for Ros2Dsr_msgs2SrvAlignAxis2_Request {
    const MAX_WIRE: usize = 50;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/AlignAxis2_Response.
impl Component for Ros2Dsr_msgs2SrvAlignAxis2_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/AlterMotion_Request.
impl Component for Ros2Dsr_msgs2SrvAlterMotion_Request {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/AlterMotion_Response.
impl Component for Ros2Dsr_msgs2SrvAlterMotion_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CalcCoord_Request.
impl Component for Ros2Dsr_msgs2SrvCalcCoord_Request {
    const MAX_WIRE: usize = 195;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CalcCoord_Response.
impl Component for Ros2Dsr_msgs2SrvCalcCoord_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ChangeCollisionSensitivity_Request.
impl Component for Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ChangeCollisionSensitivity_Response.
impl Component for Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ChangeOperationSpeed_Request.
impl Component for Ros2Dsr_msgs2SrvChangeOperationSpeed_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ChangeOperationSpeed_Response.
impl Component for Ros2Dsr_msgs2SrvChangeOperationSpeed_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckForceCondition_Request.
impl Component for Ros2Dsr_msgs2SrvCheckForceCondition_Request {
    const MAX_WIRE: usize = 18;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckForceCondition_Response.
impl Component for Ros2Dsr_msgs2SrvCheckForceCondition_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckMotion_Request.
impl Component for Ros2Dsr_msgs2SrvCheckMotion_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckMotion_Response.
impl Component for Ros2Dsr_msgs2SrvCheckMotion_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckOrientationCondition1_Request.
impl Component for Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request {
    const MAX_WIRE: usize = 99;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckOrientationCondition1_Response.
impl Component for Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckOrientationCondition2_Request.
impl Component for Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request {
    const MAX_WIRE: usize = 67;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckOrientationCondition2_Response.
impl Component for Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckPositionCondition_Request.
impl Component for Ros2Dsr_msgs2SrvCheckPositionCondition_Request {
    const MAX_WIRE: usize = 67;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CheckPositionCondition_Response.
impl Component for Ros2Dsr_msgs2SrvCheckPositionCondition_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigCreateModbus_Request.
impl Component for Ros2Dsr_msgs2SrvConfigCreateModbus_Request {
    const MAX_WIRE: usize = 531;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigCreateModbus_Response.
impl Component for Ros2Dsr_msgs2SrvConfigCreateModbus_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigCreateTcp_Request.
impl Component for Ros2Dsr_msgs2SrvConfigCreateTcp_Request {
    const MAX_WIRE: usize = 308;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigCreateTcp_Response.
impl Component for Ros2Dsr_msgs2SrvConfigCreateTcp_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigCreateTool_Request.
impl Component for Ros2Dsr_msgs2SrvConfigCreateTool_Request {
    const MAX_WIRE: usize = 340;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigCreateTool_Response.
impl Component for Ros2Dsr_msgs2SrvConfigCreateTool_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigDeleteModbus_Request.
impl Component for Ros2Dsr_msgs2SrvConfigDeleteModbus_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigDeleteModbus_Response.
impl Component for Ros2Dsr_msgs2SrvConfigDeleteModbus_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigDeleteTcp_Request.
impl Component for Ros2Dsr_msgs2SrvConfigDeleteTcp_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigDeleteTcp_Response.
impl Component for Ros2Dsr_msgs2SrvConfigDeleteTcp_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigDeleteTool_Request.
impl Component for Ros2Dsr_msgs2SrvConfigDeleteTool_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConfigDeleteTool_Response.
impl Component for Ros2Dsr_msgs2SrvConfigDeleteTool_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConnectRtControl_Request.
impl Component for Ros2Dsr_msgs2SrvConnectRtControl_Request {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ConnectRtControl_Response.
impl Component for Ros2Dsr_msgs2SrvConnectRtControl_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CoordTransform_Request.
impl Component for Ros2Dsr_msgs2SrvCoordTransform_Request {
    const MAX_WIRE: usize = 50;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/CoordTransform_Response.
impl Component for Ros2Dsr_msgs2SrvCoordTransform_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DisableAlterMotion_Request.
impl Component for Ros2Dsr_msgs2SrvDisableAlterMotion_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DisableAlterMotion_Response.
impl Component for Ros2Dsr_msgs2SrvDisableAlterMotion_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DisconnectRtControl_Request.
impl Component for Ros2Dsr_msgs2SrvDisconnectRtControl_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DisconnectRtControl_Response.
impl Component for Ros2Dsr_msgs2SrvDisconnectRtControl_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlPause_Request.
impl Component for Ros2Dsr_msgs2SrvDrlPause_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlPause_Response.
impl Component for Ros2Dsr_msgs2SrvDrlPause_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlResume_Request.
impl Component for Ros2Dsr_msgs2SrvDrlResume_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlResume_Response.
impl Component for Ros2Dsr_msgs2SrvDrlResume_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlStart_Request.
impl Component for Ros2Dsr_msgs2SrvDrlStart_Request {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlStart_Response.
impl Component for Ros2Dsr_msgs2SrvDrlStart_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlStop_Request.
impl Component for Ros2Dsr_msgs2SrvDrlStop_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/DrlStop_Response.
impl Component for Ros2Dsr_msgs2SrvDrlStop_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/EnableAlterMotion_Request.
impl Component for Ros2Dsr_msgs2SrvEnableAlterMotion_Request {
    const MAX_WIRE: usize = 38;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/EnableAlterMotion_Response.
impl Component for Ros2Dsr_msgs2SrvEnableAlterMotion_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Fkin_Request.
impl Component for Ros2Dsr_msgs2SrvFkin_Request {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Fkin_Response.
impl Component for Ros2Dsr_msgs2SrvFkin_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetControlMode_Request.
impl Component for Ros2Dsr_msgs2SrvGetControlMode_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetControlMode_Response.
impl Component for Ros2Dsr_msgs2SrvGetControlMode_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetControlSpace_Request.
impl Component for Ros2Dsr_msgs2SrvGetControlSpace_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetControlSpace_Response.
impl Component for Ros2Dsr_msgs2SrvGetControlSpace_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request.
impl Component for Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response.
impl Component for Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response {
    const MAX_WIRE: usize = 9;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request.
impl Component for Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response.
impl Component for Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request.
impl Component for Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response.
impl Component for Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentPose_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentPose_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentPose_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentPose_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentPosj_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentPosj_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentPosj_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentPosj_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentPosx_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentPosx_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentPosx_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentPosx_Response {
    const MAX_WIRE: usize = 2213;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentRotm_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentRotm_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentRotm_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentRotm_Response {
    const MAX_WIRE: usize = 2213;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentSolutionSpace_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentSolutionSpace_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentTcp_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentTcp_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentTcp_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentTcp_Response {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentTool_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentTool_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentTool_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentTool_Response {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentToolFlangePosx_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentToolFlangePosx_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentVelj_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentVelj_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentVelj_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentVelj_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentVelx_Request.
impl Component for Ros2Dsr_msgs2SrvGetCurrentVelx_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetCurrentVelx_Response.
impl Component for Ros2Dsr_msgs2SrvGetCurrentVelx_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredPosj_Request.
impl Component for Ros2Dsr_msgs2SrvGetDesiredPosj_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredPosj_Response.
impl Component for Ros2Dsr_msgs2SrvGetDesiredPosj_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredPosx_Request.
impl Component for Ros2Dsr_msgs2SrvGetDesiredPosx_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredPosx_Response.
impl Component for Ros2Dsr_msgs2SrvGetDesiredPosx_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredVelj_Request.
impl Component for Ros2Dsr_msgs2SrvGetDesiredVelj_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredVelj_Response.
impl Component for Ros2Dsr_msgs2SrvGetDesiredVelj_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredVelx_Request.
impl Component for Ros2Dsr_msgs2SrvGetDesiredVelx_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDesiredVelx_Response.
impl Component for Ros2Dsr_msgs2SrvGetDesiredVelx_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDrlState_Request.
impl Component for Ros2Dsr_msgs2SrvGetDrlState_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetDrlState_Response.
impl Component for Ros2Dsr_msgs2SrvGetDrlState_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetExternalTorque_Request.
impl Component for Ros2Dsr_msgs2SrvGetExternalTorque_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetExternalTorque_Response.
impl Component for Ros2Dsr_msgs2SrvGetExternalTorque_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetInputRegisterBit_Request.
impl Component for Ros2Dsr_msgs2SrvGetInputRegisterBit_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetInputRegisterBit_Response.
impl Component for Ros2Dsr_msgs2SrvGetInputRegisterBit_Response {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetInputRegisterFloat_Request.
impl Component for Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetInputRegisterFloat_Response.
impl Component for Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response {
    const MAX_WIRE: usize = 9;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetInputRegisterInt_Request.
impl Component for Ros2Dsr_msgs2SrvGetInputRegisterInt_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetInputRegisterInt_Response.
impl Component for Ros2Dsr_msgs2SrvGetInputRegisterInt_Response {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetJointTorque_Request.
impl Component for Ros2Dsr_msgs2SrvGetJointTorque_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetJointTorque_Response.
impl Component for Ros2Dsr_msgs2SrvGetJointTorque_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetLastAlarm_Request.
impl Component for Ros2Dsr_msgs2SrvGetLastAlarm_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetLastAlarm_Response.
impl Component for Ros2Dsr_msgs2SrvGetLastAlarm_Response {
    const MAX_WIRE: usize = 793;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetModbusInput_Request.
impl Component for Ros2Dsr_msgs2SrvGetModbusInput_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetModbusInput_Response.
impl Component for Ros2Dsr_msgs2SrvGetModbusInput_Response {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOrientationError_Request.
impl Component for Ros2Dsr_msgs2SrvGetOrientationError_Request {
    const MAX_WIRE: usize = 97;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOrientationError_Response.
impl Component for Ros2Dsr_msgs2SrvGetOrientationError_Response {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOutputRegisterBit_Request.
impl Component for Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOutputRegisterBit_Response.
impl Component for Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOutputRegisterFloat_Request.
impl Component for Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOutputRegisterFloat_Response.
impl Component for Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response {
    const MAX_WIRE: usize = 9;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOutputRegisterInt_Request.
impl Component for Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetOutputRegisterInt_Response.
impl Component for Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotLinkInfo_Request.
impl Component for Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotLinkInfo_Response.
impl Component for Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response {
    const MAX_WIRE: usize = 129;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotMode_Request.
impl Component for Ros2Dsr_msgs2SrvGetRobotMode_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotMode_Response.
impl Component for Ros2Dsr_msgs2SrvGetRobotMode_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotSpeedMode_Request.
impl Component for Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotSpeedMode_Response.
impl Component for Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotState_Request.
impl Component for Ros2Dsr_msgs2SrvGetRobotState_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotState_Response.
impl Component for Ros2Dsr_msgs2SrvGetRobotState_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotSystem_Request.
impl Component for Ros2Dsr_msgs2SrvGetRobotSystem_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRobotSystem_Response.
impl Component for Ros2Dsr_msgs2SrvGetRobotSystem_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlInputDataList_Request.
impl Component for Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlInputDataList_Response.
impl Component for Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlInputVersionList_Request.
impl Component for Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlInputVersionList_Response.
impl Component for Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlOutputDataList_Request.
impl Component for Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlOutputDataList_Response.
impl Component for Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlOutputVersionList_Request.
impl Component for Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetRtControlOutputVersionList_Response.
impl Component for Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response {
    const MAX_WIRE: usize = 261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetSolutionSpace_Request.
impl Component for Ros2Dsr_msgs2SrvGetSolutionSpace_Request {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetSolutionSpace_Response.
impl Component for Ros2Dsr_msgs2SrvGetSolutionSpace_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetToolDigitalInput_Request.
impl Component for Ros2Dsr_msgs2SrvGetToolDigitalInput_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetToolDigitalInput_Response.
impl Component for Ros2Dsr_msgs2SrvGetToolDigitalInput_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetToolDigitalOutput_Request.
impl Component for Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetToolDigitalOutput_Response.
impl Component for Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetToolForce_Request.
impl Component for Ros2Dsr_msgs2SrvGetToolForce_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetToolForce_Response.
impl Component for Ros2Dsr_msgs2SrvGetToolForce_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetUserCartCoord_Request.
impl Component for Ros2Dsr_msgs2SrvGetUserCartCoord_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetUserCartCoord_Response.
impl Component for Ros2Dsr_msgs2SrvGetUserCartCoord_Response {
    const MAX_WIRE: usize = 50;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetWorkpieceWeight_Request.
impl Component for Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/GetWorkpieceWeight_Response.
impl Component for Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Ikin_Request.
impl Component for Ros2Dsr_msgs2SrvIkin_Request {
    const MAX_WIRE: usize = 50;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Ikin_Response.
impl Component for Ros2Dsr_msgs2SrvIkin_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/IsDoneBoltTightening_Request.
impl Component for Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request {
    const MAX_WIRE: usize = 17;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/IsDoneBoltTightening_Response.
impl Component for Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Jog_Request.
impl Component for Ros2Dsr_msgs2SrvJog_Request {
    const MAX_WIRE: usize = 10;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Jog_Response.
impl Component for Ros2Dsr_msgs2SrvJog_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/JogMulti_Request.
impl Component for Ros2Dsr_msgs2SrvJogMulti_Request {
    const MAX_WIRE: usize = 57;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/JogMulti_Response.
impl Component for Ros2Dsr_msgs2SrvJogMulti_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveBlending_Request.
impl Component for Ros2Dsr_msgs2SrvMoveBlending_Request {
    const MAX_WIRE: usize = 2256;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveBlending_Response.
impl Component for Ros2Dsr_msgs2SrvMoveBlending_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveCircle_Request.
impl Component for Ros2Dsr_msgs2SrvMoveCircle_Request {
    const MAX_WIRE: usize = 2280;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveCircle_Response.
impl Component for Ros2Dsr_msgs2SrvMoveCircle_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveHome_Request.
impl Component for Ros2Dsr_msgs2SrvMoveHome_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveHome_Response.
impl Component for Ros2Dsr_msgs2SrvMoveHome_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveJoint_Request.
impl Component for Ros2Dsr_msgs2SrvMoveJoint_Request {
    const MAX_WIRE: usize = 83;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveJoint_Response.
impl Component for Ros2Dsr_msgs2SrvMoveJoint_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveJointx_Request.
impl Component for Ros2Dsr_msgs2SrvMoveJointx_Request {
    const MAX_WIRE: usize = 85;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveJointx_Response.
impl Component for Ros2Dsr_msgs2SrvMoveJointx_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveLine_Request.
impl Component for Ros2Dsr_msgs2SrvMoveLine_Request {
    const MAX_WIRE: usize = 100;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveLine_Response.
impl Component for Ros2Dsr_msgs2SrvMoveLine_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MovePause_Request.
impl Component for Ros2Dsr_msgs2SrvMovePause_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MovePause_Response.
impl Component for Ros2Dsr_msgs2SrvMovePause_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MovePeriodic_Request.
impl Component for Ros2Dsr_msgs2SrvMovePeriodic_Request {
    const MAX_WIRE: usize = 107;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MovePeriodic_Response.
impl Component for Ros2Dsr_msgs2SrvMovePeriodic_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveResume_Request.
impl Component for Ros2Dsr_msgs2SrvMoveResume_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveResume_Response.
impl Component for Ros2Dsr_msgs2SrvMoveResume_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveSpiral_Request.
impl Component for Ros2Dsr_msgs2SrvMoveSpiral_Request {
    const MAX_WIRE: usize = 94;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveSpiral_Response.
impl Component for Ros2Dsr_msgs2SrvMoveSpiral_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveSplineJoint_Request.
impl Component for Ros2Dsr_msgs2SrvMoveSplineJoint_Request {
    const MAX_WIRE: usize = 2319;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveSplineJoint_Response.
impl Component for Ros2Dsr_msgs2SrvMoveSplineJoint_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveSplineTask_Request.
impl Component for Ros2Dsr_msgs2SrvMoveSplineTask_Request {
    const MAX_WIRE: usize = 2257;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveSplineTask_Response.
impl Component for Ros2Dsr_msgs2SrvMoveSplineTask_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveStop_Request.
impl Component for Ros2Dsr_msgs2SrvMoveStop_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveStop_Response.
impl Component for Ros2Dsr_msgs2SrvMoveStop_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveWait_Request.
impl Component for Ros2Dsr_msgs2SrvMoveWait_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/MoveWait_Response.
impl Component for Ros2Dsr_msgs2SrvMoveWait_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/OverwriteUserCartCoord_Request.
impl Component for Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request {
    const MAX_WIRE: usize = 50;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/OverwriteUserCartCoord_Response.
impl Component for Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ParallelAxis1_Request.
impl Component for Ros2Dsr_msgs2SrvParallelAxis1_Request {
    const MAX_WIRE: usize = 146;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ParallelAxis1_Response.
impl Component for Ros2Dsr_msgs2SrvParallelAxis1_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ParallelAxis2_Request.
impl Component for Ros2Dsr_msgs2SrvParallelAxis2_Request {
    const MAX_WIRE: usize = 26;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ParallelAxis2_Response.
impl Component for Ros2Dsr_msgs2SrvParallelAxis2_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ReadDataRt_Request.
impl Component for Ros2Dsr_msgs2SrvReadDataRt_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ReadDataRt_Response.
impl Component for Ros2Dsr_msgs2SrvReadDataRt_Response {
    const MAX_WIRE: usize = 8154;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ReleaseComplianceCtrl_Request.
impl Component for Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ReleaseComplianceCtrl_Response.
impl Component for Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ReleaseForce_Request.
impl Component for Ros2Dsr_msgs2SrvReleaseForce_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ReleaseForce_Response.
impl Component for Ros2Dsr_msgs2SrvReleaseForce_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ResetWorkpieceWeight_Request.
impl Component for Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ResetWorkpieceWeight_Response.
impl Component for Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Robotiq2FClose_Request.
impl Component for Ros2Dsr_msgs2SrvRobotiq2FClose_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Robotiq2FClose_Response.
impl Component for Ros2Dsr_msgs2SrvRobotiq2FClose_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Robotiq2FMove_Request.
impl Component for Ros2Dsr_msgs2SrvRobotiq2FMove_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Robotiq2FMove_Response.
impl Component for Ros2Dsr_msgs2SrvRobotiq2FMove_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Robotiq2FOpen_Request.
impl Component for Ros2Dsr_msgs2SrvRobotiq2FOpen_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Robotiq2FOpen_Response.
impl Component for Ros2Dsr_msgs2SrvRobotiq2FOpen_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SerialSendData_Request.
impl Component for Ros2Dsr_msgs2SrvSerialSendData_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SerialSendData_Response.
impl Component for Ros2Dsr_msgs2SrvSerialSendData_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ServoOff_Request.
impl Component for Ros2Dsr_msgs2SrvServoOff_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/ServoOff_Response.
impl Component for Ros2Dsr_msgs2SrvServoOff_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetAccjRt_Request.
impl Component for Ros2Dsr_msgs2SrvSetAccjRt_Request {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetAccjRt_Response.
impl Component for Ros2Dsr_msgs2SrvSetAccjRt_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetAccxRt_Request.
impl Component for Ros2Dsr_msgs2SrvSetAccxRt_Request {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetAccxRt_Response.
impl Component for Ros2Dsr_msgs2SrvSetAccxRt_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request {
    const MAX_WIRE: usize = 9;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response.
impl Component for Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCurrentTcp_Request.
impl Component for Ros2Dsr_msgs2SrvSetCurrentTcp_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCurrentTcp_Response.
impl Component for Ros2Dsr_msgs2SrvSetCurrentTcp_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCurrentTool_Request.
impl Component for Ros2Dsr_msgs2SrvSetCurrentTool_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetCurrentTool_Response.
impl Component for Ros2Dsr_msgs2SrvSetCurrentTool_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetDesiredForce_Request.
impl Component for Ros2Dsr_msgs2SrvSetDesiredForce_Request {
    const MAX_WIRE: usize = 64;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetDesiredForce_Response.
impl Component for Ros2Dsr_msgs2SrvSetDesiredForce_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetModbusOutput_Request.
impl Component for Ros2Dsr_msgs2SrvSetModbusOutput_Request {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetModbusOutput_Response.
impl Component for Ros2Dsr_msgs2SrvSetModbusOutput_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetOutputRegisterBit_Request.
impl Component for Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetOutputRegisterBit_Response.
impl Component for Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetOutputRegisterFloat_Request.
impl Component for Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request {
    const MAX_WIRE: usize = 10;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetOutputRegisterFloat_Response.
impl Component for Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetOutputRegisterInt_Request.
impl Component for Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetOutputRegisterInt_Response.
impl Component for Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRefCoord_Request.
impl Component for Ros2Dsr_msgs2SrvSetRefCoord_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRefCoord_Response.
impl Component for Ros2Dsr_msgs2SrvSetRefCoord_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotControl_Request.
impl Component for Ros2Dsr_msgs2SrvSetRobotControl_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotControl_Response.
impl Component for Ros2Dsr_msgs2SrvSetRobotControl_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotMode_Request.
impl Component for Ros2Dsr_msgs2SrvSetRobotMode_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotMode_Response.
impl Component for Ros2Dsr_msgs2SrvSetRobotMode_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotSpeedMode_Request.
impl Component for Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotSpeedMode_Response.
impl Component for Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotSystem_Request.
impl Component for Ros2Dsr_msgs2SrvSetRobotSystem_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRobotSystem_Response.
impl Component for Ros2Dsr_msgs2SrvSetRobotSystem_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRtControlInput_Request.
impl Component for Ros2Dsr_msgs2SrvSetRtControlInput_Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRtControlInput_Response.
impl Component for Ros2Dsr_msgs2SrvSetRtControlInput_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRtControlOutput_Request.
impl Component for Ros2Dsr_msgs2SrvSetRtControlOutput_Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetRtControlOutput_Response.
impl Component for Ros2Dsr_msgs2SrvSetRtControlOutput_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSafeStopResetType_Request.
impl Component for Ros2Dsr_msgs2SrvSetSafeStopResetType_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSafeStopResetType_Response.
impl Component for Ros2Dsr_msgs2SrvSetSafeStopResetType_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSafetyMode_Request.
impl Component for Ros2Dsr_msgs2SrvSetSafetyMode_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSafetyMode_Response.
impl Component for Ros2Dsr_msgs2SrvSetSafetyMode_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSingularHandlingForce_Request.
impl Component for Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSingularHandlingForce_Response.
impl Component for Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSingularityHandling_Request.
impl Component for Ros2Dsr_msgs2SrvSetSingularityHandling_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetSingularityHandling_Response.
impl Component for Ros2Dsr_msgs2SrvSetSingularityHandling_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetStiffnessx_Request.
impl Component for Ros2Dsr_msgs2SrvSetStiffnessx_Request {
    const MAX_WIRE: usize = 57;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetStiffnessx_Response.
impl Component for Ros2Dsr_msgs2SrvSetStiffnessx_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetToolDigitalOutput_Request.
impl Component for Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetToolDigitalOutput_Response.
impl Component for Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetToolShape_Request.
impl Component for Ros2Dsr_msgs2SrvSetToolShape_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetToolShape_Response.
impl Component for Ros2Dsr_msgs2SrvSetToolShape_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetUserCartCoord1_Request.
impl Component for Ros2Dsr_msgs2SrvSetUserCartCoord1_Request {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetUserCartCoord1_Response.
impl Component for Ros2Dsr_msgs2SrvSetUserCartCoord1_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetUserCartCoord2_Request.
impl Component for Ros2Dsr_msgs2SrvSetUserCartCoord2_Request {
    const MAX_WIRE: usize = 193;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetUserCartCoord2_Response.
impl Component for Ros2Dsr_msgs2SrvSetUserCartCoord2_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetUserCartCoord3_Request.
impl Component for Ros2Dsr_msgs2SrvSetUserCartCoord3_Request {
    const MAX_WIRE: usize = 97;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetUserCartCoord3_Response.
impl Component for Ros2Dsr_msgs2SrvSetUserCartCoord3_Response {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetVeljRt_Request.
impl Component for Ros2Dsr_msgs2SrvSetVeljRt_Request {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetVeljRt_Response.
impl Component for Ros2Dsr_msgs2SrvSetVeljRt_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetVelxRt_Request.
impl Component for Ros2Dsr_msgs2SrvSetVelxRt_Request {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/SetVelxRt_Response.
impl Component for Ros2Dsr_msgs2SrvSetVelxRt_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/StartRtControl_Request.
impl Component for Ros2Dsr_msgs2SrvStartRtControl_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/StartRtControl_Response.
impl Component for Ros2Dsr_msgs2SrvStartRtControl_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/StopRtControl_Request.
impl Component for Ros2Dsr_msgs2SrvStopRtControl_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/StopRtControl_Response.
impl Component for Ros2Dsr_msgs2SrvStopRtControl_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/TaskComplianceCtrl_Request.
impl Component for Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request {
    const MAX_WIRE: usize = 57;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/TaskComplianceCtrl_Response.
impl Component for Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Trans_Request.
impl Component for Ros2Dsr_msgs2SrvTrans_Request {
    const MAX_WIRE: usize = 98;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/Trans_Response.
impl Component for Ros2Dsr_msgs2SrvTrans_Response {
    const MAX_WIRE: usize = 49;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/WriteDataRt_Request.
impl Component for Ros2Dsr_msgs2SrvWriteDataRt_Request {
    const MAX_WIRE: usize = 152;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dsr_msgs2/srv/WriteDataRt_Response.
impl Component for Ros2Dsr_msgs2SrvWriteDataRt_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete custom dsr_msgs2/action/JogH2r client; four roles plus optional cancel-any.
pub type Ros2Dsr_msgs2ActionJogH2rClient = ActionClient<
    Ros2Dsr_msgs2ActionJogH2r_Goal,
    Ros2Dsr_msgs2ActionJogH2r_Result,
    Ros2Dsr_msgs2ActionJogH2r_Feedback,
>;

/// Complete custom dsr_msgs2/action/JogH2r server; feedback1/terminal2..4 remain distinct.
pub type Ros2Dsr_msgs2ActionJogH2rServer = ActionServer<
    Ros2Dsr_msgs2ActionJogH2r_Goal,
    Ros2Dsr_msgs2ActionJogH2r_Result,
    Ros2Dsr_msgs2ActionJogH2r_Feedback,
>;

/// Complete custom dsr_msgs2/action/MovejH2r client; four roles plus optional cancel-any.
pub type Ros2Dsr_msgs2ActionMovejH2rClient = ActionClient<
    Ros2Dsr_msgs2ActionMovejH2r_Goal,
    Ros2Dsr_msgs2ActionMovejH2r_Result,
    Ros2Dsr_msgs2ActionMovejH2r_Feedback,
>;

/// Complete custom dsr_msgs2/action/MovejH2r server; feedback1/terminal2..4 remain distinct.
pub type Ros2Dsr_msgs2ActionMovejH2rServer = ActionServer<
    Ros2Dsr_msgs2ActionMovejH2r_Goal,
    Ros2Dsr_msgs2ActionMovejH2r_Result,
    Ros2Dsr_msgs2ActionMovejH2r_Feedback,
>;

/// Complete custom dsr_msgs2/action/MovelH2r client; four roles plus optional cancel-any.
pub type Ros2Dsr_msgs2ActionMovelH2rClient = ActionClient<
    Ros2Dsr_msgs2ActionMovelH2r_Goal,
    Ros2Dsr_msgs2ActionMovelH2r_Result,
    Ros2Dsr_msgs2ActionMovelH2r_Feedback,
>;

/// Complete custom dsr_msgs2/action/MovelH2r server; feedback1/terminal2..4 remain distinct.
pub type Ros2Dsr_msgs2ActionMovelH2rServer = ActionServer<
    Ros2Dsr_msgs2ActionMovelH2r_Goal,
    Ros2Dsr_msgs2ActionMovelH2r_Result,
    Ros2Dsr_msgs2ActionMovelH2r_Feedback,
>;

/// Typed dsr_msgs2/srv/AlignAxis1 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvAlignAxis1Client =
    ServiceClient<Ros2Dsr_msgs2SrvAlignAxis1_Request, Ros2Dsr_msgs2SrvAlignAxis1_Response>;

/// Typed dsr_msgs2/srv/AlignAxis1 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvAlignAxis1Server =
    ServiceServer<Ros2Dsr_msgs2SrvAlignAxis1_Request, Ros2Dsr_msgs2SrvAlignAxis1_Response>;

/// Typed dsr_msgs2/srv/AlignAxis2 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvAlignAxis2Client =
    ServiceClient<Ros2Dsr_msgs2SrvAlignAxis2_Request, Ros2Dsr_msgs2SrvAlignAxis2_Response>;

/// Typed dsr_msgs2/srv/AlignAxis2 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvAlignAxis2Server =
    ServiceServer<Ros2Dsr_msgs2SrvAlignAxis2_Request, Ros2Dsr_msgs2SrvAlignAxis2_Response>;

/// Typed dsr_msgs2/srv/AlterMotion call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvAlterMotionClient =
    ServiceClient<Ros2Dsr_msgs2SrvAlterMotion_Request, Ros2Dsr_msgs2SrvAlterMotion_Response>;

/// Typed dsr_msgs2/srv/AlterMotion advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvAlterMotionServer =
    ServiceServer<Ros2Dsr_msgs2SrvAlterMotion_Request, Ros2Dsr_msgs2SrvAlterMotion_Response>;

/// Typed dsr_msgs2/srv/CalcCoord call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvCalcCoordClient =
    ServiceClient<Ros2Dsr_msgs2SrvCalcCoord_Request, Ros2Dsr_msgs2SrvCalcCoord_Response>;

/// Typed dsr_msgs2/srv/CalcCoord advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvCalcCoordServer =
    ServiceServer<Ros2Dsr_msgs2SrvCalcCoord_Request, Ros2Dsr_msgs2SrvCalcCoord_Response>;

/// Typed dsr_msgs2/srv/ChangeCollisionSensitivity call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvChangeCollisionSensitivityClient = ServiceClient<
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request,
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response,
>;

/// Typed dsr_msgs2/srv/ChangeCollisionSensitivity advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvChangeCollisionSensitivityServer = ServiceServer<
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request,
    Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response,
>;

/// Typed dsr_msgs2/srv/ChangeOperationSpeed call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvChangeOperationSpeedClient = ServiceClient<
    Ros2Dsr_msgs2SrvChangeOperationSpeed_Request,
    Ros2Dsr_msgs2SrvChangeOperationSpeed_Response,
>;

/// Typed dsr_msgs2/srv/ChangeOperationSpeed advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvChangeOperationSpeedServer = ServiceServer<
    Ros2Dsr_msgs2SrvChangeOperationSpeed_Request,
    Ros2Dsr_msgs2SrvChangeOperationSpeed_Response,
>;

/// Typed dsr_msgs2/srv/CheckForceCondition call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvCheckForceConditionClient = ServiceClient<
    Ros2Dsr_msgs2SrvCheckForceCondition_Request,
    Ros2Dsr_msgs2SrvCheckForceCondition_Response,
>;

/// Typed dsr_msgs2/srv/CheckForceCondition advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvCheckForceConditionServer = ServiceServer<
    Ros2Dsr_msgs2SrvCheckForceCondition_Request,
    Ros2Dsr_msgs2SrvCheckForceCondition_Response,
>;

/// Typed dsr_msgs2/srv/CheckMotion call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvCheckMotionClient =
    ServiceClient<Ros2Dsr_msgs2SrvCheckMotion_Request, Ros2Dsr_msgs2SrvCheckMotion_Response>;

/// Typed dsr_msgs2/srv/CheckMotion advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvCheckMotionServer =
    ServiceServer<Ros2Dsr_msgs2SrvCheckMotion_Request, Ros2Dsr_msgs2SrvCheckMotion_Response>;

/// Typed dsr_msgs2/srv/CheckOrientationCondition1 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvCheckOrientationCondition1Client = ServiceClient<
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request,
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response,
>;

/// Typed dsr_msgs2/srv/CheckOrientationCondition1 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvCheckOrientationCondition1Server = ServiceServer<
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request,
    Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response,
>;

/// Typed dsr_msgs2/srv/CheckOrientationCondition2 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvCheckOrientationCondition2Client = ServiceClient<
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request,
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response,
>;

/// Typed dsr_msgs2/srv/CheckOrientationCondition2 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvCheckOrientationCondition2Server = ServiceServer<
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request,
    Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response,
>;

/// Typed dsr_msgs2/srv/CheckPositionCondition call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvCheckPositionConditionClient = ServiceClient<
    Ros2Dsr_msgs2SrvCheckPositionCondition_Request,
    Ros2Dsr_msgs2SrvCheckPositionCondition_Response,
>;

/// Typed dsr_msgs2/srv/CheckPositionCondition advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvCheckPositionConditionServer = ServiceServer<
    Ros2Dsr_msgs2SrvCheckPositionCondition_Request,
    Ros2Dsr_msgs2SrvCheckPositionCondition_Response,
>;

/// Typed dsr_msgs2/srv/ConfigCreateModbus call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvConfigCreateModbusClient = ServiceClient<
    Ros2Dsr_msgs2SrvConfigCreateModbus_Request,
    Ros2Dsr_msgs2SrvConfigCreateModbus_Response,
>;

/// Typed dsr_msgs2/srv/ConfigCreateModbus advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvConfigCreateModbusServer = ServiceServer<
    Ros2Dsr_msgs2SrvConfigCreateModbus_Request,
    Ros2Dsr_msgs2SrvConfigCreateModbus_Response,
>;

/// Typed dsr_msgs2/srv/ConfigCreateTcp call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvConfigCreateTcpClient = ServiceClient<
    Ros2Dsr_msgs2SrvConfigCreateTcp_Request,
    Ros2Dsr_msgs2SrvConfigCreateTcp_Response,
>;

/// Typed dsr_msgs2/srv/ConfigCreateTcp advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvConfigCreateTcpServer = ServiceServer<
    Ros2Dsr_msgs2SrvConfigCreateTcp_Request,
    Ros2Dsr_msgs2SrvConfigCreateTcp_Response,
>;

/// Typed dsr_msgs2/srv/ConfigCreateTool call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvConfigCreateToolClient = ServiceClient<
    Ros2Dsr_msgs2SrvConfigCreateTool_Request,
    Ros2Dsr_msgs2SrvConfigCreateTool_Response,
>;

/// Typed dsr_msgs2/srv/ConfigCreateTool advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvConfigCreateToolServer = ServiceServer<
    Ros2Dsr_msgs2SrvConfigCreateTool_Request,
    Ros2Dsr_msgs2SrvConfigCreateTool_Response,
>;

/// Typed dsr_msgs2/srv/ConfigDeleteModbus call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvConfigDeleteModbusClient = ServiceClient<
    Ros2Dsr_msgs2SrvConfigDeleteModbus_Request,
    Ros2Dsr_msgs2SrvConfigDeleteModbus_Response,
>;

/// Typed dsr_msgs2/srv/ConfigDeleteModbus advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvConfigDeleteModbusServer = ServiceServer<
    Ros2Dsr_msgs2SrvConfigDeleteModbus_Request,
    Ros2Dsr_msgs2SrvConfigDeleteModbus_Response,
>;

/// Typed dsr_msgs2/srv/ConfigDeleteTcp call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvConfigDeleteTcpClient = ServiceClient<
    Ros2Dsr_msgs2SrvConfigDeleteTcp_Request,
    Ros2Dsr_msgs2SrvConfigDeleteTcp_Response,
>;

/// Typed dsr_msgs2/srv/ConfigDeleteTcp advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvConfigDeleteTcpServer = ServiceServer<
    Ros2Dsr_msgs2SrvConfigDeleteTcp_Request,
    Ros2Dsr_msgs2SrvConfigDeleteTcp_Response,
>;

/// Typed dsr_msgs2/srv/ConfigDeleteTool call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvConfigDeleteToolClient = ServiceClient<
    Ros2Dsr_msgs2SrvConfigDeleteTool_Request,
    Ros2Dsr_msgs2SrvConfigDeleteTool_Response,
>;

/// Typed dsr_msgs2/srv/ConfigDeleteTool advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvConfigDeleteToolServer = ServiceServer<
    Ros2Dsr_msgs2SrvConfigDeleteTool_Request,
    Ros2Dsr_msgs2SrvConfigDeleteTool_Response,
>;

/// Typed dsr_msgs2/srv/ConnectRtControl call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvConnectRtControlClient = ServiceClient<
    Ros2Dsr_msgs2SrvConnectRtControl_Request,
    Ros2Dsr_msgs2SrvConnectRtControl_Response,
>;

/// Typed dsr_msgs2/srv/ConnectRtControl advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvConnectRtControlServer = ServiceServer<
    Ros2Dsr_msgs2SrvConnectRtControl_Request,
    Ros2Dsr_msgs2SrvConnectRtControl_Response,
>;

/// Typed dsr_msgs2/srv/CoordTransform call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvCoordTransformClient =
    ServiceClient<Ros2Dsr_msgs2SrvCoordTransform_Request, Ros2Dsr_msgs2SrvCoordTransform_Response>;

/// Typed dsr_msgs2/srv/CoordTransform advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvCoordTransformServer =
    ServiceServer<Ros2Dsr_msgs2SrvCoordTransform_Request, Ros2Dsr_msgs2SrvCoordTransform_Response>;

/// Typed dsr_msgs2/srv/DisableAlterMotion call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvDisableAlterMotionClient = ServiceClient<
    Ros2Dsr_msgs2SrvDisableAlterMotion_Request,
    Ros2Dsr_msgs2SrvDisableAlterMotion_Response,
>;

/// Typed dsr_msgs2/srv/DisableAlterMotion advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvDisableAlterMotionServer = ServiceServer<
    Ros2Dsr_msgs2SrvDisableAlterMotion_Request,
    Ros2Dsr_msgs2SrvDisableAlterMotion_Response,
>;

/// Typed dsr_msgs2/srv/DisconnectRtControl call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvDisconnectRtControlClient = ServiceClient<
    Ros2Dsr_msgs2SrvDisconnectRtControl_Request,
    Ros2Dsr_msgs2SrvDisconnectRtControl_Response,
>;

/// Typed dsr_msgs2/srv/DisconnectRtControl advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvDisconnectRtControlServer = ServiceServer<
    Ros2Dsr_msgs2SrvDisconnectRtControl_Request,
    Ros2Dsr_msgs2SrvDisconnectRtControl_Response,
>;

/// Typed dsr_msgs2/srv/DrlPause call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvDrlPauseClient =
    ServiceClient<Ros2Dsr_msgs2SrvDrlPause_Request, Ros2Dsr_msgs2SrvDrlPause_Response>;

/// Typed dsr_msgs2/srv/DrlPause advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvDrlPauseServer =
    ServiceServer<Ros2Dsr_msgs2SrvDrlPause_Request, Ros2Dsr_msgs2SrvDrlPause_Response>;

/// Typed dsr_msgs2/srv/DrlResume call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvDrlResumeClient =
    ServiceClient<Ros2Dsr_msgs2SrvDrlResume_Request, Ros2Dsr_msgs2SrvDrlResume_Response>;

/// Typed dsr_msgs2/srv/DrlResume advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvDrlResumeServer =
    ServiceServer<Ros2Dsr_msgs2SrvDrlResume_Request, Ros2Dsr_msgs2SrvDrlResume_Response>;

/// Typed dsr_msgs2/srv/DrlStart call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvDrlStartClient =
    ServiceClient<Ros2Dsr_msgs2SrvDrlStart_Request, Ros2Dsr_msgs2SrvDrlStart_Response>;

/// Typed dsr_msgs2/srv/DrlStart advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvDrlStartServer =
    ServiceServer<Ros2Dsr_msgs2SrvDrlStart_Request, Ros2Dsr_msgs2SrvDrlStart_Response>;

/// Typed dsr_msgs2/srv/DrlStop call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvDrlStopClient =
    ServiceClient<Ros2Dsr_msgs2SrvDrlStop_Request, Ros2Dsr_msgs2SrvDrlStop_Response>;

/// Typed dsr_msgs2/srv/DrlStop advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvDrlStopServer =
    ServiceServer<Ros2Dsr_msgs2SrvDrlStop_Request, Ros2Dsr_msgs2SrvDrlStop_Response>;

/// Typed dsr_msgs2/srv/EnableAlterMotion call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvEnableAlterMotionClient = ServiceClient<
    Ros2Dsr_msgs2SrvEnableAlterMotion_Request,
    Ros2Dsr_msgs2SrvEnableAlterMotion_Response,
>;

/// Typed dsr_msgs2/srv/EnableAlterMotion advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvEnableAlterMotionServer = ServiceServer<
    Ros2Dsr_msgs2SrvEnableAlterMotion_Request,
    Ros2Dsr_msgs2SrvEnableAlterMotion_Response,
>;

/// Typed dsr_msgs2/srv/Fkin call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvFkinClient =
    ServiceClient<Ros2Dsr_msgs2SrvFkin_Request, Ros2Dsr_msgs2SrvFkin_Response>;

/// Typed dsr_msgs2/srv/Fkin advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvFkinServer =
    ServiceServer<Ros2Dsr_msgs2SrvFkin_Request, Ros2Dsr_msgs2SrvFkin_Response>;

/// Typed dsr_msgs2/srv/GetControlMode call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetControlModeClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetControlMode_Request, Ros2Dsr_msgs2SrvGetControlMode_Response>;

/// Typed dsr_msgs2/srv/GetControlMode advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetControlModeServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetControlMode_Request, Ros2Dsr_msgs2SrvGetControlMode_Response>;

/// Typed dsr_msgs2/srv/GetControlSpace call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetControlSpaceClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetControlSpace_Request,
    Ros2Dsr_msgs2SrvGetControlSpace_Response,
>;

/// Typed dsr_msgs2/srv/GetControlSpace advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetControlSpaceServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetControlSpace_Request,
    Ros2Dsr_msgs2SrvGetControlSpace_Response,
>;

/// Typed dsr_msgs2/srv/GetCtrlBoxAnalogInput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response,
>;

/// Typed dsr_msgs2/srv/GetCtrlBoxAnalogInput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInputServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response,
>;

/// Typed dsr_msgs2/srv/GetCtrlBoxDigitalInput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response,
>;

/// Typed dsr_msgs2/srv/GetCtrlBoxDigitalInput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInputServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response,
>;

/// Typed dsr_msgs2/srv/GetCtrlBoxDigitalOutput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/GetCtrlBoxDigitalOutput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutputServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request,
    Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/GetCurrentPose call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentPoseClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentPose_Request, Ros2Dsr_msgs2SrvGetCurrentPose_Response>;

/// Typed dsr_msgs2/srv/GetCurrentPose advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentPoseServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentPose_Request, Ros2Dsr_msgs2SrvGetCurrentPose_Response>;

/// Typed dsr_msgs2/srv/GetCurrentPosj call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentPosjClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentPosj_Request, Ros2Dsr_msgs2SrvGetCurrentPosj_Response>;

/// Typed dsr_msgs2/srv/GetCurrentPosj advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentPosjServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentPosj_Request, Ros2Dsr_msgs2SrvGetCurrentPosj_Response>;

/// Typed dsr_msgs2/srv/GetCurrentPosx call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentPosxClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentPosx_Request, Ros2Dsr_msgs2SrvGetCurrentPosx_Response>;

/// Typed dsr_msgs2/srv/GetCurrentPosx advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentPosxServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentPosx_Request, Ros2Dsr_msgs2SrvGetCurrentPosx_Response>;

/// Typed dsr_msgs2/srv/GetCurrentRotm call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentRotmClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentRotm_Request, Ros2Dsr_msgs2SrvGetCurrentRotm_Response>;

/// Typed dsr_msgs2/srv/GetCurrentRotm advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentRotmServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentRotm_Request, Ros2Dsr_msgs2SrvGetCurrentRotm_Response>;

/// Typed dsr_msgs2/srv/GetCurrentSolutionSpace call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request,
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response,
>;

/// Typed dsr_msgs2/srv/GetCurrentSolutionSpace advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentSolutionSpaceServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request,
    Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response,
>;

/// Typed dsr_msgs2/srv/GetCurrentTcp call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentTcpClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentTcp_Request, Ros2Dsr_msgs2SrvGetCurrentTcp_Response>;

/// Typed dsr_msgs2/srv/GetCurrentTcp advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentTcpServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentTcp_Request, Ros2Dsr_msgs2SrvGetCurrentTcp_Response>;

/// Typed dsr_msgs2/srv/GetCurrentTool call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentToolClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentTool_Request, Ros2Dsr_msgs2SrvGetCurrentTool_Response>;

/// Typed dsr_msgs2/srv/GetCurrentTool advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentToolServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentTool_Request, Ros2Dsr_msgs2SrvGetCurrentTool_Response>;

/// Typed dsr_msgs2/srv/GetCurrentToolFlangePosx call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request,
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response,
>;

/// Typed dsr_msgs2/srv/GetCurrentToolFlangePosx advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentToolFlangePosxServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request,
    Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response,
>;

/// Typed dsr_msgs2/srv/GetCurrentVelj call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentVeljClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentVelj_Request, Ros2Dsr_msgs2SrvGetCurrentVelj_Response>;

/// Typed dsr_msgs2/srv/GetCurrentVelj advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentVeljServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentVelj_Request, Ros2Dsr_msgs2SrvGetCurrentVelj_Response>;

/// Typed dsr_msgs2/srv/GetCurrentVelx call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetCurrentVelxClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetCurrentVelx_Request, Ros2Dsr_msgs2SrvGetCurrentVelx_Response>;

/// Typed dsr_msgs2/srv/GetCurrentVelx advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetCurrentVelxServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetCurrentVelx_Request, Ros2Dsr_msgs2SrvGetCurrentVelx_Response>;

/// Typed dsr_msgs2/srv/GetDesiredPosj call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetDesiredPosjClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetDesiredPosj_Request, Ros2Dsr_msgs2SrvGetDesiredPosj_Response>;

/// Typed dsr_msgs2/srv/GetDesiredPosj advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetDesiredPosjServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetDesiredPosj_Request, Ros2Dsr_msgs2SrvGetDesiredPosj_Response>;

/// Typed dsr_msgs2/srv/GetDesiredPosx call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetDesiredPosxClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetDesiredPosx_Request, Ros2Dsr_msgs2SrvGetDesiredPosx_Response>;

/// Typed dsr_msgs2/srv/GetDesiredPosx advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetDesiredPosxServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetDesiredPosx_Request, Ros2Dsr_msgs2SrvGetDesiredPosx_Response>;

/// Typed dsr_msgs2/srv/GetDesiredVelj call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetDesiredVeljClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetDesiredVelj_Request, Ros2Dsr_msgs2SrvGetDesiredVelj_Response>;

/// Typed dsr_msgs2/srv/GetDesiredVelj advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetDesiredVeljServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetDesiredVelj_Request, Ros2Dsr_msgs2SrvGetDesiredVelj_Response>;

/// Typed dsr_msgs2/srv/GetDesiredVelx call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetDesiredVelxClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetDesiredVelx_Request, Ros2Dsr_msgs2SrvGetDesiredVelx_Response>;

/// Typed dsr_msgs2/srv/GetDesiredVelx advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetDesiredVelxServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetDesiredVelx_Request, Ros2Dsr_msgs2SrvGetDesiredVelx_Response>;

/// Typed dsr_msgs2/srv/GetDrlState call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetDrlStateClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetDrlState_Request, Ros2Dsr_msgs2SrvGetDrlState_Response>;

/// Typed dsr_msgs2/srv/GetDrlState advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetDrlStateServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetDrlState_Request, Ros2Dsr_msgs2SrvGetDrlState_Response>;

/// Typed dsr_msgs2/srv/GetExternalTorque call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetExternalTorqueClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetExternalTorque_Request,
    Ros2Dsr_msgs2SrvGetExternalTorque_Response,
>;

/// Typed dsr_msgs2/srv/GetExternalTorque advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetExternalTorqueServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetExternalTorque_Request,
    Ros2Dsr_msgs2SrvGetExternalTorque_Response,
>;

/// Typed dsr_msgs2/srv/GetInputRegisterBit call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetInputRegisterBitClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetInputRegisterBit_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterBit_Response,
>;

/// Typed dsr_msgs2/srv/GetInputRegisterBit advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetInputRegisterBitServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetInputRegisterBit_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterBit_Response,
>;

/// Typed dsr_msgs2/srv/GetInputRegisterFloat call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetInputRegisterFloatClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response,
>;

/// Typed dsr_msgs2/srv/GetInputRegisterFloat advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetInputRegisterFloatServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response,
>;

/// Typed dsr_msgs2/srv/GetInputRegisterInt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetInputRegisterIntClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetInputRegisterInt_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterInt_Response,
>;

/// Typed dsr_msgs2/srv/GetInputRegisterInt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetInputRegisterIntServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetInputRegisterInt_Request,
    Ros2Dsr_msgs2SrvGetInputRegisterInt_Response,
>;

/// Typed dsr_msgs2/srv/GetJointTorque call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetJointTorqueClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetJointTorque_Request, Ros2Dsr_msgs2SrvGetJointTorque_Response>;

/// Typed dsr_msgs2/srv/GetJointTorque advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetJointTorqueServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetJointTorque_Request, Ros2Dsr_msgs2SrvGetJointTorque_Response>;

/// Typed dsr_msgs2/srv/GetLastAlarm call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetLastAlarmClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetLastAlarm_Request, Ros2Dsr_msgs2SrvGetLastAlarm_Response>;

/// Typed dsr_msgs2/srv/GetLastAlarm advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetLastAlarmServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetLastAlarm_Request, Ros2Dsr_msgs2SrvGetLastAlarm_Response>;

/// Typed dsr_msgs2/srv/GetModbusInput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetModbusInputClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetModbusInput_Request, Ros2Dsr_msgs2SrvGetModbusInput_Response>;

/// Typed dsr_msgs2/srv/GetModbusInput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetModbusInputServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetModbusInput_Request, Ros2Dsr_msgs2SrvGetModbusInput_Response>;

/// Typed dsr_msgs2/srv/GetOrientationError call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetOrientationErrorClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetOrientationError_Request,
    Ros2Dsr_msgs2SrvGetOrientationError_Response,
>;

/// Typed dsr_msgs2/srv/GetOrientationError advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetOrientationErrorServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetOrientationError_Request,
    Ros2Dsr_msgs2SrvGetOrientationError_Response,
>;

/// Typed dsr_msgs2/srv/GetOutputRegisterBit call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetOutputRegisterBitClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response,
>;

/// Typed dsr_msgs2/srv/GetOutputRegisterBit advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetOutputRegisterBitServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response,
>;

/// Typed dsr_msgs2/srv/GetOutputRegisterFloat call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetOutputRegisterFloatClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response,
>;

/// Typed dsr_msgs2/srv/GetOutputRegisterFloat advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetOutputRegisterFloatServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response,
>;

/// Typed dsr_msgs2/srv/GetOutputRegisterInt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetOutputRegisterIntClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response,
>;

/// Typed dsr_msgs2/srv/GetOutputRegisterInt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetOutputRegisterIntServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request,
    Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response,
>;

/// Typed dsr_msgs2/srv/GetRobotLinkInfo call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRobotLinkInfoClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request,
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response,
>;

/// Typed dsr_msgs2/srv/GetRobotLinkInfo advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRobotLinkInfoServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request,
    Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response,
>;

/// Typed dsr_msgs2/srv/GetRobotMode call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRobotModeClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetRobotMode_Request, Ros2Dsr_msgs2SrvGetRobotMode_Response>;

/// Typed dsr_msgs2/srv/GetRobotMode advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRobotModeServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetRobotMode_Request, Ros2Dsr_msgs2SrvGetRobotMode_Response>;

/// Typed dsr_msgs2/srv/GetRobotSpeedMode call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRobotSpeedModeClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request,
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response,
>;

/// Typed dsr_msgs2/srv/GetRobotSpeedMode advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRobotSpeedModeServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request,
    Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response,
>;

/// Typed dsr_msgs2/srv/GetRobotState call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRobotStateClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetRobotState_Request, Ros2Dsr_msgs2SrvGetRobotState_Response>;

/// Typed dsr_msgs2/srv/GetRobotState advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRobotStateServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetRobotState_Request, Ros2Dsr_msgs2SrvGetRobotState_Response>;

/// Typed dsr_msgs2/srv/GetRobotSystem call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRobotSystemClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetRobotSystem_Request, Ros2Dsr_msgs2SrvGetRobotSystem_Response>;

/// Typed dsr_msgs2/srv/GetRobotSystem advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRobotSystemServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetRobotSystem_Request, Ros2Dsr_msgs2SrvGetRobotSystem_Response>;

/// Typed dsr_msgs2/srv/GetRtControlInputDataList call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRtControlInputDataListClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request,
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response,
>;

/// Typed dsr_msgs2/srv/GetRtControlInputDataList advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRtControlInputDataListServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request,
    Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response,
>;

/// Typed dsr_msgs2/srv/GetRtControlInputVersionList call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRtControlInputVersionListClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request,
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response,
>;

/// Typed dsr_msgs2/srv/GetRtControlInputVersionList advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRtControlInputVersionListServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request,
    Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response,
>;

/// Typed dsr_msgs2/srv/GetRtControlOutputDataList call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRtControlOutputDataListClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request,
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response,
>;

/// Typed dsr_msgs2/srv/GetRtControlOutputDataList advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRtControlOutputDataListServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request,
    Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response,
>;

/// Typed dsr_msgs2/srv/GetRtControlOutputVersionList call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetRtControlOutputVersionListClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request,
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response,
>;

/// Typed dsr_msgs2/srv/GetRtControlOutputVersionList advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetRtControlOutputVersionListServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request,
    Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response,
>;

/// Typed dsr_msgs2/srv/GetSolutionSpace call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetSolutionSpaceClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetSolutionSpace_Request,
    Ros2Dsr_msgs2SrvGetSolutionSpace_Response,
>;

/// Typed dsr_msgs2/srv/GetSolutionSpace advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetSolutionSpaceServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetSolutionSpace_Request,
    Ros2Dsr_msgs2SrvGetSolutionSpace_Response,
>;

/// Typed dsr_msgs2/srv/GetToolDigitalInput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetToolDigitalInputClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetToolDigitalInput_Request,
    Ros2Dsr_msgs2SrvGetToolDigitalInput_Response,
>;

/// Typed dsr_msgs2/srv/GetToolDigitalInput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetToolDigitalInputServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetToolDigitalInput_Request,
    Ros2Dsr_msgs2SrvGetToolDigitalInput_Response,
>;

/// Typed dsr_msgs2/srv/GetToolDigitalOutput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetToolDigitalOutputClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request,
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/GetToolDigitalOutput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetToolDigitalOutputServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request,
    Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/GetToolForce call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetToolForceClient =
    ServiceClient<Ros2Dsr_msgs2SrvGetToolForce_Request, Ros2Dsr_msgs2SrvGetToolForce_Response>;

/// Typed dsr_msgs2/srv/GetToolForce advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetToolForceServer =
    ServiceServer<Ros2Dsr_msgs2SrvGetToolForce_Request, Ros2Dsr_msgs2SrvGetToolForce_Response>;

/// Typed dsr_msgs2/srv/GetUserCartCoord call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetUserCartCoordClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetUserCartCoord_Request,
    Ros2Dsr_msgs2SrvGetUserCartCoord_Response,
>;

/// Typed dsr_msgs2/srv/GetUserCartCoord advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetUserCartCoordServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetUserCartCoord_Request,
    Ros2Dsr_msgs2SrvGetUserCartCoord_Response,
>;

/// Typed dsr_msgs2/srv/GetWorkpieceWeight call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvGetWorkpieceWeightClient = ServiceClient<
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request,
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response,
>;

/// Typed dsr_msgs2/srv/GetWorkpieceWeight advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvGetWorkpieceWeightServer = ServiceServer<
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request,
    Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response,
>;

/// Typed dsr_msgs2/srv/Ikin call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvIkinClient =
    ServiceClient<Ros2Dsr_msgs2SrvIkin_Request, Ros2Dsr_msgs2SrvIkin_Response>;

/// Typed dsr_msgs2/srv/Ikin advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvIkinServer =
    ServiceServer<Ros2Dsr_msgs2SrvIkin_Request, Ros2Dsr_msgs2SrvIkin_Response>;

/// Typed dsr_msgs2/srv/IsDoneBoltTightening call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvIsDoneBoltTighteningClient = ServiceClient<
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request,
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response,
>;

/// Typed dsr_msgs2/srv/IsDoneBoltTightening advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvIsDoneBoltTighteningServer = ServiceServer<
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request,
    Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response,
>;

/// Typed dsr_msgs2/srv/Jog call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvJogClient =
    ServiceClient<Ros2Dsr_msgs2SrvJog_Request, Ros2Dsr_msgs2SrvJog_Response>;

/// Typed dsr_msgs2/srv/Jog advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvJogServer =
    ServiceServer<Ros2Dsr_msgs2SrvJog_Request, Ros2Dsr_msgs2SrvJog_Response>;

/// Typed dsr_msgs2/srv/JogMulti call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvJogMultiClient =
    ServiceClient<Ros2Dsr_msgs2SrvJogMulti_Request, Ros2Dsr_msgs2SrvJogMulti_Response>;

/// Typed dsr_msgs2/srv/JogMulti advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvJogMultiServer =
    ServiceServer<Ros2Dsr_msgs2SrvJogMulti_Request, Ros2Dsr_msgs2SrvJogMulti_Response>;

/// Typed dsr_msgs2/srv/MoveBlending call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveBlendingClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveBlending_Request, Ros2Dsr_msgs2SrvMoveBlending_Response>;

/// Typed dsr_msgs2/srv/MoveBlending advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveBlendingServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveBlending_Request, Ros2Dsr_msgs2SrvMoveBlending_Response>;

/// Typed dsr_msgs2/srv/MoveCircle call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveCircleClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveCircle_Request, Ros2Dsr_msgs2SrvMoveCircle_Response>;

/// Typed dsr_msgs2/srv/MoveCircle advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveCircleServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveCircle_Request, Ros2Dsr_msgs2SrvMoveCircle_Response>;

/// Typed dsr_msgs2/srv/MoveHome call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveHomeClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveHome_Request, Ros2Dsr_msgs2SrvMoveHome_Response>;

/// Typed dsr_msgs2/srv/MoveHome advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveHomeServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveHome_Request, Ros2Dsr_msgs2SrvMoveHome_Response>;

/// Typed dsr_msgs2/srv/MoveJoint call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveJointClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveJoint_Request, Ros2Dsr_msgs2SrvMoveJoint_Response>;

/// Typed dsr_msgs2/srv/MoveJoint advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveJointServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveJoint_Request, Ros2Dsr_msgs2SrvMoveJoint_Response>;

/// Typed dsr_msgs2/srv/MoveJointx call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveJointxClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveJointx_Request, Ros2Dsr_msgs2SrvMoveJointx_Response>;

/// Typed dsr_msgs2/srv/MoveJointx advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveJointxServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveJointx_Request, Ros2Dsr_msgs2SrvMoveJointx_Response>;

/// Typed dsr_msgs2/srv/MoveLine call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveLineClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveLine_Request, Ros2Dsr_msgs2SrvMoveLine_Response>;

/// Typed dsr_msgs2/srv/MoveLine advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveLineServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveLine_Request, Ros2Dsr_msgs2SrvMoveLine_Response>;

/// Typed dsr_msgs2/srv/MovePause call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMovePauseClient =
    ServiceClient<Ros2Dsr_msgs2SrvMovePause_Request, Ros2Dsr_msgs2SrvMovePause_Response>;

/// Typed dsr_msgs2/srv/MovePause advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMovePauseServer =
    ServiceServer<Ros2Dsr_msgs2SrvMovePause_Request, Ros2Dsr_msgs2SrvMovePause_Response>;

/// Typed dsr_msgs2/srv/MovePeriodic call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMovePeriodicClient =
    ServiceClient<Ros2Dsr_msgs2SrvMovePeriodic_Request, Ros2Dsr_msgs2SrvMovePeriodic_Response>;

/// Typed dsr_msgs2/srv/MovePeriodic advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMovePeriodicServer =
    ServiceServer<Ros2Dsr_msgs2SrvMovePeriodic_Request, Ros2Dsr_msgs2SrvMovePeriodic_Response>;

/// Typed dsr_msgs2/srv/MoveResume call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveResumeClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveResume_Request, Ros2Dsr_msgs2SrvMoveResume_Response>;

/// Typed dsr_msgs2/srv/MoveResume advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveResumeServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveResume_Request, Ros2Dsr_msgs2SrvMoveResume_Response>;

/// Typed dsr_msgs2/srv/MoveSpiral call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveSpiralClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveSpiral_Request, Ros2Dsr_msgs2SrvMoveSpiral_Response>;

/// Typed dsr_msgs2/srv/MoveSpiral advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveSpiralServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveSpiral_Request, Ros2Dsr_msgs2SrvMoveSpiral_Response>;

/// Typed dsr_msgs2/srv/MoveSplineJoint call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveSplineJointClient = ServiceClient<
    Ros2Dsr_msgs2SrvMoveSplineJoint_Request,
    Ros2Dsr_msgs2SrvMoveSplineJoint_Response,
>;

/// Typed dsr_msgs2/srv/MoveSplineJoint advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveSplineJointServer = ServiceServer<
    Ros2Dsr_msgs2SrvMoveSplineJoint_Request,
    Ros2Dsr_msgs2SrvMoveSplineJoint_Response,
>;

/// Typed dsr_msgs2/srv/MoveSplineTask call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveSplineTaskClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveSplineTask_Request, Ros2Dsr_msgs2SrvMoveSplineTask_Response>;

/// Typed dsr_msgs2/srv/MoveSplineTask advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveSplineTaskServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveSplineTask_Request, Ros2Dsr_msgs2SrvMoveSplineTask_Response>;

/// Typed dsr_msgs2/srv/MoveStop call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveStopClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveStop_Request, Ros2Dsr_msgs2SrvMoveStop_Response>;

/// Typed dsr_msgs2/srv/MoveStop advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveStopServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveStop_Request, Ros2Dsr_msgs2SrvMoveStop_Response>;

/// Typed dsr_msgs2/srv/MoveWait call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvMoveWaitClient =
    ServiceClient<Ros2Dsr_msgs2SrvMoveWait_Request, Ros2Dsr_msgs2SrvMoveWait_Response>;

/// Typed dsr_msgs2/srv/MoveWait advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvMoveWaitServer =
    ServiceServer<Ros2Dsr_msgs2SrvMoveWait_Request, Ros2Dsr_msgs2SrvMoveWait_Response>;

/// Typed dsr_msgs2/srv/OverwriteUserCartCoord call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvOverwriteUserCartCoordClient = ServiceClient<
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request,
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response,
>;

/// Typed dsr_msgs2/srv/OverwriteUserCartCoord advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvOverwriteUserCartCoordServer = ServiceServer<
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request,
    Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response,
>;

/// Typed dsr_msgs2/srv/ParallelAxis1 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvParallelAxis1Client =
    ServiceClient<Ros2Dsr_msgs2SrvParallelAxis1_Request, Ros2Dsr_msgs2SrvParallelAxis1_Response>;

/// Typed dsr_msgs2/srv/ParallelAxis1 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvParallelAxis1Server =
    ServiceServer<Ros2Dsr_msgs2SrvParallelAxis1_Request, Ros2Dsr_msgs2SrvParallelAxis1_Response>;

/// Typed dsr_msgs2/srv/ParallelAxis2 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvParallelAxis2Client =
    ServiceClient<Ros2Dsr_msgs2SrvParallelAxis2_Request, Ros2Dsr_msgs2SrvParallelAxis2_Response>;

/// Typed dsr_msgs2/srv/ParallelAxis2 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvParallelAxis2Server =
    ServiceServer<Ros2Dsr_msgs2SrvParallelAxis2_Request, Ros2Dsr_msgs2SrvParallelAxis2_Response>;

/// Typed dsr_msgs2/srv/ReadDataRt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvReadDataRtClient =
    ServiceClient<Ros2Dsr_msgs2SrvReadDataRt_Request, Ros2Dsr_msgs2SrvReadDataRt_Response>;

/// Typed dsr_msgs2/srv/ReadDataRt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvReadDataRtServer =
    ServiceServer<Ros2Dsr_msgs2SrvReadDataRt_Request, Ros2Dsr_msgs2SrvReadDataRt_Response>;

/// Typed dsr_msgs2/srv/ReleaseComplianceCtrl call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvReleaseComplianceCtrlClient = ServiceClient<
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request,
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response,
>;

/// Typed dsr_msgs2/srv/ReleaseComplianceCtrl advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvReleaseComplianceCtrlServer = ServiceServer<
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request,
    Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response,
>;

/// Typed dsr_msgs2/srv/ReleaseForce call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvReleaseForceClient =
    ServiceClient<Ros2Dsr_msgs2SrvReleaseForce_Request, Ros2Dsr_msgs2SrvReleaseForce_Response>;

/// Typed dsr_msgs2/srv/ReleaseForce advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvReleaseForceServer =
    ServiceServer<Ros2Dsr_msgs2SrvReleaseForce_Request, Ros2Dsr_msgs2SrvReleaseForce_Response>;

/// Typed dsr_msgs2/srv/ResetWorkpieceWeight call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvResetWorkpieceWeightClient = ServiceClient<
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request,
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response,
>;

/// Typed dsr_msgs2/srv/ResetWorkpieceWeight advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvResetWorkpieceWeightServer = ServiceServer<
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request,
    Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response,
>;

/// Typed dsr_msgs2/srv/Robotiq2FClose call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvRobotiq2FCloseClient =
    ServiceClient<Ros2Dsr_msgs2SrvRobotiq2FClose_Request, Ros2Dsr_msgs2SrvRobotiq2FClose_Response>;

/// Typed dsr_msgs2/srv/Robotiq2FClose advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvRobotiq2FCloseServer =
    ServiceServer<Ros2Dsr_msgs2SrvRobotiq2FClose_Request, Ros2Dsr_msgs2SrvRobotiq2FClose_Response>;

/// Typed dsr_msgs2/srv/Robotiq2FMove call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvRobotiq2FMoveClient =
    ServiceClient<Ros2Dsr_msgs2SrvRobotiq2FMove_Request, Ros2Dsr_msgs2SrvRobotiq2FMove_Response>;

/// Typed dsr_msgs2/srv/Robotiq2FMove advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvRobotiq2FMoveServer =
    ServiceServer<Ros2Dsr_msgs2SrvRobotiq2FMove_Request, Ros2Dsr_msgs2SrvRobotiq2FMove_Response>;

/// Typed dsr_msgs2/srv/Robotiq2FOpen call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvRobotiq2FOpenClient =
    ServiceClient<Ros2Dsr_msgs2SrvRobotiq2FOpen_Request, Ros2Dsr_msgs2SrvRobotiq2FOpen_Response>;

/// Typed dsr_msgs2/srv/Robotiq2FOpen advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvRobotiq2FOpenServer =
    ServiceServer<Ros2Dsr_msgs2SrvRobotiq2FOpen_Request, Ros2Dsr_msgs2SrvRobotiq2FOpen_Response>;

/// Typed dsr_msgs2/srv/SerialSendData call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSerialSendDataClient =
    ServiceClient<Ros2Dsr_msgs2SrvSerialSendData_Request, Ros2Dsr_msgs2SrvSerialSendData_Response>;

/// Typed dsr_msgs2/srv/SerialSendData advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSerialSendDataServer =
    ServiceServer<Ros2Dsr_msgs2SrvSerialSendData_Request, Ros2Dsr_msgs2SrvSerialSendData_Response>;

/// Typed dsr_msgs2/srv/ServoOff call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvServoOffClient =
    ServiceClient<Ros2Dsr_msgs2SrvServoOff_Request, Ros2Dsr_msgs2SrvServoOff_Response>;

/// Typed dsr_msgs2/srv/ServoOff advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvServoOffServer =
    ServiceServer<Ros2Dsr_msgs2SrvServoOff_Request, Ros2Dsr_msgs2SrvServoOff_Response>;

/// Typed dsr_msgs2/srv/SetAccjRt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetAccjRtClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetAccjRt_Request, Ros2Dsr_msgs2SrvSetAccjRt_Response>;

/// Typed dsr_msgs2/srv/SetAccjRt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetAccjRtServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetAccjRt_Request, Ros2Dsr_msgs2SrvSetAccjRt_Response>;

/// Typed dsr_msgs2/srv/SetAccxRt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetAccxRtClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetAccxRt_Request, Ros2Dsr_msgs2SrvSetAccxRt_Response>;

/// Typed dsr_msgs2/srv/SetAccxRt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetAccxRtServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetAccxRt_Request, Ros2Dsr_msgs2SrvSetAccxRt_Response>;

/// Typed dsr_msgs2/srv/SetCtrlBoxAnalogInputType call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response,
>;

/// Typed dsr_msgs2/srv/SetCtrlBoxAnalogInputType advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputTypeServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response,
>;

/// Typed dsr_msgs2/srv/SetCtrlBoxAnalogOutput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetCtrlBoxAnalogOutput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetCtrlBoxAnalogOutputType call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response,
>;

/// Typed dsr_msgs2/srv/SetCtrlBoxAnalogOutputType advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputTypeServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response,
>;

/// Typed dsr_msgs2/srv/SetCtrlBoxDigitalOutput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetCtrlBoxDigitalOutput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutputServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request,
    Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetCurrentTcp call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetCurrentTcpClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetCurrentTcp_Request, Ros2Dsr_msgs2SrvSetCurrentTcp_Response>;

/// Typed dsr_msgs2/srv/SetCurrentTcp advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetCurrentTcpServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetCurrentTcp_Request, Ros2Dsr_msgs2SrvSetCurrentTcp_Response>;

/// Typed dsr_msgs2/srv/SetCurrentTool call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetCurrentToolClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetCurrentTool_Request, Ros2Dsr_msgs2SrvSetCurrentTool_Response>;

/// Typed dsr_msgs2/srv/SetCurrentTool advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetCurrentToolServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetCurrentTool_Request, Ros2Dsr_msgs2SrvSetCurrentTool_Response>;

/// Typed dsr_msgs2/srv/SetDesiredForce call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetDesiredForceClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetDesiredForce_Request,
    Ros2Dsr_msgs2SrvSetDesiredForce_Response,
>;

/// Typed dsr_msgs2/srv/SetDesiredForce advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetDesiredForceServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetDesiredForce_Request,
    Ros2Dsr_msgs2SrvSetDesiredForce_Response,
>;

/// Typed dsr_msgs2/srv/SetModbusOutput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetModbusOutputClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetModbusOutput_Request,
    Ros2Dsr_msgs2SrvSetModbusOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetModbusOutput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetModbusOutputServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetModbusOutput_Request,
    Ros2Dsr_msgs2SrvSetModbusOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetOutputRegisterBit call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetOutputRegisterBitClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response,
>;

/// Typed dsr_msgs2/srv/SetOutputRegisterBit advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetOutputRegisterBitServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response,
>;

/// Typed dsr_msgs2/srv/SetOutputRegisterFloat call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetOutputRegisterFloatClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response,
>;

/// Typed dsr_msgs2/srv/SetOutputRegisterFloat advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetOutputRegisterFloatServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response,
>;

/// Typed dsr_msgs2/srv/SetOutputRegisterInt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetOutputRegisterIntClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response,
>;

/// Typed dsr_msgs2/srv/SetOutputRegisterInt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetOutputRegisterIntServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request,
    Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response,
>;

/// Typed dsr_msgs2/srv/SetRefCoord call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetRefCoordClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetRefCoord_Request, Ros2Dsr_msgs2SrvSetRefCoord_Response>;

/// Typed dsr_msgs2/srv/SetRefCoord advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetRefCoordServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetRefCoord_Request, Ros2Dsr_msgs2SrvSetRefCoord_Response>;

/// Typed dsr_msgs2/srv/SetRobotControl call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetRobotControlClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetRobotControl_Request,
    Ros2Dsr_msgs2SrvSetRobotControl_Response,
>;

/// Typed dsr_msgs2/srv/SetRobotControl advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetRobotControlServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetRobotControl_Request,
    Ros2Dsr_msgs2SrvSetRobotControl_Response,
>;

/// Typed dsr_msgs2/srv/SetRobotMode call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetRobotModeClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetRobotMode_Request, Ros2Dsr_msgs2SrvSetRobotMode_Response>;

/// Typed dsr_msgs2/srv/SetRobotMode advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetRobotModeServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetRobotMode_Request, Ros2Dsr_msgs2SrvSetRobotMode_Response>;

/// Typed dsr_msgs2/srv/SetRobotSpeedMode call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetRobotSpeedModeClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request,
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response,
>;

/// Typed dsr_msgs2/srv/SetRobotSpeedMode advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetRobotSpeedModeServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request,
    Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response,
>;

/// Typed dsr_msgs2/srv/SetRobotSystem call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetRobotSystemClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetRobotSystem_Request, Ros2Dsr_msgs2SrvSetRobotSystem_Response>;

/// Typed dsr_msgs2/srv/SetRobotSystem advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetRobotSystemServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetRobotSystem_Request, Ros2Dsr_msgs2SrvSetRobotSystem_Response>;

/// Typed dsr_msgs2/srv/SetRtControlInput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetRtControlInputClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetRtControlInput_Request,
    Ros2Dsr_msgs2SrvSetRtControlInput_Response,
>;

/// Typed dsr_msgs2/srv/SetRtControlInput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetRtControlInputServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetRtControlInput_Request,
    Ros2Dsr_msgs2SrvSetRtControlInput_Response,
>;

/// Typed dsr_msgs2/srv/SetRtControlOutput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetRtControlOutputClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetRtControlOutput_Request,
    Ros2Dsr_msgs2SrvSetRtControlOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetRtControlOutput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetRtControlOutputServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetRtControlOutput_Request,
    Ros2Dsr_msgs2SrvSetRtControlOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetSafeStopResetType call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetSafeStopResetTypeClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetSafeStopResetType_Request,
    Ros2Dsr_msgs2SrvSetSafeStopResetType_Response,
>;

/// Typed dsr_msgs2/srv/SetSafeStopResetType advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetSafeStopResetTypeServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetSafeStopResetType_Request,
    Ros2Dsr_msgs2SrvSetSafeStopResetType_Response,
>;

/// Typed dsr_msgs2/srv/SetSafetyMode call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetSafetyModeClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetSafetyMode_Request, Ros2Dsr_msgs2SrvSetSafetyMode_Response>;

/// Typed dsr_msgs2/srv/SetSafetyMode advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetSafetyModeServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetSafetyMode_Request, Ros2Dsr_msgs2SrvSetSafetyMode_Response>;

/// Typed dsr_msgs2/srv/SetSingularHandlingForce call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetSingularHandlingForceClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request,
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response,
>;

/// Typed dsr_msgs2/srv/SetSingularHandlingForce advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetSingularHandlingForceServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request,
    Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response,
>;

/// Typed dsr_msgs2/srv/SetSingularityHandling call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetSingularityHandlingClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetSingularityHandling_Request,
    Ros2Dsr_msgs2SrvSetSingularityHandling_Response,
>;

/// Typed dsr_msgs2/srv/SetSingularityHandling advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetSingularityHandlingServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetSingularityHandling_Request,
    Ros2Dsr_msgs2SrvSetSingularityHandling_Response,
>;

/// Typed dsr_msgs2/srv/SetStiffnessx call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetStiffnessxClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetStiffnessx_Request, Ros2Dsr_msgs2SrvSetStiffnessx_Response>;

/// Typed dsr_msgs2/srv/SetStiffnessx advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetStiffnessxServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetStiffnessx_Request, Ros2Dsr_msgs2SrvSetStiffnessx_Response>;

/// Typed dsr_msgs2/srv/SetToolDigitalOutput call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetToolDigitalOutputClient = ServiceClient<
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request,
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetToolDigitalOutput advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetToolDigitalOutputServer = ServiceServer<
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request,
    Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response,
>;

/// Typed dsr_msgs2/srv/SetToolShape call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetToolShapeClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetToolShape_Request, Ros2Dsr_msgs2SrvSetToolShape_Response>;

/// Typed dsr_msgs2/srv/SetToolShape advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetToolShapeServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetToolShape_Request, Ros2Dsr_msgs2SrvSetToolShape_Response>;

/// Typed dsr_msgs2/srv/SetUserCartCoord1 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetUserCartCoord1Client = ServiceClient<
    Ros2Dsr_msgs2SrvSetUserCartCoord1_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord1_Response,
>;

/// Typed dsr_msgs2/srv/SetUserCartCoord1 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetUserCartCoord1Server = ServiceServer<
    Ros2Dsr_msgs2SrvSetUserCartCoord1_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord1_Response,
>;

/// Typed dsr_msgs2/srv/SetUserCartCoord2 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetUserCartCoord2Client = ServiceClient<
    Ros2Dsr_msgs2SrvSetUserCartCoord2_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord2_Response,
>;

/// Typed dsr_msgs2/srv/SetUserCartCoord2 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetUserCartCoord2Server = ServiceServer<
    Ros2Dsr_msgs2SrvSetUserCartCoord2_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord2_Response,
>;

/// Typed dsr_msgs2/srv/SetUserCartCoord3 call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetUserCartCoord3Client = ServiceClient<
    Ros2Dsr_msgs2SrvSetUserCartCoord3_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord3_Response,
>;

/// Typed dsr_msgs2/srv/SetUserCartCoord3 advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetUserCartCoord3Server = ServiceServer<
    Ros2Dsr_msgs2SrvSetUserCartCoord3_Request,
    Ros2Dsr_msgs2SrvSetUserCartCoord3_Response,
>;

/// Typed dsr_msgs2/srv/SetVeljRt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetVeljRtClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetVeljRt_Request, Ros2Dsr_msgs2SrvSetVeljRt_Response>;

/// Typed dsr_msgs2/srv/SetVeljRt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetVeljRtServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetVeljRt_Request, Ros2Dsr_msgs2SrvSetVeljRt_Response>;

/// Typed dsr_msgs2/srv/SetVelxRt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvSetVelxRtClient =
    ServiceClient<Ros2Dsr_msgs2SrvSetVelxRt_Request, Ros2Dsr_msgs2SrvSetVelxRt_Response>;

/// Typed dsr_msgs2/srv/SetVelxRt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvSetVelxRtServer =
    ServiceServer<Ros2Dsr_msgs2SrvSetVelxRt_Request, Ros2Dsr_msgs2SrvSetVelxRt_Response>;

/// Typed dsr_msgs2/srv/StartRtControl call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvStartRtControlClient =
    ServiceClient<Ros2Dsr_msgs2SrvStartRtControl_Request, Ros2Dsr_msgs2SrvStartRtControl_Response>;

/// Typed dsr_msgs2/srv/StartRtControl advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvStartRtControlServer =
    ServiceServer<Ros2Dsr_msgs2SrvStartRtControl_Request, Ros2Dsr_msgs2SrvStartRtControl_Response>;

/// Typed dsr_msgs2/srv/StopRtControl call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvStopRtControlClient =
    ServiceClient<Ros2Dsr_msgs2SrvStopRtControl_Request, Ros2Dsr_msgs2SrvStopRtControl_Response>;

/// Typed dsr_msgs2/srv/StopRtControl advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvStopRtControlServer =
    ServiceServer<Ros2Dsr_msgs2SrvStopRtControl_Request, Ros2Dsr_msgs2SrvStopRtControl_Response>;

/// Typed dsr_msgs2/srv/TaskComplianceCtrl call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvTaskComplianceCtrlClient = ServiceClient<
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request,
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response,
>;

/// Typed dsr_msgs2/srv/TaskComplianceCtrl advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvTaskComplianceCtrlServer = ServiceServer<
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request,
    Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response,
>;

/// Typed dsr_msgs2/srv/Trans call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvTransClient =
    ServiceClient<Ros2Dsr_msgs2SrvTrans_Request, Ros2Dsr_msgs2SrvTrans_Response>;

/// Typed dsr_msgs2/srv/Trans advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvTransServer =
    ServiceServer<Ros2Dsr_msgs2SrvTrans_Request, Ros2Dsr_msgs2SrvTrans_Response>;

/// Typed dsr_msgs2/srv/WriteDataRt call/real-submit owner; every alias is explicit.
pub type Ros2Dsr_msgs2SrvWriteDataRtClient =
    ServiceClient<Ros2Dsr_msgs2SrvWriteDataRt_Request, Ros2Dsr_msgs2SrvWriteDataRt_Response>;

/// Typed dsr_msgs2/srv/WriteDataRt advertiser/responder with independent grants.
pub type Ros2Dsr_msgs2SrvWriteDataRtServer =
    ServiceServer<Ros2Dsr_msgs2SrvWriteDataRt_Request, Ros2Dsr_msgs2SrvWriteDataRt_Response>;
