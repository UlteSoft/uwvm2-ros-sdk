//! Owned, synchronous memory-zero calls; use raw imports for other memories.
use crate::{codes, raw};

/// An unsigned ABI/local error with an optional actual required output extent.
/// Imported capacity failures use the all-ones sentinel to distinguish a
/// written output-length slot from refusal before a write. Local codecs can
/// instead supply their calculated output size. This plain public value has no
/// authenticated origin and permits caller construction. No automatic retry
/// follows: an event or operation may already have been consumed or effected.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Error {
    /// Original unsigned ABI/local code, including unknown future values.
    /// The field is public data; a caller can also construct code0. Only the
    /// enclosing operation's `Result` establishes success versus refusal.
    pub code: u32,
    /// Output bytes observed in a Host-written slot on90, or the complete size
    /// calculated by a local codec on90. None makes no length claim. It is a
    /// diagnostic extent, not a quota grant or permission to retry consumption.
    pub required: Option<u64>,
}
impl Error {
    /// Return an `Error` copying exact `code` with `required=None`.
    /// No code is validated or translated, including0/unknown values. This
    /// infallible local constructor imports nothing and certifies no Host result.
    pub const fn new(code: u32) -> Self {
        Self {
            code,
            required: None,
        }
    }
}

/// A copied import-family selector, not a connection or native identity.
/// Enabling only one feature excludes the other's declarations; no backend is
/// enabled by default. Choosing a variant opens no owner and grants no rights.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Backend {
    /// ROS 1; its handles cannot be used in ROS 2.
    #[cfg(feature = "ros1")]
    Ros1,
    /// ROS 2; its handles cannot be used in ROS 1.
    #[cfg(feature = "ros2")]
    Ros2,
}

/// Select one exact original numeric operation for [`Capability::request`].
/// Its input/output bytes use that operation's actual canonical schema; this
/// selector supplies no codec, default alias, type inference or authorization.
/// The retained source owner must independently admit the selected operation.
/// ServiceCall/ServiceRespond are the original business RPC route, not the
/// separately implemented owned-RMW raw12 transport.
///
/// ParameterDelete/Exists/Search and TimeReadRos/Wall select ROS1 only.
/// ParameterDescribe/Declare/Undeclare, GraphInspectAction, LifecycleGetState/
/// ChangeState and TimeReadSystem/Steady select ROS2 only. Other variants have
/// original imports in both enabled backends. An unsupported backend case
/// returns95 locally rather than calling the other backend or a substitute.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Operation {
    /// Request/response form of `service_call`; use a separately granted alias.
    ServiceCall,
    /// Request/response form of `service_respond`; use a separately granted alias.
    ServiceRespond,
    /// Request/response form of `action_send_goal`; use a separately granted alias.
    ActionSendGoal,
    /// Request/response form of `action_cancel_own_goal`; use a separately granted alias.
    ActionCancelOwnGoal,
    /// Request/response form of `action_cancel_any_goal`; use a separately granted alias.
    ActionCancelAnyGoal,
    /// Request/response form of `action_receive_feedback`; use a separately granted alias.
    ActionReceiveFeedback,
    /// Request/response form of `action_receive_result`; use a separately granted alias.
    ActionReceiveResult,
    /// Request/response form of `action_advertise`; use a separately granted alias.
    ActionAdvertise,
    /// Request/response form of `action_respond`; use a separately granted alias.
    ActionRespond,
    /// Request/response form of `tf_lookup`; use a separately granted alias.
    TfLookup,
    /// Request/response form of `tf_broadcast`; use a separately granted alias.
    TfBroadcast,
    /// Request/response form of `parameter_get`; use a separately granted alias.
    ParameterGet,
    /// Request/response form of `parameter_set`; use a separately granted alias.
    ParameterSet,
    /// Request/response form of `parameter_delete`; use a separately granted alias.
    ParameterDelete,
    /// Request/response form of `parameter_exists`; use a separately granted alias.
    ParameterExists,
    /// Request/response form of `parameter_list`; use a separately granted alias.
    ParameterList,
    /// Request/response form of `parameter_search`; use a separately granted alias.
    ParameterSearch,
    /// Request/response form of `graph_inspect_topic`; use a separately granted alias.
    GraphInspectTopic,
    /// Request/response form of `graph_inspect_node`; use a separately granted alias.
    GraphInspectNode,
    /// Request/response form of `graph_inspect_service`; use a separately granted alias.
    GraphInspectService,
    /// Request/response form of `graph_list_topics`; use a separately granted alias.
    GraphListTopics,
    /// Request/response form of `graph_list_nodes`; use a separately granted alias.
    GraphListNodes,
    /// Request/response form of `graph_list_services`; use a separately granted alias.
    GraphListServices,
    /// Request/response form of `time_read_ros`; use a separately granted alias.
    TimeReadRos,
    /// Request/response form of `time_read_wall`; use a separately granted alias.
    TimeReadWall,
    /// Request/response form of `parameter_describe`; use a separately granted alias.
    ParameterDescribe,
    /// Request/response form of `parameter_declare`; use a separately granted alias.
    ParameterDeclare,
    /// Request/response form of `parameter_undeclare`; use a separately granted alias.
    ParameterUndeclare,
    /// Request/response form of `graph_inspect_action`; use a separately granted alias.
    GraphInspectAction,
    /// Request/response form of `lifecycle_get_state`; use a separately granted alias.
    LifecycleGetState,
    /// Request/response form of `lifecycle_change_state`; use a separately granted alias.
    LifecycleChangeState,
    /// Request/response form of `time_read_system`; use a separately granted alias.
    TimeReadSystem,
    /// Request/response form of `time_read_steady`; use a separately granted alias.
    TimeReadSteady,
}

macro_rules! backend_call {
    ($backend:expr, $name:ident $(, $arg:expr)*) => {
        match $backend {
            #[cfg(feature = "ros1")]
            Backend::Ros1 => unsafe { raw::ros1::$name($($arg),*) },
            #[cfg(feature = "ros2")]
            Backend::Ros2 => unsafe { raw::ros2::$name($($arg),*) },
        }
    };
}
impl Backend {
    /// Read ABI version without opening a capability or adding authority.
    /// This is the original import result; unsupported pointer targets return95
    /// before a foreign import is attempted by the memory-zero convenience API.
    /// Consumes only the copied selector and returns the raw u32 version, not
    /// `Result` or a success errno. Version1 is expected by this SDK;95 here is
    /// the local unsupported-target sentinel, not a qualified ABI version.
    pub fn abi_version(self) -> u32 {
        if !cfg!(all(target_arch = "wasm32", target_pointer_width = "32")) {
            return codes::UNSUPPORTED;
        }
        backend_call!(self, abi_version)
    }
    #[cfg(feature = "alloc")]
    pub(crate) fn close_handle(self, handle: u64) -> Result<(), Error> {
        status(backend_call!(self, capability_close, handle))
    }
}

fn offset<T>(value: *const T) -> Result<u64, Error> {
    if !cfg!(all(target_arch = "wasm32", target_pointer_width = "32")) {
        return Err(Error::new(codes::UNSUPPORTED));
    }
    Ok(value as usize as u64)
}
fn status(code: u32) -> Result<(), Error> {
    if code == 0 {
        Ok(())
    } else {
        Err(Error::new(code))
    }
}
fn invoke(backend: Backend, op: Operation, h: u64, a: u64, n: u64, b: u64, c: u64, z: u64) -> u32 {
    match backend {
        #[cfg(feature = "ros1")]
        Backend::Ros1 => match op {
            Operation::ServiceCall => unsafe { raw::ros1::service_call(h, 0, a, n, b, c, z) },
            Operation::ServiceRespond => unsafe { raw::ros1::service_respond(h, 0, a, n, b, c, z) },
            Operation::ActionSendGoal => unsafe {
                raw::ros1::action_send_goal(h, 0, a, n, b, c, z)
            },
            Operation::ActionCancelOwnGoal => unsafe {
                raw::ros1::action_cancel_own_goal(h, 0, a, n, b, c, z)
            },
            Operation::ActionCancelAnyGoal => unsafe {
                raw::ros1::action_cancel_any_goal(h, 0, a, n, b, c, z)
            },
            Operation::ActionReceiveFeedback => unsafe {
                raw::ros1::action_receive_feedback(h, 0, a, n, b, c, z)
            },
            Operation::ActionReceiveResult => unsafe {
                raw::ros1::action_receive_result(h, 0, a, n, b, c, z)
            },
            Operation::ActionAdvertise => unsafe {
                raw::ros1::action_advertise(h, 0, a, n, b, c, z)
            },
            Operation::ActionRespond => unsafe { raw::ros1::action_respond(h, 0, a, n, b, c, z) },
            Operation::TfLookup => unsafe { raw::ros1::tf_lookup(h, 0, a, n, b, c, z) },
            Operation::TfBroadcast => unsafe { raw::ros1::tf_broadcast(h, 0, a, n, b, c, z) },
            Operation::ParameterGet => unsafe { raw::ros1::parameter_get(h, 0, a, n, b, c, z) },
            Operation::ParameterSet => unsafe { raw::ros1::parameter_set(h, 0, a, n, b, c, z) },
            Operation::ParameterDelete => unsafe {
                raw::ros1::parameter_delete(h, 0, a, n, b, c, z)
            },
            Operation::ParameterExists => unsafe {
                raw::ros1::parameter_exists(h, 0, a, n, b, c, z)
            },
            Operation::ParameterList => unsafe { raw::ros1::parameter_list(h, 0, a, n, b, c, z) },
            Operation::ParameterSearch => unsafe {
                raw::ros1::parameter_search(h, 0, a, n, b, c, z)
            },
            Operation::GraphInspectTopic => unsafe {
                raw::ros1::graph_inspect_topic(h, 0, a, n, b, c, z)
            },
            Operation::GraphInspectNode => unsafe {
                raw::ros1::graph_inspect_node(h, 0, a, n, b, c, z)
            },
            Operation::GraphInspectService => unsafe {
                raw::ros1::graph_inspect_service(h, 0, a, n, b, c, z)
            },
            Operation::GraphListTopics => unsafe {
                raw::ros1::graph_list_topics(h, 0, a, n, b, c, z)
            },
            Operation::GraphListNodes => unsafe {
                raw::ros1::graph_list_nodes(h, 0, a, n, b, c, z)
            },
            Operation::GraphListServices => unsafe {
                raw::ros1::graph_list_services(h, 0, a, n, b, c, z)
            },
            Operation::TimeReadRos => unsafe { raw::ros1::time_read_ros(h, 0, a, n, b, c, z) },
            Operation::TimeReadWall => unsafe { raw::ros1::time_read_wall(h, 0, a, n, b, c, z) },
            #[allow(unreachable_patterns)]
            _ => codes::UNSUPPORTED,
        },
        #[cfg(feature = "ros2")]
        Backend::Ros2 => match op {
            Operation::ServiceCall => unsafe { raw::ros2::service_call(h, 0, a, n, b, c, z) },
            Operation::ServiceRespond => unsafe { raw::ros2::service_respond(h, 0, a, n, b, c, z) },
            Operation::ActionSendGoal => unsafe {
                raw::ros2::action_send_goal(h, 0, a, n, b, c, z)
            },
            Operation::ActionCancelOwnGoal => unsafe {
                raw::ros2::action_cancel_own_goal(h, 0, a, n, b, c, z)
            },
            Operation::ActionCancelAnyGoal => unsafe {
                raw::ros2::action_cancel_any_goal(h, 0, a, n, b, c, z)
            },
            Operation::ActionReceiveFeedback => unsafe {
                raw::ros2::action_receive_feedback(h, 0, a, n, b, c, z)
            },
            Operation::ActionReceiveResult => unsafe {
                raw::ros2::action_receive_result(h, 0, a, n, b, c, z)
            },
            Operation::ActionAdvertise => unsafe {
                raw::ros2::action_advertise(h, 0, a, n, b, c, z)
            },
            Operation::ActionRespond => unsafe { raw::ros2::action_respond(h, 0, a, n, b, c, z) },
            Operation::TfLookup => unsafe { raw::ros2::tf_lookup(h, 0, a, n, b, c, z) },
            Operation::TfBroadcast => unsafe { raw::ros2::tf_broadcast(h, 0, a, n, b, c, z) },
            Operation::ParameterGet => unsafe { raw::ros2::parameter_get(h, 0, a, n, b, c, z) },
            Operation::ParameterSet => unsafe { raw::ros2::parameter_set(h, 0, a, n, b, c, z) },
            Operation::ParameterList => unsafe { raw::ros2::parameter_list(h, 0, a, n, b, c, z) },
            Operation::ParameterDescribe => unsafe {
                raw::ros2::parameter_describe(h, 0, a, n, b, c, z)
            },
            Operation::ParameterDeclare => unsafe {
                raw::ros2::parameter_declare(h, 0, a, n, b, c, z)
            },
            Operation::ParameterUndeclare => unsafe {
                raw::ros2::parameter_undeclare(h, 0, a, n, b, c, z)
            },
            Operation::GraphInspectTopic => unsafe {
                raw::ros2::graph_inspect_topic(h, 0, a, n, b, c, z)
            },
            Operation::GraphInspectNode => unsafe {
                raw::ros2::graph_inspect_node(h, 0, a, n, b, c, z)
            },
            Operation::GraphInspectService => unsafe {
                raw::ros2::graph_inspect_service(h, 0, a, n, b, c, z)
            },
            Operation::GraphInspectAction => unsafe {
                raw::ros2::graph_inspect_action(h, 0, a, n, b, c, z)
            },
            Operation::GraphListTopics => unsafe {
                raw::ros2::graph_list_topics(h, 0, a, n, b, c, z)
            },
            Operation::GraphListNodes => unsafe {
                raw::ros2::graph_list_nodes(h, 0, a, n, b, c, z)
            },
            Operation::GraphListServices => unsafe {
                raw::ros2::graph_list_services(h, 0, a, n, b, c, z)
            },
            Operation::LifecycleGetState => unsafe {
                raw::ros2::lifecycle_get_state(h, 0, a, n, b, c, z)
            },
            Operation::LifecycleChangeState => unsafe {
                raw::ros2::lifecycle_change_state(h, 0, a, n, b, c, z)
            },
            Operation::TimeReadRos => unsafe { raw::ros2::time_read_ros(h, 0, a, n, b, c, z) },
            Operation::TimeReadSystem => unsafe {
                raw::ros2::time_read_system(h, 0, a, n, b, c, z)
            },
            Operation::TimeReadSteady => unsafe {
                raw::ros2::time_read_steady(h, 0, a, n, b, c, z)
            },
            #[allow(unreachable_patterns)]
            _ => codes::UNSUPPORTED,
        },
    }
}

/// A unique owned opaque handle. It is never cloned, synthesized or shared
/// between instances/backends. Drop attempts close; inspect explicit close when
/// its error matters. Neither successful open nor a Node grants additional rights.
/// Its non-cloneable wrapper and optional Session bookkeeping share only local
/// retirement/callback state. Local liveness is not a fresh native observation.
/// All memory-zero inputs/output slots are borrowed synchronously; the Host
/// copies admitted ranges and retains no Rust pointer. Ordinary methods preserve
/// original unsigned refusal codes. Unknown external effects, allocation aborts
/// and Guest traps do not promise recoverable cleanup or replay safety.
pub struct Capability {
    backend: Backend,
    handle: Option<u64>,
    callback_busy: core::cell::Cell<bool>,
    // Optional alloc Session bookkeeping. This is not a cloneable public
    // capability; only the unique wrapper and its owner may retire this state.
    #[cfg(feature = "alloc")]
    group: Option<alloc::rc::Rc<crate::session::HandleState>>,
}
impl Capability {
    /// Open `alias` through exact selected `backend`, memory0 and an eight-byte
    /// LE output slot. `alias` is borrowed UTF-8,1..255 bytes without NUL; no
    /// ASCII restriction, normalization or default is imposed by this wrapper.
    /// The Host configures its actual resource/type/QoS/quotas independently.
    /// Returns one uniquely owned Capability. Invalid alias or a zero handle on
    /// claimed success returns22; unsupported ordinary pointer targets return95
    /// before import; actual Host refusal codes are preserved. Success requires
    /// later explicit checked close/revoke or best-effort Drop, and conveys only
    /// the alias's admitted rights. No native node or grant is created locally.
    pub fn open(backend: Backend, alias: &str) -> Result<Self, Error> {
        if alias.is_empty() || alias.len() > 255 || alias.as_bytes().contains(&0) {
            return Err(Error::new(codes::INVALID));
        }
        let mut encoded = [0u8; 8];
        let a = offset(alias.as_ptr())?;
        let z = offset(encoded.as_mut_ptr())?;
        status(backend_call!(
            backend,
            capability_open,
            0,
            a,
            alias.len() as u64,
            z
        ))?;
        let handle = u64::from_le_bytes(encoded);
        if handle == 0 {
            return Err(Error::new(codes::INVALID));
        }
        Ok(Self {
            backend,
            handle: Some(handle),
            callback_busy: core::cell::Cell::new(false),
            #[cfg(feature = "alloc")]
            group: None,
        })
    }
    /// Return the copied backend tied to this wrapper, infallibly with no import.
    /// This selector remains available after retirement and proves no liveness,
    /// connection, native identity or permission.
    pub fn backend(&self) -> Backend {
        self.backend
    }
    /// Borrow the opaque handle for an explicit raw call. Never edit its bits or transfer it.
    /// Returns the exact u64 local/shared live ID or BadHandle9 after retirement,
    /// including Session closure. It does not query the Host; remote revocation
    /// can therefore remain undiscovered. The copied number conveys no new owner.
    pub fn raw_handle(&self) -> Result<u64, Error> {
        #[cfg(feature = "alloc")]
        if let Some(state) = &self.group {
            return state.handle.get().ok_or(Error::new(codes::BAD_HANDLE));
        }
        self.handle.ok_or(Error::new(codes::BAD_HANDLE))
    }
    /// Whether this wrapper still owns a live handle, including Session closure.
    /// This is local bookkeeping and performs no native RPC or implicit reopen.
    /// Returns whether `raw_handle` currently succeeds; actual Host authorization,
    /// connection and generation remain independently checked at every operation.
    pub fn is_open(&self) -> bool {
        self.raw_handle().is_ok()
    }
    #[cfg(feature = "alloc")]
    pub(crate) fn attach(&mut self, state: alloc::rc::Rc<crate::session::HandleState>) {
        self.group = Some(state);
    }
    #[cfg(feature = "alloc")]
    pub(crate) fn shared_state(&self) -> Option<alloc::rc::Rc<crate::session::HandleState>> {
        self.group.as_ref().map(alloc::rc::Rc::clone)
    }
    fn owner_busy(&self) -> &core::cell::Cell<bool> {
        #[cfg(feature = "alloc")]
        if let Some(state) = &self.group {
            return &state.callback_busy;
        }
        &self.callback_busy
    }
    pub(crate) fn callback_guard(&self) -> Result<crate::callback::OwnerGuard<'_>, Error> {
        self.raw_handle()?;
        crate::callback::guard_owner(self.owner_busy())
    }
    fn retire(&mut self) -> Result<u64, Error> {
        self.raw_handle()?;
        crate::callback::idle(self.owner_busy())?;
        let local = self.handle.take().ok_or(Error::new(codes::BAD_HANDLE))?;
        #[cfg(feature = "alloc")]
        if let Some(state) = &self.group {
            return state.handle.take().ok_or(Error::new(codes::BAD_HANDLE));
        }
        Ok(local)
    }
    /// Retire ownership before closing. A transport failure can follow retirement;
    /// the SDK will not reuse or automatically retry this handle. An active
    /// server callback returns Conflict17 before retirement or any close import.
    /// Returns `Ok(())` for the raw close's0, BadHandle9 if already locally
    /// retired, or the exact other close refusal. After successful preflight,
    /// all local views are retired even if the import fails. Callers must keep
    /// that failure separately; repeated close does not replay the raw operation.
    pub fn close(&mut self) -> Result<(), Error> {
        let h = self.retire()?;
        status(backend_call!(self.backend, capability_close, h))
    }
    /// Revoke the alias and retire this wrapper. A failed transport notification
    /// can follow local host retirement; other handles must observe host errors.
    /// Uses this owner's exact backend/ID. Busy callback17 or retired9 returns
    /// before import; after preflight this wrapper stays retired on every raw
    /// result. Host revocation applies to that principal's alias siblings, whose
    /// separate local wrappers are not proactively rewritten by this method.
    /// Returns `Ok(())` or the original refusal; no reopen or retry is attempted.
    pub fn revoke(&mut self) -> Result<(), Error> {
        let h = self.retire()?;
        status(backend_call!(self.backend, capability_revoke, h))
    }
    /// Publish canonical bytes. The exact topic/type/QoS/quotas come from the grant.
    /// Borrow `payload` unchanged until the synchronous call returns; this layer
    /// does not decode it or infer a topic type. Returns `Ok(())` or the original
    /// Host status, with local BadHandle9/unsupported pointer95 preflight errors.
    /// A refusal/timeout may follow an admitted external effect; never infer
    /// zero delivery or automatically replay. No output bytes are produced.
    pub fn publish(&self, payload: &[u8]) -> Result<(), Error> {
        let h = self.raw_handle()?;
        let a = offset(payload.as_ptr())?;
        status(backend_call!(
            self.backend,
            topic_publish,
            h,
            0,
            a,
            payload.len() as u64
        ))
    }
    /// Activate an explicitly authorized topic queue; event polling is separate.
    /// Uses this live exact owner without a payload. Returns `Ok(())`, local
    /// BadHandle9, or the original Host denial/quota/transport status. It grants
    /// no observer/polling alias and does not transfer the queue's native storage.
    pub fn subscribe(&self) -> Result<(), Error> {
        status(backend_call!(
            self.backend,
            topic_subscribe,
            self.raw_handle()?
        ))
    }
    /// Activate an explicitly authorized service request queue.
    /// Returns `Ok(())`, local retired9, or the actual Host status using this
    /// exact owner. Requests/replies need their independent admitted operations;
    /// activation alone is not a completed request or an owned-RMW raw12 server.
    pub fn advertise_service(&self) -> Result<(), Error> {
        status(backend_call!(
            self.backend,
            service_advertise,
            self.raw_handle()?
        ))
    }
    /// Activate an independently granted ROS 2 parameter-event queue.
    /// ROS 1 returns UNSUPPORTED without invoking another backend.
    /// ROS2 uses this exact live owner and preserves `Ok(())`/Host errors;
    /// local retirement is9. ROS1 returns95 even if its wrapper is retired,
    /// because unsupported-backend selection is checked first. A scalar
    /// parameter read/write grant is never upgraded into event subscription.
    pub fn subscribe_parameter_events(&self) -> Result<(), Error> {
        match self.backend {
            #[cfg(feature = "ros1")]
            Backend::Ros1 => Err(Error::new(codes::UNSUPPORTED)),
            #[cfg(feature = "ros2")]
            Backend::Ros2 => {
                status(unsafe { raw::ros2::parameter_subscribe_events(self.raw_handle()?) })
            }
        }
    }
    /// Poll one canonical event into a caller-bounded buffer. AGAIN is normal.
    /// On TOO_LARGE the host may already have consumed the queued event.
    /// `output` is borrowed writable memory0; return only its initialized prefix
    /// length on0. A returned length beyond its capacity, including an unwritten
    /// success sentinel, becomes22. Retired9/pointer95 preflights import nothing;
    /// actual statuses, including idle11, are preserved. On90, `required` is Some
    /// only if the original length slot was overwritten. After any imported
    /// failure output is not a valid decoded value and is not erased by the SDK.
    pub fn poll(&self, output: &mut [u8]) -> Result<usize, Error> {
        let h = self.raw_handle()?;
        let mut length = u64::MAX.to_le_bytes();
        let b = offset(output.as_mut_ptr())?;
        let z = offset(length.as_mut_ptr())?;
        let code = backend_call!(self.backend, event_poll, h, 0, b, output.len() as u64, z);
        finish(code, length, output.len())
    }
    /// Bind this separately granted observer to a live source once. Correlation
    /// is nonzero only for selected outgoing Action data; metadata-only uses zero.
    /// No default alias is used and a metadata watch activates no native reader.
    /// `self` is the observer; `source` is borrowed live ownership data for this
    /// same backend, and `correlation` is the exact selected u64 request/goal
    /// scope. Busy callbacks return17, backend mismatch22, and retired owners9
    /// before import. Actual rights, distinct roles, accepted masks/correlation
    /// and once-only watch admission are Host checks. Returns `Ok(())` or the
    /// original refusal; this function neither polls nor registers a callback.
    pub fn watch_events(&self, source: &Capability, correlation: u64) -> Result<(), Error> {
        crate::callback::idle(self.owner_busy())?;
        crate::callback::idle(source.owner_busy())?;
        if self.backend != source.backend {
            return Err(Error::new(codes::INVALID));
        }
        status(backend_call!(
            self.backend,
            event_watch,
            self.raw_handle()?,
            source.raw_handle()?,
            correlation
        ))
    }
    /// Poll a complete versioned event. Unlike legacy poll, code90 retains the
    /// event and reports required bytes only when the length slot was written.
    /// Decode the initialized prefix with `events::decode` before using its body.
    /// `output` is borrowed writable memory0. Returns its valid prefix length
    /// on0,17 for a busy callback,9 for retirement,95 for unsupported pointers,
    ///22 for an impossible successful length, or the unchanged Host code.
    /// A90 extent is diagnostic and depends on a genuinely overwritten slot;
    /// other failures make no output-content claim. This method performs no
    /// body decode, callback, implicit buffer growth, retry or queue substitution.
    pub fn poll_event_v1(&self, output: &mut [u8]) -> Result<usize, Error> {
        crate::callback::idle(self.owner_busy())?;
        let h = self.raw_handle()?;
        let mut slot = u64::MAX.to_le_bytes();
        let b = offset(output.as_mut_ptr())?;
        let z = offset(slot.as_mut_ptr())?;
        finish(
            backend_call!(self.backend, event_poll_v1, h, 0, b, output.len() as u64, z),
            slot,
            output.len(),
        )
    }
    /// Return a credit snapshot. Admission can still return11 after readiness;
    /// this method does not reserve capacity or create native resources.
    /// Uses this live observer and private fixed32-byte output, then structurally
    /// decodes the returned snapshot. Returns the complete copied Readiness or
    /// local busy17/retired9/pointer95 or the actual Host error. Its four full64
    /// fields are copied without additional content/coherence validation.
    /// Credit can change immediately; no later operation is promised admission.
    pub fn event_readiness(&self) -> Result<crate::events::Readiness, Error> {
        crate::callback::idle(self.owner_busy())?;
        let mut bytes = [0u8; 32];
        let out = offset(bytes.as_mut_ptr())?;
        status(backend_call!(
            self.backend,
            event_ready,
            self.raw_handle()?,
            0,
            out
        ))?;
        crate::events::decode_readiness(&bytes)
    }
    /// Submit a canonical service request through this source and its separately
    /// granted observer. Success is bounded admission, not native completion.
    /// Poll the observer for response/error with the returned owned ID. A timeout
    /// may follow an external effect; this method never retries automatically.
    /// Borrow `observer` and canonical `input` for this call; neither is retained
    /// as a Rust reference by the Host. Busy callbacks return17 and backend
    /// mismatch22 before imports; pointer95, retired9 and actual Host errors
    /// remain distinct. A claimed success with zero output ID returns22.
    /// Otherwise return the exact nonzero full64 owned admission ID. This is
    /// the original service_submit route, not raw12 client_send, and does not
    /// itself authenticate/decode a later response or close either owner.
    pub fn submit_service(&self, observer: &Capability, input: &[u8]) -> Result<u64, Error> {
        crate::callback::idle(self.owner_busy())?;
        crate::callback::idle(observer.owner_busy())?;
        if self.backend != observer.backend {
            return Err(Error::new(codes::INVALID));
        }
        let mut slot = [0u8; 8];
        let a = offset(input.as_ptr())?;
        let z = offset(slot.as_mut_ptr())?;
        status(backend_call!(
            self.backend,
            service_submit,
            self.raw_handle()?,
            observer.raw_handle()?,
            0,
            a,
            input.len() as u64,
            z
        ))?;
        let id = u64::from_le_bytes(slot);
        if id == 0 {
            return Err(Error::new(codes::INVALID));
        }
        Ok(id)
    }
    /// Invoke a named RPC with disjoint borrowed input/output slices.
    /// The host validates operation identity, payload and quotas independently.
    /// Success returns initialized output bytes; failure does not grant a retry.
    /// `op` chooses the original import, `request` is the complete borrowed
    /// canonical input, and `output` is independently borrowed writable storage.
    /// Returns the valid prefix length, local retired9/pointer95, unsupported
    /// backend95, malformed successful-length22, or exact Host refusal. Code90
    /// carries `required` only for an actually written output-length slot.
    /// Imported failures may modify output and may follow external effects;
    /// discard the result bytes and preserve the primary error. No schema/type
    /// discovery, other-backend fallback, buffer growth or auto-replay occurs.
    pub fn request(
        &self,
        op: Operation,
        request: &[u8],
        output: &mut [u8],
    ) -> Result<usize, Error> {
        let h = self.raw_handle()?;
        let mut length = u64::MAX.to_le_bytes();
        let a = offset(request.as_ptr())?;
        let b = offset(output.as_mut_ptr())?;
        let z = offset(length.as_mut_ptr())?;
        let code = invoke(
            self.backend,
            op,
            h,
            a,
            request.len() as u64,
            b,
            output.len() as u64,
            z,
        );
        finish(code, length, output.len())
    }
    /// Write a canonical String log payload using an independently granted log alias.
    /// Borrow the complete already encoded `request` for the synchronous import.
    /// The Host validates String bytes/level/resource quotas; this helper does
    /// no local decode or stdio fallback. Returns `Ok(())`, local retired9/
    /// pointer95, or unchanged Host refusal. A failure is not proof that the
    /// logging effect never happened and grants no permission to repeat it.
    pub fn log(&self, request: &[u8]) -> Result<(), Error> {
        let h = self.raw_handle()?;
        let a = offset(request.as_ptr())?;
        status(backend_call!(
            self.backend,
            log_write,
            h,
            0,
            a,
            request.len() as u64
        ))
    }
}
impl Drop for Capability {
    fn drop(&mut self) {
        if self.handle.is_some() {
            let _ = self.close();
        }
    }
}
fn finish(code: u32, encoded: [u8; 8], capacity: usize) -> Result<usize, Error> {
    let n = u64::from_le_bytes(encoded);
    if code != 0 {
        return Err(Error {
            code,
            required: if code == codes::TOO_LARGE && n != u64::MAX {
                Some(n)
            } else {
                None
            },
        });
    }
    if n > capacity as u64 {
        return Err(Error::new(codes::INVALID));
    }
    Ok(n as usize)
}
