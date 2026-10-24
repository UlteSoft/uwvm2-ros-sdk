//! @brief Decode and validate a complete original value using genuine Rust.
extern crate kinova_records as records;
use roswasm::typed::Canonical;
use std::io::Read;
fn main() {
    let mut raw = Vec::new();
    std::io::stdin()
        .take(1405)
        .read_to_end(&mut raw)
        .expect("stdin failure");
    let value = records::Ros2Sensor_msgsMsgJointState::decode(&raw).unwrap_or_else(|error| {
        eprintln!("{error:?}");
        std::process::exit(22)
    });
    let bytes = value.encode().unwrap_or_else(|error| {
        eprintln!("{error:?}");
        std::process::exit(22)
    });
    for byte in bytes {
        print!("{byte:02x}");
    }
    println!();
}
