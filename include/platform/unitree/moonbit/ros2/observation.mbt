/// @file observation.mbt
/// @brief Observe every original Unitree ROS 2 field without projection.
/// @details Values own all decoded storage. Each successful open closes once
/// on ordinary paths; fatal traps require outer instance retirement.

///|
/// @brief Receive one complete original SportModeState record.
/// @param capability_alias Borrowed exact-type granted UTF-8 alias.
/// @param attempts Finite poll budget 1..250, including the first poll.
/// @param pause Caller-controlled synchronous wait, used only after idle 11.
/// @return Owned whole value and original unsigned RPC/length/cleanup facts.
/// @details No capacity replay, backend fallback or hidden callback occurs.
pub fn wait_motion_state(
  capability_alias : String,
  attempts : Int32,
  pause : () -> Int32,
) -> @command.Observation[Ros2Unitree_goMsgSportModeState] {
  @command.receive(
    capability_alias,
    Ros2Unitree_goMsgSportModeState::max_wire_bytes(),
    Ros2Unitree_goMsgSportModeState::decode,
    fn(value) {
      value.encode()
    },
    attempts,
    pause,
  )
}

///|
/// @brief Receive one complete original LowState record.
/// @param capability_alias Borrowed exact-type granted UTF-8 alias.
/// @param attempts Finite poll budget 1..250, including the first poll.
/// @param pause Caller-controlled synchronous wait, used only after idle 11.
/// @return Owned whole value and original unsigned RPC/length/cleanup facts.
/// @details No capacity replay, backend fallback or hidden callback occurs.
pub fn wait_low_state(
  capability_alias : String,
  attempts : Int32,
  pause : () -> Int32,
) -> @command.Observation[Ros2Unitree_goMsgLowState] {
  @command.receive(
    capability_alias,
    Ros2Unitree_goMsgLowState::max_wire_bytes(),
    Ros2Unitree_goMsgLowState::decode,
    fn(value) {
      value.encode()
    },
    attempts,
    pause,
  )
}

///|
/// @brief Receive one complete original WirelessController record.
/// @param capability_alias Borrowed exact-type granted UTF-8 alias.
/// @param attempts Finite poll budget 1..250, including the first poll.
/// @param pause Caller-controlled synchronous wait, used only after idle 11.
/// @return Owned whole value and original unsigned RPC/length/cleanup facts.
/// @details No capacity replay, backend fallback or hidden callback occurs.
pub fn wait_wireless_controller(
  capability_alias : String,
  attempts : Int32,
  pause : () -> Int32,
) -> @command.Observation[Ros2Unitree_goMsgWirelessController] {
  @command.receive(
    capability_alias,
    Ros2Unitree_goMsgWirelessController::max_wire_bytes(),
    Ros2Unitree_goMsgWirelessController::decode,
    fn(value) {
      value.encode()
    },
    attempts,
    pause,
  )
}
