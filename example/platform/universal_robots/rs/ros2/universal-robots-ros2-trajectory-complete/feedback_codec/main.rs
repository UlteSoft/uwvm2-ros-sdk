//! @file main.rs
//! @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback with genuine Rust values.
//! @details Fixture defaults have no native-state meaning and create no authority.
use roswasm::typed::Canonical;
use universal_robots::ros2::universal_robots_ros2_trajectory_complete::bounded_records::Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback;
fn main() {
    let bytes = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback::default()
        .encode()
        .expect("complete encoding");
    let decoded = Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback::decode(&bytes)
        .expect("complete decoding");
    assert_eq!(decoded.encode().expect("complete reencoding"), bytes);
    println!(
        "{{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":{}}}",
        bytes.len()
    );
}
