//! @file lib.rs
//! @brief Preserve the original robotis controller application semantics.
//! @details This source uses the public typed SDK and explicit capability aliases.
//! Finite polls preserve primary and cleanup failures independently. Deployment
//! requires a matching source profile and manually supplied runtime permissions.
//! Whole selected original TurtleBot3 state over actual controlled imports.
#[cfg(all(
    feature = "noetic",
    not(any(feature = "humble", feature = "jazzy", feature = "main"))
))]
pub use bounded_records::Ros1Turtlebot3_msgsSensorState as State;
#[cfg(all(
    feature = "humble",
    not(any(feature = "noetic", feature = "jazzy", feature = "main"))
))]
pub use bounded_records::Ros2Turtlebot3_msgsMsgSensorState as State;
#[cfg(all(
    feature = "jazzy",
    not(any(feature = "noetic", feature = "humble", feature = "main"))
))]
pub use bounded_records::Ros2Turtlebot3_msgsMsgSensorState as State;
#[cfg(all(
    feature = "main",
    not(any(feature = "noetic", feature = "humble", feature = "jazzy"))
))]
pub use bounded_records::Ros2Turtlebot3_msgsMsgSensorState as State;
#[cfg(all(
    feature = "humble",
    not(any(feature = "noetic", feature = "jazzy", feature = "main"))
))]
pub use robotis::humble::bounded_interfaces;
#[cfg(all(
    feature = "humble",
    not(any(feature = "noetic", feature = "jazzy", feature = "main"))
))]
pub use robotis::humble::bounded_records;
#[cfg(all(
    feature = "jazzy",
    not(any(feature = "noetic", feature = "humble", feature = "main"))
))]
pub use robotis::jazzy::bounded_interfaces;
#[cfg(all(
    feature = "jazzy",
    not(any(feature = "noetic", feature = "humble", feature = "main"))
))]
pub use robotis::jazzy::bounded_records;
#[cfg(all(
    feature = "main",
    not(any(feature = "noetic", feature = "humble", feature = "jazzy"))
))]
pub use robotis::main::bounded_interfaces;
#[cfg(all(
    feature = "main",
    not(any(feature = "noetic", feature = "humble", feature = "jazzy"))
))]
pub use robotis::main::bounded_records;
#[cfg(all(
    feature = "noetic",
    not(any(feature = "humble", feature = "jazzy", feature = "main"))
))]
pub use robotis::noetic::bounded_interfaces;
#[cfg(all(
    feature = "noetic",
    not(any(feature = "humble", feature = "jazzy", feature = "main"))
))]
pub use robotis::noetic::bounded_records;
#[cfg(not(any(
    all(
        feature = "noetic",
        not(any(feature = "humble", feature = "jazzy", feature = "main"))
    ),
    all(
        feature = "humble",
        not(any(feature = "noetic", feature = "jazzy", feature = "main"))
    ),
    all(
        feature = "jazzy",
        not(any(feature = "noetic", feature = "humble", feature = "main"))
    ),
    all(
        feature = "main",
        not(any(feature = "noetic", feature = "humble", feature = "jazzy"))
    )
)))]
compile_error!("Select exactly one TurtleBot3 original profile");
use roswasm::typed::Canonical;
use roswasm::{Backend, Capability};
/// A complete observation may survive a later cleanup failure; never drop it.
pub struct Outcome {
    pub primary: u32,
    pub cleanup: u32,
    pub value: Option<State>,
}
/// Open only the explicit alias, subscribe once, poll once, then close once.
/// @brief Open one explicit alias, subscribe, poll once and close the owner.
/// @param alias Borrowed UTF-8 name of a separately granted topic capability.
/// @return Complete decoded observation with independent primary and cleanup codes.
/// @details Idle, malformed wire values and denied authority are returned without replay.
pub fn read_once(alias: &str) -> Outcome {
    let mut bytes = [0u8; State::MAX_WIRE_BYTES];
    #[cfg(feature = "noetic")]
    let backend = Backend::Ros1;
    #[cfg(any(feature = "humble", feature = "jazzy", feature = "main"))]
    let backend = Backend::Ros2;
    let mut cap = match Capability::open(backend, alias) {
        Ok(v) => v,
        Err(e) => {
            return Outcome {
                primary: e.code,
                cleanup: 0,
                value: None,
            }
        }
    };
    let result = cap
        .subscribe()
        .and_then(|()| cap.poll(&mut bytes))
        .and_then(|n| State::decode(&bytes[..n]));
    let cleanup = cap.close().err().map_or(0, |e| e.code);
    match result {
        Ok(value) => Outcome {
            primary: 0,
            cleanup,
            value: Some(value),
        },
        Err(e) => Outcome {
            primary: e.code,
            cleanup,
            value: None,
        },
    }
}
