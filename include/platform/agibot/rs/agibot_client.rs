// @file agibot_client.rs
// @brief Provide the complete agibot agibot_client.rs source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
//! AgiBot X2 AimDK observations inside a wasm32-wasip1 guest.
//!
//! Every operation opens an explicit ROS2 capability and checks its retirement.
//! The complete generated codec preserves the original fields, including full
//! integers. No native FFI, socket, HTTP client or external interpreter is used.
use roswasm::typed::Canonical;
use roswasm::{Backend, Capability, Error, Operation};
use std::time::{Duration, Instant};

#[path = "ros2/agibot-ros2-sdk-v1-1-0-main-complete/bounded_records.rs"]
pub mod aimdk;

/// Original operation error plus independently observed capability cleanup error.
#[derive(Debug)]
pub struct ObservationError {
    /// ABI or complete-value codec error; no automatic retry is attempted.
    pub operation: Error,
    /// A close failure may follow successful retirement of the owner.
    pub cleanup: Option<Error>,
}

impl std::fmt::Display for ObservationError {
    fn fmt(&self, output: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            output,
            "Agibot observation failed: {}; close: {}",
            self.operation.code,
            self.cleanup.map_or(0, |error| error.code)
        )
    }
}

impl std::error::Error for ObservationError {}

impl From<Error> for ObservationError {
    fn from(operation: Error) -> Self {
        Self {
            operation,
            cleanup: None,
        }
    }
}

fn observe<T: Canonical>(
    alias: &str,
    state: bool,
    capacity: usize,
    timeout: Duration,
) -> Result<T, ObservationError> {
    if timeout < Duration::from_millis(1) || timeout > Duration::from_secs(30) {
        return Err(Error::new(22).into());
    }
    if Backend::Ros2.abi_version() != 1 {
        return Err(Error::new(95).into());
    }
    let mut owner = Capability::open(Backend::Ros2, alias)?;
    let mut bytes = vec![0; capacity];
    let received = if state {
        let deadline = Instant::now() + timeout;
        owner.subscribe().and_then(|()| loop {
            match owner.poll(&mut bytes) {
                Err(error) if error.code == 11 => {
                    if Instant::now() >= deadline {
                        break Err(Error::new(110));
                    }
                    std::thread::sleep(Duration::from_millis(1));
                }
                result => break result,
            }
        })
    } else {
        owner.request(Operation::ServiceCall, &[0; 8], &mut bytes)
    };
    let cleanup = owner.close().err();
    match received {
        Err(operation) => Err(ObservationError { operation, cleanup }),
        Ok(length) => {
            if let Some(operation) = cleanup {
                return Err(ObservationError { operation, cleanup });
            }
            T::decode(&bytes[..length]).map_err(ObservationError::from)
        }
    }
}

/// Send GetMcAction once; its total service deadline is controlled by host policy.
/// The returned value contains the complete original header and action info.
/// Inspect `header.code` separately from the transport result.
pub fn query_mode(
    alias: &str,
) -> Result<aimdk::Ros2Aimdk_msgsSrvGetMcAction_Response, ObservationError> {
    observe(alias, false, 156, Duration::from_secs(3))
}

/// Receive one full McCommonState within a monotonic polling deadline.
/// `timeout` is 1 ms through 30 s. TRANSIENT_LOCAL may deliver a retained sample;
/// inspect its original timestamp. Units and frames are never transformed.
pub fn next_motion_state(
    alias: &str,
    timeout: Duration,
) -> Result<aimdk::Ros2Aimdk_msgsMsgMcCommonState, ObservationError> {
    observe(alias, true, 698, timeout)
}

/// List original LinkCraft resources on X2 Ultra variants without playback.
/// Strings are bounded to 128 UTF-8 bytes and sequences to four resources.
/// Oversized data fails explicitly; original uint64 values remain exact.
pub fn list_resources(
    alias: &str,
) -> Result<aimdk::Ros2Aimdk_msgsSrvGetRobotResources_Response, ObservationError> {
    observe(alias, false, 10236, Duration::from_secs(3))
}
