/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2Dsr_msgs2SrvGetRobotState_ResponseCodec::new()
    let value = @records.Ros2Dsr_msgs2SrvGetRobotState_Response::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
