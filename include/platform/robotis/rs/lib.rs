//! @file lib.rs
//! @brief Select complete robotis ROS catalogs through explicit profile features.
//! @details Features select source catalogs; they grant no runtime authority.
//! The consumer enables the shared roswasm alloc and matching ROS feature.
#![no_std]

#[cfg(feature = "humble")]
#[path = "ros2/robotis-turtlebot3-humble-complete/mod.rs"]
pub mod humble;

#[cfg(feature = "jazzy")]
#[path = "ros2/robotis-turtlebot3-jazzy-complete/mod.rs"]
pub mod jazzy;

#[cfg(feature = "main")]
#[path = "ros2/robotis-turtlebot3-main-complete/mod.rs"]
pub mod main;

#[cfg(feature = "noetic")]
#[path = "ros1/robotis-turtlebot3-noetic-complete/mod.rs"]
pub mod noetic;
