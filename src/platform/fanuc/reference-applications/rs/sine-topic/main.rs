//! @file main.rs
//! @brief Represent the complete original FANUC ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
// SPDX-License-Identifier: Apache-2.0
//! @brief Actual Wasip1 command for the pinned fanuc.sine-topic program flow.
//! @details Three positional aliases select JointState, trajectory publication
//! and ROS time. Optional fourth argument is a positive monotonic watchdog in
//! milliseconds; omission preserves original unbounded ROS/state waiting. All
//! grants/model/controller/topic bindings remain external. This source is an
//! unqualified build candidate; it never provisions or executes real-robot policy.
//! @see uwvm_fanuc_sine_topic::run

/// @brief Parse explicit aliases, execute the owned loop and retain error precedence.
/// @details Wrong argument count or invalid watchdog exits22 before any ROS open.
/// The full primary/cleanup diagnostics are printed; process status is clamped
/// to125. A successful publish is not controller completion or physical stopping.
/// @see uwvm_fanuc_sine_topic::Outcome::status
fn main() {
    use uwvm_fanuc_sine_topic::{Aliases, Options};
    let arguments: Vec<String> = std::env::args().collect();
    if arguments.len() != 4 && arguments.len() != 5 {
        std::process::exit(22);
    }
    let mut options = Options::default();
    if arguments.len() == 5 {
        let milliseconds = match arguments[4].parse::<u64>() {
            Ok(value) if value > 0 => value,
            _ => std::process::exit(22),
        };
        options.watchdog = Some(std::time::Duration::from_millis(milliseconds));
    }
    let aliases = Aliases {
        joints: &arguments[1],
        trajectory: &arguments[2],
        ros_clock: &arguments[3],
    };
    let result = uwvm_fanuc_sine_topic::run(&aliases, &options);
    println!("phase={:?} primary={} error={:?} cleanup={:?} callbacks={} ticks={} attempted={} published={}",
        result.phase, result.primary, result.error, result.cleanup, result.state_callbacks,
        result.timer_callbacks, result.publish_attempted, result.published);
    std::process::exit(result.status().min(125) as i32);
}
