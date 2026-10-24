/// @file main.mbt
/// @brief Exercise the complete original urinterfaces/action/SetMode_Feedback through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2UrinterfacesActionSetMode_FeedbackCodec::new()
    let value = @records.Ros2UrinterfacesActionSetMode_Feedback::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
