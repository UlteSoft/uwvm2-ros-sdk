/// @file main.mbt
/// @brief Execute complete ros1 subscribe_string with the genuine MoonBit compiler.
/// @details MoonBit owns original fields, exact ABI status/length and explicit cleanup.
fn main {
  let facts = @native_ros.run(2, "sample")
  @native_ros.exit(@native_ros.report(facts))
}
