/// @file main.mbt
/// @brief Exercise the complete original urinterfaces/msg/RobotMode through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2UrinterfacesMsgRobotModeCodec::new()
    let value = @records.Ros2UrinterfacesMsgRobotMode::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
