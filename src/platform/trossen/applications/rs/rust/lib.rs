//! @file lib.rs
//! @brief Preserve the original trossen controller application semantics.
//! @details This source uses the public typed SDK and explicit capability aliases.
//! Finite polls preserve primary and cleanup failures independently. Deployment
//! requires a matching source profile and manually supplied runtime permissions.
//! Complete original Interbotix DTOs; exactly one explicit source feature.
#[cfg(all(
    feature = "ros2_galactic",
    not(any(
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointGroupCommand as Command;
#[cfg(all(
    feature = "ros2_galactic",
    not(any(
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointTemps as State;
#[cfg(all(
    feature = "ros2_galactic",
    not(any(
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_galactic::bounded_interfaces;
#[cfg(all(
    feature = "ros2_galactic",
    not(any(
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_galactic::bounded_records;
#[cfg(all(
    feature = "ros2_galactic",
    not(any(
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointGroupCommand as Command;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointTemps as State;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_humble::bounded_interfaces;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_humble::bounded_records;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(all(
    feature = "ros2_iron",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointGroupCommand as Command;
#[cfg(all(
    feature = "ros2_iron",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointTemps as State;
#[cfg(all(
    feature = "ros2_iron",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_iron::bounded_interfaces;
#[cfg(all(
    feature = "ros2_iron",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_iron::bounded_records;
#[cfg(all(
    feature = "ros2_iron",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointGroupCommand as Command;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros2Interbotix_xs_msgsMsgJointTemps as State;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_jazzy::bounded_interfaces;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros2_jazzy::bounded_records;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_xs_msgsJointGroupCommand as Command;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_xs_msgsJointTemps as State;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_main::bounded_interfaces;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_main::bounded_records;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_xs_msgsJointGroupCommand as Command;
#[cfg(all(
    feature = "ros1_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_xs_msgsJointTemps as State;
#[cfg(all(
    feature = "ros1_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_melodic::bounded_interfaces;
#[cfg(all(
    feature = "ros1_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_melodic::bounded_records;
#[cfg(all(
    feature = "ros1_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_xs_msgsJointGroupCommand as Command;
#[cfg(all(
    feature = "ros1_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_xs_msgsJointTemps as State;
#[cfg(all(
    feature = "ros1_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_noetic::bounded_interfaces;
#[cfg(all(
    feature = "ros1_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_noetic::bounded_records;
#[cfg(all(
    feature = "ros1_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_manipulators_kinetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as State;
#[cfg(all(
    feature = "ros1_manipulators_kinetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as Command;
#[cfg(all(
    feature = "ros1_manipulators_kinetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_manipulators_kinetic::bounded_records;
#[cfg(all(
    feature = "ros1_manipulators_kinetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_manipulators_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as State;
#[cfg(all(
    feature = "ros1_manipulators_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as Command;
#[cfg(all(
    feature = "ros1_manipulators_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_manipulators_main::bounded_records;
#[cfg(all(
    feature = "ros1_manipulators_main",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_melodic",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_manipulators_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as State;
#[cfg(all(
    feature = "ros1_manipulators_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as Command;
#[cfg(all(
    feature = "ros1_manipulators_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_noetic"
    ))
))]
pub use trossen::ros1_manipulators_melodic::bounded_records;
#[cfg(all(
    feature = "ros1_manipulators_melodic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_noetic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_manipulators_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as State;
#[cfg(all(
    feature = "ros1_manipulators_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic"
    ))
))]
pub use bounded_records::Ros1Interbotix_uxarm_joyArmJoy as Command;
#[cfg(all(
    feature = "ros1_manipulators_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic"
    ))
))]
pub use trossen::ros1_manipulators_noetic::bounded_records;
#[cfg(all(
    feature = "ros1_manipulators_noetic",
    not(any(
        feature = "ros2_galactic",
        feature = "ros2_humble",
        feature = "ros2_iron",
        feature = "ros2_jazzy",
        feature = "ros1_main",
        feature = "ros1_melodic",
        feature = "ros1_noetic",
        feature = "ros1_manipulators_kinetic",
        feature = "ros1_manipulators_main",
        feature = "ros1_manipulators_melodic"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(not(any(
    all(
        feature = "ros2_galactic",
        not(any(
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros2_humble",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros2_iron",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros2_jazzy",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros1_main",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros1_melodic",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros1_noetic",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros1_manipulators_kinetic",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros1_manipulators_main",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_melodic",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros1_manipulators_melodic",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_noetic"
        ))
    ),
    all(
        feature = "ros1_manipulators_noetic",
        not(any(
            feature = "ros2_galactic",
            feature = "ros2_humble",
            feature = "ros2_iron",
            feature = "ros2_jazzy",
            feature = "ros1_main",
            feature = "ros1_melodic",
            feature = "ros1_noetic",
            feature = "ros1_manipulators_kinetic",
            feature = "ros1_manipulators_main",
            feature = "ros1_manipulators_melodic"
        ))
    )
)))]
compile_error!("Select exactly one original Interbotix source feature");
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
/// @brief Open one explicit alias, subscribe, poll once and close the owner.
/// @param alias Borrowed UTF-8 name of a separately granted topic capability.
/// @return Complete decoded observation with independent primary and cleanup codes.
/// @details Idle, malformed wire values and denied authority are returned without replay.
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
/// @brief Admit an explicit alias before loading and validating a complete command.
/// @param alias Borrowed name of a manually granted publishing capability.
/// @param load Caller-owned producer of the bounded canonical command bytes.
/// @return Independent operation and explicit close statuses; publish is never retried.
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
