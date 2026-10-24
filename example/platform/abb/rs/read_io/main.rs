//! @file main.rs
//! @brief Run one explicit ABB ROS 2 observation with checked cleanup.
//! @details The actual source-language application validates argument arity before acquisition, retains
//! the whole typed canonical value and reports independent operation/cleanup statuses. The operator
//! supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
//! required; no grant, replay or controller admission is implicit.
//! @brief Read the complete value of one configured ABB IO signal.
//! @details The strict UTF-8 signal name is validated before opening. No IO write is performed.
//! This real wasm32-wasip1 command uses the complete typed ABB observation SDK.
//! The response remains whole, and normal cleanup precedes JSON stdout output.
//! @see observation::Outcome

use abb_observation as observation;
use std::fmt::Write as _;
use std::io::Write as _;

/// @brief Perform one command-selected observation and emit all original facts.
/// @details Usage: application ALIAS SIGNAL. Invalid argument count exits
/// 22 before acquisition. The primary status precedes independent cleanup and
/// stdout failure. Process status is clamped to 125; no thread or retry starts.
/// @see observation::Outcome::status
fn main() {
    let arguments: Vec<String> = std::env::args().collect();
    if arguments.len() != 3 {
        std::process::exit(22);
    }
    let result = observation::read_io(&arguments[1], &arguments[2]);
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
