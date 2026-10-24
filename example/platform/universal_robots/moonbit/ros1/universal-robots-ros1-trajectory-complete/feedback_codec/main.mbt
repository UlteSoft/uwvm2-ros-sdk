/// @file main.mbt
/// @brief Encode and decode the complete original control_msgs/FollowJointTrajectoryFeedback value.
/// @details Construct every declared member with its original default.
/// Both error branches terminate before a successful value observation.
/// This local-value lesson enables no ROS resources; complete field and
/// malformed-input regressions belong to the separate VM test suite.
fn main {
    let codec = @records.Ros1Control_msgsFollowJointTrajectoryFeedbackCodec::new()
    let value = @records.Ros1Control_msgsFollowJointTrajectoryFeedback::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \{code}")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":\{bytes.length()}}")
        Err(code) => abort("whole record decode error \{code}")
    }
}
