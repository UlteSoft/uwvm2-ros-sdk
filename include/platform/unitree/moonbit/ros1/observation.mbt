/// @file observation.mbt
/// @brief Observe every original Unitree ROS 1 field without projection.
/// @details Values own all decoded storage. Each successful open closes once
/// on ordinary paths; fatal traps require outer instance retirement.

///|
/// @brief Receive one complete original HighState record.
/// @param capability_alias Borrowed exact-type granted UTF-8 alias.
/// @param attempts Finite poll budget 1..250, including the first poll.
/// @param pause Caller-controlled synchronous wait, used only after idle 11.
/// @return Owned whole value and original unsigned RPC/length/cleanup facts.
/// @details No capacity replay, backend fallback or hidden callback occurs.
pub fn wait_motion_state(
  capability_alias : String,
  attempts : Int32,
  pause : () -> Int32,
) -> @command.Observation[Ros1Unitree_legged_msgsHighState] {
  @command.receive(
    capability_alias,
    Ros1Unitree_legged_msgsHighState::max_wire_bytes(),
    Ros1Unitree_legged_msgsHighState::decode,
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
) -> @command.Observation[Ros1Unitree_legged_msgsLowState] {
  @command.receive(
    capability_alias,
    Ros1Unitree_legged_msgsLowState::max_wire_bytes(),
    Ros1Unitree_legged_msgsLowState::decode,
    fn(value) {
      value.encode()
    },
    attempts,
    pause,
  )
}

///|
/// @brief Receive one complete original MotorState record.
/// @param capability_alias Borrowed exact-type granted UTF-8 alias.
/// @param attempts Finite poll budget 1..250, including the first poll.
/// @param pause Caller-controlled synchronous wait, used only after idle 11.
/// @return Owned whole value and original unsigned RPC/length/cleanup facts.
/// @details No capacity replay, backend fallback or hidden callback occurs.
pub fn wait_motor_state(
  capability_alias : String,
  attempts : Int32,
  pause : () -> Int32,
) -> @command.Observation[Ros1Unitree_legged_msgsMotorState] {
  @command.receive(
    capability_alias,
    Ros1Unitree_legged_msgsMotorState::max_wire_bytes(),
    Ros1Unitree_legged_msgsMotorState::decode,
    fn(value) {
      value.encode()
    },
    attempts,
    pause,
  )
}
