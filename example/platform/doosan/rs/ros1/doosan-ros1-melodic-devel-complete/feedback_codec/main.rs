//! @file main.rs
//! @brief Exercise the complete original dsr_msgs/AlterMotionStream with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use doosan::ros1::doosan_ros1_melodic_devel_complete::bounded_records::Ros1Dsr_msgsAlterMotionStream;
use roswasm::typed::Canonical;
fn main() {
    let bytes = Ros1Dsr_msgsAlterMotionStream::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros1Dsr_msgsAlterMotionStream::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":{}}}",
        bytes.len()
    );
}
