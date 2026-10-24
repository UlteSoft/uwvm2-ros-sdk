//! @file main.rs
//! @brief Exercise the complete original dsr_msgs/GetRobotStateResponse with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use doosan::ros1::doosan_ros1_noetic_devel_complete::bounded_records::Ros1Dsr_msgsGetRobotStateResponse;
use roswasm::typed::Canonical;
fn main() {
    let bytes = Ros1Dsr_msgsGetRobotStateResponse::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros1Dsr_msgsGetRobotStateResponse::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":{}}}",
        bytes.len()
    );
}
