// @file lib.rs
// @brief Provide the complete leju lib.rs source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
//! Complete original Leju DTOs; exactly one explicit source feature.
#[cfg(all(
    feature = "ros1_beta_platform",
    not(any(
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-beta-platform-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros1_beta_platform",
    not(any(
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-beta-platform-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_beta_platform",
    not(any(
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_msgsJointCmd as Command;
#[cfg(all(
    feature = "ros1_beta_platform",
    not(any(
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_msgsSensorsData as State;
#[cfg(all(
    feature = "ros1_beta_platform",
    not(any(
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_beta_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-beta-packaged-ik-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros1_beta_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-beta-packaged-ik-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_beta_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Motion_capture_ikRobotArmQVVD as State;
#[cfg(all(
    feature = "ros1_beta_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Motion_capture_ikTwoArmHandPoseCmdFree as Command;
#[cfg(all(
    feature = "ros1_beta_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_beta_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-beta-unregistered-dtos-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_beta_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_sdkFullBodyTargetTrajectories as Command;
#[cfg(all(
    feature = "ros1_beta_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_sdkQv as State;
#[cfg(all(
    feature = "ros1_beta_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_main_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-main-platform-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros1_main_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-main-platform-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_main_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_msgsJointCmd as Command;
#[cfg(all(
    feature = "ros1_main_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_msgsSensorsData as State;
#[cfg(all(
    feature = "ros1_main_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_main_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-main-packaged-ik-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros1_main_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-main-packaged-ik-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_main_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Motion_capture_ikRobotArmQVVD as State;
#[cfg(all(
    feature = "ros1_main_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Motion_capture_ikTwoArmHandPoseCmdFree as Command;
#[cfg(all(
    feature = "ros1_main_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_main_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-main-unregistered-dtos-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_main_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_sdkFullBodyTargetTrajectories as Command;
#[cfg(all(
    feature = "ros1_main_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_sdkQv as State;
#[cfg(all(
    feature = "ros1_main_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_master_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-master-platform-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros1_master_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-master-platform-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_master_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_msgsJointCmd as Command;
#[cfg(all(
    feature = "ros1_master_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Kuavo_msgsSensorsData as State;
#[cfg(all(
    feature = "ros1_master_platform",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_packaged_ik",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_master_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-master-packaged-ik-complete/bounded_interfaces.rs"]
pub mod bounded_interfaces;
#[cfg(all(
    feature = "ros1_master_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
#[path = "./ros1/leju-ros1-master-packaged-ik-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_master_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Motion_capture_ikRobotArmQVVD as State;
#[cfg(all(
    feature = "ros1_master_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
pub use bounded_records::Ros1Motion_capture_ikTwoArmHandPoseCmdFree as Command;
#[cfg(all(
    feature = "ros1_master_packaged_ik",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_unregistered_dtos"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(all(
    feature = "ros1_master_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik"
    ))
))]
#[path = "./ros1/leju-ros1-master-unregistered-dtos-complete/bounded_records.rs"]
pub mod bounded_records;
#[cfg(all(
    feature = "ros1_master_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik"
    ))
))]
pub use bounded_records::Ros1Kuavo_sdkFullBodyTargetTrajectories as Command;
#[cfg(all(
    feature = "ros1_master_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik"
    ))
))]
pub use bounded_records::Ros1Kuavo_sdkQv as State;
#[cfg(all(
    feature = "ros1_master_unregistered_dtos",
    not(any(
        feature = "ros1_beta_platform",
        feature = "ros1_beta_packaged_ik",
        feature = "ros1_beta_unregistered_dtos",
        feature = "ros1_main_platform",
        feature = "ros1_main_packaged_ik",
        feature = "ros1_main_unregistered_dtos",
        feature = "ros1_master_platform",
        feature = "ros1_master_packaged_ik"
    ))
))]
const BACKEND: roswasm::Backend = roswasm::Backend::Ros1;
#[cfg(not(any(
    all(
        feature = "ros1_beta_platform",
        not(any(
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_platform",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_platform",
            feature = "ros1_master_packaged_ik",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_beta_packaged_ik",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_platform",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_platform",
            feature = "ros1_master_packaged_ik",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_beta_unregistered_dtos",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_main_platform",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_platform",
            feature = "ros1_master_packaged_ik",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_main_platform",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_platform",
            feature = "ros1_master_packaged_ik",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_main_packaged_ik",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_platform",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_platform",
            feature = "ros1_master_packaged_ik",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_main_unregistered_dtos",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_platform",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_master_platform",
            feature = "ros1_master_packaged_ik",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_master_platform",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_platform",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_packaged_ik",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_master_packaged_ik",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_platform",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_platform",
            feature = "ros1_master_unregistered_dtos"
        ))
    ),
    all(
        feature = "ros1_master_unregistered_dtos",
        not(any(
            feature = "ros1_beta_platform",
            feature = "ros1_beta_packaged_ik",
            feature = "ros1_beta_unregistered_dtos",
            feature = "ros1_main_platform",
            feature = "ros1_main_packaged_ik",
            feature = "ros1_main_unregistered_dtos",
            feature = "ros1_master_platform",
            feature = "ros1_master_packaged_ik"
        ))
    )
)))]
compile_error!("Select exactly one original Leju source feature");
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
