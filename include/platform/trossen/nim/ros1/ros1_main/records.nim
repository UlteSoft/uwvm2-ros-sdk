## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete trossen ros1_main canonical value surface.
## @details The original 61 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/trossen/catalogs.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of ROS1 interbotix_slate_msgs/SetStringRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_slate_msgsSetStringRequest* = object
  ## @brief Preserve original data as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `data`*: string
const Ros1Interbotix_slate_msgsSetStringRequestMaximumWireBytes* = 132
const Ros1Interbotix_slate_msgsSetStringRequestCodecIdentity* = "UWVMROS1_bc58f043e73f33d5b3923bca8a1d515f62f405f3365b83adb17311a728d2f105"
const Ros1Interbotix_slate_msgsSetStringRequestNativeType* = "interbotix_slate_msgs/SetStringRequest"
const Ros1Interbotix_slate_msgsSetStringRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_slate_msgsSetStringRequest*(): Ros1Interbotix_slate_msgsSetStringRequest =
  result.`data` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_slate_msgsSetStringRequest; w: var Writer) =
  putString(w,value.`data`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_slate_msgsSetStringRequest*(r: var Reader): Ros1Interbotix_slate_msgsSetStringRequest =
  result = initRos1Interbotix_slate_msgsSetStringRequest()
  result.`data` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_slate_msgsSetStringRequest): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_slate_msgsSetStringRequest*(b: seq[byte]): Ros1Interbotix_slate_msgsSetStringRequest =
  var r = initReader(b,132)
  result = readRos1Interbotix_slate_msgsSetStringRequest(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_slate_msgs/SetStringResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_slate_msgsSetStringResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Interbotix_slate_msgsSetStringResponseMaximumWireBytes* = 133
const Ros1Interbotix_slate_msgsSetStringResponseCodecIdentity* = "UWVMROS1_6f3a05dbee380f0a0f5b24b75833a99857293e656d705e4322b4b3f97a5e530c"
const Ros1Interbotix_slate_msgsSetStringResponseNativeType* = "interbotix_slate_msgs/SetStringResponse"
const Ros1Interbotix_slate_msgsSetStringResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_slate_msgsSetStringResponse*(): Ros1Interbotix_slate_msgsSetStringResponse =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_slate_msgsSetStringResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_slate_msgsSetStringResponse*(r: var Reader): Ros1Interbotix_slate_msgsSetStringResponse =
  result = initRos1Interbotix_slate_msgsSetStringResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_slate_msgsSetStringResponse): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_slate_msgsSetStringResponse*(b: seq[byte]): Ros1Interbotix_slate_msgsSetStringResponse =
  var r = initReader(b,133)
  result = readRos1Interbotix_slate_msgsSetStringResponse(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/ArmJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsArmJoy* = object
  ## @brief Preserve original ee_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_x_cmd`*: int8
  ## @brief Preserve original ee_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_y_cmd`*: int8
  ## @brief Preserve original ee_z_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_z_cmd`*: int8
  ## @brief Preserve original ee_roll_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_roll_cmd`*: int8
  ## @brief Preserve original ee_pitch_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_pitch_cmd`*: int8
  ## @brief Preserve original waist_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `waist_cmd`*: int8
  ## @brief Preserve original gripper_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_cmd`*: int8
  ## @brief Preserve original pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
  ## @brief Preserve original gripper_pwm_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_pwm_cmd`*: int8
  ## @brief Preserve original torque_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `torque_cmd`*: int8
const Ros1Interbotix_xs_msgsArmJoyMaximumWireBytes* = 12
const Ros1Interbotix_xs_msgsArmJoyCodecIdentity* = "UWVMROS1_f8a971ff01593f420de167c62e0f606fd3762866cc108659edcac50972cd3ea3"
const Ros1Interbotix_xs_msgsArmJoyNativeType* = "interbotix_xs_msgs/ArmJoy"
const Ros1Interbotix_xs_msgsArmJoyNativeIdentity* = ""
const Ros1Interbotix_xs_msgsArmJoy_EE_X_INC*: int8 = 1'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_X_DEC*: int8 = 2'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_Y_INC*: int8 = 3'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_Y_DEC*: int8 = 4'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_Z_INC*: int8 = 5'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_Z_DEC*: int8 = 6'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CCW*: int8 = 7'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_ROLL_CW*: int8 = 8'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_PITCH_UP*: int8 = 9'i8
const Ros1Interbotix_xs_msgsArmJoy_EE_PITCH_DOWN*: int8 = 10'i8
const Ros1Interbotix_xs_msgsArmJoy_WAIST_CCW*: int8 = 11'i8
const Ros1Interbotix_xs_msgsArmJoy_WAIST_CW*: int8 = 12'i8
const Ros1Interbotix_xs_msgsArmJoy_GRIPPER_OPEN*: int8 = 13'i8
const Ros1Interbotix_xs_msgsArmJoy_GRIPPER_CLOSE*: int8 = 14'i8
const Ros1Interbotix_xs_msgsArmJoy_HOME_POSE*: int8 = 15'i8
const Ros1Interbotix_xs_msgsArmJoy_SLEEP_POSE*: int8 = 16'i8
const Ros1Interbotix_xs_msgsArmJoy_SPEED_INC*: int8 = 17'i8
const Ros1Interbotix_xs_msgsArmJoy_SPEED_DEC*: int8 = 18'i8
const Ros1Interbotix_xs_msgsArmJoy_SPEED_COURSE*: int8 = 19'i8
const Ros1Interbotix_xs_msgsArmJoy_SPEED_FINE*: int8 = 20'i8
const Ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_INC*: int8 = 21'i8
const Ros1Interbotix_xs_msgsArmJoy_GRIPPER_PWM_DEC*: int8 = 22'i8
const Ros1Interbotix_xs_msgsArmJoy_TORQUE_ON*: int8 = 23'i8
const Ros1Interbotix_xs_msgsArmJoy_TORQUE_OFF*: int8 = 24'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsArmJoy*(): Ros1Interbotix_xs_msgsArmJoy =
  result.`ee_x_cmd` = 0
  result.`ee_y_cmd` = 0
  result.`ee_z_cmd` = 0
  result.`ee_roll_cmd` = 0
  result.`ee_pitch_cmd` = 0
  result.`waist_cmd` = 0
  result.`gripper_cmd` = 0
  result.`pose_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
  result.`gripper_pwm_cmd` = 0
  result.`torque_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsArmJoy; w: var Writer) =
  putInteger(w,value.`ee_x_cmd`)
  putInteger(w,value.`ee_y_cmd`)
  putInteger(w,value.`ee_z_cmd`)
  putInteger(w,value.`ee_roll_cmd`)
  putInteger(w,value.`ee_pitch_cmd`)
  putInteger(w,value.`waist_cmd`)
  putInteger(w,value.`gripper_cmd`)
  putInteger(w,value.`pose_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
  putInteger(w,value.`gripper_pwm_cmd`)
  putInteger(w,value.`torque_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsArmJoy*(r: var Reader): Ros1Interbotix_xs_msgsArmJoy =
  result = initRos1Interbotix_xs_msgsArmJoy()
  result.`ee_x_cmd` = getInteger(r,int8)
  result.`ee_y_cmd` = getInteger(r,int8)
  result.`ee_z_cmd` = getInteger(r,int8)
  result.`ee_roll_cmd` = getInteger(r,int8)
  result.`ee_pitch_cmd` = getInteger(r,int8)
  result.`waist_cmd` = getInteger(r,int8)
  result.`gripper_cmd` = getInteger(r,int8)
  result.`pose_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
  result.`gripper_pwm_cmd` = getInteger(r,int8)
  result.`torque_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsArmJoy): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsArmJoy*(b: seq[byte]): Ros1Interbotix_xs_msgsArmJoy =
  var r = initReader(b,12)
  result = readRos1Interbotix_xs_msgsArmJoy(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/HexJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsHexJoy* = object
  ## @brief Preserve original world_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `world_x_cmd`*: int8
  ## @brief Preserve original world_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `world_y_cmd`*: int8
  ## @brief Preserve original world_yaw_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `world_yaw_cmd`*: int8
  ## @brief Preserve original place_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_x_cmd`*: int8
  ## @brief Preserve original place_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_y_cmd`*: int8
  ## @brief Preserve original place_z_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_z_cmd`*: int8
  ## @brief Preserve original place_roll_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_roll_cmd`*: int8
  ## @brief Preserve original place_pitch_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_pitch_cmd`*: int8
  ## @brief Preserve original pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose_cmd`*: int8
  ## @brief Preserve original move_type_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `move_type_cmd`*: int8
  ## @brief Preserve original gait_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gait_toggle_cmd`*: int8
  ## @brief Preserve original leg_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leg_toggle_cmd`*: int8
  ## @brief Preserve original stance_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `stance_cmd`*: int8
  ## @brief Preserve original reboot_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `reboot_cmd`*: int8
  ## @brief Preserve original set_home_pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `set_home_pose_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
const Ros1Interbotix_xs_msgsHexJoyMaximumWireBytes* = 17
const Ros1Interbotix_xs_msgsHexJoyCodecIdentity* = "UWVMROS1_b37a8bd136e63b066c12429e68af0721bb314a0b1131cb7e0e806faa56e04b37"
const Ros1Interbotix_xs_msgsHexJoyNativeType* = "interbotix_xs_msgs/HexJoy"
const Ros1Interbotix_xs_msgsHexJoyNativeIdentity* = ""
const Ros1Interbotix_xs_msgsHexJoy_WORLD_X_INC*: int8 = 1'i8
const Ros1Interbotix_xs_msgsHexJoy_WORLD_X_DEC*: int8 = 2'i8
const Ros1Interbotix_xs_msgsHexJoy_WORLD_Y_INC*: int8 = 3'i8
const Ros1Interbotix_xs_msgsHexJoy_WORLD_Y_DEC*: int8 = 4'i8
const Ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CCW*: int8 = 5'i8
const Ros1Interbotix_xs_msgsHexJoy_WORLD_YAW_CW*: int8 = 6'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_X_INC*: int8 = 7'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_X_DEC*: int8 = 8'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_Y_INC*: int8 = 9'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_Y_DEC*: int8 = 10'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_Z_INC*: int8 = 11'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_Z_DEC*: int8 = 12'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CCW*: int8 = 13'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_ROLL_CW*: int8 = 14'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_UP*: int8 = 15'i8
const Ros1Interbotix_xs_msgsHexJoy_PLACE_PITCH_DOWN*: int8 = 16'i8
const Ros1Interbotix_xs_msgsHexJoy_MOVE_HEXAPOD*: int8 = 17'i8
const Ros1Interbotix_xs_msgsHexJoy_MOVE_LEG*: int8 = 18'i8
const Ros1Interbotix_xs_msgsHexJoy_HOME_POSE*: int8 = 19'i8
const Ros1Interbotix_xs_msgsHexJoy_SLEEP_POSE*: int8 = 20'i8
const Ros1Interbotix_xs_msgsHexJoy_GAIT_NEXT*: int8 = 21'i8
const Ros1Interbotix_xs_msgsHexJoy_GAIT_PREVIOUS*: int8 = 22'i8
const Ros1Interbotix_xs_msgsHexJoy_LEG_NEXT*: int8 = 23'i8
const Ros1Interbotix_xs_msgsHexJoy_LEG_PREVIOUS*: int8 = 24'i8
const Ros1Interbotix_xs_msgsHexJoy_WIDEN_STANCE*: int8 = 25'i8
const Ros1Interbotix_xs_msgsHexJoy_NARROW_STANCE*: int8 = 26'i8
const Ros1Interbotix_xs_msgsHexJoy_REBOOT_MOTORS*: int8 = 27'i8
const Ros1Interbotix_xs_msgsHexJoy_SET_HOME_POSE*: int8 = 28'i8
const Ros1Interbotix_xs_msgsHexJoy_SPEED_INC*: int8 = 29'i8
const Ros1Interbotix_xs_msgsHexJoy_SPEED_DEC*: int8 = 30'i8
const Ros1Interbotix_xs_msgsHexJoy_SPEED_COURSE*: int8 = 31'i8
const Ros1Interbotix_xs_msgsHexJoy_SPEED_FINE*: int8 = 32'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsHexJoy*(): Ros1Interbotix_xs_msgsHexJoy =
  result.`world_x_cmd` = 0
  result.`world_y_cmd` = 0
  result.`world_yaw_cmd` = 0
  result.`place_x_cmd` = 0
  result.`place_y_cmd` = 0
  result.`place_z_cmd` = 0
  result.`place_roll_cmd` = 0
  result.`place_pitch_cmd` = 0
  result.`pose_cmd` = 0
  result.`move_type_cmd` = 0
  result.`gait_toggle_cmd` = 0
  result.`leg_toggle_cmd` = 0
  result.`stance_cmd` = 0
  result.`reboot_cmd` = 0
  result.`set_home_pose_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsHexJoy; w: var Writer) =
  putInteger(w,value.`world_x_cmd`)
  putInteger(w,value.`world_y_cmd`)
  putInteger(w,value.`world_yaw_cmd`)
  putInteger(w,value.`place_x_cmd`)
  putInteger(w,value.`place_y_cmd`)
  putInteger(w,value.`place_z_cmd`)
  putInteger(w,value.`place_roll_cmd`)
  putInteger(w,value.`place_pitch_cmd`)
  putInteger(w,value.`pose_cmd`)
  putInteger(w,value.`move_type_cmd`)
  putInteger(w,value.`gait_toggle_cmd`)
  putInteger(w,value.`leg_toggle_cmd`)
  putInteger(w,value.`stance_cmd`)
  putInteger(w,value.`reboot_cmd`)
  putInteger(w,value.`set_home_pose_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsHexJoy*(r: var Reader): Ros1Interbotix_xs_msgsHexJoy =
  result = initRos1Interbotix_xs_msgsHexJoy()
  result.`world_x_cmd` = getInteger(r,int8)
  result.`world_y_cmd` = getInteger(r,int8)
  result.`world_yaw_cmd` = getInteger(r,int8)
  result.`place_x_cmd` = getInteger(r,int8)
  result.`place_y_cmd` = getInteger(r,int8)
  result.`place_z_cmd` = getInteger(r,int8)
  result.`place_roll_cmd` = getInteger(r,int8)
  result.`place_pitch_cmd` = getInteger(r,int8)
  result.`pose_cmd` = getInteger(r,int8)
  result.`move_type_cmd` = getInteger(r,int8)
  result.`gait_toggle_cmd` = getInteger(r,int8)
  result.`leg_toggle_cmd` = getInteger(r,int8)
  result.`stance_cmd` = getInteger(r,int8)
  result.`reboot_cmd` = getInteger(r,int8)
  result.`set_home_pose_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsHexJoy): seq[byte] =
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsHexJoy*(b: seq[byte]): Ros1Interbotix_xs_msgsHexJoy =
  var r = initReader(b,17)
  result = readRos1Interbotix_xs_msgsHexJoy(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/JointGroupCommand.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsJointGroupCommand* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original cmd as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `cmd`*: seq[float32]
const Ros1Interbotix_xs_msgsJointGroupCommandMaximumWireBytes* = 392
const Ros1Interbotix_xs_msgsJointGroupCommandCodecIdentity* = "UWVMROS1_4fc3c13db66a0c916112022ddf02bd4be872e1b6124c7f2db43271b3a7b186ec"
const Ros1Interbotix_xs_msgsJointGroupCommandNativeType* = "interbotix_xs_msgs/JointGroupCommand"
const Ros1Interbotix_xs_msgsJointGroupCommandNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsJointGroupCommand*(): Ros1Interbotix_xs_msgsJointGroupCommand =
  result.`name` = ""
  result.`cmd` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsJointGroupCommand; w: var Writer) =
  putString(w,value.`name`,128)
  if value.`cmd`.len > 64: fail(22)
  putInteger(w,uint32(value.`cmd`.len))
  for e in value.`cmd`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsJointGroupCommand*(r: var Reader): Ros1Interbotix_xs_msgsJointGroupCommand =
  result = initRos1Interbotix_xs_msgsJointGroupCommand()
  result.`name` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`cmd` = newSeq[float32](count1)
  for i in 0..<count1:
    result.`cmd`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsJointGroupCommand): seq[byte] =
  var w = initWriter(392)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsJointGroupCommand*(b: seq[byte]): Ros1Interbotix_xs_msgsJointGroupCommand =
  var r = initReader(b,392)
  result = readRos1Interbotix_xs_msgsJointGroupCommand(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/JointSingleCommand.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsJointSingleCommand* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original cmd as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `cmd`*: float32
const Ros1Interbotix_xs_msgsJointSingleCommandMaximumWireBytes* = 136
const Ros1Interbotix_xs_msgsJointSingleCommandCodecIdentity* = "UWVMROS1_6852cc1330e9c60378a89981a25fc2b01338a71225e57478c824a3aebc8b1af0"
const Ros1Interbotix_xs_msgsJointSingleCommandNativeType* = "interbotix_xs_msgs/JointSingleCommand"
const Ros1Interbotix_xs_msgsJointSingleCommandNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsJointSingleCommand*(): Ros1Interbotix_xs_msgsJointSingleCommand =
  result.`name` = ""
  result.`cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsJointSingleCommand; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat32(w,value.`cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsJointSingleCommand*(r: var Reader): Ros1Interbotix_xs_msgsJointSingleCommand =
  result = initRos1Interbotix_xs_msgsJointSingleCommand()
  result.`name` = getString(r,128)
  result.`cmd` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsJointSingleCommand): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsJointSingleCommand*(b: seq[byte]): Ros1Interbotix_xs_msgsJointSingleCommand =
  var r = initReader(b,136)
  result = readRos1Interbotix_xs_msgsJointSingleCommand(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/JointTemps.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsJointTemps* = object
  ## @brief Preserve original names as string.
  ## @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `names`*: seq[string]
  ## @brief Preserve original temps as int32.
  ## @details At most 64 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `temps`*: seq[int32]
const Ros1Interbotix_xs_msgsJointTempsMaximumWireBytes* = 8712
const Ros1Interbotix_xs_msgsJointTempsCodecIdentity* = "UWVMROS1_054409e3e97b0797e9c82e5c9d0dd5d7be1d421d3c78924dca8097e9ceb1a511"
const Ros1Interbotix_xs_msgsJointTempsNativeType* = "interbotix_xs_msgs/JointTemps"
const Ros1Interbotix_xs_msgsJointTempsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsJointTemps*(): Ros1Interbotix_xs_msgsJointTemps =
  result.`names` = @[]
  result.`temps` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsJointTemps; w: var Writer) =
  if value.`names`.len > 64: fail(22)
  putInteger(w,uint32(value.`names`.len))
  for e in value.`names`:
    putString(w,e,128)
  if value.`temps`.len > 64: fail(22)
  putInteger(w,uint32(value.`temps`.len))
  for e in value.`temps`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsJointTemps*(r: var Reader): Ros1Interbotix_xs_msgsJointTemps =
  result = initRos1Interbotix_xs_msgsJointTemps()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 64: fail(22)
  let count0 = int(rawcount0)
  result.`names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`names`[i] = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`temps` = newSeq[int32](count1)
  for i in 0..<count1:
    result.`temps`[i] = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsJointTemps): seq[byte] =
  var w = initWriter(8712)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsJointTemps*(b: seq[byte]): Ros1Interbotix_xs_msgsJointTemps =
  var r = initReader(b,8712)
  result = readRos1Interbotix_xs_msgsJointTemps(r)
  finish(r)
## @brief Own every original field of ROS1 time.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Time* = object
  ## @brief Preserve original sec as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sec`*: uint32
  ## @brief Preserve original nsec as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `nsec`*: uint32
const Ros1TimeMaximumWireBytes* = 8
const Ros1TimeCodecIdentity* = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
const Ros1TimeNativeType* = "time"
const Ros1TimeNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Time*(): Ros1Time =
  result.`sec` = 0
  result.`nsec` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Time; w: var Writer) =
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Time*(r: var Reader): Ros1Time =
  result = initRos1Time()
  result.`sec` = getInteger(r,uint32)
  result.`nsec` = getInteger(r,uint32)
  if result.`nsec` >= 1000000000: fail(22)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Time): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Time*(b: seq[byte]): Ros1Time =
  var r = initReader(b,8)
  result = readRos1Time(r)
  finish(r)
## @brief Own every original field of ROS1 std_msgs/Header.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_msgsHeader* = object
  ## @brief Preserve original seq as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `seq`*: uint32
  ## @brief Preserve original stamp as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `stamp`*: Ros1Time
  ## @brief Preserve original frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `frame_id`*: string
const Ros1Std_msgsHeaderMaximumWireBytes* = 144
const Ros1Std_msgsHeaderCodecIdentity* = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
const Ros1Std_msgsHeaderNativeType* = "std_msgs/Header"
const Ros1Std_msgsHeaderNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_msgsHeader*(): Ros1Std_msgsHeader =
  result.`seq` = 0
  result.`stamp` = initRos1Time()
  result.`frame_id` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_msgsHeader; w: var Writer) =
  putInteger(w,value.`seq`)
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_msgsHeader*(r: var Reader): Ros1Std_msgsHeader =
  result = initRos1Std_msgsHeader()
  result.`seq` = getInteger(r,uint32)
  result.`stamp` = readRos1Time(r)
  result.`frame_id` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_msgsHeader): seq[byte] =
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_msgsHeader*(b: seq[byte]): Ros1Std_msgsHeader =
  var r = initReader(b,144)
  result = readRos1Std_msgsHeader(r)
  finish(r)
## @brief Own every original field of ROS1 duration.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Duration* = object
  ## @brief Preserve original sec as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sec`*: int32
  ## @brief Preserve original nsec as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `nsec`*: int32
const Ros1DurationMaximumWireBytes* = 8
const Ros1DurationCodecIdentity* = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
const Ros1DurationNativeType* = "duration"
const Ros1DurationNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Duration*(): Ros1Duration =
  result.`sec` = 0
  result.`nsec` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Duration; w: var Writer) =
  if value.`nsec` < 0: fail(22)
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Duration*(r: var Reader): Ros1Duration =
  result = initRos1Duration()
  result.`sec` = getInteger(r,int32)
  result.`nsec` = getInteger(r,int32)
  if result.`nsec` < 0: fail(22)
  if result.`nsec` >= 1000000000: fail(22)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Duration): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Duration*(b: seq[byte]): Ros1Duration =
  var r = initReader(b,8)
  result = readRos1Duration(r)
  finish(r)
## @brief Own every original field of ROS1 trajectory_msgs/JointTrajectoryPoint.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Trajectory_msgsJointTrajectoryPoint* = object
  ## @brief Preserve original positions as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `positions`*: seq[float64]
  ## @brief Preserve original velocities as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `velocities`*: seq[float64]
  ## @brief Preserve original accelerations as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `accelerations`*: seq[float64]
  ## @brief Preserve original effort as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `effort`*: seq[float64]
  ## @brief Preserve original time_from_start as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `time_from_start`*: Ros1Duration
const Ros1Trajectory_msgsJointTrajectoryPointMaximumWireBytes* = 536
const Ros1Trajectory_msgsJointTrajectoryPointCodecIdentity* = "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81"
const Ros1Trajectory_msgsJointTrajectoryPointNativeType* = "trajectory_msgs/JointTrajectoryPoint"
const Ros1Trajectory_msgsJointTrajectoryPointNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Trajectory_msgsJointTrajectoryPoint*(): Ros1Trajectory_msgsJointTrajectoryPoint =
  result.`positions` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`effort` = @[]
  result.`time_from_start` = initRos1Duration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Trajectory_msgsJointTrajectoryPoint; w: var Writer) =
  if value.`positions`.len > 16: fail(22)
  putInteger(w,uint32(value.`positions`.len))
  for e in value.`positions`:
    putFloat64(w,e)
  if value.`velocities`.len > 16: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    putFloat64(w,e)
  if value.`accelerations`.len > 16: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    putFloat64(w,e)
  if value.`effort`.len > 16: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
  writeFields(value.`time_from_start`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Trajectory_msgsJointTrajectoryPoint*(r: var Reader): Ros1Trajectory_msgsJointTrajectoryPoint =
  result = initRos1Trajectory_msgsJointTrajectoryPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`positions` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
  result.`time_from_start` = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Trajectory_msgsJointTrajectoryPoint): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Trajectory_msgsJointTrajectoryPoint*(b: seq[byte]): Ros1Trajectory_msgsJointTrajectoryPoint =
  var r = initReader(b,536)
  result = readRos1Trajectory_msgsJointTrajectoryPoint(r)
  finish(r)
## @brief Own every original field of ROS1 trajectory_msgs/JointTrajectory.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Trajectory_msgsJointTrajectory* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original joint_names as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `joint_names`*: seq[string]
  ## @brief Preserve original points as trajectory_msgs/JointTrajectoryPoint.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `points`*: seq[Ros1Trajectory_msgsJointTrajectoryPoint]
const Ros1Trajectory_msgsJointTrajectoryMaximumWireBytes* = 4408
const Ros1Trajectory_msgsJointTrajectoryCodecIdentity* = "UWVMROS1_2fd934a09c8256baeb450d670d83acc51bad97dc2e7ad750126353964fa6c2b9"
const Ros1Trajectory_msgsJointTrajectoryNativeType* = "trajectory_msgs/JointTrajectory"
const Ros1Trajectory_msgsJointTrajectoryNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Trajectory_msgsJointTrajectory*(): Ros1Trajectory_msgsJointTrajectory =
  result.`header` = initRos1Std_msgsHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Trajectory_msgsJointTrajectory; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,128)
  if value.`points`.len > 4: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Trajectory_msgsJointTrajectory*(r: var Reader): Ros1Trajectory_msgsJointTrajectory =
  result = initRos1Trajectory_msgsJointTrajectory()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros1Trajectory_msgsJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos1Trajectory_msgsJointTrajectoryPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Trajectory_msgsJointTrajectory): seq[byte] =
  var w = initWriter(4408)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Trajectory_msgsJointTrajectory*(b: seq[byte]): Ros1Trajectory_msgsJointTrajectory =
  var r = initReader(b,4408)
  result = readRos1Trajectory_msgsJointTrajectory(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/JointTrajectoryCommand.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsJointTrajectoryCommand* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original traj as trajectory_msgs/JointTrajectory.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `traj`*: Ros1Trajectory_msgsJointTrajectory
const Ros1Interbotix_xs_msgsJointTrajectoryCommandMaximumWireBytes* = 4672
const Ros1Interbotix_xs_msgsJointTrajectoryCommandCodecIdentity* = "UWVMROS1_e14b0742b1f9fa372adf0af54f8e3493add79d33b1edd46cdf63c8b936f465d7"
const Ros1Interbotix_xs_msgsJointTrajectoryCommandNativeType* = "interbotix_xs_msgs/JointTrajectoryCommand"
const Ros1Interbotix_xs_msgsJointTrajectoryCommandNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsJointTrajectoryCommand*(): Ros1Interbotix_xs_msgsJointTrajectoryCommand =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`traj` = initRos1Trajectory_msgsJointTrajectory()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsJointTrajectoryCommand; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  writeFields(value.`traj`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsJointTrajectoryCommand*(r: var Reader): Ros1Interbotix_xs_msgsJointTrajectoryCommand =
  result = initRos1Interbotix_xs_msgsJointTrajectoryCommand()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`traj` = readRos1Trajectory_msgsJointTrajectory(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsJointTrajectoryCommand): seq[byte] =
  var w = initWriter(4672)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsJointTrajectoryCommand*(b: seq[byte]): Ros1Interbotix_xs_msgsJointTrajectoryCommand =
  var r = initReader(b,4672)
  result = readRos1Interbotix_xs_msgsJointTrajectoryCommand(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/LocobotJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsLocobotJoy* = object
  ## @brief Preserve original base_x_cmd as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `base_x_cmd`*: float64
  ## @brief Preserve original base_theta_cmd as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `base_theta_cmd`*: float64
  ## @brief Preserve original base_reset_odom_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `base_reset_odom_cmd`*: int8
  ## @brief Preserve original pan_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pan_cmd`*: int8
  ## @brief Preserve original tilt_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `tilt_cmd`*: int8
  ## @brief Preserve original ee_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_x_cmd`*: int8
  ## @brief Preserve original ee_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_y_cmd`*: int8
  ## @brief Preserve original ee_z_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_z_cmd`*: int8
  ## @brief Preserve original ee_roll_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_roll_cmd`*: int8
  ## @brief Preserve original ee_pitch_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_pitch_cmd`*: int8
  ## @brief Preserve original waist_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `waist_cmd`*: int8
  ## @brief Preserve original gripper_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_cmd`*: int8
  ## @brief Preserve original pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
  ## @brief Preserve original gripper_pwm_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_pwm_cmd`*: int8
const Ros1Interbotix_xs_msgsLocobotJoyMaximumWireBytes* = 30
const Ros1Interbotix_xs_msgsLocobotJoyCodecIdentity* = "UWVMROS1_6463e76903b4bd46f2cc65e2bc902d65d0d1424258f965b25e519c1e4a012613"
const Ros1Interbotix_xs_msgsLocobotJoyNativeType* = "interbotix_xs_msgs/LocobotJoy"
const Ros1Interbotix_xs_msgsLocobotJoyNativeIdentity* = ""
const Ros1Interbotix_xs_msgsLocobotJoy_RESET_ODOM*: int8 = 1'i8
const Ros1Interbotix_xs_msgsLocobotJoy_PAN_CCW*: int8 = 2'i8
const Ros1Interbotix_xs_msgsLocobotJoy_PAN_CW*: int8 = 3'i8
const Ros1Interbotix_xs_msgsLocobotJoy_TILT_UP*: int8 = 4'i8
const Ros1Interbotix_xs_msgsLocobotJoy_TILT_DOWN*: int8 = 5'i8
const Ros1Interbotix_xs_msgsLocobotJoy_PAN_TILT_HOME*: int8 = 6'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_X_INC*: int8 = 7'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_X_DEC*: int8 = 8'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_Y_INC*: int8 = 9'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_Y_DEC*: int8 = 10'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_Z_INC*: int8 = 11'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_Z_DEC*: int8 = 12'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CCW*: int8 = 13'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_ROLL_CW*: int8 = 14'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_UP*: int8 = 15'i8
const Ros1Interbotix_xs_msgsLocobotJoy_EE_PITCH_DOWN*: int8 = 16'i8
const Ros1Interbotix_xs_msgsLocobotJoy_WAIST_CCW*: int8 = 17'i8
const Ros1Interbotix_xs_msgsLocobotJoy_WAIST_CW*: int8 = 18'i8
const Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_OPEN*: int8 = 19'i8
const Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_CLOSE*: int8 = 20'i8
const Ros1Interbotix_xs_msgsLocobotJoy_HOME_POSE*: int8 = 21'i8
const Ros1Interbotix_xs_msgsLocobotJoy_SLEEP_POSE*: int8 = 22'i8
const Ros1Interbotix_xs_msgsLocobotJoy_SPEED_INC*: int8 = 23'i8
const Ros1Interbotix_xs_msgsLocobotJoy_SPEED_DEC*: int8 = 24'i8
const Ros1Interbotix_xs_msgsLocobotJoy_SPEED_COURSE*: int8 = 25'i8
const Ros1Interbotix_xs_msgsLocobotJoy_SPEED_FINE*: int8 = 26'i8
const Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_INC*: int8 = 27'i8
const Ros1Interbotix_xs_msgsLocobotJoy_GRIPPER_PWM_DEC*: int8 = 28'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsLocobotJoy*(): Ros1Interbotix_xs_msgsLocobotJoy =
  result.`base_x_cmd` = 0
  result.`base_theta_cmd` = 0
  result.`base_reset_odom_cmd` = 0
  result.`pan_cmd` = 0
  result.`tilt_cmd` = 0
  result.`ee_x_cmd` = 0
  result.`ee_y_cmd` = 0
  result.`ee_z_cmd` = 0
  result.`ee_roll_cmd` = 0
  result.`ee_pitch_cmd` = 0
  result.`waist_cmd` = 0
  result.`gripper_cmd` = 0
  result.`pose_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
  result.`gripper_pwm_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsLocobotJoy; w: var Writer) =
  putFloat64(w,value.`base_x_cmd`)
  putFloat64(w,value.`base_theta_cmd`)
  putInteger(w,value.`base_reset_odom_cmd`)
  putInteger(w,value.`pan_cmd`)
  putInteger(w,value.`tilt_cmd`)
  putInteger(w,value.`ee_x_cmd`)
  putInteger(w,value.`ee_y_cmd`)
  putInteger(w,value.`ee_z_cmd`)
  putInteger(w,value.`ee_roll_cmd`)
  putInteger(w,value.`ee_pitch_cmd`)
  putInteger(w,value.`waist_cmd`)
  putInteger(w,value.`gripper_cmd`)
  putInteger(w,value.`pose_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
  putInteger(w,value.`gripper_pwm_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsLocobotJoy*(r: var Reader): Ros1Interbotix_xs_msgsLocobotJoy =
  result = initRos1Interbotix_xs_msgsLocobotJoy()
  result.`base_x_cmd` = getFloat64(r)
  result.`base_theta_cmd` = getFloat64(r)
  result.`base_reset_odom_cmd` = getInteger(r,int8)
  result.`pan_cmd` = getInteger(r,int8)
  result.`tilt_cmd` = getInteger(r,int8)
  result.`ee_x_cmd` = getInteger(r,int8)
  result.`ee_y_cmd` = getInteger(r,int8)
  result.`ee_z_cmd` = getInteger(r,int8)
  result.`ee_roll_cmd` = getInteger(r,int8)
  result.`ee_pitch_cmd` = getInteger(r,int8)
  result.`waist_cmd` = getInteger(r,int8)
  result.`gripper_cmd` = getInteger(r,int8)
  result.`pose_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
  result.`gripper_pwm_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsLocobotJoy): seq[byte] =
  var w = initWriter(30)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsLocobotJoy*(b: seq[byte]): Ros1Interbotix_xs_msgsLocobotJoy =
  var r = initReader(b,30)
  result = readRos1Interbotix_xs_msgsLocobotJoy(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/MotorGainsRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsMotorGainsRequest* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original kp_pos as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `kp_pos`*: int32
  ## @brief Preserve original ki_pos as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ki_pos`*: int32
  ## @brief Preserve original kd_pos as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `kd_pos`*: int32
  ## @brief Preserve original k1 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `k1`*: int32
  ## @brief Preserve original k2 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `k2`*: int32
  ## @brief Preserve original kp_vel as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `kp_vel`*: int32
  ## @brief Preserve original ki_vel as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ki_vel`*: int32
const Ros1Interbotix_xs_msgsMotorGainsRequestMaximumWireBytes* = 292
const Ros1Interbotix_xs_msgsMotorGainsRequestCodecIdentity* = "UWVMROS1_76fb61f914b65b53579fdbf64eb545a997f38c9b51111e6ae462c95169596009"
const Ros1Interbotix_xs_msgsMotorGainsRequestNativeType* = "interbotix_xs_msgs/MotorGainsRequest"
const Ros1Interbotix_xs_msgsMotorGainsRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsMotorGainsRequest*(): Ros1Interbotix_xs_msgsMotorGainsRequest =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`kp_pos` = 0
  result.`ki_pos` = 0
  result.`kd_pos` = 0
  result.`k1` = 0
  result.`k2` = 0
  result.`kp_vel` = 0
  result.`ki_vel` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsMotorGainsRequest; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putInteger(w,value.`kp_pos`)
  putInteger(w,value.`ki_pos`)
  putInteger(w,value.`kd_pos`)
  putInteger(w,value.`k1`)
  putInteger(w,value.`k2`)
  putInteger(w,value.`kp_vel`)
  putInteger(w,value.`ki_vel`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsMotorGainsRequest*(r: var Reader): Ros1Interbotix_xs_msgsMotorGainsRequest =
  result = initRos1Interbotix_xs_msgsMotorGainsRequest()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`kp_pos` = getInteger(r,int32)
  result.`ki_pos` = getInteger(r,int32)
  result.`kd_pos` = getInteger(r,int32)
  result.`k1` = getInteger(r,int32)
  result.`k2` = getInteger(r,int32)
  result.`kp_vel` = getInteger(r,int32)
  result.`ki_vel` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsMotorGainsRequest): seq[byte] =
  var w = initWriter(292)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsMotorGainsRequest*(b: seq[byte]): Ros1Interbotix_xs_msgsMotorGainsRequest =
  var r = initReader(b,292)
  result = readRos1Interbotix_xs_msgsMotorGainsRequest(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/MotorGainsResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsMotorGainsResponse* = object
const Ros1Interbotix_xs_msgsMotorGainsResponseMaximumWireBytes* = 0
const Ros1Interbotix_xs_msgsMotorGainsResponseCodecIdentity* = "UWVMROS1_813a545cdc27f32aad5d4716a649832feebeeaddae69abdf8f64d552f757fd89"
const Ros1Interbotix_xs_msgsMotorGainsResponseNativeType* = "interbotix_xs_msgs/MotorGainsResponse"
const Ros1Interbotix_xs_msgsMotorGainsResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsMotorGainsResponse*(): Ros1Interbotix_xs_msgsMotorGainsResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsMotorGainsResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsMotorGainsResponse*(r: var Reader): Ros1Interbotix_xs_msgsMotorGainsResponse =
  result = initRos1Interbotix_xs_msgsMotorGainsResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsMotorGainsResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsMotorGainsResponse*(b: seq[byte]): Ros1Interbotix_xs_msgsMotorGainsResponse =
  var r = initReader(b,0)
  result = readRos1Interbotix_xs_msgsMotorGainsResponse(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/OperatingModesRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsOperatingModesRequest* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original mode as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `mode`*: string
  ## @brief Preserve original profile_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `profile_type`*: string
  ## @brief Preserve original profile_velocity as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `profile_velocity`*: int32
  ## @brief Preserve original profile_acceleration as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `profile_acceleration`*: int32
const Ros1Interbotix_xs_msgsOperatingModesRequestMaximumWireBytes* = 536
const Ros1Interbotix_xs_msgsOperatingModesRequestCodecIdentity* = "UWVMROS1_cc0defc5d8cb4c230ea3b0f3bc50a6d271bc395621792897d1e80aae62adb7b3"
const Ros1Interbotix_xs_msgsOperatingModesRequestNativeType* = "interbotix_xs_msgs/OperatingModesRequest"
const Ros1Interbotix_xs_msgsOperatingModesRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsOperatingModesRequest*(): Ros1Interbotix_xs_msgsOperatingModesRequest =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`mode` = ""
  result.`profile_type` = ""
  result.`profile_velocity` = 0
  result.`profile_acceleration` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsOperatingModesRequest; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putString(w,value.`mode`,128)
  putString(w,value.`profile_type`,128)
  putInteger(w,value.`profile_velocity`)
  putInteger(w,value.`profile_acceleration`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsOperatingModesRequest*(r: var Reader): Ros1Interbotix_xs_msgsOperatingModesRequest =
  result = initRos1Interbotix_xs_msgsOperatingModesRequest()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`mode` = getString(r,128)
  result.`profile_type` = getString(r,128)
  result.`profile_velocity` = getInteger(r,int32)
  result.`profile_acceleration` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsOperatingModesRequest): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsOperatingModesRequest*(b: seq[byte]): Ros1Interbotix_xs_msgsOperatingModesRequest =
  var r = initReader(b,536)
  result = readRos1Interbotix_xs_msgsOperatingModesRequest(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/OperatingModesResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsOperatingModesResponse* = object
const Ros1Interbotix_xs_msgsOperatingModesResponseMaximumWireBytes* = 0
const Ros1Interbotix_xs_msgsOperatingModesResponseCodecIdentity* = "UWVMROS1_5249025c535de294ab7e25ed0089749a891cd55451811dbac7aeef7daa75347e"
const Ros1Interbotix_xs_msgsOperatingModesResponseNativeType* = "interbotix_xs_msgs/OperatingModesResponse"
const Ros1Interbotix_xs_msgsOperatingModesResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsOperatingModesResponse*(): Ros1Interbotix_xs_msgsOperatingModesResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsOperatingModesResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsOperatingModesResponse*(r: var Reader): Ros1Interbotix_xs_msgsOperatingModesResponse =
  result = initRos1Interbotix_xs_msgsOperatingModesResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsOperatingModesResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsOperatingModesResponse*(b: seq[byte]): Ros1Interbotix_xs_msgsOperatingModesResponse =
  var r = initReader(b,0)
  result = readRos1Interbotix_xs_msgsOperatingModesResponse(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/RebootRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsRebootRequest* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original enable as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enable`*: bool
  ## @brief Preserve original smart_reboot as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `smart_reboot`*: bool
const Ros1Interbotix_xs_msgsRebootRequestMaximumWireBytes* = 266
const Ros1Interbotix_xs_msgsRebootRequestCodecIdentity* = "UWVMROS1_5098fab3302fc6de5c2e24e82ca6f57ee4f358d9862ceb3a20c09435aa563f0a"
const Ros1Interbotix_xs_msgsRebootRequestNativeType* = "interbotix_xs_msgs/RebootRequest"
const Ros1Interbotix_xs_msgsRebootRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsRebootRequest*(): Ros1Interbotix_xs_msgsRebootRequest =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`enable` = false
  result.`smart_reboot` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsRebootRequest; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putBool(w,value.`enable`)
  putBool(w,value.`smart_reboot`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsRebootRequest*(r: var Reader): Ros1Interbotix_xs_msgsRebootRequest =
  result = initRos1Interbotix_xs_msgsRebootRequest()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`enable` = getBool(r)
  result.`smart_reboot` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsRebootRequest): seq[byte] =
  var w = initWriter(266)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsRebootRequest*(b: seq[byte]): Ros1Interbotix_xs_msgsRebootRequest =
  var r = initReader(b,266)
  result = readRos1Interbotix_xs_msgsRebootRequest(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/RebootResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsRebootResponse* = object
const Ros1Interbotix_xs_msgsRebootResponseMaximumWireBytes* = 0
const Ros1Interbotix_xs_msgsRebootResponseCodecIdentity* = "UWVMROS1_06aedc58f7bb6f26d5e54cd905f3d223ba297806e914a84a8fff02fe307a97a4"
const Ros1Interbotix_xs_msgsRebootResponseNativeType* = "interbotix_xs_msgs/RebootResponse"
const Ros1Interbotix_xs_msgsRebootResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsRebootResponse*(): Ros1Interbotix_xs_msgsRebootResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsRebootResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsRebootResponse*(r: var Reader): Ros1Interbotix_xs_msgsRebootResponse =
  result = initRos1Interbotix_xs_msgsRebootResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsRebootResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsRebootResponse*(b: seq[byte]): Ros1Interbotix_xs_msgsRebootResponse =
  var r = initReader(b,0)
  result = readRos1Interbotix_xs_msgsRebootResponse(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/RegisterValuesRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsRegisterValuesRequest* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original reg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `reg`*: string
  ## @brief Preserve original value as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `value`*: int32
const Ros1Interbotix_xs_msgsRegisterValuesRequestMaximumWireBytes* = 400
const Ros1Interbotix_xs_msgsRegisterValuesRequestCodecIdentity* = "UWVMROS1_e36f16bc2726f62b78852f690f13540ff9ba93c9ee4363624c007e7819312a4a"
const Ros1Interbotix_xs_msgsRegisterValuesRequestNativeType* = "interbotix_xs_msgs/RegisterValuesRequest"
const Ros1Interbotix_xs_msgsRegisterValuesRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsRegisterValuesRequest*(): Ros1Interbotix_xs_msgsRegisterValuesRequest =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`reg` = ""
  result.`value` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsRegisterValuesRequest; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putString(w,value.`reg`,128)
  putInteger(w,value.`value`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsRegisterValuesRequest*(r: var Reader): Ros1Interbotix_xs_msgsRegisterValuesRequest =
  result = initRos1Interbotix_xs_msgsRegisterValuesRequest()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`reg` = getString(r,128)
  result.`value` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsRegisterValuesRequest): seq[byte] =
  var w = initWriter(400)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsRegisterValuesRequest*(b: seq[byte]): Ros1Interbotix_xs_msgsRegisterValuesRequest =
  var r = initReader(b,400)
  result = readRos1Interbotix_xs_msgsRegisterValuesRequest(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/RegisterValuesResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsRegisterValuesResponse* = object
  ## @brief Preserve original values as int32.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `values`*: seq[int32]
const Ros1Interbotix_xs_msgsRegisterValuesResponseMaximumWireBytes* = 68
const Ros1Interbotix_xs_msgsRegisterValuesResponseCodecIdentity* = "UWVMROS1_9c7d3492c5d51a8d05f4fa0c4218e00194dabfb602271ec8ffc3075af9d2e659"
const Ros1Interbotix_xs_msgsRegisterValuesResponseNativeType* = "interbotix_xs_msgs/RegisterValuesResponse"
const Ros1Interbotix_xs_msgsRegisterValuesResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsRegisterValuesResponse*(): Ros1Interbotix_xs_msgsRegisterValuesResponse =
  result.`values` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsRegisterValuesResponse; w: var Writer) =
  if value.`values`.len > 16: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsRegisterValuesResponse*(r: var Reader): Ros1Interbotix_xs_msgsRegisterValuesResponse =
  result = initRos1Interbotix_xs_msgsRegisterValuesResponse()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`values` = newSeq[int32](count0)
  for i in 0..<count0:
    result.`values`[i] = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsRegisterValuesResponse): seq[byte] =
  var w = initWriter(68)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsRegisterValuesResponse*(b: seq[byte]): Ros1Interbotix_xs_msgsRegisterValuesResponse =
  var r = initReader(b,68)
  result = readRos1Interbotix_xs_msgsRegisterValuesResponse(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/RobotInfoRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsRobotInfoRequest* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
const Ros1Interbotix_xs_msgsRobotInfoRequestMaximumWireBytes* = 264
const Ros1Interbotix_xs_msgsRobotInfoRequestCodecIdentity* = "UWVMROS1_ead86305c002d1012c8779f9e7296776e27a3b00b4e3193acfdac16f79081176"
const Ros1Interbotix_xs_msgsRobotInfoRequestNativeType* = "interbotix_xs_msgs/RobotInfoRequest"
const Ros1Interbotix_xs_msgsRobotInfoRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsRobotInfoRequest*(): Ros1Interbotix_xs_msgsRobotInfoRequest =
  result.`cmd_type` = ""
  result.`name` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsRobotInfoRequest; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsRobotInfoRequest*(r: var Reader): Ros1Interbotix_xs_msgsRobotInfoRequest =
  result = initRos1Interbotix_xs_msgsRobotInfoRequest()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsRobotInfoRequest): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsRobotInfoRequest*(b: seq[byte]): Ros1Interbotix_xs_msgsRobotInfoRequest =
  var r = initReader(b,264)
  result = readRos1Interbotix_xs_msgsRobotInfoRequest(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/RobotInfoResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsRobotInfoResponse* = object
  ## @brief Preserve original mode as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `mode`*: string
  ## @brief Preserve original profile_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `profile_type`*: string
  ## @brief Preserve original joint_names as string.
  ## @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `joint_names`*: seq[string]
  ## @brief Preserve original joint_ids as int16.
  ## @details At most 64 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `joint_ids`*: seq[int16]
  ## @brief Preserve original joint_lower_limits as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_lower_limits`*: seq[float32]
  ## @brief Preserve original joint_upper_limits as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_upper_limits`*: seq[float32]
  ## @brief Preserve original joint_velocity_limits as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_velocity_limits`*: seq[float32]
  ## @brief Preserve original joint_sleep_positions as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_sleep_positions`*: seq[float32]
  ## @brief Preserve original joint_state_indices as int16.
  ## @details At most 64 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `joint_state_indices`*: seq[int16]
  ## @brief Preserve original num_joints as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `num_joints`*: int16
  ## @brief Preserve original name as string.
  ## @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `name`*: seq[string]
const Ros1Interbotix_xs_msgsRobotInfoResponseMaximumWireBytes* = 18474
const Ros1Interbotix_xs_msgsRobotInfoResponseCodecIdentity* = "UWVMROS1_0dfb738c428366ca7450d932212e3cc69d86042432b2ddd7cd58da3c0b6b6d5d"
const Ros1Interbotix_xs_msgsRobotInfoResponseNativeType* = "interbotix_xs_msgs/RobotInfoResponse"
const Ros1Interbotix_xs_msgsRobotInfoResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsRobotInfoResponse*(): Ros1Interbotix_xs_msgsRobotInfoResponse =
  result.`mode` = ""
  result.`profile_type` = ""
  result.`joint_names` = @[]
  result.`joint_ids` = @[]
  result.`joint_lower_limits` = @[]
  result.`joint_upper_limits` = @[]
  result.`joint_velocity_limits` = @[]
  result.`joint_sleep_positions` = @[]
  result.`joint_state_indices` = @[]
  result.`num_joints` = 0
  result.`name` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsRobotInfoResponse; w: var Writer) =
  putString(w,value.`mode`,128)
  putString(w,value.`profile_type`,128)
  if value.`joint_names`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,128)
  if value.`joint_ids`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_ids`.len))
  for e in value.`joint_ids`:
    putInteger(w,e)
  if value.`joint_lower_limits`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_lower_limits`.len))
  for e in value.`joint_lower_limits`:
    putFloat32(w,e)
  if value.`joint_upper_limits`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_upper_limits`.len))
  for e in value.`joint_upper_limits`:
    putFloat32(w,e)
  if value.`joint_velocity_limits`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_velocity_limits`.len))
  for e in value.`joint_velocity_limits`:
    putFloat32(w,e)
  if value.`joint_sleep_positions`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_sleep_positions`.len))
  for e in value.`joint_sleep_positions`:
    putFloat32(w,e)
  if value.`joint_state_indices`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_state_indices`.len))
  for e in value.`joint_state_indices`:
    putInteger(w,e)
  putInteger(w,value.`num_joints`)
  if value.`name`.len > 64: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsRobotInfoResponse*(r: var Reader): Ros1Interbotix_xs_msgsRobotInfoResponse =
  result = initRos1Interbotix_xs_msgsRobotInfoResponse()
  result.`mode` = getString(r,128)
  result.`profile_type` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`joint_names` = newSeq[string](count2)
  for i in 0..<count2:
    result.`joint_names`[i] = getString(r,128)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 64: fail(22)
  let count3 = int(rawcount3)
  result.`joint_ids` = newSeq[int16](count3)
  for i in 0..<count3:
    result.`joint_ids`[i] = getInteger(r,int16)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 64: fail(22)
  let count4 = int(rawcount4)
  result.`joint_lower_limits` = newSeq[float32](count4)
  for i in 0..<count4:
    result.`joint_lower_limits`[i] = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 64: fail(22)
  let count5 = int(rawcount5)
  result.`joint_upper_limits` = newSeq[float32](count5)
  for i in 0..<count5:
    result.`joint_upper_limits`[i] = getFloat32(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 64: fail(22)
  let count6 = int(rawcount6)
  result.`joint_velocity_limits` = newSeq[float32](count6)
  for i in 0..<count6:
    result.`joint_velocity_limits`[i] = getFloat32(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 64: fail(22)
  let count7 = int(rawcount7)
  result.`joint_sleep_positions` = newSeq[float32](count7)
  for i in 0..<count7:
    result.`joint_sleep_positions`[i] = getFloat32(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 64: fail(22)
  let count8 = int(rawcount8)
  result.`joint_state_indices` = newSeq[int16](count8)
  for i in 0..<count8:
    result.`joint_state_indices`[i] = getInteger(r,int16)
  result.`num_joints` = getInteger(r,int16)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 64: fail(22)
  let count10 = int(rawcount10)
  result.`name` = newSeq[string](count10)
  for i in 0..<count10:
    result.`name`[i] = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsRobotInfoResponse): seq[byte] =
  var w = initWriter(18474)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsRobotInfoResponse*(b: seq[byte]): Ros1Interbotix_xs_msgsRobotInfoResponse =
  var r = initReader(b,18474)
  result = readRos1Interbotix_xs_msgsRobotInfoResponse(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/TorqueEnableRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsTorqueEnableRequest* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original enable as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enable`*: bool
const Ros1Interbotix_xs_msgsTorqueEnableRequestMaximumWireBytes* = 265
const Ros1Interbotix_xs_msgsTorqueEnableRequestCodecIdentity* = "UWVMROS1_0586e2a4917ddf684f7834ada07775ccc118f0b2abbfd7fda72d4b76be8a146a"
const Ros1Interbotix_xs_msgsTorqueEnableRequestNativeType* = "interbotix_xs_msgs/TorqueEnableRequest"
const Ros1Interbotix_xs_msgsTorqueEnableRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsTorqueEnableRequest*(): Ros1Interbotix_xs_msgsTorqueEnableRequest =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`enable` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsTorqueEnableRequest; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putBool(w,value.`enable`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsTorqueEnableRequest*(r: var Reader): Ros1Interbotix_xs_msgsTorqueEnableRequest =
  result = initRos1Interbotix_xs_msgsTorqueEnableRequest()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`enable` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsTorqueEnableRequest): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsTorqueEnableRequest*(b: seq[byte]): Ros1Interbotix_xs_msgsTorqueEnableRequest =
  var r = initReader(b,265)
  result = readRos1Interbotix_xs_msgsTorqueEnableRequest(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/TorqueEnableResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsTorqueEnableResponse* = object
const Ros1Interbotix_xs_msgsTorqueEnableResponseMaximumWireBytes* = 0
const Ros1Interbotix_xs_msgsTorqueEnableResponseCodecIdentity* = "UWVMROS1_6f010bb51e876d2e66fa7a227f13d4484ae800dd5ae256cfe770ad2b58f6ad44"
const Ros1Interbotix_xs_msgsTorqueEnableResponseNativeType* = "interbotix_xs_msgs/TorqueEnableResponse"
const Ros1Interbotix_xs_msgsTorqueEnableResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsTorqueEnableResponse*(): Ros1Interbotix_xs_msgsTorqueEnableResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsTorqueEnableResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsTorqueEnableResponse*(r: var Reader): Ros1Interbotix_xs_msgsTorqueEnableResponse =
  result = initRos1Interbotix_xs_msgsTorqueEnableResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsTorqueEnableResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsTorqueEnableResponse*(b: seq[byte]): Ros1Interbotix_xs_msgsTorqueEnableResponse =
  var r = initReader(b,0)
  result = readRos1Interbotix_xs_msgsTorqueEnableResponse(r)
  finish(r)
## @brief Own every original field of ROS1 interbotix_xs_msgs/TurretJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_xs_msgsTurretJoy* = object
  ## @brief Preserve original pan_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pan_cmd`*: int8
  ## @brief Preserve original tilt_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `tilt_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
const Ros1Interbotix_xs_msgsTurretJoyMaximumWireBytes* = 4
const Ros1Interbotix_xs_msgsTurretJoyCodecIdentity* = "UWVMROS1_723dfe84ba93acb0acee9131da0af65fe5b508f33e43d5ff9d30d2137b102b70"
const Ros1Interbotix_xs_msgsTurretJoyNativeType* = "interbotix_xs_msgs/TurretJoy"
const Ros1Interbotix_xs_msgsTurretJoyNativeIdentity* = ""
const Ros1Interbotix_xs_msgsTurretJoy_PAN_CCW*: int8 = 1'i8
const Ros1Interbotix_xs_msgsTurretJoy_PAN_CW*: int8 = 2'i8
const Ros1Interbotix_xs_msgsTurretJoy_TILT_UP*: int8 = 3'i8
const Ros1Interbotix_xs_msgsTurretJoy_TILT_DOWN*: int8 = 4'i8
const Ros1Interbotix_xs_msgsTurretJoy_PAN_TILT_HOME*: int8 = 5'i8
const Ros1Interbotix_xs_msgsTurretJoy_SPEED_INC*: int8 = 6'i8
const Ros1Interbotix_xs_msgsTurretJoy_SPEED_DEC*: int8 = 7'i8
const Ros1Interbotix_xs_msgsTurretJoy_SPEED_COURSE*: int8 = 8'i8
const Ros1Interbotix_xs_msgsTurretJoy_SPEED_FINE*: int8 = 9'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_xs_msgsTurretJoy*(): Ros1Interbotix_xs_msgsTurretJoy =
  result.`pan_cmd` = 0
  result.`tilt_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_xs_msgsTurretJoy; w: var Writer) =
  putInteger(w,value.`pan_cmd`)
  putInteger(w,value.`tilt_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_xs_msgsTurretJoy*(r: var Reader): Ros1Interbotix_xs_msgsTurretJoy =
  result = initRos1Interbotix_xs_msgsTurretJoy()
  result.`pan_cmd` = getInteger(r,int8)
  result.`tilt_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_xs_msgsTurretJoy): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_xs_msgsTurretJoy*(b: seq[byte]): Ros1Interbotix_xs_msgsTurretJoy =
  var r = initReader(b,4)
  result = readRos1Interbotix_xs_msgsTurretJoy(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/ClearErrRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsClearErrRequest* = object
const Ros1Xarm_msgsClearErrRequestMaximumWireBytes* = 0
const Ros1Xarm_msgsClearErrRequestCodecIdentity* = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"
const Ros1Xarm_msgsClearErrRequestNativeType* = "xarm_msgs/ClearErrRequest"
const Ros1Xarm_msgsClearErrRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsClearErrRequest*(): Ros1Xarm_msgsClearErrRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsClearErrRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsClearErrRequest*(r: var Reader): Ros1Xarm_msgsClearErrRequest =
  result = initRos1Xarm_msgsClearErrRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsClearErrRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsClearErrRequest*(b: seq[byte]): Ros1Xarm_msgsClearErrRequest =
  var r = initReader(b,0)
  result = readRos1Xarm_msgsClearErrRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/ClearErrResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsClearErrResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsClearErrResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsClearErrResponseCodecIdentity* = "UWVMROS1_8edb7089d54f07c68008fdf769fa42d37da738066fce87da976c4888adf8a1a1"
const Ros1Xarm_msgsClearErrResponseNativeType* = "xarm_msgs/ClearErrResponse"
const Ros1Xarm_msgsClearErrResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsClearErrResponse*(): Ros1Xarm_msgsClearErrResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsClearErrResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsClearErrResponse*(r: var Reader): Ros1Xarm_msgsClearErrResponse =
  result = initRos1Xarm_msgsClearErrResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsClearErrResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsClearErrResponse*(b: seq[byte]): Ros1Xarm_msgsClearErrResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsClearErrResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/ConfigToolModbusRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsConfigToolModbusRequest* = object
  ## @brief Preserve original baud_rate as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `baud_rate`*: int32
  ## @brief Preserve original timeout_ms as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `timeout_ms`*: int32
const Ros1Xarm_msgsConfigToolModbusRequestMaximumWireBytes* = 8
const Ros1Xarm_msgsConfigToolModbusRequestCodecIdentity* = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"
const Ros1Xarm_msgsConfigToolModbusRequestNativeType* = "xarm_msgs/ConfigToolModbusRequest"
const Ros1Xarm_msgsConfigToolModbusRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsConfigToolModbusRequest*(): Ros1Xarm_msgsConfigToolModbusRequest =
  result.`baud_rate` = 0
  result.`timeout_ms` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsConfigToolModbusRequest; w: var Writer) =
  putInteger(w,value.`baud_rate`)
  putInteger(w,value.`timeout_ms`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsConfigToolModbusRequest*(r: var Reader): Ros1Xarm_msgsConfigToolModbusRequest =
  result = initRos1Xarm_msgsConfigToolModbusRequest()
  result.`baud_rate` = getInteger(r,int32)
  result.`timeout_ms` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsConfigToolModbusRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsConfigToolModbusRequest*(b: seq[byte]): Ros1Xarm_msgsConfigToolModbusRequest =
  var r = initReader(b,8)
  result = readRos1Xarm_msgsConfigToolModbusRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/ConfigToolModbusResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsConfigToolModbusResponse* = object
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
const Ros1Xarm_msgsConfigToolModbusResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsConfigToolModbusResponseCodecIdentity* = "UWVMROS1_1080c7a283e1a9406bc5e04432f074732d7b0f175e5e04d87c3ea811e4e9503b"
const Ros1Xarm_msgsConfigToolModbusResponseNativeType* = "xarm_msgs/ConfigToolModbusResponse"
const Ros1Xarm_msgsConfigToolModbusResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsConfigToolModbusResponse*(): Ros1Xarm_msgsConfigToolModbusResponse =
  result.`message` = ""
  result.`ret` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsConfigToolModbusResponse; w: var Writer) =
  putString(w,value.`message`,128)
  putInteger(w,value.`ret`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsConfigToolModbusResponse*(r: var Reader): Ros1Xarm_msgsConfigToolModbusResponse =
  result = initRos1Xarm_msgsConfigToolModbusResponse()
  result.`message` = getString(r,128)
  result.`ret` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsConfigToolModbusResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsConfigToolModbusResponse*(b: seq[byte]): Ros1Xarm_msgsConfigToolModbusResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsConfigToolModbusResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetAnalogIORequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetAnalogIORequest* = object
  ## @brief Preserve original port_num as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `port_num`*: int16
const Ros1Xarm_msgsGetAnalogIORequestMaximumWireBytes* = 2
const Ros1Xarm_msgsGetAnalogIORequestCodecIdentity* = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"
const Ros1Xarm_msgsGetAnalogIORequestNativeType* = "xarm_msgs/GetAnalogIORequest"
const Ros1Xarm_msgsGetAnalogIORequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetAnalogIORequest*(): Ros1Xarm_msgsGetAnalogIORequest =
  result.`port_num` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetAnalogIORequest; w: var Writer) =
  putInteger(w,value.`port_num`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetAnalogIORequest*(r: var Reader): Ros1Xarm_msgsGetAnalogIORequest =
  result = initRos1Xarm_msgsGetAnalogIORequest()
  result.`port_num` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetAnalogIORequest): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetAnalogIORequest*(b: seq[byte]): Ros1Xarm_msgsGetAnalogIORequest =
  var r = initReader(b,2)
  result = readRos1Xarm_msgsGetAnalogIORequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetAnalogIOResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetAnalogIOResponse* = object
  ## @brief Preserve original analog_value as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `analog_value`*: float32
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsGetAnalogIOResponseMaximumWireBytes* = 138
const Ros1Xarm_msgsGetAnalogIOResponseCodecIdentity* = "UWVMROS1_7a70c05e7e63840aa7ba045fff4ae119046a0f438d8f3d9dcc436daa93bf7968"
const Ros1Xarm_msgsGetAnalogIOResponseNativeType* = "xarm_msgs/GetAnalogIOResponse"
const Ros1Xarm_msgsGetAnalogIOResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetAnalogIOResponse*(): Ros1Xarm_msgsGetAnalogIOResponse =
  result.`analog_value` = 0
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetAnalogIOResponse; w: var Writer) =
  putFloat32(w,value.`analog_value`)
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetAnalogIOResponse*(r: var Reader): Ros1Xarm_msgsGetAnalogIOResponse =
  result = initRos1Xarm_msgsGetAnalogIOResponse()
  result.`analog_value` = getFloat32(r)
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetAnalogIOResponse): seq[byte] =
  var w = initWriter(138)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetAnalogIOResponse*(b: seq[byte]): Ros1Xarm_msgsGetAnalogIOResponse =
  var r = initReader(b,138)
  result = readRos1Xarm_msgsGetAnalogIOResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetControllerDigitalIORequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetControllerDigitalIORequest* = object
  ## @brief Preserve original io_num as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `io_num`*: int16
const Ros1Xarm_msgsGetControllerDigitalIORequestMaximumWireBytes* = 2
const Ros1Xarm_msgsGetControllerDigitalIORequestCodecIdentity* = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"
const Ros1Xarm_msgsGetControllerDigitalIORequestNativeType* = "xarm_msgs/GetControllerDigitalIORequest"
const Ros1Xarm_msgsGetControllerDigitalIORequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetControllerDigitalIORequest*(): Ros1Xarm_msgsGetControllerDigitalIORequest =
  result.`io_num` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetControllerDigitalIORequest; w: var Writer) =
  putInteger(w,value.`io_num`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetControllerDigitalIORequest*(r: var Reader): Ros1Xarm_msgsGetControllerDigitalIORequest =
  result = initRos1Xarm_msgsGetControllerDigitalIORequest()
  result.`io_num` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetControllerDigitalIORequest): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetControllerDigitalIORequest*(b: seq[byte]): Ros1Xarm_msgsGetControllerDigitalIORequest =
  var r = initReader(b,2)
  result = readRos1Xarm_msgsGetControllerDigitalIORequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetControllerDigitalIOResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetControllerDigitalIOResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original value as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `value`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsGetControllerDigitalIOResponseMaximumWireBytes* = 136
const Ros1Xarm_msgsGetControllerDigitalIOResponseCodecIdentity* = "UWVMROS1_b3ec2406480ce53df0f0c307ab2060db95b9aec06ff4883bbf5779a602d385a3"
const Ros1Xarm_msgsGetControllerDigitalIOResponseNativeType* = "xarm_msgs/GetControllerDigitalIOResponse"
const Ros1Xarm_msgsGetControllerDigitalIOResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetControllerDigitalIOResponse*(): Ros1Xarm_msgsGetControllerDigitalIOResponse =
  result.`ret` = 0
  result.`value` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetControllerDigitalIOResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putInteger(w,value.`value`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetControllerDigitalIOResponse*(r: var Reader): Ros1Xarm_msgsGetControllerDigitalIOResponse =
  result = initRos1Xarm_msgsGetControllerDigitalIOResponse()
  result.`ret` = getInteger(r,int16)
  result.`value` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetControllerDigitalIOResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetControllerDigitalIOResponse*(b: seq[byte]): Ros1Xarm_msgsGetControllerDigitalIOResponse =
  var r = initReader(b,136)
  result = readRos1Xarm_msgsGetControllerDigitalIOResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetDigitalIORequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetDigitalIORequest* = object
const Ros1Xarm_msgsGetDigitalIORequestMaximumWireBytes* = 0
const Ros1Xarm_msgsGetDigitalIORequestCodecIdentity* = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"
const Ros1Xarm_msgsGetDigitalIORequestNativeType* = "xarm_msgs/GetDigitalIORequest"
const Ros1Xarm_msgsGetDigitalIORequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetDigitalIORequest*(): Ros1Xarm_msgsGetDigitalIORequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetDigitalIORequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetDigitalIORequest*(r: var Reader): Ros1Xarm_msgsGetDigitalIORequest =
  result = initRos1Xarm_msgsGetDigitalIORequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetDigitalIORequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetDigitalIORequest*(b: seq[byte]): Ros1Xarm_msgsGetDigitalIORequest =
  var r = initReader(b,0)
  result = readRos1Xarm_msgsGetDigitalIORequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetDigitalIOResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetDigitalIOResponse* = object
  ## @brief Preserve original digital_1 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `digital_1`*: int32
  ## @brief Preserve original digital_2 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `digital_2`*: int32
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsGetDigitalIOResponseMaximumWireBytes* = 142
const Ros1Xarm_msgsGetDigitalIOResponseCodecIdentity* = "UWVMROS1_7b727d69650d14f14d18d42f2cf5157062d21b2edb1ff856c3d3545c971a07b2"
const Ros1Xarm_msgsGetDigitalIOResponseNativeType* = "xarm_msgs/GetDigitalIOResponse"
const Ros1Xarm_msgsGetDigitalIOResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetDigitalIOResponse*(): Ros1Xarm_msgsGetDigitalIOResponse =
  result.`digital_1` = 0
  result.`digital_2` = 0
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetDigitalIOResponse; w: var Writer) =
  putInteger(w,value.`digital_1`)
  putInteger(w,value.`digital_2`)
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetDigitalIOResponse*(r: var Reader): Ros1Xarm_msgsGetDigitalIOResponse =
  result = initRos1Xarm_msgsGetDigitalIOResponse()
  result.`digital_1` = getInteger(r,int32)
  result.`digital_2` = getInteger(r,int32)
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetDigitalIOResponse): seq[byte] =
  var w = initWriter(142)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetDigitalIOResponse*(b: seq[byte]): Ros1Xarm_msgsGetDigitalIOResponse =
  var r = initReader(b,142)
  result = readRos1Xarm_msgsGetDigitalIOResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetErrRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetErrRequest* = object
const Ros1Xarm_msgsGetErrRequestMaximumWireBytes* = 0
const Ros1Xarm_msgsGetErrRequestCodecIdentity* = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"
const Ros1Xarm_msgsGetErrRequestNativeType* = "xarm_msgs/GetErrRequest"
const Ros1Xarm_msgsGetErrRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetErrRequest*(): Ros1Xarm_msgsGetErrRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetErrRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetErrRequest*(r: var Reader): Ros1Xarm_msgsGetErrRequest =
  result = initRos1Xarm_msgsGetErrRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetErrRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetErrRequest*(b: seq[byte]): Ros1Xarm_msgsGetErrRequest =
  var r = initReader(b,0)
  result = readRos1Xarm_msgsGetErrRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GetErrResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGetErrResponse* = object
  ## @brief Preserve original err as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `err`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsGetErrResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsGetErrResponseCodecIdentity* = "UWVMROS1_4ea68a3d0983f04f6e7dada0885d456544ee4fa9ef0d2abc60a92cc18bda5037"
const Ros1Xarm_msgsGetErrResponseNativeType* = "xarm_msgs/GetErrResponse"
const Ros1Xarm_msgsGetErrResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGetErrResponse*(): Ros1Xarm_msgsGetErrResponse =
  result.`err` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGetErrResponse; w: var Writer) =
  putInteger(w,value.`err`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGetErrResponse*(r: var Reader): Ros1Xarm_msgsGetErrResponse =
  result = initRos1Xarm_msgsGetErrResponse()
  result.`err` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGetErrResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGetErrResponse*(b: seq[byte]): Ros1Xarm_msgsGetErrResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsGetErrResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GripperConfigRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGripperConfigRequest* = object
  ## @brief Preserve original pulse_vel as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `pulse_vel`*: float32
const Ros1Xarm_msgsGripperConfigRequestMaximumWireBytes* = 4
const Ros1Xarm_msgsGripperConfigRequestCodecIdentity* = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"
const Ros1Xarm_msgsGripperConfigRequestNativeType* = "xarm_msgs/GripperConfigRequest"
const Ros1Xarm_msgsGripperConfigRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGripperConfigRequest*(): Ros1Xarm_msgsGripperConfigRequest =
  result.`pulse_vel` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGripperConfigRequest; w: var Writer) =
  putFloat32(w,value.`pulse_vel`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGripperConfigRequest*(r: var Reader): Ros1Xarm_msgsGripperConfigRequest =
  result = initRos1Xarm_msgsGripperConfigRequest()
  result.`pulse_vel` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGripperConfigRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGripperConfigRequest*(b: seq[byte]): Ros1Xarm_msgsGripperConfigRequest =
  var r = initReader(b,4)
  result = readRos1Xarm_msgsGripperConfigRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GripperConfigResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGripperConfigResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsGripperConfigResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsGripperConfigResponseCodecIdentity* = "UWVMROS1_5e74e8890eda1059018d78fd4bddd8ae8154115268ee6197ef9369397f82dbb5"
const Ros1Xarm_msgsGripperConfigResponseNativeType* = "xarm_msgs/GripperConfigResponse"
const Ros1Xarm_msgsGripperConfigResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGripperConfigResponse*(): Ros1Xarm_msgsGripperConfigResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGripperConfigResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGripperConfigResponse*(r: var Reader): Ros1Xarm_msgsGripperConfigResponse =
  result = initRos1Xarm_msgsGripperConfigResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGripperConfigResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGripperConfigResponse*(b: seq[byte]): Ros1Xarm_msgsGripperConfigResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsGripperConfigResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GripperMoveRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGripperMoveRequest* = object
  ## @brief Preserve original pulse_pos as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `pulse_pos`*: float32
const Ros1Xarm_msgsGripperMoveRequestMaximumWireBytes* = 4
const Ros1Xarm_msgsGripperMoveRequestCodecIdentity* = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"
const Ros1Xarm_msgsGripperMoveRequestNativeType* = "xarm_msgs/GripperMoveRequest"
const Ros1Xarm_msgsGripperMoveRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGripperMoveRequest*(): Ros1Xarm_msgsGripperMoveRequest =
  result.`pulse_pos` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGripperMoveRequest; w: var Writer) =
  putFloat32(w,value.`pulse_pos`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGripperMoveRequest*(r: var Reader): Ros1Xarm_msgsGripperMoveRequest =
  result = initRos1Xarm_msgsGripperMoveRequest()
  result.`pulse_pos` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGripperMoveRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGripperMoveRequest*(b: seq[byte]): Ros1Xarm_msgsGripperMoveRequest =
  var r = initReader(b,4)
  result = readRos1Xarm_msgsGripperMoveRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GripperMoveResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGripperMoveResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsGripperMoveResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsGripperMoveResponseCodecIdentity* = "UWVMROS1_2802739906ad3231f0f4e2a60340dda1a5459be25907d68f4981e62faa6b2998"
const Ros1Xarm_msgsGripperMoveResponseNativeType* = "xarm_msgs/GripperMoveResponse"
const Ros1Xarm_msgsGripperMoveResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGripperMoveResponse*(): Ros1Xarm_msgsGripperMoveResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGripperMoveResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGripperMoveResponse*(r: var Reader): Ros1Xarm_msgsGripperMoveResponse =
  result = initRos1Xarm_msgsGripperMoveResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGripperMoveResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGripperMoveResponse*(b: seq[byte]): Ros1Xarm_msgsGripperMoveResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsGripperMoveResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GripperStateRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGripperStateRequest* = object
const Ros1Xarm_msgsGripperStateRequestMaximumWireBytes* = 0
const Ros1Xarm_msgsGripperStateRequestCodecIdentity* = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"
const Ros1Xarm_msgsGripperStateRequestNativeType* = "xarm_msgs/GripperStateRequest"
const Ros1Xarm_msgsGripperStateRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGripperStateRequest*(): Ros1Xarm_msgsGripperStateRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGripperStateRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGripperStateRequest*(r: var Reader): Ros1Xarm_msgsGripperStateRequest =
  result = initRos1Xarm_msgsGripperStateRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGripperStateRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGripperStateRequest*(b: seq[byte]): Ros1Xarm_msgsGripperStateRequest =
  var r = initReader(b,0)
  result = readRos1Xarm_msgsGripperStateRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/GripperStateResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsGripperStateResponse* = object
  ## @brief Preserve original curr_pos as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `curr_pos`*: float32
  ## @brief Preserve original err_code as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `err_code`*: int16
const Ros1Xarm_msgsGripperStateResponseMaximumWireBytes* = 6
const Ros1Xarm_msgsGripperStateResponseCodecIdentity* = "UWVMROS1_781669bd7ab4a0189b137cf07ab98b3382f17ad088a8818616caeaa70e27a0e4"
const Ros1Xarm_msgsGripperStateResponseNativeType* = "xarm_msgs/GripperStateResponse"
const Ros1Xarm_msgsGripperStateResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsGripperStateResponse*(): Ros1Xarm_msgsGripperStateResponse =
  result.`curr_pos` = 0
  result.`err_code` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsGripperStateResponse; w: var Writer) =
  putFloat32(w,value.`curr_pos`)
  putInteger(w,value.`err_code`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsGripperStateResponse*(r: var Reader): Ros1Xarm_msgsGripperStateResponse =
  result = initRos1Xarm_msgsGripperStateResponse()
  result.`curr_pos` = getFloat32(r)
  result.`err_code` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsGripperStateResponse): seq[byte] =
  var w = initWriter(6)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsGripperStateResponse*(b: seq[byte]): Ros1Xarm_msgsGripperStateResponse =
  var r = initReader(b,6)
  result = readRos1Xarm_msgsGripperStateResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/IOState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsIOState* = object
  ## @brief Preserve original digital_1 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `digital_1`*: int32
  ## @brief Preserve original digital_2 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `digital_2`*: int32
  ## @brief Preserve original analog_1 as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `analog_1`*: float32
  ## @brief Preserve original analog_2 as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `analog_2`*: float32
const Ros1Xarm_msgsIOStateMaximumWireBytes* = 16
const Ros1Xarm_msgsIOStateCodecIdentity* = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"
const Ros1Xarm_msgsIOStateNativeType* = "xarm_msgs/IOState"
const Ros1Xarm_msgsIOStateNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsIOState*(): Ros1Xarm_msgsIOState =
  result.`digital_1` = 0
  result.`digital_2` = 0
  result.`analog_1` = 0
  result.`analog_2` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsIOState; w: var Writer) =
  putInteger(w,value.`digital_1`)
  putInteger(w,value.`digital_2`)
  putFloat32(w,value.`analog_1`)
  putFloat32(w,value.`analog_2`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsIOState*(r: var Reader): Ros1Xarm_msgsIOState =
  result = initRos1Xarm_msgsIOState()
  result.`digital_1` = getInteger(r,int32)
  result.`digital_2` = getInteger(r,int32)
  result.`analog_1` = getFloat32(r)
  result.`analog_2` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsIOState): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsIOState*(b: seq[byte]): Ros1Xarm_msgsIOState =
  var r = initReader(b,16)
  result = readRos1Xarm_msgsIOState(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/MoveRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsMoveRequest* = object
  ## @brief Preserve original pose as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: seq[float32]
  ## @brief Preserve original mvvelo as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `mvvelo`*: float32
  ## @brief Preserve original mvacc as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `mvacc`*: float32
  ## @brief Preserve original mvtime as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `mvtime`*: float32
  ## @brief Preserve original mvradii as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `mvradii`*: float32
const Ros1Xarm_msgsMoveRequestMaximumWireBytes* = 84
const Ros1Xarm_msgsMoveRequestCodecIdentity* = "UWVMROS1_b0e6f307ca9a12c92e3b2a6acbc79b0aba223e67788a060e5dc443240c9235e5"
const Ros1Xarm_msgsMoveRequestNativeType* = "xarm_msgs/MoveRequest"
const Ros1Xarm_msgsMoveRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsMoveRequest*(): Ros1Xarm_msgsMoveRequest =
  result.`pose` = @[]
  result.`mvvelo` = 0
  result.`mvacc` = 0
  result.`mvtime` = 0
  result.`mvradii` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsMoveRequest; w: var Writer) =
  if value.`pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`pose`.len))
  for e in value.`pose`:
    putFloat32(w,e)
  putFloat32(w,value.`mvvelo`)
  putFloat32(w,value.`mvacc`)
  putFloat32(w,value.`mvtime`)
  putFloat32(w,value.`mvradii`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsMoveRequest*(r: var Reader): Ros1Xarm_msgsMoveRequest =
  result = initRos1Xarm_msgsMoveRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`pose` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`pose`[i] = getFloat32(r)
  result.`mvvelo` = getFloat32(r)
  result.`mvacc` = getFloat32(r)
  result.`mvtime` = getFloat32(r)
  result.`mvradii` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsMoveRequest): seq[byte] =
  var w = initWriter(84)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsMoveRequest*(b: seq[byte]): Ros1Xarm_msgsMoveRequest =
  var r = initReader(b,84)
  result = readRos1Xarm_msgsMoveRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/MoveResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsMoveResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsMoveResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsMoveResponseCodecIdentity* = "UWVMROS1_5ebf8749e513dcb301f91344890ee5d60e5a8e60fab37dbfe88360f68ba0b658"
const Ros1Xarm_msgsMoveResponseNativeType* = "xarm_msgs/MoveResponse"
const Ros1Xarm_msgsMoveResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsMoveResponse*(): Ros1Xarm_msgsMoveResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsMoveResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsMoveResponse*(r: var Reader): Ros1Xarm_msgsMoveResponse =
  result = initRos1Xarm_msgsMoveResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsMoveResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsMoveResponse*(b: seq[byte]): Ros1Xarm_msgsMoveResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsMoveResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/RobotMsg.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsRobotMsg* = object
  ## @brief Preserve original state as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `state`*: int16
  ## @brief Preserve original mode as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `mode`*: int16
  ## @brief Preserve original cmdnum as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `cmdnum`*: int16
  ## @brief Preserve original mt_brake as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `mt_brake`*: int16
  ## @brief Preserve original mt_able as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `mt_able`*: int16
  ## @brief Preserve original err as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `err`*: int16
  ## @brief Preserve original warn as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `warn`*: int16
  ## @brief Preserve original angle as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `angle`*: seq[float32]
  ## @brief Preserve original pose as float32.
  ## @details Exactly 6 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: array[6,float32]
  ## @brief Preserve original offset as float32.
  ## @details Exactly 6 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `offset`*: array[6,float32]
const Ros1Xarm_msgsRobotMsgMaximumWireBytes* = 130
const Ros1Xarm_msgsRobotMsgCodecIdentity* = "UWVMROS1_0e645cbe57caece23f38f4a23ca610d3be2f4367841c2f493317d23b39df9e41"
const Ros1Xarm_msgsRobotMsgNativeType* = "xarm_msgs/RobotMsg"
const Ros1Xarm_msgsRobotMsgNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsRobotMsg*(): Ros1Xarm_msgsRobotMsg =
  result.`state` = 0
  result.`mode` = 0
  result.`cmdnum` = 0
  result.`mt_brake` = 0
  result.`mt_able` = 0
  result.`err` = 0
  result.`warn` = 0
  result.`angle` = @[]
  result.`pose` = [0,0,0,0,0,0]
  result.`offset` = [0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsRobotMsg; w: var Writer) =
  putInteger(w,value.`state`)
  putInteger(w,value.`mode`)
  putInteger(w,value.`cmdnum`)
  putInteger(w,value.`mt_brake`)
  putInteger(w,value.`mt_able`)
  putInteger(w,value.`err`)
  putInteger(w,value.`warn`)
  if value.`angle`.len > 16: fail(22)
  putInteger(w,uint32(value.`angle`.len))
  for e in value.`angle`:
    putFloat32(w,e)
  for e in value.`pose`:
    putFloat32(w,e)
  for e in value.`offset`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsRobotMsg*(r: var Reader): Ros1Xarm_msgsRobotMsg =
  result = initRos1Xarm_msgsRobotMsg()
  result.`state` = getInteger(r,int16)
  result.`mode` = getInteger(r,int16)
  result.`cmdnum` = getInteger(r,int16)
  result.`mt_brake` = getInteger(r,int16)
  result.`mt_able` = getInteger(r,int16)
  result.`err` = getInteger(r,int16)
  result.`warn` = getInteger(r,int16)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 16: fail(22)
  let count7 = int(rawcount7)
  result.`angle` = newSeq[float32](count7)
  for i in 0..<count7:
    result.`angle`[i] = getFloat32(r)
  let count8 = 6
  for i in 0..<count8:
    result.`pose`[i] = getFloat32(r)
  let count9 = 6
  for i in 0..<count9:
    result.`offset`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsRobotMsg): seq[byte] =
  var w = initWriter(130)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsRobotMsg*(b: seq[byte]): Ros1Xarm_msgsRobotMsg =
  var r = initReader(b,130)
  result = readRos1Xarm_msgsRobotMsg(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetAxisRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetAxisRequest* = object
  ## @brief Preserve original id as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `id`*: int16
  ## @brief Preserve original data as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data`*: int16
const Ros1Xarm_msgsSetAxisRequestMaximumWireBytes* = 4
const Ros1Xarm_msgsSetAxisRequestCodecIdentity* = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"
const Ros1Xarm_msgsSetAxisRequestNativeType* = "xarm_msgs/SetAxisRequest"
const Ros1Xarm_msgsSetAxisRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetAxisRequest*(): Ros1Xarm_msgsSetAxisRequest =
  result.`id` = 0
  result.`data` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetAxisRequest; w: var Writer) =
  putInteger(w,value.`id`)
  putInteger(w,value.`data`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetAxisRequest*(r: var Reader): Ros1Xarm_msgsSetAxisRequest =
  result = initRos1Xarm_msgsSetAxisRequest()
  result.`id` = getInteger(r,int16)
  result.`data` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetAxisRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetAxisRequest*(b: seq[byte]): Ros1Xarm_msgsSetAxisRequest =
  var r = initReader(b,4)
  result = readRos1Xarm_msgsSetAxisRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetAxisResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetAxisResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsSetAxisResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsSetAxisResponseCodecIdentity* = "UWVMROS1_7f383a428f1792369302fb7fef16b4b5c0cc9645e5d835472d2721448979daa7"
const Ros1Xarm_msgsSetAxisResponseNativeType* = "xarm_msgs/SetAxisResponse"
const Ros1Xarm_msgsSetAxisResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetAxisResponse*(): Ros1Xarm_msgsSetAxisResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetAxisResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetAxisResponse*(r: var Reader): Ros1Xarm_msgsSetAxisResponse =
  result = initRos1Xarm_msgsSetAxisResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetAxisResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetAxisResponse*(b: seq[byte]): Ros1Xarm_msgsSetAxisResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsSetAxisResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetDigitalIORequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetDigitalIORequest* = object
  ## @brief Preserve original io_num as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `io_num`*: int16
  ## @brief Preserve original value as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `value`*: int16
const Ros1Xarm_msgsSetDigitalIORequestMaximumWireBytes* = 4
const Ros1Xarm_msgsSetDigitalIORequestCodecIdentity* = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"
const Ros1Xarm_msgsSetDigitalIORequestNativeType* = "xarm_msgs/SetDigitalIORequest"
const Ros1Xarm_msgsSetDigitalIORequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetDigitalIORequest*(): Ros1Xarm_msgsSetDigitalIORequest =
  result.`io_num` = 0
  result.`value` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetDigitalIORequest; w: var Writer) =
  putInteger(w,value.`io_num`)
  putInteger(w,value.`value`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetDigitalIORequest*(r: var Reader): Ros1Xarm_msgsSetDigitalIORequest =
  result = initRos1Xarm_msgsSetDigitalIORequest()
  result.`io_num` = getInteger(r,int16)
  result.`value` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetDigitalIORequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetDigitalIORequest*(b: seq[byte]): Ros1Xarm_msgsSetDigitalIORequest =
  var r = initReader(b,4)
  result = readRos1Xarm_msgsSetDigitalIORequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetDigitalIOResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetDigitalIOResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsSetDigitalIOResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsSetDigitalIOResponseCodecIdentity* = "UWVMROS1_baca234a5695612047ed3dfb828ac1cae5b26bdd6c117a02824f4fd8e39f1a4c"
const Ros1Xarm_msgsSetDigitalIOResponseNativeType* = "xarm_msgs/SetDigitalIOResponse"
const Ros1Xarm_msgsSetDigitalIOResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetDigitalIOResponse*(): Ros1Xarm_msgsSetDigitalIOResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetDigitalIOResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetDigitalIOResponse*(r: var Reader): Ros1Xarm_msgsSetDigitalIOResponse =
  result = initRos1Xarm_msgsSetDigitalIOResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetDigitalIOResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetDigitalIOResponse*(b: seq[byte]): Ros1Xarm_msgsSetDigitalIOResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsSetDigitalIOResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetInt16Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetInt16Request* = object
  ## @brief Preserve original data as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data`*: int16
const Ros1Xarm_msgsSetInt16RequestMaximumWireBytes* = 2
const Ros1Xarm_msgsSetInt16RequestCodecIdentity* = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"
const Ros1Xarm_msgsSetInt16RequestNativeType* = "xarm_msgs/SetInt16Request"
const Ros1Xarm_msgsSetInt16RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetInt16Request*(): Ros1Xarm_msgsSetInt16Request =
  result.`data` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetInt16Request; w: var Writer) =
  putInteger(w,value.`data`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetInt16Request*(r: var Reader): Ros1Xarm_msgsSetInt16Request =
  result = initRos1Xarm_msgsSetInt16Request()
  result.`data` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetInt16Request): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetInt16Request*(b: seq[byte]): Ros1Xarm_msgsSetInt16Request =
  var r = initReader(b,2)
  result = readRos1Xarm_msgsSetInt16Request(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetInt16Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetInt16Response* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsSetInt16ResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsSetInt16ResponseCodecIdentity* = "UWVMROS1_3b619ed23839ab6aa86a83898af3de7ed7cdcafd04f6528afd48fe1c2d58fd7d"
const Ros1Xarm_msgsSetInt16ResponseNativeType* = "xarm_msgs/SetInt16Response"
const Ros1Xarm_msgsSetInt16ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetInt16Response*(): Ros1Xarm_msgsSetInt16Response =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetInt16Response; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetInt16Response*(r: var Reader): Ros1Xarm_msgsSetInt16Response =
  result = initRos1Xarm_msgsSetInt16Response()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetInt16Response): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetInt16Response*(b: seq[byte]): Ros1Xarm_msgsSetInt16Response =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsSetInt16Response(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetLoadRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetLoadRequest* = object
  ## @brief Preserve original mass as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `mass`*: float32
  ## @brief Preserve original xc as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `xc`*: float32
  ## @brief Preserve original yc as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `yc`*: float32
  ## @brief Preserve original zc as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `zc`*: float32
const Ros1Xarm_msgsSetLoadRequestMaximumWireBytes* = 16
const Ros1Xarm_msgsSetLoadRequestCodecIdentity* = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"
const Ros1Xarm_msgsSetLoadRequestNativeType* = "xarm_msgs/SetLoadRequest"
const Ros1Xarm_msgsSetLoadRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetLoadRequest*(): Ros1Xarm_msgsSetLoadRequest =
  result.`mass` = 0
  result.`xc` = 0
  result.`yc` = 0
  result.`zc` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetLoadRequest; w: var Writer) =
  putFloat32(w,value.`mass`)
  putFloat32(w,value.`xc`)
  putFloat32(w,value.`yc`)
  putFloat32(w,value.`zc`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetLoadRequest*(r: var Reader): Ros1Xarm_msgsSetLoadRequest =
  result = initRos1Xarm_msgsSetLoadRequest()
  result.`mass` = getFloat32(r)
  result.`xc` = getFloat32(r)
  result.`yc` = getFloat32(r)
  result.`zc` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetLoadRequest): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetLoadRequest*(b: seq[byte]): Ros1Xarm_msgsSetLoadRequest =
  var r = initReader(b,16)
  result = readRos1Xarm_msgsSetLoadRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetLoadResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetLoadResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsSetLoadResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsSetLoadResponseCodecIdentity* = "UWVMROS1_ceea0b74ec65c7f3208f594ddb9180db48213a62764524e1b7eec866752ed2e3"
const Ros1Xarm_msgsSetLoadResponseNativeType* = "xarm_msgs/SetLoadResponse"
const Ros1Xarm_msgsSetLoadResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetLoadResponse*(): Ros1Xarm_msgsSetLoadResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetLoadResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetLoadResponse*(r: var Reader): Ros1Xarm_msgsSetLoadResponse =
  result = initRos1Xarm_msgsSetLoadResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetLoadResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetLoadResponse*(b: seq[byte]): Ros1Xarm_msgsSetLoadResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsSetLoadResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetToolModbusRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetToolModbusRequest* = object
  ## @brief Preserve original send_data as uint8.
  ## @details At most 256 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `send_data`*: seq[uint8]
  ## @brief Preserve original respond_len as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `respond_len`*: int16
const Ros1Xarm_msgsSetToolModbusRequestMaximumWireBytes* = 262
const Ros1Xarm_msgsSetToolModbusRequestCodecIdentity* = "UWVMROS1_f7201be7ca91c7cbc137d4d634a939e037f3fd070446ee174169563e00af3c5a"
const Ros1Xarm_msgsSetToolModbusRequestNativeType* = "xarm_msgs/SetToolModbusRequest"
const Ros1Xarm_msgsSetToolModbusRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetToolModbusRequest*(): Ros1Xarm_msgsSetToolModbusRequest =
  result.`send_data` = @[]
  result.`respond_len` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetToolModbusRequest; w: var Writer) =
  if value.`send_data`.len > 256: fail(22)
  putInteger(w,uint32(value.`send_data`.len))
  for e in value.`send_data`:
    putInteger(w,e)
  putInteger(w,value.`respond_len`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetToolModbusRequest*(r: var Reader): Ros1Xarm_msgsSetToolModbusRequest =
  result = initRos1Xarm_msgsSetToolModbusRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 256: fail(22)
  let count0 = int(rawcount0)
  result.`send_data` = newSeq[uint8](count0)
  for i in 0..<count0:
    result.`send_data`[i] = getInteger(r,uint8)
  result.`respond_len` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetToolModbusRequest): seq[byte] =
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetToolModbusRequest*(b: seq[byte]): Ros1Xarm_msgsSetToolModbusRequest =
  var r = initReader(b,262)
  result = readRos1Xarm_msgsSetToolModbusRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/SetToolModbusResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsSetToolModbusResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original respond_data as uint8.
  ## @details At most 256 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `respond_data`*: seq[uint8]
const Ros1Xarm_msgsSetToolModbusResponseMaximumWireBytes* = 262
const Ros1Xarm_msgsSetToolModbusResponseCodecIdentity* = "UWVMROS1_685b6def078eaf41d45a4e43cfe037498224efca187275680a77b6068372ce15"
const Ros1Xarm_msgsSetToolModbusResponseNativeType* = "xarm_msgs/SetToolModbusResponse"
const Ros1Xarm_msgsSetToolModbusResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsSetToolModbusResponse*(): Ros1Xarm_msgsSetToolModbusResponse =
  result.`ret` = 0
  result.`respond_data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsSetToolModbusResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  if value.`respond_data`.len > 256: fail(22)
  putInteger(w,uint32(value.`respond_data`.len))
  for e in value.`respond_data`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsSetToolModbusResponse*(r: var Reader): Ros1Xarm_msgsSetToolModbusResponse =
  result = initRos1Xarm_msgsSetToolModbusResponse()
  result.`ret` = getInteger(r,int16)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 256: fail(22)
  let count1 = int(rawcount1)
  result.`respond_data` = newSeq[uint8](count1)
  for i in 0..<count1:
    result.`respond_data`[i] = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsSetToolModbusResponse): seq[byte] =
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsSetToolModbusResponse*(b: seq[byte]): Ros1Xarm_msgsSetToolModbusResponse =
  var r = initReader(b,262)
  result = readRos1Xarm_msgsSetToolModbusResponse(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/TCPOffsetRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsTCPOffsetRequest* = object
  ## @brief Preserve original x as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `x`*: float32
  ## @brief Preserve original y as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `y`*: float32
  ## @brief Preserve original z as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `z`*: float32
  ## @brief Preserve original roll as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `roll`*: float32
  ## @brief Preserve original pitch as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `pitch`*: float32
  ## @brief Preserve original yaw as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `yaw`*: float32
const Ros1Xarm_msgsTCPOffsetRequestMaximumWireBytes* = 24
const Ros1Xarm_msgsTCPOffsetRequestCodecIdentity* = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"
const Ros1Xarm_msgsTCPOffsetRequestNativeType* = "xarm_msgs/TCPOffsetRequest"
const Ros1Xarm_msgsTCPOffsetRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsTCPOffsetRequest*(): Ros1Xarm_msgsTCPOffsetRequest =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`roll` = 0
  result.`pitch` = 0
  result.`yaw` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsTCPOffsetRequest; w: var Writer) =
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`roll`)
  putFloat32(w,value.`pitch`)
  putFloat32(w,value.`yaw`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsTCPOffsetRequest*(r: var Reader): Ros1Xarm_msgsTCPOffsetRequest =
  result = initRos1Xarm_msgsTCPOffsetRequest()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`roll` = getFloat32(r)
  result.`pitch` = getFloat32(r)
  result.`yaw` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsTCPOffsetRequest): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsTCPOffsetRequest*(b: seq[byte]): Ros1Xarm_msgsTCPOffsetRequest =
  var r = initReader(b,24)
  result = readRos1Xarm_msgsTCPOffsetRequest(r)
  finish(r)
## @brief Own every original field of ROS1 xarm_msgs/TCPOffsetResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Xarm_msgsTCPOffsetResponse* = object
  ## @brief Preserve original ret as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ret`*: int16
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Xarm_msgsTCPOffsetResponseMaximumWireBytes* = 134
const Ros1Xarm_msgsTCPOffsetResponseCodecIdentity* = "UWVMROS1_c61a6473a9eb1371fa56cbf60d6468fcac19197b9be04dd507b80f59e2d80773"
const Ros1Xarm_msgsTCPOffsetResponseNativeType* = "xarm_msgs/TCPOffsetResponse"
const Ros1Xarm_msgsTCPOffsetResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Xarm_msgsTCPOffsetResponse*(): Ros1Xarm_msgsTCPOffsetResponse =
  result.`ret` = 0
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Xarm_msgsTCPOffsetResponse; w: var Writer) =
  putInteger(w,value.`ret`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Xarm_msgsTCPOffsetResponse*(r: var Reader): Ros1Xarm_msgsTCPOffsetResponse =
  result = initRos1Xarm_msgsTCPOffsetResponse()
  result.`ret` = getInteger(r,int16)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Xarm_msgsTCPOffsetResponse): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Xarm_msgsTCPOffsetResponse*(b: seq[byte]): Ros1Xarm_msgsTCPOffsetResponse =
  var r = initReader(b,134)
  result = readRos1Xarm_msgsTCPOffsetResponse(r)
  finish(r)
