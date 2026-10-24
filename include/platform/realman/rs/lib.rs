//! @file lib.rs
//! @brief Complete per-profile vendor records; select an explicit ROS feature.
#[cfg(feature = "ros1")]
#[path = "ros1/realman-ros1-develop-complete/bounded_records.rs"]
pub mod ros1_develop;
#[cfg(feature = "ros1")]
#[path = "ros1/realman-ros1-main-complete/bounded_records.rs"]
pub mod ros1_main;
#[cfg(feature = "ros2")]
#[path = "ros2/realman-ros2-foxy-complete/bounded_records.rs"]
pub mod ros2_foxy;
#[cfg(feature = "ros2")]
#[path = "ros2/realman-ros2-humble-complete/bounded_records.rs"]
pub mod ros2_humble;
#[cfg(feature = "ros2")]
#[path = "ros2/realman-ros2-jazzy-complete/bounded_records.rs"]
pub mod ros2_jazzy;
