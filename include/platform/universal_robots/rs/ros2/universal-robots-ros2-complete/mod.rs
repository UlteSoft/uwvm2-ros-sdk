//! @file mod.rs
//! @brief Complete universal_robots values and adapters for the selected original interface catalog.
//! @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
//! defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
//! roles require the separately admitted SDK owner.
//! @see share/platform/universal_robots/domains/universal-robots-ros2-complete.ir.json
//! @see document/platform/universal_robots/en_US/README.md

//! @brief Full original record and owned service/action modules.
pub mod bounded_interfaces;
pub mod bounded_records;
