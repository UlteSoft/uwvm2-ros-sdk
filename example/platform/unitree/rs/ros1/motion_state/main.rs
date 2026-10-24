//! @brief Observe the complete native ROS 1 high-level state and every nested field.
//! @details Genuine Rust source is compiled into one WASI command. The actual
//! uwvm2-ros runtime and production native gateway provide all ROS transport.
use std::fmt::Write as FmtWrite;
use std::io::{self, Write as IoWrite};
use std::time::Duration;

/// @brief Wait twenty milliseconds between idle polls through real WASI clocks.
/// @return Zero after the wait; the host independently grants clock access.
/// @details No additional owner, worker, timer thread, or ROS operation is created.
fn pause() -> u32 {
    std::thread::sleep(Duration::from_millis(20));
    0
}

/// @brief Observe one whole original native HighState message and print its full bytes.
/// @return Process status preserves the primary error before cleanup, otherwise
/// output failure is 5; every final process status is clamped to 125.
/// @details Exactly one explicit alias argument is required. All normal owners
/// close before stdout. The finite poll budget does not replay capacity errors
/// or publish any robot command. A fatal Rust panic cannot promise normal cleanup.
fn main() {
    let input: Vec<String> = std::env::args().collect();
    if input.len() != 2 {
        std::process::exit(22);
    }
    let value = unitree::wait_motion_state(&input[1], 250, pause);
    let mut status = value.status();
    let mut wire = String::new();
    for byte in &value.wire {
        if write!(&mut wire, "{:02x}", byte).is_err() {
            if status == 0 {
                status = 5;
            }
            std::process::exit(status.min(125) as i32);
        }
    }
    let stdout = io::stdout();
    let mut output = stdout.lock();
    let written = writeln!(
        output,
        concat!(
            "{{\"primary\":{},\"cleanup\":{},\"cleanup_present\":{},",
            "\"response_present\":{},\"rpc_present\":{},\"rpc_status\":{},",
            "\"polls\":{},\"required_present\":{},\"required\":{},",
            "\"encoding\":0,\"wire_hex\":\"{}\"}}"
        ),
        value.primary,
        value.cleanup.unwrap_or(0),
        value.cleanup.is_some(),
        value.value.is_some(),
        value.rpc_present,
        value.rpc_error.as_ref().map_or(0, |error| error.code),
        value.polls,
        value.length.is_some(),
        value.length.unwrap_or(0),
        wire
    )
    .is_ok();
    let flushed = output.flush().is_ok();
    if status == 0 && (!written || !flushed) {
        status = 5;
    }
    std::process::exit(status.min(125) as i32);
}
