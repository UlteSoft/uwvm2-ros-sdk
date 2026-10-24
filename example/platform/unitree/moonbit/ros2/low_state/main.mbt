/// @file main.mbt
/// @brief Observe the entire original ROS 2 LowState through the genuine moonbit guest.
/// @details Preserve every typed field, original status and full-width length.
/// The process status selects primary, cleanup or output failure, capped at 125.
fn main {
  // Refuse malformed WASI arguments before any native owner can be acquired.
  let args = match @command.read_arguments() {
    Ok(value) => value
    Err(code) => {
      @command.exit(code)
      return
    }
  }
  if args.length() != 2 {
    @command.exit(22)
    return
  }

  // Only idle permits the 20 ms pause within the finite 250-poll budget.
  let result = @unitree.wait_low_state(
    args[1],
    250,
    @command.pause_for_sample,
  )

  // Emit all independent facts after close, then use the checked process status.
  let status = @command.output_observation(result)
  @command.exit(status)
}
