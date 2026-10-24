/// @file main.mbt
/// @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Ur_dashboard_msgsAddToLogResponseCodec::new()
    let value = @records.Ros1Ur_dashboard_msgsAddToLogResponse::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
