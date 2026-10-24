/// @details Construct the complete original record with its declared defaults,
/// encode it through the shared bounded codec, and require decoding to succeed.
/// This value example disables ROS; it does not establish native transport or
/// exhaustive field-value coverage. Encoding or decoding errors terminate it.
/// @file main.mbt
/// @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec::new()
    let value = @records.Ros2Control_msgsActionFollowJointTrajectory_Feedback::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \{code}")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":\{bytes.length()}}")
        Err(code) => abort("whole record decode error \{code}")
    }
}
