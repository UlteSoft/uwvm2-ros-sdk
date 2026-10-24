//! @file bounded_interfaces.rs
//! @brief Provide the complete trossen ros1_main protocol owner surface.
//! @details The original 61 record catalog retains field order, constants, defaults and quotas.
//! Borrowed values and buffers must remain stable while a conversion is in progress.
//! Explicit resource owners retain their original primary and cleanup errors; callers close each owner.
//! No declaration grants a capability or establishes a native ROS registry identity.
//! Original declarations and units are retained in share/platform/trossen/catalogs.
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

/// Complete canonical component bound for interbotix_slate_msgs/SetStringRequest.
impl Component for Ros1Interbotix_slate_msgsSetStringRequest {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_slate_msgs/SetStringResponse.
impl Component for Ros1Interbotix_slate_msgsSetStringResponse {
    const MAX_WIRE: usize = 133;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/MotorGainsRequest.
impl Component for Ros1Interbotix_xs_msgsMotorGainsRequest {
    const MAX_WIRE: usize = 292;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/MotorGainsResponse.
impl Component for Ros1Interbotix_xs_msgsMotorGainsResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/OperatingModesRequest.
impl Component for Ros1Interbotix_xs_msgsOperatingModesRequest {
    const MAX_WIRE: usize = 536;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/OperatingModesResponse.
impl Component for Ros1Interbotix_xs_msgsOperatingModesResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/RebootRequest.
impl Component for Ros1Interbotix_xs_msgsRebootRequest {
    const MAX_WIRE: usize = 266;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/RebootResponse.
impl Component for Ros1Interbotix_xs_msgsRebootResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/RegisterValuesRequest.
impl Component for Ros1Interbotix_xs_msgsRegisterValuesRequest {
    const MAX_WIRE: usize = 400;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/RegisterValuesResponse.
impl Component for Ros1Interbotix_xs_msgsRegisterValuesResponse {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/RobotInfoRequest.
impl Component for Ros1Interbotix_xs_msgsRobotInfoRequest {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/RobotInfoResponse.
impl Component for Ros1Interbotix_xs_msgsRobotInfoResponse {
    const MAX_WIRE: usize = 18474;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/TorqueEnableRequest.
impl Component for Ros1Interbotix_xs_msgsTorqueEnableRequest {
    const MAX_WIRE: usize = 265;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for interbotix_xs_msgs/TorqueEnableResponse.
impl Component for Ros1Interbotix_xs_msgsTorqueEnableResponse {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/ClearErrRequest.
impl Component for Ros1Xarm_msgsClearErrRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/ClearErrResponse.
impl Component for Ros1Xarm_msgsClearErrResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/ConfigToolModbusRequest.
impl Component for Ros1Xarm_msgsConfigToolModbusRequest {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/ConfigToolModbusResponse.
impl Component for Ros1Xarm_msgsConfigToolModbusResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetAnalogIORequest.
impl Component for Ros1Xarm_msgsGetAnalogIORequest {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetAnalogIOResponse.
impl Component for Ros1Xarm_msgsGetAnalogIOResponse {
    const MAX_WIRE: usize = 138;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetControllerDigitalIORequest.
impl Component for Ros1Xarm_msgsGetControllerDigitalIORequest {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetControllerDigitalIOResponse.
impl Component for Ros1Xarm_msgsGetControllerDigitalIOResponse {
    const MAX_WIRE: usize = 136;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetDigitalIORequest.
impl Component for Ros1Xarm_msgsGetDigitalIORequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetDigitalIOResponse.
impl Component for Ros1Xarm_msgsGetDigitalIOResponse {
    const MAX_WIRE: usize = 142;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetErrRequest.
impl Component for Ros1Xarm_msgsGetErrRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GetErrResponse.
impl Component for Ros1Xarm_msgsGetErrResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GripperConfigRequest.
impl Component for Ros1Xarm_msgsGripperConfigRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GripperConfigResponse.
impl Component for Ros1Xarm_msgsGripperConfigResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GripperMoveRequest.
impl Component for Ros1Xarm_msgsGripperMoveRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GripperMoveResponse.
impl Component for Ros1Xarm_msgsGripperMoveResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GripperStateRequest.
impl Component for Ros1Xarm_msgsGripperStateRequest {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/GripperStateResponse.
impl Component for Ros1Xarm_msgsGripperStateResponse {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/MoveRequest.
impl Component for Ros1Xarm_msgsMoveRequest {
    const MAX_WIRE: usize = 84;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/MoveResponse.
impl Component for Ros1Xarm_msgsMoveResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetAxisRequest.
impl Component for Ros1Xarm_msgsSetAxisRequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetAxisResponse.
impl Component for Ros1Xarm_msgsSetAxisResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetDigitalIORequest.
impl Component for Ros1Xarm_msgsSetDigitalIORequest {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetDigitalIOResponse.
impl Component for Ros1Xarm_msgsSetDigitalIOResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetInt16Request.
impl Component for Ros1Xarm_msgsSetInt16Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetInt16Response.
impl Component for Ros1Xarm_msgsSetInt16Response {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetLoadRequest.
impl Component for Ros1Xarm_msgsSetLoadRequest {
    const MAX_WIRE: usize = 16;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetLoadResponse.
impl Component for Ros1Xarm_msgsSetLoadResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetToolModbusRequest.
impl Component for Ros1Xarm_msgsSetToolModbusRequest {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/SetToolModbusResponse.
impl Component for Ros1Xarm_msgsSetToolModbusResponse {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/TCPOffsetRequest.
impl Component for Ros1Xarm_msgsTCPOffsetRequest {
    const MAX_WIRE: usize = 24;
    const ROS_VERSION: u8 = 1;
}

/// Complete canonical component bound for xarm_msgs/TCPOffsetResponse.
impl Component for Ros1Xarm_msgsTCPOffsetResponse {
    const MAX_WIRE: usize = 134;
    const ROS_VERSION: u8 = 1;
}

/// Typed interbotix_slate_msgs/SetString call/real-submit owner; every alias is explicit.
pub type Ros1Interbotix_slate_msgsSetStringClient = ServiceClient<
    Ros1Interbotix_slate_msgsSetStringRequest,
    Ros1Interbotix_slate_msgsSetStringResponse,
>;

/// Typed interbotix_slate_msgs/SetString advertiser/responder with independent grants.
pub type Ros1Interbotix_slate_msgsSetStringServer = ServiceServer<
    Ros1Interbotix_slate_msgsSetStringRequest,
    Ros1Interbotix_slate_msgsSetStringResponse,
>;

/// Typed interbotix_xs_msgs/MotorGains call/real-submit owner; every alias is explicit.
pub type Ros1Interbotix_xs_msgsMotorGainsClient = ServiceClient<
    Ros1Interbotix_xs_msgsMotorGainsRequest,
    Ros1Interbotix_xs_msgsMotorGainsResponse,
>;

/// Typed interbotix_xs_msgs/MotorGains advertiser/responder with independent grants.
pub type Ros1Interbotix_xs_msgsMotorGainsServer = ServiceServer<
    Ros1Interbotix_xs_msgsMotorGainsRequest,
    Ros1Interbotix_xs_msgsMotorGainsResponse,
>;

/// Typed interbotix_xs_msgs/OperatingModes call/real-submit owner; every alias is explicit.
pub type Ros1Interbotix_xs_msgsOperatingModesClient = ServiceClient<
    Ros1Interbotix_xs_msgsOperatingModesRequest,
    Ros1Interbotix_xs_msgsOperatingModesResponse,
>;

/// Typed interbotix_xs_msgs/OperatingModes advertiser/responder with independent grants.
pub type Ros1Interbotix_xs_msgsOperatingModesServer = ServiceServer<
    Ros1Interbotix_xs_msgsOperatingModesRequest,
    Ros1Interbotix_xs_msgsOperatingModesResponse,
>;

/// Typed interbotix_xs_msgs/Reboot call/real-submit owner; every alias is explicit.
pub type Ros1Interbotix_xs_msgsRebootClient =
    ServiceClient<Ros1Interbotix_xs_msgsRebootRequest, Ros1Interbotix_xs_msgsRebootResponse>;

/// Typed interbotix_xs_msgs/Reboot advertiser/responder with independent grants.
pub type Ros1Interbotix_xs_msgsRebootServer =
    ServiceServer<Ros1Interbotix_xs_msgsRebootRequest, Ros1Interbotix_xs_msgsRebootResponse>;

/// Typed interbotix_xs_msgs/RegisterValues call/real-submit owner; every alias is explicit.
pub type Ros1Interbotix_xs_msgsRegisterValuesClient = ServiceClient<
    Ros1Interbotix_xs_msgsRegisterValuesRequest,
    Ros1Interbotix_xs_msgsRegisterValuesResponse,
>;

/// Typed interbotix_xs_msgs/RegisterValues advertiser/responder with independent grants.
pub type Ros1Interbotix_xs_msgsRegisterValuesServer = ServiceServer<
    Ros1Interbotix_xs_msgsRegisterValuesRequest,
    Ros1Interbotix_xs_msgsRegisterValuesResponse,
>;

/// Typed interbotix_xs_msgs/RobotInfo call/real-submit owner; every alias is explicit.
pub type Ros1Interbotix_xs_msgsRobotInfoClient =
    ServiceClient<Ros1Interbotix_xs_msgsRobotInfoRequest, Ros1Interbotix_xs_msgsRobotInfoResponse>;

/// Typed interbotix_xs_msgs/RobotInfo advertiser/responder with independent grants.
pub type Ros1Interbotix_xs_msgsRobotInfoServer =
    ServiceServer<Ros1Interbotix_xs_msgsRobotInfoRequest, Ros1Interbotix_xs_msgsRobotInfoResponse>;

/// Typed interbotix_xs_msgs/TorqueEnable call/real-submit owner; every alias is explicit.
pub type Ros1Interbotix_xs_msgsTorqueEnableClient = ServiceClient<
    Ros1Interbotix_xs_msgsTorqueEnableRequest,
    Ros1Interbotix_xs_msgsTorqueEnableResponse,
>;

/// Typed interbotix_xs_msgs/TorqueEnable advertiser/responder with independent grants.
pub type Ros1Interbotix_xs_msgsTorqueEnableServer = ServiceServer<
    Ros1Interbotix_xs_msgsTorqueEnableRequest,
    Ros1Interbotix_xs_msgsTorqueEnableResponse,
>;

/// Typed xarm_msgs/ClearErr call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsClearErrClient =
    ServiceClient<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse>;

/// Typed xarm_msgs/ClearErr advertiser/responder with independent grants.
pub type Ros1Xarm_msgsClearErrServer =
    ServiceServer<Ros1Xarm_msgsClearErrRequest, Ros1Xarm_msgsClearErrResponse>;

/// Typed xarm_msgs/ConfigToolModbus call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsConfigToolModbusClient =
    ServiceClient<Ros1Xarm_msgsConfigToolModbusRequest, Ros1Xarm_msgsConfigToolModbusResponse>;

/// Typed xarm_msgs/ConfigToolModbus advertiser/responder with independent grants.
pub type Ros1Xarm_msgsConfigToolModbusServer =
    ServiceServer<Ros1Xarm_msgsConfigToolModbusRequest, Ros1Xarm_msgsConfigToolModbusResponse>;

/// Typed xarm_msgs/GetAnalogIO call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsGetAnalogIOClient =
    ServiceClient<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse>;

/// Typed xarm_msgs/GetAnalogIO advertiser/responder with independent grants.
pub type Ros1Xarm_msgsGetAnalogIOServer =
    ServiceServer<Ros1Xarm_msgsGetAnalogIORequest, Ros1Xarm_msgsGetAnalogIOResponse>;

/// Typed xarm_msgs/GetControllerDigitalIO call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsGetControllerDigitalIOClient = ServiceClient<
    Ros1Xarm_msgsGetControllerDigitalIORequest,
    Ros1Xarm_msgsGetControllerDigitalIOResponse,
>;

/// Typed xarm_msgs/GetControllerDigitalIO advertiser/responder with independent grants.
pub type Ros1Xarm_msgsGetControllerDigitalIOServer = ServiceServer<
    Ros1Xarm_msgsGetControllerDigitalIORequest,
    Ros1Xarm_msgsGetControllerDigitalIOResponse,
>;

/// Typed xarm_msgs/GetDigitalIO call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsGetDigitalIOClient =
    ServiceClient<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse>;

/// Typed xarm_msgs/GetDigitalIO advertiser/responder with independent grants.
pub type Ros1Xarm_msgsGetDigitalIOServer =
    ServiceServer<Ros1Xarm_msgsGetDigitalIORequest, Ros1Xarm_msgsGetDigitalIOResponse>;

/// Typed xarm_msgs/GetErr call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsGetErrClient =
    ServiceClient<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse>;

/// Typed xarm_msgs/GetErr advertiser/responder with independent grants.
pub type Ros1Xarm_msgsGetErrServer =
    ServiceServer<Ros1Xarm_msgsGetErrRequest, Ros1Xarm_msgsGetErrResponse>;

/// Typed xarm_msgs/GripperConfig call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsGripperConfigClient =
    ServiceClient<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse>;

/// Typed xarm_msgs/GripperConfig advertiser/responder with independent grants.
pub type Ros1Xarm_msgsGripperConfigServer =
    ServiceServer<Ros1Xarm_msgsGripperConfigRequest, Ros1Xarm_msgsGripperConfigResponse>;

/// Typed xarm_msgs/GripperMove call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsGripperMoveClient =
    ServiceClient<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse>;

/// Typed xarm_msgs/GripperMove advertiser/responder with independent grants.
pub type Ros1Xarm_msgsGripperMoveServer =
    ServiceServer<Ros1Xarm_msgsGripperMoveRequest, Ros1Xarm_msgsGripperMoveResponse>;

/// Typed xarm_msgs/GripperState call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsGripperStateClient =
    ServiceClient<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse>;

/// Typed xarm_msgs/GripperState advertiser/responder with independent grants.
pub type Ros1Xarm_msgsGripperStateServer =
    ServiceServer<Ros1Xarm_msgsGripperStateRequest, Ros1Xarm_msgsGripperStateResponse>;

/// Typed xarm_msgs/Move call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsMoveClient =
    ServiceClient<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse>;

/// Typed xarm_msgs/Move advertiser/responder with independent grants.
pub type Ros1Xarm_msgsMoveServer =
    ServiceServer<Ros1Xarm_msgsMoveRequest, Ros1Xarm_msgsMoveResponse>;

/// Typed xarm_msgs/SetAxis call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsSetAxisClient =
    ServiceClient<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse>;

/// Typed xarm_msgs/SetAxis advertiser/responder with independent grants.
pub type Ros1Xarm_msgsSetAxisServer =
    ServiceServer<Ros1Xarm_msgsSetAxisRequest, Ros1Xarm_msgsSetAxisResponse>;

/// Typed xarm_msgs/SetDigitalIO call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsSetDigitalIOClient =
    ServiceClient<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse>;

/// Typed xarm_msgs/SetDigitalIO advertiser/responder with independent grants.
pub type Ros1Xarm_msgsSetDigitalIOServer =
    ServiceServer<Ros1Xarm_msgsSetDigitalIORequest, Ros1Xarm_msgsSetDigitalIOResponse>;

/// Typed xarm_msgs/SetInt16 call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsSetInt16Client =
    ServiceClient<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response>;

/// Typed xarm_msgs/SetInt16 advertiser/responder with independent grants.
pub type Ros1Xarm_msgsSetInt16Server =
    ServiceServer<Ros1Xarm_msgsSetInt16Request, Ros1Xarm_msgsSetInt16Response>;

/// Typed xarm_msgs/SetLoad call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsSetLoadClient =
    ServiceClient<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse>;

/// Typed xarm_msgs/SetLoad advertiser/responder with independent grants.
pub type Ros1Xarm_msgsSetLoadServer =
    ServiceServer<Ros1Xarm_msgsSetLoadRequest, Ros1Xarm_msgsSetLoadResponse>;

/// Typed xarm_msgs/SetToolModbus call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsSetToolModbusClient =
    ServiceClient<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse>;

/// Typed xarm_msgs/SetToolModbus advertiser/responder with independent grants.
pub type Ros1Xarm_msgsSetToolModbusServer =
    ServiceServer<Ros1Xarm_msgsSetToolModbusRequest, Ros1Xarm_msgsSetToolModbusResponse>;

/// Typed xarm_msgs/TCPOffset call/real-submit owner; every alias is explicit.
pub type Ros1Xarm_msgsTCPOffsetClient =
    ServiceClient<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse>;

/// Typed xarm_msgs/TCPOffset advertiser/responder with independent grants.
pub type Ros1Xarm_msgsTCPOffsetServer =
    ServiceServer<Ros1Xarm_msgsTCPOffsetRequest, Ros1Xarm_msgsTCPOffsetResponse>;
