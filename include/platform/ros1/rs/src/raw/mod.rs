// @file mod.rs
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

//! Exact ABI imports with explicit memory indices and u64 offsets.
//! Feature selection removes declarations for disabled ROS backends.

/// ROS 1 imports from `uwvm_ros1_v1`; enable the `ros1` Cargo feature.
#[cfg(feature = "ros1")]
pub mod ros1;
/// ROS 2 imports from `uwvm_ros2_v1`; enable the `ros2` Cargo feature.
#[cfg(feature = "ros2")]
pub mod ros2;
