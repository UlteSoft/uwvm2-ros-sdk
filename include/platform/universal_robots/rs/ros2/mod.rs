//! @file mod.rs
//! @brief Complete universal_robots values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see document/platform/universal_robots/en_US/README.md

#[path = "universal-robots-polyscopex-complete/mod.rs"]
pub mod universal_robots_polyscopex_complete;
#[path = "universal-robots-ros2-complete/mod.rs"]
pub mod universal_robots_ros2_complete;
#[path = "universal-robots-ros2-trajectory-complete/mod.rs"]
pub mod universal_robots_ros2_trajectory_complete;
