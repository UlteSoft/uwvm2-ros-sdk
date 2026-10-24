//! @file main.rs
//! @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use roswasm::typed::Canonical;
use universal_robots::ros1::universal_robots_ros1_trajectory_complete::bounded_records::Ros1Control_msgsFollowJointTrajectoryFeedback;
fn main() {
    let bytes = Ros1Control_msgsFollowJointTrajectoryFeedback::default()
        .encode()
        .expect("complete encoding");
    let decoded =
        Ros1Control_msgsFollowJointTrajectoryFeedback::decode(&bytes).expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":{}}}",
        bytes.len()
    );
}
