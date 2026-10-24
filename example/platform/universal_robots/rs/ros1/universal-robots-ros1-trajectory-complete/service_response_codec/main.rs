//! @file main.rs
//! @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use roswasm::typed::Canonical;
use universal_robots::ros1::universal_robots_ros1_trajectory_complete::bounded_records::Ros1Ur_dashboard_msgsAddToLogResponse;
fn main() {
    let bytes = Ros1Ur_dashboard_msgsAddToLogResponse::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros1Ur_dashboard_msgsAddToLogResponse::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":{}}}",
        bytes.len()
    );
}
