//! @file main.rs
//! @brief Exercise the complete original dsr_msgs2/msg/RobotState with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use doosan::ros2::doosan_ros2_jazzy_complete::bounded_records::Ros2Dsr_msgs2MsgRobotState;
use roswasm::typed::Canonical;
fn main() {
    let bytes = Ros2Dsr_msgs2MsgRobotState::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros2Dsr_msgs2MsgRobotState::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":{}}}",
        bytes.len()
    );
}
