//! @file main.rs
//! @brief Exercise the complete original dsr_msgs/LogAlarm with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use doosan::ros1::doosan_ros1_aws_robot_complete::bounded_records::Ros1Dsr_msgsLogAlarm;
use roswasm::typed::Canonical;
fn main() {
    let bytes = Ros1Dsr_msgsLogAlarm::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros1Dsr_msgsLogAlarm::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":{}}}",
        bytes.len()
    );
}
