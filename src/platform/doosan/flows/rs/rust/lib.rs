//! @file lib.rs
//! @brief Retained doosan native ROS application flow over the public typed SDK.
//! @details Select the exact original source profile and manually configured deployment before use. Observe the
//! operation and cleanup statuses separately. Source retention does not establish native communication, current
//! robot state, or controller compatibility.
//! @see document/platform/doosan/en_US/README.md

//! Complete original Doosan DTOs; exactly one explicit source feature.
#[cfg(all(
    feature = "ros1_aws_robot",
    not(any(
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_aws_robot",
    not(any(
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_aws_robot",
    not(any(
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_aws_robot_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_aws_robot",
    not(any(
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_aws_robot_complete::bounded_records;
#[cfg(all(
    feature = "ros1_aws_robot",
    not(any(
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_aws_simulation",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_aws_simulation",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_aws_simulation",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_aws_simulation_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_aws_simulation",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_aws_simulation_complete::bounded_records;
#[cfg(all(
    feature = "ros1_aws_simulation",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_doosan_robotics_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_doosan_robotics_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_doosan_robotics_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_doosan_robotics_patch_1_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_doosan_robotics_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_doosan_robotics_patch_1_complete::bounded_records;
#[cfg(all(
    feature = "ros1_doosan_robotics_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_kinetic_devel_descrepted",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_kinetic_devel_descrepted",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_kinetic_devel_descrepted",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_kinetic_devel_descrepted_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_kinetic_devel_descrepted",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_kinetic_devel_descrepted_complete::bounded_records;
#[cfg(all(
    feature = "ros1_kinetic_devel_descrepted",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_main_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_main_complete::bounded_records;
#[cfg(all(
    feature = "ros1_main",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_master",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_master",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_master",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_master_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_master",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_master_complete::bounded_records;
#[cfg(all(
    feature = "ros1_master",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_melodic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_melodic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_melodic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_melodic_devel_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_melodic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_melodic_devel_complete::bounded_records;
#[cfg(all(
    feature = "ros1_melodic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_noetic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_noetic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_noetic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_noetic_devel_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_noetic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_noetic_devel_complete::bounded_records;
#[cfg(all(
    feature = "ros1_noetic_devel",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_patch_1_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_patch_1_complete::bounded_records;
#[cfg(all(
    feature = "ros1_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_song_ms_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotState as State;
#[cfg(all(
    feature = "ros1_song_ms_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros1Dsr_msgsRobotStop as Command;
#[cfg(all(
    feature = "ros1_song_ms_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_song_ms_patch_1_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros1_song_ms_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros1::doosan_ros1_song_ms_patch_1_complete::bounded_records;
#[cfg(all(
    feature = "ros1_song_ms_patch_1",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros2_humble",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros2Dsr_msgs2MsgRobotState as State;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_jazzy"
    ))
))]
pub use bounded_records::Ros2Dsr_msgs2MsgRobotStop as Command;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros2::doosan_ros2_humble_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_jazzy"
    ))
))]
pub use doosan::ros2::doosan_ros2_humble_complete::bounded_records;
#[cfg(all(
    feature = "ros2_humble",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_jazzy"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble"
    ))
))]
pub use bounded_records::Ros2Dsr_msgs2MsgRobotState as State;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble"
    ))
))]
pub use bounded_records::Ros2Dsr_msgs2MsgRobotStop as Command;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble"
    ))
))]
pub use doosan::ros2::doosan_ros2_jazzy_complete::bounded_interfaces;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble"
    ))
))]
pub use doosan::ros2::doosan_ros2_jazzy_complete::bounded_records;
#[cfg(all(
    feature = "ros2_jazzy",
    not(any(
        feature = "ros1_aws_robot",
        feature = "ros1_aws_simulation",
        feature = "ros1_doosan_robotics_patch_1",
        feature = "ros1_kinetic_devel_descrepted",
        feature = "ros1_main",
        feature = "ros1_master",
        feature = "ros1_melodic_devel",
        feature = "ros1_noetic_devel",
        feature = "ros1_patch_1",
        feature = "ros1_song_ms_patch_1",
        feature = "ros2_humble"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros2;
#[cfg(not(any(
    all(
        feature = "ros1_aws_robot",
        not(any(
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_aws_simulation",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_doosan_robotics_patch_1",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_kinetic_devel_descrepted",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_main",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_master",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_melodic_devel",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_noetic_devel",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_patch_1",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros1_song_ms_patch_1",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros2_humble",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros2_humble",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_jazzy"
        ))
    ),
    all(
        feature = "ros2_jazzy",
        not(any(
            feature = "ros1_aws_robot",
            feature = "ros1_aws_simulation",
            feature = "ros1_doosan_robotics_patch_1",
            feature = "ros1_kinetic_devel_descrepted",
            feature = "ros1_main",
            feature = "ros1_master",
            feature = "ros1_melodic_devel",
            feature = "ros1_noetic_devel",
            feature = "ros1_patch_1",
            feature = "ros1_song_ms_patch_1",
            feature = "ros2_humble"
        ))
    )
)))]
compile_error!("Select exactly one original Doosan source feature");
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
