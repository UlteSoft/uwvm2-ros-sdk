//! @file lib.rs
//! @brief Select complete trossen ROS catalogs through explicit profile features.
//! @details Features select source catalogs; they grant no runtime authority.
//! The consumer enables the shared roswasm alloc and matching ROS feature.
#![no_std]

#[cfg(feature = "ros1_main")]
#[path = "ros1/trossen-ros1-main-complete/mod.rs"]
pub mod ros1_main;

#[cfg(feature = "ros1_manipulators_kinetic")]
#[path = "ros1/trossen-ros1-manipulators-kinetic-complete/mod.rs"]
pub mod ros1_manipulators_kinetic;

#[cfg(feature = "ros1_manipulators_main")]
#[path = "ros1/trossen-ros1-manipulators-main-complete/mod.rs"]
pub mod ros1_manipulators_main;

#[cfg(feature = "ros1_manipulators_melodic")]
#[path = "ros1/trossen-ros1-manipulators-melodic-complete/mod.rs"]
pub mod ros1_manipulators_melodic;

#[cfg(feature = "ros1_manipulators_noetic")]
#[path = "ros1/trossen-ros1-manipulators-noetic-complete/mod.rs"]
pub mod ros1_manipulators_noetic;

#[cfg(feature = "ros1_melodic")]
#[path = "ros1/trossen-ros1-melodic-complete/mod.rs"]
pub mod ros1_melodic;

#[cfg(feature = "ros1_noetic")]
#[path = "ros1/trossen-ros1-noetic-complete/mod.rs"]
pub mod ros1_noetic;

#[cfg(feature = "ros2_galactic")]
#[path = "ros2/trossen-ros2-galactic-complete/mod.rs"]
pub mod ros2_galactic;

#[cfg(feature = "ros2_humble")]
#[path = "ros2/trossen-ros2-humble-complete/mod.rs"]
pub mod ros2_humble;

#[cfg(feature = "ros2_iron")]
#[path = "ros2/trossen-ros2-iron-complete/mod.rs"]
pub mod ros2_iron;

#[cfg(feature = "ros2_jazzy")]
#[path = "ros2/trossen-ros2-jazzy-complete/mod.rs"]
pub mod ros2_jazzy;
