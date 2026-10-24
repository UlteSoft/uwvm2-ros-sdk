//! @file main.rs
//! @brief Read every original xarm_msgs/CIOState field.
//! @details Actual Rust retains complete typed records and separate operation/close errors.
use roswasm::typed::Canonical;
use roswasm::{Backend, Capability, Error};
use std::io::{self, Write};
use std::time::Duration;
use ufactory::ros1_kinetic as records;

/// @brief Perform one explicitly selected operation under an already acquired owner.
/// @param owner Borrowed live exact alias; no acquisition, close or service replay occurs.
/// @return Complete checked canonical response bytes or original transport/codec error.
fn perform(owner: &Capability) -> Result<Vec<u8>, Error> {
    let mut bytes = vec![0; 332];
    let length;
    owner.subscribe()?;
    let mut accepted = None;
    for attempt in 0..250 {
        match owner.poll(&mut bytes) {
            Err(error) if error.code == 11 && attempt < 249 => {
                std::thread::sleep(Duration::from_millis(20))
            }
            result => {
                accepted = Some(result?);
                break;
            }
        }
    }
    length = accepted.ok_or(Error::new(11))?;
    let value = records::Ros1Xarm_msgsCIOState::decode(&bytes[..length])?;
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
