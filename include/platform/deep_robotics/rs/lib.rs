// @file lib.rs
// @brief Provide the selected typed SDK binding and ownership boundary for deep_robotics.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

//! Complete original DEEP Robotics DTOs; exactly one explicit source feature.
#[cfg(all(feature = "ros2_main", not(any())))]
#[path = "./ros2/deep-robotics-ros2-main-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(feature = "ros2_main", not(any())))]
#[path = "./ros2/deep-robotics-ros2-main-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(feature = "ros2_main", not(any())))]
pub use bounded_records::Ros2DrddsMsgJointsDataCmd as Command;
#[cfg(all(feature = "ros2_main", not(any())))]
pub use bounded_records::Ros2DrddsMsgRobotStatus as State;
#[cfg(all(feature = "ros2_main", not(any())))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(not(any(all(feature = "ros2_main", not(any())))))]
compile_error!("Select exactly one original DEEP Robotics source feature");
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
