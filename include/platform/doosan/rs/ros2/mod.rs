//! @file mod.rs
//! @brief Complete doosan values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see document/platform/doosan/en_US/README.md

#[path = "doosan-ros2-humble-complete/mod.rs"]
pub mod doosan_ros2_humble_complete;
#[path = "doosan-ros2-jazzy-complete/mod.rs"]
pub mod doosan_ros2_jazzy_complete;
