/// @file main.mbt
/// @brief Encode and decode the complete original ur_msgs/IOStates value.
/// @details Construct every declared member with its original default.
/// Both error branches terminate before a successful value observation.
/// This local-value lesson enables no ROS resources; complete field and
/// malformed-input regressions belong to the separate VM test suite.
fn main {
    let codec = @records.Ros1Ur_msgsIOStatesCodec::new()
    let value = @records.Ros1Ur_msgsIOStates::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \{code}")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"ur_msgs/IOStates\",\"bytes\":\{bytes.length()}}")
        Err(code) => abort("whole record decode error \{code}")
    }
}
