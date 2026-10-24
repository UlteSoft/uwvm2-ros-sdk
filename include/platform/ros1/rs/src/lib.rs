// @file lib.rs
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

//! ROS WebAssembly guest SDK, built from the uwvm2 ABI v1 import registry.
//!
//! Start with [`raw`] to inspect exact import signatures, then use
//! [`Capability`] for owned memory-zero calls, [`codec`] for canonical values,
//! and [`node`] for Node, Publisher, Subscription, Client, Server and resources.
//! Enable `ros1` and/or `ros2` explicitly; there is no default ROS backend.
//! Enable `alloc` for the registering polling executor. No native ROS library
//! is linked. A Node name is a local application label, not a native identity.
//! Every operation needs its own host-provided alias and quotas. The SDK cannot
//! grant rights or turn a topic grant into a service, graph or action grant.
//!
//! Slice helpers require a wasm32 guest whose ordinary pointers address memory
//! zero. Raw imports retain explicit memory indices and full u64 offsets for
//! multi-memory modules. The host copies bytes within each call and does not
//! retain guest pointers or invoke Rust callbacks from native ROS threads.
//! A timeout can follow an admitted external effect; never retry writes blindly.
#![no_std]
#![deny(missing_docs)]

#[cfg(feature = "alloc")]
extern crate alloc;

mod callback;
mod capability;
pub mod codec;
/// Additive unified event envelope and readiness codecs; no allocation required.
pub mod events;
/// Caller-driven local Context, Future, CallbackGroup and Timer; enable `alloc`.
#[cfg(feature = "alloc")]
pub mod local;
pub mod node;
pub mod raw;
/// Bounded ownership groups and checked ABI selection; enable `alloc`.
#[cfg(feature = "alloc")]
pub mod session;
/// Owned builtin codec values; enable the `alloc` feature.
#[cfg(feature = "alloc")]
pub mod typed;
pub use capability::{Backend, Capability, Error, Operation};
#[cfg(feature = "alloc")]
pub use session::Session;

/// Error codes returned by ABI v1, kept unsigned even when the Wasm i32 has its
/// top bit set. Unknown future codes remain available through [`Error::code`].
pub mod codes {
    /// The operation completed successfully.
    pub const SUCCESS: u32 = 0;
    /// A configured object or selected parameter is missing.
    pub const NOT_FOUND: u32 = 2;
    /// The handle is stale, forged, foreign, or belongs to another backend.
    pub const BAD_HANDLE: u32 = 9;
    /// The queue is empty or an explicit quota is currently exhausted.
    pub const AGAIN: u32 = 11;
    /// The explicit policy does not authorize the operation or payload.
    pub const DENIED: u32 = 13;
    /// Configured contracts conflict.
    pub const CONFLICT: u32 = 17;
    /// A canonical value, memory range, or argument is invalid.
    pub const INVALID: u32 = 22;
    /// A payload, quota, or output capacity is too small/large for the request.
    pub const TOO_LARGE: u32 = 90;
    /// The selected adapter, backend operation, or pointer model is unsupported.
    pub const UNSUPPORTED: u32 = 95;
    /// The gateway transport is disconnected.
    pub const DISCONNECTED: u32 = 107;
    /// The operation deadline elapsed; external admitted effects may remain.
    pub const TIMEOUT: u32 = 110;
    /// Reopening the alias is refused after revocation.
    pub const REVOKED: u32 = 125;
}
