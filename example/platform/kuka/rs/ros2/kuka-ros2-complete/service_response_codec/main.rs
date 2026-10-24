//! @file main.rs
//! @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use kuka::ros2::kuka_ros2_complete::bounded_records::Ros2Lifecycle_msgsSrvChangeState_Response;
use roswasm::typed::Canonical;
fn main() {
    let bytes = Ros2Lifecycle_msgsSrvChangeState_Response::default()
        .encode()
        .expect("complete encoding");
    let decoded =
        Ros2Lifecycle_msgsSrvChangeState_Response::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":{}}}",
        bytes.len()
    );
}
