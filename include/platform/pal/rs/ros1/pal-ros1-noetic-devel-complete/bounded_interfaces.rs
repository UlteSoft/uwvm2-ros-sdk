//! @file bounded_interfaces.rs
//! @brief Provide the complete pal ros1_noetic_devel protocol owner surface.
//! @details The original 222 record catalog retains field order, constants, defaults and quotas.
//! Borrowed values and buffers must remain stable while a conversion is in progress.
//! Explicit resource owners retain their original primary and cleanup errors; callers close each owner.
//! No declaration grants a capability or establishes a native ROS registry identity.
//! Original declarations and units are retained in share/platform/pal/catalogs.
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

/// Complete canonical component bound for pal_behaviour_msgs/BehaviourEventRequest.
impl Component for Ros1Pal_behaviour_msgsBehaviourEventRequest {
    const MAX_WIRE: usize = 1192;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_behaviour_msgs/BehaviourEventResponse.
impl Component for Ros1Pal_behaviour_msgsBehaviourEventResponse {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_behaviour_msgs/BehaviourTaskGoal.
impl Component for Ros1Pal_behaviour_msgsBehaviourTaskGoal {
    const MAX_WIRE: usize = 1192;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_behaviour_msgs/BehaviourTaskResult.
impl Component for Ros1Pal_behaviour_msgsBehaviourTaskResult {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_behaviour_msgs/BehaviourTaskFeedback.
impl Component for Ros1Pal_behaviour_msgsBehaviourTaskFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_behaviour_msgs/PresentationGoal.
impl Component for Ros1Pal_behaviour_msgsPresentationGoal {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_behaviour_msgs/PresentationResult.
impl Component for Ros1Pal_behaviour_msgsPresentationResult {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_behaviour_msgs/PresentationFeedback.
impl Component for Ros1Pal_behaviour_msgsPresentationFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/DisableGoal.
impl Component for Ros1Pal_common_msgsDisableGoal {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/DisableResult.
impl Component for Ros1Pal_common_msgsDisableResult {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/DisableFeedback.
impl Component for Ros1Pal_common_msgsDisableFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/EmptyGoal.
impl Component for Ros1Pal_common_msgsEmptyGoal {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/EmptyResult.
impl Component for Ros1Pal_common_msgsEmptyResult {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/EmptyFeedback.
impl Component for Ros1Pal_common_msgsEmptyFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/GetStringRequest.
impl Component for Ros1Pal_common_msgsGetStringRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/GetStringResponse.
impl Component for Ros1Pal_common_msgsGetStringResponse {
    const MAX_WIRE: usize = 133;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/SetStringRequest.
impl Component for Ros1Pal_common_msgsSetStringRequest {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_common_msgs/SetStringResponse.
impl Component for Ros1Pal_common_msgsSetStringResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/CurrentLimitRequest.
impl Component for Ros1Pal_control_msgsCurrentLimitRequest {
    const MAX_WIRE: usize = 140;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/CurrentLimitResponse.
impl Component for Ros1Pal_control_msgsCurrentLimitResponse {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/MotionManagerGoal.
impl Component for Ros1Pal_control_msgsMotionManagerGoal {
    const MAX_WIRE: usize = 140;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/MotionManagerResult.
impl Component for Ros1Pal_control_msgsMotionManagerResult {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/MotionManagerFeedback.
impl Component for Ros1Pal_control_msgsMotionManagerFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/RigidBodyTrajectoryGoal.
impl Component for Ros1Pal_control_msgsRigidBodyTrajectoryGoal {
    const MAX_WIRE: usize = 789;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/RigidBodyTrajectoryResult.
impl Component for Ros1Pal_control_msgsRigidBodyTrajectoryResult {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_control_msgs/RigidBodyTrajectoryFeedback.
impl Component for Ros1Pal_control_msgsRigidBodyTrajectoryFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/AddTexturedObjectRequest.
impl Component for Ros1Pal_detection_msgsAddTexturedObjectRequest {
    const MAX_WIRE: usize = 4521;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/AddTexturedObjectResponse.
impl Component for Ros1Pal_detection_msgsAddTexturedObjectResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/ChangeObjectRecognizerModelRequest.
impl Component for Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest {
    const MAX_WIRE: usize = 133;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/ChangeObjectRecognizerModelResponse.
impl Component for Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/RecognizeObjectsGoal.
impl Component for Ros1Pal_detection_msgsRecognizeObjectsGoal {
    const MAX_WIRE: usize = 4376;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/RecognizeObjectsResult.
impl Component for Ros1Pal_detection_msgsRecognizeObjectsResult {
    const MAX_WIRE: usize = 5138;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/RecognizeObjectsFeedback.
impl Component for Ros1Pal_detection_msgsRecognizeObjectsFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/RecognizerRequest.
impl Component for Ros1Pal_detection_msgsRecognizerRequest {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/RecognizerResponse.
impl Component for Ros1Pal_detection_msgsRecognizerResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/SelectTexturedObjectRequest.
impl Component for Ros1Pal_detection_msgsSelectTexturedObjectRequest {
    const MAX_WIRE: usize = 148;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/SelectTexturedObjectResponse.
impl Component for Ros1Pal_detection_msgsSelectTexturedObjectResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/SetDatabaseRequest.
impl Component for Ros1Pal_detection_msgsSetDatabaseRequest {
    const MAX_WIRE: usize = 133;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/SetDatabaseResponse.
impl Component for Ros1Pal_detection_msgsSetDatabaseResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/StartEnrollmentRequest.
impl Component for Ros1Pal_detection_msgsStartEnrollmentRequest {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/StartEnrollmentResponse.
impl Component for Ros1Pal_detection_msgsStartEnrollmentResponse {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/StopEnrollmentRequest.
impl Component for Ros1Pal_detection_msgsStopEnrollmentRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_detection_msgs/StopEnrollmentResponse.
impl Component for Ros1Pal_detection_msgsStopEnrollmentResponse {
    const MAX_WIRE: usize = 137;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/CancelEffectRequest.
impl Component for Ros1Pal_device_msgsCancelEffectRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/CancelEffectResponse.
impl Component for Ros1Pal_device_msgsCancelEffectResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/DoTimedLedEffectGoal.
impl Component for Ros1Pal_device_msgsDoTimedLedEffectGoal {
    const MAX_WIRE: usize = 472;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/DoTimedLedEffectResult.
impl Component for Ros1Pal_device_msgsDoTimedLedEffectResult {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/DoTimedLedEffectFeedback.
impl Component for Ros1Pal_device_msgsDoTimedLedEffectFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/ShutdownAndWakeUpRobotRequest.
impl Component for Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/ShutdownAndWakeUpRobotResponse.
impl Component for Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/TimedBlinkEffectRequest.
impl Component for Ros1Pal_device_msgsTimedBlinkEffectRequest {
    const MAX_WIRE: usize = 61;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/TimedBlinkEffectResponse.
impl Component for Ros1Pal_device_msgsTimedBlinkEffectResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/TimedColourEffectRequest.
impl Component for Ros1Pal_device_msgsTimedColourEffectRequest {
    const MAX_WIRE: usize = 29;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/TimedColourEffectResponse.
impl Component for Ros1Pal_device_msgsTimedColourEffectResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/TimedFadeEffectRequest.
impl Component for Ros1Pal_device_msgsTimedFadeEffectRequest {
    const MAX_WIRE: usize = 54;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_device_msgs/TimedFadeEffectResponse.
impl Component for Ros1Pal_device_msgsTimedFadeEffectResponse {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/ASRFileGoal.
impl Component for Ros1Pal_interaction_msgsASRFileGoal {
    const MAX_WIRE: usize = 396;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/ASRFileResult.
impl Component for Ros1Pal_interaction_msgsASRFileResult {
    const MAX_WIRE: usize = 5104;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/ASRFileFeedback.
impl Component for Ros1Pal_interaction_msgsASRFileFeedback {
    const MAX_WIRE: usize = 1209;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/ASRServiceRequest.
impl Component for Ros1Pal_interaction_msgsASRServiceRequest {
    const MAX_WIRE: usize = 526;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/ASRServiceResponse.
impl Component for Ros1Pal_interaction_msgsASRServiceResponse {
    const MAX_WIRE: usize = 802;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/AudioPlayGoal.
impl Component for Ros1Pal_interaction_msgsAudioPlayGoal {
    const MAX_WIRE: usize = 133;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/AudioPlayResult.
impl Component for Ros1Pal_interaction_msgsAudioPlayResult {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/AudioPlayFeedback.
impl Component for Ros1Pal_interaction_msgsAudioPlayFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/GetSpeechDurationRequest.
impl Component for Ros1Pal_interaction_msgsGetSpeechDurationRequest {
    const MAX_WIRE: usize = 2248;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/GetSpeechDurationResponse.
impl Component for Ros1Pal_interaction_msgsGetSpeechDurationResponse {
    const MAX_WIRE: usize = 2249;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/SoundGoal.
impl Component for Ros1Pal_interaction_msgsSoundGoal {
    const MAX_WIRE: usize = 272;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/SoundResult.
impl Component for Ros1Pal_interaction_msgsSoundResult {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/SoundFeedback.
impl Component for Ros1Pal_interaction_msgsSoundFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/SoundLocalisationServiceRequest.
impl Component for Ros1Pal_interaction_msgsSoundLocalisationServiceRequest {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/SoundLocalisationServiceResponse.
impl Component for Ros1Pal_interaction_msgsSoundLocalisationServiceResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/TtsGoal.
impl Component for Ros1Pal_interaction_msgsTtsGoal {
    const MAX_WIRE: usize = 2388;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/TtsResult.
impl Component for Ros1Pal_interaction_msgsTtsResult {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/TtsFeedback.
impl Component for Ros1Pal_interaction_msgsTtsFeedback {
    const MAX_WIRE: usize = 4770;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/recognizerServiceRequest.
impl Component for Ros1Pal_interaction_msgsRecognizerServiceRequest {
    const MAX_WIRE: usize = 529;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_interaction_msgs/recognizerServiceResponse.
impl Component for Ros1Pal_interaction_msgsRecognizerServiceResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_motion_model_msgs/GetMotionMapRequest.
impl Component for Ros1Pal_motion_model_msgsGetMotionMapRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_motion_model_msgs/GetMotionMapResponse.
impl Component for Ros1Pal_motion_model_msgsGetMotionMapResponse {
    const MAX_WIRE: usize = 624;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_video_recording_msgs/StartRecordingRequest.
impl Component for Ros1Pal_video_recording_msgsStartRecordingRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_video_recording_msgs/StartRecordingResponse.
impl Component for Ros1Pal_video_recording_msgsStartRecordingResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_video_recording_msgs/StopRecordingRequest.
impl Component for Ros1Pal_video_recording_msgsStopRecordingRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_video_recording_msgs/StopRecordingResponse.
impl Component for Ros1Pal_video_recording_msgsStopRecordingResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FaceRecognitionGoal.
impl Component for Ros1Pal_vision_msgsFaceRecognitionGoal {
    const MAX_WIRE: usize = 133;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FaceRecognitionResult.
impl Component for Ros1Pal_vision_msgsFaceRecognitionResult {
    const MAX_WIRE: usize = 2185;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FaceRecognitionFeedback.
impl Component for Ros1Pal_vision_msgsFaceRecognitionFeedback {
    const MAX_WIRE: usize = 2185;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FaceTrackingStartRequest.
impl Component for Ros1Pal_vision_msgsFaceTrackingStartRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FaceTrackingStartResponse.
impl Component for Ros1Pal_vision_msgsFaceTrackingStartResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FaceTrackingStopRequest.
impl Component for Ros1Pal_vision_msgsFaceTrackingStopRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FaceTrackingStopResponse.
impl Component for Ros1Pal_vision_msgsFaceTrackingStopResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FollowMeStartRequest.
impl Component for Ros1Pal_vision_msgsFollowMeStartRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FollowMeStartResponse.
impl Component for Ros1Pal_vision_msgsFollowMeStartResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FollowMeStopRequest.
impl Component for Ros1Pal_vision_msgsFollowMeStopRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/FollowMeStopResponse.
impl Component for Ros1Pal_vision_msgsFollowMeStopResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/LookToPixelRequest.
impl Component for Ros1Pal_vision_msgsLookToPixelRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_vision_msgs/LookToPixelResponse.
impl Component for Ros1Pal_vision_msgsLookToPixelResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_visual_localization_msgs/VisualLocAddPlaceGoal.
impl Component for Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_visual_localization_msgs/VisualLocAddPlaceResult.
impl Component for Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_visual_localization_msgs/VisualLocAddPlaceFeedback.
impl Component for Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_visual_localization_msgs/VisualLocRecognizeGoal.
impl Component for Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_visual_localization_msgs/VisualLocRecognizeResult.
impl Component for Ros1Pal_visual_localization_msgsVisualLocRecognizeResult {
    const MAX_WIRE: usize = 497;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_visual_localization_msgs/VisualLocRecognizeFeedback.
impl Component for Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/MoveHipFeetRequest.
impl Component for Ros1Pal_walking_msgsMoveHipFeetRequest {
    const MAX_WIRE: usize = 1248;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/MoveHipFeetResponse.
impl Component for Ros1Pal_walking_msgsMoveHipFeetResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/SitRequest.
impl Component for Ros1Pal_walking_msgsSitRequest {
    const MAX_WIRE: usize = 9;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/SitResponse.
impl Component for Ros1Pal_walking_msgsSitResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/StepOverRequest.
impl Component for Ros1Pal_walking_msgsStepOverRequest {
    const MAX_WIRE: usize = 32;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/StepOverResponse.
impl Component for Ros1Pal_walking_msgsStepOverResponse {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/WalkStepsRequest.
impl Component for Ros1Pal_walking_msgsWalkStepsRequest {
    const MAX_WIRE: usize = 20;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_walking_msgs/WalkStepsResponse.
impl Component for Ros1Pal_walking_msgsWalkStepsResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_wifi_localization_msgs/GetWifiMapRequest.
impl Component for Ros1Pal_wifi_localization_msgsGetWifiMapRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for pal_wifi_localization_msgs/GetWifiMapResponse.
impl Component for Ros1Pal_wifi_localization_msgsGetWifiMapResponse {
    const MAX_WIRE: usize = 2548;
    const ROS_VERSION: u8 = 1;
}

/// Typed pal_behaviour_msgs/BehaviourEvent call/real-submit owner; every alias is explicit.
pub type Ros1Pal_behaviour_msgsBehaviourEventClient = ServiceClient<
    Ros1Pal_behaviour_msgsBehaviourEventRequest,
    Ros1Pal_behaviour_msgsBehaviourEventResponse,
>;

/// Typed pal_behaviour_msgs/BehaviourEvent advertiser/responder with independent grants.
pub type Ros1Pal_behaviour_msgsBehaviourEventServer = ServiceServer<
    Ros1Pal_behaviour_msgsBehaviourEventRequest,
    Ros1Pal_behaviour_msgsBehaviourEventResponse,
>;

/// Complete custom pal_behaviour_msgs/BehaviourTask client; four roles plus optional cancel-any.
pub type Ros1Pal_behaviour_msgsBehaviourTaskClient = ActionClient<
    Ros1Pal_behaviour_msgsBehaviourTaskGoal,
    Ros1Pal_behaviour_msgsBehaviourTaskResult,
    Ros1Pal_behaviour_msgsBehaviourTaskFeedback,
>;

/// Complete custom pal_behaviour_msgs/BehaviourTask server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_behaviour_msgsBehaviourTaskServer = ActionServer<
    Ros1Pal_behaviour_msgsBehaviourTaskGoal,
    Ros1Pal_behaviour_msgsBehaviourTaskResult,
    Ros1Pal_behaviour_msgsBehaviourTaskFeedback,
>;

/// Complete custom pal_behaviour_msgs/Presentation client; four roles plus optional cancel-any.
pub type Ros1Pal_behaviour_msgsPresentationClient = ActionClient<
    Ros1Pal_behaviour_msgsPresentationGoal,
    Ros1Pal_behaviour_msgsPresentationResult,
    Ros1Pal_behaviour_msgsPresentationFeedback,
>;

/// Complete custom pal_behaviour_msgs/Presentation server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_behaviour_msgsPresentationServer = ActionServer<
    Ros1Pal_behaviour_msgsPresentationGoal,
    Ros1Pal_behaviour_msgsPresentationResult,
    Ros1Pal_behaviour_msgsPresentationFeedback,
>;

/// Complete custom pal_common_msgs/Disable client; four roles plus optional cancel-any.
pub type Ros1Pal_common_msgsDisableClient = ActionClient<
    Ros1Pal_common_msgsDisableGoal,
    Ros1Pal_common_msgsDisableResult,
    Ros1Pal_common_msgsDisableFeedback,
>;

/// Complete custom pal_common_msgs/Disable server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_common_msgsDisableServer = ActionServer<
    Ros1Pal_common_msgsDisableGoal,
    Ros1Pal_common_msgsDisableResult,
    Ros1Pal_common_msgsDisableFeedback,
>;

/// Complete custom pal_common_msgs/Empty client; four roles plus optional cancel-any.
pub type Ros1Pal_common_msgsEmptyClient = ActionClient<
    Ros1Pal_common_msgsEmptyGoal,
    Ros1Pal_common_msgsEmptyResult,
    Ros1Pal_common_msgsEmptyFeedback,
>;

/// Complete custom pal_common_msgs/Empty server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_common_msgsEmptyServer = ActionServer<
    Ros1Pal_common_msgsEmptyGoal,
    Ros1Pal_common_msgsEmptyResult,
    Ros1Pal_common_msgsEmptyFeedback,
>;

/// Typed pal_common_msgs/GetString call/real-submit owner; every alias is explicit.
pub type Ros1Pal_common_msgsGetStringClient =
    ServiceClient<Ros1Pal_common_msgsGetStringRequest, Ros1Pal_common_msgsGetStringResponse>;

/// Typed pal_common_msgs/GetString advertiser/responder with independent grants.
pub type Ros1Pal_common_msgsGetStringServer =
    ServiceServer<Ros1Pal_common_msgsGetStringRequest, Ros1Pal_common_msgsGetStringResponse>;

/// Typed pal_common_msgs/SetString call/real-submit owner; every alias is explicit.
pub type Ros1Pal_common_msgsSetStringClient =
    ServiceClient<Ros1Pal_common_msgsSetStringRequest, Ros1Pal_common_msgsSetStringResponse>;

/// Typed pal_common_msgs/SetString advertiser/responder with independent grants.
pub type Ros1Pal_common_msgsSetStringServer =
    ServiceServer<Ros1Pal_common_msgsSetStringRequest, Ros1Pal_common_msgsSetStringResponse>;

/// Typed pal_control_msgs/CurrentLimit call/real-submit owner; every alias is explicit.
pub type Ros1Pal_control_msgsCurrentLimitClient = ServiceClient<
    Ros1Pal_control_msgsCurrentLimitRequest,
    Ros1Pal_control_msgsCurrentLimitResponse,
>;

/// Typed pal_control_msgs/CurrentLimit advertiser/responder with independent grants.
pub type Ros1Pal_control_msgsCurrentLimitServer = ServiceServer<
    Ros1Pal_control_msgsCurrentLimitRequest,
    Ros1Pal_control_msgsCurrentLimitResponse,
>;

/// Complete custom pal_control_msgs/MotionManager client; four roles plus optional cancel-any.
pub type Ros1Pal_control_msgsMotionManagerClient = ActionClient<
    Ros1Pal_control_msgsMotionManagerGoal,
    Ros1Pal_control_msgsMotionManagerResult,
    Ros1Pal_control_msgsMotionManagerFeedback,
>;

/// Complete custom pal_control_msgs/MotionManager server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_control_msgsMotionManagerServer = ActionServer<
    Ros1Pal_control_msgsMotionManagerGoal,
    Ros1Pal_control_msgsMotionManagerResult,
    Ros1Pal_control_msgsMotionManagerFeedback,
>;

/// Complete custom pal_control_msgs/RigidBodyTrajectory client; four roles plus optional cancel-any.
pub type Ros1Pal_control_msgsRigidBodyTrajectoryClient = ActionClient<
    Ros1Pal_control_msgsRigidBodyTrajectoryGoal,
    Ros1Pal_control_msgsRigidBodyTrajectoryResult,
    Ros1Pal_control_msgsRigidBodyTrajectoryFeedback,
>;

/// Complete custom pal_control_msgs/RigidBodyTrajectory server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_control_msgsRigidBodyTrajectoryServer = ActionServer<
    Ros1Pal_control_msgsRigidBodyTrajectoryGoal,
    Ros1Pal_control_msgsRigidBodyTrajectoryResult,
    Ros1Pal_control_msgsRigidBodyTrajectoryFeedback,
>;

/// Typed pal_detection_msgs/AddTexturedObject call/real-submit owner; every alias is explicit.
pub type Ros1Pal_detection_msgsAddTexturedObjectClient = ServiceClient<
    Ros1Pal_detection_msgsAddTexturedObjectRequest,
    Ros1Pal_detection_msgsAddTexturedObjectResponse,
>;

/// Typed pal_detection_msgs/AddTexturedObject advertiser/responder with independent grants.
pub type Ros1Pal_detection_msgsAddTexturedObjectServer = ServiceServer<
    Ros1Pal_detection_msgsAddTexturedObjectRequest,
    Ros1Pal_detection_msgsAddTexturedObjectResponse,
>;

/// Typed pal_detection_msgs/ChangeObjectRecognizerModel call/real-submit owner; every alias is explicit.
pub type Ros1Pal_detection_msgsChangeObjectRecognizerModelClient = ServiceClient<
    Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest,
    Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse,
>;

/// Typed pal_detection_msgs/ChangeObjectRecognizerModel advertiser/responder with independent grants.
pub type Ros1Pal_detection_msgsChangeObjectRecognizerModelServer = ServiceServer<
    Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest,
    Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse,
>;

/// Complete custom pal_detection_msgs/RecognizeObjects client; four roles plus optional cancel-any.
pub type Ros1Pal_detection_msgsRecognizeObjectsClient = ActionClient<
    Ros1Pal_detection_msgsRecognizeObjectsGoal,
    Ros1Pal_detection_msgsRecognizeObjectsResult,
    Ros1Pal_detection_msgsRecognizeObjectsFeedback,
>;

/// Complete custom pal_detection_msgs/RecognizeObjects server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_detection_msgsRecognizeObjectsServer = ActionServer<
    Ros1Pal_detection_msgsRecognizeObjectsGoal,
    Ros1Pal_detection_msgsRecognizeObjectsResult,
    Ros1Pal_detection_msgsRecognizeObjectsFeedback,
>;

/// Typed pal_detection_msgs/Recognizer call/real-submit owner; every alias is explicit.
pub type Ros1Pal_detection_msgsRecognizerClient = ServiceClient<
    Ros1Pal_detection_msgsRecognizerRequest,
    Ros1Pal_detection_msgsRecognizerResponse,
>;

/// Typed pal_detection_msgs/Recognizer advertiser/responder with independent grants.
pub type Ros1Pal_detection_msgsRecognizerServer = ServiceServer<
    Ros1Pal_detection_msgsRecognizerRequest,
    Ros1Pal_detection_msgsRecognizerResponse,
>;

/// Typed pal_detection_msgs/SelectTexturedObject call/real-submit owner; every alias is explicit.
pub type Ros1Pal_detection_msgsSelectTexturedObjectClient = ServiceClient<
    Ros1Pal_detection_msgsSelectTexturedObjectRequest,
    Ros1Pal_detection_msgsSelectTexturedObjectResponse,
>;

/// Typed pal_detection_msgs/SelectTexturedObject advertiser/responder with independent grants.
pub type Ros1Pal_detection_msgsSelectTexturedObjectServer = ServiceServer<
    Ros1Pal_detection_msgsSelectTexturedObjectRequest,
    Ros1Pal_detection_msgsSelectTexturedObjectResponse,
>;

/// Typed pal_detection_msgs/SetDatabase call/real-submit owner; every alias is explicit.
pub type Ros1Pal_detection_msgsSetDatabaseClient = ServiceClient<
    Ros1Pal_detection_msgsSetDatabaseRequest,
    Ros1Pal_detection_msgsSetDatabaseResponse,
>;

/// Typed pal_detection_msgs/SetDatabase advertiser/responder with independent grants.
pub type Ros1Pal_detection_msgsSetDatabaseServer = ServiceServer<
    Ros1Pal_detection_msgsSetDatabaseRequest,
    Ros1Pal_detection_msgsSetDatabaseResponse,
>;

/// Typed pal_detection_msgs/StartEnrollment call/real-submit owner; every alias is explicit.
pub type Ros1Pal_detection_msgsStartEnrollmentClient = ServiceClient<
    Ros1Pal_detection_msgsStartEnrollmentRequest,
    Ros1Pal_detection_msgsStartEnrollmentResponse,
>;

/// Typed pal_detection_msgs/StartEnrollment advertiser/responder with independent grants.
pub type Ros1Pal_detection_msgsStartEnrollmentServer = ServiceServer<
    Ros1Pal_detection_msgsStartEnrollmentRequest,
    Ros1Pal_detection_msgsStartEnrollmentResponse,
>;

/// Typed pal_detection_msgs/StopEnrollment call/real-submit owner; every alias is explicit.
pub type Ros1Pal_detection_msgsStopEnrollmentClient = ServiceClient<
    Ros1Pal_detection_msgsStopEnrollmentRequest,
    Ros1Pal_detection_msgsStopEnrollmentResponse,
>;

/// Typed pal_detection_msgs/StopEnrollment advertiser/responder with independent grants.
pub type Ros1Pal_detection_msgsStopEnrollmentServer = ServiceServer<
    Ros1Pal_detection_msgsStopEnrollmentRequest,
    Ros1Pal_detection_msgsStopEnrollmentResponse,
>;

/// Typed pal_device_msgs/CancelEffect call/real-submit owner; every alias is explicit.
pub type Ros1Pal_device_msgsCancelEffectClient =
    ServiceClient<Ros1Pal_device_msgsCancelEffectRequest, Ros1Pal_device_msgsCancelEffectResponse>;

/// Typed pal_device_msgs/CancelEffect advertiser/responder with independent grants.
pub type Ros1Pal_device_msgsCancelEffectServer =
    ServiceServer<Ros1Pal_device_msgsCancelEffectRequest, Ros1Pal_device_msgsCancelEffectResponse>;

/// Complete custom pal_device_msgs/DoTimedLedEffect client; four roles plus optional cancel-any.
pub type Ros1Pal_device_msgsDoTimedLedEffectClient = ActionClient<
    Ros1Pal_device_msgsDoTimedLedEffectGoal,
    Ros1Pal_device_msgsDoTimedLedEffectResult,
    Ros1Pal_device_msgsDoTimedLedEffectFeedback,
>;

/// Complete custom pal_device_msgs/DoTimedLedEffect server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_device_msgsDoTimedLedEffectServer = ActionServer<
    Ros1Pal_device_msgsDoTimedLedEffectGoal,
    Ros1Pal_device_msgsDoTimedLedEffectResult,
    Ros1Pal_device_msgsDoTimedLedEffectFeedback,
>;

/// Typed pal_device_msgs/ShutdownAndWakeUpRobot call/real-submit owner; every alias is explicit.
pub type Ros1Pal_device_msgsShutdownAndWakeUpRobotClient = ServiceClient<
    Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest,
    Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse,
>;

/// Typed pal_device_msgs/ShutdownAndWakeUpRobot advertiser/responder with independent grants.
pub type Ros1Pal_device_msgsShutdownAndWakeUpRobotServer = ServiceServer<
    Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest,
    Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse,
>;

/// Typed pal_device_msgs/TimedBlinkEffect call/real-submit owner; every alias is explicit.
pub type Ros1Pal_device_msgsTimedBlinkEffectClient = ServiceClient<
    Ros1Pal_device_msgsTimedBlinkEffectRequest,
    Ros1Pal_device_msgsTimedBlinkEffectResponse,
>;

/// Typed pal_device_msgs/TimedBlinkEffect advertiser/responder with independent grants.
pub type Ros1Pal_device_msgsTimedBlinkEffectServer = ServiceServer<
    Ros1Pal_device_msgsTimedBlinkEffectRequest,
    Ros1Pal_device_msgsTimedBlinkEffectResponse,
>;

/// Typed pal_device_msgs/TimedColourEffect call/real-submit owner; every alias is explicit.
pub type Ros1Pal_device_msgsTimedColourEffectClient = ServiceClient<
    Ros1Pal_device_msgsTimedColourEffectRequest,
    Ros1Pal_device_msgsTimedColourEffectResponse,
>;

/// Typed pal_device_msgs/TimedColourEffect advertiser/responder with independent grants.
pub type Ros1Pal_device_msgsTimedColourEffectServer = ServiceServer<
    Ros1Pal_device_msgsTimedColourEffectRequest,
    Ros1Pal_device_msgsTimedColourEffectResponse,
>;

/// Typed pal_device_msgs/TimedFadeEffect call/real-submit owner; every alias is explicit.
pub type Ros1Pal_device_msgsTimedFadeEffectClient = ServiceClient<
    Ros1Pal_device_msgsTimedFadeEffectRequest,
    Ros1Pal_device_msgsTimedFadeEffectResponse,
>;

/// Typed pal_device_msgs/TimedFadeEffect advertiser/responder with independent grants.
pub type Ros1Pal_device_msgsTimedFadeEffectServer = ServiceServer<
    Ros1Pal_device_msgsTimedFadeEffectRequest,
    Ros1Pal_device_msgsTimedFadeEffectResponse,
>;

/// Complete custom pal_interaction_msgs/ASRFile client; four roles plus optional cancel-any.
pub type Ros1Pal_interaction_msgsASRFileClient = ActionClient<
    Ros1Pal_interaction_msgsASRFileGoal,
    Ros1Pal_interaction_msgsASRFileResult,
    Ros1Pal_interaction_msgsASRFileFeedback,
>;

/// Complete custom pal_interaction_msgs/ASRFile server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_interaction_msgsASRFileServer = ActionServer<
    Ros1Pal_interaction_msgsASRFileGoal,
    Ros1Pal_interaction_msgsASRFileResult,
    Ros1Pal_interaction_msgsASRFileFeedback,
>;

/// Typed pal_interaction_msgs/ASRService call/real-submit owner; every alias is explicit.
pub type Ros1Pal_interaction_msgsASRServiceClient = ServiceClient<
    Ros1Pal_interaction_msgsASRServiceRequest,
    Ros1Pal_interaction_msgsASRServiceResponse,
>;

/// Typed pal_interaction_msgs/ASRService advertiser/responder with independent grants.
pub type Ros1Pal_interaction_msgsASRServiceServer = ServiceServer<
    Ros1Pal_interaction_msgsASRServiceRequest,
    Ros1Pal_interaction_msgsASRServiceResponse,
>;

/// Complete custom pal_interaction_msgs/AudioPlay client; four roles plus optional cancel-any.
pub type Ros1Pal_interaction_msgsAudioPlayClient = ActionClient<
    Ros1Pal_interaction_msgsAudioPlayGoal,
    Ros1Pal_interaction_msgsAudioPlayResult,
    Ros1Pal_interaction_msgsAudioPlayFeedback,
>;

/// Complete custom pal_interaction_msgs/AudioPlay server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_interaction_msgsAudioPlayServer = ActionServer<
    Ros1Pal_interaction_msgsAudioPlayGoal,
    Ros1Pal_interaction_msgsAudioPlayResult,
    Ros1Pal_interaction_msgsAudioPlayFeedback,
>;

/// Typed pal_interaction_msgs/GetSpeechDuration call/real-submit owner; every alias is explicit.
pub type Ros1Pal_interaction_msgsGetSpeechDurationClient = ServiceClient<
    Ros1Pal_interaction_msgsGetSpeechDurationRequest,
    Ros1Pal_interaction_msgsGetSpeechDurationResponse,
>;

/// Typed pal_interaction_msgs/GetSpeechDuration advertiser/responder with independent grants.
pub type Ros1Pal_interaction_msgsGetSpeechDurationServer = ServiceServer<
    Ros1Pal_interaction_msgsGetSpeechDurationRequest,
    Ros1Pal_interaction_msgsGetSpeechDurationResponse,
>;

/// Complete custom pal_interaction_msgs/Sound client; four roles plus optional cancel-any.
pub type Ros1Pal_interaction_msgsSoundClient = ActionClient<
    Ros1Pal_interaction_msgsSoundGoal,
    Ros1Pal_interaction_msgsSoundResult,
    Ros1Pal_interaction_msgsSoundFeedback,
>;

/// Complete custom pal_interaction_msgs/Sound server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_interaction_msgsSoundServer = ActionServer<
    Ros1Pal_interaction_msgsSoundGoal,
    Ros1Pal_interaction_msgsSoundResult,
    Ros1Pal_interaction_msgsSoundFeedback,
>;

/// Typed pal_interaction_msgs/SoundLocalisationService call/real-submit owner; every alias is explicit.
pub type Ros1Pal_interaction_msgsSoundLocalisationServiceClient = ServiceClient<
    Ros1Pal_interaction_msgsSoundLocalisationServiceRequest,
    Ros1Pal_interaction_msgsSoundLocalisationServiceResponse,
>;

/// Typed pal_interaction_msgs/SoundLocalisationService advertiser/responder with independent grants.
pub type Ros1Pal_interaction_msgsSoundLocalisationServiceServer = ServiceServer<
    Ros1Pal_interaction_msgsSoundLocalisationServiceRequest,
    Ros1Pal_interaction_msgsSoundLocalisationServiceResponse,
>;

/// Complete custom pal_interaction_msgs/Tts client; four roles plus optional cancel-any.
pub type Ros1Pal_interaction_msgsTtsClient = ActionClient<
    Ros1Pal_interaction_msgsTtsGoal,
    Ros1Pal_interaction_msgsTtsResult,
    Ros1Pal_interaction_msgsTtsFeedback,
>;

/// Complete custom pal_interaction_msgs/Tts server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_interaction_msgsTtsServer = ActionServer<
    Ros1Pal_interaction_msgsTtsGoal,
    Ros1Pal_interaction_msgsTtsResult,
    Ros1Pal_interaction_msgsTtsFeedback,
>;

/// Typed pal_interaction_msgs/recognizerService call/real-submit owner; every alias is explicit.
pub type Ros1Pal_interaction_msgsRecognizerServiceClient = ServiceClient<
    Ros1Pal_interaction_msgsRecognizerServiceRequest,
    Ros1Pal_interaction_msgsRecognizerServiceResponse,
>;

/// Typed pal_interaction_msgs/recognizerService advertiser/responder with independent grants.
pub type Ros1Pal_interaction_msgsRecognizerServiceServer = ServiceServer<
    Ros1Pal_interaction_msgsRecognizerServiceRequest,
    Ros1Pal_interaction_msgsRecognizerServiceResponse,
>;

/// Typed pal_motion_model_msgs/GetMotionMap call/real-submit owner; every alias is explicit.
pub type Ros1Pal_motion_model_msgsGetMotionMapClient = ServiceClient<
    Ros1Pal_motion_model_msgsGetMotionMapRequest,
    Ros1Pal_motion_model_msgsGetMotionMapResponse,
>;

/// Typed pal_motion_model_msgs/GetMotionMap advertiser/responder with independent grants.
pub type Ros1Pal_motion_model_msgsGetMotionMapServer = ServiceServer<
    Ros1Pal_motion_model_msgsGetMotionMapRequest,
    Ros1Pal_motion_model_msgsGetMotionMapResponse,
>;

/// Typed pal_video_recording_msgs/StartRecording call/real-submit owner; every alias is explicit.
pub type Ros1Pal_video_recording_msgsStartRecordingClient = ServiceClient<
    Ros1Pal_video_recording_msgsStartRecordingRequest,
    Ros1Pal_video_recording_msgsStartRecordingResponse,
>;

/// Typed pal_video_recording_msgs/StartRecording advertiser/responder with independent grants.
pub type Ros1Pal_video_recording_msgsStartRecordingServer = ServiceServer<
    Ros1Pal_video_recording_msgsStartRecordingRequest,
    Ros1Pal_video_recording_msgsStartRecordingResponse,
>;

/// Typed pal_video_recording_msgs/StopRecording call/real-submit owner; every alias is explicit.
pub type Ros1Pal_video_recording_msgsStopRecordingClient = ServiceClient<
    Ros1Pal_video_recording_msgsStopRecordingRequest,
    Ros1Pal_video_recording_msgsStopRecordingResponse,
>;

/// Typed pal_video_recording_msgs/StopRecording advertiser/responder with independent grants.
pub type Ros1Pal_video_recording_msgsStopRecordingServer = ServiceServer<
    Ros1Pal_video_recording_msgsStopRecordingRequest,
    Ros1Pal_video_recording_msgsStopRecordingResponse,
>;

/// Complete custom pal_vision_msgs/FaceRecognition client; four roles plus optional cancel-any.
pub type Ros1Pal_vision_msgsFaceRecognitionClient = ActionClient<
    Ros1Pal_vision_msgsFaceRecognitionGoal,
    Ros1Pal_vision_msgsFaceRecognitionResult,
    Ros1Pal_vision_msgsFaceRecognitionFeedback,
>;

/// Complete custom pal_vision_msgs/FaceRecognition server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_vision_msgsFaceRecognitionServer = ActionServer<
    Ros1Pal_vision_msgsFaceRecognitionGoal,
    Ros1Pal_vision_msgsFaceRecognitionResult,
    Ros1Pal_vision_msgsFaceRecognitionFeedback,
>;

/// Typed pal_vision_msgs/FaceTrackingStart call/real-submit owner; every alias is explicit.
pub type Ros1Pal_vision_msgsFaceTrackingStartClient = ServiceClient<
    Ros1Pal_vision_msgsFaceTrackingStartRequest,
    Ros1Pal_vision_msgsFaceTrackingStartResponse,
>;

/// Typed pal_vision_msgs/FaceTrackingStart advertiser/responder with independent grants.
pub type Ros1Pal_vision_msgsFaceTrackingStartServer = ServiceServer<
    Ros1Pal_vision_msgsFaceTrackingStartRequest,
    Ros1Pal_vision_msgsFaceTrackingStartResponse,
>;

/// Typed pal_vision_msgs/FaceTrackingStop call/real-submit owner; every alias is explicit.
pub type Ros1Pal_vision_msgsFaceTrackingStopClient = ServiceClient<
    Ros1Pal_vision_msgsFaceTrackingStopRequest,
    Ros1Pal_vision_msgsFaceTrackingStopResponse,
>;

/// Typed pal_vision_msgs/FaceTrackingStop advertiser/responder with independent grants.
pub type Ros1Pal_vision_msgsFaceTrackingStopServer = ServiceServer<
    Ros1Pal_vision_msgsFaceTrackingStopRequest,
    Ros1Pal_vision_msgsFaceTrackingStopResponse,
>;

/// Typed pal_vision_msgs/FollowMeStart call/real-submit owner; every alias is explicit.
pub type Ros1Pal_vision_msgsFollowMeStartClient = ServiceClient<
    Ros1Pal_vision_msgsFollowMeStartRequest,
    Ros1Pal_vision_msgsFollowMeStartResponse,
>;

/// Typed pal_vision_msgs/FollowMeStart advertiser/responder with independent grants.
pub type Ros1Pal_vision_msgsFollowMeStartServer = ServiceServer<
    Ros1Pal_vision_msgsFollowMeStartRequest,
    Ros1Pal_vision_msgsFollowMeStartResponse,
>;

/// Typed pal_vision_msgs/FollowMeStop call/real-submit owner; every alias is explicit.
pub type Ros1Pal_vision_msgsFollowMeStopClient =
    ServiceClient<Ros1Pal_vision_msgsFollowMeStopRequest, Ros1Pal_vision_msgsFollowMeStopResponse>;

/// Typed pal_vision_msgs/FollowMeStop advertiser/responder with independent grants.
pub type Ros1Pal_vision_msgsFollowMeStopServer =
    ServiceServer<Ros1Pal_vision_msgsFollowMeStopRequest, Ros1Pal_vision_msgsFollowMeStopResponse>;

/// Typed pal_vision_msgs/LookToPixel call/real-submit owner; every alias is explicit.
pub type Ros1Pal_vision_msgsLookToPixelClient =
    ServiceClient<Ros1Pal_vision_msgsLookToPixelRequest, Ros1Pal_vision_msgsLookToPixelResponse>;

/// Typed pal_vision_msgs/LookToPixel advertiser/responder with independent grants.
pub type Ros1Pal_vision_msgsLookToPixelServer =
    ServiceServer<Ros1Pal_vision_msgsLookToPixelRequest, Ros1Pal_vision_msgsLookToPixelResponse>;

/// Complete custom pal_visual_localization_msgs/VisualLocAddPlace client; four roles plus optional cancel-any.
pub type Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient = ActionClient<
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback,
>;

/// Complete custom pal_visual_localization_msgs/VisualLocAddPlace server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_visual_localization_msgsVisualLocAddPlaceServer = ActionServer<
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback,
>;

/// Complete custom pal_visual_localization_msgs/VisualLocRecognize client; four roles plus optional cancel-any.
pub type Ros1Pal_visual_localization_msgsVisualLocRecognizeClient = ActionClient<
    Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeResult,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback,
>;

/// Complete custom pal_visual_localization_msgs/VisualLocRecognize server; feedback1/terminal2..4 remain distinct.
pub type Ros1Pal_visual_localization_msgsVisualLocRecognizeServer = ActionServer<
    Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeResult,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback,
>;

/// Typed pal_walking_msgs/MoveHipFeet call/real-submit owner; every alias is explicit.
pub type Ros1Pal_walking_msgsMoveHipFeetClient =
    ServiceClient<Ros1Pal_walking_msgsMoveHipFeetRequest, Ros1Pal_walking_msgsMoveHipFeetResponse>;

/// Typed pal_walking_msgs/MoveHipFeet advertiser/responder with independent grants.
pub type Ros1Pal_walking_msgsMoveHipFeetServer =
    ServiceServer<Ros1Pal_walking_msgsMoveHipFeetRequest, Ros1Pal_walking_msgsMoveHipFeetResponse>;

/// Typed pal_walking_msgs/Sit call/real-submit owner; every alias is explicit.
pub type Ros1Pal_walking_msgsSitClient =
    ServiceClient<Ros1Pal_walking_msgsSitRequest, Ros1Pal_walking_msgsSitResponse>;

/// Typed pal_walking_msgs/Sit advertiser/responder with independent grants.
pub type Ros1Pal_walking_msgsSitServer =
    ServiceServer<Ros1Pal_walking_msgsSitRequest, Ros1Pal_walking_msgsSitResponse>;

/// Typed pal_walking_msgs/StepOver call/real-submit owner; every alias is explicit.
pub type Ros1Pal_walking_msgsStepOverClient =
    ServiceClient<Ros1Pal_walking_msgsStepOverRequest, Ros1Pal_walking_msgsStepOverResponse>;

/// Typed pal_walking_msgs/StepOver advertiser/responder with independent grants.
pub type Ros1Pal_walking_msgsStepOverServer =
    ServiceServer<Ros1Pal_walking_msgsStepOverRequest, Ros1Pal_walking_msgsStepOverResponse>;

/// Typed pal_walking_msgs/WalkSteps call/real-submit owner; every alias is explicit.
pub type Ros1Pal_walking_msgsWalkStepsClient =
    ServiceClient<Ros1Pal_walking_msgsWalkStepsRequest, Ros1Pal_walking_msgsWalkStepsResponse>;

/// Typed pal_walking_msgs/WalkSteps advertiser/responder with independent grants.
pub type Ros1Pal_walking_msgsWalkStepsServer =
    ServiceServer<Ros1Pal_walking_msgsWalkStepsRequest, Ros1Pal_walking_msgsWalkStepsResponse>;

/// Typed pal_wifi_localization_msgs/GetWifiMap call/real-submit owner; every alias is explicit.
pub type Ros1Pal_wifi_localization_msgsGetWifiMapClient = ServiceClient<
    Ros1Pal_wifi_localization_msgsGetWifiMapRequest,
    Ros1Pal_wifi_localization_msgsGetWifiMapResponse,
>;

/// Typed pal_wifi_localization_msgs/GetWifiMap advertiser/responder with independent grants.
pub type Ros1Pal_wifi_localization_msgsGetWifiMapServer = ServiceServer<
    Ros1Pal_wifi_localization_msgsGetWifiMapRequest,
    Ros1Pal_wifi_localization_msgsGetWifiMapResponse,
>;
