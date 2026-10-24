//! @file main.rs
//! @brief Exercise the complete original urinterfaces/msg/RobotMode with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use roswasm::typed::Canonical;
use universal_robots::ros2::universal_robots_polyscopex_complete::bounded_records::Ros2UrinterfacesMsgRobotMode;
fn main() {
    let bytes = Ros2UrinterfacesMsgRobotMode::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros2UrinterfacesMsgRobotMode::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":{}}}",
        bytes.len()
    );
}
