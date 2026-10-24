//! @file mod.rs
//! @brief Complete kuka values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see document/platform/kuka/en_US/README.md

#[path = "kuka-ros2-complete/mod.rs"]
pub mod kuka_ros2_complete;
