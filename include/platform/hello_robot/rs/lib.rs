//! @file lib.rs
//! @brief Select complete hello_robot ROS catalogs through explicit profile features.
//! @details Features select source catalogs; they grant no runtime authority.
//! The consumer enables the shared roswasm alloc and matching ROS feature.
#![no_std]

#[cfg(feature = "mobile_fjt_humble")]
#[path = "ros2/mobile-fjt-humble-complete/mod.rs"]
pub mod mobile_fjt_humble;
