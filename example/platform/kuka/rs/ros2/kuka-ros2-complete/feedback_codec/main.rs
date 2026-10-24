//! @file main.rs
//! @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use kuka::ros2::kuka_ros2_complete::bounded_records::Ros2Control_msgsActionFollowJointTrajectory_Feedback;
use roswasm::typed::Canonical;
fn main() {
    let bytes = Ros2Control_msgsActionFollowJointTrajectory_Feedback::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros2Control_msgsActionFollowJointTrajectory_Feedback::decode(&bytes)
        .expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":{}}}",
        bytes.len()
    );
}
