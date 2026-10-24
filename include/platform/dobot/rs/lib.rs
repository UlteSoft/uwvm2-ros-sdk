//! @file lib.rs
//! @brief Complete per-profile vendor records; select an explicit ROS feature.
#[cfg(feature = "ros1")]
#[path = "ros1/dobot-ros1-demo-v3-complete/bounded_records.rs"]
pub mod ros1_demo_v3;
#[cfg(feature = "ros1")]
#[path = "ros1/dobot-ros1-demo-v4-complete/bounded_records.rs"]
pub mod ros1_demo_v4;
#[cfg(feature = "ros1")]
#[path = "ros1/dobot-ros1-v3-complete/bounded_records.rs"]
pub mod ros1_v3;
#[cfg(feature = "ros1")]
#[path = "ros1/dobot-ros1-v4-complete/bounded_records.rs"]
pub mod ros1_v4;
#[cfg(feature = "ros2")]
#[path = "ros2/dobot-ros2-v4-complete/bounded_records.rs"]
pub mod ros2_v4;
