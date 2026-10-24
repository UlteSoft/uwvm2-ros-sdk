//! @file main.rs
//! @brief Represent the complete original ABB ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
//! @brief Read the complete RAPID motion speed ratio once.
//! @details The empty request changes no speed override. Controller refusal retains the full reply.
//! This real wasm32-wasip1 command uses the complete typed ABB observation SDK.
//! The response remains whole, and normal cleanup precedes JSON stdout output.
//! @see observation::Outcome
#![allow(non_camel_case_types, non_snake_case, dead_code)]

#[path = "abb/rs/observation.rs"]
mod observation;
use std::fmt::Write as _;
use std::io::Write as _;

/// @brief Perform one command-selected observation and emit all original facts.
/// @details Usage: application ALIAS. Invalid argument count exits
/// 22 before acquisition. The primary status precedes independent cleanup and
/// stdout failure. Process status is clamped to 125; no thread or retry starts.
/// @see observation::Outcome::status
fn main() {
    let arguments: Vec<String> = std::env::args().collect();
    if arguments.len() != 2 {
        std::process::exit(22);
    }
    let result = observation::read_speed(&arguments[1]);
    let mut wire = String::with_capacity(result.wire.len() * 2);
    for byte in &result.wire {
        write!(&mut wire, "{byte:02x}").expect("String writer");
    }
    let report = format!(
        concat!(
            "{{\"primary\":{},\"cleanup\":{},\"cleanup_present\":{},",
            "\"response_present\":{},\"rpc_present\":{},\"rpc_status\":{},",
            "\"required_present\":{},\"required\":{},\"encoding\":0,\"wire_hex\":\"{}\"}}\n"
        ),
        result.primary,
        result.cleanup.unwrap_or(0),
        u8::from(result.cleanup.is_some()),
        u8::from(result.value.is_some()),
        u8::from(result.rpc_present),
        result.rpc_error.as_ref().map_or(0, |error| error.code),
        u8::from(result.length.is_some()),
        result.length.unwrap_or(0),
        wire
    );
    let mut status = result.status();
    if std::io::stdout()
        .lock()
        .write_all(report.as_bytes())
        .is_err()
        && status == 0
    {
        status = 5;
    }
    std::process::exit(status.min(125) as i32);
}
