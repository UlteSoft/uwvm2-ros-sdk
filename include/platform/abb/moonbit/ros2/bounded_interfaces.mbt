/// @file bounded_interfaces.mbt
/// @brief Use every complete ABB interface through explicit typed calls.
/// @details Callers acquire exact existing aliases through the selected ROS Session. These typed
/// adapters borrow owners, preserve the original RPC reply, validate entire canonical values, and never
/// grant authority, retry requests or hide cleanup outcomes.

///|
/// @brief Preserve typed decoding independently from the complete transport reply.
pub(all) struct Typed[T] {
  primary : Int32
  rpc : @linear.Reply?
  value : T?
  id : UInt64
  kind : Int32
}

///|
/// @brief Refuse local malformed input without fabricating a transport attempt.
fn[T] typed_failure(code : Int32) -> Typed[T] {
  { primary: code, rpc: None, value: None, id: 0UL, kind: 0, }
}

///|
/// @brief Decode one complete successful transport reply without dropping its envelope.
fn[T] typed_reply(
  reply : @linear.Reply,
  decode : (Bytes) -> Result[T, Int32],
) -> Typed[T] {
  if reply.code != 0 {
    return {
      primary: reply.code,
      rpc: Some(reply),
      value: None,
      id: 0UL,
      kind: 0,
    }
  }
  match decode(reply.data) {
    Ok(value) =>
      { primary: 0, rpc: Some(reply), value: Some(value), id: 0UL, kind: 0, }
    Err(code) =>
      { primary: code, rpc: Some(reply), value: None, id: 0UL, kind: 0, }
  }
}

///|
/// @brief Decode an ID-prefixed incoming complete service request or action goal.
fn[T] typed_envelope(
  reply : @linear.Reply,
  decode : (Bytes) -> Result[T, Int32],
) -> Typed[T] {
  if reply.code != 0 {
    return {
      primary: reply.code,
      rpc: Some(reply),
      value: None,
      id: 0UL,
      kind: 0,
    }
  }
  if reply.data.length() < 8 {
    return { primary: 22, rpc: Some(reply), value: None, id: 0UL, kind: 0, }
  }
  let id = match @wire.read_u64(reply.data[0:8].to_owned()) {
    Ok(value) => value
    Err(_) => 0UL
  }
  if id == 0UL {
    return { primary: 22, rpc: Some(reply), value: None, id, kind: 0, }
  }
  match decode(reply.data[8:].to_owned()) {
    Ok(value) =>
      { primary: 0, rpc: Some(reply), value: Some(value), id, kind: 0, }
    Err(code) => { primary: code, rpc: Some(reply), value: None, id, kind: 0, }
  }
}

///|
/// @brief Publish the entire original abb_egm_msgs/msg/EGMChannelState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::publish(
  self : Ros2Abb_egm_msgsMsgEGMChannelState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_egm_msgs/msg/EGMChannelState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_egm_msgsMsgEGMChannelState] {
  typed_reply(owner.poll(81), Ros2Abb_egm_msgsMsgEGMChannelState::decode)
}

///|
/// @brief Publish the entire original abb_egm_msgs/msg/EGMState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_egm_msgsMsgEGMState::publish(
  self : Ros2Abb_egm_msgsMsgEGMState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_egm_msgs/msg/EGMState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_egm_msgsMsgEGMState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_egm_msgsMsgEGMState] {
  typed_reply(owner.poll(1376), Ros2Abb_egm_msgsMsgEGMState::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/ConfData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgConfData::publish(
  self : Ros2Abb_rapid_msgsMsgConfData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/ConfData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgConfData::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgConfData] {
  typed_reply(owner.poll(16), Ros2Abb_rapid_msgsMsgConfData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/ExtJoint value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgExtJoint::publish(
  self : Ros2Abb_rapid_msgsMsgExtJoint,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/ExtJoint value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgExtJoint::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgExtJoint] {
  typed_reply(owner.poll(24), Ros2Abb_rapid_msgsMsgExtJoint::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/JointTarget value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgJointTarget::publish(
  self : Ros2Abb_rapid_msgsMsgJointTarget,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/JointTarget value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgJointTarget::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgJointTarget] {
  typed_reply(owner.poll(48), Ros2Abb_rapid_msgsMsgJointTarget::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/LoadData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgLoadData::publish(
  self : Ros2Abb_rapid_msgsMsgLoadData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/LoadData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgLoadData::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgLoadData] {
  typed_reply(owner.poll(44), Ros2Abb_rapid_msgsMsgLoadData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/Orient value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgOrient::publish(
  self : Ros2Abb_rapid_msgsMsgOrient,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/Orient value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgOrient::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgOrient] {
  typed_reply(owner.poll(16), Ros2Abb_rapid_msgsMsgOrient::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/Pos value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgPos::publish(
  self : Ros2Abb_rapid_msgsMsgPos,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/Pos value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgPos::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgPos] {
  typed_reply(owner.poll(12), Ros2Abb_rapid_msgsMsgPos::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/Pose value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgPose::publish(
  self : Ros2Abb_rapid_msgsMsgPose,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/Pose value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgPose::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgPose] {
  typed_reply(owner.poll(28), Ros2Abb_rapid_msgsMsgPose::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/RobJoint value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgRobJoint::publish(
  self : Ros2Abb_rapid_msgsMsgRobJoint,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/RobJoint value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgRobJoint::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgRobJoint] {
  typed_reply(owner.poll(24), Ros2Abb_rapid_msgsMsgRobJoint::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/RobTarget value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgRobTarget::publish(
  self : Ros2Abb_rapid_msgsMsgRobTarget,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/RobTarget value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgRobTarget::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgRobTarget] {
  typed_reply(owner.poll(68), Ros2Abb_rapid_msgsMsgRobTarget::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/ToolData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgToolData::publish(
  self : Ros2Abb_rapid_msgsMsgToolData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/ToolData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgToolData::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgToolData] {
  typed_reply(owner.poll(73), Ros2Abb_rapid_msgsMsgToolData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/msg/WObjData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_msgsMsgWObjData::publish(
  self : Ros2Abb_rapid_msgsMsgWObjData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/msg/WObjData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_msgsMsgWObjData::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_msgsMsgWObjData] {
  typed_reply(owner.poll(574), Ros2Abb_rapid_msgsMsgWObjData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::publish(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings] {
  typed_reply(
    owner.poll(716),
    Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::publish(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings] {
  typed_reply(
    owner.poll(40),
    Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/msg/EGMSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::publish(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/msg/EGMSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings] {
  typed_reply(
    owner.poll(767),
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::publish(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings] {
  typed_reply(
    owner.poll(5),
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::publish(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings] {
  typed_reply(
    owner.poll(4),
    Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/msg/RuntimeState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::publish(
  self : Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/msg/RuntimeState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState] {
  typed_reply(
    owner.poll(8368),
    Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/msg/StateMachineState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::publish(
  self : Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/msg/StateMachineState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState] {
  typed_reply(
    owner.poll(518),
    Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::decode,
  )
}

///|
/// @brief Call original abb_rapid_sm_addin_msgs/srv/GetEGMSettings once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::call(
  self : Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1285),
    Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/srv/GetEGMSettings request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::submit(
  self : Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/srv/GetEGMSettings request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request] {
  typed_envelope(
    server.events.poll(76),
    Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/srv/GetEGMSettings response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::respond(
  self : Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_rapid_sm_addin_msgs/srv/SetEGMSettings once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::call(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/srv/SetEGMSettings request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::submit(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/srv/SetEGMSettings request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request] {
  typed_envelope(
    server.events.poll(843),
    Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/srv/SetEGMSettings response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::respond(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::call(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::submit(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request] {
  typed_envelope(
    server.events.poll(592),
    Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::respond(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_rapid_sm_addin_msgs/srv/SetSGCommand once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::call(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/srv/SetSGCommand request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::submit(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/srv/SetSGCommand request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request] {
  typed_envelope(
    server.events.poll(81),
    Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/srv/SetSGCommand response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::respond(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Publish the entire original abb_robot_msgs/msg/MechanicalUnitState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_robot_msgsMsgMechanicalUnitState::publish(
  self : Ros2Abb_robot_msgsMsgMechanicalUnitState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/msg/MechanicalUnitState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_robot_msgsMsgMechanicalUnitState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsMsgMechanicalUnitState] {
  typed_reply(owner.poll(69), Ros2Abb_robot_msgsMsgMechanicalUnitState::decode)
}

///|
/// @brief Publish the entire original abb_robot_msgs/msg/RAPIDSymbolPath value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::publish(
  self : Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/msg/RAPIDSymbolPath value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsMsgRAPIDSymbolPath] {
  typed_reply(owner.poll(204), Ros2Abb_robot_msgsMsgRAPIDSymbolPath::decode)
}

///|
/// @brief Publish the entire original abb_robot_msgs/msg/RAPIDTaskState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::publish(
  self : Ros2Abb_robot_msgsMsgRAPIDTaskState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/msg/RAPIDTaskState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsMsgRAPIDTaskState] {
  typed_reply(owner.poll(71), Ros2Abb_robot_msgsMsgRAPIDTaskState::decode)
}

///|
/// @brief Publish the entire original abb_robot_msgs/msg/ServiceResponses value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::publish(
  self : Ros2Abb_robot_msgsMsgServiceResponses,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/msg/ServiceResponses value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsMsgServiceResponses] {
  typed_reply(owner.poll(0), Ros2Abb_robot_msgsMsgServiceResponses::decode)
}

///|
/// @brief Publish the entire original abb_robot_msgs/msg/SystemState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Abb_robot_msgsMsgSystemState::publish(
  self : Ros2Abb_robot_msgsMsgSystemState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/msg/SystemState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Abb_robot_msgsMsgSystemState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsMsgSystemState] {
  typed_reply(owner.poll(2327), Ros2Abb_robot_msgsMsgSystemState::decode)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetFileContents once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::call(
  self : Ros2Abb_robot_msgsSrvGetFileContents_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetFileContents_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 4618),
    Ros2Abb_robot_msgsSrvGetFileContents_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetFileContents request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetFileContents_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetFileContents request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetFileContents_Request] {
  typed_envelope(
    server.events.poll(524),
    Ros2Abb_robot_msgsSrvGetFileContents_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetFileContents response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetFileContents_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetIOSignal once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::call(
  self : Ros2Abb_robot_msgsSrvGetIOSignal_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetIOSignal_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1034),
    Ros2Abb_robot_msgsSrvGetIOSignal_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetIOSignal request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetIOSignal_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetIOSignal request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetIOSignal_Request] {
  typed_envelope(
    server.events.poll(524),
    Ros2Abb_robot_msgsSrvGetIOSignal_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetIOSignal response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetIOSignal_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetRAPIDBool once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::call(
  self : Ros2Abb_robot_msgsSrvGetRAPIDBool_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDBool_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 519),
    Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetRAPIDBool request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetRAPIDBool_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetRAPIDBool request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDBool_Request] {
  typed_envelope(
    server.events.poll(212),
    Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetRAPIDBool response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetRAPIDBool_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetRAPIDDnum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::call(
  self : Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 526),
    Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetRAPIDDnum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetRAPIDDnum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request] {
  typed_envelope(
    server.events.poll(212),
    Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetRAPIDDnum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetRAPIDNum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::call(
  self : Ros2Abb_robot_msgsSrvGetRAPIDNum_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDNum_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 522),
    Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetRAPIDNum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetRAPIDNum_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetRAPIDNum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDNum_Request] {
  typed_envelope(
    server.events.poll(212),
    Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetRAPIDNum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetRAPIDNum_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetRAPIDString once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::call(
  self : Ros2Abb_robot_msgsSrvGetRAPIDString_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDString_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1034),
    Ros2Abb_robot_msgsSrvGetRAPIDString_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetRAPIDString request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetRAPIDString_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetRAPIDString request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDString_Request] {
  typed_envelope(
    server.events.poll(212),
    Ros2Abb_robot_msgsSrvGetRAPIDString_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetRAPIDString response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetRAPIDString_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetRAPIDSymbol once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::call(
  self : Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1034),
    Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetRAPIDSymbol request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetRAPIDSymbol request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request] {
  typed_envelope(
    server.events.poll(212),
    Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetRAPIDSymbol response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetRobotControllerDescription once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::call(
  self : Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 4618),
    Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetRobotControllerDescription request through explicit async
/// owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetRobotControllerDescription request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request] {
  typed_envelope(
    server.events.poll(8),
    Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetRobotControllerDescription response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/GetSpeedRatio once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::call(
  self : Ros2Abb_robot_msgsSrvGetSpeedRatio_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvGetSpeedRatio_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 519),
    Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/GetSpeedRatio request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::submit(
  self : Ros2Abb_robot_msgsSrvGetSpeedRatio_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/GetSpeedRatio request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvGetSpeedRatio_Request] {
  typed_envelope(
    server.events.poll(8),
    Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/GetSpeedRatio response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::respond(
  self : Ros2Abb_robot_msgsSrvGetSpeedRatio_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetFileContents once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::call(
  self : Ros2Abb_robot_msgsSrvSetFileContents_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetFileContents_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetFileContents_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetFileContents request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetFileContents_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetFileContents request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetFileContents_Request] {
  typed_envelope(
    server.events.poll(4624),
    Ros2Abb_robot_msgsSrvSetFileContents_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetFileContents response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetFileContents_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetIOSignal once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::call(
  self : Ros2Abb_robot_msgsSrvSetIOSignal_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetIOSignal_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetIOSignal_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetIOSignal request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetIOSignal_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetIOSignal request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetIOSignal_Request] {
  typed_envelope(
    server.events.poll(1040),
    Ros2Abb_robot_msgsSrvSetIOSignal_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetIOSignal response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetIOSignal_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetRAPIDBool once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::call(
  self : Ros2Abb_robot_msgsSrvSetRAPIDBool_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDBool_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetRAPIDBool request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetRAPIDBool_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetRAPIDBool request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDBool_Request] {
  typed_envelope(
    server.events.poll(213),
    Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetRAPIDBool response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetRAPIDBool_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetRAPIDDnum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::call(
  self : Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetRAPIDDnum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetRAPIDDnum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request] {
  typed_envelope(
    server.events.poll(220),
    Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetRAPIDDnum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetRAPIDNum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::call(
  self : Ros2Abb_robot_msgsSrvSetRAPIDNum_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDNum_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetRAPIDNum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetRAPIDNum_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetRAPIDNum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDNum_Request] {
  typed_envelope(
    server.events.poll(216),
    Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetRAPIDNum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetRAPIDNum_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetRAPIDString once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::call(
  self : Ros2Abb_robot_msgsSrvSetRAPIDString_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDString_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetRAPIDString_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetRAPIDString request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetRAPIDString_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetRAPIDString request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDString_Request] {
  typed_envelope(
    server.events.poll(728),
    Ros2Abb_robot_msgsSrvSetRAPIDString_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetRAPIDString response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetRAPIDString_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetRAPIDSymbol once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::call(
  self : Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetRAPIDSymbol request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetRAPIDSymbol request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request] {
  typed_envelope(
    server.events.poll(728),
    Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetRAPIDSymbol response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/SetSpeedRatio once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::call(
  self : Ros2Abb_robot_msgsSrvSetSpeedRatio_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvSetSpeedRatio_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/SetSpeedRatio request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::submit(
  self : Ros2Abb_robot_msgsSrvSetSpeedRatio_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/SetSpeedRatio request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvSetSpeedRatio_Request] {
  typed_envelope(
    server.events.poll(9),
    Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/SetSpeedRatio response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::respond(
  self : Ros2Abb_robot_msgsSrvSetSpeedRatio_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Call original abb_robot_msgs/srv/TriggerWithResultCode once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::call(
  self : Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/srv/TriggerWithResultCode request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::submit(
  self : Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming abb_robot_msgs/srv/TriggerWithResultCode request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request] {
  typed_envelope(
    server.events.poll(8),
    Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/srv/TriggerWithResultCode response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::respond(
  self : Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Publish the entire original builtin_interfaces/msg/Duration value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Builtin_interfacesMsgDuration::publish(
  self : Ros2Builtin_interfacesMsgDuration,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original builtin_interfaces/msg/Duration value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Builtin_interfacesMsgDuration::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Builtin_interfacesMsgDuration] {
  typed_reply(owner.poll(8), Ros2Builtin_interfacesMsgDuration::decode)
}

///|
/// @brief Publish the entire original builtin_interfaces/msg/Time value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Builtin_interfacesMsgTime::publish(
  self : Ros2Builtin_interfacesMsgTime,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original builtin_interfaces/msg/Time value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Builtin_interfacesMsgTime::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Builtin_interfacesMsgTime] {
  typed_reply(owner.poll(8), Ros2Builtin_interfacesMsgTime::decode)
}

///|
/// @brief Admit one complete original control_msgs/action/FollowJointTrajectory goal.
/// @param self Borrowed whole goal.
/// @param client Borrowed Session-owned ActionClient with reserved goal tracking.
/// @return Exact full-width nonzero goal ID or original status.
/// @details Goal tracking commits before constructing the public result; caller retains the owning
/// Session.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::send(
  self : Ros2Control_msgsActionFollowJointTrajectory_Goal,
  client : @ros.ActionClient,
) -> Result[UInt64, Int32] {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return Err(code)
  }
  client.send_goal(body)
}

///|
/// @brief Poll a complete incoming original control_msgs/action/FollowJointTrajectory goal.
/// @param server Borrowed acquired ActionServer.
/// @return Full UInt64 incoming ID, typed goal and original transport reply.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::poll_goal(
  server : @ros.ActionServer,
) -> Typed[Ros2Control_msgsActionFollowJointTrajectory_Goal] {
  typed_envelope(
    server.events.poll(20928),
    Ros2Control_msgsActionFollowJointTrajectory_Goal::decode,
  )
}

///|
/// @brief Receive complete matching-ID original control_msgs/action/FollowJointTrajectory feedback.
/// @param client Borrowed live tracked ActionClient.
/// @param id Exact previously admitted nonzero UInt64 goal identity.
/// @return Whole typed body, original reply, matching ID and terminal kind when applicable.
/// @details A malformed complete body does not retire the local tracked goal.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::receive(
  client : @ros.ActionClient,
  id : UInt64,
) -> Typed[Ros2Control_msgsActionFollowJointTrajectory_Feedback] {
  let checked = client.feedback_checked(id, 4136)
  let reply = checked.rpc
  if checked.status != 0 {
    return {
      primary: checked.status,
      rpc: Some(reply),
      value: None,
      id,
      kind: 0,
    }
  }
  if reply.data.length() < 8 {
    return { primary: 22, rpc: Some(reply), value: None, id, kind: 0, }
  }
  let kind = 0
  match
    Ros2Control_msgsActionFollowJointTrajectory_Feedback::decode(
      reply.data[8:].to_owned(),
    ) {
    Ok(value) => { primary: 0, rpc: Some(reply), value: Some(value), id, kind, }
    Err(code) => { primary: code, rpc: Some(reply), value: None, id, kind, }
  }
}

///|
/// @brief Respond with the full original control_msgs/action/FollowJointTrajectory feedback.
/// @param self Borrowed complete typed body.
/// @param server Borrowed acquired ActionServer.
/// @param id Exact live incoming UInt64 goal ID.
/// @return Original validation or native response status.
/// @details Feedback uses kind 1; terminal kinds never mean a physical stop guarantee.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::respond(
  self : Ros2Control_msgsActionFollowJointTrajectory_Feedback,
  server : @ros.ActionServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, 1, body)
}

///|
/// @brief Receive complete matching-ID original control_msgs/action/FollowJointTrajectory result.
/// @param client Borrowed live tracked ActionClient.
/// @param id Exact previously admitted nonzero UInt64 goal identity.
/// @return Whole typed body, original reply, matching ID and terminal kind when applicable.
/// @details A malformed complete body does not retire the local tracked goal.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::receive(
  client : @ros.ActionClient,
  id : UInt64,
) -> Typed[Ros2Control_msgsActionFollowJointTrajectory_Result] {
  let checked = client.result_checked(id, 4113, fn(bytes) {
    match Ros2Control_msgsActionFollowJointTrajectory_Result::decode(bytes) {
      Ok(_) => 0
      Err(code) => code
    }
  })
  let reply = checked.rpc
  if checked.status != 0 {
    return {
      primary: checked.status,
      rpc: Some(reply),
      value: None,
      id,
      kind: 0,
    }
  }
  if reply.data.length() < 9 {
    return { primary: 22, rpc: Some(reply), value: None, id, kind: 0, }
  }
  let kind = reply.data[8].to_int()
  match
    Ros2Control_msgsActionFollowJointTrajectory_Result::decode(
      reply.data[9:].to_owned(),
    ) {
    Ok(value) => { primary: 0, rpc: Some(reply), value: Some(value), id, kind, }
    Err(code) => { primary: code, rpc: Some(reply), value: None, id, kind, }
  }
}

///|
/// @brief Respond with the full original control_msgs/action/FollowJointTrajectory result.
/// @param self Borrowed complete typed body.
/// @param server Borrowed acquired ActionServer.
/// @param id Exact live incoming UInt64 goal ID.
/// @param kind Terminal outcome kind 2, 3 or 4.
/// @return Original validation or native response status.
/// @details Feedback uses kind 1; terminal kinds never mean a physical stop guarantee.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::respond(
  self : Ros2Control_msgsActionFollowJointTrajectory_Result,
  server : @ros.ActionServer,
  id : UInt64,
  kind : Int32,
) -> Int32 {
  if kind < 2 || kind > 4 {
    return 22
  }
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, kind, body)
}

///|
/// @brief Publish the entire original control_msgs/msg/JointComponentTolerance value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Control_msgsMsgJointComponentTolerance::publish(
  self : Ros2Control_msgsMsgJointComponentTolerance,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original control_msgs/msg/JointComponentTolerance value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Control_msgsMsgJointComponentTolerance::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Control_msgsMsgJointComponentTolerance] {
  typed_reply(
    owner.poll(542),
    Ros2Control_msgsMsgJointComponentTolerance::decode,
  )
}

///|
/// @brief Publish the entire original control_msgs/msg/JointTolerance value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Control_msgsMsgJointTolerance::publish(
  self : Ros2Control_msgsMsgJointTolerance,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original control_msgs/msg/JointTolerance value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Control_msgsMsgJointTolerance::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Control_msgsMsgJointTolerance] {
  typed_reply(owner.poll(92), Ros2Control_msgsMsgJointTolerance::decode)
}

///|
/// @brief Publish the entire original geometry_msgs/msg/Quaternion value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Geometry_msgsMsgQuaternion::publish(
  self : Ros2Geometry_msgsMsgQuaternion,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original geometry_msgs/msg/Quaternion value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Geometry_msgsMsgQuaternion::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Geometry_msgsMsgQuaternion] {
  typed_reply(owner.poll(32), Ros2Geometry_msgsMsgQuaternion::decode)
}

///|
/// @brief Publish the entire original geometry_msgs/msg/Transform value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Geometry_msgsMsgTransform::publish(
  self : Ros2Geometry_msgsMsgTransform,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original geometry_msgs/msg/Transform value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Geometry_msgsMsgTransform::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Geometry_msgsMsgTransform] {
  typed_reply(owner.poll(56), Ros2Geometry_msgsMsgTransform::decode)
}

///|
/// @brief Publish the entire original geometry_msgs/msg/Twist value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Geometry_msgsMsgTwist::publish(
  self : Ros2Geometry_msgsMsgTwist,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original geometry_msgs/msg/Twist value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Geometry_msgsMsgTwist::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Geometry_msgsMsgTwist] {
  typed_reply(owner.poll(48), Ros2Geometry_msgsMsgTwist::decode)
}

///|
/// @brief Publish the entire original geometry_msgs/msg/Vector3 value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Geometry_msgsMsgVector3::publish(
  self : Ros2Geometry_msgsMsgVector3,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original geometry_msgs/msg/Vector3 value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Geometry_msgsMsgVector3::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Geometry_msgsMsgVector3] {
  typed_reply(owner.poll(24), Ros2Geometry_msgsMsgVector3::decode)
}

///|
/// @brief Publish the entire original sensor_msgs/msg/JointState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Sensor_msgsMsgJointState::publish(
  self : Ros2Sensor_msgsMsgJointState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original sensor_msgs/msg/JointState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Sensor_msgsMsgJointState::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Sensor_msgsMsgJointState] {
  typed_reply(owner.poll(1196), Ros2Sensor_msgsMsgJointState::decode)
}

///|
/// @brief Publish the entire original std_msgs/msg/Header value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Std_msgsMsgHeader::publish(
  self : Ros2Std_msgsMsgHeader,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original std_msgs/msg/Header value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Std_msgsMsgHeader::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Std_msgsMsgHeader] {
  typed_reply(owner.poll(76), Ros2Std_msgsMsgHeader::decode)
}

///|
/// @brief Call original std_srvs/srv/Trigger once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros2Std_srvsSrvTrigger_Request::call(
  self : Ros2Std_srvsSrvTrigger_Request,
  owner : @ros.Resource,
) -> Typed[Ros2Std_srvsSrvTrigger_Response] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 517),
    Ros2Std_srvsSrvTrigger_Response::decode,
  )
}

///|
/// @brief Submit one full std_srvs/srv/Trigger request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros2Std_srvsSrvTrigger_Request::submit(
  self : Ros2Std_srvsSrvTrigger_Request,
  source : @ros.Resource,
  observer : @ros.Resource,
) -> @linear.Reply {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return @linear.failure(code)
  }
  source.submit(observer, input)
}

///|
/// @brief Poll a complete incoming std_srvs/srv/Trigger request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros2Std_srvsSrvTrigger_Request::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros2Std_srvsSrvTrigger_Request] {
  typed_envelope(server.events.poll(8), Ros2Std_srvsSrvTrigger_Request::decode)
}

///|
/// @brief Respond once with the whole original std_srvs/srv/Trigger response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros2Std_srvsSrvTrigger_Response::respond(
  self : Ros2Std_srvsSrvTrigger_Response,
  server : @ros.ServiceServer,
  id : UInt64,
) -> Int32 {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  server.respond(id, body)
}

///|
/// @brief Publish the entire original trajectory_msgs/msg/JointTrajectory value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Trajectory_msgsMsgJointTrajectory::publish(
  self : Ros2Trajectory_msgsMsgJointTrajectory,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original trajectory_msgs/msg/JointTrajectory value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Trajectory_msgsMsgJointTrajectory::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Trajectory_msgsMsgJointTrajectory] {
  typed_reply(owner.poll(4164), Ros2Trajectory_msgsMsgJointTrajectory::decode)
}

///|
/// @brief Publish the entire original trajectory_msgs/msg/JointTrajectoryPoint value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::publish(
  self : Ros2Trajectory_msgsMsgJointTrajectoryPoint,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original trajectory_msgs/msg/JointTrajectoryPoint value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Trajectory_msgsMsgJointTrajectoryPoint] {
  typed_reply(
    owner.poll(408),
    Ros2Trajectory_msgsMsgJointTrajectoryPoint::decode,
  )
}

///|
/// @brief Publish the entire original trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::publish(
  self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Trajectory_msgsMsgMultiDOFJointTrajectory] {
  typed_reply(
    owner.poll(1516),
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::decode,
  )
}

///|
/// @brief Publish the entire original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::publish(
  self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::poll(
  owner : @ros.Resource,
) -> Typed[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] {
  typed_reply(
    owner.poll(324),
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::decode,
  )
}
