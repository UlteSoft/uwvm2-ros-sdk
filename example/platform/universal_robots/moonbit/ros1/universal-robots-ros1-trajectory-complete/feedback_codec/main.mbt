/// @file main.mbt
/// @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Control_msgsFollowJointTrajectoryFeedbackCodec::new()
    let value = @records.Ros1Control_msgsFollowJointTrajectoryFeedback::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
