//! @file lib.rs
//! @brief Select complete pal ROS catalogs through explicit profile features.
//! @details Features select source catalogs; they grant no runtime authority.
//! The consumer enables the shared roswasm alloc and matching ROS feature.
#![no_std]

#[cfg(feature = "ros1_humble_devel")]
#[path = "ros1/pal-ros1-humble-devel-complete/mod.rs"]
pub mod ros1_humble_devel;

#[cfg(feature = "ros1_indigo_devel")]
#[path = "ros1/pal-ros1-indigo-devel-complete/mod.rs"]
pub mod ros1_indigo_devel;

#[cfg(feature = "ros1_noetic_devel")]
#[path = "ros1/pal-ros1-noetic-devel-complete/mod.rs"]
pub mod ros1_noetic_devel;

#[cfg(feature = "ros2_humble_devel")]
#[path = "ros2/pal-ros2-humble-devel-complete/mod.rs"]
pub mod ros2_humble_devel;
