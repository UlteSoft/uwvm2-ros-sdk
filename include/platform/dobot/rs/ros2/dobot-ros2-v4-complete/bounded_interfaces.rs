//! @file bounded_interfaces.rs
//! @brief Preserve the complete original dobot/ros2_v4 canonical value domain.
//! @details The selected domain contains 250 complete record/components and 554 original fields. Declared
//! scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
//! Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
//! create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
//! does not qualify a frontend, target ABI or native ROS transport.
//! @see The platform's localized language guide and complete API-CATALOG.md.
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

/// Complete canonical component bound for dobot_msgs_v4/srv/AI_Request.
impl Component for Ros2Dobot_msgs_v4SrvAI_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AI_Response.
impl Component for Ros2Dobot_msgs_v4SrvAI_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AO_Request.
impl Component for Ros2Dobot_msgs_v4SrvAO_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AO_Response.
impl Component for Ros2Dobot_msgs_v4SrvAO_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AOInstant_Request.
impl Component for Ros2Dobot_msgs_v4SrvAOInstant_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AOInstant_Response.
impl Component for Ros2Dobot_msgs_v4SrvAOInstant_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AccJ_Request.
impl Component for Ros2Dobot_msgs_v4SrvAccJ_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AccJ_Response.
impl Component for Ros2Dobot_msgs_v4SrvAccJ_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AccL_Request.
impl Component for Ros2Dobot_msgs_v4SrvAccL_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/AccL_Response.
impl Component for Ros2Dobot_msgs_v4SrvAccL_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Arc_Request.
impl Component for Ros2Dobot_msgs_v4SrvArc_Request {
    const MAX_WIRE: usize = 4261;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Arc_Response.
impl Component for Ros2Dobot_msgs_v4SrvArc_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/BrakeControl_Request.
impl Component for Ros2Dobot_msgs_v4SrvBrakeControl_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/BrakeControl_Response.
impl Component for Ros2Dobot_msgs_v4SrvBrakeControl_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CP_Request.
impl Component for Ros2Dobot_msgs_v4SrvCP_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CP_Response.
impl Component for Ros2Dobot_msgs_v4SrvCP_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CalcTool_Request.
impl Component for Ros2Dobot_msgs_v4SrvCalcTool_Request {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CalcTool_Response.
impl Component for Ros2Dobot_msgs_v4SrvCalcTool_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CalcUser_Request.
impl Component for Ros2Dobot_msgs_v4SrvCalcUser_Request {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CalcUser_Response.
impl Component for Ros2Dobot_msgs_v4SrvCalcUser_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CheckOddMovC_Request.
impl Component for Ros2Dobot_msgs_v4SrvCheckOddMovC_Request {
    const MAX_WIRE: usize = 4308;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CheckOddMovC_Response.
impl Component for Ros2Dobot_msgs_v4SrvCheckOddMovC_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CheckOddMovJ_Request.
impl Component for Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request {
    const MAX_WIRE: usize = 4260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CheckOddMovJ_Response.
impl Component for Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CheckOddMovL_Request.
impl Component for Ros2Dobot_msgs_v4SrvCheckOddMovL_Request {
    const MAX_WIRE: usize = 4260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/CheckOddMovL_Response.
impl Component for Ros2Dobot_msgs_v4SrvCheckOddMovL_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Circle_Request.
impl Component for Ros2Dobot_msgs_v4SrvCircle_Request {
    const MAX_WIRE: usize = 4265;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Circle_Response.
impl Component for Ros2Dobot_msgs_v4SrvCircle_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ClearError_Request.
impl Component for Ros2Dobot_msgs_v4SrvClearError_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ClearError_Response.
impl Component for Ros2Dobot_msgs_v4SrvClearError_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Continue_Request.
impl Component for Ros2Dobot_msgs_v4SrvContinue_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Continue_Response.
impl Component for Ros2Dobot_msgs_v4SrvContinue_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DI_Request.
impl Component for Ros2Dobot_msgs_v4SrvDI_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DI_Response.
impl Component for Ros2Dobot_msgs_v4SrvDI_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DIGroup_Request.
impl Component for Ros2Dobot_msgs_v4SrvDIGroup_Request {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DIGroup_Response.
impl Component for Ros2Dobot_msgs_v4SrvDIGroup_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DIGroupDEC_Request.
impl Component for Ros2Dobot_msgs_v4SrvDIGroupDEC_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DIGroupDEC_Response.
impl Component for Ros2Dobot_msgs_v4SrvDIGroupDEC_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DO_Request.
impl Component for Ros2Dobot_msgs_v4SrvDO_Request {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DO_Response.
impl Component for Ros2Dobot_msgs_v4SrvDO_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DOGroup_Request.
impl Component for Ros2Dobot_msgs_v4SrvDOGroup_Request {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DOGroup_Response.
impl Component for Ros2Dobot_msgs_v4SrvDOGroup_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DOGroupDEC_Request.
impl Component for Ros2Dobot_msgs_v4SrvDOGroupDEC_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DOGroupDEC_Response.
impl Component for Ros2Dobot_msgs_v4SrvDOGroupDEC_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DOInstant_Request.
impl Component for Ros2Dobot_msgs_v4SrvDOInstant_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DOInstant_Response.
impl Component for Ros2Dobot_msgs_v4SrvDOInstant_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DisableRobot_Request.
impl Component for Ros2Dobot_msgs_v4SrvDisableRobot_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DisableRobot_Response.
impl Component for Ros2Dobot_msgs_v4SrvDisableRobot_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DragSensivity_Request.
impl Component for Ros2Dobot_msgs_v4SrvDragSensivity_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/DragSensivity_Response.
impl Component for Ros2Dobot_msgs_v4SrvDragSensivity_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EmergencyStop_Request.
impl Component for Ros2Dobot_msgs_v4SrvEmergencyStop_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EmergencyStop_Response.
impl Component for Ros2Dobot_msgs_v4SrvEmergencyStop_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EnableFTSensor_Request.
impl Component for Ros2Dobot_msgs_v4SrvEnableFTSensor_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EnableFTSensor_Response.
impl Component for Ros2Dobot_msgs_v4SrvEnableFTSensor_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EnableRobot_Request.
impl Component for Ros2Dobot_msgs_v4SrvEnableRobot_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EnableRobot_Response.
impl Component for Ros2Dobot_msgs_v4SrvEnableRobot_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EnableSafeSkin_Request.
impl Component for Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EnableSafeSkin_Response.
impl Component for Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EndRTOffset_Request.
impl Component for Ros2Dobot_msgs_v4SrvEndRTOffset_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/EndRTOffset_Response.
impl Component for Ros2Dobot_msgs_v4SrvEndRTOffset_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCCollisionSwitch_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCCollisionSwitch_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCForceMode_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCForceMode_Request {
    const MAX_WIRE: usize = 60;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCForceMode_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCForceMode_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCOff_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCOff_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCOff_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCOff_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetDamping_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCSetDamping_Request {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetDamping_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCSetDamping_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetDeviation_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCSetDeviation_Request {
    const MAX_WIRE: usize = 28;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetDeviation_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCSetDeviation_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetForce_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCSetForce_Request {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetForce_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCSetForce_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetForceLimit_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetForceLimit_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetMass_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCSetMass_Request {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetMass_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCSetMass_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetStiffness_Request.
impl Component for Ros2Dobot_msgs_v4SrvFCSetStiffness_Request {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/FCSetStiffness_Response.
impl Component for Ros2Dobot_msgs_v4SrvFCSetStiffness_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ForceDriveMode_Request.
impl Component for Ros2Dobot_msgs_v4SrvForceDriveMode_Request {
    const MAX_WIRE: usize = 28;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ForceDriveMode_Response.
impl Component for Ros2Dobot_msgs_v4SrvForceDriveMode_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ForceDriveSpeed_Request.
impl Component for Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ForceDriveSpeed_Response.
impl Component for Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetAO_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetAO_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetAO_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetAO_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetAngle_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetAngle_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetAngle_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetAngle_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetCoils_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetCoils_Request {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetCoils_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetCoils_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetCurrentCommandId_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetCurrentCommandId_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetDO_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetDO_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetDO_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetDO_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetDOGroup_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetDOGroup_Request {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetDOGroup_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetDOGroup_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetDOGroupDEC_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetDOGroupDEC_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetError_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetError_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetError_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetError_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetErrorID_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetErrorID_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetErrorID_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetErrorID_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetForce_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetForce_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetForce_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetForce_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetHoldRegs_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetHoldRegs_Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetHoldRegs_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetHoldRegs_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInBits_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetInBits_Request {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInBits_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetInBits_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInRegs_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetInRegs_Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInRegs_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetInRegs_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInputBool_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetInputBool_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInputBool_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetInputBool_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInputFloat_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetInputFloat_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInputFloat_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetInputFloat_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInputInt_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetInputInt_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetInputInt_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetInputInt_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetOutputBool_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetOutputBool_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetOutputBool_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetOutputBool_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetOutputFloat_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetOutputFloat_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetOutputFloat_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetOutputFloat_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetOutputInt_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetOutputInt_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetOutputInt_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetOutputInt_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetPose_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetPose_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetPose_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetPose_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetStartPose_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetStartPose_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetStartPose_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetStartPose_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetToolDO_Request.
impl Component for Ros2Dobot_msgs_v4SrvGetToolDO_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/GetToolDO_Response.
impl Component for Ros2Dobot_msgs_v4SrvGetToolDO_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/InverseKin_Request.
impl Component for Ros2Dobot_msgs_v4SrvInverseKin_Request {
    const MAX_WIRE: usize = 1088;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/InverseKin_Response.
impl Component for Ros2Dobot_msgs_v4SrvInverseKin_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/InverseSolution_Request.
impl Component for Ros2Dobot_msgs_v4SrvInverseSolution_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/InverseSolution_Response.
impl Component for Ros2Dobot_msgs_v4SrvInverseSolution_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ModbusClose_Request.
impl Component for Ros2Dobot_msgs_v4SrvModbusClose_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ModbusClose_Response.
impl Component for Ros2Dobot_msgs_v4SrvModbusClose_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ModbusCreate_Request.
impl Component for Ros2Dobot_msgs_v4SrvModbusCreate_Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ModbusCreate_Response.
impl Component for Ros2Dobot_msgs_v4SrvModbusCreate_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ModbusRTUCreate_Request.
impl Component for Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request {
    const MAX_WIRE: usize = 276;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ModbusRTUCreate_Response.
impl Component for Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovJ_Request.
impl Component for Ros2Dobot_msgs_v4SrvMovJ_Request {
    const MAX_WIRE: usize = 4213;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovJ_Response.
impl Component for Ros2Dobot_msgs_v4SrvMovJ_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovJIO_Request.
impl Component for Ros2Dobot_msgs_v4SrvMovJIO_Request {
    const MAX_WIRE: usize = 8377;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovJIO_Response.
impl Component for Ros2Dobot_msgs_v4SrvMovJIO_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovL_Request.
impl Component for Ros2Dobot_msgs_v4SrvMovL_Request {
    const MAX_WIRE: usize = 4213;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovL_Response.
impl Component for Ros2Dobot_msgs_v4SrvMovL_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovLIO_Request.
impl Component for Ros2Dobot_msgs_v4SrvMovLIO_Request {
    const MAX_WIRE: usize = 8377;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MovLIO_Response.
impl Component for Ros2Dobot_msgs_v4SrvMovLIO_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MoveJog_Request.
impl Component for Ros2Dobot_msgs_v4SrvMoveJog_Request {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/MoveJog_Response.
impl Component for Ros2Dobot_msgs_v4SrvMoveJog_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Pause_Request.
impl Component for Ros2Dobot_msgs_v4SrvPause_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Pause_Response.
impl Component for Ros2Dobot_msgs_v4SrvPause_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/PositiveKin_Request.
impl Component for Ros2Dobot_msgs_v4SrvPositiveKin_Request {
    const MAX_WIRE: usize = 568;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/PositiveKin_Response.
impl Component for Ros2Dobot_msgs_v4SrvPositiveKin_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/PowerOn_Request.
impl Component for Ros2Dobot_msgs_v4SrvPowerOn_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/PowerOn_Response.
impl Component for Ros2Dobot_msgs_v4SrvPowerOn_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelJointMovJ_Request.
impl Component for Ros2Dobot_msgs_v4SrvRelJointMovJ_Request {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelJointMovJ_Response.
impl Component for Ros2Dobot_msgs_v4SrvRelJointMovJ_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovJTool_Request.
impl Component for Ros2Dobot_msgs_v4SrvRelMovJTool_Request {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovJTool_Response.
impl Component for Ros2Dobot_msgs_v4SrvRelMovJTool_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovJUser_Request.
impl Component for Ros2Dobot_msgs_v4SrvRelMovJUser_Request {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovJUser_Response.
impl Component for Ros2Dobot_msgs_v4SrvRelMovJUser_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovLTool_Request.
impl Component for Ros2Dobot_msgs_v4SrvRelMovLTool_Request {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovLTool_Response.
impl Component for Ros2Dobot_msgs_v4SrvRelMovLTool_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovLUser_Request.
impl Component for Ros2Dobot_msgs_v4SrvRelMovLUser_Request {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RelMovLUser_Response.
impl Component for Ros2Dobot_msgs_v4SrvRelMovLUser_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RequestControl_Request.
impl Component for Ros2Dobot_msgs_v4SrvRequestControl_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RequestControl_Response.
impl Component for Ros2Dobot_msgs_v4SrvRequestControl_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ResetRobot_Request.
impl Component for Ros2Dobot_msgs_v4SrvResetRobot_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ResetRobot_Response.
impl Component for Ros2Dobot_msgs_v4SrvResetRobot_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RobotMode_Request.
impl Component for Ros2Dobot_msgs_v4SrvRobotMode_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RobotMode_Response.
impl Component for Ros2Dobot_msgs_v4SrvRobotMode_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RunScript_Request.
impl Component for Ros2Dobot_msgs_v4SrvRunScript_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RunScript_Response.
impl Component for Ros2Dobot_msgs_v4SrvRunScript_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RunTo_Request.
impl Component for Ros2Dobot_msgs_v4SrvRunTo_Request {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/RunTo_Response.
impl Component for Ros2Dobot_msgs_v4SrvRunTo_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ServoJ_Request.
impl Component for Ros2Dobot_msgs_v4SrvServoJ_Request {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ServoJ_Response.
impl Component for Ros2Dobot_msgs_v4SrvServoJ_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ServoP_Request.
impl Component for Ros2Dobot_msgs_v4SrvServoP_Request {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ServoP_Response.
impl Component for Ros2Dobot_msgs_v4SrvServoP_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetBackDistance_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetBackDistance_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetBackDistance_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetBackDistance_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetCoils_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetCoils_Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetCoils_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetCoils_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetCollisionLevel_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetCollisionLevel_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetFCCollision_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetFCCollision_Request {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetFCCollision_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetFCCollision_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetHoldRegs_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetHoldRegs_Request {
    const MAX_WIRE: usize = 532;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetHoldRegs_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetHoldRegs_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetOutputBool_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetOutputBool_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetOutputBool_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetOutputBool_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetOutputFloat_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetOutputFloat_Request {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetOutputFloat_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetOutputFloat_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetOutputInt_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetOutputInt_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetOutputInt_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetOutputInt_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetPayload_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetPayload_Request {
    const MAX_WIRE: usize = 32;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetPayload_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetPayload_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetPostCollisionMode_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetPostCollisionMode_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetSafeSkin_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetSafeSkin_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetSafeSkin_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetSafeSkin_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetSafeWallEnable_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetSafeWallEnable_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetTool_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetTool_Request {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetTool_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetTool_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetTool485_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetTool485_Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetTool485_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetTool485_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetToolMode_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetToolMode_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetToolMode_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetToolMode_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetToolPower_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetToolPower_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetToolPower_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetToolPower_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetUser_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetUser_Request {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetUser_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetUser_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetWorkZoneEnable_Request.
impl Component for Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SetWorkZoneEnable_Response.
impl Component for Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SixForceHome_Request.
impl Component for Ros2Dobot_msgs_v4SrvSixForceHome_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SixForceHome_Response.
impl Component for Ros2Dobot_msgs_v4SrvSixForceHome_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SpeedFactor_Request.
impl Component for Ros2Dobot_msgs_v4SrvSpeedFactor_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/SpeedFactor_Response.
impl Component for Ros2Dobot_msgs_v4SrvSpeedFactor_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StartDrag_Request.
impl Component for Ros2Dobot_msgs_v4SrvStartDrag_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StartDrag_Response.
impl Component for Ros2Dobot_msgs_v4SrvStartDrag_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StartPath_Request.
impl Component for Ros2Dobot_msgs_v4SrvStartPath_Request {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StartPath_Response.
impl Component for Ros2Dobot_msgs_v4SrvStartPath_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StartRTOffset_Request.
impl Component for Ros2Dobot_msgs_v4SrvStartRTOffset_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StartRTOffset_Response.
impl Component for Ros2Dobot_msgs_v4SrvStartRTOffset_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Stop_Request.
impl Component for Ros2Dobot_msgs_v4SrvStop_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Stop_Response.
impl Component for Ros2Dobot_msgs_v4SrvStop_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StopDrag_Request.
impl Component for Ros2Dobot_msgs_v4SrvStopDrag_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StopDrag_Response.
impl Component for Ros2Dobot_msgs_v4SrvStopDrag_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StopMoveJog_Request.
impl Component for Ros2Dobot_msgs_v4SrvStopMoveJog_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/StopMoveJog_Response.
impl Component for Ros2Dobot_msgs_v4SrvStopMoveJog_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/TcpDashboard_Request.
impl Component for Ros2Dobot_msgs_v4SrvTcpDashboard_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/TcpDashboard_Response.
impl Component for Ros2Dobot_msgs_v4SrvTcpDashboard_Response {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Tool_Request.
impl Component for Ros2Dobot_msgs_v4SrvTool_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/Tool_Response.
impl Component for Ros2Dobot_msgs_v4SrvTool_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolAI_Request.
impl Component for Ros2Dobot_msgs_v4SrvToolAI_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolAI_Response.
impl Component for Ros2Dobot_msgs_v4SrvToolAI_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolDI_Request.
impl Component for Ros2Dobot_msgs_v4SrvToolDI_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolDI_Response.
impl Component for Ros2Dobot_msgs_v4SrvToolDI_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolDO_Request.
impl Component for Ros2Dobot_msgs_v4SrvToolDO_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolDO_Response.
impl Component for Ros2Dobot_msgs_v4SrvToolDO_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolDOInstant_Request.
impl Component for Ros2Dobot_msgs_v4SrvToolDOInstant_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/ToolDOInstant_Response.
impl Component for Ros2Dobot_msgs_v4SrvToolDOInstant_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/User_Request.
impl Component for Ros2Dobot_msgs_v4SrvUser_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/User_Response.
impl Component for Ros2Dobot_msgs_v4SrvUser_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/VelJ_Request.
impl Component for Ros2Dobot_msgs_v4SrvVelJ_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/VelJ_Response.
impl Component for Ros2Dobot_msgs_v4SrvVelJ_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/VelL_Request.
impl Component for Ros2Dobot_msgs_v4SrvVelL_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for dobot_msgs_v4/srv/VelL_Response.
impl Component for Ros2Dobot_msgs_v4SrvVelL_Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Typed dobot_msgs_v4/srv/AI call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvAIClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvAI_Request, Ros2Dobot_msgs_v4SrvAI_Response>;

/// Typed dobot_msgs_v4/srv/AI advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvAIServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvAI_Request, Ros2Dobot_msgs_v4SrvAI_Response>;

/// Typed dobot_msgs_v4/srv/AO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvAOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvAO_Request, Ros2Dobot_msgs_v4SrvAO_Response>;

/// Typed dobot_msgs_v4/srv/AO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvAOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvAO_Request, Ros2Dobot_msgs_v4SrvAO_Response>;

/// Typed dobot_msgs_v4/srv/AOInstant call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvAOInstantClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvAOInstant_Request, Ros2Dobot_msgs_v4SrvAOInstant_Response>;

/// Typed dobot_msgs_v4/srv/AOInstant advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvAOInstantServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvAOInstant_Request, Ros2Dobot_msgs_v4SrvAOInstant_Response>;

/// Typed dobot_msgs_v4/srv/AccJ call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvAccJClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvAccJ_Request, Ros2Dobot_msgs_v4SrvAccJ_Response>;

/// Typed dobot_msgs_v4/srv/AccJ advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvAccJServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvAccJ_Request, Ros2Dobot_msgs_v4SrvAccJ_Response>;

/// Typed dobot_msgs_v4/srv/AccL call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvAccLClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvAccL_Request, Ros2Dobot_msgs_v4SrvAccL_Response>;

/// Typed dobot_msgs_v4/srv/AccL advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvAccLServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvAccL_Request, Ros2Dobot_msgs_v4SrvAccL_Response>;

/// Typed dobot_msgs_v4/srv/Arc call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvArcClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvArc_Request, Ros2Dobot_msgs_v4SrvArc_Response>;

/// Typed dobot_msgs_v4/srv/Arc advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvArcServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvArc_Request, Ros2Dobot_msgs_v4SrvArc_Response>;

/// Typed dobot_msgs_v4/srv/BrakeControl call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvBrakeControlClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvBrakeControl_Request,
    Ros2Dobot_msgs_v4SrvBrakeControl_Response,
>;

/// Typed dobot_msgs_v4/srv/BrakeControl advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvBrakeControlServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvBrakeControl_Request,
    Ros2Dobot_msgs_v4SrvBrakeControl_Response,
>;

/// Typed dobot_msgs_v4/srv/CP call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvCPClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvCP_Request, Ros2Dobot_msgs_v4SrvCP_Response>;

/// Typed dobot_msgs_v4/srv/CP advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvCPServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvCP_Request, Ros2Dobot_msgs_v4SrvCP_Response>;

/// Typed dobot_msgs_v4/srv/CalcTool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvCalcToolClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvCalcTool_Request, Ros2Dobot_msgs_v4SrvCalcTool_Response>;

/// Typed dobot_msgs_v4/srv/CalcTool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvCalcToolServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvCalcTool_Request, Ros2Dobot_msgs_v4SrvCalcTool_Response>;

/// Typed dobot_msgs_v4/srv/CalcUser call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvCalcUserClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvCalcUser_Request, Ros2Dobot_msgs_v4SrvCalcUser_Response>;

/// Typed dobot_msgs_v4/srv/CalcUser advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvCalcUserServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvCalcUser_Request, Ros2Dobot_msgs_v4SrvCalcUser_Response>;

/// Typed dobot_msgs_v4/srv/CheckOddMovC call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvCheckOddMovCClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvCheckOddMovC_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovC_Response,
>;

/// Typed dobot_msgs_v4/srv/CheckOddMovC advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvCheckOddMovCServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvCheckOddMovC_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovC_Response,
>;

/// Typed dobot_msgs_v4/srv/CheckOddMovJ call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvCheckOddMovJClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response,
>;

/// Typed dobot_msgs_v4/srv/CheckOddMovJ advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvCheckOddMovJServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response,
>;

/// Typed dobot_msgs_v4/srv/CheckOddMovL call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvCheckOddMovLClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvCheckOddMovL_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovL_Response,
>;

/// Typed dobot_msgs_v4/srv/CheckOddMovL advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvCheckOddMovLServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvCheckOddMovL_Request,
    Ros2Dobot_msgs_v4SrvCheckOddMovL_Response,
>;

/// Typed dobot_msgs_v4/srv/Circle call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvCircleClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvCircle_Request, Ros2Dobot_msgs_v4SrvCircle_Response>;

/// Typed dobot_msgs_v4/srv/Circle advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvCircleServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvCircle_Request, Ros2Dobot_msgs_v4SrvCircle_Response>;

/// Typed dobot_msgs_v4/srv/ClearError call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvClearErrorClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvClearError_Request, Ros2Dobot_msgs_v4SrvClearError_Response>;

/// Typed dobot_msgs_v4/srv/ClearError advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvClearErrorServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvClearError_Request, Ros2Dobot_msgs_v4SrvClearError_Response>;

/// Typed dobot_msgs_v4/srv/Continue call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvContinueClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvContinue_Request, Ros2Dobot_msgs_v4SrvContinue_Response>;

/// Typed dobot_msgs_v4/srv/Continue advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvContinueServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvContinue_Request, Ros2Dobot_msgs_v4SrvContinue_Response>;

/// Typed dobot_msgs_v4/srv/DI call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDIClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvDI_Request, Ros2Dobot_msgs_v4SrvDI_Response>;

/// Typed dobot_msgs_v4/srv/DI advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDIServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvDI_Request, Ros2Dobot_msgs_v4SrvDI_Response>;

/// Typed dobot_msgs_v4/srv/DIGroup call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDIGroupClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvDIGroup_Request, Ros2Dobot_msgs_v4SrvDIGroup_Response>;

/// Typed dobot_msgs_v4/srv/DIGroup advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDIGroupServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvDIGroup_Request, Ros2Dobot_msgs_v4SrvDIGroup_Response>;

/// Typed dobot_msgs_v4/srv/DIGroupDEC call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDIGroupDECClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvDIGroupDEC_Request, Ros2Dobot_msgs_v4SrvDIGroupDEC_Response>;

/// Typed dobot_msgs_v4/srv/DIGroupDEC advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDIGroupDECServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvDIGroupDEC_Request, Ros2Dobot_msgs_v4SrvDIGroupDEC_Response>;

/// Typed dobot_msgs_v4/srv/DO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvDO_Request, Ros2Dobot_msgs_v4SrvDO_Response>;

/// Typed dobot_msgs_v4/srv/DO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvDO_Request, Ros2Dobot_msgs_v4SrvDO_Response>;

/// Typed dobot_msgs_v4/srv/DOGroup call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDOGroupClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvDOGroup_Request, Ros2Dobot_msgs_v4SrvDOGroup_Response>;

/// Typed dobot_msgs_v4/srv/DOGroup advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDOGroupServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvDOGroup_Request, Ros2Dobot_msgs_v4SrvDOGroup_Response>;

/// Typed dobot_msgs_v4/srv/DOGroupDEC call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDOGroupDECClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvDOGroupDEC_Request, Ros2Dobot_msgs_v4SrvDOGroupDEC_Response>;

/// Typed dobot_msgs_v4/srv/DOGroupDEC advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDOGroupDECServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvDOGroupDEC_Request, Ros2Dobot_msgs_v4SrvDOGroupDEC_Response>;

/// Typed dobot_msgs_v4/srv/DOInstant call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDOInstantClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvDOInstant_Request, Ros2Dobot_msgs_v4SrvDOInstant_Response>;

/// Typed dobot_msgs_v4/srv/DOInstant advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDOInstantServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvDOInstant_Request, Ros2Dobot_msgs_v4SrvDOInstant_Response>;

/// Typed dobot_msgs_v4/srv/DisableRobot call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDisableRobotClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvDisableRobot_Request,
    Ros2Dobot_msgs_v4SrvDisableRobot_Response,
>;

/// Typed dobot_msgs_v4/srv/DisableRobot advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDisableRobotServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvDisableRobot_Request,
    Ros2Dobot_msgs_v4SrvDisableRobot_Response,
>;

/// Typed dobot_msgs_v4/srv/DragSensivity call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvDragSensivityClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvDragSensivity_Request,
    Ros2Dobot_msgs_v4SrvDragSensivity_Response,
>;

/// Typed dobot_msgs_v4/srv/DragSensivity advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvDragSensivityServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvDragSensivity_Request,
    Ros2Dobot_msgs_v4SrvDragSensivity_Response,
>;

/// Typed dobot_msgs_v4/srv/EmergencyStop call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvEmergencyStopClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvEmergencyStop_Request,
    Ros2Dobot_msgs_v4SrvEmergencyStop_Response,
>;

/// Typed dobot_msgs_v4/srv/EmergencyStop advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvEmergencyStopServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvEmergencyStop_Request,
    Ros2Dobot_msgs_v4SrvEmergencyStop_Response,
>;

/// Typed dobot_msgs_v4/srv/EnableFTSensor call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvEnableFTSensorClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvEnableFTSensor_Request,
    Ros2Dobot_msgs_v4SrvEnableFTSensor_Response,
>;

/// Typed dobot_msgs_v4/srv/EnableFTSensor advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvEnableFTSensorServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvEnableFTSensor_Request,
    Ros2Dobot_msgs_v4SrvEnableFTSensor_Response,
>;

/// Typed dobot_msgs_v4/srv/EnableRobot call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvEnableRobotClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvEnableRobot_Request,
    Ros2Dobot_msgs_v4SrvEnableRobot_Response,
>;

/// Typed dobot_msgs_v4/srv/EnableRobot advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvEnableRobotServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvEnableRobot_Request,
    Ros2Dobot_msgs_v4SrvEnableRobot_Response,
>;

/// Typed dobot_msgs_v4/srv/EnableSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvEnableSafeSkinClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request,
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response,
>;

/// Typed dobot_msgs_v4/srv/EnableSafeSkin advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvEnableSafeSkinServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request,
    Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response,
>;

/// Typed dobot_msgs_v4/srv/EndRTOffset call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvEndRTOffsetClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvEndRTOffset_Request,
    Ros2Dobot_msgs_v4SrvEndRTOffset_Response,
>;

/// Typed dobot_msgs_v4/srv/EndRTOffset advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvEndRTOffsetServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvEndRTOffset_Request,
    Ros2Dobot_msgs_v4SrvEndRTOffset_Response,
>;

/// Typed dobot_msgs_v4/srv/FCCollisionSwitch call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCCollisionSwitchClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request,
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response,
>;

/// Typed dobot_msgs_v4/srv/FCCollisionSwitch advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCCollisionSwitchServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request,
    Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response,
>;

/// Typed dobot_msgs_v4/srv/FCForceMode call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCForceModeClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvFCForceMode_Request,
    Ros2Dobot_msgs_v4SrvFCForceMode_Response,
>;

/// Typed dobot_msgs_v4/srv/FCForceMode advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCForceModeServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvFCForceMode_Request,
    Ros2Dobot_msgs_v4SrvFCForceMode_Response,
>;

/// Typed dobot_msgs_v4/srv/FCOff call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCOffClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvFCOff_Request, Ros2Dobot_msgs_v4SrvFCOff_Response>;

/// Typed dobot_msgs_v4/srv/FCOff advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCOffServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvFCOff_Request, Ros2Dobot_msgs_v4SrvFCOff_Response>;

/// Typed dobot_msgs_v4/srv/FCSetDamping call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCSetDampingClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvFCSetDamping_Request,
    Ros2Dobot_msgs_v4SrvFCSetDamping_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetDamping advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCSetDampingServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvFCSetDamping_Request,
    Ros2Dobot_msgs_v4SrvFCSetDamping_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetDeviation call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCSetDeviationClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvFCSetDeviation_Request,
    Ros2Dobot_msgs_v4SrvFCSetDeviation_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetDeviation advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCSetDeviationServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvFCSetDeviation_Request,
    Ros2Dobot_msgs_v4SrvFCSetDeviation_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetForce call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCSetForceClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvFCSetForce_Request, Ros2Dobot_msgs_v4SrvFCSetForce_Response>;

/// Typed dobot_msgs_v4/srv/FCSetForce advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCSetForceServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvFCSetForce_Request, Ros2Dobot_msgs_v4SrvFCSetForce_Response>;

/// Typed dobot_msgs_v4/srv/FCSetForceLimit call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCSetForceLimitClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request,
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetForceLimit advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCSetForceLimitServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request,
    Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetForceSpeedLimit call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request,
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetForceSpeedLimit advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimitServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request,
    Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetMass call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCSetMassClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvFCSetMass_Request, Ros2Dobot_msgs_v4SrvFCSetMass_Response>;

/// Typed dobot_msgs_v4/srv/FCSetMass advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCSetMassServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvFCSetMass_Request, Ros2Dobot_msgs_v4SrvFCSetMass_Response>;

/// Typed dobot_msgs_v4/srv/FCSetStiffness call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvFCSetStiffnessClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvFCSetStiffness_Request,
    Ros2Dobot_msgs_v4SrvFCSetStiffness_Response,
>;

/// Typed dobot_msgs_v4/srv/FCSetStiffness advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvFCSetStiffnessServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvFCSetStiffness_Request,
    Ros2Dobot_msgs_v4SrvFCSetStiffness_Response,
>;

/// Typed dobot_msgs_v4/srv/ForceDriveMode call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvForceDriveModeClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvForceDriveMode_Request,
    Ros2Dobot_msgs_v4SrvForceDriveMode_Response,
>;

/// Typed dobot_msgs_v4/srv/ForceDriveMode advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvForceDriveModeServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvForceDriveMode_Request,
    Ros2Dobot_msgs_v4SrvForceDriveMode_Response,
>;

/// Typed dobot_msgs_v4/srv/ForceDriveSpeed call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvForceDriveSpeedClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request,
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response,
>;

/// Typed dobot_msgs_v4/srv/ForceDriveSpeed advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvForceDriveSpeedServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request,
    Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response,
>;

/// Typed dobot_msgs_v4/srv/GetAO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetAOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetAO_Request, Ros2Dobot_msgs_v4SrvGetAO_Response>;

/// Typed dobot_msgs_v4/srv/GetAO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetAOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetAO_Request, Ros2Dobot_msgs_v4SrvGetAO_Response>;

/// Typed dobot_msgs_v4/srv/GetAngle call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetAngleClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetAngle_Request, Ros2Dobot_msgs_v4SrvGetAngle_Response>;

/// Typed dobot_msgs_v4/srv/GetAngle advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetAngleServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetAngle_Request, Ros2Dobot_msgs_v4SrvGetAngle_Response>;

/// Typed dobot_msgs_v4/srv/GetCoils call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetCoilsClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetCoils_Request, Ros2Dobot_msgs_v4SrvGetCoils_Response>;

/// Typed dobot_msgs_v4/srv/GetCoils advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetCoilsServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetCoils_Request, Ros2Dobot_msgs_v4SrvGetCoils_Response>;

/// Typed dobot_msgs_v4/srv/GetCurrentCommandId call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetCurrentCommandIdClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request,
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response,
>;

/// Typed dobot_msgs_v4/srv/GetCurrentCommandId advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetCurrentCommandIdServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request,
    Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response,
>;

/// Typed dobot_msgs_v4/srv/GetDO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetDOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetDO_Request, Ros2Dobot_msgs_v4SrvGetDO_Response>;

/// Typed dobot_msgs_v4/srv/GetDO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetDOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetDO_Request, Ros2Dobot_msgs_v4SrvGetDO_Response>;

/// Typed dobot_msgs_v4/srv/GetDOGroup call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetDOGroupClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetDOGroup_Request, Ros2Dobot_msgs_v4SrvGetDOGroup_Response>;

/// Typed dobot_msgs_v4/srv/GetDOGroup advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetDOGroupServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetDOGroup_Request, Ros2Dobot_msgs_v4SrvGetDOGroup_Response>;

/// Typed dobot_msgs_v4/srv/GetDOGroupDEC call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetDOGroupDECClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request,
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response,
>;

/// Typed dobot_msgs_v4/srv/GetDOGroupDEC advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetDOGroupDECServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request,
    Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response,
>;

/// Typed dobot_msgs_v4/srv/GetError call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetErrorClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetError_Request, Ros2Dobot_msgs_v4SrvGetError_Response>;

/// Typed dobot_msgs_v4/srv/GetError advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetErrorServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetError_Request, Ros2Dobot_msgs_v4SrvGetError_Response>;

/// Typed dobot_msgs_v4/srv/GetErrorID call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetErrorIDClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetErrorID_Request, Ros2Dobot_msgs_v4SrvGetErrorID_Response>;

/// Typed dobot_msgs_v4/srv/GetErrorID advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetErrorIDServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetErrorID_Request, Ros2Dobot_msgs_v4SrvGetErrorID_Response>;

/// Typed dobot_msgs_v4/srv/GetForce call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetForceClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetForce_Request, Ros2Dobot_msgs_v4SrvGetForce_Response>;

/// Typed dobot_msgs_v4/srv/GetForce advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetForceServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetForce_Request, Ros2Dobot_msgs_v4SrvGetForce_Response>;

/// Typed dobot_msgs_v4/srv/GetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetHoldRegsClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetHoldRegs_Request,
    Ros2Dobot_msgs_v4SrvGetHoldRegs_Response,
>;

/// Typed dobot_msgs_v4/srv/GetHoldRegs advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetHoldRegsServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetHoldRegs_Request,
    Ros2Dobot_msgs_v4SrvGetHoldRegs_Response,
>;

/// Typed dobot_msgs_v4/srv/GetInBits call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetInBitsClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetInBits_Request, Ros2Dobot_msgs_v4SrvGetInBits_Response>;

/// Typed dobot_msgs_v4/srv/GetInBits advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetInBitsServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetInBits_Request, Ros2Dobot_msgs_v4SrvGetInBits_Response>;

/// Typed dobot_msgs_v4/srv/GetInRegs call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetInRegsClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetInRegs_Request, Ros2Dobot_msgs_v4SrvGetInRegs_Response>;

/// Typed dobot_msgs_v4/srv/GetInRegs advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetInRegsServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetInRegs_Request, Ros2Dobot_msgs_v4SrvGetInRegs_Response>;

/// Typed dobot_msgs_v4/srv/GetInputBool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetInputBoolClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetInputBool_Request,
    Ros2Dobot_msgs_v4SrvGetInputBool_Response,
>;

/// Typed dobot_msgs_v4/srv/GetInputBool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetInputBoolServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetInputBool_Request,
    Ros2Dobot_msgs_v4SrvGetInputBool_Response,
>;

/// Typed dobot_msgs_v4/srv/GetInputFloat call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetInputFloatClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetInputFloat_Request,
    Ros2Dobot_msgs_v4SrvGetInputFloat_Response,
>;

/// Typed dobot_msgs_v4/srv/GetInputFloat advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetInputFloatServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetInputFloat_Request,
    Ros2Dobot_msgs_v4SrvGetInputFloat_Response,
>;

/// Typed dobot_msgs_v4/srv/GetInputInt call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetInputIntClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetInputInt_Request,
    Ros2Dobot_msgs_v4SrvGetInputInt_Response,
>;

/// Typed dobot_msgs_v4/srv/GetInputInt advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetInputIntServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetInputInt_Request,
    Ros2Dobot_msgs_v4SrvGetInputInt_Response,
>;

/// Typed dobot_msgs_v4/srv/GetOutputBool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetOutputBoolClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetOutputBool_Request,
    Ros2Dobot_msgs_v4SrvGetOutputBool_Response,
>;

/// Typed dobot_msgs_v4/srv/GetOutputBool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetOutputBoolServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetOutputBool_Request,
    Ros2Dobot_msgs_v4SrvGetOutputBool_Response,
>;

/// Typed dobot_msgs_v4/srv/GetOutputFloat call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetOutputFloatClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetOutputFloat_Request,
    Ros2Dobot_msgs_v4SrvGetOutputFloat_Response,
>;

/// Typed dobot_msgs_v4/srv/GetOutputFloat advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetOutputFloatServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetOutputFloat_Request,
    Ros2Dobot_msgs_v4SrvGetOutputFloat_Response,
>;

/// Typed dobot_msgs_v4/srv/GetOutputInt call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetOutputIntClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetOutputInt_Request,
    Ros2Dobot_msgs_v4SrvGetOutputInt_Response,
>;

/// Typed dobot_msgs_v4/srv/GetOutputInt advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetOutputIntServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetOutputInt_Request,
    Ros2Dobot_msgs_v4SrvGetOutputInt_Response,
>;

/// Typed dobot_msgs_v4/srv/GetPose call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetPoseClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetPose_Request, Ros2Dobot_msgs_v4SrvGetPose_Response>;

/// Typed dobot_msgs_v4/srv/GetPose advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetPoseServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetPose_Request, Ros2Dobot_msgs_v4SrvGetPose_Response>;

/// Typed dobot_msgs_v4/srv/GetStartPose call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetStartPoseClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvGetStartPose_Request,
    Ros2Dobot_msgs_v4SrvGetStartPose_Response,
>;

/// Typed dobot_msgs_v4/srv/GetStartPose advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetStartPoseServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvGetStartPose_Request,
    Ros2Dobot_msgs_v4SrvGetStartPose_Response,
>;

/// Typed dobot_msgs_v4/srv/GetToolDO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvGetToolDOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvGetToolDO_Request, Ros2Dobot_msgs_v4SrvGetToolDO_Response>;

/// Typed dobot_msgs_v4/srv/GetToolDO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvGetToolDOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvGetToolDO_Request, Ros2Dobot_msgs_v4SrvGetToolDO_Response>;

/// Typed dobot_msgs_v4/srv/InverseKin call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvInverseKinClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvInverseKin_Request, Ros2Dobot_msgs_v4SrvInverseKin_Response>;

/// Typed dobot_msgs_v4/srv/InverseKin advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvInverseKinServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvInverseKin_Request, Ros2Dobot_msgs_v4SrvInverseKin_Response>;

/// Typed dobot_msgs_v4/srv/InverseSolution call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvInverseSolutionClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvInverseSolution_Request,
    Ros2Dobot_msgs_v4SrvInverseSolution_Response,
>;

/// Typed dobot_msgs_v4/srv/InverseSolution advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvInverseSolutionServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvInverseSolution_Request,
    Ros2Dobot_msgs_v4SrvInverseSolution_Response,
>;

/// Typed dobot_msgs_v4/srv/ModbusClose call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvModbusCloseClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvModbusClose_Request,
    Ros2Dobot_msgs_v4SrvModbusClose_Response,
>;

/// Typed dobot_msgs_v4/srv/ModbusClose advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvModbusCloseServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvModbusClose_Request,
    Ros2Dobot_msgs_v4SrvModbusClose_Response,
>;

/// Typed dobot_msgs_v4/srv/ModbusCreate call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvModbusCreateClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvModbusCreate_Request,
    Ros2Dobot_msgs_v4SrvModbusCreate_Response,
>;

/// Typed dobot_msgs_v4/srv/ModbusCreate advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvModbusCreateServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvModbusCreate_Request,
    Ros2Dobot_msgs_v4SrvModbusCreate_Response,
>;

/// Typed dobot_msgs_v4/srv/ModbusRTUCreate call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvModbusRTUCreateClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request,
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response,
>;

/// Typed dobot_msgs_v4/srv/ModbusRTUCreate advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvModbusRTUCreateServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request,
    Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response,
>;

/// Typed dobot_msgs_v4/srv/MovJ call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvMovJClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvMovJ_Request, Ros2Dobot_msgs_v4SrvMovJ_Response>;

/// Typed dobot_msgs_v4/srv/MovJ advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvMovJServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvMovJ_Request, Ros2Dobot_msgs_v4SrvMovJ_Response>;

/// Typed dobot_msgs_v4/srv/MovJIO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvMovJIOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvMovJIO_Request, Ros2Dobot_msgs_v4SrvMovJIO_Response>;

/// Typed dobot_msgs_v4/srv/MovJIO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvMovJIOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvMovJIO_Request, Ros2Dobot_msgs_v4SrvMovJIO_Response>;

/// Typed dobot_msgs_v4/srv/MovL call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvMovLClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvMovL_Request, Ros2Dobot_msgs_v4SrvMovL_Response>;

/// Typed dobot_msgs_v4/srv/MovL advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvMovLServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvMovL_Request, Ros2Dobot_msgs_v4SrvMovL_Response>;

/// Typed dobot_msgs_v4/srv/MovLIO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvMovLIOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvMovLIO_Request, Ros2Dobot_msgs_v4SrvMovLIO_Response>;

/// Typed dobot_msgs_v4/srv/MovLIO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvMovLIOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvMovLIO_Request, Ros2Dobot_msgs_v4SrvMovLIO_Response>;

/// Typed dobot_msgs_v4/srv/MoveJog call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvMoveJogClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvMoveJog_Request, Ros2Dobot_msgs_v4SrvMoveJog_Response>;

/// Typed dobot_msgs_v4/srv/MoveJog advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvMoveJogServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvMoveJog_Request, Ros2Dobot_msgs_v4SrvMoveJog_Response>;

/// Typed dobot_msgs_v4/srv/Pause call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvPauseClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvPause_Request, Ros2Dobot_msgs_v4SrvPause_Response>;

/// Typed dobot_msgs_v4/srv/Pause advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvPauseServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvPause_Request, Ros2Dobot_msgs_v4SrvPause_Response>;

/// Typed dobot_msgs_v4/srv/PositiveKin call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvPositiveKinClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvPositiveKin_Request,
    Ros2Dobot_msgs_v4SrvPositiveKin_Response,
>;

/// Typed dobot_msgs_v4/srv/PositiveKin advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvPositiveKinServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvPositiveKin_Request,
    Ros2Dobot_msgs_v4SrvPositiveKin_Response,
>;

/// Typed dobot_msgs_v4/srv/PowerOn call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvPowerOnClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvPowerOn_Request, Ros2Dobot_msgs_v4SrvPowerOn_Response>;

/// Typed dobot_msgs_v4/srv/PowerOn advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvPowerOnServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvPowerOn_Request, Ros2Dobot_msgs_v4SrvPowerOn_Response>;

/// Typed dobot_msgs_v4/srv/RelJointMovJ call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRelJointMovJClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvRelJointMovJ_Request,
    Ros2Dobot_msgs_v4SrvRelJointMovJ_Response,
>;

/// Typed dobot_msgs_v4/srv/RelJointMovJ advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRelJointMovJServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvRelJointMovJ_Request,
    Ros2Dobot_msgs_v4SrvRelJointMovJ_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovJTool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRelMovJToolClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvRelMovJTool_Request,
    Ros2Dobot_msgs_v4SrvRelMovJTool_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovJTool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRelMovJToolServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvRelMovJTool_Request,
    Ros2Dobot_msgs_v4SrvRelMovJTool_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovJUser call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRelMovJUserClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvRelMovJUser_Request,
    Ros2Dobot_msgs_v4SrvRelMovJUser_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovJUser advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRelMovJUserServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvRelMovJUser_Request,
    Ros2Dobot_msgs_v4SrvRelMovJUser_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovLTool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRelMovLToolClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvRelMovLTool_Request,
    Ros2Dobot_msgs_v4SrvRelMovLTool_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovLTool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRelMovLToolServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvRelMovLTool_Request,
    Ros2Dobot_msgs_v4SrvRelMovLTool_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovLUser call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRelMovLUserClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvRelMovLUser_Request,
    Ros2Dobot_msgs_v4SrvRelMovLUser_Response,
>;

/// Typed dobot_msgs_v4/srv/RelMovLUser advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRelMovLUserServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvRelMovLUser_Request,
    Ros2Dobot_msgs_v4SrvRelMovLUser_Response,
>;

/// Typed dobot_msgs_v4/srv/RequestControl call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRequestControlClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvRequestControl_Request,
    Ros2Dobot_msgs_v4SrvRequestControl_Response,
>;

/// Typed dobot_msgs_v4/srv/RequestControl advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRequestControlServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvRequestControl_Request,
    Ros2Dobot_msgs_v4SrvRequestControl_Response,
>;

/// Typed dobot_msgs_v4/srv/ResetRobot call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvResetRobotClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvResetRobot_Request, Ros2Dobot_msgs_v4SrvResetRobot_Response>;

/// Typed dobot_msgs_v4/srv/ResetRobot advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvResetRobotServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvResetRobot_Request, Ros2Dobot_msgs_v4SrvResetRobot_Response>;

/// Typed dobot_msgs_v4/srv/RobotMode call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRobotModeClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvRobotMode_Request, Ros2Dobot_msgs_v4SrvRobotMode_Response>;

/// Typed dobot_msgs_v4/srv/RobotMode advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRobotModeServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvRobotMode_Request, Ros2Dobot_msgs_v4SrvRobotMode_Response>;

/// Typed dobot_msgs_v4/srv/RunScript call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRunScriptClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvRunScript_Request, Ros2Dobot_msgs_v4SrvRunScript_Response>;

/// Typed dobot_msgs_v4/srv/RunScript advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRunScriptServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvRunScript_Request, Ros2Dobot_msgs_v4SrvRunScript_Response>;

/// Typed dobot_msgs_v4/srv/RunTo call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvRunToClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvRunTo_Request, Ros2Dobot_msgs_v4SrvRunTo_Response>;

/// Typed dobot_msgs_v4/srv/RunTo advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvRunToServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvRunTo_Request, Ros2Dobot_msgs_v4SrvRunTo_Response>;

/// Typed dobot_msgs_v4/srv/ServoJ call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvServoJClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvServoJ_Request, Ros2Dobot_msgs_v4SrvServoJ_Response>;

/// Typed dobot_msgs_v4/srv/ServoJ advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvServoJServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvServoJ_Request, Ros2Dobot_msgs_v4SrvServoJ_Response>;

/// Typed dobot_msgs_v4/srv/ServoP call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvServoPClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvServoP_Request, Ros2Dobot_msgs_v4SrvServoP_Response>;

/// Typed dobot_msgs_v4/srv/ServoP advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvServoPServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvServoP_Request, Ros2Dobot_msgs_v4SrvServoP_Response>;

/// Typed dobot_msgs_v4/srv/SetBackDistance call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetBackDistanceClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetBackDistance_Request,
    Ros2Dobot_msgs_v4SrvSetBackDistance_Response,
>;

/// Typed dobot_msgs_v4/srv/SetBackDistance advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetBackDistanceServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetBackDistance_Request,
    Ros2Dobot_msgs_v4SrvSetBackDistance_Response,
>;

/// Typed dobot_msgs_v4/srv/SetCoils call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetCoilsClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvSetCoils_Request, Ros2Dobot_msgs_v4SrvSetCoils_Response>;

/// Typed dobot_msgs_v4/srv/SetCoils advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetCoilsServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvSetCoils_Request, Ros2Dobot_msgs_v4SrvSetCoils_Response>;

/// Typed dobot_msgs_v4/srv/SetCollisionLevel call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetCollisionLevelClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request,
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response,
>;

/// Typed dobot_msgs_v4/srv/SetCollisionLevel advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetCollisionLevelServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request,
    Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response,
>;

/// Typed dobot_msgs_v4/srv/SetFCCollision call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetFCCollisionClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetFCCollision_Request,
    Ros2Dobot_msgs_v4SrvSetFCCollision_Response,
>;

/// Typed dobot_msgs_v4/srv/SetFCCollision advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetFCCollisionServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetFCCollision_Request,
    Ros2Dobot_msgs_v4SrvSetFCCollision_Response,
>;

/// Typed dobot_msgs_v4/srv/SetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetHoldRegsClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetHoldRegs_Request,
    Ros2Dobot_msgs_v4SrvSetHoldRegs_Response,
>;

/// Typed dobot_msgs_v4/srv/SetHoldRegs advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetHoldRegsServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetHoldRegs_Request,
    Ros2Dobot_msgs_v4SrvSetHoldRegs_Response,
>;

/// Typed dobot_msgs_v4/srv/SetOutputBool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetOutputBoolClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetOutputBool_Request,
    Ros2Dobot_msgs_v4SrvSetOutputBool_Response,
>;

/// Typed dobot_msgs_v4/srv/SetOutputBool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetOutputBoolServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetOutputBool_Request,
    Ros2Dobot_msgs_v4SrvSetOutputBool_Response,
>;

/// Typed dobot_msgs_v4/srv/SetOutputFloat call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetOutputFloatClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetOutputFloat_Request,
    Ros2Dobot_msgs_v4SrvSetOutputFloat_Response,
>;

/// Typed dobot_msgs_v4/srv/SetOutputFloat advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetOutputFloatServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetOutputFloat_Request,
    Ros2Dobot_msgs_v4SrvSetOutputFloat_Response,
>;

/// Typed dobot_msgs_v4/srv/SetOutputInt call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetOutputIntClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetOutputInt_Request,
    Ros2Dobot_msgs_v4SrvSetOutputInt_Response,
>;

/// Typed dobot_msgs_v4/srv/SetOutputInt advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetOutputIntServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetOutputInt_Request,
    Ros2Dobot_msgs_v4SrvSetOutputInt_Response,
>;

/// Typed dobot_msgs_v4/srv/SetPayload call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetPayloadClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvSetPayload_Request, Ros2Dobot_msgs_v4SrvSetPayload_Response>;

/// Typed dobot_msgs_v4/srv/SetPayload advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetPayloadServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvSetPayload_Request, Ros2Dobot_msgs_v4SrvSetPayload_Response>;

/// Typed dobot_msgs_v4/srv/SetPostCollisionMode call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetPostCollisionModeClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request,
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response,
>;

/// Typed dobot_msgs_v4/srv/SetPostCollisionMode advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetPostCollisionModeServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request,
    Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response,
>;

/// Typed dobot_msgs_v4/srv/SetSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetSafeSkinClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetSafeSkin_Request,
    Ros2Dobot_msgs_v4SrvSetSafeSkin_Response,
>;

/// Typed dobot_msgs_v4/srv/SetSafeSkin advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetSafeSkinServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetSafeSkin_Request,
    Ros2Dobot_msgs_v4SrvSetSafeSkin_Response,
>;

/// Typed dobot_msgs_v4/srv/SetSafeWallEnable call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetSafeWallEnableClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request,
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response,
>;

/// Typed dobot_msgs_v4/srv/SetSafeWallEnable advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetSafeWallEnableServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request,
    Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response,
>;

/// Typed dobot_msgs_v4/srv/SetTool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetToolClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvSetTool_Request, Ros2Dobot_msgs_v4SrvSetTool_Response>;

/// Typed dobot_msgs_v4/srv/SetTool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetToolServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvSetTool_Request, Ros2Dobot_msgs_v4SrvSetTool_Response>;

/// Typed dobot_msgs_v4/srv/SetTool485 call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetTool485Client =
    ServiceClient<Ros2Dobot_msgs_v4SrvSetTool485_Request, Ros2Dobot_msgs_v4SrvSetTool485_Response>;

/// Typed dobot_msgs_v4/srv/SetTool485 advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetTool485Server =
    ServiceServer<Ros2Dobot_msgs_v4SrvSetTool485_Request, Ros2Dobot_msgs_v4SrvSetTool485_Response>;

/// Typed dobot_msgs_v4/srv/SetToolMode call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetToolModeClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetToolMode_Request,
    Ros2Dobot_msgs_v4SrvSetToolMode_Response,
>;

/// Typed dobot_msgs_v4/srv/SetToolMode advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetToolModeServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetToolMode_Request,
    Ros2Dobot_msgs_v4SrvSetToolMode_Response,
>;

/// Typed dobot_msgs_v4/srv/SetToolPower call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetToolPowerClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetToolPower_Request,
    Ros2Dobot_msgs_v4SrvSetToolPower_Response,
>;

/// Typed dobot_msgs_v4/srv/SetToolPower advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetToolPowerServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetToolPower_Request,
    Ros2Dobot_msgs_v4SrvSetToolPower_Response,
>;

/// Typed dobot_msgs_v4/srv/SetUser call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetUserClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvSetUser_Request, Ros2Dobot_msgs_v4SrvSetUser_Response>;

/// Typed dobot_msgs_v4/srv/SetUser advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetUserServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvSetUser_Request, Ros2Dobot_msgs_v4SrvSetUser_Response>;

/// Typed dobot_msgs_v4/srv/SetWorkZoneEnable call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSetWorkZoneEnableClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request,
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response,
>;

/// Typed dobot_msgs_v4/srv/SetWorkZoneEnable advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSetWorkZoneEnableServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request,
    Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response,
>;

/// Typed dobot_msgs_v4/srv/SixForceHome call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSixForceHomeClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSixForceHome_Request,
    Ros2Dobot_msgs_v4SrvSixForceHome_Response,
>;

/// Typed dobot_msgs_v4/srv/SixForceHome advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSixForceHomeServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSixForceHome_Request,
    Ros2Dobot_msgs_v4SrvSixForceHome_Response,
>;

/// Typed dobot_msgs_v4/srv/SpeedFactor call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvSpeedFactorClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvSpeedFactor_Request,
    Ros2Dobot_msgs_v4SrvSpeedFactor_Response,
>;

/// Typed dobot_msgs_v4/srv/SpeedFactor advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvSpeedFactorServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvSpeedFactor_Request,
    Ros2Dobot_msgs_v4SrvSpeedFactor_Response,
>;

/// Typed dobot_msgs_v4/srv/StartDrag call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvStartDragClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvStartDrag_Request, Ros2Dobot_msgs_v4SrvStartDrag_Response>;

/// Typed dobot_msgs_v4/srv/StartDrag advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvStartDragServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvStartDrag_Request, Ros2Dobot_msgs_v4SrvStartDrag_Response>;

/// Typed dobot_msgs_v4/srv/StartPath call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvStartPathClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvStartPath_Request, Ros2Dobot_msgs_v4SrvStartPath_Response>;

/// Typed dobot_msgs_v4/srv/StartPath advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvStartPathServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvStartPath_Request, Ros2Dobot_msgs_v4SrvStartPath_Response>;

/// Typed dobot_msgs_v4/srv/StartRTOffset call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvStartRTOffsetClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvStartRTOffset_Request,
    Ros2Dobot_msgs_v4SrvStartRTOffset_Response,
>;

/// Typed dobot_msgs_v4/srv/StartRTOffset advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvStartRTOffsetServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvStartRTOffset_Request,
    Ros2Dobot_msgs_v4SrvStartRTOffset_Response,
>;

/// Typed dobot_msgs_v4/srv/Stop call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvStopClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvStop_Request, Ros2Dobot_msgs_v4SrvStop_Response>;

/// Typed dobot_msgs_v4/srv/Stop advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvStopServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvStop_Request, Ros2Dobot_msgs_v4SrvStop_Response>;

/// Typed dobot_msgs_v4/srv/StopDrag call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvStopDragClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvStopDrag_Request, Ros2Dobot_msgs_v4SrvStopDrag_Response>;

/// Typed dobot_msgs_v4/srv/StopDrag advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvStopDragServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvStopDrag_Request, Ros2Dobot_msgs_v4SrvStopDrag_Response>;

/// Typed dobot_msgs_v4/srv/StopMoveJog call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvStopMoveJogClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvStopMoveJog_Request,
    Ros2Dobot_msgs_v4SrvStopMoveJog_Response,
>;

/// Typed dobot_msgs_v4/srv/StopMoveJog advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvStopMoveJogServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvStopMoveJog_Request,
    Ros2Dobot_msgs_v4SrvStopMoveJog_Response,
>;

/// Typed dobot_msgs_v4/srv/TcpDashboard call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvTcpDashboardClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvTcpDashboard_Request,
    Ros2Dobot_msgs_v4SrvTcpDashboard_Response,
>;

/// Typed dobot_msgs_v4/srv/TcpDashboard advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvTcpDashboardServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvTcpDashboard_Request,
    Ros2Dobot_msgs_v4SrvTcpDashboard_Response,
>;

/// Typed dobot_msgs_v4/srv/Tool call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvToolClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvTool_Request, Ros2Dobot_msgs_v4SrvTool_Response>;

/// Typed dobot_msgs_v4/srv/Tool advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvToolServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvTool_Request, Ros2Dobot_msgs_v4SrvTool_Response>;

/// Typed dobot_msgs_v4/srv/ToolAI call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvToolAIClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvToolAI_Request, Ros2Dobot_msgs_v4SrvToolAI_Response>;

/// Typed dobot_msgs_v4/srv/ToolAI advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvToolAIServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvToolAI_Request, Ros2Dobot_msgs_v4SrvToolAI_Response>;

/// Typed dobot_msgs_v4/srv/ToolDI call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvToolDIClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvToolDI_Request, Ros2Dobot_msgs_v4SrvToolDI_Response>;

/// Typed dobot_msgs_v4/srv/ToolDI advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvToolDIServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvToolDI_Request, Ros2Dobot_msgs_v4SrvToolDI_Response>;

/// Typed dobot_msgs_v4/srv/ToolDO call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvToolDOClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvToolDO_Request, Ros2Dobot_msgs_v4SrvToolDO_Response>;

/// Typed dobot_msgs_v4/srv/ToolDO advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvToolDOServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvToolDO_Request, Ros2Dobot_msgs_v4SrvToolDO_Response>;

/// Typed dobot_msgs_v4/srv/ToolDOInstant call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvToolDOInstantClient = ServiceClient<
    Ros2Dobot_msgs_v4SrvToolDOInstant_Request,
    Ros2Dobot_msgs_v4SrvToolDOInstant_Response,
>;

/// Typed dobot_msgs_v4/srv/ToolDOInstant advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvToolDOInstantServer = ServiceServer<
    Ros2Dobot_msgs_v4SrvToolDOInstant_Request,
    Ros2Dobot_msgs_v4SrvToolDOInstant_Response,
>;

/// Typed dobot_msgs_v4/srv/User call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvUserClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvUser_Request, Ros2Dobot_msgs_v4SrvUser_Response>;

/// Typed dobot_msgs_v4/srv/User advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvUserServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvUser_Request, Ros2Dobot_msgs_v4SrvUser_Response>;

/// Typed dobot_msgs_v4/srv/VelJ call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvVelJClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvVelJ_Request, Ros2Dobot_msgs_v4SrvVelJ_Response>;

/// Typed dobot_msgs_v4/srv/VelJ advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvVelJServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvVelJ_Request, Ros2Dobot_msgs_v4SrvVelJ_Response>;

/// Typed dobot_msgs_v4/srv/VelL call/real-submit owner; every alias is explicit.
pub type Ros2Dobot_msgs_v4SrvVelLClient =
    ServiceClient<Ros2Dobot_msgs_v4SrvVelL_Request, Ros2Dobot_msgs_v4SrvVelL_Response>;

/// Typed dobot_msgs_v4/srv/VelL advertiser/responder with independent grants.
pub type Ros2Dobot_msgs_v4SrvVelLServer =
    ServiceServer<Ros2Dobot_msgs_v4SrvVelL_Request, Ros2Dobot_msgs_v4SrvVelL_Response>;
