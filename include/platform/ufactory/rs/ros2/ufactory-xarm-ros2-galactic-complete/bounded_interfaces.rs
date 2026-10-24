//! @file bounded_interfaces.rs
//! @brief Preserve the complete original ufactory/ros2_galactic canonical value domain.
//! @details The selected domain contains 111 complete record/components and 300 original fields. Declared
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

/// Complete canonical component bound for xarm_msgs/srv/BioGripperCtrl_Request.
impl Component for Ros2Xarm_msgsSrvBioGripperCtrl_Request {
    const MAX_WIRE: usize = 7;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/BioGripperCtrl_Response.
impl Component for Ros2Xarm_msgsSrvBioGripperCtrl_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/BioGripperEnable_Request.
impl Component for Ros2Xarm_msgsSrvBioGripperEnable_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/BioGripperEnable_Response.
impl Component for Ros2Xarm_msgsSrvBioGripperEnable_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/Call_Request.
impl Component for Ros2Xarm_msgsSrvCall_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/Call_Response.
impl Component for Ros2Xarm_msgsSrvCall_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtAdmittanceParams_Request.
impl Component for Ros2Xarm_msgsSrvFtAdmittanceParams_Request {
    const MAX_WIRE: usize = 466;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtAdmittanceParams_Response.
impl Component for Ros2Xarm_msgsSrvFtAdmittanceParams_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtCaliLoad_Request.
impl Component for Ros2Xarm_msgsSrvFtCaliLoad_Request {
    const MAX_WIRE: usize = 149;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtCaliLoad_Response.
impl Component for Ros2Xarm_msgsSrvFtCaliLoad_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtForceConfig_Request.
impl Component for Ros2Xarm_msgsSrvFtForceConfig_Request {
    const MAX_WIRE: usize = 334;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtForceConfig_Response.
impl Component for Ros2Xarm_msgsSrvFtForceConfig_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtForceParams_Request.
impl Component for Ros2Xarm_msgsSrvFtForceParams_Request {
    const MAX_WIRE: usize = 862;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtForceParams_Response.
impl Component for Ros2Xarm_msgsSrvFtForceParams_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtForcePid_Request.
impl Component for Ros2Xarm_msgsSrvFtForcePid_Request {
    const MAX_WIRE: usize = 528;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtForcePid_Response.
impl Component for Ros2Xarm_msgsSrvFtForcePid_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtImpedance_Request.
impl Component for Ros2Xarm_msgsSrvFtImpedance_Request {
    const MAX_WIRE: usize = 466;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/FtImpedance_Response.
impl Component for Ros2Xarm_msgsSrvFtImpedance_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetAnalogIO_Request.
impl Component for Ros2Xarm_msgsSrvGetAnalogIO_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetAnalogIO_Response.
impl Component for Ros2Xarm_msgsSrvGetAnalogIO_Response {
    const MAX_WIRE: usize = 266;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetDigitalIO_Request.
impl Component for Ros2Xarm_msgsSrvGetDigitalIO_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetDigitalIO_Response.
impl Component for Ros2Xarm_msgsSrvGetDigitalIO_Response {
    const MAX_WIRE: usize = 330;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetFloat32_Request.
impl Component for Ros2Xarm_msgsSrvGetFloat32_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetFloat32_Response.
impl Component for Ros2Xarm_msgsSrvGetFloat32_Response {
    const MAX_WIRE: usize = 266;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetFloat32List_Request.
impl Component for Ros2Xarm_msgsSrvGetFloat32List_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetFloat32List_Response.
impl Component for Ros2Xarm_msgsSrvGetFloat32List_Response {
    const MAX_WIRE: usize = 394;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt16_Request.
impl Component for Ros2Xarm_msgsSrvGetInt16_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt16_Response.
impl Component for Ros2Xarm_msgsSrvGetInt16_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt16List_Request.
impl Component for Ros2Xarm_msgsSrvGetInt16List_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt16List_Response.
impl Component for Ros2Xarm_msgsSrvGetInt16List_Response {
    const MAX_WIRE: usize = 330;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt32_Request.
impl Component for Ros2Xarm_msgsSrvGetInt32_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt32_Response.
impl Component for Ros2Xarm_msgsSrvGetInt32_Response {
    const MAX_WIRE: usize = 266;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt32ByType_Request.
impl Component for Ros2Xarm_msgsSrvGetInt32ByType_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetInt32ByType_Response.
impl Component for Ros2Xarm_msgsSrvGetInt32ByType_Response {
    const MAX_WIRE: usize = 266;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetSetModbusData_Request.
impl Component for Ros2Xarm_msgsSrvGetSetModbusData_Request {
    const MAX_WIRE: usize = 4107;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GetSetModbusData_Response.
impl Component for Ros2Xarm_msgsSrvGetSetModbusData_Response {
    const MAX_WIRE: usize = 4362;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GripperMove_Request.
impl Component for Ros2Xarm_msgsSrvGripperMove_Request {
    const MAX_WIRE: usize = 9;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/GripperMove_Response.
impl Component for Ros2Xarm_msgsSrvGripperMove_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/IdenLoad_Request.
impl Component for Ros2Xarm_msgsSrvIdenLoad_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/IdenLoad_Response.
impl Component for Ros2Xarm_msgsSrvIdenLoad_Response {
    const MAX_WIRE: usize = 394;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearMotorBackOrigin_Request.
impl Component for Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearMotorBackOrigin_Response.
impl Component for Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearMotorSetPos_Request.
impl Component for Ros2Xarm_msgsSrvLinearMotorSetPos_Request {
    const MAX_WIRE: usize = 10;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearMotorSetPos_Response.
impl Component for Ros2Xarm_msgsSrvLinearMotorSetPos_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearTrackBackOrigin_Request.
impl Component for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearTrackBackOrigin_Response.
impl Component for Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearTrackSetPos_Request.
impl Component for Ros2Xarm_msgsSrvLinearTrackSetPos_Request {
    const MAX_WIRE: usize = 10;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/LinearTrackSetPos_Response.
impl Component for Ros2Xarm_msgsSrvLinearTrackSetPos_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveCartesian_Request.
impl Component for Ros2Xarm_msgsSrvMoveCartesian_Request {
    const MAX_WIRE: usize = 156;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveCartesian_Response.
impl Component for Ros2Xarm_msgsSrvMoveCartesian_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveCircle_Request.
impl Component for Ros2Xarm_msgsSrvMoveCircle_Request {
    const MAX_WIRE: usize = 287;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveCircle_Response.
impl Component for Ros2Xarm_msgsSrvMoveCircle_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveHome_Request.
impl Component for Ros2Xarm_msgsSrvMoveHome_Request {
    const MAX_WIRE: usize = 17;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveHome_Response.
impl Component for Ros2Xarm_msgsSrvMoveHome_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveJoint_Request.
impl Component for Ros2Xarm_msgsSrvMoveJoint_Request {
    const MAX_WIRE: usize = 154;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveJoint_Response.
impl Component for Ros2Xarm_msgsSrvMoveJoint_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveVelocity_Request.
impl Component for Ros2Xarm_msgsSrvMoveVelocity_Request {
    const MAX_WIRE: usize = 138;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/MoveVelocity_Response.
impl Component for Ros2Xarm_msgsSrvMoveVelocity_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanExec_Request.
impl Component for Ros2Xarm_msgsSrvPlanExec_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanExec_Response.
impl Component for Ros2Xarm_msgsSrvPlanExec_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanJoint_Request.
impl Component for Ros2Xarm_msgsSrvPlanJoint_Request {
    const MAX_WIRE: usize = 260;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanJoint_Response.
impl Component for Ros2Xarm_msgsSrvPlanJoint_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanPose_Request.
impl Component for Ros2Xarm_msgsSrvPlanPose_Request {
    const MAX_WIRE: usize = 56;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanPose_Response.
impl Component for Ros2Xarm_msgsSrvPlanPose_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanSingleStraight_Request.
impl Component for Ros2Xarm_msgsSrvPlanSingleStraight_Request {
    const MAX_WIRE: usize = 56;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/PlanSingleStraight_Response.
impl Component for Ros2Xarm_msgsSrvPlanSingleStraight_Response {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqActivate_Request.
impl Component for Ros2Xarm_msgsSrvRobotiqActivate_Request {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqActivate_Response.
impl Component for Ros2Xarm_msgsSrvRobotiqActivate_Response {
    const MAX_WIRE: usize = 4362;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqGetStatus_Request.
impl Component for Ros2Xarm_msgsSrvRobotiqGetStatus_Request {
    const MAX_WIRE: usize = 1;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqGetStatus_Response.
impl Component for Ros2Xarm_msgsSrvRobotiqGetStatus_Response {
    const MAX_WIRE: usize = 4362;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqMove_Request.
impl Component for Ros2Xarm_msgsSrvRobotiqMove_Request {
    const MAX_WIRE: usize = 8;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqMove_Response.
impl Component for Ros2Xarm_msgsSrvRobotiqMove_Response {
    const MAX_WIRE: usize = 4362;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqReset_Request.
impl Component for Ros2Xarm_msgsSrvRobotiqReset_Request {
    const MAX_WIRE: usize = 0;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/RobotiqReset_Response.
impl Component for Ros2Xarm_msgsSrvRobotiqReset_Response {
    const MAX_WIRE: usize = 4362;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetAnalogIO_Request.
impl Component for Ros2Xarm_msgsSrvSetAnalogIO_Request {
    const MAX_WIRE: usize = 142;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetAnalogIO_Response.
impl Component for Ros2Xarm_msgsSrvSetAnalogIO_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetDigitalIO_Request.
impl Component for Ros2Xarm_msgsSrvSetDigitalIO_Request {
    const MAX_WIRE: usize = 144;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetDigitalIO_Response.
impl Component for Ros2Xarm_msgsSrvSetDigitalIO_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetFloat32_Request.
impl Component for Ros2Xarm_msgsSrvSetFloat32_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetFloat32_Response.
impl Component for Ros2Xarm_msgsSrvSetFloat32_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetFloat32List_Request.
impl Component for Ros2Xarm_msgsSrvSetFloat32List_Request {
    const MAX_WIRE: usize = 132;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetFloat32List_Response.
impl Component for Ros2Xarm_msgsSrvSetFloat32List_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt16_Request.
impl Component for Ros2Xarm_msgsSrvSetInt16_Request {
    const MAX_WIRE: usize = 2;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt16_Response.
impl Component for Ros2Xarm_msgsSrvSetInt16_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt16ById_Request.
impl Component for Ros2Xarm_msgsSrvSetInt16ById_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt16ById_Response.
impl Component for Ros2Xarm_msgsSrvSetInt16ById_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt16List_Request.
impl Component for Ros2Xarm_msgsSrvSetInt16List_Request {
    const MAX_WIRE: usize = 68;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt16List_Response.
impl Component for Ros2Xarm_msgsSrvSetInt16List_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt32_Request.
impl Component for Ros2Xarm_msgsSrvSetInt32_Request {
    const MAX_WIRE: usize = 4;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt32_Response.
impl Component for Ros2Xarm_msgsSrvSetInt32_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt32ByType_Request.
impl Component for Ros2Xarm_msgsSrvSetInt32ByType_Request {
    const MAX_WIRE: usize = 6;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetInt32ByType_Response.
impl Component for Ros2Xarm_msgsSrvSetInt32ByType_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetModbusTimeout_Request.
impl Component for Ros2Xarm_msgsSrvSetModbusTimeout_Request {
    const MAX_WIRE: usize = 5;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetModbusTimeout_Response.
impl Component for Ros2Xarm_msgsSrvSetModbusTimeout_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetTcpLoad_Request.
impl Component for Ros2Xarm_msgsSrvSetTcpLoad_Request {
    const MAX_WIRE: usize = 136;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/SetTcpLoad_Response.
impl Component for Ros2Xarm_msgsSrvSetTcpLoad_Response {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/TrajCtrl_Request.
impl Component for Ros2Xarm_msgsSrvTrajCtrl_Request {
    const MAX_WIRE: usize = 264;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/TrajCtrl_Response.
impl Component for Ros2Xarm_msgsSrvTrajCtrl_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/TrajPlay_Request.
impl Component for Ros2Xarm_msgsSrvTrajPlay_Request {
    const MAX_WIRE: usize = 265;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/TrajPlay_Response.
impl Component for Ros2Xarm_msgsSrvTrajPlay_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/VacuumGripperCtrl_Request.
impl Component for Ros2Xarm_msgsSrvVacuumGripperCtrl_Request {
    const MAX_WIRE: usize = 13;
    const ROS_VERSION: u8 = 2;
}

/// Complete canonical component bound for xarm_msgs/srv/VacuumGripperCtrl_Response.
impl Component for Ros2Xarm_msgsSrvVacuumGripperCtrl_Response {
    const MAX_WIRE: usize = 262;
    const ROS_VERSION: u8 = 2;
}

/// Typed xarm_msgs/srv/BioGripperCtrl call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvBioGripperCtrlClient =
    ServiceClient<Ros2Xarm_msgsSrvBioGripperCtrl_Request, Ros2Xarm_msgsSrvBioGripperCtrl_Response>;

/// Typed xarm_msgs/srv/BioGripperCtrl advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvBioGripperCtrlServer =
    ServiceServer<Ros2Xarm_msgsSrvBioGripperCtrl_Request, Ros2Xarm_msgsSrvBioGripperCtrl_Response>;

/// Typed xarm_msgs/srv/BioGripperEnable call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvBioGripperEnableClient = ServiceClient<
    Ros2Xarm_msgsSrvBioGripperEnable_Request,
    Ros2Xarm_msgsSrvBioGripperEnable_Response,
>;

/// Typed xarm_msgs/srv/BioGripperEnable advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvBioGripperEnableServer = ServiceServer<
    Ros2Xarm_msgsSrvBioGripperEnable_Request,
    Ros2Xarm_msgsSrvBioGripperEnable_Response,
>;

/// Typed xarm_msgs/srv/Call call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvCallClient =
    ServiceClient<Ros2Xarm_msgsSrvCall_Request, Ros2Xarm_msgsSrvCall_Response>;

/// Typed xarm_msgs/srv/Call advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvCallServer =
    ServiceServer<Ros2Xarm_msgsSrvCall_Request, Ros2Xarm_msgsSrvCall_Response>;

/// Typed xarm_msgs/srv/FtAdmittanceParams call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvFtAdmittanceParamsClient = ServiceClient<
    Ros2Xarm_msgsSrvFtAdmittanceParams_Request,
    Ros2Xarm_msgsSrvFtAdmittanceParams_Response,
>;

/// Typed xarm_msgs/srv/FtAdmittanceParams advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvFtAdmittanceParamsServer = ServiceServer<
    Ros2Xarm_msgsSrvFtAdmittanceParams_Request,
    Ros2Xarm_msgsSrvFtAdmittanceParams_Response,
>;

/// Typed xarm_msgs/srv/FtCaliLoad call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvFtCaliLoadClient =
    ServiceClient<Ros2Xarm_msgsSrvFtCaliLoad_Request, Ros2Xarm_msgsSrvFtCaliLoad_Response>;

/// Typed xarm_msgs/srv/FtCaliLoad advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvFtCaliLoadServer =
    ServiceServer<Ros2Xarm_msgsSrvFtCaliLoad_Request, Ros2Xarm_msgsSrvFtCaliLoad_Response>;

/// Typed xarm_msgs/srv/FtForceConfig call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvFtForceConfigClient =
    ServiceClient<Ros2Xarm_msgsSrvFtForceConfig_Request, Ros2Xarm_msgsSrvFtForceConfig_Response>;

/// Typed xarm_msgs/srv/FtForceConfig advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvFtForceConfigServer =
    ServiceServer<Ros2Xarm_msgsSrvFtForceConfig_Request, Ros2Xarm_msgsSrvFtForceConfig_Response>;

/// Typed xarm_msgs/srv/FtForceParams call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvFtForceParamsClient =
    ServiceClient<Ros2Xarm_msgsSrvFtForceParams_Request, Ros2Xarm_msgsSrvFtForceParams_Response>;

/// Typed xarm_msgs/srv/FtForceParams advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvFtForceParamsServer =
    ServiceServer<Ros2Xarm_msgsSrvFtForceParams_Request, Ros2Xarm_msgsSrvFtForceParams_Response>;

/// Typed xarm_msgs/srv/FtForcePid call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvFtForcePidClient =
    ServiceClient<Ros2Xarm_msgsSrvFtForcePid_Request, Ros2Xarm_msgsSrvFtForcePid_Response>;

/// Typed xarm_msgs/srv/FtForcePid advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvFtForcePidServer =
    ServiceServer<Ros2Xarm_msgsSrvFtForcePid_Request, Ros2Xarm_msgsSrvFtForcePid_Response>;

/// Typed xarm_msgs/srv/FtImpedance call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvFtImpedanceClient =
    ServiceClient<Ros2Xarm_msgsSrvFtImpedance_Request, Ros2Xarm_msgsSrvFtImpedance_Response>;

/// Typed xarm_msgs/srv/FtImpedance advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvFtImpedanceServer =
    ServiceServer<Ros2Xarm_msgsSrvFtImpedance_Request, Ros2Xarm_msgsSrvFtImpedance_Response>;

/// Typed xarm_msgs/srv/GetAnalogIO call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetAnalogIOClient =
    ServiceClient<Ros2Xarm_msgsSrvGetAnalogIO_Request, Ros2Xarm_msgsSrvGetAnalogIO_Response>;

/// Typed xarm_msgs/srv/GetAnalogIO advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetAnalogIOServer =
    ServiceServer<Ros2Xarm_msgsSrvGetAnalogIO_Request, Ros2Xarm_msgsSrvGetAnalogIO_Response>;

/// Typed xarm_msgs/srv/GetDigitalIO call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetDigitalIOClient =
    ServiceClient<Ros2Xarm_msgsSrvGetDigitalIO_Request, Ros2Xarm_msgsSrvGetDigitalIO_Response>;

/// Typed xarm_msgs/srv/GetDigitalIO advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetDigitalIOServer =
    ServiceServer<Ros2Xarm_msgsSrvGetDigitalIO_Request, Ros2Xarm_msgsSrvGetDigitalIO_Response>;

/// Typed xarm_msgs/srv/GetFloat32 call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetFloat32Client =
    ServiceClient<Ros2Xarm_msgsSrvGetFloat32_Request, Ros2Xarm_msgsSrvGetFloat32_Response>;

/// Typed xarm_msgs/srv/GetFloat32 advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetFloat32Server =
    ServiceServer<Ros2Xarm_msgsSrvGetFloat32_Request, Ros2Xarm_msgsSrvGetFloat32_Response>;

/// Typed xarm_msgs/srv/GetFloat32List call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetFloat32ListClient =
    ServiceClient<Ros2Xarm_msgsSrvGetFloat32List_Request, Ros2Xarm_msgsSrvGetFloat32List_Response>;

/// Typed xarm_msgs/srv/GetFloat32List advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetFloat32ListServer =
    ServiceServer<Ros2Xarm_msgsSrvGetFloat32List_Request, Ros2Xarm_msgsSrvGetFloat32List_Response>;

/// Typed xarm_msgs/srv/GetInt16 call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetInt16Client =
    ServiceClient<Ros2Xarm_msgsSrvGetInt16_Request, Ros2Xarm_msgsSrvGetInt16_Response>;

/// Typed xarm_msgs/srv/GetInt16 advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetInt16Server =
    ServiceServer<Ros2Xarm_msgsSrvGetInt16_Request, Ros2Xarm_msgsSrvGetInt16_Response>;

/// Typed xarm_msgs/srv/GetInt16List call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetInt16ListClient =
    ServiceClient<Ros2Xarm_msgsSrvGetInt16List_Request, Ros2Xarm_msgsSrvGetInt16List_Response>;

/// Typed xarm_msgs/srv/GetInt16List advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetInt16ListServer =
    ServiceServer<Ros2Xarm_msgsSrvGetInt16List_Request, Ros2Xarm_msgsSrvGetInt16List_Response>;

/// Typed xarm_msgs/srv/GetInt32 call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetInt32Client =
    ServiceClient<Ros2Xarm_msgsSrvGetInt32_Request, Ros2Xarm_msgsSrvGetInt32_Response>;

/// Typed xarm_msgs/srv/GetInt32 advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetInt32Server =
    ServiceServer<Ros2Xarm_msgsSrvGetInt32_Request, Ros2Xarm_msgsSrvGetInt32_Response>;

/// Typed xarm_msgs/srv/GetInt32ByType call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetInt32ByTypeClient =
    ServiceClient<Ros2Xarm_msgsSrvGetInt32ByType_Request, Ros2Xarm_msgsSrvGetInt32ByType_Response>;

/// Typed xarm_msgs/srv/GetInt32ByType advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetInt32ByTypeServer =
    ServiceServer<Ros2Xarm_msgsSrvGetInt32ByType_Request, Ros2Xarm_msgsSrvGetInt32ByType_Response>;

/// Typed xarm_msgs/srv/GetSetModbusData call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGetSetModbusDataClient = ServiceClient<
    Ros2Xarm_msgsSrvGetSetModbusData_Request,
    Ros2Xarm_msgsSrvGetSetModbusData_Response,
>;

/// Typed xarm_msgs/srv/GetSetModbusData advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGetSetModbusDataServer = ServiceServer<
    Ros2Xarm_msgsSrvGetSetModbusData_Request,
    Ros2Xarm_msgsSrvGetSetModbusData_Response,
>;

/// Typed xarm_msgs/srv/GripperMove call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvGripperMoveClient =
    ServiceClient<Ros2Xarm_msgsSrvGripperMove_Request, Ros2Xarm_msgsSrvGripperMove_Response>;

/// Typed xarm_msgs/srv/GripperMove advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvGripperMoveServer =
    ServiceServer<Ros2Xarm_msgsSrvGripperMove_Request, Ros2Xarm_msgsSrvGripperMove_Response>;

/// Typed xarm_msgs/srv/IdenLoad call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvIdenLoadClient =
    ServiceClient<Ros2Xarm_msgsSrvIdenLoad_Request, Ros2Xarm_msgsSrvIdenLoad_Response>;

/// Typed xarm_msgs/srv/IdenLoad advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvIdenLoadServer =
    ServiceServer<Ros2Xarm_msgsSrvIdenLoad_Request, Ros2Xarm_msgsSrvIdenLoad_Response>;

/// Typed xarm_msgs/srv/LinearMotorBackOrigin call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvLinearMotorBackOriginClient = ServiceClient<
    Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request,
    Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response,
>;

/// Typed xarm_msgs/srv/LinearMotorBackOrigin advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvLinearMotorBackOriginServer = ServiceServer<
    Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request,
    Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response,
>;

/// Typed xarm_msgs/srv/LinearMotorSetPos call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvLinearMotorSetPosClient = ServiceClient<
    Ros2Xarm_msgsSrvLinearMotorSetPos_Request,
    Ros2Xarm_msgsSrvLinearMotorSetPos_Response,
>;

/// Typed xarm_msgs/srv/LinearMotorSetPos advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvLinearMotorSetPosServer = ServiceServer<
    Ros2Xarm_msgsSrvLinearMotorSetPos_Request,
    Ros2Xarm_msgsSrvLinearMotorSetPos_Response,
>;

/// Typed xarm_msgs/srv/LinearTrackBackOrigin call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvLinearTrackBackOriginClient = ServiceClient<
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request,
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response,
>;

/// Typed xarm_msgs/srv/LinearTrackBackOrigin advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvLinearTrackBackOriginServer = ServiceServer<
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request,
    Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response,
>;

/// Typed xarm_msgs/srv/LinearTrackSetPos call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvLinearTrackSetPosClient = ServiceClient<
    Ros2Xarm_msgsSrvLinearTrackSetPos_Request,
    Ros2Xarm_msgsSrvLinearTrackSetPos_Response,
>;

/// Typed xarm_msgs/srv/LinearTrackSetPos advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvLinearTrackSetPosServer = ServiceServer<
    Ros2Xarm_msgsSrvLinearTrackSetPos_Request,
    Ros2Xarm_msgsSrvLinearTrackSetPos_Response,
>;

/// Typed xarm_msgs/srv/MoveCartesian call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvMoveCartesianClient =
    ServiceClient<Ros2Xarm_msgsSrvMoveCartesian_Request, Ros2Xarm_msgsSrvMoveCartesian_Response>;

/// Typed xarm_msgs/srv/MoveCartesian advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvMoveCartesianServer =
    ServiceServer<Ros2Xarm_msgsSrvMoveCartesian_Request, Ros2Xarm_msgsSrvMoveCartesian_Response>;

/// Typed xarm_msgs/srv/MoveCircle call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvMoveCircleClient =
    ServiceClient<Ros2Xarm_msgsSrvMoveCircle_Request, Ros2Xarm_msgsSrvMoveCircle_Response>;

/// Typed xarm_msgs/srv/MoveCircle advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvMoveCircleServer =
    ServiceServer<Ros2Xarm_msgsSrvMoveCircle_Request, Ros2Xarm_msgsSrvMoveCircle_Response>;

/// Typed xarm_msgs/srv/MoveHome call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvMoveHomeClient =
    ServiceClient<Ros2Xarm_msgsSrvMoveHome_Request, Ros2Xarm_msgsSrvMoveHome_Response>;

/// Typed xarm_msgs/srv/MoveHome advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvMoveHomeServer =
    ServiceServer<Ros2Xarm_msgsSrvMoveHome_Request, Ros2Xarm_msgsSrvMoveHome_Response>;

/// Typed xarm_msgs/srv/MoveJoint call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvMoveJointClient =
    ServiceClient<Ros2Xarm_msgsSrvMoveJoint_Request, Ros2Xarm_msgsSrvMoveJoint_Response>;

/// Typed xarm_msgs/srv/MoveJoint advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvMoveJointServer =
    ServiceServer<Ros2Xarm_msgsSrvMoveJoint_Request, Ros2Xarm_msgsSrvMoveJoint_Response>;

/// Typed xarm_msgs/srv/MoveVelocity call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvMoveVelocityClient =
    ServiceClient<Ros2Xarm_msgsSrvMoveVelocity_Request, Ros2Xarm_msgsSrvMoveVelocity_Response>;

/// Typed xarm_msgs/srv/MoveVelocity advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvMoveVelocityServer =
    ServiceServer<Ros2Xarm_msgsSrvMoveVelocity_Request, Ros2Xarm_msgsSrvMoveVelocity_Response>;

/// Typed xarm_msgs/srv/PlanExec call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvPlanExecClient =
    ServiceClient<Ros2Xarm_msgsSrvPlanExec_Request, Ros2Xarm_msgsSrvPlanExec_Response>;

/// Typed xarm_msgs/srv/PlanExec advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvPlanExecServer =
    ServiceServer<Ros2Xarm_msgsSrvPlanExec_Request, Ros2Xarm_msgsSrvPlanExec_Response>;

/// Typed xarm_msgs/srv/PlanJoint call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvPlanJointClient =
    ServiceClient<Ros2Xarm_msgsSrvPlanJoint_Request, Ros2Xarm_msgsSrvPlanJoint_Response>;

/// Typed xarm_msgs/srv/PlanJoint advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvPlanJointServer =
    ServiceServer<Ros2Xarm_msgsSrvPlanJoint_Request, Ros2Xarm_msgsSrvPlanJoint_Response>;

/// Typed xarm_msgs/srv/PlanPose call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvPlanPoseClient =
    ServiceClient<Ros2Xarm_msgsSrvPlanPose_Request, Ros2Xarm_msgsSrvPlanPose_Response>;

/// Typed xarm_msgs/srv/PlanPose advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvPlanPoseServer =
    ServiceServer<Ros2Xarm_msgsSrvPlanPose_Request, Ros2Xarm_msgsSrvPlanPose_Response>;

/// Typed xarm_msgs/srv/PlanSingleStraight call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvPlanSingleStraightClient = ServiceClient<
    Ros2Xarm_msgsSrvPlanSingleStraight_Request,
    Ros2Xarm_msgsSrvPlanSingleStraight_Response,
>;

/// Typed xarm_msgs/srv/PlanSingleStraight advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvPlanSingleStraightServer = ServiceServer<
    Ros2Xarm_msgsSrvPlanSingleStraight_Request,
    Ros2Xarm_msgsSrvPlanSingleStraight_Response,
>;

/// Typed xarm_msgs/srv/RobotiqActivate call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvRobotiqActivateClient = ServiceClient<
    Ros2Xarm_msgsSrvRobotiqActivate_Request,
    Ros2Xarm_msgsSrvRobotiqActivate_Response,
>;

/// Typed xarm_msgs/srv/RobotiqActivate advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvRobotiqActivateServer = ServiceServer<
    Ros2Xarm_msgsSrvRobotiqActivate_Request,
    Ros2Xarm_msgsSrvRobotiqActivate_Response,
>;

/// Typed xarm_msgs/srv/RobotiqGetStatus call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvRobotiqGetStatusClient = ServiceClient<
    Ros2Xarm_msgsSrvRobotiqGetStatus_Request,
    Ros2Xarm_msgsSrvRobotiqGetStatus_Response,
>;

/// Typed xarm_msgs/srv/RobotiqGetStatus advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvRobotiqGetStatusServer = ServiceServer<
    Ros2Xarm_msgsSrvRobotiqGetStatus_Request,
    Ros2Xarm_msgsSrvRobotiqGetStatus_Response,
>;

/// Typed xarm_msgs/srv/RobotiqMove call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvRobotiqMoveClient =
    ServiceClient<Ros2Xarm_msgsSrvRobotiqMove_Request, Ros2Xarm_msgsSrvRobotiqMove_Response>;

/// Typed xarm_msgs/srv/RobotiqMove advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvRobotiqMoveServer =
    ServiceServer<Ros2Xarm_msgsSrvRobotiqMove_Request, Ros2Xarm_msgsSrvRobotiqMove_Response>;

/// Typed xarm_msgs/srv/RobotiqReset call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvRobotiqResetClient =
    ServiceClient<Ros2Xarm_msgsSrvRobotiqReset_Request, Ros2Xarm_msgsSrvRobotiqReset_Response>;

/// Typed xarm_msgs/srv/RobotiqReset advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvRobotiqResetServer =
    ServiceServer<Ros2Xarm_msgsSrvRobotiqReset_Request, Ros2Xarm_msgsSrvRobotiqReset_Response>;

/// Typed xarm_msgs/srv/SetAnalogIO call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetAnalogIOClient =
    ServiceClient<Ros2Xarm_msgsSrvSetAnalogIO_Request, Ros2Xarm_msgsSrvSetAnalogIO_Response>;

/// Typed xarm_msgs/srv/SetAnalogIO advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetAnalogIOServer =
    ServiceServer<Ros2Xarm_msgsSrvSetAnalogIO_Request, Ros2Xarm_msgsSrvSetAnalogIO_Response>;

/// Typed xarm_msgs/srv/SetDigitalIO call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetDigitalIOClient =
    ServiceClient<Ros2Xarm_msgsSrvSetDigitalIO_Request, Ros2Xarm_msgsSrvSetDigitalIO_Response>;

/// Typed xarm_msgs/srv/SetDigitalIO advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetDigitalIOServer =
    ServiceServer<Ros2Xarm_msgsSrvSetDigitalIO_Request, Ros2Xarm_msgsSrvSetDigitalIO_Response>;

/// Typed xarm_msgs/srv/SetFloat32 call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetFloat32Client =
    ServiceClient<Ros2Xarm_msgsSrvSetFloat32_Request, Ros2Xarm_msgsSrvSetFloat32_Response>;

/// Typed xarm_msgs/srv/SetFloat32 advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetFloat32Server =
    ServiceServer<Ros2Xarm_msgsSrvSetFloat32_Request, Ros2Xarm_msgsSrvSetFloat32_Response>;

/// Typed xarm_msgs/srv/SetFloat32List call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetFloat32ListClient =
    ServiceClient<Ros2Xarm_msgsSrvSetFloat32List_Request, Ros2Xarm_msgsSrvSetFloat32List_Response>;

/// Typed xarm_msgs/srv/SetFloat32List advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetFloat32ListServer =
    ServiceServer<Ros2Xarm_msgsSrvSetFloat32List_Request, Ros2Xarm_msgsSrvSetFloat32List_Response>;

/// Typed xarm_msgs/srv/SetInt16 call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetInt16Client =
    ServiceClient<Ros2Xarm_msgsSrvSetInt16_Request, Ros2Xarm_msgsSrvSetInt16_Response>;

/// Typed xarm_msgs/srv/SetInt16 advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetInt16Server =
    ServiceServer<Ros2Xarm_msgsSrvSetInt16_Request, Ros2Xarm_msgsSrvSetInt16_Response>;

/// Typed xarm_msgs/srv/SetInt16ById call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetInt16ByIdClient =
    ServiceClient<Ros2Xarm_msgsSrvSetInt16ById_Request, Ros2Xarm_msgsSrvSetInt16ById_Response>;

/// Typed xarm_msgs/srv/SetInt16ById advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetInt16ByIdServer =
    ServiceServer<Ros2Xarm_msgsSrvSetInt16ById_Request, Ros2Xarm_msgsSrvSetInt16ById_Response>;

/// Typed xarm_msgs/srv/SetInt16List call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetInt16ListClient =
    ServiceClient<Ros2Xarm_msgsSrvSetInt16List_Request, Ros2Xarm_msgsSrvSetInt16List_Response>;

/// Typed xarm_msgs/srv/SetInt16List advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetInt16ListServer =
    ServiceServer<Ros2Xarm_msgsSrvSetInt16List_Request, Ros2Xarm_msgsSrvSetInt16List_Response>;

/// Typed xarm_msgs/srv/SetInt32 call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetInt32Client =
    ServiceClient<Ros2Xarm_msgsSrvSetInt32_Request, Ros2Xarm_msgsSrvSetInt32_Response>;

/// Typed xarm_msgs/srv/SetInt32 advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetInt32Server =
    ServiceServer<Ros2Xarm_msgsSrvSetInt32_Request, Ros2Xarm_msgsSrvSetInt32_Response>;

/// Typed xarm_msgs/srv/SetInt32ByType call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetInt32ByTypeClient =
    ServiceClient<Ros2Xarm_msgsSrvSetInt32ByType_Request, Ros2Xarm_msgsSrvSetInt32ByType_Response>;

/// Typed xarm_msgs/srv/SetInt32ByType advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetInt32ByTypeServer =
    ServiceServer<Ros2Xarm_msgsSrvSetInt32ByType_Request, Ros2Xarm_msgsSrvSetInt32ByType_Response>;

/// Typed xarm_msgs/srv/SetModbusTimeout call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetModbusTimeoutClient = ServiceClient<
    Ros2Xarm_msgsSrvSetModbusTimeout_Request,
    Ros2Xarm_msgsSrvSetModbusTimeout_Response,
>;

/// Typed xarm_msgs/srv/SetModbusTimeout advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetModbusTimeoutServer = ServiceServer<
    Ros2Xarm_msgsSrvSetModbusTimeout_Request,
    Ros2Xarm_msgsSrvSetModbusTimeout_Response,
>;

/// Typed xarm_msgs/srv/SetTcpLoad call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvSetTcpLoadClient =
    ServiceClient<Ros2Xarm_msgsSrvSetTcpLoad_Request, Ros2Xarm_msgsSrvSetTcpLoad_Response>;

/// Typed xarm_msgs/srv/SetTcpLoad advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvSetTcpLoadServer =
    ServiceServer<Ros2Xarm_msgsSrvSetTcpLoad_Request, Ros2Xarm_msgsSrvSetTcpLoad_Response>;

/// Typed xarm_msgs/srv/TrajCtrl call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvTrajCtrlClient =
    ServiceClient<Ros2Xarm_msgsSrvTrajCtrl_Request, Ros2Xarm_msgsSrvTrajCtrl_Response>;

/// Typed xarm_msgs/srv/TrajCtrl advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvTrajCtrlServer =
    ServiceServer<Ros2Xarm_msgsSrvTrajCtrl_Request, Ros2Xarm_msgsSrvTrajCtrl_Response>;

/// Typed xarm_msgs/srv/TrajPlay call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvTrajPlayClient =
    ServiceClient<Ros2Xarm_msgsSrvTrajPlay_Request, Ros2Xarm_msgsSrvTrajPlay_Response>;

/// Typed xarm_msgs/srv/TrajPlay advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvTrajPlayServer =
    ServiceServer<Ros2Xarm_msgsSrvTrajPlay_Request, Ros2Xarm_msgsSrvTrajPlay_Response>;

/// Typed xarm_msgs/srv/VacuumGripperCtrl call/real-submit owner; every alias is explicit.
pub type Ros2Xarm_msgsSrvVacuumGripperCtrlClient = ServiceClient<
    Ros2Xarm_msgsSrvVacuumGripperCtrl_Request,
    Ros2Xarm_msgsSrvVacuumGripperCtrl_Response,
>;

/// Typed xarm_msgs/srv/VacuumGripperCtrl advertiser/responder with independent grants.
pub type Ros2Xarm_msgsSrvVacuumGripperCtrlServer = ServiceServer<
    Ros2Xarm_msgsSrvVacuumGripperCtrl_Request,
    Ros2Xarm_msgsSrvVacuumGripperCtrl_Response,
>;
