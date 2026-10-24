/// @file main.mbt
/// @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Ur_dashboard_msgsSetModeFeedbackCodec::new()
    let value = @records.Ros1Ur_dashboard_msgsSetModeFeedback::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
