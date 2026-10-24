//! @file main.rs
//! @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use roswasm::typed::Canonical;
use universal_robots::ros2::universal_robots_ros2_trajectory_complete::bounded_records::Ros2Ur_dashboard_msgsSrvAddToLog_Response;
fn main() {
    let bytes = Ros2Ur_dashboard_msgsSrvAddToLog_Response::default()
        .encode()
        .expect("complete encoding");
    let decoded =
        Ros2Ur_dashboard_msgsSrvAddToLog_Response::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":{}}}",
        bytes.len()
    );
}
