//! @file bounded_interfaces.rs
//! @brief Preserve the complete original dobot/ros1_demo_v3 canonical value domain.
//! @details The selected domain contains 190 complete record/components and 344 original fields. Declared
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

/// Complete canonical component bound for rosdemo_v3/AIRequest.
impl Component for Ros1Rosdemo_v3AIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AIResponse.
impl Component for Ros1Rosdemo_v3AIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AORequest.
impl Component for Ros1Rosdemo_v3AORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AOResponse.
impl Component for Ros1Rosdemo_v3AOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AOExecuteRequest.
impl Component for Ros1Rosdemo_v3AOExecuteRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AOExecuteResponse.
impl Component for Ros1Rosdemo_v3AOExecuteResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AccJRequest.
impl Component for Ros1Rosdemo_v3AccJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AccJResponse.
impl Component for Ros1Rosdemo_v3AccJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AccLRequest.
impl Component for Ros1Rosdemo_v3AccLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/AccLResponse.
impl Component for Ros1Rosdemo_v3AccLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ArcRequest.
impl Component for Ros1Rosdemo_v3ArcRequest {
    const MAX_WIRE: usize = 4260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ArcResponse.
impl Component for Ros1Rosdemo_v3ArcResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ArchRequest.
impl Component for Ros1Rosdemo_v3ArchRequest {
    const MAX_WIRE: usize = 4168;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ArchResponse.
impl Component for Ros1Rosdemo_v3ArchResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/BrakeControlRequest.
impl Component for Ros1Rosdemo_v3BrakeControlRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/BrakeControlResponse.
impl Component for Ros1Rosdemo_v3BrakeControlResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/CPRequest.
impl Component for Ros1Rosdemo_v3CPRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/CPResponse.
impl Component for Ros1Rosdemo_v3CPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/CircleRequest.
impl Component for Ros1Rosdemo_v3CircleRequest {
    const MAX_WIRE: usize = 4264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/CircleResponse.
impl Component for Ros1Rosdemo_v3CircleResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ClearErrorRequest.
impl Component for Ros1Rosdemo_v3ClearErrorRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ClearErrorResponse.
impl Component for Ros1Rosdemo_v3ClearErrorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ContinueScriptRequest.
impl Component for Ros1Rosdemo_v3ContinueScriptRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ContinueScriptResponse.
impl Component for Ros1Rosdemo_v3ContinueScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ContinuesRequest.
impl Component for Ros1Rosdemo_v3ContinuesRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ContinuesResponse.
impl Component for Ros1Rosdemo_v3ContinuesResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DIRequest.
impl Component for Ros1Rosdemo_v3DIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DIResponse.
impl Component for Ros1Rosdemo_v3DIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DIGroupRequest.
impl Component for Ros1Rosdemo_v3DIGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DIGroupResponse.
impl Component for Ros1Rosdemo_v3DIGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DORequest.
impl Component for Ros1Rosdemo_v3DORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DOResponse.
impl Component for Ros1Rosdemo_v3DOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DOExecuteRequest.
impl Component for Ros1Rosdemo_v3DOExecuteRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DOExecuteResponse.
impl Component for Ros1Rosdemo_v3DOExecuteResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DOGroupRequest.
impl Component for Ros1Rosdemo_v3DOGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DOGroupResponse.
impl Component for Ros1Rosdemo_v3DOGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DigitalOutputsRequest.
impl Component for Ros1Rosdemo_v3DigitalOutputsRequest {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DigitalOutputsResponse.
impl Component for Ros1Rosdemo_v3DigitalOutputsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DisableRobotRequest.
impl Component for Ros1Rosdemo_v3DisableRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/DisableRobotResponse.
impl Component for Ros1Rosdemo_v3DisableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/EmergencyStopRequest.
impl Component for Ros1Rosdemo_v3EmergencyStopRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/EmergencyStopResponse.
impl Component for Ros1Rosdemo_v3EmergencyStopResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/EnableRobotRequest.
impl Component for Ros1Rosdemo_v3EnableRobotRequest {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/EnableRobotResponse.
impl Component for Ros1Rosdemo_v3EnableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetAngleRequest.
impl Component for Ros1Rosdemo_v3GetAngleRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetAngleResponse.
impl Component for Ros1Rosdemo_v3GetAngleResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetCoilsRequest.
impl Component for Ros1Rosdemo_v3GetCoilsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetCoilsResponse.
impl Component for Ros1Rosdemo_v3GetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetErrorIDRequest.
impl Component for Ros1Rosdemo_v3GetErrorIDRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetErrorIDResponse.
impl Component for Ros1Rosdemo_v3GetErrorIDResponse {
    const MAX_WIRE: usize = 72;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetHoldRegsRequest.
impl Component for Ros1Rosdemo_v3GetHoldRegsRequest {
    const MAX_WIRE: usize = 4176;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetHoldRegsResponse.
impl Component for Ros1Rosdemo_v3GetHoldRegsResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetInBitsRequest.
impl Component for Ros1Rosdemo_v3GetInBitsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetInBitsResponse.
impl Component for Ros1Rosdemo_v3GetInBitsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetInRegsRequest.
impl Component for Ros1Rosdemo_v3GetInRegsRequest {
    const MAX_WIRE: usize = 4176;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetInRegsResponse.
impl Component for Ros1Rosdemo_v3GetInRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetPathStartPoseRequest.
impl Component for Ros1Rosdemo_v3GetPathStartPoseRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetPathStartPoseResponse.
impl Component for Ros1Rosdemo_v3GetPathStartPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetPoseRequest.
impl Component for Ros1Rosdemo_v3GetPoseRequest {
    const MAX_WIRE: usize = 136;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetPoseResponse.
impl Component for Ros1Rosdemo_v3GetPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetSixForceDataRequest.
impl Component for Ros1Rosdemo_v3GetSixForceDataRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetSixForceDataResponse.
impl Component for Ros1Rosdemo_v3GetSixForceDataResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetTerminal485Request.
impl Component for Ros1Rosdemo_v3GetTerminal485Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetTerminal485Response.
impl Component for Ros1Rosdemo_v3GetTerminal485Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetTraceStartPoseRequest.
impl Component for Ros1Rosdemo_v3GetTraceStartPoseRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/GetTraceStartPoseResponse.
impl Component for Ros1Rosdemo_v3GetTraceStartPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/HandleTrajPointsRequest.
impl Component for Ros1Rosdemo_v3HandleTrajPointsRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/HandleTrajPointsResponse.
impl Component for Ros1Rosdemo_v3HandleTrajPointsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/InverseSolutionRequest.
impl Component for Ros1Rosdemo_v3InverseSolutionRequest {
    const MAX_WIRE: usize = 320;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/InverseSolutionResponse.
impl Component for Ros1Rosdemo_v3InverseSolutionResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/JointMovJRequest.
impl Component for Ros1Rosdemo_v3JointMovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/JointMovJResponse.
impl Component for Ros1Rosdemo_v3JointMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/JumpRequest.
impl Component for Ros1Rosdemo_v3JumpRequest {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/JumpResponse.
impl Component for Ros1Rosdemo_v3JumpResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/LimZRequest.
impl Component for Ros1Rosdemo_v3LimZRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/LimZResponse.
impl Component for Ros1Rosdemo_v3LimZResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/LoadSwitchRequest.
impl Component for Ros1Rosdemo_v3LoadSwitchRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/LoadSwitchResponse.
impl Component for Ros1Rosdemo_v3LoadSwitchResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ModbusCloseRequest.
impl Component for Ros1Rosdemo_v3ModbusCloseRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ModbusCloseResponse.
impl Component for Ros1Rosdemo_v3ModbusCloseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ModbusCreateRequest.
impl Component for Ros1Rosdemo_v3ModbusCreateRequest {
    const MAX_WIRE: usize = 336;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ModbusCreateResponse.
impl Component for Ros1Rosdemo_v3ModbusCreateResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovJRequest.
impl Component for Ros1Rosdemo_v3MovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovJResponse.
impl Component for Ros1Rosdemo_v3MovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovJExtRequest.
impl Component for Ros1Rosdemo_v3MovJExtRequest {
    const MAX_WIRE: usize = 4172;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovJExtResponse.
impl Component for Ros1Rosdemo_v3MovJExtResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovJIORequest.
impl Component for Ros1Rosdemo_v3MovJIORequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovJIOResponse.
impl Component for Ros1Rosdemo_v3MovJIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovLRequest.
impl Component for Ros1Rosdemo_v3MovLRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovLResponse.
impl Component for Ros1Rosdemo_v3MovLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovLIORequest.
impl Component for Ros1Rosdemo_v3MovLIORequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MovLIOResponse.
impl Component for Ros1Rosdemo_v3MovLIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MoveJogRequest.
impl Component for Ros1Rosdemo_v3MoveJogRequest {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/MoveJogResponse.
impl Component for Ros1Rosdemo_v3MoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PauseScriptRequest.
impl Component for Ros1Rosdemo_v3PauseScriptRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PauseScriptResponse.
impl Component for Ros1Rosdemo_v3PauseScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PayLoadRequest.
impl Component for Ros1Rosdemo_v3PayLoadRequest {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PayLoadResponse.
impl Component for Ros1Rosdemo_v3PayLoadResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PositiveSolutionRequest.
impl Component for Ros1Rosdemo_v3PositiveSolutionRequest {
    const MAX_WIRE: usize = 56;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PositiveSolutionResponse.
impl Component for Ros1Rosdemo_v3PositiveSolutionResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PowerOnRequest.
impl Component for Ros1Rosdemo_v3PowerOnRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/PowerOnResponse.
impl Component for Ros1Rosdemo_v3PowerOnResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelJointMovJRequest.
impl Component for Ros1Rosdemo_v3RelJointMovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelJointMovJResponse.
impl Component for Ros1Rosdemo_v3RelJointMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovJRequest.
impl Component for Ros1Rosdemo_v3RelMovJRequest {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovJResponse.
impl Component for Ros1Rosdemo_v3RelMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovJToolRequest.
impl Component for Ros1Rosdemo_v3RelMovJToolRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovJToolResponse.
impl Component for Ros1Rosdemo_v3RelMovJToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovJUserRequest.
impl Component for Ros1Rosdemo_v3RelMovJUserRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovJUserResponse.
impl Component for Ros1Rosdemo_v3RelMovJUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovLRequest.
impl Component for Ros1Rosdemo_v3RelMovLRequest {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovLResponse.
impl Component for Ros1Rosdemo_v3RelMovLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovLToolRequest.
impl Component for Ros1Rosdemo_v3RelMovLToolRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovLToolResponse.
impl Component for Ros1Rosdemo_v3RelMovLToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovLUserRequest.
impl Component for Ros1Rosdemo_v3RelMovLUserRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RelMovLUserResponse.
impl Component for Ros1Rosdemo_v3RelMovLUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ResetRobotRequest.
impl Component for Ros1Rosdemo_v3ResetRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ResetRobotResponse.
impl Component for Ros1Rosdemo_v3ResetRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RobotModeRequest.
impl Component for Ros1Rosdemo_v3RobotModeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RobotModeResponse.
impl Component for Ros1Rosdemo_v3RobotModeResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RunScriptRequest.
impl Component for Ros1Rosdemo_v3RunScriptRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/RunScriptResponse.
impl Component for Ros1Rosdemo_v3RunScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ServoJRequest.
impl Component for Ros1Rosdemo_v3ServoJRequest {
    const MAX_WIRE: usize = 444;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ServoJResponse.
impl Component for Ros1Rosdemo_v3ServoJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ServoPRequest.
impl Component for Ros1Rosdemo_v3ServoPRequest {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ServoPResponse.
impl Component for Ros1Rosdemo_v3ServoPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetArmOrientationRequest.
impl Component for Ros1Rosdemo_v3SetArmOrientationRequest {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetArmOrientationResponse.
impl Component for Ros1Rosdemo_v3SetArmOrientationResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetCoilsRequest.
impl Component for Ros1Rosdemo_v3SetCoilsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetCoilsResponse.
impl Component for Ros1Rosdemo_v3SetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetCollideDragRequest.
impl Component for Ros1Rosdemo_v3SetCollideDragRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetCollideDragResponse.
impl Component for Ros1Rosdemo_v3SetCollideDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetCollisionLevelRequest.
impl Component for Ros1Rosdemo_v3SetCollisionLevelRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetCollisionLevelResponse.
impl Component for Ros1Rosdemo_v3SetCollisionLevelResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetHoldRegsRequest.
impl Component for Ros1Rosdemo_v3SetHoldRegsRequest {
    const MAX_WIRE: usize = 4436;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetHoldRegsResponse.
impl Component for Ros1Rosdemo_v3SetHoldRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetObstacleAvoidRequest.
impl Component for Ros1Rosdemo_v3SetObstacleAvoidRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetObstacleAvoidResponse.
impl Component for Ros1Rosdemo_v3SetObstacleAvoidResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetPayloadRequest.
impl Component for Ros1Rosdemo_v3SetPayloadRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetPayloadResponse.
impl Component for Ros1Rosdemo_v3SetPayloadResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetSafeSkinRequest.
impl Component for Ros1Rosdemo_v3SetSafeSkinRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetSafeSkinResponse.
impl Component for Ros1Rosdemo_v3SetSafeSkinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetTerminal485Request.
impl Component for Ros1Rosdemo_v3SetTerminal485Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetTerminal485Response.
impl Component for Ros1Rosdemo_v3SetTerminal485Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetTerminalKeysRequest.
impl Component for Ros1Rosdemo_v3SetTerminalKeysRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SetTerminalKeysResponse.
impl Component for Ros1Rosdemo_v3SetTerminalKeysResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SpeedFactorRequest.
impl Component for Ros1Rosdemo_v3SpeedFactorRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SpeedFactorResponse.
impl Component for Ros1Rosdemo_v3SpeedFactorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SpeedJRequest.
impl Component for Ros1Rosdemo_v3SpeedJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SpeedJResponse.
impl Component for Ros1Rosdemo_v3SpeedJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SpeedLRequest.
impl Component for Ros1Rosdemo_v3SpeedLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SpeedLResponse.
impl Component for Ros1Rosdemo_v3SpeedLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartDragRequest.
impl Component for Ros1Rosdemo_v3StartDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartDragResponse.
impl Component for Ros1Rosdemo_v3StartDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartFCTraceRequest.
impl Component for Ros1Rosdemo_v3StartFCTraceRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartFCTraceResponse.
impl Component for Ros1Rosdemo_v3StartFCTraceResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartPathRequest.
impl Component for Ros1Rosdemo_v3StartPathRequest {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartPathResponse.
impl Component for Ros1Rosdemo_v3StartPathResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartTraceRequest.
impl Component for Ros1Rosdemo_v3StartTraceRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StartTraceResponse.
impl Component for Ros1Rosdemo_v3StartTraceResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StopDragRequest.
impl Component for Ros1Rosdemo_v3StopDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StopDragResponse.
impl Component for Ros1Rosdemo_v3StopDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StopScriptRequest.
impl Component for Ros1Rosdemo_v3StopScriptRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StopScriptResponse.
impl Component for Ros1Rosdemo_v3StopScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StopmoveJogRequest.
impl Component for Ros1Rosdemo_v3StopmoveJogRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/StopmoveJogResponse.
impl Component for Ros1Rosdemo_v3StopmoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SyncRequest.
impl Component for Ros1Rosdemo_v3SyncRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SyncResponse.
impl Component for Ros1Rosdemo_v3SyncResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SyncAllRequest.
impl Component for Ros1Rosdemo_v3SyncAllRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/SyncAllResponse.
impl Component for Ros1Rosdemo_v3SyncAllResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/TCPSpeedRequest.
impl Component for Ros1Rosdemo_v3TCPSpeedRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/TCPSpeedResponse.
impl Component for Ros1Rosdemo_v3TCPSpeedResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/TCPSpeedEndRequest.
impl Component for Ros1Rosdemo_v3TCPSpeedEndRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/TCPSpeedEndResponse.
impl Component for Ros1Rosdemo_v3TCPSpeedEndResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolRequest.
impl Component for Ros1Rosdemo_v3ToolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolResponse.
impl Component for Ros1Rosdemo_v3ToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolAIRequest.
impl Component for Ros1Rosdemo_v3ToolAIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolAIResponse.
impl Component for Ros1Rosdemo_v3ToolAIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolDIRequest.
impl Component for Ros1Rosdemo_v3ToolDIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolDIResponse.
impl Component for Ros1Rosdemo_v3ToolDIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolDORequest.
impl Component for Ros1Rosdemo_v3ToolDORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolDOResponse.
impl Component for Ros1Rosdemo_v3ToolDOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolDOExecuteRequest.
impl Component for Ros1Rosdemo_v3ToolDOExecuteRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/ToolDOExecuteResponse.
impl Component for Ros1Rosdemo_v3ToolDOExecuteResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/UserRequest.
impl Component for Ros1Rosdemo_v3UserRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/UserResponse.
impl Component for Ros1Rosdemo_v3UserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/WaitRequest.
impl Component for Ros1Rosdemo_v3WaitRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/WaitResponse.
impl Component for Ros1Rosdemo_v3WaitResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/pauseRequest.
impl Component for Ros1Rosdemo_v3PauseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for rosdemo_v3/pauseResponse.
impl Component for Ros1Rosdemo_v3PauseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Typed rosdemo_v3/AI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3AIClient = ServiceClient<Ros1Rosdemo_v3AIRequest, Ros1Rosdemo_v3AIResponse>;

/// Typed rosdemo_v3/AI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3AIServer = ServiceServer<Ros1Rosdemo_v3AIRequest, Ros1Rosdemo_v3AIResponse>;

/// Typed rosdemo_v3/AO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3AOClient = ServiceClient<Ros1Rosdemo_v3AORequest, Ros1Rosdemo_v3AOResponse>;

/// Typed rosdemo_v3/AO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3AOServer = ServiceServer<Ros1Rosdemo_v3AORequest, Ros1Rosdemo_v3AOResponse>;

/// Typed rosdemo_v3/AOExecute call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3AOExecuteClient =
    ServiceClient<Ros1Rosdemo_v3AOExecuteRequest, Ros1Rosdemo_v3AOExecuteResponse>;

/// Typed rosdemo_v3/AOExecute advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3AOExecuteServer =
    ServiceServer<Ros1Rosdemo_v3AOExecuteRequest, Ros1Rosdemo_v3AOExecuteResponse>;

/// Typed rosdemo_v3/AccJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3AccJClient =
    ServiceClient<Ros1Rosdemo_v3AccJRequest, Ros1Rosdemo_v3AccJResponse>;

/// Typed rosdemo_v3/AccJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3AccJServer =
    ServiceServer<Ros1Rosdemo_v3AccJRequest, Ros1Rosdemo_v3AccJResponse>;

/// Typed rosdemo_v3/AccL call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3AccLClient =
    ServiceClient<Ros1Rosdemo_v3AccLRequest, Ros1Rosdemo_v3AccLResponse>;

/// Typed rosdemo_v3/AccL advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3AccLServer =
    ServiceServer<Ros1Rosdemo_v3AccLRequest, Ros1Rosdemo_v3AccLResponse>;

/// Typed rosdemo_v3/Arc call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ArcClient =
    ServiceClient<Ros1Rosdemo_v3ArcRequest, Ros1Rosdemo_v3ArcResponse>;

/// Typed rosdemo_v3/Arc advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ArcServer =
    ServiceServer<Ros1Rosdemo_v3ArcRequest, Ros1Rosdemo_v3ArcResponse>;

/// Typed rosdemo_v3/Arch call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ArchClient =
    ServiceClient<Ros1Rosdemo_v3ArchRequest, Ros1Rosdemo_v3ArchResponse>;

/// Typed rosdemo_v3/Arch advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ArchServer =
    ServiceServer<Ros1Rosdemo_v3ArchRequest, Ros1Rosdemo_v3ArchResponse>;

/// Typed rosdemo_v3/BrakeControl call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3BrakeControlClient =
    ServiceClient<Ros1Rosdemo_v3BrakeControlRequest, Ros1Rosdemo_v3BrakeControlResponse>;

/// Typed rosdemo_v3/BrakeControl advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3BrakeControlServer =
    ServiceServer<Ros1Rosdemo_v3BrakeControlRequest, Ros1Rosdemo_v3BrakeControlResponse>;

/// Typed rosdemo_v3/CP call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3CPClient = ServiceClient<Ros1Rosdemo_v3CPRequest, Ros1Rosdemo_v3CPResponse>;

/// Typed rosdemo_v3/CP advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3CPServer = ServiceServer<Ros1Rosdemo_v3CPRequest, Ros1Rosdemo_v3CPResponse>;

/// Typed rosdemo_v3/Circle call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3CircleClient =
    ServiceClient<Ros1Rosdemo_v3CircleRequest, Ros1Rosdemo_v3CircleResponse>;

/// Typed rosdemo_v3/Circle advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3CircleServer =
    ServiceServer<Ros1Rosdemo_v3CircleRequest, Ros1Rosdemo_v3CircleResponse>;

/// Typed rosdemo_v3/ClearError call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ClearErrorClient =
    ServiceClient<Ros1Rosdemo_v3ClearErrorRequest, Ros1Rosdemo_v3ClearErrorResponse>;

/// Typed rosdemo_v3/ClearError advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ClearErrorServer =
    ServiceServer<Ros1Rosdemo_v3ClearErrorRequest, Ros1Rosdemo_v3ClearErrorResponse>;

/// Typed rosdemo_v3/ContinueScript call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ContinueScriptClient =
    ServiceClient<Ros1Rosdemo_v3ContinueScriptRequest, Ros1Rosdemo_v3ContinueScriptResponse>;

/// Typed rosdemo_v3/ContinueScript advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ContinueScriptServer =
    ServiceServer<Ros1Rosdemo_v3ContinueScriptRequest, Ros1Rosdemo_v3ContinueScriptResponse>;

/// Typed rosdemo_v3/Continues call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ContinuesClient =
    ServiceClient<Ros1Rosdemo_v3ContinuesRequest, Ros1Rosdemo_v3ContinuesResponse>;

/// Typed rosdemo_v3/Continues advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ContinuesServer =
    ServiceServer<Ros1Rosdemo_v3ContinuesRequest, Ros1Rosdemo_v3ContinuesResponse>;

/// Typed rosdemo_v3/DI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3DIClient = ServiceClient<Ros1Rosdemo_v3DIRequest, Ros1Rosdemo_v3DIResponse>;

/// Typed rosdemo_v3/DI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3DIServer = ServiceServer<Ros1Rosdemo_v3DIRequest, Ros1Rosdemo_v3DIResponse>;

/// Typed rosdemo_v3/DIGroup call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3DIGroupClient =
    ServiceClient<Ros1Rosdemo_v3DIGroupRequest, Ros1Rosdemo_v3DIGroupResponse>;

/// Typed rosdemo_v3/DIGroup advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3DIGroupServer =
    ServiceServer<Ros1Rosdemo_v3DIGroupRequest, Ros1Rosdemo_v3DIGroupResponse>;

/// Typed rosdemo_v3/DO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3DOClient = ServiceClient<Ros1Rosdemo_v3DORequest, Ros1Rosdemo_v3DOResponse>;

/// Typed rosdemo_v3/DO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3DOServer = ServiceServer<Ros1Rosdemo_v3DORequest, Ros1Rosdemo_v3DOResponse>;

/// Typed rosdemo_v3/DOExecute call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3DOExecuteClient =
    ServiceClient<Ros1Rosdemo_v3DOExecuteRequest, Ros1Rosdemo_v3DOExecuteResponse>;

/// Typed rosdemo_v3/DOExecute advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3DOExecuteServer =
    ServiceServer<Ros1Rosdemo_v3DOExecuteRequest, Ros1Rosdemo_v3DOExecuteResponse>;

/// Typed rosdemo_v3/DOGroup call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3DOGroupClient =
    ServiceClient<Ros1Rosdemo_v3DOGroupRequest, Ros1Rosdemo_v3DOGroupResponse>;

/// Typed rosdemo_v3/DOGroup advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3DOGroupServer =
    ServiceServer<Ros1Rosdemo_v3DOGroupRequest, Ros1Rosdemo_v3DOGroupResponse>;

/// Typed rosdemo_v3/DigitalOutputs call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3DigitalOutputsClient =
    ServiceClient<Ros1Rosdemo_v3DigitalOutputsRequest, Ros1Rosdemo_v3DigitalOutputsResponse>;

/// Typed rosdemo_v3/DigitalOutputs advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3DigitalOutputsServer =
    ServiceServer<Ros1Rosdemo_v3DigitalOutputsRequest, Ros1Rosdemo_v3DigitalOutputsResponse>;

/// Typed rosdemo_v3/DisableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3DisableRobotClient =
    ServiceClient<Ros1Rosdemo_v3DisableRobotRequest, Ros1Rosdemo_v3DisableRobotResponse>;

/// Typed rosdemo_v3/DisableRobot advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3DisableRobotServer =
    ServiceServer<Ros1Rosdemo_v3DisableRobotRequest, Ros1Rosdemo_v3DisableRobotResponse>;

/// Typed rosdemo_v3/EmergencyStop call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3EmergencyStopClient =
    ServiceClient<Ros1Rosdemo_v3EmergencyStopRequest, Ros1Rosdemo_v3EmergencyStopResponse>;

/// Typed rosdemo_v3/EmergencyStop advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3EmergencyStopServer =
    ServiceServer<Ros1Rosdemo_v3EmergencyStopRequest, Ros1Rosdemo_v3EmergencyStopResponse>;

/// Typed rosdemo_v3/EnableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3EnableRobotClient =
    ServiceClient<Ros1Rosdemo_v3EnableRobotRequest, Ros1Rosdemo_v3EnableRobotResponse>;

/// Typed rosdemo_v3/EnableRobot advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3EnableRobotServer =
    ServiceServer<Ros1Rosdemo_v3EnableRobotRequest, Ros1Rosdemo_v3EnableRobotResponse>;

/// Typed rosdemo_v3/GetAngle call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetAngleClient =
    ServiceClient<Ros1Rosdemo_v3GetAngleRequest, Ros1Rosdemo_v3GetAngleResponse>;

/// Typed rosdemo_v3/GetAngle advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetAngleServer =
    ServiceServer<Ros1Rosdemo_v3GetAngleRequest, Ros1Rosdemo_v3GetAngleResponse>;

/// Typed rosdemo_v3/GetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetCoilsClient =
    ServiceClient<Ros1Rosdemo_v3GetCoilsRequest, Ros1Rosdemo_v3GetCoilsResponse>;

/// Typed rosdemo_v3/GetCoils advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetCoilsServer =
    ServiceServer<Ros1Rosdemo_v3GetCoilsRequest, Ros1Rosdemo_v3GetCoilsResponse>;

/// Typed rosdemo_v3/GetErrorID call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetErrorIDClient =
    ServiceClient<Ros1Rosdemo_v3GetErrorIDRequest, Ros1Rosdemo_v3GetErrorIDResponse>;

/// Typed rosdemo_v3/GetErrorID advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetErrorIDServer =
    ServiceServer<Ros1Rosdemo_v3GetErrorIDRequest, Ros1Rosdemo_v3GetErrorIDResponse>;

/// Typed rosdemo_v3/GetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetHoldRegsClient =
    ServiceClient<Ros1Rosdemo_v3GetHoldRegsRequest, Ros1Rosdemo_v3GetHoldRegsResponse>;

/// Typed rosdemo_v3/GetHoldRegs advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetHoldRegsServer =
    ServiceServer<Ros1Rosdemo_v3GetHoldRegsRequest, Ros1Rosdemo_v3GetHoldRegsResponse>;

/// Typed rosdemo_v3/GetInBits call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetInBitsClient =
    ServiceClient<Ros1Rosdemo_v3GetInBitsRequest, Ros1Rosdemo_v3GetInBitsResponse>;

/// Typed rosdemo_v3/GetInBits advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetInBitsServer =
    ServiceServer<Ros1Rosdemo_v3GetInBitsRequest, Ros1Rosdemo_v3GetInBitsResponse>;

/// Typed rosdemo_v3/GetInRegs call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetInRegsClient =
    ServiceClient<Ros1Rosdemo_v3GetInRegsRequest, Ros1Rosdemo_v3GetInRegsResponse>;

/// Typed rosdemo_v3/GetInRegs advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetInRegsServer =
    ServiceServer<Ros1Rosdemo_v3GetInRegsRequest, Ros1Rosdemo_v3GetInRegsResponse>;

/// Typed rosdemo_v3/GetPathStartPose call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetPathStartPoseClient =
    ServiceClient<Ros1Rosdemo_v3GetPathStartPoseRequest, Ros1Rosdemo_v3GetPathStartPoseResponse>;

/// Typed rosdemo_v3/GetPathStartPose advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetPathStartPoseServer =
    ServiceServer<Ros1Rosdemo_v3GetPathStartPoseRequest, Ros1Rosdemo_v3GetPathStartPoseResponse>;

/// Typed rosdemo_v3/GetPose call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetPoseClient =
    ServiceClient<Ros1Rosdemo_v3GetPoseRequest, Ros1Rosdemo_v3GetPoseResponse>;

/// Typed rosdemo_v3/GetPose advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetPoseServer =
    ServiceServer<Ros1Rosdemo_v3GetPoseRequest, Ros1Rosdemo_v3GetPoseResponse>;

/// Typed rosdemo_v3/GetSixForceData call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetSixForceDataClient =
    ServiceClient<Ros1Rosdemo_v3GetSixForceDataRequest, Ros1Rosdemo_v3GetSixForceDataResponse>;

/// Typed rosdemo_v3/GetSixForceData advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetSixForceDataServer =
    ServiceServer<Ros1Rosdemo_v3GetSixForceDataRequest, Ros1Rosdemo_v3GetSixForceDataResponse>;

/// Typed rosdemo_v3/GetTerminal485 call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetTerminal485Client =
    ServiceClient<Ros1Rosdemo_v3GetTerminal485Request, Ros1Rosdemo_v3GetTerminal485Response>;

/// Typed rosdemo_v3/GetTerminal485 advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetTerminal485Server =
    ServiceServer<Ros1Rosdemo_v3GetTerminal485Request, Ros1Rosdemo_v3GetTerminal485Response>;

/// Typed rosdemo_v3/GetTraceStartPose call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3GetTraceStartPoseClient =
    ServiceClient<Ros1Rosdemo_v3GetTraceStartPoseRequest, Ros1Rosdemo_v3GetTraceStartPoseResponse>;

/// Typed rosdemo_v3/GetTraceStartPose advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3GetTraceStartPoseServer =
    ServiceServer<Ros1Rosdemo_v3GetTraceStartPoseRequest, Ros1Rosdemo_v3GetTraceStartPoseResponse>;

/// Typed rosdemo_v3/HandleTrajPoints call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3HandleTrajPointsClient =
    ServiceClient<Ros1Rosdemo_v3HandleTrajPointsRequest, Ros1Rosdemo_v3HandleTrajPointsResponse>;

/// Typed rosdemo_v3/HandleTrajPoints advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3HandleTrajPointsServer =
    ServiceServer<Ros1Rosdemo_v3HandleTrajPointsRequest, Ros1Rosdemo_v3HandleTrajPointsResponse>;

/// Typed rosdemo_v3/InverseSolution call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3InverseSolutionClient =
    ServiceClient<Ros1Rosdemo_v3InverseSolutionRequest, Ros1Rosdemo_v3InverseSolutionResponse>;

/// Typed rosdemo_v3/InverseSolution advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3InverseSolutionServer =
    ServiceServer<Ros1Rosdemo_v3InverseSolutionRequest, Ros1Rosdemo_v3InverseSolutionResponse>;

/// Typed rosdemo_v3/JointMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3JointMovJClient =
    ServiceClient<Ros1Rosdemo_v3JointMovJRequest, Ros1Rosdemo_v3JointMovJResponse>;

/// Typed rosdemo_v3/JointMovJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3JointMovJServer =
    ServiceServer<Ros1Rosdemo_v3JointMovJRequest, Ros1Rosdemo_v3JointMovJResponse>;

/// Typed rosdemo_v3/Jump call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3JumpClient =
    ServiceClient<Ros1Rosdemo_v3JumpRequest, Ros1Rosdemo_v3JumpResponse>;

/// Typed rosdemo_v3/Jump advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3JumpServer =
    ServiceServer<Ros1Rosdemo_v3JumpRequest, Ros1Rosdemo_v3JumpResponse>;

/// Typed rosdemo_v3/LimZ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3LimZClient =
    ServiceClient<Ros1Rosdemo_v3LimZRequest, Ros1Rosdemo_v3LimZResponse>;

/// Typed rosdemo_v3/LimZ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3LimZServer =
    ServiceServer<Ros1Rosdemo_v3LimZRequest, Ros1Rosdemo_v3LimZResponse>;

/// Typed rosdemo_v3/LoadSwitch call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3LoadSwitchClient =
    ServiceClient<Ros1Rosdemo_v3LoadSwitchRequest, Ros1Rosdemo_v3LoadSwitchResponse>;

/// Typed rosdemo_v3/LoadSwitch advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3LoadSwitchServer =
    ServiceServer<Ros1Rosdemo_v3LoadSwitchRequest, Ros1Rosdemo_v3LoadSwitchResponse>;

/// Typed rosdemo_v3/ModbusClose call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ModbusCloseClient =
    ServiceClient<Ros1Rosdemo_v3ModbusCloseRequest, Ros1Rosdemo_v3ModbusCloseResponse>;

/// Typed rosdemo_v3/ModbusClose advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ModbusCloseServer =
    ServiceServer<Ros1Rosdemo_v3ModbusCloseRequest, Ros1Rosdemo_v3ModbusCloseResponse>;

/// Typed rosdemo_v3/ModbusCreate call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ModbusCreateClient =
    ServiceClient<Ros1Rosdemo_v3ModbusCreateRequest, Ros1Rosdemo_v3ModbusCreateResponse>;

/// Typed rosdemo_v3/ModbusCreate advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ModbusCreateServer =
    ServiceServer<Ros1Rosdemo_v3ModbusCreateRequest, Ros1Rosdemo_v3ModbusCreateResponse>;

/// Typed rosdemo_v3/MovJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3MovJClient =
    ServiceClient<Ros1Rosdemo_v3MovJRequest, Ros1Rosdemo_v3MovJResponse>;

/// Typed rosdemo_v3/MovJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3MovJServer =
    ServiceServer<Ros1Rosdemo_v3MovJRequest, Ros1Rosdemo_v3MovJResponse>;

/// Typed rosdemo_v3/MovJExt call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3MovJExtClient =
    ServiceClient<Ros1Rosdemo_v3MovJExtRequest, Ros1Rosdemo_v3MovJExtResponse>;

/// Typed rosdemo_v3/MovJExt advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3MovJExtServer =
    ServiceServer<Ros1Rosdemo_v3MovJExtRequest, Ros1Rosdemo_v3MovJExtResponse>;

/// Typed rosdemo_v3/MovJIO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3MovJIOClient =
    ServiceClient<Ros1Rosdemo_v3MovJIORequest, Ros1Rosdemo_v3MovJIOResponse>;

/// Typed rosdemo_v3/MovJIO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3MovJIOServer =
    ServiceServer<Ros1Rosdemo_v3MovJIORequest, Ros1Rosdemo_v3MovJIOResponse>;

/// Typed rosdemo_v3/MovL call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3MovLClient =
    ServiceClient<Ros1Rosdemo_v3MovLRequest, Ros1Rosdemo_v3MovLResponse>;

/// Typed rosdemo_v3/MovL advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3MovLServer =
    ServiceServer<Ros1Rosdemo_v3MovLRequest, Ros1Rosdemo_v3MovLResponse>;

/// Typed rosdemo_v3/MovLIO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3MovLIOClient =
    ServiceClient<Ros1Rosdemo_v3MovLIORequest, Ros1Rosdemo_v3MovLIOResponse>;

/// Typed rosdemo_v3/MovLIO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3MovLIOServer =
    ServiceServer<Ros1Rosdemo_v3MovLIORequest, Ros1Rosdemo_v3MovLIOResponse>;

/// Typed rosdemo_v3/MoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3MoveJogClient =
    ServiceClient<Ros1Rosdemo_v3MoveJogRequest, Ros1Rosdemo_v3MoveJogResponse>;

/// Typed rosdemo_v3/MoveJog advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3MoveJogServer =
    ServiceServer<Ros1Rosdemo_v3MoveJogRequest, Ros1Rosdemo_v3MoveJogResponse>;

/// Typed rosdemo_v3/PauseScript call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3PauseScriptClient =
    ServiceClient<Ros1Rosdemo_v3PauseScriptRequest, Ros1Rosdemo_v3PauseScriptResponse>;

/// Typed rosdemo_v3/PauseScript advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3PauseScriptServer =
    ServiceServer<Ros1Rosdemo_v3PauseScriptRequest, Ros1Rosdemo_v3PauseScriptResponse>;

/// Typed rosdemo_v3/PayLoad call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3PayLoadClient =
    ServiceClient<Ros1Rosdemo_v3PayLoadRequest, Ros1Rosdemo_v3PayLoadResponse>;

/// Typed rosdemo_v3/PayLoad advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3PayLoadServer =
    ServiceServer<Ros1Rosdemo_v3PayLoadRequest, Ros1Rosdemo_v3PayLoadResponse>;

/// Typed rosdemo_v3/PositiveSolution call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3PositiveSolutionClient =
    ServiceClient<Ros1Rosdemo_v3PositiveSolutionRequest, Ros1Rosdemo_v3PositiveSolutionResponse>;

/// Typed rosdemo_v3/PositiveSolution advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3PositiveSolutionServer =
    ServiceServer<Ros1Rosdemo_v3PositiveSolutionRequest, Ros1Rosdemo_v3PositiveSolutionResponse>;

/// Typed rosdemo_v3/PowerOn call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3PowerOnClient =
    ServiceClient<Ros1Rosdemo_v3PowerOnRequest, Ros1Rosdemo_v3PowerOnResponse>;

/// Typed rosdemo_v3/PowerOn advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3PowerOnServer =
    ServiceServer<Ros1Rosdemo_v3PowerOnRequest, Ros1Rosdemo_v3PowerOnResponse>;

/// Typed rosdemo_v3/RelJointMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RelJointMovJClient =
    ServiceClient<Ros1Rosdemo_v3RelJointMovJRequest, Ros1Rosdemo_v3RelJointMovJResponse>;

/// Typed rosdemo_v3/RelJointMovJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RelJointMovJServer =
    ServiceServer<Ros1Rosdemo_v3RelJointMovJRequest, Ros1Rosdemo_v3RelJointMovJResponse>;

/// Typed rosdemo_v3/RelMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RelMovJClient =
    ServiceClient<Ros1Rosdemo_v3RelMovJRequest, Ros1Rosdemo_v3RelMovJResponse>;

/// Typed rosdemo_v3/RelMovJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RelMovJServer =
    ServiceServer<Ros1Rosdemo_v3RelMovJRequest, Ros1Rosdemo_v3RelMovJResponse>;

/// Typed rosdemo_v3/RelMovJTool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RelMovJToolClient =
    ServiceClient<Ros1Rosdemo_v3RelMovJToolRequest, Ros1Rosdemo_v3RelMovJToolResponse>;

/// Typed rosdemo_v3/RelMovJTool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RelMovJToolServer =
    ServiceServer<Ros1Rosdemo_v3RelMovJToolRequest, Ros1Rosdemo_v3RelMovJToolResponse>;

/// Typed rosdemo_v3/RelMovJUser call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RelMovJUserClient =
    ServiceClient<Ros1Rosdemo_v3RelMovJUserRequest, Ros1Rosdemo_v3RelMovJUserResponse>;

/// Typed rosdemo_v3/RelMovJUser advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RelMovJUserServer =
    ServiceServer<Ros1Rosdemo_v3RelMovJUserRequest, Ros1Rosdemo_v3RelMovJUserResponse>;

/// Typed rosdemo_v3/RelMovL call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RelMovLClient =
    ServiceClient<Ros1Rosdemo_v3RelMovLRequest, Ros1Rosdemo_v3RelMovLResponse>;

/// Typed rosdemo_v3/RelMovL advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RelMovLServer =
    ServiceServer<Ros1Rosdemo_v3RelMovLRequest, Ros1Rosdemo_v3RelMovLResponse>;

/// Typed rosdemo_v3/RelMovLTool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RelMovLToolClient =
    ServiceClient<Ros1Rosdemo_v3RelMovLToolRequest, Ros1Rosdemo_v3RelMovLToolResponse>;

/// Typed rosdemo_v3/RelMovLTool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RelMovLToolServer =
    ServiceServer<Ros1Rosdemo_v3RelMovLToolRequest, Ros1Rosdemo_v3RelMovLToolResponse>;

/// Typed rosdemo_v3/RelMovLUser call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RelMovLUserClient =
    ServiceClient<Ros1Rosdemo_v3RelMovLUserRequest, Ros1Rosdemo_v3RelMovLUserResponse>;

/// Typed rosdemo_v3/RelMovLUser advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RelMovLUserServer =
    ServiceServer<Ros1Rosdemo_v3RelMovLUserRequest, Ros1Rosdemo_v3RelMovLUserResponse>;

/// Typed rosdemo_v3/ResetRobot call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ResetRobotClient =
    ServiceClient<Ros1Rosdemo_v3ResetRobotRequest, Ros1Rosdemo_v3ResetRobotResponse>;

/// Typed rosdemo_v3/ResetRobot advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ResetRobotServer =
    ServiceServer<Ros1Rosdemo_v3ResetRobotRequest, Ros1Rosdemo_v3ResetRobotResponse>;

/// Typed rosdemo_v3/RobotMode call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RobotModeClient =
    ServiceClient<Ros1Rosdemo_v3RobotModeRequest, Ros1Rosdemo_v3RobotModeResponse>;

/// Typed rosdemo_v3/RobotMode advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RobotModeServer =
    ServiceServer<Ros1Rosdemo_v3RobotModeRequest, Ros1Rosdemo_v3RobotModeResponse>;

/// Typed rosdemo_v3/RunScript call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3RunScriptClient =
    ServiceClient<Ros1Rosdemo_v3RunScriptRequest, Ros1Rosdemo_v3RunScriptResponse>;

/// Typed rosdemo_v3/RunScript advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3RunScriptServer =
    ServiceServer<Ros1Rosdemo_v3RunScriptRequest, Ros1Rosdemo_v3RunScriptResponse>;

/// Typed rosdemo_v3/ServoJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ServoJClient =
    ServiceClient<Ros1Rosdemo_v3ServoJRequest, Ros1Rosdemo_v3ServoJResponse>;

/// Typed rosdemo_v3/ServoJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ServoJServer =
    ServiceServer<Ros1Rosdemo_v3ServoJRequest, Ros1Rosdemo_v3ServoJResponse>;

/// Typed rosdemo_v3/ServoP call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ServoPClient =
    ServiceClient<Ros1Rosdemo_v3ServoPRequest, Ros1Rosdemo_v3ServoPResponse>;

/// Typed rosdemo_v3/ServoP advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ServoPServer =
    ServiceServer<Ros1Rosdemo_v3ServoPRequest, Ros1Rosdemo_v3ServoPResponse>;

/// Typed rosdemo_v3/SetArmOrientation call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetArmOrientationClient =
    ServiceClient<Ros1Rosdemo_v3SetArmOrientationRequest, Ros1Rosdemo_v3SetArmOrientationResponse>;

/// Typed rosdemo_v3/SetArmOrientation advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetArmOrientationServer =
    ServiceServer<Ros1Rosdemo_v3SetArmOrientationRequest, Ros1Rosdemo_v3SetArmOrientationResponse>;

/// Typed rosdemo_v3/SetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetCoilsClient =
    ServiceClient<Ros1Rosdemo_v3SetCoilsRequest, Ros1Rosdemo_v3SetCoilsResponse>;

/// Typed rosdemo_v3/SetCoils advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetCoilsServer =
    ServiceServer<Ros1Rosdemo_v3SetCoilsRequest, Ros1Rosdemo_v3SetCoilsResponse>;

/// Typed rosdemo_v3/SetCollideDrag call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetCollideDragClient =
    ServiceClient<Ros1Rosdemo_v3SetCollideDragRequest, Ros1Rosdemo_v3SetCollideDragResponse>;

/// Typed rosdemo_v3/SetCollideDrag advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetCollideDragServer =
    ServiceServer<Ros1Rosdemo_v3SetCollideDragRequest, Ros1Rosdemo_v3SetCollideDragResponse>;

/// Typed rosdemo_v3/SetCollisionLevel call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetCollisionLevelClient =
    ServiceClient<Ros1Rosdemo_v3SetCollisionLevelRequest, Ros1Rosdemo_v3SetCollisionLevelResponse>;

/// Typed rosdemo_v3/SetCollisionLevel advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetCollisionLevelServer =
    ServiceServer<Ros1Rosdemo_v3SetCollisionLevelRequest, Ros1Rosdemo_v3SetCollisionLevelResponse>;

/// Typed rosdemo_v3/SetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetHoldRegsClient =
    ServiceClient<Ros1Rosdemo_v3SetHoldRegsRequest, Ros1Rosdemo_v3SetHoldRegsResponse>;

/// Typed rosdemo_v3/SetHoldRegs advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetHoldRegsServer =
    ServiceServer<Ros1Rosdemo_v3SetHoldRegsRequest, Ros1Rosdemo_v3SetHoldRegsResponse>;

/// Typed rosdemo_v3/SetObstacleAvoid call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetObstacleAvoidClient =
    ServiceClient<Ros1Rosdemo_v3SetObstacleAvoidRequest, Ros1Rosdemo_v3SetObstacleAvoidResponse>;

/// Typed rosdemo_v3/SetObstacleAvoid advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetObstacleAvoidServer =
    ServiceServer<Ros1Rosdemo_v3SetObstacleAvoidRequest, Ros1Rosdemo_v3SetObstacleAvoidResponse>;

/// Typed rosdemo_v3/SetPayload call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetPayloadClient =
    ServiceClient<Ros1Rosdemo_v3SetPayloadRequest, Ros1Rosdemo_v3SetPayloadResponse>;

/// Typed rosdemo_v3/SetPayload advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetPayloadServer =
    ServiceServer<Ros1Rosdemo_v3SetPayloadRequest, Ros1Rosdemo_v3SetPayloadResponse>;

/// Typed rosdemo_v3/SetSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetSafeSkinClient =
    ServiceClient<Ros1Rosdemo_v3SetSafeSkinRequest, Ros1Rosdemo_v3SetSafeSkinResponse>;

/// Typed rosdemo_v3/SetSafeSkin advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetSafeSkinServer =
    ServiceServer<Ros1Rosdemo_v3SetSafeSkinRequest, Ros1Rosdemo_v3SetSafeSkinResponse>;

/// Typed rosdemo_v3/SetTerminal485 call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetTerminal485Client =
    ServiceClient<Ros1Rosdemo_v3SetTerminal485Request, Ros1Rosdemo_v3SetTerminal485Response>;

/// Typed rosdemo_v3/SetTerminal485 advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetTerminal485Server =
    ServiceServer<Ros1Rosdemo_v3SetTerminal485Request, Ros1Rosdemo_v3SetTerminal485Response>;

/// Typed rosdemo_v3/SetTerminalKeys call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SetTerminalKeysClient =
    ServiceClient<Ros1Rosdemo_v3SetTerminalKeysRequest, Ros1Rosdemo_v3SetTerminalKeysResponse>;

/// Typed rosdemo_v3/SetTerminalKeys advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SetTerminalKeysServer =
    ServiceServer<Ros1Rosdemo_v3SetTerminalKeysRequest, Ros1Rosdemo_v3SetTerminalKeysResponse>;

/// Typed rosdemo_v3/SpeedFactor call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SpeedFactorClient =
    ServiceClient<Ros1Rosdemo_v3SpeedFactorRequest, Ros1Rosdemo_v3SpeedFactorResponse>;

/// Typed rosdemo_v3/SpeedFactor advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SpeedFactorServer =
    ServiceServer<Ros1Rosdemo_v3SpeedFactorRequest, Ros1Rosdemo_v3SpeedFactorResponse>;

/// Typed rosdemo_v3/SpeedJ call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SpeedJClient =
    ServiceClient<Ros1Rosdemo_v3SpeedJRequest, Ros1Rosdemo_v3SpeedJResponse>;

/// Typed rosdemo_v3/SpeedJ advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SpeedJServer =
    ServiceServer<Ros1Rosdemo_v3SpeedJRequest, Ros1Rosdemo_v3SpeedJResponse>;

/// Typed rosdemo_v3/SpeedL call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SpeedLClient =
    ServiceClient<Ros1Rosdemo_v3SpeedLRequest, Ros1Rosdemo_v3SpeedLResponse>;

/// Typed rosdemo_v3/SpeedL advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SpeedLServer =
    ServiceServer<Ros1Rosdemo_v3SpeedLRequest, Ros1Rosdemo_v3SpeedLResponse>;

/// Typed rosdemo_v3/StartDrag call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3StartDragClient =
    ServiceClient<Ros1Rosdemo_v3StartDragRequest, Ros1Rosdemo_v3StartDragResponse>;

/// Typed rosdemo_v3/StartDrag advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3StartDragServer =
    ServiceServer<Ros1Rosdemo_v3StartDragRequest, Ros1Rosdemo_v3StartDragResponse>;

/// Typed rosdemo_v3/StartFCTrace call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3StartFCTraceClient =
    ServiceClient<Ros1Rosdemo_v3StartFCTraceRequest, Ros1Rosdemo_v3StartFCTraceResponse>;

/// Typed rosdemo_v3/StartFCTrace advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3StartFCTraceServer =
    ServiceServer<Ros1Rosdemo_v3StartFCTraceRequest, Ros1Rosdemo_v3StartFCTraceResponse>;

/// Typed rosdemo_v3/StartPath call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3StartPathClient =
    ServiceClient<Ros1Rosdemo_v3StartPathRequest, Ros1Rosdemo_v3StartPathResponse>;

/// Typed rosdemo_v3/StartPath advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3StartPathServer =
    ServiceServer<Ros1Rosdemo_v3StartPathRequest, Ros1Rosdemo_v3StartPathResponse>;

/// Typed rosdemo_v3/StartTrace call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3StartTraceClient =
    ServiceClient<Ros1Rosdemo_v3StartTraceRequest, Ros1Rosdemo_v3StartTraceResponse>;

/// Typed rosdemo_v3/StartTrace advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3StartTraceServer =
    ServiceServer<Ros1Rosdemo_v3StartTraceRequest, Ros1Rosdemo_v3StartTraceResponse>;

/// Typed rosdemo_v3/StopDrag call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3StopDragClient =
    ServiceClient<Ros1Rosdemo_v3StopDragRequest, Ros1Rosdemo_v3StopDragResponse>;

/// Typed rosdemo_v3/StopDrag advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3StopDragServer =
    ServiceServer<Ros1Rosdemo_v3StopDragRequest, Ros1Rosdemo_v3StopDragResponse>;

/// Typed rosdemo_v3/StopScript call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3StopScriptClient =
    ServiceClient<Ros1Rosdemo_v3StopScriptRequest, Ros1Rosdemo_v3StopScriptResponse>;

/// Typed rosdemo_v3/StopScript advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3StopScriptServer =
    ServiceServer<Ros1Rosdemo_v3StopScriptRequest, Ros1Rosdemo_v3StopScriptResponse>;

/// Typed rosdemo_v3/StopmoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3StopmoveJogClient =
    ServiceClient<Ros1Rosdemo_v3StopmoveJogRequest, Ros1Rosdemo_v3StopmoveJogResponse>;

/// Typed rosdemo_v3/StopmoveJog advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3StopmoveJogServer =
    ServiceServer<Ros1Rosdemo_v3StopmoveJogRequest, Ros1Rosdemo_v3StopmoveJogResponse>;

/// Typed rosdemo_v3/Sync call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SyncClient =
    ServiceClient<Ros1Rosdemo_v3SyncRequest, Ros1Rosdemo_v3SyncResponse>;

/// Typed rosdemo_v3/Sync advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SyncServer =
    ServiceServer<Ros1Rosdemo_v3SyncRequest, Ros1Rosdemo_v3SyncResponse>;

/// Typed rosdemo_v3/SyncAll call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3SyncAllClient =
    ServiceClient<Ros1Rosdemo_v3SyncAllRequest, Ros1Rosdemo_v3SyncAllResponse>;

/// Typed rosdemo_v3/SyncAll advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3SyncAllServer =
    ServiceServer<Ros1Rosdemo_v3SyncAllRequest, Ros1Rosdemo_v3SyncAllResponse>;

/// Typed rosdemo_v3/TCPSpeed call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3TCPSpeedClient =
    ServiceClient<Ros1Rosdemo_v3TCPSpeedRequest, Ros1Rosdemo_v3TCPSpeedResponse>;

/// Typed rosdemo_v3/TCPSpeed advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3TCPSpeedServer =
    ServiceServer<Ros1Rosdemo_v3TCPSpeedRequest, Ros1Rosdemo_v3TCPSpeedResponse>;

/// Typed rosdemo_v3/TCPSpeedEnd call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3TCPSpeedEndClient =
    ServiceClient<Ros1Rosdemo_v3TCPSpeedEndRequest, Ros1Rosdemo_v3TCPSpeedEndResponse>;

/// Typed rosdemo_v3/TCPSpeedEnd advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3TCPSpeedEndServer =
    ServiceServer<Ros1Rosdemo_v3TCPSpeedEndRequest, Ros1Rosdemo_v3TCPSpeedEndResponse>;

/// Typed rosdemo_v3/Tool call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ToolClient =
    ServiceClient<Ros1Rosdemo_v3ToolRequest, Ros1Rosdemo_v3ToolResponse>;

/// Typed rosdemo_v3/Tool advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ToolServer =
    ServiceServer<Ros1Rosdemo_v3ToolRequest, Ros1Rosdemo_v3ToolResponse>;

/// Typed rosdemo_v3/ToolAI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ToolAIClient =
    ServiceClient<Ros1Rosdemo_v3ToolAIRequest, Ros1Rosdemo_v3ToolAIResponse>;

/// Typed rosdemo_v3/ToolAI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ToolAIServer =
    ServiceServer<Ros1Rosdemo_v3ToolAIRequest, Ros1Rosdemo_v3ToolAIResponse>;

/// Typed rosdemo_v3/ToolDI call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ToolDIClient =
    ServiceClient<Ros1Rosdemo_v3ToolDIRequest, Ros1Rosdemo_v3ToolDIResponse>;

/// Typed rosdemo_v3/ToolDI advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ToolDIServer =
    ServiceServer<Ros1Rosdemo_v3ToolDIRequest, Ros1Rosdemo_v3ToolDIResponse>;

/// Typed rosdemo_v3/ToolDO call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ToolDOClient =
    ServiceClient<Ros1Rosdemo_v3ToolDORequest, Ros1Rosdemo_v3ToolDOResponse>;

/// Typed rosdemo_v3/ToolDO advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ToolDOServer =
    ServiceServer<Ros1Rosdemo_v3ToolDORequest, Ros1Rosdemo_v3ToolDOResponse>;

/// Typed rosdemo_v3/ToolDOExecute call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3ToolDOExecuteClient =
    ServiceClient<Ros1Rosdemo_v3ToolDOExecuteRequest, Ros1Rosdemo_v3ToolDOExecuteResponse>;

/// Typed rosdemo_v3/ToolDOExecute advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3ToolDOExecuteServer =
    ServiceServer<Ros1Rosdemo_v3ToolDOExecuteRequest, Ros1Rosdemo_v3ToolDOExecuteResponse>;

/// Typed rosdemo_v3/User call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3UserClient =
    ServiceClient<Ros1Rosdemo_v3UserRequest, Ros1Rosdemo_v3UserResponse>;

/// Typed rosdemo_v3/User advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3UserServer =
    ServiceServer<Ros1Rosdemo_v3UserRequest, Ros1Rosdemo_v3UserResponse>;

/// Typed rosdemo_v3/Wait call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3WaitClient =
    ServiceClient<Ros1Rosdemo_v3WaitRequest, Ros1Rosdemo_v3WaitResponse>;

/// Typed rosdemo_v3/Wait advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3WaitServer =
    ServiceServer<Ros1Rosdemo_v3WaitRequest, Ros1Rosdemo_v3WaitResponse>;

/// Typed rosdemo_v3/pause call/real-submit owner; every alias is explicit.
pub type Ros1Rosdemo_v3PauseClient =
    ServiceClient<Ros1Rosdemo_v3PauseRequest, Ros1Rosdemo_v3PauseResponse>;

/// Typed rosdemo_v3/pause advertiser/responder with independent grants.
pub type Ros1Rosdemo_v3PauseServer =
    ServiceServer<Ros1Rosdemo_v3PauseRequest, Ros1Rosdemo_v3PauseResponse>;
