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
/// @brief Publish the entire original abb_egm_msgs/EGMChannelState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_egm_msgsEGMChannelState::publish(
  self : Ros1Abb_egm_msgsEGMChannelState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_egm_msgs/EGMChannelState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_egm_msgsEGMChannelState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_egm_msgsEGMChannelState] {
  typed_reply(owner.poll(81), Ros1Abb_egm_msgsEGMChannelState::decode)
}

///|
/// @brief Publish the entire original abb_egm_msgs/EGMState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_egm_msgsEGMState::publish(
  self : Ros1Abb_egm_msgsEGMState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_egm_msgs/EGMState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_egm_msgsEGMState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_egm_msgsEGMState] {
  typed_reply(owner.poll(1380), Ros1Abb_egm_msgsEGMState::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/ConfData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsConfData::publish(
  self : Ros1Abb_rapid_msgsConfData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/ConfData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsConfData::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsConfData] {
  typed_reply(owner.poll(16), Ros1Abb_rapid_msgsConfData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/ExtJoint value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsExtJoint::publish(
  self : Ros1Abb_rapid_msgsExtJoint,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/ExtJoint value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsExtJoint::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsExtJoint] {
  typed_reply(owner.poll(24), Ros1Abb_rapid_msgsExtJoint::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/JointTarget value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsJointTarget::publish(
  self : Ros1Abb_rapid_msgsJointTarget,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/JointTarget value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsJointTarget::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsJointTarget] {
  typed_reply(owner.poll(48), Ros1Abb_rapid_msgsJointTarget::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/LoadData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsLoadData::publish(
  self : Ros1Abb_rapid_msgsLoadData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/LoadData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsLoadData::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsLoadData] {
  typed_reply(owner.poll(44), Ros1Abb_rapid_msgsLoadData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/Orient value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsOrient::publish(
  self : Ros1Abb_rapid_msgsOrient,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/Orient value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsOrient::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsOrient] {
  typed_reply(owner.poll(16), Ros1Abb_rapid_msgsOrient::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/Pos value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsPos::publish(
  self : Ros1Abb_rapid_msgsPos,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/Pos value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsPos::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsPos] {
  typed_reply(owner.poll(12), Ros1Abb_rapid_msgsPos::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/Pose value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsPose::publish(
  self : Ros1Abb_rapid_msgsPose,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/Pose value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsPose::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsPose] {
  typed_reply(owner.poll(28), Ros1Abb_rapid_msgsPose::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/RobJoint value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsRobJoint::publish(
  self : Ros1Abb_rapid_msgsRobJoint,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/RobJoint value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsRobJoint::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsRobJoint] {
  typed_reply(owner.poll(24), Ros1Abb_rapid_msgsRobJoint::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/RobTarget value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsRobTarget::publish(
  self : Ros1Abb_rapid_msgsRobTarget,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/RobTarget value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsRobTarget::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsRobTarget] {
  typed_reply(owner.poll(68), Ros1Abb_rapid_msgsRobTarget::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/ToolData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsToolData::publish(
  self : Ros1Abb_rapid_msgsToolData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/ToolData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsToolData::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsToolData] {
  typed_reply(owner.poll(73), Ros1Abb_rapid_msgsToolData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_msgs/WObjData value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_msgsWObjData::publish(
  self : Ros1Abb_rapid_msgsWObjData,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_msgs/WObjData value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_msgsWObjData::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_msgsWObjData] {
  typed_reply(owner.poll(574), Ros1Abb_rapid_msgsWObjData::decode)
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/EGMActivateSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings::publish(
  self : Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/EGMActivateSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings] {
  typed_reply(
    owner.poll(716),
    Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/EGMRunSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMRunSettings::publish(
  self : Ros1Abb_rapid_sm_addin_msgsEGMRunSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/EGMRunSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMRunSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsEGMRunSettings] {
  typed_reply(owner.poll(40), Ros1Abb_rapid_sm_addin_msgsEGMRunSettings::decode)
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/EGMSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSettings::publish(
  self : Ros1Abb_rapid_sm_addin_msgsEGMSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/EGMSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsEGMSettings] {
  typed_reply(owner.poll(767), Ros1Abb_rapid_sm_addin_msgsEGMSettings::decode)
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/EGMSetupSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings::publish(
  self : Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/EGMSetupSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings] {
  typed_reply(
    owner.poll(5),
    Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings::decode,
  )
}

///|
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/EGMStopSettings value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMStopSettings::publish(
  self : Ros1Abb_rapid_sm_addin_msgsEGMStopSettings,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/EGMStopSettings value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_sm_addin_msgsEGMStopSettings::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsEGMStopSettings] {
  typed_reply(owner.poll(4), Ros1Abb_rapid_sm_addin_msgsEGMStopSettings::decode)
}

///|
/// @brief Call original abb_rapid_sm_addin_msgs/GetEGMSettings once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest::call(
  self : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1285),
    Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/GetEGMSettings request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest::submit(
  self : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest,
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
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/GetEGMSettings request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest] {
  typed_envelope(
    server.events.poll(76),
    Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/GetEGMSettings response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse::respond(
  self : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse,
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
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/RuntimeState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_sm_addin_msgsRuntimeState::publish(
  self : Ros1Abb_rapid_sm_addin_msgsRuntimeState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/RuntimeState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_sm_addin_msgsRuntimeState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsRuntimeState] {
  typed_reply(owner.poll(8372), Ros1Abb_rapid_sm_addin_msgsRuntimeState::decode)
}

///|
/// @brief Call original abb_rapid_sm_addin_msgs/SetEGMSettings once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest::call(
  self : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/SetEGMSettings request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest::submit(
  self : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest,
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
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/SetEGMSettings request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest] {
  typed_envelope(
    server.events.poll(843),
    Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/SetEGMSettings response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse::respond(
  self : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse,
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
/// @brief Call original abb_rapid_sm_addin_msgs/SetRAPIDRoutine once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest::call(
  self : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/SetRAPIDRoutine request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest::submit(
  self : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest,
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
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/SetRAPIDRoutine request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest] {
  typed_envelope(
    server.events.poll(592),
    Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/SetRAPIDRoutine response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse::respond(
  self : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse,
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
/// @brief Call original abb_rapid_sm_addin_msgs/SetSGCommand once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest::call(
  self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse::decode,
  )
}

///|
/// @brief Submit one full abb_rapid_sm_addin_msgs/SetSGCommand request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest::submit(
  self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest,
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
/// @brief Poll a complete incoming abb_rapid_sm_addin_msgs/SetSGCommand request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest] {
  typed_envelope(
    server.events.poll(81),
    Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_rapid_sm_addin_msgs/SetSGCommand response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse::respond(
  self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse,
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
/// @brief Publish the entire original abb_rapid_sm_addin_msgs/StateMachineState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineState::publish(
  self : Ros1Abb_rapid_sm_addin_msgsStateMachineState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_rapid_sm_addin_msgs/StateMachineState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_rapid_sm_addin_msgsStateMachineState] {
  typed_reply(
    owner.poll(518),
    Ros1Abb_rapid_sm_addin_msgsStateMachineState::decode,
  )
}

///|
/// @brief Call original abb_robot_msgs/GetFileContents once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetFileContentsRequest::call(
  self : Ros1Abb_robot_msgsGetFileContentsRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetFileContentsResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 4618),
    Ros1Abb_robot_msgsGetFileContentsResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetFileContents request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetFileContentsRequest::submit(
  self : Ros1Abb_robot_msgsGetFileContentsRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetFileContents request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetFileContentsRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetFileContentsRequest] {
  typed_envelope(
    server.events.poll(524),
    Ros1Abb_robot_msgsGetFileContentsRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetFileContents response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetFileContentsResponse::respond(
  self : Ros1Abb_robot_msgsGetFileContentsResponse,
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
/// @brief Call original abb_robot_msgs/GetIOSignal once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetIOSignalRequest::call(
  self : Ros1Abb_robot_msgsGetIOSignalRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetIOSignalResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1034),
    Ros1Abb_robot_msgsGetIOSignalResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetIOSignal request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetIOSignalRequest::submit(
  self : Ros1Abb_robot_msgsGetIOSignalRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetIOSignal request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetIOSignalRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetIOSignalRequest] {
  typed_envelope(
    server.events.poll(524),
    Ros1Abb_robot_msgsGetIOSignalRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetIOSignal response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetIOSignalResponse::respond(
  self : Ros1Abb_robot_msgsGetIOSignalResponse,
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
/// @brief Call original abb_robot_msgs/GetRAPIDBool once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetRAPIDBoolRequest::call(
  self : Ros1Abb_robot_msgsGetRAPIDBoolRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDBoolResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 519),
    Ros1Abb_robot_msgsGetRAPIDBoolResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetRAPIDBool request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetRAPIDBoolRequest::submit(
  self : Ros1Abb_robot_msgsGetRAPIDBoolRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetRAPIDBool request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetRAPIDBoolRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDBoolRequest] {
  typed_envelope(
    server.events.poll(212),
    Ros1Abb_robot_msgsGetRAPIDBoolRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetRAPIDBool response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetRAPIDBoolResponse::respond(
  self : Ros1Abb_robot_msgsGetRAPIDBoolResponse,
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
/// @brief Call original abb_robot_msgs/GetRAPIDDnum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetRAPIDDnumRequest::call(
  self : Ros1Abb_robot_msgsGetRAPIDDnumRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDDnumResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 526),
    Ros1Abb_robot_msgsGetRAPIDDnumResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetRAPIDDnum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetRAPIDDnumRequest::submit(
  self : Ros1Abb_robot_msgsGetRAPIDDnumRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetRAPIDDnum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetRAPIDDnumRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDDnumRequest] {
  typed_envelope(
    server.events.poll(212),
    Ros1Abb_robot_msgsGetRAPIDDnumRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetRAPIDDnum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetRAPIDDnumResponse::respond(
  self : Ros1Abb_robot_msgsGetRAPIDDnumResponse,
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
/// @brief Call original abb_robot_msgs/GetRAPIDNum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetRAPIDNumRequest::call(
  self : Ros1Abb_robot_msgsGetRAPIDNumRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDNumResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 522),
    Ros1Abb_robot_msgsGetRAPIDNumResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetRAPIDNum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetRAPIDNumRequest::submit(
  self : Ros1Abb_robot_msgsGetRAPIDNumRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetRAPIDNum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetRAPIDNumRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDNumRequest] {
  typed_envelope(
    server.events.poll(212),
    Ros1Abb_robot_msgsGetRAPIDNumRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetRAPIDNum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetRAPIDNumResponse::respond(
  self : Ros1Abb_robot_msgsGetRAPIDNumResponse,
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
/// @brief Call original abb_robot_msgs/GetRAPIDString once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetRAPIDStringRequest::call(
  self : Ros1Abb_robot_msgsGetRAPIDStringRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDStringResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1034),
    Ros1Abb_robot_msgsGetRAPIDStringResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetRAPIDString request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetRAPIDStringRequest::submit(
  self : Ros1Abb_robot_msgsGetRAPIDStringRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetRAPIDString request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetRAPIDStringRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDStringRequest] {
  typed_envelope(
    server.events.poll(212),
    Ros1Abb_robot_msgsGetRAPIDStringRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetRAPIDString response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetRAPIDStringResponse::respond(
  self : Ros1Abb_robot_msgsGetRAPIDStringResponse,
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
/// @brief Call original abb_robot_msgs/GetRAPIDSymbol once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolRequest::call(
  self : Ros1Abb_robot_msgsGetRAPIDSymbolRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDSymbolResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 1034),
    Ros1Abb_robot_msgsGetRAPIDSymbolResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetRAPIDSymbol request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolRequest::submit(
  self : Ros1Abb_robot_msgsGetRAPIDSymbolRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetRAPIDSymbol request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetRAPIDSymbolRequest] {
  typed_envelope(
    server.events.poll(212),
    Ros1Abb_robot_msgsGetRAPIDSymbolRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetRAPIDSymbol response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolResponse::respond(
  self : Ros1Abb_robot_msgsGetRAPIDSymbolResponse,
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
/// @brief Call original abb_robot_msgs/GetRobotControllerDescription once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest::call(
  self : Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 4618),
    Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetRobotControllerDescription request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest::submit(
  self : Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetRobotControllerDescription request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest] {
  typed_envelope(
    server.events.poll(8),
    Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetRobotControllerDescription response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse::respond(
  self : Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse,
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
/// @brief Call original abb_robot_msgs/GetSpeedRatio once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsGetSpeedRatioRequest::call(
  self : Ros1Abb_robot_msgsGetSpeedRatioRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsGetSpeedRatioResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 519),
    Ros1Abb_robot_msgsGetSpeedRatioResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/GetSpeedRatio request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsGetSpeedRatioRequest::submit(
  self : Ros1Abb_robot_msgsGetSpeedRatioRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/GetSpeedRatio request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsGetSpeedRatioRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsGetSpeedRatioRequest] {
  typed_envelope(
    server.events.poll(8),
    Ros1Abb_robot_msgsGetSpeedRatioRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/GetSpeedRatio response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsGetSpeedRatioResponse::respond(
  self : Ros1Abb_robot_msgsGetSpeedRatioResponse,
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
/// @brief Publish the entire original abb_robot_msgs/MechanicalUnitState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_robot_msgsMechanicalUnitState::publish(
  self : Ros1Abb_robot_msgsMechanicalUnitState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/MechanicalUnitState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_robot_msgsMechanicalUnitState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsMechanicalUnitState] {
  typed_reply(owner.poll(69), Ros1Abb_robot_msgsMechanicalUnitState::decode)
}

///|
/// @brief Publish the entire original abb_robot_msgs/RAPIDSymbolPath value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_robot_msgsRAPIDSymbolPath::publish(
  self : Ros1Abb_robot_msgsRAPIDSymbolPath,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/RAPIDSymbolPath value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_robot_msgsRAPIDSymbolPath::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsRAPIDSymbolPath] {
  typed_reply(owner.poll(204), Ros1Abb_robot_msgsRAPIDSymbolPath::decode)
}

///|
/// @brief Publish the entire original abb_robot_msgs/RAPIDTaskState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_robot_msgsRAPIDTaskState::publish(
  self : Ros1Abb_robot_msgsRAPIDTaskState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/RAPIDTaskState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_robot_msgsRAPIDTaskState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsRAPIDTaskState] {
  typed_reply(owner.poll(71), Ros1Abb_robot_msgsRAPIDTaskState::decode)
}

///|
/// @brief Publish the entire original abb_robot_msgs/ServiceResponses value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_robot_msgsServiceResponses::publish(
  self : Ros1Abb_robot_msgsServiceResponses,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/ServiceResponses value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_robot_msgsServiceResponses::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsServiceResponses] {
  typed_reply(owner.poll(0), Ros1Abb_robot_msgsServiceResponses::decode)
}

///|
/// @brief Call original abb_robot_msgs/SetFileContents once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetFileContentsRequest::call(
  self : Ros1Abb_robot_msgsSetFileContentsRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetFileContentsResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetFileContentsResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetFileContents request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetFileContentsRequest::submit(
  self : Ros1Abb_robot_msgsSetFileContentsRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetFileContents request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetFileContentsRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetFileContentsRequest] {
  typed_envelope(
    server.events.poll(4624),
    Ros1Abb_robot_msgsSetFileContentsRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetFileContents response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetFileContentsResponse::respond(
  self : Ros1Abb_robot_msgsSetFileContentsResponse,
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
/// @brief Call original abb_robot_msgs/SetIOSignal once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetIOSignalRequest::call(
  self : Ros1Abb_robot_msgsSetIOSignalRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetIOSignalResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetIOSignalResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetIOSignal request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetIOSignalRequest::submit(
  self : Ros1Abb_robot_msgsSetIOSignalRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetIOSignal request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetIOSignalRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetIOSignalRequest] {
  typed_envelope(
    server.events.poll(1040),
    Ros1Abb_robot_msgsSetIOSignalRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetIOSignal response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetIOSignalResponse::respond(
  self : Ros1Abb_robot_msgsSetIOSignalResponse,
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
/// @brief Call original abb_robot_msgs/SetRAPIDBool once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetRAPIDBoolRequest::call(
  self : Ros1Abb_robot_msgsSetRAPIDBoolRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDBoolResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetRAPIDBoolResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetRAPIDBool request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetRAPIDBoolRequest::submit(
  self : Ros1Abb_robot_msgsSetRAPIDBoolRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetRAPIDBool request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetRAPIDBoolRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDBoolRequest] {
  typed_envelope(
    server.events.poll(213),
    Ros1Abb_robot_msgsSetRAPIDBoolRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetRAPIDBool response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetRAPIDBoolResponse::respond(
  self : Ros1Abb_robot_msgsSetRAPIDBoolResponse,
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
/// @brief Call original abb_robot_msgs/SetRAPIDDnum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetRAPIDDnumRequest::call(
  self : Ros1Abb_robot_msgsSetRAPIDDnumRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDDnumResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetRAPIDDnumResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetRAPIDDnum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetRAPIDDnumRequest::submit(
  self : Ros1Abb_robot_msgsSetRAPIDDnumRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetRAPIDDnum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetRAPIDDnumRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDDnumRequest] {
  typed_envelope(
    server.events.poll(220),
    Ros1Abb_robot_msgsSetRAPIDDnumRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetRAPIDDnum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetRAPIDDnumResponse::respond(
  self : Ros1Abb_robot_msgsSetRAPIDDnumResponse,
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
/// @brief Call original abb_robot_msgs/SetRAPIDNum once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetRAPIDNumRequest::call(
  self : Ros1Abb_robot_msgsSetRAPIDNumRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDNumResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetRAPIDNumResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetRAPIDNum request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetRAPIDNumRequest::submit(
  self : Ros1Abb_robot_msgsSetRAPIDNumRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetRAPIDNum request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetRAPIDNumRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDNumRequest] {
  typed_envelope(
    server.events.poll(216),
    Ros1Abb_robot_msgsSetRAPIDNumRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetRAPIDNum response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetRAPIDNumResponse::respond(
  self : Ros1Abb_robot_msgsSetRAPIDNumResponse,
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
/// @brief Call original abb_robot_msgs/SetRAPIDString once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetRAPIDStringRequest::call(
  self : Ros1Abb_robot_msgsSetRAPIDStringRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDStringResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetRAPIDStringResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetRAPIDString request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetRAPIDStringRequest::submit(
  self : Ros1Abb_robot_msgsSetRAPIDStringRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetRAPIDString request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetRAPIDStringRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDStringRequest] {
  typed_envelope(
    server.events.poll(728),
    Ros1Abb_robot_msgsSetRAPIDStringRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetRAPIDString response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetRAPIDStringResponse::respond(
  self : Ros1Abb_robot_msgsSetRAPIDStringResponse,
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
/// @brief Call original abb_robot_msgs/SetRAPIDSymbol once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolRequest::call(
  self : Ros1Abb_robot_msgsSetRAPIDSymbolRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDSymbolResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetRAPIDSymbolResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetRAPIDSymbol request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolRequest::submit(
  self : Ros1Abb_robot_msgsSetRAPIDSymbolRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetRAPIDSymbol request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetRAPIDSymbolRequest] {
  typed_envelope(
    server.events.poll(728),
    Ros1Abb_robot_msgsSetRAPIDSymbolRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetRAPIDSymbol response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolResponse::respond(
  self : Ros1Abb_robot_msgsSetRAPIDSymbolResponse,
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
/// @brief Call original abb_robot_msgs/SetSpeedRatio once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsSetSpeedRatioRequest::call(
  self : Ros1Abb_robot_msgsSetSpeedRatioRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSetSpeedRatioResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsSetSpeedRatioResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/SetSpeedRatio request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsSetSpeedRatioRequest::submit(
  self : Ros1Abb_robot_msgsSetSpeedRatioRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/SetSpeedRatio request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsSetSpeedRatioRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsSetSpeedRatioRequest] {
  typed_envelope(
    server.events.poll(9),
    Ros1Abb_robot_msgsSetSpeedRatioRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/SetSpeedRatio response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsSetSpeedRatioResponse::respond(
  self : Ros1Abb_robot_msgsSetSpeedRatioResponse,
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
/// @brief Publish the entire original abb_robot_msgs/SystemState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Abb_robot_msgsSystemState::publish(
  self : Ros1Abb_robot_msgsSystemState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original abb_robot_msgs/SystemState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Abb_robot_msgsSystemState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsSystemState] {
  typed_reply(owner.poll(2331), Ros1Abb_robot_msgsSystemState::decode)
}

///|
/// @brief Call original abb_robot_msgs/TriggerWithResultCode once with its full request.
/// @param self Borrowed whole request.
/// @param owner Borrowed acquired exact ServiceCall Resource.
/// @return Entire typed response and unchanged transport/required-size facts.
/// @details No capacity, timeout, disconnect or controller refusal is replayed.
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeRequest::call(
  self : Ros1Abb_robot_msgsTriggerWithResultCodeRequest,
  owner : @ros.Resource,
) -> Typed[Ros1Abb_robot_msgsTriggerWithResultCodeResponse] {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return typed_failure(code)
  }
  typed_reply(
    owner.request(input, 518),
    Ros1Abb_robot_msgsTriggerWithResultCodeResponse::decode,
  )
}

///|
/// @brief Submit one full abb_robot_msgs/TriggerWithResultCode request through explicit async owners.
/// @param self Whole borrowed typed request.
/// @param source Acquired exact ServiceSubmit Resource.
/// @param observer Separately acquired compatible observer Resource.
/// @return Original admission reply containing the full-width request ID on success.
/// @details Submission success is distinct from completion; observe the separately granted completion
/// stream.
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeRequest::submit(
  self : Ros1Abb_robot_msgsTriggerWithResultCodeRequest,
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
/// @brief Poll a complete incoming abb_robot_msgs/TriggerWithResultCode request.
/// @param server Borrowed acquired ServiceServer with distinct advertise/respond owners.
/// @return Exact nonzero UInt64 request ID, whole request and original transport reply.
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeRequest::poll_request(
  server : @ros.ServiceServer,
) -> Typed[Ros1Abb_robot_msgsTriggerWithResultCodeRequest] {
  typed_envelope(
    server.events.poll(8),
    Ros1Abb_robot_msgsTriggerWithResultCodeRequest::decode,
  )
}

///|
/// @brief Respond once with the whole original abb_robot_msgs/TriggerWithResultCode response.
/// @param self Borrowed complete typed response.
/// @param server Borrowed live ServiceServer; caller retains cleanup ownership.
/// @param id Exact incoming nonzero UInt64 request identity.
/// @return Complete validation or native response status; no request ID narrowing occurs.
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeResponse::respond(
  self : Ros1Abb_robot_msgsTriggerWithResultCodeResponse,
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
/// @brief Admit one complete original control_msgs/FollowJointTrajectory goal.
/// @param self Borrowed whole goal.
/// @param client Borrowed Session-owned ActionClient with reserved goal tracking.
/// @return Exact full-width nonzero goal ID or original status.
/// @details Goal tracking commits before constructing the public result; caller retains the owning
/// Session.
pub fn Ros1Control_msgsFollowJointTrajectoryGoal::send(
  self : Ros1Control_msgsFollowJointTrajectoryGoal,
  client : @ros.ActionClient,
) -> Result[UInt64, Int32] {
  let body = match self.encode() {
    Ok(value) => value
    Err(code) => return Err(code)
  }
  client.send_goal(body)
}

///|
/// @brief Poll a complete incoming original control_msgs/FollowJointTrajectory goal.
/// @param server Borrowed acquired ActionServer.
/// @return Full UInt64 incoming ID, typed goal and original transport reply.
pub fn Ros1Control_msgsFollowJointTrajectoryGoal::poll_goal(
  server : @ros.ActionServer,
) -> Typed[Ros1Control_msgsFollowJointTrajectoryGoal] {
  typed_envelope(
    server.events.poll(6400),
    Ros1Control_msgsFollowJointTrajectoryGoal::decode,
  )
}

///|
/// @brief Receive complete matching-ID original control_msgs/FollowJointTrajectory feedback.
/// @param client Borrowed live tracked ActionClient.
/// @param id Exact previously admitted nonzero UInt64 goal identity.
/// @return Whole typed body, original reply, matching ID and terminal kind when applicable.
/// @details A malformed complete body does not retire the local tracked goal.
pub fn Ros1Control_msgsFollowJointTrajectoryFeedback::receive(
  client : @ros.ActionClient,
  id : UInt64,
) -> Typed[Ros1Control_msgsFollowJointTrajectoryFeedback] {
  let checked = client.feedback_checked(id, 2132)
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
    Ros1Control_msgsFollowJointTrajectoryFeedback::decode(
      reply.data[8:].to_owned(),
    ) {
    Ok(value) => { primary: 0, rpc: Some(reply), value: Some(value), id, kind, }
    Err(code) => { primary: code, rpc: Some(reply), value: None, id, kind, }
  }
}

///|
/// @brief Respond with the full original control_msgs/FollowJointTrajectory feedback.
/// @param self Borrowed complete typed body.
/// @param server Borrowed acquired ActionServer.
/// @param id Exact live incoming UInt64 goal ID.
/// @return Original validation or native response status.
/// @details Feedback uses kind 1; terminal kinds never mean a physical stop guarantee.
pub fn Ros1Control_msgsFollowJointTrajectoryFeedback::respond(
  self : Ros1Control_msgsFollowJointTrajectoryFeedback,
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
/// @brief Receive complete matching-ID original control_msgs/FollowJointTrajectory result.
/// @param client Borrowed live tracked ActionClient.
/// @param id Exact previously admitted nonzero UInt64 goal identity.
/// @return Whole typed body, original reply, matching ID and terminal kind when applicable.
/// @details A malformed complete body does not retire the local tracked goal.
pub fn Ros1Control_msgsFollowJointTrajectoryResult::receive(
  client : @ros.ActionClient,
  id : UInt64,
) -> Typed[Ros1Control_msgsFollowJointTrajectoryResult] {
  let checked = client.result_checked(id, 4113, fn(bytes) {
    match Ros1Control_msgsFollowJointTrajectoryResult::decode(bytes) {
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
    Ros1Control_msgsFollowJointTrajectoryResult::decode(
      reply.data[9:].to_owned(),
    ) {
    Ok(value) => { primary: 0, rpc: Some(reply), value: Some(value), id, kind, }
    Err(code) => { primary: code, rpc: Some(reply), value: None, id, kind, }
  }
}

///|
/// @brief Respond with the full original control_msgs/FollowJointTrajectory result.
/// @param self Borrowed complete typed body.
/// @param server Borrowed acquired ActionServer.
/// @param id Exact live incoming UInt64 goal ID.
/// @param kind Terminal outcome kind 2, 3 or 4.
/// @return Original validation or native response status.
/// @details Feedback uses kind 1; terminal kinds never mean a physical stop guarantee.
pub fn Ros1Control_msgsFollowJointTrajectoryResult::respond(
  self : Ros1Control_msgsFollowJointTrajectoryResult,
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
/// @brief Publish the entire original control_msgs/JointTolerance value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Control_msgsJointTolerance::publish(
  self : Ros1Control_msgsJointTolerance,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original control_msgs/JointTolerance value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Control_msgsJointTolerance::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Control_msgsJointTolerance] {
  typed_reply(owner.poll(92), Ros1Control_msgsJointTolerance::decode)
}

///|
/// @brief Publish the entire original sensor_msgs/JointState value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Sensor_msgsJointState::publish(
  self : Ros1Sensor_msgsJointState,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original sensor_msgs/JointState value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Sensor_msgsJointState::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Sensor_msgsJointState] {
  typed_reply(owner.poll(1200), Ros1Sensor_msgsJointState::decode)
}

///|
/// @brief Publish the entire original std_msgs/Header value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Std_msgsHeader::publish(
  self : Ros1Std_msgsHeader,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original std_msgs/Header value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Std_msgsHeader::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Std_msgsHeader] {
  typed_reply(owner.poll(80), Ros1Std_msgsHeader::decode)
}

///|
/// @brief Publish the entire original trajectory_msgs/JointTrajectory value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Trajectory_msgsJointTrajectory::publish(
  self : Ros1Trajectory_msgsJointTrajectory,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original trajectory_msgs/JointTrajectory value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Trajectory_msgsJointTrajectory::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Trajectory_msgsJointTrajectory] {
  typed_reply(owner.poll(4168), Ros1Trajectory_msgsJointTrajectory::decode)
}

///|
/// @brief Publish the entire original trajectory_msgs/JointTrajectoryPoint value.
/// @param self Borrowed complete typed message.
/// @param owner Borrowed already acquired exact publisher Resource.
/// @return Zero or the complete validation/import status.
/// @details Ownership and explicit close remain with the caller's Session.
pub fn Ros1Trajectory_msgsJointTrajectoryPoint::publish(
  self : Ros1Trajectory_msgsJointTrajectoryPoint,
  owner : @ros.Resource,
) -> Int32 {
  let input = match self.encode() {
    Ok(value) => value
    Err(code) => return code
  }
  owner.write(input)
}

///|
/// @brief Poll one complete original trajectory_msgs/JointTrajectoryPoint value.
/// @param owner Borrowed already activated exact subscription Resource.
/// @return Entire typed value and independent original RPC reply; idle 11 stays nonzero.
pub fn Ros1Trajectory_msgsJointTrajectoryPoint::poll(
  owner : @ros.Resource,
) -> Typed[Ros1Trajectory_msgsJointTrajectoryPoint] {
  typed_reply(owner.poll(408), Ros1Trajectory_msgsJointTrajectoryPoint::decode)
}
