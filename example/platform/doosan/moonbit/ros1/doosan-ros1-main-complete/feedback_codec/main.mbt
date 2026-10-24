/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs/AlterMotionStream through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Dsr_msgsAlterMotionStreamCodec::new()
    let value = @records.Ros1Dsr_msgsAlterMotionStream::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
