/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs/GetRobotStateResponse through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Dsr_msgsGetRobotStateResponseCodec::new()
    let value = @records.Ros1Dsr_msgsGetRobotStateResponse::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
