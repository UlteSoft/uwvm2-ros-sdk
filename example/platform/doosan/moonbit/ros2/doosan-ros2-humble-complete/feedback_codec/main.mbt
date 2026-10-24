/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec::new()
    let value = @records.Ros2Dsr_msgs2ActionJogH2r_Feedback::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
