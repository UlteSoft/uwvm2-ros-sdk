// @file lib.rs
// @brief Provide the complete agibot lib.rs source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
//! Agibot Wasm facade and exact original AimDK bounded value types.
pub mod agibot_client;
pub use agibot_client::{aimdk, list_resources, next_motion_state, query_mode, ObservationError};

pub mod json;
