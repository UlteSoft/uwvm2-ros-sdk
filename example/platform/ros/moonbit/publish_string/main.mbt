/// @file main.mbt
/// @brief Execute complete ros2 publish_string with the genuine MoonBit compiler.
/// @details MoonBit owns original fields, exact ABI status/length and explicit cleanup.
fn main {
  let facts = @native_ros.run(1, "sample")
  @native_ros.exit(@native_ros.report(facts))
}
