//! @file bounded_interfaces.rs
//! @brief Preserve the complete original dobot/ros1_demo_v4 canonical value domain.
//! @details The selected domain contains 188 complete record/components and 346 original fields. Declared
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

/// Complete canonical component bound for rosdemo_v4/AIRequest.
impl Component for Ros1Rosdemo_v4AIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AIResponse.
impl Component for Ros1Rosdemo_v4AIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AORequest.
impl Component for Ros1Rosdemo_v4AORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AOResponse.
impl Component for Ros1Rosdemo_v4AOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AOInstantRequest.
impl Component for Ros1Rosdemo_v4AOInstantRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AOInstantResponse.
impl Component for Ros1Rosdemo_v4AOInstantResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AccJRequest.
impl Component for Ros1Rosdemo_v4AccJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AccJResponse.
impl Component for Ros1Rosdemo_v4AccJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AccLRequest.
impl Component for Ros1Rosdemo_v4AccLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/AccLResponse.
impl Component for Ros1Rosdemo_v4AccLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ArcRequest.
impl Component for Ros1Rosdemo_v4ArcRequest {
    const MAX_WIRE: usize = 4261;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ArcResponse.
impl Component for Ros1Rosdemo_v4ArcResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/BrakeControlRequest.
impl Component for Ros1Rosdemo_v4BrakeControlRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/BrakeControlResponse.
impl Component for Ros1Rosdemo_v4BrakeControlResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CPRequest.
impl Component for Ros1Rosdemo_v4CPRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CPResponse.
impl Component for Ros1Rosdemo_v4CPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CalcToolRequest.
impl Component for Ros1Rosdemo_v4CalcToolRequest {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CalcToolResponse.
impl Component for Ros1Rosdemo_v4CalcToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CalcUserRequest.
impl Component for Ros1Rosdemo_v4CalcUserRequest {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CalcUserResponse.
impl Component for Ros1Rosdemo_v4CalcUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CircleRequest.
impl Component for Ros1Rosdemo_v4CircleRequest {
    const MAX_WIRE: usize = 4265;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/CircleResponse.
impl Component for Ros1Rosdemo_v4CircleResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ClearErrorRequest.
impl Component for Ros1Rosdemo_v4ClearErrorRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ClearErrorResponse.
impl Component for Ros1Rosdemo_v4ClearErrorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ContinueRequest.
impl Component for Ros1Rosdemo_v4ContinueRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ContinueResponse.
impl Component for Ros1Rosdemo_v4ContinueResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DIRequest.
impl Component for Ros1Rosdemo_v4DIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DIResponse.
impl Component for Ros1Rosdemo_v4DIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DIGroupRequest.
impl Component for Ros1Rosdemo_v4DIGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DIGroupResponse.
impl Component for Ros1Rosdemo_v4DIGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DORequest.
impl Component for Ros1Rosdemo_v4DORequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DOResponse.
impl Component for Ros1Rosdemo_v4DOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DOGroupRequest.
impl Component for Ros1Rosdemo_v4DOGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DOGroupResponse.
impl Component for Ros1Rosdemo_v4DOGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DOInstantRequest.
impl Component for Ros1Rosdemo_v4DOInstantRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DOInstantResponse.
impl Component for Ros1Rosdemo_v4DOInstantResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DisableRobotRequest.
impl Component for Ros1Rosdemo_v4DisableRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DisableRobotResponse.
impl Component for Ros1Rosdemo_v4DisableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DragSensivityRequest.
impl Component for Ros1Rosdemo_v4DragSensivityRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/DragSensivityResponse.
impl Component for Ros1Rosdemo_v4DragSensivityResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/EmergencyStopRequest.
impl Component for Ros1Rosdemo_v4EmergencyStopRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/EmergencyStopResponse.
impl Component for Ros1Rosdemo_v4EmergencyStopResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/EnableRobotRequest.
impl Component for Ros1Rosdemo_v4EnableRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/EnableRobotResponse.
impl Component for Ros1Rosdemo_v4EnableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/EnableSafeSkinRequest.
impl Component for Ros1Rosdemo_v4EnableSafeSkinRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/EnableSafeSkinResponse.
impl Component for Ros1Rosdemo_v4EnableSafeSkinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetAORequest.
impl Component for Ros1Rosdemo_v4GetAORequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetAOResponse.
impl Component for Ros1Rosdemo_v4GetAOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetAngleRequest.
impl Component for Ros1Rosdemo_v4GetAngleRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetAngleResponse.
impl Component for Ros1Rosdemo_v4GetAngleResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetCoilsRequest.
impl Component for Ros1Rosdemo_v4GetCoilsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetCoilsResponse.
impl Component for Ros1Rosdemo_v4GetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetCurrentCommandIdRequest.
impl Component for Ros1Rosdemo_v4GetCurrentCommandIdRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetCurrentCommandIdResponse.
impl Component for Ros1Rosdemo_v4GetCurrentCommandIdResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetDORequest.
impl Component for Ros1Rosdemo_v4GetDORequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetDOResponse.
impl Component for Ros1Rosdemo_v4GetDOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetDOGroupRequest.
impl Component for Ros1Rosdemo_v4GetDOGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetDOGroupResponse.
impl Component for Ros1Rosdemo_v4GetDOGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetErrorIDRequest.
impl Component for Ros1Rosdemo_v4GetErrorIDRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetErrorIDResponse.
impl Component for Ros1Rosdemo_v4GetErrorIDResponse {
    const MAX_WIRE: usize = 72;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetHoldRegsRequest.
impl Component for Ros1Rosdemo_v4GetHoldRegsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetHoldRegsResponse.
impl Component for Ros1Rosdemo_v4GetHoldRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInBitsRequest.
impl Component for Ros1Rosdemo_v4GetInBitsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInBitsResponse.
impl Component for Ros1Rosdemo_v4GetInBitsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInRegsRequest.
impl Component for Ros1Rosdemo_v4GetInRegsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInRegsResponse.
impl Component for Ros1Rosdemo_v4GetInRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInputBoolRequest.
impl Component for Ros1Rosdemo_v4GetInputBoolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInputBoolResponse.
impl Component for Ros1Rosdemo_v4GetInputBoolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInputFloatRequest.
impl Component for Ros1Rosdemo_v4GetInputFloatRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInputFloatResponse.
impl Component for Ros1Rosdemo_v4GetInputFloatResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInputIntRequest.
impl Component for Ros1Rosdemo_v4GetInputIntRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetInputIntResponse.
impl Component for Ros1Rosdemo_v4GetInputIntResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetOutputBoolRequest.
impl Component for Ros1Rosdemo_v4GetOutputBoolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetOutputBoolResponse.
impl Component for Ros1Rosdemo_v4GetOutputBoolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetOutputFloatRequest.
impl Component for Ros1Rosdemo_v4GetOutputFloatRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetOutputFloatResponse.
impl Component for Ros1Rosdemo_v4GetOutputFloatResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetOutputIntRequest.
impl Component for Ros1Rosdemo_v4GetOutputIntRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetOutputIntResponse.
impl Component for Ros1Rosdemo_v4GetOutputIntResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetPoseRequest.
impl Component for Ros1Rosdemo_v4GetPoseRequest {
    const MAX_WIRE: usize = 520;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetPoseResponse.
impl Component for Ros1Rosdemo_v4GetPoseResponse {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetStartPoseRequest.
impl Component for Ros1Rosdemo_v4GetStartPoseRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/GetStartPoseResponse.
impl Component for Ros1Rosdemo_v4GetStartPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/InverseKinRequest.
impl Component for Ros1Rosdemo_v4InverseKinRequest {
    const MAX_WIRE: usize = 1088;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/InverseKinResponse.
impl Component for Ros1Rosdemo_v4InverseKinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/InverseSolutionRequest.
impl Component for Ros1Rosdemo_v4InverseSolutionRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/InverseSolutionResponse.
impl Component for Ros1Rosdemo_v4InverseSolutionResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ModbusCloseRequest.
impl Component for Ros1Rosdemo_v4ModbusCloseRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ModbusCloseResponse.
impl Component for Ros1Rosdemo_v4ModbusCloseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ModbusCreateRequest.
impl Component for Ros1Rosdemo_v4ModbusCreateRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ModbusCreateResponse.
impl Component for Ros1Rosdemo_v4ModbusCreateResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ModbusRTUCreateRequest.
impl Component for Ros1Rosdemo_v4ModbusRTUCreateRequest {
    const MAX_WIRE: usize = 276;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ModbusRTUCreateResponse.
impl Component for Ros1Rosdemo_v4ModbusRTUCreateResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovJRequest.
impl Component for Ros1Rosdemo_v4MovJRequest {
    const MAX_WIRE: usize = 4213;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovJResponse.
impl Component for Ros1Rosdemo_v4MovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovJIORequest.
impl Component for Ros1Rosdemo_v4MovJIORequest {
    const MAX_WIRE: usize = 8377;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovJIOResponse.
impl Component for Ros1Rosdemo_v4MovJIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovLRequest.
impl Component for Ros1Rosdemo_v4MovLRequest {
    const MAX_WIRE: usize = 4213;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovLResponse.
impl Component for Ros1Rosdemo_v4MovLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovLIORequest.
impl Component for Ros1Rosdemo_v4MovLIORequest {
    const MAX_WIRE: usize = 8377;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MovLIOResponse.
impl Component for Ros1Rosdemo_v4MovLIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MoveJogRequest.
impl Component for Ros1Rosdemo_v4MoveJogRequest {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/MoveJogResponse.
impl Component for Ros1Rosdemo_v4MoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/PauseRequest.
impl Component for Ros1Rosdemo_v4PauseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/PauseResponse.
impl Component for Ros1Rosdemo_v4PauseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/PositiveKinRequest.
impl Component for Ros1Rosdemo_v4PositiveKinRequest {
    const MAX_WIRE: usize = 568;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/PositiveKinResponse.
impl Component for Ros1Rosdemo_v4PositiveKinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/PowerOnRequest.
impl Component for Ros1Rosdemo_v4PowerOnRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/PowerOnResponse.
impl Component for Ros1Rosdemo_v4PowerOnResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelJointMovJRequest.
impl Component for Ros1Rosdemo_v4RelJointMovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelJointMovJResponse.
impl Component for Ros1Rosdemo_v4RelJointMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovJToolRequest.
impl Component for Ros1Rosdemo_v4RelMovJToolRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovJToolResponse.
impl Component for Ros1Rosdemo_v4RelMovJToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovJUserRequest.
impl Component for Ros1Rosdemo_v4RelMovJUserRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovJUserResponse.
impl Component for Ros1Rosdemo_v4RelMovJUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovLToolRequest.
impl Component for Ros1Rosdemo_v4RelMovLToolRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovLToolResponse.
impl Component for Ros1Rosdemo_v4RelMovLToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovLUserRequest.
impl Component for Ros1Rosdemo_v4RelMovLUserRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RelMovLUserResponse.
impl Component for Ros1Rosdemo_v4RelMovLUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RobotModeRequest.
impl Component for Ros1Rosdemo_v4RobotModeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RobotModeResponse.
impl Component for Ros1Rosdemo_v4RobotModeResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RunScriptRequest.
impl Component for Ros1Rosdemo_v4RunScriptRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/RunScriptResponse.
impl Component for Ros1Rosdemo_v4RunScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ServoJRequest.
impl Component for Ros1Rosdemo_v4ServoJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ServoJResponse.
impl Component for Ros1Rosdemo_v4ServoJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ServoPRequest.
impl Component for Ros1Rosdemo_v4ServoPRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ServoPResponse.
impl Component for Ros1Rosdemo_v4ServoPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetBackDistanceRequest.
impl Component for Ros1Rosdemo_v4SetBackDistanceRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetBackDistanceResponse.
impl Component for Ros1Rosdemo_v4SetBackDistanceResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetCoilsRequest.
impl Component for Ros1Rosdemo_v4SetCoilsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetCoilsResponse.
impl Component for Ros1Rosdemo_v4SetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetCollisionLevelRequest.
impl Component for Ros1Rosdemo_v4SetCollisionLevelRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetCollisionLevelResponse.
impl Component for Ros1Rosdemo_v4SetCollisionLevelResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetHoldRegsRequest.
impl Component for Ros1Rosdemo_v4SetHoldRegsRequest {
    const MAX_WIRE: usize = 532;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetHoldRegsResponse.
impl Component for Ros1Rosdemo_v4SetHoldRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetOutputBoolRequest.
impl Component for Ros1Rosdemo_v4SetOutputBoolRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetOutputBoolResponse.
impl Component for Ros1Rosdemo_v4SetOutputBoolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetOutputFloatRequest.
impl Component for Ros1Rosdemo_v4SetOutputFloatRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetOutputFloatResponse.
impl Component for Ros1Rosdemo_v4SetOutputFloatResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetOutputIntRequest.
impl Component for Ros1Rosdemo_v4SetOutputIntRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetOutputIntResponse.
impl Component for Ros1Rosdemo_v4SetOutputIntResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetPayloadRequest.
impl Component for Ros1Rosdemo_v4SetPayloadRequest {
    const MAX_WIRE: usize = 32;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetPayloadResponse.
impl Component for Ros1Rosdemo_v4SetPayloadResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetPostCollisionModeRequest.
impl Component for Ros1Rosdemo_v4SetPostCollisionModeRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetPostCollisionModeResponse.
impl Component for Ros1Rosdemo_v4SetPostCollisionModeResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetSafeSkinRequest.
impl Component for Ros1Rosdemo_v4SetSafeSkinRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetSafeSkinResponse.
impl Component for Ros1Rosdemo_v4SetSafeSkinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetSafeWallEnableRequest.
impl Component for Ros1Rosdemo_v4SetSafeWallEnableRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetSafeWallEnableResponse.
impl Component for Ros1Rosdemo_v4SetSafeWallEnableResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetToolRequest.
impl Component for Ros1Rosdemo_v4SetToolRequest {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetToolResponse.
impl Component for Ros1Rosdemo_v4SetToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetTool485Request.
impl Component for Ros1Rosdemo_v4SetTool485Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetTool485Response.
impl Component for Ros1Rosdemo_v4SetTool485Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetToolModeRequest.
impl Component for Ros1Rosdemo_v4SetToolModeRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetToolModeResponse.
impl Component for Ros1Rosdemo_v4SetToolModeResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetToolPowerRequest.
impl Component for Ros1Rosdemo_v4SetToolPowerRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetToolPowerResponse.
impl Component for Ros1Rosdemo_v4SetToolPowerResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetUserRequest.
impl Component for Ros1Rosdemo_v4SetUserRequest {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SetUserResponse.
impl Component for Ros1Rosdemo_v4SetUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SpeedFactorRequest.
impl Component for Ros1Rosdemo_v4SpeedFactorRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/SpeedFactorResponse.
impl Component for Ros1Rosdemo_v4SpeedFactorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StartDragRequest.
impl Component for Ros1Rosdemo_v4StartDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StartDragResponse.
impl Component for Ros1Rosdemo_v4StartDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StartPathRequest.
impl Component for Ros1Rosdemo_v4StartPathRequest {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StartPathResponse.
impl Component for Ros1Rosdemo_v4StartPathResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StopRequest.
impl Component for Ros1Rosdemo_v4StopRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StopResponse.
impl Component for Ros1Rosdemo_v4StopResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StopDragRequest.
impl Component for Ros1Rosdemo_v4StopDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StopDragResponse.
impl Component for Ros1Rosdemo_v4StopDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StopMoveJogRequest.
impl Component for Ros1Rosdemo_v4StopMoveJogRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/StopMoveJogResponse.
impl Component for Ros1Rosdemo_v4StopMoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/TcpDashboardRequest.
impl Component for Ros1Rosdemo_v4TcpDashboardRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/TcpDashboardResponse.
impl Component for Ros1Rosdemo_v4TcpDashboardResponse {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolRequest.
impl Component for Ros1Rosdemo_v4ToolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolResponse.
impl Component for Ros1Rosdemo_v4ToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolAIRequest.
impl Component for Ros1Rosdemo_v4ToolAIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolAIResponse.
impl Component for Ros1Rosdemo_v4ToolAIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolDIRequest.
impl Component for Ros1Rosdemo_v4ToolDIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolDIResponse.
impl Component for Ros1Rosdemo_v4ToolDIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolDORequest.
impl Component for Ros1Rosdemo_v4ToolDORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolDOResponse.
impl Component for Ros1Rosdemo_v4ToolDOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolDOInstantRequest.
impl Component for Ros1Rosdemo_v4ToolDOInstantRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/ToolDOInstantResponse.
impl Component for Ros1Rosdemo_v4ToolDOInstantResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/UserRequest.
impl Component for Ros1Rosdemo_v4UserRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/UserResponse.
impl Component for Ros1Rosdemo_v4UserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/VelJRequest.
impl Component for Ros1Rosdemo_v4VelJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/VelJResponse.
impl Component for Ros1Rosdemo_v4VelJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/VelLRequest.
impl Component for Ros1Rosdemo_v4VelLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v4/VelLResponse.
impl Component for Ros1Rosdemo_v4VelLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Typed rosdemo_v4/AI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4AIClient = ServiceClient<Ros1Rosdemo_v4AIRequest, Ros1Rosdemo_v4AIResponse>;

/// Typed rosdemo_v4/AI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4AIServer = ServiceServer<Ros1Rosdemo_v4AIRequest, Ros1Rosdemo_v4AIResponse>;

/// Typed rosdemo_v4/AO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4AOClient = ServiceClient<Ros1Rosdemo_v4AORequest, Ros1Rosdemo_v4AOResponse>;

/// Typed rosdemo_v4/AO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4AOServer = ServiceServer<Ros1Rosdemo_v4AORequest, Ros1Rosdemo_v4AOResponse>;

/// Typed rosdemo_v4/AOInstant call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4AOInstantClient =
    ServiceClient<Ros1Rosdemo_v4AOInstantRequest, Ros1Rosdemo_v4AOInstantResponse>;

/// Typed rosdemo_v4/AOInstant advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4AOInstantServer =
    ServiceServer<Ros1Rosdemo_v4AOInstantRequest, Ros1Rosdemo_v4AOInstantResponse>;

/// Typed rosdemo_v4/AccJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4AccJClient =
    ServiceClient<Ros1Rosdemo_v4AccJRequest, Ros1Rosdemo_v4AccJResponse>;

/// Typed rosdemo_v4/AccJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4AccJServer =
    ServiceServer<Ros1Rosdemo_v4AccJRequest, Ros1Rosdemo_v4AccJResponse>;

/// Typed rosdemo_v4/AccL call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4AccLClient =
    ServiceClient<Ros1Rosdemo_v4AccLRequest, Ros1Rosdemo_v4AccLResponse>;

/// Typed rosdemo_v4/AccL advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4AccLServer =
    ServiceServer<Ros1Rosdemo_v4AccLRequest, Ros1Rosdemo_v4AccLResponse>;

/// Typed rosdemo_v4/Arc call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ArcClient =
    ServiceClient<Ros1Rosdemo_v4ArcRequest, Ros1Rosdemo_v4ArcResponse>;

/// Typed rosdemo_v4/Arc advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ArcServer =
    ServiceServer<Ros1Rosdemo_v4ArcRequest, Ros1Rosdemo_v4ArcResponse>;

/// Typed rosdemo_v4/BrakeControl call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4BrakeControlClient =
    ServiceClient<Ros1Rosdemo_v4BrakeControlRequest, Ros1Rosdemo_v4BrakeControlResponse>;

/// Typed rosdemo_v4/BrakeControl advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4BrakeControlServer =
    ServiceServer<Ros1Rosdemo_v4BrakeControlRequest, Ros1Rosdemo_v4BrakeControlResponse>;

/// Typed rosdemo_v4/CP call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4CPClient = ServiceClient<Ros1Rosdemo_v4CPRequest, Ros1Rosdemo_v4CPResponse>;

/// Typed rosdemo_v4/CP advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4CPServer = ServiceServer<Ros1Rosdemo_v4CPRequest, Ros1Rosdemo_v4CPResponse>;

/// Typed rosdemo_v4/CalcTool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4CalcToolClient =
    ServiceClient<Ros1Rosdemo_v4CalcToolRequest, Ros1Rosdemo_v4CalcToolResponse>;

/// Typed rosdemo_v4/CalcTool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4CalcToolServer =
    ServiceServer<Ros1Rosdemo_v4CalcToolRequest, Ros1Rosdemo_v4CalcToolResponse>;

/// Typed rosdemo_v4/CalcUser call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4CalcUserClient =
    ServiceClient<Ros1Rosdemo_v4CalcUserRequest, Ros1Rosdemo_v4CalcUserResponse>;

/// Typed rosdemo_v4/CalcUser advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4CalcUserServer =
    ServiceServer<Ros1Rosdemo_v4CalcUserRequest, Ros1Rosdemo_v4CalcUserResponse>;

/// Typed rosdemo_v4/Circle call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4CircleClient =
    ServiceClient<Ros1Rosdemo_v4CircleRequest, Ros1Rosdemo_v4CircleResponse>;

/// Typed rosdemo_v4/Circle advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4CircleServer =
    ServiceServer<Ros1Rosdemo_v4CircleRequest, Ros1Rosdemo_v4CircleResponse>;

/// Typed rosdemo_v4/ClearError call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ClearErrorClient =
    ServiceClient<Ros1Rosdemo_v4ClearErrorRequest, Ros1Rosdemo_v4ClearErrorResponse>;

/// Typed rosdemo_v4/ClearError advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ClearErrorServer =
    ServiceServer<Ros1Rosdemo_v4ClearErrorRequest, Ros1Rosdemo_v4ClearErrorResponse>;

/// Typed rosdemo_v4/Continue call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ContinueClient =
    ServiceClient<Ros1Rosdemo_v4ContinueRequest, Ros1Rosdemo_v4ContinueResponse>;

/// Typed rosdemo_v4/Continue advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ContinueServer =
    ServiceServer<Ros1Rosdemo_v4ContinueRequest, Ros1Rosdemo_v4ContinueResponse>;

/// Typed rosdemo_v4/DI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4DIClient = ServiceClient<Ros1Rosdemo_v4DIRequest, Ros1Rosdemo_v4DIResponse>;

/// Typed rosdemo_v4/DI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4DIServer = ServiceServer<Ros1Rosdemo_v4DIRequest, Ros1Rosdemo_v4DIResponse>;

/// Typed rosdemo_v4/DIGroup call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4DIGroupClient =
    ServiceClient<Ros1Rosdemo_v4DIGroupRequest, Ros1Rosdemo_v4DIGroupResponse>;

/// Typed rosdemo_v4/DIGroup advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4DIGroupServer =
    ServiceServer<Ros1Rosdemo_v4DIGroupRequest, Ros1Rosdemo_v4DIGroupResponse>;

/// Typed rosdemo_v4/DO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4DOClient = ServiceClient<Ros1Rosdemo_v4DORequest, Ros1Rosdemo_v4DOResponse>;

/// Typed rosdemo_v4/DO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4DOServer = ServiceServer<Ros1Rosdemo_v4DORequest, Ros1Rosdemo_v4DOResponse>;

/// Typed rosdemo_v4/DOGroup call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4DOGroupClient =
    ServiceClient<Ros1Rosdemo_v4DOGroupRequest, Ros1Rosdemo_v4DOGroupResponse>;

/// Typed rosdemo_v4/DOGroup advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4DOGroupServer =
    ServiceServer<Ros1Rosdemo_v4DOGroupRequest, Ros1Rosdemo_v4DOGroupResponse>;

/// Typed rosdemo_v4/DOInstant call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4DOInstantClient =
    ServiceClient<Ros1Rosdemo_v4DOInstantRequest, Ros1Rosdemo_v4DOInstantResponse>;

/// Typed rosdemo_v4/DOInstant advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4DOInstantServer =
    ServiceServer<Ros1Rosdemo_v4DOInstantRequest, Ros1Rosdemo_v4DOInstantResponse>;

/// Typed rosdemo_v4/DisableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4DisableRobotClient =
    ServiceClient<Ros1Rosdemo_v4DisableRobotRequest, Ros1Rosdemo_v4DisableRobotResponse>;

/// Typed rosdemo_v4/DisableRobot advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4DisableRobotServer =
    ServiceServer<Ros1Rosdemo_v4DisableRobotRequest, Ros1Rosdemo_v4DisableRobotResponse>;

/// Typed rosdemo_v4/DragSensivity call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4DragSensivityClient =
    ServiceClient<Ros1Rosdemo_v4DragSensivityRequest, Ros1Rosdemo_v4DragSensivityResponse>;

/// Typed rosdemo_v4/DragSensivity advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4DragSensivityServer =
    ServiceServer<Ros1Rosdemo_v4DragSensivityRequest, Ros1Rosdemo_v4DragSensivityResponse>;

/// Typed rosdemo_v4/EmergencyStop call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4EmergencyStopClient =
    ServiceClient<Ros1Rosdemo_v4EmergencyStopRequest, Ros1Rosdemo_v4EmergencyStopResponse>;

/// Typed rosdemo_v4/EmergencyStop advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4EmergencyStopServer =
    ServiceServer<Ros1Rosdemo_v4EmergencyStopRequest, Ros1Rosdemo_v4EmergencyStopResponse>;

/// Typed rosdemo_v4/EnableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4EnableRobotClient =
    ServiceClient<Ros1Rosdemo_v4EnableRobotRequest, Ros1Rosdemo_v4EnableRobotResponse>;

/// Typed rosdemo_v4/EnableRobot advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4EnableRobotServer =
    ServiceServer<Ros1Rosdemo_v4EnableRobotRequest, Ros1Rosdemo_v4EnableRobotResponse>;

/// Typed rosdemo_v4/EnableSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4EnableSafeSkinClient =
    ServiceClient<Ros1Rosdemo_v4EnableSafeSkinRequest, Ros1Rosdemo_v4EnableSafeSkinResponse>;

/// Typed rosdemo_v4/EnableSafeSkin advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4EnableSafeSkinServer =
    ServiceServer<Ros1Rosdemo_v4EnableSafeSkinRequest, Ros1Rosdemo_v4EnableSafeSkinResponse>;

/// Typed rosdemo_v4/GetAO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetAOClient =
    ServiceClient<Ros1Rosdemo_v4GetAORequest, Ros1Rosdemo_v4GetAOResponse>;

/// Typed rosdemo_v4/GetAO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetAOServer =
    ServiceServer<Ros1Rosdemo_v4GetAORequest, Ros1Rosdemo_v4GetAOResponse>;

/// Typed rosdemo_v4/GetAngle call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetAngleClient =
    ServiceClient<Ros1Rosdemo_v4GetAngleRequest, Ros1Rosdemo_v4GetAngleResponse>;

/// Typed rosdemo_v4/GetAngle advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetAngleServer =
    ServiceServer<Ros1Rosdemo_v4GetAngleRequest, Ros1Rosdemo_v4GetAngleResponse>;

/// Typed rosdemo_v4/GetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetCoilsClient =
    ServiceClient<Ros1Rosdemo_v4GetCoilsRequest, Ros1Rosdemo_v4GetCoilsResponse>;

/// Typed rosdemo_v4/GetCoils advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetCoilsServer =
    ServiceServer<Ros1Rosdemo_v4GetCoilsRequest, Ros1Rosdemo_v4GetCoilsResponse>;

/// Typed rosdemo_v4/GetCurrentCommandId call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetCurrentCommandIdClient = ServiceClient<
    Ros1Rosdemo_v4GetCurrentCommandIdRequest,
    Ros1Rosdemo_v4GetCurrentCommandIdResponse,
>;

/// Typed rosdemo_v4/GetCurrentCommandId advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetCurrentCommandIdServer = ServiceServer<
    Ros1Rosdemo_v4GetCurrentCommandIdRequest,
    Ros1Rosdemo_v4GetCurrentCommandIdResponse,
>;

/// Typed rosdemo_v4/GetDO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetDOClient =
    ServiceClient<Ros1Rosdemo_v4GetDORequest, Ros1Rosdemo_v4GetDOResponse>;

/// Typed rosdemo_v4/GetDO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetDOServer =
    ServiceServer<Ros1Rosdemo_v4GetDORequest, Ros1Rosdemo_v4GetDOResponse>;

/// Typed rosdemo_v4/GetDOGroup call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetDOGroupClient =
    ServiceClient<Ros1Rosdemo_v4GetDOGroupRequest, Ros1Rosdemo_v4GetDOGroupResponse>;

/// Typed rosdemo_v4/GetDOGroup advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetDOGroupServer =
    ServiceServer<Ros1Rosdemo_v4GetDOGroupRequest, Ros1Rosdemo_v4GetDOGroupResponse>;

/// Typed rosdemo_v4/GetErrorID call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetErrorIDClient =
    ServiceClient<Ros1Rosdemo_v4GetErrorIDRequest, Ros1Rosdemo_v4GetErrorIDResponse>;

/// Typed rosdemo_v4/GetErrorID advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetErrorIDServer =
    ServiceServer<Ros1Rosdemo_v4GetErrorIDRequest, Ros1Rosdemo_v4GetErrorIDResponse>;

/// Typed rosdemo_v4/GetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetHoldRegsClient =
    ServiceClient<Ros1Rosdemo_v4GetHoldRegsRequest, Ros1Rosdemo_v4GetHoldRegsResponse>;

/// Typed rosdemo_v4/GetHoldRegs advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetHoldRegsServer =
    ServiceServer<Ros1Rosdemo_v4GetHoldRegsRequest, Ros1Rosdemo_v4GetHoldRegsResponse>;

/// Typed rosdemo_v4/GetInBits call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetInBitsClient =
    ServiceClient<Ros1Rosdemo_v4GetInBitsRequest, Ros1Rosdemo_v4GetInBitsResponse>;

/// Typed rosdemo_v4/GetInBits advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetInBitsServer =
    ServiceServer<Ros1Rosdemo_v4GetInBitsRequest, Ros1Rosdemo_v4GetInBitsResponse>;

/// Typed rosdemo_v4/GetInRegs call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetInRegsClient =
    ServiceClient<Ros1Rosdemo_v4GetInRegsRequest, Ros1Rosdemo_v4GetInRegsResponse>;

/// Typed rosdemo_v4/GetInRegs advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetInRegsServer =
    ServiceServer<Ros1Rosdemo_v4GetInRegsRequest, Ros1Rosdemo_v4GetInRegsResponse>;

/// Typed rosdemo_v4/GetInputBool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetInputBoolClient =
    ServiceClient<Ros1Rosdemo_v4GetInputBoolRequest, Ros1Rosdemo_v4GetInputBoolResponse>;

/// Typed rosdemo_v4/GetInputBool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetInputBoolServer =
    ServiceServer<Ros1Rosdemo_v4GetInputBoolRequest, Ros1Rosdemo_v4GetInputBoolResponse>;

/// Typed rosdemo_v4/GetInputFloat call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetInputFloatClient =
    ServiceClient<Ros1Rosdemo_v4GetInputFloatRequest, Ros1Rosdemo_v4GetInputFloatResponse>;

/// Typed rosdemo_v4/GetInputFloat advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetInputFloatServer =
    ServiceServer<Ros1Rosdemo_v4GetInputFloatRequest, Ros1Rosdemo_v4GetInputFloatResponse>;

/// Typed rosdemo_v4/GetInputInt call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetInputIntClient =
    ServiceClient<Ros1Rosdemo_v4GetInputIntRequest, Ros1Rosdemo_v4GetInputIntResponse>;

/// Typed rosdemo_v4/GetInputInt advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetInputIntServer =
    ServiceServer<Ros1Rosdemo_v4GetInputIntRequest, Ros1Rosdemo_v4GetInputIntResponse>;

/// Typed rosdemo_v4/GetOutputBool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetOutputBoolClient =
    ServiceClient<Ros1Rosdemo_v4GetOutputBoolRequest, Ros1Rosdemo_v4GetOutputBoolResponse>;

/// Typed rosdemo_v4/GetOutputBool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetOutputBoolServer =
    ServiceServer<Ros1Rosdemo_v4GetOutputBoolRequest, Ros1Rosdemo_v4GetOutputBoolResponse>;

/// Typed rosdemo_v4/GetOutputFloat call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetOutputFloatClient =
    ServiceClient<Ros1Rosdemo_v4GetOutputFloatRequest, Ros1Rosdemo_v4GetOutputFloatResponse>;

/// Typed rosdemo_v4/GetOutputFloat advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetOutputFloatServer =
    ServiceServer<Ros1Rosdemo_v4GetOutputFloatRequest, Ros1Rosdemo_v4GetOutputFloatResponse>;

/// Typed rosdemo_v4/GetOutputInt call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetOutputIntClient =
    ServiceClient<Ros1Rosdemo_v4GetOutputIntRequest, Ros1Rosdemo_v4GetOutputIntResponse>;

/// Typed rosdemo_v4/GetOutputInt advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetOutputIntServer =
    ServiceServer<Ros1Rosdemo_v4GetOutputIntRequest, Ros1Rosdemo_v4GetOutputIntResponse>;

/// Typed rosdemo_v4/GetPose call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetPoseClient =
    ServiceClient<Ros1Rosdemo_v4GetPoseRequest, Ros1Rosdemo_v4GetPoseResponse>;

/// Typed rosdemo_v4/GetPose advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetPoseServer =
    ServiceServer<Ros1Rosdemo_v4GetPoseRequest, Ros1Rosdemo_v4GetPoseResponse>;

/// Typed rosdemo_v4/GetStartPose call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4GetStartPoseClient =
    ServiceClient<Ros1Rosdemo_v4GetStartPoseRequest, Ros1Rosdemo_v4GetStartPoseResponse>;

/// Typed rosdemo_v4/GetStartPose advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4GetStartPoseServer =
    ServiceServer<Ros1Rosdemo_v4GetStartPoseRequest, Ros1Rosdemo_v4GetStartPoseResponse>;

/// Typed rosdemo_v4/InverseKin call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4InverseKinClient =
    ServiceClient<Ros1Rosdemo_v4InverseKinRequest, Ros1Rosdemo_v4InverseKinResponse>;

/// Typed rosdemo_v4/InverseKin advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4InverseKinServer =
    ServiceServer<Ros1Rosdemo_v4InverseKinRequest, Ros1Rosdemo_v4InverseKinResponse>;

/// Typed rosdemo_v4/InverseSolution call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4InverseSolutionClient =
    ServiceClient<Ros1Rosdemo_v4InverseSolutionRequest, Ros1Rosdemo_v4InverseSolutionResponse>;

/// Typed rosdemo_v4/InverseSolution advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4InverseSolutionServer =
    ServiceServer<Ros1Rosdemo_v4InverseSolutionRequest, Ros1Rosdemo_v4InverseSolutionResponse>;

/// Typed rosdemo_v4/ModbusClose call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ModbusCloseClient =
    ServiceClient<Ros1Rosdemo_v4ModbusCloseRequest, Ros1Rosdemo_v4ModbusCloseResponse>;

/// Typed rosdemo_v4/ModbusClose advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ModbusCloseServer =
    ServiceServer<Ros1Rosdemo_v4ModbusCloseRequest, Ros1Rosdemo_v4ModbusCloseResponse>;

/// Typed rosdemo_v4/ModbusCreate call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ModbusCreateClient =
    ServiceClient<Ros1Rosdemo_v4ModbusCreateRequest, Ros1Rosdemo_v4ModbusCreateResponse>;

/// Typed rosdemo_v4/ModbusCreate advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ModbusCreateServer =
    ServiceServer<Ros1Rosdemo_v4ModbusCreateRequest, Ros1Rosdemo_v4ModbusCreateResponse>;

/// Typed rosdemo_v4/ModbusRTUCreate call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ModbusRTUCreateClient =
    ServiceClient<Ros1Rosdemo_v4ModbusRTUCreateRequest, Ros1Rosdemo_v4ModbusRTUCreateResponse>;

/// Typed rosdemo_v4/ModbusRTUCreate advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ModbusRTUCreateServer =
    ServiceServer<Ros1Rosdemo_v4ModbusRTUCreateRequest, Ros1Rosdemo_v4ModbusRTUCreateResponse>;

/// Typed rosdemo_v4/MovJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4MovJClient =
    ServiceClient<Ros1Rosdemo_v4MovJRequest, Ros1Rosdemo_v4MovJResponse>;

/// Typed rosdemo_v4/MovJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4MovJServer =
    ServiceServer<Ros1Rosdemo_v4MovJRequest, Ros1Rosdemo_v4MovJResponse>;

/// Typed rosdemo_v4/MovJIO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4MovJIOClient =
    ServiceClient<Ros1Rosdemo_v4MovJIORequest, Ros1Rosdemo_v4MovJIOResponse>;

/// Typed rosdemo_v4/MovJIO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4MovJIOServer =
    ServiceServer<Ros1Rosdemo_v4MovJIORequest, Ros1Rosdemo_v4MovJIOResponse>;

/// Typed rosdemo_v4/MovL call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4MovLClient =
    ServiceClient<Ros1Rosdemo_v4MovLRequest, Ros1Rosdemo_v4MovLResponse>;

/// Typed rosdemo_v4/MovL advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4MovLServer =
    ServiceServer<Ros1Rosdemo_v4MovLRequest, Ros1Rosdemo_v4MovLResponse>;

/// Typed rosdemo_v4/MovLIO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4MovLIOClient =
    ServiceClient<Ros1Rosdemo_v4MovLIORequest, Ros1Rosdemo_v4MovLIOResponse>;

/// Typed rosdemo_v4/MovLIO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4MovLIOServer =
    ServiceServer<Ros1Rosdemo_v4MovLIORequest, Ros1Rosdemo_v4MovLIOResponse>;

/// Typed rosdemo_v4/MoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4MoveJogClient =
    ServiceClient<Ros1Rosdemo_v4MoveJogRequest, Ros1Rosdemo_v4MoveJogResponse>;

/// Typed rosdemo_v4/MoveJog advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4MoveJogServer =
    ServiceServer<Ros1Rosdemo_v4MoveJogRequest, Ros1Rosdemo_v4MoveJogResponse>;

/// Typed rosdemo_v4/Pause call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4PauseClient =
    ServiceClient<Ros1Rosdemo_v4PauseRequest, Ros1Rosdemo_v4PauseResponse>;

/// Typed rosdemo_v4/Pause advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4PauseServer =
    ServiceServer<Ros1Rosdemo_v4PauseRequest, Ros1Rosdemo_v4PauseResponse>;

/// Typed rosdemo_v4/PositiveKin call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4PositiveKinClient =
    ServiceClient<Ros1Rosdemo_v4PositiveKinRequest, Ros1Rosdemo_v4PositiveKinResponse>;

/// Typed rosdemo_v4/PositiveKin advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4PositiveKinServer =
    ServiceServer<Ros1Rosdemo_v4PositiveKinRequest, Ros1Rosdemo_v4PositiveKinResponse>;

/// Typed rosdemo_v4/PowerOn call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4PowerOnClient =
    ServiceClient<Ros1Rosdemo_v4PowerOnRequest, Ros1Rosdemo_v4PowerOnResponse>;

/// Typed rosdemo_v4/PowerOn advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4PowerOnServer =
    ServiceServer<Ros1Rosdemo_v4PowerOnRequest, Ros1Rosdemo_v4PowerOnResponse>;

/// Typed rosdemo_v4/RelJointMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4RelJointMovJClient =
    ServiceClient<Ros1Rosdemo_v4RelJointMovJRequest, Ros1Rosdemo_v4RelJointMovJResponse>;

/// Typed rosdemo_v4/RelJointMovJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4RelJointMovJServer =
    ServiceServer<Ros1Rosdemo_v4RelJointMovJRequest, Ros1Rosdemo_v4RelJointMovJResponse>;

/// Typed rosdemo_v4/RelMovJTool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4RelMovJToolClient =
    ServiceClient<Ros1Rosdemo_v4RelMovJToolRequest, Ros1Rosdemo_v4RelMovJToolResponse>;

/// Typed rosdemo_v4/RelMovJTool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4RelMovJToolServer =
    ServiceServer<Ros1Rosdemo_v4RelMovJToolRequest, Ros1Rosdemo_v4RelMovJToolResponse>;

/// Typed rosdemo_v4/RelMovJUser call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4RelMovJUserClient =
    ServiceClient<Ros1Rosdemo_v4RelMovJUserRequest, Ros1Rosdemo_v4RelMovJUserResponse>;

/// Typed rosdemo_v4/RelMovJUser advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4RelMovJUserServer =
    ServiceServer<Ros1Rosdemo_v4RelMovJUserRequest, Ros1Rosdemo_v4RelMovJUserResponse>;

/// Typed rosdemo_v4/RelMovLTool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4RelMovLToolClient =
    ServiceClient<Ros1Rosdemo_v4RelMovLToolRequest, Ros1Rosdemo_v4RelMovLToolResponse>;

/// Typed rosdemo_v4/RelMovLTool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4RelMovLToolServer =
    ServiceServer<Ros1Rosdemo_v4RelMovLToolRequest, Ros1Rosdemo_v4RelMovLToolResponse>;

/// Typed rosdemo_v4/RelMovLUser call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4RelMovLUserClient =
    ServiceClient<Ros1Rosdemo_v4RelMovLUserRequest, Ros1Rosdemo_v4RelMovLUserResponse>;

/// Typed rosdemo_v4/RelMovLUser advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4RelMovLUserServer =
    ServiceServer<Ros1Rosdemo_v4RelMovLUserRequest, Ros1Rosdemo_v4RelMovLUserResponse>;

/// Typed rosdemo_v4/RobotMode call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4RobotModeClient =
    ServiceClient<Ros1Rosdemo_v4RobotModeRequest, Ros1Rosdemo_v4RobotModeResponse>;

/// Typed rosdemo_v4/RobotMode advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4RobotModeServer =
    ServiceServer<Ros1Rosdemo_v4RobotModeRequest, Ros1Rosdemo_v4RobotModeResponse>;

/// Typed rosdemo_v4/RunScript call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4RunScriptClient =
    ServiceClient<Ros1Rosdemo_v4RunScriptRequest, Ros1Rosdemo_v4RunScriptResponse>;

/// Typed rosdemo_v4/RunScript advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4RunScriptServer =
    ServiceServer<Ros1Rosdemo_v4RunScriptRequest, Ros1Rosdemo_v4RunScriptResponse>;

/// Typed rosdemo_v4/ServoJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ServoJClient =
    ServiceClient<Ros1Rosdemo_v4ServoJRequest, Ros1Rosdemo_v4ServoJResponse>;

/// Typed rosdemo_v4/ServoJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ServoJServer =
    ServiceServer<Ros1Rosdemo_v4ServoJRequest, Ros1Rosdemo_v4ServoJResponse>;

/// Typed rosdemo_v4/ServoP call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ServoPClient =
    ServiceClient<Ros1Rosdemo_v4ServoPRequest, Ros1Rosdemo_v4ServoPResponse>;

/// Typed rosdemo_v4/ServoP advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ServoPServer =
    ServiceServer<Ros1Rosdemo_v4ServoPRequest, Ros1Rosdemo_v4ServoPResponse>;

/// Typed rosdemo_v4/SetBackDistance call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetBackDistanceClient =
    ServiceClient<Ros1Rosdemo_v4SetBackDistanceRequest, Ros1Rosdemo_v4SetBackDistanceResponse>;

/// Typed rosdemo_v4/SetBackDistance advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetBackDistanceServer =
    ServiceServer<Ros1Rosdemo_v4SetBackDistanceRequest, Ros1Rosdemo_v4SetBackDistanceResponse>;

/// Typed rosdemo_v4/SetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetCoilsClient =
    ServiceClient<Ros1Rosdemo_v4SetCoilsRequest, Ros1Rosdemo_v4SetCoilsResponse>;

/// Typed rosdemo_v4/SetCoils advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetCoilsServer =
    ServiceServer<Ros1Rosdemo_v4SetCoilsRequest, Ros1Rosdemo_v4SetCoilsResponse>;

/// Typed rosdemo_v4/SetCollisionLevel call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetCollisionLevelClient =
    ServiceClient<Ros1Rosdemo_v4SetCollisionLevelRequest, Ros1Rosdemo_v4SetCollisionLevelResponse>;

/// Typed rosdemo_v4/SetCollisionLevel advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetCollisionLevelServer =
    ServiceServer<Ros1Rosdemo_v4SetCollisionLevelRequest, Ros1Rosdemo_v4SetCollisionLevelResponse>;

/// Typed rosdemo_v4/SetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetHoldRegsClient =
    ServiceClient<Ros1Rosdemo_v4SetHoldRegsRequest, Ros1Rosdemo_v4SetHoldRegsResponse>;

/// Typed rosdemo_v4/SetHoldRegs advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetHoldRegsServer =
    ServiceServer<Ros1Rosdemo_v4SetHoldRegsRequest, Ros1Rosdemo_v4SetHoldRegsResponse>;

/// Typed rosdemo_v4/SetOutputBool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetOutputBoolClient =
    ServiceClient<Ros1Rosdemo_v4SetOutputBoolRequest, Ros1Rosdemo_v4SetOutputBoolResponse>;

/// Typed rosdemo_v4/SetOutputBool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetOutputBoolServer =
    ServiceServer<Ros1Rosdemo_v4SetOutputBoolRequest, Ros1Rosdemo_v4SetOutputBoolResponse>;

/// Typed rosdemo_v4/SetOutputFloat call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetOutputFloatClient =
    ServiceClient<Ros1Rosdemo_v4SetOutputFloatRequest, Ros1Rosdemo_v4SetOutputFloatResponse>;

/// Typed rosdemo_v4/SetOutputFloat advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetOutputFloatServer =
    ServiceServer<Ros1Rosdemo_v4SetOutputFloatRequest, Ros1Rosdemo_v4SetOutputFloatResponse>;

/// Typed rosdemo_v4/SetOutputInt call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetOutputIntClient =
    ServiceClient<Ros1Rosdemo_v4SetOutputIntRequest, Ros1Rosdemo_v4SetOutputIntResponse>;

/// Typed rosdemo_v4/SetOutputInt advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetOutputIntServer =
    ServiceServer<Ros1Rosdemo_v4SetOutputIntRequest, Ros1Rosdemo_v4SetOutputIntResponse>;

/// Typed rosdemo_v4/SetPayload call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetPayloadClient =
    ServiceClient<Ros1Rosdemo_v4SetPayloadRequest, Ros1Rosdemo_v4SetPayloadResponse>;

/// Typed rosdemo_v4/SetPayload advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetPayloadServer =
    ServiceServer<Ros1Rosdemo_v4SetPayloadRequest, Ros1Rosdemo_v4SetPayloadResponse>;

/// Typed rosdemo_v4/SetPostCollisionMode call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetPostCollisionModeClient = ServiceClient<
    Ros1Rosdemo_v4SetPostCollisionModeRequest,
    Ros1Rosdemo_v4SetPostCollisionModeResponse,
>;

/// Typed rosdemo_v4/SetPostCollisionMode advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetPostCollisionModeServer = ServiceServer<
    Ros1Rosdemo_v4SetPostCollisionModeRequest,
    Ros1Rosdemo_v4SetPostCollisionModeResponse,
>;

/// Typed rosdemo_v4/SetSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetSafeSkinClient =
    ServiceClient<Ros1Rosdemo_v4SetSafeSkinRequest, Ros1Rosdemo_v4SetSafeSkinResponse>;

/// Typed rosdemo_v4/SetSafeSkin advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetSafeSkinServer =
    ServiceServer<Ros1Rosdemo_v4SetSafeSkinRequest, Ros1Rosdemo_v4SetSafeSkinResponse>;

/// Typed rosdemo_v4/SetSafeWallEnable call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetSafeWallEnableClient =
    ServiceClient<Ros1Rosdemo_v4SetSafeWallEnableRequest, Ros1Rosdemo_v4SetSafeWallEnableResponse>;

/// Typed rosdemo_v4/SetSafeWallEnable advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetSafeWallEnableServer =
    ServiceServer<Ros1Rosdemo_v4SetSafeWallEnableRequest, Ros1Rosdemo_v4SetSafeWallEnableResponse>;

/// Typed rosdemo_v4/SetTool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetToolClient =
    ServiceClient<Ros1Rosdemo_v4SetToolRequest, Ros1Rosdemo_v4SetToolResponse>;

/// Typed rosdemo_v4/SetTool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetToolServer =
    ServiceServer<Ros1Rosdemo_v4SetToolRequest, Ros1Rosdemo_v4SetToolResponse>;

/// Typed rosdemo_v4/SetTool485 call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetTool485Client =
    ServiceClient<Ros1Rosdemo_v4SetTool485Request, Ros1Rosdemo_v4SetTool485Response>;

/// Typed rosdemo_v4/SetTool485 advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetTool485Server =
    ServiceServer<Ros1Rosdemo_v4SetTool485Request, Ros1Rosdemo_v4SetTool485Response>;

/// Typed rosdemo_v4/SetToolMode call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetToolModeClient =
    ServiceClient<Ros1Rosdemo_v4SetToolModeRequest, Ros1Rosdemo_v4SetToolModeResponse>;

/// Typed rosdemo_v4/SetToolMode advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetToolModeServer =
    ServiceServer<Ros1Rosdemo_v4SetToolModeRequest, Ros1Rosdemo_v4SetToolModeResponse>;

/// Typed rosdemo_v4/SetToolPower call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetToolPowerClient =
    ServiceClient<Ros1Rosdemo_v4SetToolPowerRequest, Ros1Rosdemo_v4SetToolPowerResponse>;

/// Typed rosdemo_v4/SetToolPower advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetToolPowerServer =
    ServiceServer<Ros1Rosdemo_v4SetToolPowerRequest, Ros1Rosdemo_v4SetToolPowerResponse>;

/// Typed rosdemo_v4/SetUser call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SetUserClient =
    ServiceClient<Ros1Rosdemo_v4SetUserRequest, Ros1Rosdemo_v4SetUserResponse>;

/// Typed rosdemo_v4/SetUser advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SetUserServer =
    ServiceServer<Ros1Rosdemo_v4SetUserRequest, Ros1Rosdemo_v4SetUserResponse>;

/// Typed rosdemo_v4/SpeedFactor call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4SpeedFactorClient =
    ServiceClient<Ros1Rosdemo_v4SpeedFactorRequest, Ros1Rosdemo_v4SpeedFactorResponse>;

/// Typed rosdemo_v4/SpeedFactor advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4SpeedFactorServer =
    ServiceServer<Ros1Rosdemo_v4SpeedFactorRequest, Ros1Rosdemo_v4SpeedFactorResponse>;

/// Typed rosdemo_v4/StartDrag call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4StartDragClient =
    ServiceClient<Ros1Rosdemo_v4StartDragRequest, Ros1Rosdemo_v4StartDragResponse>;

/// Typed rosdemo_v4/StartDrag advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4StartDragServer =
    ServiceServer<Ros1Rosdemo_v4StartDragRequest, Ros1Rosdemo_v4StartDragResponse>;

/// Typed rosdemo_v4/StartPath call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4StartPathClient =
    ServiceClient<Ros1Rosdemo_v4StartPathRequest, Ros1Rosdemo_v4StartPathResponse>;

/// Typed rosdemo_v4/StartPath advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4StartPathServer =
    ServiceServer<Ros1Rosdemo_v4StartPathRequest, Ros1Rosdemo_v4StartPathResponse>;

/// Typed rosdemo_v4/Stop call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4StopClient =
    ServiceClient<Ros1Rosdemo_v4StopRequest, Ros1Rosdemo_v4StopResponse>;

/// Typed rosdemo_v4/Stop advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4StopServer =
    ServiceServer<Ros1Rosdemo_v4StopRequest, Ros1Rosdemo_v4StopResponse>;

/// Typed rosdemo_v4/StopDrag call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4StopDragClient =
    ServiceClient<Ros1Rosdemo_v4StopDragRequest, Ros1Rosdemo_v4StopDragResponse>;

/// Typed rosdemo_v4/StopDrag advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4StopDragServer =
    ServiceServer<Ros1Rosdemo_v4StopDragRequest, Ros1Rosdemo_v4StopDragResponse>;

/// Typed rosdemo_v4/StopMoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4StopMoveJogClient =
    ServiceClient<Ros1Rosdemo_v4StopMoveJogRequest, Ros1Rosdemo_v4StopMoveJogResponse>;

/// Typed rosdemo_v4/StopMoveJog advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4StopMoveJogServer =
    ServiceServer<Ros1Rosdemo_v4StopMoveJogRequest, Ros1Rosdemo_v4StopMoveJogResponse>;

/// Typed rosdemo_v4/TcpDashboard call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4TcpDashboardClient =
    ServiceClient<Ros1Rosdemo_v4TcpDashboardRequest, Ros1Rosdemo_v4TcpDashboardResponse>;

/// Typed rosdemo_v4/TcpDashboard advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4TcpDashboardServer =
    ServiceServer<Ros1Rosdemo_v4TcpDashboardRequest, Ros1Rosdemo_v4TcpDashboardResponse>;

/// Typed rosdemo_v4/Tool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ToolClient =
    ServiceClient<Ros1Rosdemo_v4ToolRequest, Ros1Rosdemo_v4ToolResponse>;

/// Typed rosdemo_v4/Tool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ToolServer =
    ServiceServer<Ros1Rosdemo_v4ToolRequest, Ros1Rosdemo_v4ToolResponse>;

/// Typed rosdemo_v4/ToolAI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ToolAIClient =
    ServiceClient<Ros1Rosdemo_v4ToolAIRequest, Ros1Rosdemo_v4ToolAIResponse>;

/// Typed rosdemo_v4/ToolAI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ToolAIServer =
    ServiceServer<Ros1Rosdemo_v4ToolAIRequest, Ros1Rosdemo_v4ToolAIResponse>;

/// Typed rosdemo_v4/ToolDI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ToolDIClient =
    ServiceClient<Ros1Rosdemo_v4ToolDIRequest, Ros1Rosdemo_v4ToolDIResponse>;

/// Typed rosdemo_v4/ToolDI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ToolDIServer =
    ServiceServer<Ros1Rosdemo_v4ToolDIRequest, Ros1Rosdemo_v4ToolDIResponse>;

/// Typed rosdemo_v4/ToolDO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ToolDOClient =
    ServiceClient<Ros1Rosdemo_v4ToolDORequest, Ros1Rosdemo_v4ToolDOResponse>;

/// Typed rosdemo_v4/ToolDO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ToolDOServer =
    ServiceServer<Ros1Rosdemo_v4ToolDORequest, Ros1Rosdemo_v4ToolDOResponse>;

/// Typed rosdemo_v4/ToolDOInstant call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4ToolDOInstantClient =
    ServiceClient<Ros1Rosdemo_v4ToolDOInstantRequest, Ros1Rosdemo_v4ToolDOInstantResponse>;

/// Typed rosdemo_v4/ToolDOInstant advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4ToolDOInstantServer =
    ServiceServer<Ros1Rosdemo_v4ToolDOInstantRequest, Ros1Rosdemo_v4ToolDOInstantResponse>;

/// Typed rosdemo_v4/User call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4UserClient =
    ServiceClient<Ros1Rosdemo_v4UserRequest, Ros1Rosdemo_v4UserResponse>;

/// Typed rosdemo_v4/User advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4UserServer =
    ServiceServer<Ros1Rosdemo_v4UserRequest, Ros1Rosdemo_v4UserResponse>;

/// Typed rosdemo_v4/VelJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4VelJClient =
    ServiceClient<Ros1Rosdemo_v4VelJRequest, Ros1Rosdemo_v4VelJResponse>;

/// Typed rosdemo_v4/VelJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4VelJServer =
    ServiceServer<Ros1Rosdemo_v4VelJRequest, Ros1Rosdemo_v4VelJResponse>;

/// Typed rosdemo_v4/VelL call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v4VelLClient =
    ServiceClient<Ros1Rosdemo_v4VelLRequest, Ros1Rosdemo_v4VelLResponse>;

/// Typed rosdemo_v4/VelL advertiser/responder with independent grants.
pub type Ros1Rosdemo_v4VelLServer =
    ServiceServer<Ros1Rosdemo_v4VelLRequest, Ros1Rosdemo_v4VelLResponse>;
