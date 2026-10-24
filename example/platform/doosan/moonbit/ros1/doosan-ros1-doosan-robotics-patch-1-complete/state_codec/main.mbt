/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs/RobotState through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Dsr_msgsRobotStateCodec::new()
    let value = @records.Ros1Dsr_msgsRobotState::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
