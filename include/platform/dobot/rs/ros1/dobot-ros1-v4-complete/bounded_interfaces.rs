//! @file bounded_interfaces.rs
//! @brief Preserve the complete original dobot/ros1_v4 canonical value domain.
//! @details The selected domain contains 190 complete record/components and 356 original fields. Declared
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

/// Complete canonical component bound for dobot_v4_bringup/AIRequest.
impl Component for Ros1Dobot_v4_bringupAIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AIResponse.
impl Component for Ros1Dobot_v4_bringupAIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AORequest.
impl Component for Ros1Dobot_v4_bringupAORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AOResponse.
impl Component for Ros1Dobot_v4_bringupAOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AOInstantRequest.
impl Component for Ros1Dobot_v4_bringupAOInstantRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AOInstantResponse.
impl Component for Ros1Dobot_v4_bringupAOInstantResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AccJRequest.
impl Component for Ros1Dobot_v4_bringupAccJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AccJResponse.
impl Component for Ros1Dobot_v4_bringupAccJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AccLRequest.
impl Component for Ros1Dobot_v4_bringupAccLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/AccLResponse.
impl Component for Ros1Dobot_v4_bringupAccLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ArcRequest.
impl Component for Ros1Dobot_v4_bringupArcRequest {
    const MAX_WIRE: usize = 4261;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ArcResponse.
impl Component for Ros1Dobot_v4_bringupArcResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/BrakeControlRequest.
impl Component for Ros1Dobot_v4_bringupBrakeControlRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/BrakeControlResponse.
impl Component for Ros1Dobot_v4_bringupBrakeControlResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CPRequest.
impl Component for Ros1Dobot_v4_bringupCPRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CPResponse.
impl Component for Ros1Dobot_v4_bringupCPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CalcToolRequest.
impl Component for Ros1Dobot_v4_bringupCalcToolRequest {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CalcToolResponse.
impl Component for Ros1Dobot_v4_bringupCalcToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CalcUserRequest.
impl Component for Ros1Dobot_v4_bringupCalcUserRequest {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CalcUserResponse.
impl Component for Ros1Dobot_v4_bringupCalcUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CircleRequest.
impl Component for Ros1Dobot_v4_bringupCircleRequest {
    const MAX_WIRE: usize = 4265;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/CircleResponse.
impl Component for Ros1Dobot_v4_bringupCircleResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ClearErrorRequest.
impl Component for Ros1Dobot_v4_bringupClearErrorRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ClearErrorResponse.
impl Component for Ros1Dobot_v4_bringupClearErrorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ContinueRequest.
impl Component for Ros1Dobot_v4_bringupContinueRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ContinueResponse.
impl Component for Ros1Dobot_v4_bringupContinueResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DIRequest.
impl Component for Ros1Dobot_v4_bringupDIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DIResponse.
impl Component for Ros1Dobot_v4_bringupDIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DIGroupRequest.
impl Component for Ros1Dobot_v4_bringupDIGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DIGroupResponse.
impl Component for Ros1Dobot_v4_bringupDIGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DORequest.
impl Component for Ros1Dobot_v4_bringupDORequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DOResponse.
impl Component for Ros1Dobot_v4_bringupDOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DOGroupRequest.
impl Component for Ros1Dobot_v4_bringupDOGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DOGroupResponse.
impl Component for Ros1Dobot_v4_bringupDOGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DOInstantRequest.
impl Component for Ros1Dobot_v4_bringupDOInstantRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DOInstantResponse.
impl Component for Ros1Dobot_v4_bringupDOInstantResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DisableRobotRequest.
impl Component for Ros1Dobot_v4_bringupDisableRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DisableRobotResponse.
impl Component for Ros1Dobot_v4_bringupDisableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DragSensivityRequest.
impl Component for Ros1Dobot_v4_bringupDragSensivityRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/DragSensivityResponse.
impl Component for Ros1Dobot_v4_bringupDragSensivityResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/EmergencyStopRequest.
impl Component for Ros1Dobot_v4_bringupEmergencyStopRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/EmergencyStopResponse.
impl Component for Ros1Dobot_v4_bringupEmergencyStopResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/EnableRobotRequest.
impl Component for Ros1Dobot_v4_bringupEnableRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/EnableRobotResponse.
impl Component for Ros1Dobot_v4_bringupEnableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/EnableSafeSkinRequest.
impl Component for Ros1Dobot_v4_bringupEnableSafeSkinRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/EnableSafeSkinResponse.
impl Component for Ros1Dobot_v4_bringupEnableSafeSkinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetAORequest.
impl Component for Ros1Dobot_v4_bringupGetAORequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetAOResponse.
impl Component for Ros1Dobot_v4_bringupGetAOResponse {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetAngleRequest.
impl Component for Ros1Dobot_v4_bringupGetAngleRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetAngleResponse.
impl Component for Ros1Dobot_v4_bringupGetAngleResponse {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetCoilsRequest.
impl Component for Ros1Dobot_v4_bringupGetCoilsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetCoilsResponse.
impl Component for Ros1Dobot_v4_bringupGetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetCurrentCommandIdRequest.
impl Component for Ros1Dobot_v4_bringupGetCurrentCommandIdRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetCurrentCommandIdResponse.
impl Component for Ros1Dobot_v4_bringupGetCurrentCommandIdResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetDORequest.
impl Component for Ros1Dobot_v4_bringupGetDORequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetDOResponse.
impl Component for Ros1Dobot_v4_bringupGetDOResponse {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetDOGroupRequest.
impl Component for Ros1Dobot_v4_bringupGetDOGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetDOGroupResponse.
impl Component for Ros1Dobot_v4_bringupGetDOGroupResponse {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetErrorIDRequest.
impl Component for Ros1Dobot_v4_bringupGetErrorIDRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetErrorIDResponse.
impl Component for Ros1Dobot_v4_bringupGetErrorIDResponse {
    const MAX_WIRE: usize = 72;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetHoldRegsRequest.
impl Component for Ros1Dobot_v4_bringupGetHoldRegsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetHoldRegsResponse.
impl Component for Ros1Dobot_v4_bringupGetHoldRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInBitsRequest.
impl Component for Ros1Dobot_v4_bringupGetInBitsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInBitsResponse.
impl Component for Ros1Dobot_v4_bringupGetInBitsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInRegsRequest.
impl Component for Ros1Dobot_v4_bringupGetInRegsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInRegsResponse.
impl Component for Ros1Dobot_v4_bringupGetInRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInputBoolRequest.
impl Component for Ros1Dobot_v4_bringupGetInputBoolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInputBoolResponse.
impl Component for Ros1Dobot_v4_bringupGetInputBoolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInputFloatRequest.
impl Component for Ros1Dobot_v4_bringupGetInputFloatRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInputFloatResponse.
impl Component for Ros1Dobot_v4_bringupGetInputFloatResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInputIntRequest.
impl Component for Ros1Dobot_v4_bringupGetInputIntRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetInputIntResponse.
impl Component for Ros1Dobot_v4_bringupGetInputIntResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetOutputBoolRequest.
impl Component for Ros1Dobot_v4_bringupGetOutputBoolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetOutputBoolResponse.
impl Component for Ros1Dobot_v4_bringupGetOutputBoolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetOutputFloatRequest.
impl Component for Ros1Dobot_v4_bringupGetOutputFloatRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetOutputFloatResponse.
impl Component for Ros1Dobot_v4_bringupGetOutputFloatResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetOutputIntRequest.
impl Component for Ros1Dobot_v4_bringupGetOutputIntRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetOutputIntResponse.
impl Component for Ros1Dobot_v4_bringupGetOutputIntResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetPoseRequest.
impl Component for Ros1Dobot_v4_bringupGetPoseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetPoseResponse.
impl Component for Ros1Dobot_v4_bringupGetPoseResponse {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetStartPoseRequest.
impl Component for Ros1Dobot_v4_bringupGetStartPoseRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/GetStartPoseResponse.
impl Component for Ros1Dobot_v4_bringupGetStartPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/InverseKinRequest.
impl Component for Ros1Dobot_v4_bringupInverseKinRequest {
    const MAX_WIRE: usize = 1088;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/InverseKinResponse.
impl Component for Ros1Dobot_v4_bringupInverseKinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/InverseSolutionRequest.
impl Component for Ros1Dobot_v4_bringupInverseSolutionRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/InverseSolutionResponse.
impl Component for Ros1Dobot_v4_bringupInverseSolutionResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ModbusCloseRequest.
impl Component for Ros1Dobot_v4_bringupModbusCloseRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ModbusCloseResponse.
impl Component for Ros1Dobot_v4_bringupModbusCloseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ModbusCreateRequest.
impl Component for Ros1Dobot_v4_bringupModbusCreateRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ModbusCreateResponse.
impl Component for Ros1Dobot_v4_bringupModbusCreateResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ModbusRTUCreateRequest.
impl Component for Ros1Dobot_v4_bringupModbusRTUCreateRequest {
    const MAX_WIRE: usize = 276;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ModbusRTUCreateResponse.
impl Component for Ros1Dobot_v4_bringupModbusRTUCreateResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovJRequest.
impl Component for Ros1Dobot_v4_bringupMovJRequest {
    const MAX_WIRE: usize = 4213;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovJResponse.
impl Component for Ros1Dobot_v4_bringupMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovJIORequest.
impl Component for Ros1Dobot_v4_bringupMovJIORequest {
    const MAX_WIRE: usize = 8377;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovJIOResponse.
impl Component for Ros1Dobot_v4_bringupMovJIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovLRequest.
impl Component for Ros1Dobot_v4_bringupMovLRequest {
    const MAX_WIRE: usize = 4213;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovLResponse.
impl Component for Ros1Dobot_v4_bringupMovLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovLIORequest.
impl Component for Ros1Dobot_v4_bringupMovLIORequest {
    const MAX_WIRE: usize = 8377;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MovLIOResponse.
impl Component for Ros1Dobot_v4_bringupMovLIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MoveJogRequest.
impl Component for Ros1Dobot_v4_bringupMoveJogRequest {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/MoveJogResponse.
impl Component for Ros1Dobot_v4_bringupMoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/PauseRequest.
impl Component for Ros1Dobot_v4_bringupPauseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/PauseResponse.
impl Component for Ros1Dobot_v4_bringupPauseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/PositiveKinRequest.
impl Component for Ros1Dobot_v4_bringupPositiveKinRequest {
    const MAX_WIRE: usize = 568;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/PositiveKinResponse.
impl Component for Ros1Dobot_v4_bringupPositiveKinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/PowerOnRequest.
impl Component for Ros1Dobot_v4_bringupPowerOnRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/PowerOnResponse.
impl Component for Ros1Dobot_v4_bringupPowerOnResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelJointMovJRequest.
impl Component for Ros1Dobot_v4_bringupRelJointMovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelJointMovJResponse.
impl Component for Ros1Dobot_v4_bringupRelJointMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovJToolRequest.
impl Component for Ros1Dobot_v4_bringupRelMovJToolRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovJToolResponse.
impl Component for Ros1Dobot_v4_bringupRelMovJToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovJUserRequest.
impl Component for Ros1Dobot_v4_bringupRelMovJUserRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovJUserResponse.
impl Component for Ros1Dobot_v4_bringupRelMovJUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovLToolRequest.
impl Component for Ros1Dobot_v4_bringupRelMovLToolRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovLToolResponse.
impl Component for Ros1Dobot_v4_bringupRelMovLToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovLUserRequest.
impl Component for Ros1Dobot_v4_bringupRelMovLUserRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RelMovLUserResponse.
impl Component for Ros1Dobot_v4_bringupRelMovLUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RobotModeRequest.
impl Component for Ros1Dobot_v4_bringupRobotModeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RobotModeResponse.
impl Component for Ros1Dobot_v4_bringupRobotModeResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RunScriptRequest.
impl Component for Ros1Dobot_v4_bringupRunScriptRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/RunScriptResponse.
impl Component for Ros1Dobot_v4_bringupRunScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ServoJRequest.
impl Component for Ros1Dobot_v4_bringupServoJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ServoJResponse.
impl Component for Ros1Dobot_v4_bringupServoJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ServoPRequest.
impl Component for Ros1Dobot_v4_bringupServoPRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ServoPResponse.
impl Component for Ros1Dobot_v4_bringupServoPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetBackDistanceRequest.
impl Component for Ros1Dobot_v4_bringupSetBackDistanceRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetBackDistanceResponse.
impl Component for Ros1Dobot_v4_bringupSetBackDistanceResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetCoilsRequest.
impl Component for Ros1Dobot_v4_bringupSetCoilsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetCoilsResponse.
impl Component for Ros1Dobot_v4_bringupSetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetCollisionLevelRequest.
impl Component for Ros1Dobot_v4_bringupSetCollisionLevelRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetCollisionLevelResponse.
impl Component for Ros1Dobot_v4_bringupSetCollisionLevelResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetHoldRegsRequest.
impl Component for Ros1Dobot_v4_bringupSetHoldRegsRequest {
    const MAX_WIRE: usize = 532;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetHoldRegsResponse.
impl Component for Ros1Dobot_v4_bringupSetHoldRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetOutputBoolRequest.
impl Component for Ros1Dobot_v4_bringupSetOutputBoolRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetOutputBoolResponse.
impl Component for Ros1Dobot_v4_bringupSetOutputBoolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetOutputFloatRequest.
impl Component for Ros1Dobot_v4_bringupSetOutputFloatRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetOutputFloatResponse.
impl Component for Ros1Dobot_v4_bringupSetOutputFloatResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetOutputIntRequest.
impl Component for Ros1Dobot_v4_bringupSetOutputIntRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetOutputIntResponse.
impl Component for Ros1Dobot_v4_bringupSetOutputIntResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetPayloadRequest.
impl Component for Ros1Dobot_v4_bringupSetPayloadRequest {
    const MAX_WIRE: usize = 32;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetPayloadResponse.
impl Component for Ros1Dobot_v4_bringupSetPayloadResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetPostCollisionModeRequest.
impl Component for Ros1Dobot_v4_bringupSetPostCollisionModeRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetPostCollisionModeResponse.
impl Component for Ros1Dobot_v4_bringupSetPostCollisionModeResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetSafeSkinRequest.
impl Component for Ros1Dobot_v4_bringupSetSafeSkinRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetSafeSkinResponse.
impl Component for Ros1Dobot_v4_bringupSetSafeSkinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetSafeWallEnableRequest.
impl Component for Ros1Dobot_v4_bringupSetSafeWallEnableRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetSafeWallEnableResponse.
impl Component for Ros1Dobot_v4_bringupSetSafeWallEnableResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetToolRequest.
impl Component for Ros1Dobot_v4_bringupSetToolRequest {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetToolResponse.
impl Component for Ros1Dobot_v4_bringupSetToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetTool485Request.
impl Component for Ros1Dobot_v4_bringupSetTool485Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetTool485Response.
impl Component for Ros1Dobot_v4_bringupSetTool485Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetToolModeRequest.
impl Component for Ros1Dobot_v4_bringupSetToolModeRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetToolModeResponse.
impl Component for Ros1Dobot_v4_bringupSetToolModeResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetToolPowerRequest.
impl Component for Ros1Dobot_v4_bringupSetToolPowerRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetToolPowerResponse.
impl Component for Ros1Dobot_v4_bringupSetToolPowerResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetUserRequest.
impl Component for Ros1Dobot_v4_bringupSetUserRequest {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SetUserResponse.
impl Component for Ros1Dobot_v4_bringupSetUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SpeedFactorRequest.
impl Component for Ros1Dobot_v4_bringupSpeedFactorRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/SpeedFactorResponse.
impl Component for Ros1Dobot_v4_bringupSpeedFactorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StartDragRequest.
impl Component for Ros1Dobot_v4_bringupStartDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StartDragResponse.
impl Component for Ros1Dobot_v4_bringupStartDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StartPathRequest.
impl Component for Ros1Dobot_v4_bringupStartPathRequest {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StartPathResponse.
impl Component for Ros1Dobot_v4_bringupStartPathResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StopRequest.
impl Component for Ros1Dobot_v4_bringupStopRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StopResponse.
impl Component for Ros1Dobot_v4_bringupStopResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StopDragRequest.
impl Component for Ros1Dobot_v4_bringupStopDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StopDragResponse.
impl Component for Ros1Dobot_v4_bringupStopDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StopMoveJogRequest.
impl Component for Ros1Dobot_v4_bringupStopMoveJogRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/StopMoveJogResponse.
impl Component for Ros1Dobot_v4_bringupStopMoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/TcpDashboardRequest.
impl Component for Ros1Dobot_v4_bringupTcpDashboardRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/TcpDashboardResponse.
impl Component for Ros1Dobot_v4_bringupTcpDashboardResponse {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolRequest.
impl Component for Ros1Dobot_v4_bringupToolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolResponse.
impl Component for Ros1Dobot_v4_bringupToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolAIRequest.
impl Component for Ros1Dobot_v4_bringupToolAIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolAIResponse.
impl Component for Ros1Dobot_v4_bringupToolAIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolDIRequest.
impl Component for Ros1Dobot_v4_bringupToolDIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolDIResponse.
impl Component for Ros1Dobot_v4_bringupToolDIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolDORequest.
impl Component for Ros1Dobot_v4_bringupToolDORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolDOResponse.
impl Component for Ros1Dobot_v4_bringupToolDOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolDOInstantRequest.
impl Component for Ros1Dobot_v4_bringupToolDOInstantRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/ToolDOInstantResponse.
impl Component for Ros1Dobot_v4_bringupToolDOInstantResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/UserRequest.
impl Component for Ros1Dobot_v4_bringupUserRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/UserResponse.
impl Component for Ros1Dobot_v4_bringupUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/VelJRequest.
impl Component for Ros1Dobot_v4_bringupVelJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/VelJResponse.
impl Component for Ros1Dobot_v4_bringupVelJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/VelLRequest.
impl Component for Ros1Dobot_v4_bringupVelLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_v4_bringup/VelLResponse.
impl Component for Ros1Dobot_v4_bringupVelLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Typed dobot_v4_bringup/AI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupAIClient =
    ServiceClient<Ros1Dobot_v4_bringupAIRequest, Ros1Dobot_v4_bringupAIResponse>;

/// Typed dobot_v4_bringup/AI advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupAIServer =
    ServiceServer<Ros1Dobot_v4_bringupAIRequest, Ros1Dobot_v4_bringupAIResponse>;

/// Typed dobot_v4_bringup/AO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupAOClient =
    ServiceClient<Ros1Dobot_v4_bringupAORequest, Ros1Dobot_v4_bringupAOResponse>;

/// Typed dobot_v4_bringup/AO advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupAOServer =
    ServiceServer<Ros1Dobot_v4_bringupAORequest, Ros1Dobot_v4_bringupAOResponse>;

/// Typed dobot_v4_bringup/AOInstant call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupAOInstantClient =
    ServiceClient<Ros1Dobot_v4_bringupAOInstantRequest, Ros1Dobot_v4_bringupAOInstantResponse>;

/// Typed dobot_v4_bringup/AOInstant advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupAOInstantServer =
    ServiceServer<Ros1Dobot_v4_bringupAOInstantRequest, Ros1Dobot_v4_bringupAOInstantResponse>;

/// Typed dobot_v4_bringup/AccJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupAccJClient =
    ServiceClient<Ros1Dobot_v4_bringupAccJRequest, Ros1Dobot_v4_bringupAccJResponse>;

/// Typed dobot_v4_bringup/AccJ advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupAccJServer =
    ServiceServer<Ros1Dobot_v4_bringupAccJRequest, Ros1Dobot_v4_bringupAccJResponse>;

/// Typed dobot_v4_bringup/AccL call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupAccLClient =
    ServiceClient<Ros1Dobot_v4_bringupAccLRequest, Ros1Dobot_v4_bringupAccLResponse>;

/// Typed dobot_v4_bringup/AccL advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupAccLServer =
    ServiceServer<Ros1Dobot_v4_bringupAccLRequest, Ros1Dobot_v4_bringupAccLResponse>;

/// Typed dobot_v4_bringup/Arc call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupArcClient =
    ServiceClient<Ros1Dobot_v4_bringupArcRequest, Ros1Dobot_v4_bringupArcResponse>;

/// Typed dobot_v4_bringup/Arc advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupArcServer =
    ServiceServer<Ros1Dobot_v4_bringupArcRequest, Ros1Dobot_v4_bringupArcResponse>;

/// Typed dobot_v4_bringup/BrakeControl call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupBrakeControlClient = ServiceClient<
    Ros1Dobot_v4_bringupBrakeControlRequest,
    Ros1Dobot_v4_bringupBrakeControlResponse,
>;

/// Typed dobot_v4_bringup/BrakeControl advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupBrakeControlServer = ServiceServer<
    Ros1Dobot_v4_bringupBrakeControlRequest,
    Ros1Dobot_v4_bringupBrakeControlResponse,
>;

/// Typed dobot_v4_bringup/CP call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupCPClient =
    ServiceClient<Ros1Dobot_v4_bringupCPRequest, Ros1Dobot_v4_bringupCPResponse>;

/// Typed dobot_v4_bringup/CP advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupCPServer =
    ServiceServer<Ros1Dobot_v4_bringupCPRequest, Ros1Dobot_v4_bringupCPResponse>;

/// Typed dobot_v4_bringup/CalcTool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupCalcToolClient =
    ServiceClient<Ros1Dobot_v4_bringupCalcToolRequest, Ros1Dobot_v4_bringupCalcToolResponse>;

/// Typed dobot_v4_bringup/CalcTool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupCalcToolServer =
    ServiceServer<Ros1Dobot_v4_bringupCalcToolRequest, Ros1Dobot_v4_bringupCalcToolResponse>;

/// Typed dobot_v4_bringup/CalcUser call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupCalcUserClient =
    ServiceClient<Ros1Dobot_v4_bringupCalcUserRequest, Ros1Dobot_v4_bringupCalcUserResponse>;

/// Typed dobot_v4_bringup/CalcUser advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupCalcUserServer =
    ServiceServer<Ros1Dobot_v4_bringupCalcUserRequest, Ros1Dobot_v4_bringupCalcUserResponse>;

/// Typed dobot_v4_bringup/Circle call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupCircleClient =
    ServiceClient<Ros1Dobot_v4_bringupCircleRequest, Ros1Dobot_v4_bringupCircleResponse>;

/// Typed dobot_v4_bringup/Circle advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupCircleServer =
    ServiceServer<Ros1Dobot_v4_bringupCircleRequest, Ros1Dobot_v4_bringupCircleResponse>;

/// Typed dobot_v4_bringup/ClearError call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupClearErrorClient =
    ServiceClient<Ros1Dobot_v4_bringupClearErrorRequest, Ros1Dobot_v4_bringupClearErrorResponse>;

/// Typed dobot_v4_bringup/ClearError advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupClearErrorServer =
    ServiceServer<Ros1Dobot_v4_bringupClearErrorRequest, Ros1Dobot_v4_bringupClearErrorResponse>;

/// Typed dobot_v4_bringup/Continue call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupContinueClient =
    ServiceClient<Ros1Dobot_v4_bringupContinueRequest, Ros1Dobot_v4_bringupContinueResponse>;

/// Typed dobot_v4_bringup/Continue advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupContinueServer =
    ServiceServer<Ros1Dobot_v4_bringupContinueRequest, Ros1Dobot_v4_bringupContinueResponse>;

/// Typed dobot_v4_bringup/DI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupDIClient =
    ServiceClient<Ros1Dobot_v4_bringupDIRequest, Ros1Dobot_v4_bringupDIResponse>;

/// Typed dobot_v4_bringup/DI advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupDIServer =
    ServiceServer<Ros1Dobot_v4_bringupDIRequest, Ros1Dobot_v4_bringupDIResponse>;

/// Typed dobot_v4_bringup/DIGroup call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupDIGroupClient =
    ServiceClient<Ros1Dobot_v4_bringupDIGroupRequest, Ros1Dobot_v4_bringupDIGroupResponse>;

/// Typed dobot_v4_bringup/DIGroup advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupDIGroupServer =
    ServiceServer<Ros1Dobot_v4_bringupDIGroupRequest, Ros1Dobot_v4_bringupDIGroupResponse>;

/// Typed dobot_v4_bringup/DO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupDOClient =
    ServiceClient<Ros1Dobot_v4_bringupDORequest, Ros1Dobot_v4_bringupDOResponse>;

/// Typed dobot_v4_bringup/DO advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupDOServer =
    ServiceServer<Ros1Dobot_v4_bringupDORequest, Ros1Dobot_v4_bringupDOResponse>;

/// Typed dobot_v4_bringup/DOGroup call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupDOGroupClient =
    ServiceClient<Ros1Dobot_v4_bringupDOGroupRequest, Ros1Dobot_v4_bringupDOGroupResponse>;

/// Typed dobot_v4_bringup/DOGroup advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupDOGroupServer =
    ServiceServer<Ros1Dobot_v4_bringupDOGroupRequest, Ros1Dobot_v4_bringupDOGroupResponse>;

/// Typed dobot_v4_bringup/DOInstant call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupDOInstantClient =
    ServiceClient<Ros1Dobot_v4_bringupDOInstantRequest, Ros1Dobot_v4_bringupDOInstantResponse>;

/// Typed dobot_v4_bringup/DOInstant advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupDOInstantServer =
    ServiceServer<Ros1Dobot_v4_bringupDOInstantRequest, Ros1Dobot_v4_bringupDOInstantResponse>;

/// Typed dobot_v4_bringup/DisableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupDisableRobotClient = ServiceClient<
    Ros1Dobot_v4_bringupDisableRobotRequest,
    Ros1Dobot_v4_bringupDisableRobotResponse,
>;

/// Typed dobot_v4_bringup/DisableRobot advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupDisableRobotServer = ServiceServer<
    Ros1Dobot_v4_bringupDisableRobotRequest,
    Ros1Dobot_v4_bringupDisableRobotResponse,
>;

/// Typed dobot_v4_bringup/DragSensivity call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupDragSensivityClient = ServiceClient<
    Ros1Dobot_v4_bringupDragSensivityRequest,
    Ros1Dobot_v4_bringupDragSensivityResponse,
>;

/// Typed dobot_v4_bringup/DragSensivity advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupDragSensivityServer = ServiceServer<
    Ros1Dobot_v4_bringupDragSensivityRequest,
    Ros1Dobot_v4_bringupDragSensivityResponse,
>;

/// Typed dobot_v4_bringup/EmergencyStop call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupEmergencyStopClient = ServiceClient<
    Ros1Dobot_v4_bringupEmergencyStopRequest,
    Ros1Dobot_v4_bringupEmergencyStopResponse,
>;

/// Typed dobot_v4_bringup/EmergencyStop advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupEmergencyStopServer = ServiceServer<
    Ros1Dobot_v4_bringupEmergencyStopRequest,
    Ros1Dobot_v4_bringupEmergencyStopResponse,
>;

/// Typed dobot_v4_bringup/EnableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupEnableRobotClient =
    ServiceClient<Ros1Dobot_v4_bringupEnableRobotRequest, Ros1Dobot_v4_bringupEnableRobotResponse>;

/// Typed dobot_v4_bringup/EnableRobot advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupEnableRobotServer =
    ServiceServer<Ros1Dobot_v4_bringupEnableRobotRequest, Ros1Dobot_v4_bringupEnableRobotResponse>;

/// Typed dobot_v4_bringup/EnableSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupEnableSafeSkinClient = ServiceClient<
    Ros1Dobot_v4_bringupEnableSafeSkinRequest,
    Ros1Dobot_v4_bringupEnableSafeSkinResponse,
>;

/// Typed dobot_v4_bringup/EnableSafeSkin advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupEnableSafeSkinServer = ServiceServer<
    Ros1Dobot_v4_bringupEnableSafeSkinRequest,
    Ros1Dobot_v4_bringupEnableSafeSkinResponse,
>;

/// Typed dobot_v4_bringup/GetAO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetAOClient =
    ServiceClient<Ros1Dobot_v4_bringupGetAORequest, Ros1Dobot_v4_bringupGetAOResponse>;

/// Typed dobot_v4_bringup/GetAO advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetAOServer =
    ServiceServer<Ros1Dobot_v4_bringupGetAORequest, Ros1Dobot_v4_bringupGetAOResponse>;

/// Typed dobot_v4_bringup/GetAngle call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetAngleClient =
    ServiceClient<Ros1Dobot_v4_bringupGetAngleRequest, Ros1Dobot_v4_bringupGetAngleResponse>;

/// Typed dobot_v4_bringup/GetAngle advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetAngleServer =
    ServiceServer<Ros1Dobot_v4_bringupGetAngleRequest, Ros1Dobot_v4_bringupGetAngleResponse>;

/// Typed dobot_v4_bringup/GetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetCoilsClient =
    ServiceClient<Ros1Dobot_v4_bringupGetCoilsRequest, Ros1Dobot_v4_bringupGetCoilsResponse>;

/// Typed dobot_v4_bringup/GetCoils advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetCoilsServer =
    ServiceServer<Ros1Dobot_v4_bringupGetCoilsRequest, Ros1Dobot_v4_bringupGetCoilsResponse>;

/// Typed dobot_v4_bringup/GetCurrentCommandId call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetCurrentCommandIdClient = ServiceClient<
    Ros1Dobot_v4_bringupGetCurrentCommandIdRequest,
    Ros1Dobot_v4_bringupGetCurrentCommandIdResponse,
>;

/// Typed dobot_v4_bringup/GetCurrentCommandId advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetCurrentCommandIdServer = ServiceServer<
    Ros1Dobot_v4_bringupGetCurrentCommandIdRequest,
    Ros1Dobot_v4_bringupGetCurrentCommandIdResponse,
>;

/// Typed dobot_v4_bringup/GetDO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetDOClient =
    ServiceClient<Ros1Dobot_v4_bringupGetDORequest, Ros1Dobot_v4_bringupGetDOResponse>;

/// Typed dobot_v4_bringup/GetDO advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetDOServer =
    ServiceServer<Ros1Dobot_v4_bringupGetDORequest, Ros1Dobot_v4_bringupGetDOResponse>;

/// Typed dobot_v4_bringup/GetDOGroup call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetDOGroupClient =
    ServiceClient<Ros1Dobot_v4_bringupGetDOGroupRequest, Ros1Dobot_v4_bringupGetDOGroupResponse>;

/// Typed dobot_v4_bringup/GetDOGroup advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetDOGroupServer =
    ServiceServer<Ros1Dobot_v4_bringupGetDOGroupRequest, Ros1Dobot_v4_bringupGetDOGroupResponse>;

/// Typed dobot_v4_bringup/GetErrorID call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetErrorIDClient =
    ServiceClient<Ros1Dobot_v4_bringupGetErrorIDRequest, Ros1Dobot_v4_bringupGetErrorIDResponse>;

/// Typed dobot_v4_bringup/GetErrorID advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetErrorIDServer =
    ServiceServer<Ros1Dobot_v4_bringupGetErrorIDRequest, Ros1Dobot_v4_bringupGetErrorIDResponse>;

/// Typed dobot_v4_bringup/GetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetHoldRegsClient =
    ServiceClient<Ros1Dobot_v4_bringupGetHoldRegsRequest, Ros1Dobot_v4_bringupGetHoldRegsResponse>;

/// Typed dobot_v4_bringup/GetHoldRegs advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetHoldRegsServer =
    ServiceServer<Ros1Dobot_v4_bringupGetHoldRegsRequest, Ros1Dobot_v4_bringupGetHoldRegsResponse>;

/// Typed dobot_v4_bringup/GetInBits call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetInBitsClient =
    ServiceClient<Ros1Dobot_v4_bringupGetInBitsRequest, Ros1Dobot_v4_bringupGetInBitsResponse>;

/// Typed dobot_v4_bringup/GetInBits advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetInBitsServer =
    ServiceServer<Ros1Dobot_v4_bringupGetInBitsRequest, Ros1Dobot_v4_bringupGetInBitsResponse>;

/// Typed dobot_v4_bringup/GetInRegs call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetInRegsClient =
    ServiceClient<Ros1Dobot_v4_bringupGetInRegsRequest, Ros1Dobot_v4_bringupGetInRegsResponse>;

/// Typed dobot_v4_bringup/GetInRegs advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetInRegsServer =
    ServiceServer<Ros1Dobot_v4_bringupGetInRegsRequest, Ros1Dobot_v4_bringupGetInRegsResponse>;

/// Typed dobot_v4_bringup/GetInputBool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetInputBoolClient = ServiceClient<
    Ros1Dobot_v4_bringupGetInputBoolRequest,
    Ros1Dobot_v4_bringupGetInputBoolResponse,
>;

/// Typed dobot_v4_bringup/GetInputBool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetInputBoolServer = ServiceServer<
    Ros1Dobot_v4_bringupGetInputBoolRequest,
    Ros1Dobot_v4_bringupGetInputBoolResponse,
>;

/// Typed dobot_v4_bringup/GetInputFloat call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetInputFloatClient = ServiceClient<
    Ros1Dobot_v4_bringupGetInputFloatRequest,
    Ros1Dobot_v4_bringupGetInputFloatResponse,
>;

/// Typed dobot_v4_bringup/GetInputFloat advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetInputFloatServer = ServiceServer<
    Ros1Dobot_v4_bringupGetInputFloatRequest,
    Ros1Dobot_v4_bringupGetInputFloatResponse,
>;

/// Typed dobot_v4_bringup/GetInputInt call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetInputIntClient =
    ServiceClient<Ros1Dobot_v4_bringupGetInputIntRequest, Ros1Dobot_v4_bringupGetInputIntResponse>;

/// Typed dobot_v4_bringup/GetInputInt advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetInputIntServer =
    ServiceServer<Ros1Dobot_v4_bringupGetInputIntRequest, Ros1Dobot_v4_bringupGetInputIntResponse>;

/// Typed dobot_v4_bringup/GetOutputBool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetOutputBoolClient = ServiceClient<
    Ros1Dobot_v4_bringupGetOutputBoolRequest,
    Ros1Dobot_v4_bringupGetOutputBoolResponse,
>;

/// Typed dobot_v4_bringup/GetOutputBool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetOutputBoolServer = ServiceServer<
    Ros1Dobot_v4_bringupGetOutputBoolRequest,
    Ros1Dobot_v4_bringupGetOutputBoolResponse,
>;

/// Typed dobot_v4_bringup/GetOutputFloat call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetOutputFloatClient = ServiceClient<
    Ros1Dobot_v4_bringupGetOutputFloatRequest,
    Ros1Dobot_v4_bringupGetOutputFloatResponse,
>;

/// Typed dobot_v4_bringup/GetOutputFloat advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetOutputFloatServer = ServiceServer<
    Ros1Dobot_v4_bringupGetOutputFloatRequest,
    Ros1Dobot_v4_bringupGetOutputFloatResponse,
>;

/// Typed dobot_v4_bringup/GetOutputInt call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetOutputIntClient = ServiceClient<
    Ros1Dobot_v4_bringupGetOutputIntRequest,
    Ros1Dobot_v4_bringupGetOutputIntResponse,
>;

/// Typed dobot_v4_bringup/GetOutputInt advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetOutputIntServer = ServiceServer<
    Ros1Dobot_v4_bringupGetOutputIntRequest,
    Ros1Dobot_v4_bringupGetOutputIntResponse,
>;

/// Typed dobot_v4_bringup/GetPose call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetPoseClient =
    ServiceClient<Ros1Dobot_v4_bringupGetPoseRequest, Ros1Dobot_v4_bringupGetPoseResponse>;

/// Typed dobot_v4_bringup/GetPose advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetPoseServer =
    ServiceServer<Ros1Dobot_v4_bringupGetPoseRequest, Ros1Dobot_v4_bringupGetPoseResponse>;

/// Typed dobot_v4_bringup/GetStartPose call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupGetStartPoseClient = ServiceClient<
    Ros1Dobot_v4_bringupGetStartPoseRequest,
    Ros1Dobot_v4_bringupGetStartPoseResponse,
>;

/// Typed dobot_v4_bringup/GetStartPose advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupGetStartPoseServer = ServiceServer<
    Ros1Dobot_v4_bringupGetStartPoseRequest,
    Ros1Dobot_v4_bringupGetStartPoseResponse,
>;

/// Typed dobot_v4_bringup/InverseKin call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupInverseKinClient =
    ServiceClient<Ros1Dobot_v4_bringupInverseKinRequest, Ros1Dobot_v4_bringupInverseKinResponse>;

/// Typed dobot_v4_bringup/InverseKin advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupInverseKinServer =
    ServiceServer<Ros1Dobot_v4_bringupInverseKinRequest, Ros1Dobot_v4_bringupInverseKinResponse>;

/// Typed dobot_v4_bringup/InverseSolution call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupInverseSolutionClient = ServiceClient<
    Ros1Dobot_v4_bringupInverseSolutionRequest,
    Ros1Dobot_v4_bringupInverseSolutionResponse,
>;

/// Typed dobot_v4_bringup/InverseSolution advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupInverseSolutionServer = ServiceServer<
    Ros1Dobot_v4_bringupInverseSolutionRequest,
    Ros1Dobot_v4_bringupInverseSolutionResponse,
>;

/// Typed dobot_v4_bringup/ModbusClose call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupModbusCloseClient =
    ServiceClient<Ros1Dobot_v4_bringupModbusCloseRequest, Ros1Dobot_v4_bringupModbusCloseResponse>;

/// Typed dobot_v4_bringup/ModbusClose advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupModbusCloseServer =
    ServiceServer<Ros1Dobot_v4_bringupModbusCloseRequest, Ros1Dobot_v4_bringupModbusCloseResponse>;

/// Typed dobot_v4_bringup/ModbusCreate call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupModbusCreateClient = ServiceClient<
    Ros1Dobot_v4_bringupModbusCreateRequest,
    Ros1Dobot_v4_bringupModbusCreateResponse,
>;

/// Typed dobot_v4_bringup/ModbusCreate advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupModbusCreateServer = ServiceServer<
    Ros1Dobot_v4_bringupModbusCreateRequest,
    Ros1Dobot_v4_bringupModbusCreateResponse,
>;

/// Typed dobot_v4_bringup/ModbusRTUCreate call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupModbusRTUCreateClient = ServiceClient<
    Ros1Dobot_v4_bringupModbusRTUCreateRequest,
    Ros1Dobot_v4_bringupModbusRTUCreateResponse,
>;

/// Typed dobot_v4_bringup/ModbusRTUCreate advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupModbusRTUCreateServer = ServiceServer<
    Ros1Dobot_v4_bringupModbusRTUCreateRequest,
    Ros1Dobot_v4_bringupModbusRTUCreateResponse,
>;

/// Typed dobot_v4_bringup/MovJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupMovJClient =
    ServiceClient<Ros1Dobot_v4_bringupMovJRequest, Ros1Dobot_v4_bringupMovJResponse>;

/// Typed dobot_v4_bringup/MovJ advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupMovJServer =
    ServiceServer<Ros1Dobot_v4_bringupMovJRequest, Ros1Dobot_v4_bringupMovJResponse>;

/// Typed dobot_v4_bringup/MovJIO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupMovJIOClient =
    ServiceClient<Ros1Dobot_v4_bringupMovJIORequest, Ros1Dobot_v4_bringupMovJIOResponse>;

/// Typed dobot_v4_bringup/MovJIO advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupMovJIOServer =
    ServiceServer<Ros1Dobot_v4_bringupMovJIORequest, Ros1Dobot_v4_bringupMovJIOResponse>;

/// Typed dobot_v4_bringup/MovL call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupMovLClient =
    ServiceClient<Ros1Dobot_v4_bringupMovLRequest, Ros1Dobot_v4_bringupMovLResponse>;

/// Typed dobot_v4_bringup/MovL advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupMovLServer =
    ServiceServer<Ros1Dobot_v4_bringupMovLRequest, Ros1Dobot_v4_bringupMovLResponse>;

/// Typed dobot_v4_bringup/MovLIO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupMovLIOClient =
    ServiceClient<Ros1Dobot_v4_bringupMovLIORequest, Ros1Dobot_v4_bringupMovLIOResponse>;

/// Typed dobot_v4_bringup/MovLIO advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupMovLIOServer =
    ServiceServer<Ros1Dobot_v4_bringupMovLIORequest, Ros1Dobot_v4_bringupMovLIOResponse>;

/// Typed dobot_v4_bringup/MoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupMoveJogClient =
    ServiceClient<Ros1Dobot_v4_bringupMoveJogRequest, Ros1Dobot_v4_bringupMoveJogResponse>;

/// Typed dobot_v4_bringup/MoveJog advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupMoveJogServer =
    ServiceServer<Ros1Dobot_v4_bringupMoveJogRequest, Ros1Dobot_v4_bringupMoveJogResponse>;

/// Typed dobot_v4_bringup/Pause call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupPauseClient =
    ServiceClient<Ros1Dobot_v4_bringupPauseRequest, Ros1Dobot_v4_bringupPauseResponse>;

/// Typed dobot_v4_bringup/Pause advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupPauseServer =
    ServiceServer<Ros1Dobot_v4_bringupPauseRequest, Ros1Dobot_v4_bringupPauseResponse>;

/// Typed dobot_v4_bringup/PositiveKin call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupPositiveKinClient =
    ServiceClient<Ros1Dobot_v4_bringupPositiveKinRequest, Ros1Dobot_v4_bringupPositiveKinResponse>;

/// Typed dobot_v4_bringup/PositiveKin advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupPositiveKinServer =
    ServiceServer<Ros1Dobot_v4_bringupPositiveKinRequest, Ros1Dobot_v4_bringupPositiveKinResponse>;

/// Typed dobot_v4_bringup/PowerOn call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupPowerOnClient =
    ServiceClient<Ros1Dobot_v4_bringupPowerOnRequest, Ros1Dobot_v4_bringupPowerOnResponse>;

/// Typed dobot_v4_bringup/PowerOn advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupPowerOnServer =
    ServiceServer<Ros1Dobot_v4_bringupPowerOnRequest, Ros1Dobot_v4_bringupPowerOnResponse>;

/// Typed dobot_v4_bringup/RelJointMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupRelJointMovJClient = ServiceClient<
    Ros1Dobot_v4_bringupRelJointMovJRequest,
    Ros1Dobot_v4_bringupRelJointMovJResponse,
>;

/// Typed dobot_v4_bringup/RelJointMovJ advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupRelJointMovJServer = ServiceServer<
    Ros1Dobot_v4_bringupRelJointMovJRequest,
    Ros1Dobot_v4_bringupRelJointMovJResponse,
>;

/// Typed dobot_v4_bringup/RelMovJTool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupRelMovJToolClient =
    ServiceClient<Ros1Dobot_v4_bringupRelMovJToolRequest, Ros1Dobot_v4_bringupRelMovJToolResponse>;

/// Typed dobot_v4_bringup/RelMovJTool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupRelMovJToolServer =
    ServiceServer<Ros1Dobot_v4_bringupRelMovJToolRequest, Ros1Dobot_v4_bringupRelMovJToolResponse>;

/// Typed dobot_v4_bringup/RelMovJUser call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupRelMovJUserClient =
    ServiceClient<Ros1Dobot_v4_bringupRelMovJUserRequest, Ros1Dobot_v4_bringupRelMovJUserResponse>;

/// Typed dobot_v4_bringup/RelMovJUser advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupRelMovJUserServer =
    ServiceServer<Ros1Dobot_v4_bringupRelMovJUserRequest, Ros1Dobot_v4_bringupRelMovJUserResponse>;

/// Typed dobot_v4_bringup/RelMovLTool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupRelMovLToolClient =
    ServiceClient<Ros1Dobot_v4_bringupRelMovLToolRequest, Ros1Dobot_v4_bringupRelMovLToolResponse>;

/// Typed dobot_v4_bringup/RelMovLTool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupRelMovLToolServer =
    ServiceServer<Ros1Dobot_v4_bringupRelMovLToolRequest, Ros1Dobot_v4_bringupRelMovLToolResponse>;

/// Typed dobot_v4_bringup/RelMovLUser call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupRelMovLUserClient =
    ServiceClient<Ros1Dobot_v4_bringupRelMovLUserRequest, Ros1Dobot_v4_bringupRelMovLUserResponse>;

/// Typed dobot_v4_bringup/RelMovLUser advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupRelMovLUserServer =
    ServiceServer<Ros1Dobot_v4_bringupRelMovLUserRequest, Ros1Dobot_v4_bringupRelMovLUserResponse>;

/// Typed dobot_v4_bringup/RobotMode call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupRobotModeClient =
    ServiceClient<Ros1Dobot_v4_bringupRobotModeRequest, Ros1Dobot_v4_bringupRobotModeResponse>;

/// Typed dobot_v4_bringup/RobotMode advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupRobotModeServer =
    ServiceServer<Ros1Dobot_v4_bringupRobotModeRequest, Ros1Dobot_v4_bringupRobotModeResponse>;

/// Typed dobot_v4_bringup/RunScript call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupRunScriptClient =
    ServiceClient<Ros1Dobot_v4_bringupRunScriptRequest, Ros1Dobot_v4_bringupRunScriptResponse>;

/// Typed dobot_v4_bringup/RunScript advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupRunScriptServer =
    ServiceServer<Ros1Dobot_v4_bringupRunScriptRequest, Ros1Dobot_v4_bringupRunScriptResponse>;

/// Typed dobot_v4_bringup/ServoJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupServoJClient =
    ServiceClient<Ros1Dobot_v4_bringupServoJRequest, Ros1Dobot_v4_bringupServoJResponse>;

/// Typed dobot_v4_bringup/ServoJ advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupServoJServer =
    ServiceServer<Ros1Dobot_v4_bringupServoJRequest, Ros1Dobot_v4_bringupServoJResponse>;

/// Typed dobot_v4_bringup/ServoP call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupServoPClient =
    ServiceClient<Ros1Dobot_v4_bringupServoPRequest, Ros1Dobot_v4_bringupServoPResponse>;

/// Typed dobot_v4_bringup/ServoP advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupServoPServer =
    ServiceServer<Ros1Dobot_v4_bringupServoPRequest, Ros1Dobot_v4_bringupServoPResponse>;

/// Typed dobot_v4_bringup/SetBackDistance call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetBackDistanceClient = ServiceClient<
    Ros1Dobot_v4_bringupSetBackDistanceRequest,
    Ros1Dobot_v4_bringupSetBackDistanceResponse,
>;

/// Typed dobot_v4_bringup/SetBackDistance advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetBackDistanceServer = ServiceServer<
    Ros1Dobot_v4_bringupSetBackDistanceRequest,
    Ros1Dobot_v4_bringupSetBackDistanceResponse,
>;

/// Typed dobot_v4_bringup/SetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetCoilsClient =
    ServiceClient<Ros1Dobot_v4_bringupSetCoilsRequest, Ros1Dobot_v4_bringupSetCoilsResponse>;

/// Typed dobot_v4_bringup/SetCoils advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetCoilsServer =
    ServiceServer<Ros1Dobot_v4_bringupSetCoilsRequest, Ros1Dobot_v4_bringupSetCoilsResponse>;

/// Typed dobot_v4_bringup/SetCollisionLevel call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetCollisionLevelClient = ServiceClient<
    Ros1Dobot_v4_bringupSetCollisionLevelRequest,
    Ros1Dobot_v4_bringupSetCollisionLevelResponse,
>;

/// Typed dobot_v4_bringup/SetCollisionLevel advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetCollisionLevelServer = ServiceServer<
    Ros1Dobot_v4_bringupSetCollisionLevelRequest,
    Ros1Dobot_v4_bringupSetCollisionLevelResponse,
>;

/// Typed dobot_v4_bringup/SetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetHoldRegsClient =
    ServiceClient<Ros1Dobot_v4_bringupSetHoldRegsRequest, Ros1Dobot_v4_bringupSetHoldRegsResponse>;

/// Typed dobot_v4_bringup/SetHoldRegs advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetHoldRegsServer =
    ServiceServer<Ros1Dobot_v4_bringupSetHoldRegsRequest, Ros1Dobot_v4_bringupSetHoldRegsResponse>;

/// Typed dobot_v4_bringup/SetOutputBool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetOutputBoolClient = ServiceClient<
    Ros1Dobot_v4_bringupSetOutputBoolRequest,
    Ros1Dobot_v4_bringupSetOutputBoolResponse,
>;

/// Typed dobot_v4_bringup/SetOutputBool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetOutputBoolServer = ServiceServer<
    Ros1Dobot_v4_bringupSetOutputBoolRequest,
    Ros1Dobot_v4_bringupSetOutputBoolResponse,
>;

/// Typed dobot_v4_bringup/SetOutputFloat call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetOutputFloatClient = ServiceClient<
    Ros1Dobot_v4_bringupSetOutputFloatRequest,
    Ros1Dobot_v4_bringupSetOutputFloatResponse,
>;

/// Typed dobot_v4_bringup/SetOutputFloat advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetOutputFloatServer = ServiceServer<
    Ros1Dobot_v4_bringupSetOutputFloatRequest,
    Ros1Dobot_v4_bringupSetOutputFloatResponse,
>;

/// Typed dobot_v4_bringup/SetOutputInt call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetOutputIntClient = ServiceClient<
    Ros1Dobot_v4_bringupSetOutputIntRequest,
    Ros1Dobot_v4_bringupSetOutputIntResponse,
>;

/// Typed dobot_v4_bringup/SetOutputInt advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetOutputIntServer = ServiceServer<
    Ros1Dobot_v4_bringupSetOutputIntRequest,
    Ros1Dobot_v4_bringupSetOutputIntResponse,
>;

/// Typed dobot_v4_bringup/SetPayload call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetPayloadClient =
    ServiceClient<Ros1Dobot_v4_bringupSetPayloadRequest, Ros1Dobot_v4_bringupSetPayloadResponse>;

/// Typed dobot_v4_bringup/SetPayload advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetPayloadServer =
    ServiceServer<Ros1Dobot_v4_bringupSetPayloadRequest, Ros1Dobot_v4_bringupSetPayloadResponse>;

/// Typed dobot_v4_bringup/SetPostCollisionMode call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetPostCollisionModeClient = ServiceClient<
    Ros1Dobot_v4_bringupSetPostCollisionModeRequest,
    Ros1Dobot_v4_bringupSetPostCollisionModeResponse,
>;

/// Typed dobot_v4_bringup/SetPostCollisionMode advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetPostCollisionModeServer = ServiceServer<
    Ros1Dobot_v4_bringupSetPostCollisionModeRequest,
    Ros1Dobot_v4_bringupSetPostCollisionModeResponse,
>;

/// Typed dobot_v4_bringup/SetSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetSafeSkinClient =
    ServiceClient<Ros1Dobot_v4_bringupSetSafeSkinRequest, Ros1Dobot_v4_bringupSetSafeSkinResponse>;

/// Typed dobot_v4_bringup/SetSafeSkin advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetSafeSkinServer =
    ServiceServer<Ros1Dobot_v4_bringupSetSafeSkinRequest, Ros1Dobot_v4_bringupSetSafeSkinResponse>;

/// Typed dobot_v4_bringup/SetSafeWallEnable call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetSafeWallEnableClient = ServiceClient<
    Ros1Dobot_v4_bringupSetSafeWallEnableRequest,
    Ros1Dobot_v4_bringupSetSafeWallEnableResponse,
>;

/// Typed dobot_v4_bringup/SetSafeWallEnable advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetSafeWallEnableServer = ServiceServer<
    Ros1Dobot_v4_bringupSetSafeWallEnableRequest,
    Ros1Dobot_v4_bringupSetSafeWallEnableResponse,
>;

/// Typed dobot_v4_bringup/SetTool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetToolClient =
    ServiceClient<Ros1Dobot_v4_bringupSetToolRequest, Ros1Dobot_v4_bringupSetToolResponse>;

/// Typed dobot_v4_bringup/SetTool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetToolServer =
    ServiceServer<Ros1Dobot_v4_bringupSetToolRequest, Ros1Dobot_v4_bringupSetToolResponse>;

/// Typed dobot_v4_bringup/SetTool485 call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetTool485Client =
    ServiceClient<Ros1Dobot_v4_bringupSetTool485Request, Ros1Dobot_v4_bringupSetTool485Response>;

/// Typed dobot_v4_bringup/SetTool485 advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetTool485Server =
    ServiceServer<Ros1Dobot_v4_bringupSetTool485Request, Ros1Dobot_v4_bringupSetTool485Response>;

/// Typed dobot_v4_bringup/SetToolMode call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetToolModeClient =
    ServiceClient<Ros1Dobot_v4_bringupSetToolModeRequest, Ros1Dobot_v4_bringupSetToolModeResponse>;

/// Typed dobot_v4_bringup/SetToolMode advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetToolModeServer =
    ServiceServer<Ros1Dobot_v4_bringupSetToolModeRequest, Ros1Dobot_v4_bringupSetToolModeResponse>;

/// Typed dobot_v4_bringup/SetToolPower call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetToolPowerClient = ServiceClient<
    Ros1Dobot_v4_bringupSetToolPowerRequest,
    Ros1Dobot_v4_bringupSetToolPowerResponse,
>;

/// Typed dobot_v4_bringup/SetToolPower advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetToolPowerServer = ServiceServer<
    Ros1Dobot_v4_bringupSetToolPowerRequest,
    Ros1Dobot_v4_bringupSetToolPowerResponse,
>;

/// Typed dobot_v4_bringup/SetUser call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSetUserClient =
    ServiceClient<Ros1Dobot_v4_bringupSetUserRequest, Ros1Dobot_v4_bringupSetUserResponse>;

/// Typed dobot_v4_bringup/SetUser advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSetUserServer =
    ServiceServer<Ros1Dobot_v4_bringupSetUserRequest, Ros1Dobot_v4_bringupSetUserResponse>;

/// Typed dobot_v4_bringup/SpeedFactor call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupSpeedFactorClient =
    ServiceClient<Ros1Dobot_v4_bringupSpeedFactorRequest, Ros1Dobot_v4_bringupSpeedFactorResponse>;

/// Typed dobot_v4_bringup/SpeedFactor advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupSpeedFactorServer =
    ServiceServer<Ros1Dobot_v4_bringupSpeedFactorRequest, Ros1Dobot_v4_bringupSpeedFactorResponse>;

/// Typed dobot_v4_bringup/StartDrag call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupStartDragClient =
    ServiceClient<Ros1Dobot_v4_bringupStartDragRequest, Ros1Dobot_v4_bringupStartDragResponse>;

/// Typed dobot_v4_bringup/StartDrag advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupStartDragServer =
    ServiceServer<Ros1Dobot_v4_bringupStartDragRequest, Ros1Dobot_v4_bringupStartDragResponse>;

/// Typed dobot_v4_bringup/StartPath call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupStartPathClient =
    ServiceClient<Ros1Dobot_v4_bringupStartPathRequest, Ros1Dobot_v4_bringupStartPathResponse>;

/// Typed dobot_v4_bringup/StartPath advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupStartPathServer =
    ServiceServer<Ros1Dobot_v4_bringupStartPathRequest, Ros1Dobot_v4_bringupStartPathResponse>;

/// Typed dobot_v4_bringup/Stop call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupStopClient =
    ServiceClient<Ros1Dobot_v4_bringupStopRequest, Ros1Dobot_v4_bringupStopResponse>;

/// Typed dobot_v4_bringup/Stop advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupStopServer =
    ServiceServer<Ros1Dobot_v4_bringupStopRequest, Ros1Dobot_v4_bringupStopResponse>;

/// Typed dobot_v4_bringup/StopDrag call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupStopDragClient =
    ServiceClient<Ros1Dobot_v4_bringupStopDragRequest, Ros1Dobot_v4_bringupStopDragResponse>;

/// Typed dobot_v4_bringup/StopDrag advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupStopDragServer =
    ServiceServer<Ros1Dobot_v4_bringupStopDragRequest, Ros1Dobot_v4_bringupStopDragResponse>;

/// Typed dobot_v4_bringup/StopMoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupStopMoveJogClient =
    ServiceClient<Ros1Dobot_v4_bringupStopMoveJogRequest, Ros1Dobot_v4_bringupStopMoveJogResponse>;

/// Typed dobot_v4_bringup/StopMoveJog advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupStopMoveJogServer =
    ServiceServer<Ros1Dobot_v4_bringupStopMoveJogRequest, Ros1Dobot_v4_bringupStopMoveJogResponse>;

/// Typed dobot_v4_bringup/TcpDashboard call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupTcpDashboardClient = ServiceClient<
    Ros1Dobot_v4_bringupTcpDashboardRequest,
    Ros1Dobot_v4_bringupTcpDashboardResponse,
>;

/// Typed dobot_v4_bringup/TcpDashboard advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupTcpDashboardServer = ServiceServer<
    Ros1Dobot_v4_bringupTcpDashboardRequest,
    Ros1Dobot_v4_bringupTcpDashboardResponse,
>;

/// Typed dobot_v4_bringup/Tool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupToolClient =
    ServiceClient<Ros1Dobot_v4_bringupToolRequest, Ros1Dobot_v4_bringupToolResponse>;

/// Typed dobot_v4_bringup/Tool advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupToolServer =
    ServiceServer<Ros1Dobot_v4_bringupToolRequest, Ros1Dobot_v4_bringupToolResponse>;

/// Typed dobot_v4_bringup/ToolAI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupToolAIClient =
    ServiceClient<Ros1Dobot_v4_bringupToolAIRequest, Ros1Dobot_v4_bringupToolAIResponse>;

/// Typed dobot_v4_bringup/ToolAI advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupToolAIServer =
    ServiceServer<Ros1Dobot_v4_bringupToolAIRequest, Ros1Dobot_v4_bringupToolAIResponse>;

/// Typed dobot_v4_bringup/ToolDI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupToolDIClient =
    ServiceClient<Ros1Dobot_v4_bringupToolDIRequest, Ros1Dobot_v4_bringupToolDIResponse>;

/// Typed dobot_v4_bringup/ToolDI advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupToolDIServer =
    ServiceServer<Ros1Dobot_v4_bringupToolDIRequest, Ros1Dobot_v4_bringupToolDIResponse>;

/// Typed dobot_v4_bringup/ToolDO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupToolDOClient =
    ServiceClient<Ros1Dobot_v4_bringupToolDORequest, Ros1Dobot_v4_bringupToolDOResponse>;

/// Typed dobot_v4_bringup/ToolDO advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupToolDOServer =
    ServiceServer<Ros1Dobot_v4_bringupToolDORequest, Ros1Dobot_v4_bringupToolDOResponse>;

/// Typed dobot_v4_bringup/ToolDOInstant call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupToolDOInstantClient = ServiceClient<
    Ros1Dobot_v4_bringupToolDOInstantRequest,
    Ros1Dobot_v4_bringupToolDOInstantResponse,
>;

/// Typed dobot_v4_bringup/ToolDOInstant advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupToolDOInstantServer = ServiceServer<
    Ros1Dobot_v4_bringupToolDOInstantRequest,
    Ros1Dobot_v4_bringupToolDOInstantResponse,
>;

/// Typed dobot_v4_bringup/User call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupUserClient =
    ServiceClient<Ros1Dobot_v4_bringupUserRequest, Ros1Dobot_v4_bringupUserResponse>;

/// Typed dobot_v4_bringup/User advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupUserServer =
    ServiceServer<Ros1Dobot_v4_bringupUserRequest, Ros1Dobot_v4_bringupUserResponse>;

/// Typed dobot_v4_bringup/VelJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupVelJClient =
    ServiceClient<Ros1Dobot_v4_bringupVelJRequest, Ros1Dobot_v4_bringupVelJResponse>;

/// Typed dobot_v4_bringup/VelJ advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupVelJServer =
    ServiceServer<Ros1Dobot_v4_bringupVelJRequest, Ros1Dobot_v4_bringupVelJResponse>;

/// Typed dobot_v4_bringup/VelL call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_v4_bringupVelLClient =
    ServiceClient<Ros1Dobot_v4_bringupVelLRequest, Ros1Dobot_v4_bringupVelLResponse>;

/// Typed dobot_v4_bringup/VelL advertiser/responder with independent grants.
pub type Ros1Dobot_v4_bringupVelLServer =
    ServiceServer<Ros1Dobot_v4_bringupVelLRequest, Ros1Dobot_v4_bringupVelLResponse>;
