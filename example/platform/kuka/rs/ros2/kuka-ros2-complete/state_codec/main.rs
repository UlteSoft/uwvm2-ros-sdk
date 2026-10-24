//! @file main.rs
//! @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use kuka::ros2::kuka_ros2_complete::bounded_records::Ros2Kuka_driver_interfacesMsgKssStatus;
use roswasm::typed::Canonical;
fn main() {
    let bytes = Ros2Kuka_driver_interfacesMsgKssStatus::default()
        .encode()
        .expect("complete encoding");
    let decoded =
        Ros2Kuka_driver_interfacesMsgKssStatus::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":{}}}",
        bytes.len()
    );
}
