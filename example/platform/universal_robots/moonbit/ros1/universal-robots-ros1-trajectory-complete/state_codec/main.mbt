/// @file main.mbt
/// @brief Exercise the complete original ur_msgs/IOStates through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros1Ur_msgsIOStatesCodec::new()
    let value = @records.Ros1Ur_msgsIOStates::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"ur_msgs/IOStates\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
