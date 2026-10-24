/// @file main.mbt
/// @brief Exercise the complete original dsr_msgs/LogAlarm through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Dsr_msgsLogAlarmCodec::new()
    let value = @records.Ros1Dsr_msgsLogAlarm::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
