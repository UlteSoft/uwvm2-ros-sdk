//! @file main.rs
//! @brief Read every original rosdemo_v4/RobotMode field.
//! @details Actual Rust retains complete typed records and separate operation/close errors.
use dobot::ros1_demo_v4 as records;
use roswasm::typed::Canonical;
use roswasm::{Backend, Capability, Error, Operation};
use std::io::{self, Write};

/// @brief Perform one explicitly selected operation under an already acquired owner.
/// @param owner Borrowed live exact alias; no acquisition, close or service replay occurs.
/// @return Complete checked canonical response bytes or original transport/codec error.
fn perform(owner: &Capability) -> Result<Vec<u8>, Error> {
    let mut bytes = vec![0; 8];
    let length;
    let request = records::Ros1Rosdemo_v4RobotModeRequest::default().encode()?;
    length = owner.request(Operation::ServiceCall, &request, &mut bytes)?;
    let value = records::Ros1Rosdemo_v4RobotModeResponse::decode(&bytes[..length])?;
    value.encode()
}

/// @brief Execute one finite observation/query, close once, then emit complete actual bytes.
/// @details The final status preserves primary before cleanup and stdout errors, capped at 125.
/// The host independently grants the selected alias and monotonic waits.
fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        std::process::exit(22);
    }
    let mut primary = 0u32;
    let mut cleanup = 0u32;
    let mut acquired = false;
    let mut present = false;
    let mut wire = Vec::new();
    match Capability::open(Backend::Ros1, &args[1]) {
        Err(error) => primary = error.code,
        Ok(mut owner) => {
            acquired = true;
            match perform(&owner) {
                Ok(bytes) => {
                    wire = bytes;
                    present = true;
                }
                Err(error) => primary = error.code,
            }
            if let Err(error) = owner.close() {
                cleanup = error.code;
            }
        }
    }
    let text = wire
        .iter()
        .map(|byte| format!("{:02x}", byte))
        .collect::<String>();
    let report = format!("{{\"primary\":{},\"cleanup\":{},\"cleanup_present\":{},\"response_present\":{},\"wire_hex\":\"{}\"}}\n",
        primary, cleanup, acquired, present, text);
    let output = if io::stdout().write_all(report.as_bytes()).is_ok() {
        0
    } else {
        5
    };
    let status = if primary != 0 {
        primary
    } else if cleanup != 0 {
        cleanup
    } else {
        output
    };
    std::process::exit(status.min(125) as i32);
}
