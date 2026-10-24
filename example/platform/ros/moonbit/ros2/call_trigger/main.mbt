/// @file main.mbt
/// @brief Execute complete ros2 call_trigger with the genuine MoonBit compiler.
/// @details MoonBit owns original fields, exact ABI status/length and explicit cleanup.
fn main {
  let facts = @native_ros.run(3, "sample")
  @native_ros.exit(@native_ros.report(facts))
}
