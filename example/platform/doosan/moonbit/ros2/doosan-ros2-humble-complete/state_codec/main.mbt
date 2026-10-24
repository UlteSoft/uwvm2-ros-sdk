/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs2/msg/RobotState through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2Dsr_msgs2MsgRobotStateCodec::new()
    let value = @records.Ros2Dsr_msgs2MsgRobotState::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
