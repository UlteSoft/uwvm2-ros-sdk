/// @file main.mbt
/// @brief Observe the complete original ABB system_state result once.
/// @details Build this directory with ordinary xmake. The genuine MoonBit
/// producer emits a WASI Preview 1 command importing the actual ROS ABI.
/// Exact alias/type/QoS rights come from the separately configured native host.

///|
/// @brief Validate the finite WASI command arguments and report the whole result.
/// @details Usage includes the executable name and exactly 1 user arguments.
/// Invalid local input exits 22 before any ROS capability acquisition. A service
/// request is never replayed. Only idle topic polls may wait within one owner.
pub fn command_start() -> Unit {
  let arguments = match @abb.read_arguments() {
    Ok(value) => value
    Err(_) => {
      @abb.exit(22)
      return
    }
  }
  if arguments.length() != 2 {
    @abb.exit(22)
    return
  }
  let result = @abb.wait_system_state(arguments[1], 250)
  @abb.exit(@abb.output_observation(result))
}

///|
/// @brief Enter the command through MoonBit's genuine WASI initialization wrapper.
/// @details The pinned linker exports exactly one _start function for main.
fn main {
  command_start()
}
