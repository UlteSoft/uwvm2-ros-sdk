/// @file main.mbt
/// @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response through genuine MoonBit compilation.
fn main {
    let codec = @records.Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec::new()
    let value = @records.Ros2UrinterfacesSrvSetAnalogOutput_Response::new()
    let bytes = match codec.encode(value) {
        Ok(bytes) => bytes
        Err(code) => abort("whole record encode error \(code)")
    }
    match codec.decode(bytes) {
        Ok(_) => println("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":\(bytes.length())}")
        Err(code) => abort("whole record decode error \(code)")
    }
}
