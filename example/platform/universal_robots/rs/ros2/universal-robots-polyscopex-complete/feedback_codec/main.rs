//! @file main.rs
//! @brief Exercise the complete original urinterfaces/action/SetMode_Feedback with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use roswasm::typed::Canonical;
use universal_robots::ros2::universal_robots_polyscopex_complete::bounded_records::Ros2UrinterfacesActionSetMode_Feedback;
fn main() {
    let bytes = Ros2UrinterfacesActionSetMode_Feedback::default()
        .encode()
        .expect("complete encoding");
    let decoded =
        Ros2UrinterfacesActionSetMode_Feedback::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":{}}}",
        bytes.len()
    );
}
