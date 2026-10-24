// @file lib.rs
// @brief Provide the complete fourier lib.rs source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
//! Complete original Fourier Aurora native SDK bridge DTOs; exactly one explicit source feature.
#[cfg(all(
    feature = "ros1_aurora_bridge_v1",
    not(any(feature = "ros2_aurora_bridge_v1"))
))]
#[path = "./ros1/fourier-ros1-aurora-bridge-v1-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros1_aurora_bridge_v1",
    not(any(feature = "ros2_aurora_bridge_v1"))
))]
#[path = "./ros1/fourier-ros1-aurora-bridge-v1-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_aurora_bridge_v1",
    not(any(feature = "ros2_aurora_bridge_v1"))
))]
pub use bounded_records::Ros1Uwvm_fourier_bridgeStatus as State;
#[cfg(all(
    feature = "ros1_aurora_bridge_v1",
    not(any(feature = "ros2_aurora_bridge_v1"))
))]
pub use bounded_records::Ros1Uwvm_fourier_bridgeVelocityCommand as Command;
#[cfg(all(
    feature = "ros1_aurora_bridge_v1",
    not(any(feature = "ros2_aurora_bridge_v1"))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros2_aurora_bridge_v1",
    not(any(feature = "ros1_aurora_bridge_v1"))
))]
#[path = "./ros2/fourier-ros2-aurora-bridge-v1-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros2_aurora_bridge_v1",
    not(any(feature = "ros1_aurora_bridge_v1"))
))]
#[path = "./ros2/fourier-ros2-aurora-bridge-v1-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros2_aurora_bridge_v1",
    not(any(feature = "ros1_aurora_bridge_v1"))
))]
pub use bounded_records::Ros2Uwvm_fourier_bridgeMsgStatus as State;
#[cfg(all(
    feature = "ros2_aurora_bridge_v1",
    not(any(feature = "ros1_aurora_bridge_v1"))
))]
pub use bounded_records::Ros2Uwvm_fourier_bridgeMsgVelocityCommand as Command;
#[cfg(all(
    feature = "ros2_aurora_bridge_v1",
    not(any(feature = "ros1_aurora_bridge_v1"))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(not(any(
    all(
        feature = "ros1_aurora_bridge_v1",
        not(any(feature = "ros2_aurora_bridge_v1"))
    ),
    all(
        feature = "ros2_aurora_bridge_v1",
        not(any(feature = "ros1_aurora_bridge_v1"))
    )
)))]
compile_error!("Select exactly one original Fourier Aurora native SDK bridge source feature");
use roswasm::typed::Canonical;
use roswasm::{Capability, Error};
/// Resource cleanup is independent from the complete value and primary result.
pub struct Outcome<T> {
    pub primary: u32,
    pub cleanup: u32,
    pub value: Option<T>,
}
fn outcome<T>(r: Result<T, Error>, cleanup: u32) -> Outcome<T> {
    match r {
        Ok(v) => Outcome {
            primary: 0,
            cleanup,
            value: Some(v),
        },
        Err(e) => Outcome {
            primary: e.code,
            cleanup,
            value: None,
        },
    }
}
/// Subscribe/poll once; idle or timeout is never replayed implicitly.
pub fn read_once(alias: &str) -> Outcome<State> {
    let mut b = [0u8; State::MAX_WIRE_BYTES];
    let mut c = match Capability::open(BACKEND, alias) {
        Ok(c) => c,
        Err(e) => return outcome(Err(e), 0),
    };
    let r = c
        .subscribe()
        .and_then(|()| c.poll(&mut b))
        .and_then(|n| State::decode(&b[..n]));
    let cleanup = c.close().err().map_or(0, |e| e.code);
    outcome(r, cleanup)
}
/// The loader supplies an explicit complete command only after admission.
pub fn command_once<F: FnOnce() -> Result<Vec<u8>, Error>>(alias: &str, load: F) -> Outcome<()> {
    let mut c = match Capability::open(BACKEND, alias) {
        Ok(c) => c,
        Err(e) => return outcome(Err(e), 0),
    };
    let r = load()
        .and_then(|b| Command::decode(&b))
        .and_then(|v| v.encode())
        .and_then(|b| c.publish(&b));
    let cleanup = c.close().err().map_or(0, |e| e.code);
    outcome(r, cleanup)
}
