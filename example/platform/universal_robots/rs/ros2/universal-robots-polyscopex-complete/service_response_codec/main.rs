//! @file main.rs
//! @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use roswasm::typed::Canonical;
use universal_robots::ros2::universal_robots_polyscopex_complete::bounded_records::Ros2UrinterfacesSrvSetAnalogOutput_Response;
fn main() {
    let bytes = Ros2UrinterfacesSrvSetAnalogOutput_Response::default()
        .encode()
        .expect("complete encoding");
    let decoded =
        Ros2UrinterfacesSrvSetAnalogOutput_Response::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":{}}}",
        bytes.len()
    );
}
