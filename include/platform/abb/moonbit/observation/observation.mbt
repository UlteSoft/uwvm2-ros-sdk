/// @file observation.mbt
/// @brief Preserve complete ABB ROS 2 observations in a genuine MoonBit guest.
/// @details Every function opens the caller's exact existing alias, performs one
/// request or a bounded sequence of idle topic polls, and retires its owner once.
/// Transport, decoding, controller refusal and cleanup remain separate facts.
/// No timer, executor, permission, native connection or request replay is added.

///|
/// @brief Own a whole typed response and its independent operation outcomes.
/// @details A present value may describe controller refusal. Full canonical
/// bytes survive close. Unknown ABI status values and full uint64 required sizes
/// remain exact. Fatal traps require retirement by the owning runtime Instance.
pub(all) struct Observation[T] {
  mut primary : Int32
  mut cleanup : Int32
  mut cleanup_present : Bool
  mut rpc : @linear.Reply?
  mut value : T?
  mut wire : Bytes
}

///|
/// @brief Allocate an empty observation before any external effect.
/// @return Owned result with no acquired owner, transport reply or typed value.
fn[T] Observation::new() -> Observation[T] {
  {
    primary: 0,
    cleanup: 0,
    cleanup_present: false,
    rpc: None,
    value: None,
    wire: b"",
  }
}

///|
/// @brief Preserve primary failure precedence over an independent close failure.
/// @param self Borrowed complete observation; no native operation occurs.
/// @return Full operation status, zero only when primary and cleanup succeeded.
pub fn[T] Observation::status(self : Observation[T]) -> Int32 {
  if self.primary != 0 {
    self.primary
  } else {
    self.cleanup
  }
}

///|
/// @brief Perform one whole service observation or bounded topic subscription.
/// @param alias Existing exact operation/type alias, borrowed synchronously.
/// @param input Whole canonical request; never clipped or resent.
/// @param maximum Exact selected complete response wire ceiling.
/// @param topic True selects subscribe/poll; false selects ServiceCall.
/// @param decode Strict complete-value decoder without native effects.
/// @param accepted Pure predicate over an already complete typed response.
/// @param attempts Poll budget in [1,250]; service reads require one.
/// @return Whole typed value and original independent transport/close evidence.
/// @details The Session reserves its owner ledger before capability admission.
/// Only idle status 11 permits another poll on the same subscription owner.
fn[T] receive(
  alias : String,
  input : Bytes,
  maximum : Int32,
  topic : Bool,
  decode : (Bytes) -> Result[T, Int32],
  accepted : (T) -> Bool,
  attempts : Int32,
) -> Observation[T] {
  let result : Observation[T] = Observation::new()
  if attempts < 1 || attempts > 250 || (!topic && attempts != 1) {
    result.primary = 22
    return result
  }
  let session = match @ros.new_session() {
    Ok(value) => value
    Err(code) => {
      result.primary = code
      return result
    }
  }
  let node = match session.node("abb_observation") {
    Ok(value) => value
    Err(code) => {
      result.primary = code
      return result
    }
  }
  let operation = if topic { @ros.TopicSubscribe } else { @ros.ServiceCall }
  let owner = match node.open(alias, operation) {
    Ok(value) => value
    Err(code) => {
      result.primary = code
      return result
    }
  }
  if topic {
    result.primary = owner.activate()
  }
  if result.primary == 0 {
    let mut reply = if topic {
      owner.poll(maximum)
    } else {
      owner.request(input, maximum)
    }
    for index = 1
        topic && index < attempts && reply.code == 11
        index = index + 1 {
      result.primary = pause_for_sample()
      if result.primary != 0 {
        break
      }
      reply = owner.poll(maximum)
    }
    result.rpc = Some(reply)
    if result.primary == 0 {
      result.primary = reply.code
    }
    if result.primary == 0 {
      match decode(reply.data) {
        Ok(value) => {
          result.value = Some(value)
          result.wire = reply.data
          if !accepted(value) {
            result.primary = 5
          }
        }
        Err(code) => result.primary = code
      }
    }
  }
  result.cleanup_present = true
  result.cleanup = owner.close()
  result
}

///|
/// @brief Read the full RAPID speed ratio without changing any override.
/// @param alias Existing GetSpeedRatio service capability alias.
/// @return Entire speed_ratio, result_code, message and independent failures.
/// @details Controller success requires result_code 1 and speed_ratio <= 100.
pub fn read_speed(
  alias : String,
) -> Observation[@abb_ros2.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response] {
  receive(
    alias,
    b"",
    @abb_ros2.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::max_wire_bytes(),
    false,
    @abb_ros2.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::decode,
    fn(value) { value.result_code == 1U && value.speed_ratio <= 100U },
    1,
  )
}

///|
/// @brief Read a complete IO signal response without writing its value.
/// @param alias Existing GetIOSignal service capability alias.
/// @param signal Nonempty strict UTF-8 source signal name within 512 bytes.
/// @return Entire value, result_code, message and independent operation evidence.
/// @details Invalid local input is refused with 22 before acquiring an owner.
pub fn read_io(
  alias : String,
  signal : String,
) -> Observation[@abb_ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Response] {
  let request : @abb_ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Request = { signal, }
  let input = match request.encode() {
    Ok(value) => value
    Err(_) => {
      let result : Observation[
        @abb_ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Response,
      ] = Observation::new()
      result.primary = 22
      return result
    }
  }
  if signal.length() == 0 {
    let result : Observation[
      @abb_ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Response,
    ] = Observation::new()
    result.primary = 22
    return result
  }
  receive(
    alias,
    input,
    @abb_ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Response::max_wire_bytes(),
    false,
    @abb_ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Response::decode,
    fn(value) { value.result_code == 1U },
    1,
  )
}

///|
/// @brief Subscribe and read the entire original SystemState sample once.
/// @param alias Existing exact SystemState subscription capability alias.
/// @return Whole header, flags, task/unit arrays or the unchanged idle status 11.
/// @details The finite one-shot owner is closed on every normal return path.
pub fn read_system_state(
  alias : String,
) -> Observation[@abb_ros2.Ros2Abb_robot_msgsMsgSystemState] {
  wait_system_state(alias, 1)
}

///|
/// @brief Retain one subscription for bounded caller-selected idle polling.
/// @param alias Existing SystemState subscription alias.
/// @param attempts Poll budget in [1,250], including the immediate first poll.
/// @return Whole state plus exact final-poll, primary and cleanup facts.
/// @details A real monotonic WASI event waits 20 ms only between idle polls.
pub fn wait_system_state(
  alias : String,
  attempts : Int32,
) -> Observation[@abb_ros2.Ros2Abb_robot_msgsMsgSystemState] {
  receive(
    alias,
    b"",
    @abb_ros2.Ros2Abb_robot_msgsMsgSystemState::max_wire_bytes(),
    true,
    @abb_ros2.Ros2Abb_robot_msgsMsgSystemState::decode,
    fn(_) { true },
    attempts,
  )
}
