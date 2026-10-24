//! @file main.rs
//! @brief Represent the complete original FANUC ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
//! @brief Run one complete GetTCPSpeed observation for FANUC group 1.
//! @details Rust 2021 command using the real wasm32-wasip1 Guest backend. One
//! positional UTF-8 argument selects an externally granted service alias; it
//! supplies no authority. Prints the complete response and cleanup observations.
//! The original IDL declares no speed/timetag unit conversion. There is no timer,
//! thread or retry. Rust 1.85.0 is the historical selected compiler baseline.
//! @see uwvm_fanuc_query::query_once
/// @brief Execute the source request and preserve primary failure precedence.
/// @details Exits 22 for the wrong argument count; otherwise exits with primary
/// or first cleanup error, clamped to 125. Zero requires both to succeed. Checked
/// service cleanup precedes stdout and exit; allocation/output panic or abort is
/// outside normal error reporting. Native stop/reset is never implied by close.
/// @see uwvm_fanuc_query::Outcome
fn main() {
    let arguments: Vec<String> = std::env::args().collect();
    if arguments.len() != 2 {
        std::process::exit(22);
    }
    let mut request = uwvm_fanuc_query::Request::default();
    request.group = 1;
    let outcome = uwvm_fanuc_query::query_once(&arguments[1], &request);
    println!("{:?}", outcome);
    let cleanup = outcome
        .cleanup
        .statuses
        .iter()
        .find_map(|value| value.as_ref().err().map(|error| error.code))
        .unwrap_or(0);
    let status = if outcome.primary != 0 {
        outcome.primary
    } else {
        cleanup
    };
    std::process::exit(if status <= 125 { status as i32 } else { 125 });
}
