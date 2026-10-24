//! @file mod.rs
//! @brief Own the complete ros2_humble record and protocol modules.
//! @details 30 records retain their original canonical identities.
//! Wire values are borrowed/owned by the declared Rust types; no alias is opened here.
pub mod bounded_interfaces;
pub mod bounded_records;
