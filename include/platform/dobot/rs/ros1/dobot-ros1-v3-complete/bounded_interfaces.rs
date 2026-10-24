//! @file bounded_interfaces.rs
//! @brief Preserve the complete original dobot/ros1_v3 canonical value domain.
//! @details The selected domain contains 198 complete record/components and 362 original fields. Declared
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

/// Complete canonical component bound for dobot_bringup/AIRequest.
impl Component for Ros1Dobot_bringupAIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AIResponse.
impl Component for Ros1Dobot_bringupAIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AORequest.
impl Component for Ros1Dobot_bringupAORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AOResponse.
impl Component for Ros1Dobot_bringupAOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AOExecuteRequest.
impl Component for Ros1Dobot_bringupAOExecuteRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AOExecuteResponse.
impl Component for Ros1Dobot_bringupAOExecuteResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AccJRequest.
impl Component for Ros1Dobot_bringupAccJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AccJResponse.
impl Component for Ros1Dobot_bringupAccJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AccLRequest.
impl Component for Ros1Dobot_bringupAccLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/AccLResponse.
impl Component for Ros1Dobot_bringupAccLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ArcRequest.
impl Component for Ros1Dobot_bringupArcRequest {
    const MAX_WIRE: usize = 4260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ArcResponse.
impl Component for Ros1Dobot_bringupArcResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ArchRequest.
impl Component for Ros1Dobot_bringupArchRequest {
    const MAX_WIRE: usize = 4168;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ArchResponse.
impl Component for Ros1Dobot_bringupArchResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/BrakeControlRequest.
impl Component for Ros1Dobot_bringupBrakeControlRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/BrakeControlResponse.
impl Component for Ros1Dobot_bringupBrakeControlResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/CPRequest.
impl Component for Ros1Dobot_bringupCPRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/CPResponse.
impl Component for Ros1Dobot_bringupCPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/CircleRequest.
impl Component for Ros1Dobot_bringupCircleRequest {
    const MAX_WIRE: usize = 4264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/CircleResponse.
impl Component for Ros1Dobot_bringupCircleResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ClearErrorRequest.
impl Component for Ros1Dobot_bringupClearErrorRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ClearErrorResponse.
impl Component for Ros1Dobot_bringupClearErrorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ContinueScriptRequest.
impl Component for Ros1Dobot_bringupContinueScriptRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ContinueScriptResponse.
impl Component for Ros1Dobot_bringupContinueScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ContinuesRequest.
impl Component for Ros1Dobot_bringupContinuesRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ContinuesResponse.
impl Component for Ros1Dobot_bringupContinuesResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DIRequest.
impl Component for Ros1Dobot_bringupDIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DIResponse.
impl Component for Ros1Dobot_bringupDIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DIGroupRequest.
impl Component for Ros1Dobot_bringupDIGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DIGroupResponse.
impl Component for Ros1Dobot_bringupDIGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DORequest.
impl Component for Ros1Dobot_bringupDORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DOResponse.
impl Component for Ros1Dobot_bringupDOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DOExecuteRequest.
impl Component for Ros1Dobot_bringupDOExecuteRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DOExecuteResponse.
impl Component for Ros1Dobot_bringupDOExecuteResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DOGroupRequest.
impl Component for Ros1Dobot_bringupDOGroupRequest {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DOGroupResponse.
impl Component for Ros1Dobot_bringupDOGroupResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DigitalOutputsRequest.
impl Component for Ros1Dobot_bringupDigitalOutputsRequest {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DigitalOutputsResponse.
impl Component for Ros1Dobot_bringupDigitalOutputsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DisableRobotRequest.
impl Component for Ros1Dobot_bringupDisableRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/DisableRobotResponse.
impl Component for Ros1Dobot_bringupDisableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/EmergencyStopRequest.
impl Component for Ros1Dobot_bringupEmergencyStopRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/EmergencyStopResponse.
impl Component for Ros1Dobot_bringupEmergencyStopResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/EnableRobotRequest.
impl Component for Ros1Dobot_bringupEnableRobotRequest {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/EnableRobotResponse.
impl Component for Ros1Dobot_bringupEnableRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetAngleRequest.
impl Component for Ros1Dobot_bringupGetAngleRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetAngleResponse.
impl Component for Ros1Dobot_bringupGetAngleResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetCoilsRequest.
impl Component for Ros1Dobot_bringupGetCoilsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetCoilsResponse.
impl Component for Ros1Dobot_bringupGetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetErrorIDRequest.
impl Component for Ros1Dobot_bringupGetErrorIDRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetErrorIDResponse.
impl Component for Ros1Dobot_bringupGetErrorIDResponse {
    const MAX_WIRE: usize = 72;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetHoldRegsRequest.
impl Component for Ros1Dobot_bringupGetHoldRegsRequest {
    const MAX_WIRE: usize = 4176;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetHoldRegsResponse.
impl Component for Ros1Dobot_bringupGetHoldRegsResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetInBitsRequest.
impl Component for Ros1Dobot_bringupGetInBitsRequest {
    const MAX_WIRE: usize = 12;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetInBitsResponse.
impl Component for Ros1Dobot_bringupGetInBitsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetInRegsRequest.
impl Component for Ros1Dobot_bringupGetInRegsRequest {
    const MAX_WIRE: usize = 4176;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetInRegsResponse.
impl Component for Ros1Dobot_bringupGetInRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetPathStartPoseRequest.
impl Component for Ros1Dobot_bringupGetPathStartPoseRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetPathStartPoseResponse.
impl Component for Ros1Dobot_bringupGetPathStartPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetPoseRequest.
impl Component for Ros1Dobot_bringupGetPoseRequest {
    const MAX_WIRE: usize = 136;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetPoseResponse.
impl Component for Ros1Dobot_bringupGetPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetSixForceDataRequest.
impl Component for Ros1Dobot_bringupGetSixForceDataRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetSixForceDataResponse.
impl Component for Ros1Dobot_bringupGetSixForceDataResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetTerminal485Request.
impl Component for Ros1Dobot_bringupGetTerminal485Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetTerminal485Response.
impl Component for Ros1Dobot_bringupGetTerminal485Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetTraceStartPoseRequest.
impl Component for Ros1Dobot_bringupGetTraceStartPoseRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/GetTraceStartPoseResponse.
impl Component for Ros1Dobot_bringupGetTraceStartPoseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/HandleTrajPointsRequest.
impl Component for Ros1Dobot_bringupHandleTrajPointsRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/HandleTrajPointsResponse.
impl Component for Ros1Dobot_bringupHandleTrajPointsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/InverseSolutionRequest.
impl Component for Ros1Dobot_bringupInverseSolutionRequest {
    const MAX_WIRE: usize = 320;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/InverseSolutionResponse.
impl Component for Ros1Dobot_bringupInverseSolutionResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/JointMovJRequest.
impl Component for Ros1Dobot_bringupJointMovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/JointMovJResponse.
impl Component for Ros1Dobot_bringupJointMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/JumpRequest.
impl Component for Ros1Dobot_bringupJumpRequest {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/JumpResponse.
impl Component for Ros1Dobot_bringupJumpResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/LimZRequest.
impl Component for Ros1Dobot_bringupLimZRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/LimZResponse.
impl Component for Ros1Dobot_bringupLimZResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/LoadSwitchRequest.
impl Component for Ros1Dobot_bringupLoadSwitchRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/LoadSwitchResponse.
impl Component for Ros1Dobot_bringupLoadSwitchResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ModbusCloseRequest.
impl Component for Ros1Dobot_bringupModbusCloseRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ModbusCloseResponse.
impl Component for Ros1Dobot_bringupModbusCloseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ModbusCreateRequest.
impl Component for Ros1Dobot_bringupModbusCreateRequest {
    const MAX_WIRE: usize = 336;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ModbusCreateResponse.
impl Component for Ros1Dobot_bringupModbusCreateResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovJRequest.
impl Component for Ros1Dobot_bringupMovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovJResponse.
impl Component for Ros1Dobot_bringupMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovJExtRequest.
impl Component for Ros1Dobot_bringupMovJExtRequest {
    const MAX_WIRE: usize = 4172;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovJExtResponse.
impl Component for Ros1Dobot_bringupMovJExtResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovJIORequest.
impl Component for Ros1Dobot_bringupMovJIORequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovJIOResponse.
impl Component for Ros1Dobot_bringupMovJIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovLRequest.
impl Component for Ros1Dobot_bringupMovLRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovLResponse.
impl Component for Ros1Dobot_bringupMovLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovLIORequest.
impl Component for Ros1Dobot_bringupMovLIORequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MovLIOResponse.
impl Component for Ros1Dobot_bringupMovLIOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MoveJogRequest.
impl Component for Ros1Dobot_bringupMoveJogRequest {
    const MAX_WIRE: usize = 4424;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/MoveJogResponse.
impl Component for Ros1Dobot_bringupMoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PauseScriptRequest.
impl Component for Ros1Dobot_bringupPauseScriptRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PauseScriptResponse.
impl Component for Ros1Dobot_bringupPauseScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PayLoadRequest.
impl Component for Ros1Dobot_bringupPayLoadRequest {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PayLoadResponse.
impl Component for Ros1Dobot_bringupPayLoadResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PositiveSolutionRequest.
impl Component for Ros1Dobot_bringupPositiveSolutionRequest {
    const MAX_WIRE: usize = 56;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PositiveSolutionResponse.
impl Component for Ros1Dobot_bringupPositiveSolutionResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PowerOnRequest.
impl Component for Ros1Dobot_bringupPowerOnRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/PowerOnResponse.
impl Component for Ros1Dobot_bringupPowerOnResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelJointMovJRequest.
impl Component for Ros1Dobot_bringupRelJointMovJRequest {
    const MAX_WIRE: usize = 4212;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelJointMovJResponse.
impl Component for Ros1Dobot_bringupRelJointMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovJRequest.
impl Component for Ros1Dobot_bringupRelMovJRequest {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovJResponse.
impl Component for Ros1Dobot_bringupRelMovJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovJToolRequest.
impl Component for Ros1Dobot_bringupRelMovJToolRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovJToolResponse.
impl Component for Ros1Dobot_bringupRelMovJToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovJUserRequest.
impl Component for Ros1Dobot_bringupRelMovJUserRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovJUserResponse.
impl Component for Ros1Dobot_bringupRelMovJUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovLRequest.
impl Component for Ros1Dobot_bringupRelMovLRequest {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovLResponse.
impl Component for Ros1Dobot_bringupRelMovLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovLToolRequest.
impl Component for Ros1Dobot_bringupRelMovLToolRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovLToolResponse.
impl Component for Ros1Dobot_bringupRelMovLToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovLUserRequest.
impl Component for Ros1Dobot_bringupRelMovLUserRequest {
    const MAX_WIRE: usize = 4216;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RelMovLUserResponse.
impl Component for Ros1Dobot_bringupRelMovLUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ResetRobotRequest.
impl Component for Ros1Dobot_bringupResetRobotRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ResetRobotResponse.
impl Component for Ros1Dobot_bringupResetRobotResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RobotModeRequest.
impl Component for Ros1Dobot_bringupRobotModeRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RobotModeResponse.
impl Component for Ros1Dobot_bringupRobotModeResponse {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RunScriptRequest.
impl Component for Ros1Dobot_bringupRunScriptRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/RunScriptResponse.
impl Component for Ros1Dobot_bringupRunScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ServoJRequest.
impl Component for Ros1Dobot_bringupServoJRequest {
    const MAX_WIRE: usize = 444;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ServoJResponse.
impl Component for Ros1Dobot_bringupServoJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ServoJParamRequest.
impl Component for Ros1Dobot_bringupServoJParamRequest {
    const MAX_WIRE: usize = 32;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ServoJParamResponse.
impl Component for Ros1Dobot_bringupServoJParamResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ServoPRequest.
impl Component for Ros1Dobot_bringupServoPRequest {
    const MAX_WIRE: usize = 48;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ServoPResponse.
impl Component for Ros1Dobot_bringupServoPResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetArmOrientationRequest.
impl Component for Ros1Dobot_bringupSetArmOrientationRequest {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetArmOrientationResponse.
impl Component for Ros1Dobot_bringupSetArmOrientationResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetCoilsRequest.
impl Component for Ros1Dobot_bringupSetCoilsRequest {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetCoilsResponse.
impl Component for Ros1Dobot_bringupSetCoilsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetCollideDragRequest.
impl Component for Ros1Dobot_bringupSetCollideDragRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetCollideDragResponse.
impl Component for Ros1Dobot_bringupSetCollideDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetCollisionLevelRequest.
impl Component for Ros1Dobot_bringupSetCollisionLevelRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetCollisionLevelResponse.
impl Component for Ros1Dobot_bringupSetCollisionLevelResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetHoldRegsRequest.
impl Component for Ros1Dobot_bringupSetHoldRegsRequest {
    const MAX_WIRE: usize = 4436;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetHoldRegsResponse.
impl Component for Ros1Dobot_bringupSetHoldRegsResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetObstacleAvoidRequest.
impl Component for Ros1Dobot_bringupSetObstacleAvoidRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetObstacleAvoidResponse.
impl Component for Ros1Dobot_bringupSetObstacleAvoidResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetPayloadRequest.
impl Component for Ros1Dobot_bringupSetPayloadRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetPayloadResponse.
impl Component for Ros1Dobot_bringupSetPayloadResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetSafeSkinRequest.
impl Component for Ros1Dobot_bringupSetSafeSkinRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetSafeSkinResponse.
impl Component for Ros1Dobot_bringupSetSafeSkinResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetTerminal485Request.
impl Component for Ros1Dobot_bringupSetTerminal485Request {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetTerminal485Response.
impl Component for Ros1Dobot_bringupSetTerminal485Response {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetTerminalKeysRequest.
impl Component for Ros1Dobot_bringupSetTerminalKeysRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SetTerminalKeysResponse.
impl Component for Ros1Dobot_bringupSetTerminalKeysResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SpeedFactorRequest.
impl Component for Ros1Dobot_bringupSpeedFactorRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SpeedFactorResponse.
impl Component for Ros1Dobot_bringupSpeedFactorResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SpeedJRequest.
impl Component for Ros1Dobot_bringupSpeedJRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SpeedJResponse.
impl Component for Ros1Dobot_bringupSpeedJResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SpeedLRequest.
impl Component for Ros1Dobot_bringupSpeedLRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SpeedLResponse.
impl Component for Ros1Dobot_bringupSpeedLResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartDragRequest.
impl Component for Ros1Dobot_bringupStartDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartDragResponse.
impl Component for Ros1Dobot_bringupStartDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartFCTraceRequest.
impl Component for Ros1Dobot_bringupStartFCTraceRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartFCTraceResponse.
impl Component for Ros1Dobot_bringupStartFCTraceResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartPathRequest.
impl Component for Ros1Dobot_bringupStartPathRequest {
    const MAX_WIRE: usize = 268;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartPathResponse.
impl Component for Ros1Dobot_bringupStartPathResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartTraceRequest.
impl Component for Ros1Dobot_bringupStartTraceRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StartTraceResponse.
impl Component for Ros1Dobot_bringupStartTraceResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StopDragRequest.
impl Component for Ros1Dobot_bringupStopDragRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StopDragResponse.
impl Component for Ros1Dobot_bringupStopDragResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StopScriptRequest.
impl Component for Ros1Dobot_bringupStopScriptRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StopScriptResponse.
impl Component for Ros1Dobot_bringupStopScriptResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StopmoveJogRequest.
impl Component for Ros1Dobot_bringupStopmoveJogRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/StopmoveJogResponse.
impl Component for Ros1Dobot_bringupStopmoveJogResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SyncRequest.
impl Component for Ros1Dobot_bringupSyncRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SyncResponse.
impl Component for Ros1Dobot_bringupSyncResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SyncAllRequest.
impl Component for Ros1Dobot_bringupSyncAllRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/SyncAllResponse.
impl Component for Ros1Dobot_bringupSyncAllResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TCPSpeedRequest.
impl Component for Ros1Dobot_bringupTCPSpeedRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TCPSpeedResponse.
impl Component for Ros1Dobot_bringupTCPSpeedResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TCPSpeedEndRequest.
impl Component for Ros1Dobot_bringupTCPSpeedEndRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TCPSpeedEndResponse.
impl Component for Ros1Dobot_bringupTCPSpeedEndResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TcpDashboardRequest.
impl Component for Ros1Dobot_bringupTcpDashboardRequest {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TcpDashboardResponse.
impl Component for Ros1Dobot_bringupTcpDashboardResponse {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TcpRealDataRequest.
impl Component for Ros1Dobot_bringupTcpRealDataRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/TcpRealDataResponse.
impl Component for Ros1Dobot_bringupTcpRealDataResponse {
    const MAX_WIRE: usize = 20;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolRequest.
impl Component for Ros1Dobot_bringupToolRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolResponse.
impl Component for Ros1Dobot_bringupToolResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolAIRequest.
impl Component for Ros1Dobot_bringupToolAIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolAIResponse.
impl Component for Ros1Dobot_bringupToolAIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolDIRequest.
impl Component for Ros1Dobot_bringupToolDIRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolDIResponse.
impl Component for Ros1Dobot_bringupToolDIResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolDORequest.
impl Component for Ros1Dobot_bringupToolDORequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolDOResponse.
impl Component for Ros1Dobot_bringupToolDOResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolDOExecuteRequest.
impl Component for Ros1Dobot_bringupToolDOExecuteRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/ToolDOExecuteResponse.
impl Component for Ros1Dobot_bringupToolDOExecuteResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/UserRequest.
impl Component for Ros1Dobot_bringupUserRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/UserResponse.
impl Component for Ros1Dobot_bringupUserResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/WaitRequest.
impl Component for Ros1Dobot_bringupWaitRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/WaitResponse.
impl Component for Ros1Dobot_bringupWaitResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/pauseRequest.
impl Component for Ros1Dobot_bringupPauseRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for dobot_bringup/pauseResponse.
impl Component for Ros1Dobot_bringupPauseResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Typed dobot_bringup/AI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupAIClient =
    ServiceClient<Ros1Dobot_bringupAIRequest, Ros1Dobot_bringupAIResponse>;

/// Typed dobot_bringup/AI advertiser/responder with independent grants.
pub type Ros1Dobot_bringupAIServer =
    ServiceServer<Ros1Dobot_bringupAIRequest, Ros1Dobot_bringupAIResponse>;

/// Typed dobot_bringup/AO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupAOClient =
    ServiceClient<Ros1Dobot_bringupAORequest, Ros1Dobot_bringupAOResponse>;

/// Typed dobot_bringup/AO advertiser/responder with independent grants.
pub type Ros1Dobot_bringupAOServer =
    ServiceServer<Ros1Dobot_bringupAORequest, Ros1Dobot_bringupAOResponse>;

/// Typed dobot_bringup/AOExecute call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupAOExecuteClient =
    ServiceClient<Ros1Dobot_bringupAOExecuteRequest, Ros1Dobot_bringupAOExecuteResponse>;

/// Typed dobot_bringup/AOExecute advertiser/responder with independent grants.
pub type Ros1Dobot_bringupAOExecuteServer =
    ServiceServer<Ros1Dobot_bringupAOExecuteRequest, Ros1Dobot_bringupAOExecuteResponse>;

/// Typed dobot_bringup/AccJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupAccJClient =
    ServiceClient<Ros1Dobot_bringupAccJRequest, Ros1Dobot_bringupAccJResponse>;

/// Typed dobot_bringup/AccJ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupAccJServer =
    ServiceServer<Ros1Dobot_bringupAccJRequest, Ros1Dobot_bringupAccJResponse>;

/// Typed dobot_bringup/AccL call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupAccLClient =
    ServiceClient<Ros1Dobot_bringupAccLRequest, Ros1Dobot_bringupAccLResponse>;

/// Typed dobot_bringup/AccL advertiser/responder with independent grants.
pub type Ros1Dobot_bringupAccLServer =
    ServiceServer<Ros1Dobot_bringupAccLRequest, Ros1Dobot_bringupAccLResponse>;

/// Typed dobot_bringup/Arc call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupArcClient =
    ServiceClient<Ros1Dobot_bringupArcRequest, Ros1Dobot_bringupArcResponse>;

/// Typed dobot_bringup/Arc advertiser/responder with independent grants.
pub type Ros1Dobot_bringupArcServer =
    ServiceServer<Ros1Dobot_bringupArcRequest, Ros1Dobot_bringupArcResponse>;

/// Typed dobot_bringup/Arch call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupArchClient =
    ServiceClient<Ros1Dobot_bringupArchRequest, Ros1Dobot_bringupArchResponse>;

/// Typed dobot_bringup/Arch advertiser/responder with independent grants.
pub type Ros1Dobot_bringupArchServer =
    ServiceServer<Ros1Dobot_bringupArchRequest, Ros1Dobot_bringupArchResponse>;

/// Typed dobot_bringup/BrakeControl call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupBrakeControlClient =
    ServiceClient<Ros1Dobot_bringupBrakeControlRequest, Ros1Dobot_bringupBrakeControlResponse>;

/// Typed dobot_bringup/BrakeControl advertiser/responder with independent grants.
pub type Ros1Dobot_bringupBrakeControlServer =
    ServiceServer<Ros1Dobot_bringupBrakeControlRequest, Ros1Dobot_bringupBrakeControlResponse>;

/// Typed dobot_bringup/CP call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupCPClient =
    ServiceClient<Ros1Dobot_bringupCPRequest, Ros1Dobot_bringupCPResponse>;

/// Typed dobot_bringup/CP advertiser/responder with independent grants.
pub type Ros1Dobot_bringupCPServer =
    ServiceServer<Ros1Dobot_bringupCPRequest, Ros1Dobot_bringupCPResponse>;

/// Typed dobot_bringup/Circle call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupCircleClient =
    ServiceClient<Ros1Dobot_bringupCircleRequest, Ros1Dobot_bringupCircleResponse>;

/// Typed dobot_bringup/Circle advertiser/responder with independent grants.
pub type Ros1Dobot_bringupCircleServer =
    ServiceServer<Ros1Dobot_bringupCircleRequest, Ros1Dobot_bringupCircleResponse>;

/// Typed dobot_bringup/ClearError call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupClearErrorClient =
    ServiceClient<Ros1Dobot_bringupClearErrorRequest, Ros1Dobot_bringupClearErrorResponse>;

/// Typed dobot_bringup/ClearError advertiser/responder with independent grants.
pub type Ros1Dobot_bringupClearErrorServer =
    ServiceServer<Ros1Dobot_bringupClearErrorRequest, Ros1Dobot_bringupClearErrorResponse>;

/// Typed dobot_bringup/ContinueScript call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupContinueScriptClient =
    ServiceClient<Ros1Dobot_bringupContinueScriptRequest, Ros1Dobot_bringupContinueScriptResponse>;

/// Typed dobot_bringup/ContinueScript advertiser/responder with independent grants.
pub type Ros1Dobot_bringupContinueScriptServer =
    ServiceServer<Ros1Dobot_bringupContinueScriptRequest, Ros1Dobot_bringupContinueScriptResponse>;

/// Typed dobot_bringup/Continues call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupContinuesClient =
    ServiceClient<Ros1Dobot_bringupContinuesRequest, Ros1Dobot_bringupContinuesResponse>;

/// Typed dobot_bringup/Continues advertiser/responder with independent grants.
pub type Ros1Dobot_bringupContinuesServer =
    ServiceServer<Ros1Dobot_bringupContinuesRequest, Ros1Dobot_bringupContinuesResponse>;

/// Typed dobot_bringup/DI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupDIClient =
    ServiceClient<Ros1Dobot_bringupDIRequest, Ros1Dobot_bringupDIResponse>;

/// Typed dobot_bringup/DI advertiser/responder with independent grants.
pub type Ros1Dobot_bringupDIServer =
    ServiceServer<Ros1Dobot_bringupDIRequest, Ros1Dobot_bringupDIResponse>;

/// Typed dobot_bringup/DIGroup call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupDIGroupClient =
    ServiceClient<Ros1Dobot_bringupDIGroupRequest, Ros1Dobot_bringupDIGroupResponse>;

/// Typed dobot_bringup/DIGroup advertiser/responder with independent grants.
pub type Ros1Dobot_bringupDIGroupServer =
    ServiceServer<Ros1Dobot_bringupDIGroupRequest, Ros1Dobot_bringupDIGroupResponse>;

/// Typed dobot_bringup/DO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupDOClient =
    ServiceClient<Ros1Dobot_bringupDORequest, Ros1Dobot_bringupDOResponse>;

/// Typed dobot_bringup/DO advertiser/responder with independent grants.
pub type Ros1Dobot_bringupDOServer =
    ServiceServer<Ros1Dobot_bringupDORequest, Ros1Dobot_bringupDOResponse>;

/// Typed dobot_bringup/DOExecute call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupDOExecuteClient =
    ServiceClient<Ros1Dobot_bringupDOExecuteRequest, Ros1Dobot_bringupDOExecuteResponse>;

/// Typed dobot_bringup/DOExecute advertiser/responder with independent grants.
pub type Ros1Dobot_bringupDOExecuteServer =
    ServiceServer<Ros1Dobot_bringupDOExecuteRequest, Ros1Dobot_bringupDOExecuteResponse>;

/// Typed dobot_bringup/DOGroup call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupDOGroupClient =
    ServiceClient<Ros1Dobot_bringupDOGroupRequest, Ros1Dobot_bringupDOGroupResponse>;

/// Typed dobot_bringup/DOGroup advertiser/responder with independent grants.
pub type Ros1Dobot_bringupDOGroupServer =
    ServiceServer<Ros1Dobot_bringupDOGroupRequest, Ros1Dobot_bringupDOGroupResponse>;

/// Typed dobot_bringup/DigitalOutputs call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupDigitalOutputsClient =
    ServiceClient<Ros1Dobot_bringupDigitalOutputsRequest, Ros1Dobot_bringupDigitalOutputsResponse>;

/// Typed dobot_bringup/DigitalOutputs advertiser/responder with independent grants.
pub type Ros1Dobot_bringupDigitalOutputsServer =
    ServiceServer<Ros1Dobot_bringupDigitalOutputsRequest, Ros1Dobot_bringupDigitalOutputsResponse>;

/// Typed dobot_bringup/DisableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupDisableRobotClient =
    ServiceClient<Ros1Dobot_bringupDisableRobotRequest, Ros1Dobot_bringupDisableRobotResponse>;

/// Typed dobot_bringup/DisableRobot advertiser/responder with independent grants.
pub type Ros1Dobot_bringupDisableRobotServer =
    ServiceServer<Ros1Dobot_bringupDisableRobotRequest, Ros1Dobot_bringupDisableRobotResponse>;

/// Typed dobot_bringup/EmergencyStop call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupEmergencyStopClient =
    ServiceClient<Ros1Dobot_bringupEmergencyStopRequest, Ros1Dobot_bringupEmergencyStopResponse>;

/// Typed dobot_bringup/EmergencyStop advertiser/responder with independent grants.
pub type Ros1Dobot_bringupEmergencyStopServer =
    ServiceServer<Ros1Dobot_bringupEmergencyStopRequest, Ros1Dobot_bringupEmergencyStopResponse>;

/// Typed dobot_bringup/EnableRobot call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupEnableRobotClient =
    ServiceClient<Ros1Dobot_bringupEnableRobotRequest, Ros1Dobot_bringupEnableRobotResponse>;

/// Typed dobot_bringup/EnableRobot advertiser/responder with independent grants.
pub type Ros1Dobot_bringupEnableRobotServer =
    ServiceServer<Ros1Dobot_bringupEnableRobotRequest, Ros1Dobot_bringupEnableRobotResponse>;

/// Typed dobot_bringup/GetAngle call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetAngleClient =
    ServiceClient<Ros1Dobot_bringupGetAngleRequest, Ros1Dobot_bringupGetAngleResponse>;

/// Typed dobot_bringup/GetAngle advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetAngleServer =
    ServiceServer<Ros1Dobot_bringupGetAngleRequest, Ros1Dobot_bringupGetAngleResponse>;

/// Typed dobot_bringup/GetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetCoilsClient =
    ServiceClient<Ros1Dobot_bringupGetCoilsRequest, Ros1Dobot_bringupGetCoilsResponse>;

/// Typed dobot_bringup/GetCoils advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetCoilsServer =
    ServiceServer<Ros1Dobot_bringupGetCoilsRequest, Ros1Dobot_bringupGetCoilsResponse>;

/// Typed dobot_bringup/GetErrorID call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetErrorIDClient =
    ServiceClient<Ros1Dobot_bringupGetErrorIDRequest, Ros1Dobot_bringupGetErrorIDResponse>;

/// Typed dobot_bringup/GetErrorID advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetErrorIDServer =
    ServiceServer<Ros1Dobot_bringupGetErrorIDRequest, Ros1Dobot_bringupGetErrorIDResponse>;

/// Typed dobot_bringup/GetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetHoldRegsClient =
    ServiceClient<Ros1Dobot_bringupGetHoldRegsRequest, Ros1Dobot_bringupGetHoldRegsResponse>;

/// Typed dobot_bringup/GetHoldRegs advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetHoldRegsServer =
    ServiceServer<Ros1Dobot_bringupGetHoldRegsRequest, Ros1Dobot_bringupGetHoldRegsResponse>;

/// Typed dobot_bringup/GetInBits call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetInBitsClient =
    ServiceClient<Ros1Dobot_bringupGetInBitsRequest, Ros1Dobot_bringupGetInBitsResponse>;

/// Typed dobot_bringup/GetInBits advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetInBitsServer =
    ServiceServer<Ros1Dobot_bringupGetInBitsRequest, Ros1Dobot_bringupGetInBitsResponse>;

/// Typed dobot_bringup/GetInRegs call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetInRegsClient =
    ServiceClient<Ros1Dobot_bringupGetInRegsRequest, Ros1Dobot_bringupGetInRegsResponse>;

/// Typed dobot_bringup/GetInRegs advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetInRegsServer =
    ServiceServer<Ros1Dobot_bringupGetInRegsRequest, Ros1Dobot_bringupGetInRegsResponse>;

/// Typed dobot_bringup/GetPathStartPose call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetPathStartPoseClient = ServiceClient<
    Ros1Dobot_bringupGetPathStartPoseRequest,
    Ros1Dobot_bringupGetPathStartPoseResponse,
>;

/// Typed dobot_bringup/GetPathStartPose advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetPathStartPoseServer = ServiceServer<
    Ros1Dobot_bringupGetPathStartPoseRequest,
    Ros1Dobot_bringupGetPathStartPoseResponse,
>;

/// Typed dobot_bringup/GetPose call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetPoseClient =
    ServiceClient<Ros1Dobot_bringupGetPoseRequest, Ros1Dobot_bringupGetPoseResponse>;

/// Typed dobot_bringup/GetPose advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetPoseServer =
    ServiceServer<Ros1Dobot_bringupGetPoseRequest, Ros1Dobot_bringupGetPoseResponse>;

/// Typed dobot_bringup/GetSixForceData call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetSixForceDataClient = ServiceClient<
    Ros1Dobot_bringupGetSixForceDataRequest,
    Ros1Dobot_bringupGetSixForceDataResponse,
>;

/// Typed dobot_bringup/GetSixForceData advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetSixForceDataServer = ServiceServer<
    Ros1Dobot_bringupGetSixForceDataRequest,
    Ros1Dobot_bringupGetSixForceDataResponse,
>;

/// Typed dobot_bringup/GetTerminal485 call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetTerminal485Client =
    ServiceClient<Ros1Dobot_bringupGetTerminal485Request, Ros1Dobot_bringupGetTerminal485Response>;

/// Typed dobot_bringup/GetTerminal485 advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetTerminal485Server =
    ServiceServer<Ros1Dobot_bringupGetTerminal485Request, Ros1Dobot_bringupGetTerminal485Response>;

/// Typed dobot_bringup/GetTraceStartPose call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupGetTraceStartPoseClient = ServiceClient<
    Ros1Dobot_bringupGetTraceStartPoseRequest,
    Ros1Dobot_bringupGetTraceStartPoseResponse,
>;

/// Typed dobot_bringup/GetTraceStartPose advertiser/responder with independent grants.
pub type Ros1Dobot_bringupGetTraceStartPoseServer = ServiceServer<
    Ros1Dobot_bringupGetTraceStartPoseRequest,
    Ros1Dobot_bringupGetTraceStartPoseResponse,
>;

/// Typed dobot_bringup/HandleTrajPoints call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupHandleTrajPointsClient = ServiceClient<
    Ros1Dobot_bringupHandleTrajPointsRequest,
    Ros1Dobot_bringupHandleTrajPointsResponse,
>;

/// Typed dobot_bringup/HandleTrajPoints advertiser/responder with independent grants.
pub type Ros1Dobot_bringupHandleTrajPointsServer = ServiceServer<
    Ros1Dobot_bringupHandleTrajPointsRequest,
    Ros1Dobot_bringupHandleTrajPointsResponse,
>;

/// Typed dobot_bringup/InverseSolution call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupInverseSolutionClient = ServiceClient<
    Ros1Dobot_bringupInverseSolutionRequest,
    Ros1Dobot_bringupInverseSolutionResponse,
>;

/// Typed dobot_bringup/InverseSolution advertiser/responder with independent grants.
pub type Ros1Dobot_bringupInverseSolutionServer = ServiceServer<
    Ros1Dobot_bringupInverseSolutionRequest,
    Ros1Dobot_bringupInverseSolutionResponse,
>;

/// Typed dobot_bringup/JointMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupJointMovJClient =
    ServiceClient<Ros1Dobot_bringupJointMovJRequest, Ros1Dobot_bringupJointMovJResponse>;

/// Typed dobot_bringup/JointMovJ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupJointMovJServer =
    ServiceServer<Ros1Dobot_bringupJointMovJRequest, Ros1Dobot_bringupJointMovJResponse>;

/// Typed dobot_bringup/Jump call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupJumpClient =
    ServiceClient<Ros1Dobot_bringupJumpRequest, Ros1Dobot_bringupJumpResponse>;

/// Typed dobot_bringup/Jump advertiser/responder with independent grants.
pub type Ros1Dobot_bringupJumpServer =
    ServiceServer<Ros1Dobot_bringupJumpRequest, Ros1Dobot_bringupJumpResponse>;

/// Typed dobot_bringup/LimZ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupLimZClient =
    ServiceClient<Ros1Dobot_bringupLimZRequest, Ros1Dobot_bringupLimZResponse>;

/// Typed dobot_bringup/LimZ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupLimZServer =
    ServiceServer<Ros1Dobot_bringupLimZRequest, Ros1Dobot_bringupLimZResponse>;

/// Typed dobot_bringup/LoadSwitch call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupLoadSwitchClient =
    ServiceClient<Ros1Dobot_bringupLoadSwitchRequest, Ros1Dobot_bringupLoadSwitchResponse>;

/// Typed dobot_bringup/LoadSwitch advertiser/responder with independent grants.
pub type Ros1Dobot_bringupLoadSwitchServer =
    ServiceServer<Ros1Dobot_bringupLoadSwitchRequest, Ros1Dobot_bringupLoadSwitchResponse>;

/// Typed dobot_bringup/ModbusClose call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupModbusCloseClient =
    ServiceClient<Ros1Dobot_bringupModbusCloseRequest, Ros1Dobot_bringupModbusCloseResponse>;

/// Typed dobot_bringup/ModbusClose advertiser/responder with independent grants.
pub type Ros1Dobot_bringupModbusCloseServer =
    ServiceServer<Ros1Dobot_bringupModbusCloseRequest, Ros1Dobot_bringupModbusCloseResponse>;

/// Typed dobot_bringup/ModbusCreate call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupModbusCreateClient =
    ServiceClient<Ros1Dobot_bringupModbusCreateRequest, Ros1Dobot_bringupModbusCreateResponse>;

/// Typed dobot_bringup/ModbusCreate advertiser/responder with independent grants.
pub type Ros1Dobot_bringupModbusCreateServer =
    ServiceServer<Ros1Dobot_bringupModbusCreateRequest, Ros1Dobot_bringupModbusCreateResponse>;

/// Typed dobot_bringup/MovJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupMovJClient =
    ServiceClient<Ros1Dobot_bringupMovJRequest, Ros1Dobot_bringupMovJResponse>;

/// Typed dobot_bringup/MovJ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupMovJServer =
    ServiceServer<Ros1Dobot_bringupMovJRequest, Ros1Dobot_bringupMovJResponse>;

/// Typed dobot_bringup/MovJExt call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupMovJExtClient =
    ServiceClient<Ros1Dobot_bringupMovJExtRequest, Ros1Dobot_bringupMovJExtResponse>;

/// Typed dobot_bringup/MovJExt advertiser/responder with independent grants.
pub type Ros1Dobot_bringupMovJExtServer =
    ServiceServer<Ros1Dobot_bringupMovJExtRequest, Ros1Dobot_bringupMovJExtResponse>;

/// Typed dobot_bringup/MovJIO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupMovJIOClient =
    ServiceClient<Ros1Dobot_bringupMovJIORequest, Ros1Dobot_bringupMovJIOResponse>;

/// Typed dobot_bringup/MovJIO advertiser/responder with independent grants.
pub type Ros1Dobot_bringupMovJIOServer =
    ServiceServer<Ros1Dobot_bringupMovJIORequest, Ros1Dobot_bringupMovJIOResponse>;

/// Typed dobot_bringup/MovL call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupMovLClient =
    ServiceClient<Ros1Dobot_bringupMovLRequest, Ros1Dobot_bringupMovLResponse>;

/// Typed dobot_bringup/MovL advertiser/responder with independent grants.
pub type Ros1Dobot_bringupMovLServer =
    ServiceServer<Ros1Dobot_bringupMovLRequest, Ros1Dobot_bringupMovLResponse>;

/// Typed dobot_bringup/MovLIO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupMovLIOClient =
    ServiceClient<Ros1Dobot_bringupMovLIORequest, Ros1Dobot_bringupMovLIOResponse>;

/// Typed dobot_bringup/MovLIO advertiser/responder with independent grants.
pub type Ros1Dobot_bringupMovLIOServer =
    ServiceServer<Ros1Dobot_bringupMovLIORequest, Ros1Dobot_bringupMovLIOResponse>;

/// Typed dobot_bringup/MoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupMoveJogClient =
    ServiceClient<Ros1Dobot_bringupMoveJogRequest, Ros1Dobot_bringupMoveJogResponse>;

/// Typed dobot_bringup/MoveJog advertiser/responder with independent grants.
pub type Ros1Dobot_bringupMoveJogServer =
    ServiceServer<Ros1Dobot_bringupMoveJogRequest, Ros1Dobot_bringupMoveJogResponse>;

/// Typed dobot_bringup/PauseScript call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupPauseScriptClient =
    ServiceClient<Ros1Dobot_bringupPauseScriptRequest, Ros1Dobot_bringupPauseScriptResponse>;

/// Typed dobot_bringup/PauseScript advertiser/responder with independent grants.
pub type Ros1Dobot_bringupPauseScriptServer =
    ServiceServer<Ros1Dobot_bringupPauseScriptRequest, Ros1Dobot_bringupPauseScriptResponse>;

/// Typed dobot_bringup/PayLoad call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupPayLoadClient =
    ServiceClient<Ros1Dobot_bringupPayLoadRequest, Ros1Dobot_bringupPayLoadResponse>;

/// Typed dobot_bringup/PayLoad advertiser/responder with independent grants.
pub type Ros1Dobot_bringupPayLoadServer =
    ServiceServer<Ros1Dobot_bringupPayLoadRequest, Ros1Dobot_bringupPayLoadResponse>;

/// Typed dobot_bringup/PositiveSolution call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupPositiveSolutionClient = ServiceClient<
    Ros1Dobot_bringupPositiveSolutionRequest,
    Ros1Dobot_bringupPositiveSolutionResponse,
>;

/// Typed dobot_bringup/PositiveSolution advertiser/responder with independent grants.
pub type Ros1Dobot_bringupPositiveSolutionServer = ServiceServer<
    Ros1Dobot_bringupPositiveSolutionRequest,
    Ros1Dobot_bringupPositiveSolutionResponse,
>;

/// Typed dobot_bringup/PowerOn call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupPowerOnClient =
    ServiceClient<Ros1Dobot_bringupPowerOnRequest, Ros1Dobot_bringupPowerOnResponse>;

/// Typed dobot_bringup/PowerOn advertiser/responder with independent grants.
pub type Ros1Dobot_bringupPowerOnServer =
    ServiceServer<Ros1Dobot_bringupPowerOnRequest, Ros1Dobot_bringupPowerOnResponse>;

/// Typed dobot_bringup/RelJointMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRelJointMovJClient =
    ServiceClient<Ros1Dobot_bringupRelJointMovJRequest, Ros1Dobot_bringupRelJointMovJResponse>;

/// Typed dobot_bringup/RelJointMovJ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRelJointMovJServer =
    ServiceServer<Ros1Dobot_bringupRelJointMovJRequest, Ros1Dobot_bringupRelJointMovJResponse>;

/// Typed dobot_bringup/RelMovJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRelMovJClient =
    ServiceClient<Ros1Dobot_bringupRelMovJRequest, Ros1Dobot_bringupRelMovJResponse>;

/// Typed dobot_bringup/RelMovJ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRelMovJServer =
    ServiceServer<Ros1Dobot_bringupRelMovJRequest, Ros1Dobot_bringupRelMovJResponse>;

/// Typed dobot_bringup/RelMovJTool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRelMovJToolClient =
    ServiceClient<Ros1Dobot_bringupRelMovJToolRequest, Ros1Dobot_bringupRelMovJToolResponse>;

/// Typed dobot_bringup/RelMovJTool advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRelMovJToolServer =
    ServiceServer<Ros1Dobot_bringupRelMovJToolRequest, Ros1Dobot_bringupRelMovJToolResponse>;

/// Typed dobot_bringup/RelMovJUser call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRelMovJUserClient =
    ServiceClient<Ros1Dobot_bringupRelMovJUserRequest, Ros1Dobot_bringupRelMovJUserResponse>;

/// Typed dobot_bringup/RelMovJUser advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRelMovJUserServer =
    ServiceServer<Ros1Dobot_bringupRelMovJUserRequest, Ros1Dobot_bringupRelMovJUserResponse>;

/// Typed dobot_bringup/RelMovL call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRelMovLClient =
    ServiceClient<Ros1Dobot_bringupRelMovLRequest, Ros1Dobot_bringupRelMovLResponse>;

/// Typed dobot_bringup/RelMovL advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRelMovLServer =
    ServiceServer<Ros1Dobot_bringupRelMovLRequest, Ros1Dobot_bringupRelMovLResponse>;

/// Typed dobot_bringup/RelMovLTool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRelMovLToolClient =
    ServiceClient<Ros1Dobot_bringupRelMovLToolRequest, Ros1Dobot_bringupRelMovLToolResponse>;

/// Typed dobot_bringup/RelMovLTool advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRelMovLToolServer =
    ServiceServer<Ros1Dobot_bringupRelMovLToolRequest, Ros1Dobot_bringupRelMovLToolResponse>;

/// Typed dobot_bringup/RelMovLUser call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRelMovLUserClient =
    ServiceClient<Ros1Dobot_bringupRelMovLUserRequest, Ros1Dobot_bringupRelMovLUserResponse>;

/// Typed dobot_bringup/RelMovLUser advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRelMovLUserServer =
    ServiceServer<Ros1Dobot_bringupRelMovLUserRequest, Ros1Dobot_bringupRelMovLUserResponse>;

/// Typed dobot_bringup/ResetRobot call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupResetRobotClient =
    ServiceClient<Ros1Dobot_bringupResetRobotRequest, Ros1Dobot_bringupResetRobotResponse>;

/// Typed dobot_bringup/ResetRobot advertiser/responder with independent grants.
pub type Ros1Dobot_bringupResetRobotServer =
    ServiceServer<Ros1Dobot_bringupResetRobotRequest, Ros1Dobot_bringupResetRobotResponse>;

/// Typed dobot_bringup/RobotMode call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRobotModeClient =
    ServiceClient<Ros1Dobot_bringupRobotModeRequest, Ros1Dobot_bringupRobotModeResponse>;

/// Typed dobot_bringup/RobotMode advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRobotModeServer =
    ServiceServer<Ros1Dobot_bringupRobotModeRequest, Ros1Dobot_bringupRobotModeResponse>;

/// Typed dobot_bringup/RunScript call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupRunScriptClient =
    ServiceClient<Ros1Dobot_bringupRunScriptRequest, Ros1Dobot_bringupRunScriptResponse>;

/// Typed dobot_bringup/RunScript advertiser/responder with independent grants.
pub type Ros1Dobot_bringupRunScriptServer =
    ServiceServer<Ros1Dobot_bringupRunScriptRequest, Ros1Dobot_bringupRunScriptResponse>;

/// Typed dobot_bringup/ServoJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupServoJClient =
    ServiceClient<Ros1Dobot_bringupServoJRequest, Ros1Dobot_bringupServoJResponse>;

/// Typed dobot_bringup/ServoJ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupServoJServer =
    ServiceServer<Ros1Dobot_bringupServoJRequest, Ros1Dobot_bringupServoJResponse>;

/// Typed dobot_bringup/ServoJParam call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupServoJParamClient =
    ServiceClient<Ros1Dobot_bringupServoJParamRequest, Ros1Dobot_bringupServoJParamResponse>;

/// Typed dobot_bringup/ServoJParam advertiser/responder with independent grants.
pub type Ros1Dobot_bringupServoJParamServer =
    ServiceServer<Ros1Dobot_bringupServoJParamRequest, Ros1Dobot_bringupServoJParamResponse>;

/// Typed dobot_bringup/ServoP call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupServoPClient =
    ServiceClient<Ros1Dobot_bringupServoPRequest, Ros1Dobot_bringupServoPResponse>;

/// Typed dobot_bringup/ServoP advertiser/responder with independent grants.
pub type Ros1Dobot_bringupServoPServer =
    ServiceServer<Ros1Dobot_bringupServoPRequest, Ros1Dobot_bringupServoPResponse>;

/// Typed dobot_bringup/SetArmOrientation call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetArmOrientationClient = ServiceClient<
    Ros1Dobot_bringupSetArmOrientationRequest,
    Ros1Dobot_bringupSetArmOrientationResponse,
>;

/// Typed dobot_bringup/SetArmOrientation advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetArmOrientationServer = ServiceServer<
    Ros1Dobot_bringupSetArmOrientationRequest,
    Ros1Dobot_bringupSetArmOrientationResponse,
>;

/// Typed dobot_bringup/SetCoils call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetCoilsClient =
    ServiceClient<Ros1Dobot_bringupSetCoilsRequest, Ros1Dobot_bringupSetCoilsResponse>;

/// Typed dobot_bringup/SetCoils advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetCoilsServer =
    ServiceServer<Ros1Dobot_bringupSetCoilsRequest, Ros1Dobot_bringupSetCoilsResponse>;

/// Typed dobot_bringup/SetCollideDrag call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetCollideDragClient =
    ServiceClient<Ros1Dobot_bringupSetCollideDragRequest, Ros1Dobot_bringupSetCollideDragResponse>;

/// Typed dobot_bringup/SetCollideDrag advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetCollideDragServer =
    ServiceServer<Ros1Dobot_bringupSetCollideDragRequest, Ros1Dobot_bringupSetCollideDragResponse>;

/// Typed dobot_bringup/SetCollisionLevel call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetCollisionLevelClient = ServiceClient<
    Ros1Dobot_bringupSetCollisionLevelRequest,
    Ros1Dobot_bringupSetCollisionLevelResponse,
>;

/// Typed dobot_bringup/SetCollisionLevel advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetCollisionLevelServer = ServiceServer<
    Ros1Dobot_bringupSetCollisionLevelRequest,
    Ros1Dobot_bringupSetCollisionLevelResponse,
>;

/// Typed dobot_bringup/SetHoldRegs call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetHoldRegsClient =
    ServiceClient<Ros1Dobot_bringupSetHoldRegsRequest, Ros1Dobot_bringupSetHoldRegsResponse>;

/// Typed dobot_bringup/SetHoldRegs advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetHoldRegsServer =
    ServiceServer<Ros1Dobot_bringupSetHoldRegsRequest, Ros1Dobot_bringupSetHoldRegsResponse>;

/// Typed dobot_bringup/SetObstacleAvoid call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetObstacleAvoidClient = ServiceClient<
    Ros1Dobot_bringupSetObstacleAvoidRequest,
    Ros1Dobot_bringupSetObstacleAvoidResponse,
>;

/// Typed dobot_bringup/SetObstacleAvoid advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetObstacleAvoidServer = ServiceServer<
    Ros1Dobot_bringupSetObstacleAvoidRequest,
    Ros1Dobot_bringupSetObstacleAvoidResponse,
>;

/// Typed dobot_bringup/SetPayload call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetPayloadClient =
    ServiceClient<Ros1Dobot_bringupSetPayloadRequest, Ros1Dobot_bringupSetPayloadResponse>;

/// Typed dobot_bringup/SetPayload advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetPayloadServer =
    ServiceServer<Ros1Dobot_bringupSetPayloadRequest, Ros1Dobot_bringupSetPayloadResponse>;

/// Typed dobot_bringup/SetSafeSkin call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetSafeSkinClient =
    ServiceClient<Ros1Dobot_bringupSetSafeSkinRequest, Ros1Dobot_bringupSetSafeSkinResponse>;

/// Typed dobot_bringup/SetSafeSkin advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetSafeSkinServer =
    ServiceServer<Ros1Dobot_bringupSetSafeSkinRequest, Ros1Dobot_bringupSetSafeSkinResponse>;

/// Typed dobot_bringup/SetTerminal485 call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetTerminal485Client =
    ServiceClient<Ros1Dobot_bringupSetTerminal485Request, Ros1Dobot_bringupSetTerminal485Response>;

/// Typed dobot_bringup/SetTerminal485 advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetTerminal485Server =
    ServiceServer<Ros1Dobot_bringupSetTerminal485Request, Ros1Dobot_bringupSetTerminal485Response>;

/// Typed dobot_bringup/SetTerminalKeys call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSetTerminalKeysClient = ServiceClient<
    Ros1Dobot_bringupSetTerminalKeysRequest,
    Ros1Dobot_bringupSetTerminalKeysResponse,
>;

/// Typed dobot_bringup/SetTerminalKeys advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSetTerminalKeysServer = ServiceServer<
    Ros1Dobot_bringupSetTerminalKeysRequest,
    Ros1Dobot_bringupSetTerminalKeysResponse,
>;

/// Typed dobot_bringup/SpeedFactor call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSpeedFactorClient =
    ServiceClient<Ros1Dobot_bringupSpeedFactorRequest, Ros1Dobot_bringupSpeedFactorResponse>;

/// Typed dobot_bringup/SpeedFactor advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSpeedFactorServer =
    ServiceServer<Ros1Dobot_bringupSpeedFactorRequest, Ros1Dobot_bringupSpeedFactorResponse>;

/// Typed dobot_bringup/SpeedJ call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSpeedJClient =
    ServiceClient<Ros1Dobot_bringupSpeedJRequest, Ros1Dobot_bringupSpeedJResponse>;

/// Typed dobot_bringup/SpeedJ advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSpeedJServer =
    ServiceServer<Ros1Dobot_bringupSpeedJRequest, Ros1Dobot_bringupSpeedJResponse>;

/// Typed dobot_bringup/SpeedL call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSpeedLClient =
    ServiceClient<Ros1Dobot_bringupSpeedLRequest, Ros1Dobot_bringupSpeedLResponse>;

/// Typed dobot_bringup/SpeedL advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSpeedLServer =
    ServiceServer<Ros1Dobot_bringupSpeedLRequest, Ros1Dobot_bringupSpeedLResponse>;

/// Typed dobot_bringup/StartDrag call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupStartDragClient =
    ServiceClient<Ros1Dobot_bringupStartDragRequest, Ros1Dobot_bringupStartDragResponse>;

/// Typed dobot_bringup/StartDrag advertiser/responder with independent grants.
pub type Ros1Dobot_bringupStartDragServer =
    ServiceServer<Ros1Dobot_bringupStartDragRequest, Ros1Dobot_bringupStartDragResponse>;

/// Typed dobot_bringup/StartFCTrace call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupStartFCTraceClient =
    ServiceClient<Ros1Dobot_bringupStartFCTraceRequest, Ros1Dobot_bringupStartFCTraceResponse>;

/// Typed dobot_bringup/StartFCTrace advertiser/responder with independent grants.
pub type Ros1Dobot_bringupStartFCTraceServer =
    ServiceServer<Ros1Dobot_bringupStartFCTraceRequest, Ros1Dobot_bringupStartFCTraceResponse>;

/// Typed dobot_bringup/StartPath call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupStartPathClient =
    ServiceClient<Ros1Dobot_bringupStartPathRequest, Ros1Dobot_bringupStartPathResponse>;

/// Typed dobot_bringup/StartPath advertiser/responder with independent grants.
pub type Ros1Dobot_bringupStartPathServer =
    ServiceServer<Ros1Dobot_bringupStartPathRequest, Ros1Dobot_bringupStartPathResponse>;

/// Typed dobot_bringup/StartTrace call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupStartTraceClient =
    ServiceClient<Ros1Dobot_bringupStartTraceRequest, Ros1Dobot_bringupStartTraceResponse>;

/// Typed dobot_bringup/StartTrace advertiser/responder with independent grants.
pub type Ros1Dobot_bringupStartTraceServer =
    ServiceServer<Ros1Dobot_bringupStartTraceRequest, Ros1Dobot_bringupStartTraceResponse>;

/// Typed dobot_bringup/StopDrag call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupStopDragClient =
    ServiceClient<Ros1Dobot_bringupStopDragRequest, Ros1Dobot_bringupStopDragResponse>;

/// Typed dobot_bringup/StopDrag advertiser/responder with independent grants.
pub type Ros1Dobot_bringupStopDragServer =
    ServiceServer<Ros1Dobot_bringupStopDragRequest, Ros1Dobot_bringupStopDragResponse>;

/// Typed dobot_bringup/StopScript call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupStopScriptClient =
    ServiceClient<Ros1Dobot_bringupStopScriptRequest, Ros1Dobot_bringupStopScriptResponse>;

/// Typed dobot_bringup/StopScript advertiser/responder with independent grants.
pub type Ros1Dobot_bringupStopScriptServer =
    ServiceServer<Ros1Dobot_bringupStopScriptRequest, Ros1Dobot_bringupStopScriptResponse>;

/// Typed dobot_bringup/StopmoveJog call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupStopmoveJogClient =
    ServiceClient<Ros1Dobot_bringupStopmoveJogRequest, Ros1Dobot_bringupStopmoveJogResponse>;

/// Typed dobot_bringup/StopmoveJog advertiser/responder with independent grants.
pub type Ros1Dobot_bringupStopmoveJogServer =
    ServiceServer<Ros1Dobot_bringupStopmoveJogRequest, Ros1Dobot_bringupStopmoveJogResponse>;

/// Typed dobot_bringup/Sync call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSyncClient =
    ServiceClient<Ros1Dobot_bringupSyncRequest, Ros1Dobot_bringupSyncResponse>;

/// Typed dobot_bringup/Sync advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSyncServer =
    ServiceServer<Ros1Dobot_bringupSyncRequest, Ros1Dobot_bringupSyncResponse>;

/// Typed dobot_bringup/SyncAll call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupSyncAllClient =
    ServiceClient<Ros1Dobot_bringupSyncAllRequest, Ros1Dobot_bringupSyncAllResponse>;

/// Typed dobot_bringup/SyncAll advertiser/responder with independent grants.
pub type Ros1Dobot_bringupSyncAllServer =
    ServiceServer<Ros1Dobot_bringupSyncAllRequest, Ros1Dobot_bringupSyncAllResponse>;

/// Typed dobot_bringup/TCPSpeed call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupTCPSpeedClient =
    ServiceClient<Ros1Dobot_bringupTCPSpeedRequest, Ros1Dobot_bringupTCPSpeedResponse>;

/// Typed dobot_bringup/TCPSpeed advertiser/responder with independent grants.
pub type Ros1Dobot_bringupTCPSpeedServer =
    ServiceServer<Ros1Dobot_bringupTCPSpeedRequest, Ros1Dobot_bringupTCPSpeedResponse>;

/// Typed dobot_bringup/TCPSpeedEnd call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupTCPSpeedEndClient =
    ServiceClient<Ros1Dobot_bringupTCPSpeedEndRequest, Ros1Dobot_bringupTCPSpeedEndResponse>;

/// Typed dobot_bringup/TCPSpeedEnd advertiser/responder with independent grants.
pub type Ros1Dobot_bringupTCPSpeedEndServer =
    ServiceServer<Ros1Dobot_bringupTCPSpeedEndRequest, Ros1Dobot_bringupTCPSpeedEndResponse>;

/// Typed dobot_bringup/TcpDashboard call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupTcpDashboardClient =
    ServiceClient<Ros1Dobot_bringupTcpDashboardRequest, Ros1Dobot_bringupTcpDashboardResponse>;

/// Typed dobot_bringup/TcpDashboard advertiser/responder with independent grants.
pub type Ros1Dobot_bringupTcpDashboardServer =
    ServiceServer<Ros1Dobot_bringupTcpDashboardRequest, Ros1Dobot_bringupTcpDashboardResponse>;

/// Typed dobot_bringup/TcpRealData call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupTcpRealDataClient =
    ServiceClient<Ros1Dobot_bringupTcpRealDataRequest, Ros1Dobot_bringupTcpRealDataResponse>;

/// Typed dobot_bringup/TcpRealData advertiser/responder with independent grants.
pub type Ros1Dobot_bringupTcpRealDataServer =
    ServiceServer<Ros1Dobot_bringupTcpRealDataRequest, Ros1Dobot_bringupTcpRealDataResponse>;

/// Typed dobot_bringup/Tool call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupToolClient =
    ServiceClient<Ros1Dobot_bringupToolRequest, Ros1Dobot_bringupToolResponse>;

/// Typed dobot_bringup/Tool advertiser/responder with independent grants.
pub type Ros1Dobot_bringupToolServer =
    ServiceServer<Ros1Dobot_bringupToolRequest, Ros1Dobot_bringupToolResponse>;

/// Typed dobot_bringup/ToolAI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupToolAIClient =
    ServiceClient<Ros1Dobot_bringupToolAIRequest, Ros1Dobot_bringupToolAIResponse>;

/// Typed dobot_bringup/ToolAI advertiser/responder with independent grants.
pub type Ros1Dobot_bringupToolAIServer =
    ServiceServer<Ros1Dobot_bringupToolAIRequest, Ros1Dobot_bringupToolAIResponse>;

/// Typed dobot_bringup/ToolDI call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupToolDIClient =
    ServiceClient<Ros1Dobot_bringupToolDIRequest, Ros1Dobot_bringupToolDIResponse>;

/// Typed dobot_bringup/ToolDI advertiser/responder with independent grants.
pub type Ros1Dobot_bringupToolDIServer =
    ServiceServer<Ros1Dobot_bringupToolDIRequest, Ros1Dobot_bringupToolDIResponse>;

/// Typed dobot_bringup/ToolDO call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupToolDOClient =
    ServiceClient<Ros1Dobot_bringupToolDORequest, Ros1Dobot_bringupToolDOResponse>;

/// Typed dobot_bringup/ToolDO advertiser/responder with independent grants.
pub type Ros1Dobot_bringupToolDOServer =
    ServiceServer<Ros1Dobot_bringupToolDORequest, Ros1Dobot_bringupToolDOResponse>;

/// Typed dobot_bringup/ToolDOExecute call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupToolDOExecuteClient =
    ServiceClient<Ros1Dobot_bringupToolDOExecuteRequest, Ros1Dobot_bringupToolDOExecuteResponse>;

/// Typed dobot_bringup/ToolDOExecute advertiser/responder with independent grants.
pub type Ros1Dobot_bringupToolDOExecuteServer =
    ServiceServer<Ros1Dobot_bringupToolDOExecuteRequest, Ros1Dobot_bringupToolDOExecuteResponse>;

/// Typed dobot_bringup/User call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupUserClient =
    ServiceClient<Ros1Dobot_bringupUserRequest, Ros1Dobot_bringupUserResponse>;

/// Typed dobot_bringup/User advertiser/responder with independent grants.
pub type Ros1Dobot_bringupUserServer =
    ServiceServer<Ros1Dobot_bringupUserRequest, Ros1Dobot_bringupUserResponse>;

/// Typed dobot_bringup/Wait call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupWaitClient =
    ServiceClient<Ros1Dobot_bringupWaitRequest, Ros1Dobot_bringupWaitResponse>;

/// Typed dobot_bringup/Wait advertiser/responder with independent grants.
pub type Ros1Dobot_bringupWaitServer =
    ServiceServer<Ros1Dobot_bringupWaitRequest, Ros1Dobot_bringupWaitResponse>;

/// Typed dobot_bringup/pause call/real-submit owner; every alias is explicit.
pub type Ros1Dobot_bringupPauseClient =
    ServiceClient<Ros1Dobot_bringupPauseRequest, Ros1Dobot_bringupPauseResponse>;

/// Typed dobot_bringup/pause advertiser/responder with independent grants.
pub type Ros1Dobot_bringupPauseServer =
    ServiceServer<Ros1Dobot_bringupPauseRequest, Ros1Dobot_bringupPauseResponse>;
