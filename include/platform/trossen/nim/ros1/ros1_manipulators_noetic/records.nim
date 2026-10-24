## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete trossen ros1_manipulators_noetic canonical value surface.
## @details The original 1 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/trossen/catalogs.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of ROS1 interbotix_uxarm_joy/ArmJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Interbotix_uxarm_joyArmJoy* = object
  ## @brief Preserve original ee_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_x_cmd`*: int8
  ## @brief Preserve original ee_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_y_cmd`*: int8
  ## @brief Preserve original ee_z_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_z_cmd`*: int8
  ## @brief Preserve original ee_yaw_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_yaw_cmd`*: int8
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
  ## @brief Preserve original gripper_speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_speed_cmd`*: int8
  ## @brief Preserve original mode_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `mode_cmd`*: int8
const Ros1Interbotix_uxarm_joyArmJoyMaximumWireBytes* = 12
const Ros1Interbotix_uxarm_joyArmJoyCodecIdentity* = "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53"
const Ros1Interbotix_uxarm_joyArmJoyNativeType* = "interbotix_uxarm_joy/ArmJoy"
const Ros1Interbotix_uxarm_joyArmJoyNativeIdentity* = ""
const Ros1Interbotix_uxarm_joyArmJoy_EE_X_INC*: int8 = 1'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_X_DEC*: int8 = 2'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_Y_INC*: int8 = 3'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_Y_DEC*: int8 = 4'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_Z_INC*: int8 = 5'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_Z_DEC*: int8 = 6'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CCW*: int8 = 7'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_YAW_CW*: int8 = 8'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_UP*: int8 = 9'i8
const Ros1Interbotix_uxarm_joyArmJoy_EE_PITCH_DOWN*: int8 = 10'i8
const Ros1Interbotix_uxarm_joyArmJoy_WAIST_CCW*: int8 = 11'i8
const Ros1Interbotix_uxarm_joyArmJoy_WAIST_CW*: int8 = 12'i8
const Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_OPEN*: int8 = 13'i8
const Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_CLOSE*: int8 = 14'i8
const Ros1Interbotix_uxarm_joyArmJoy_HOME_POSE*: int8 = 15'i8
const Ros1Interbotix_uxarm_joyArmJoy_HOLDUP_POSE*: int8 = 16'i8
const Ros1Interbotix_uxarm_joyArmJoy_SPEED_INC*: int8 = 17'i8
const Ros1Interbotix_uxarm_joyArmJoy_SPEED_DEC*: int8 = 18'i8
const Ros1Interbotix_uxarm_joyArmJoy_SPEED_COARSE*: int8 = 19'i8
const Ros1Interbotix_uxarm_joyArmJoy_SPEED_FINE*: int8 = 20'i8
const Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_INC*: int8 = 21'i8
const Ros1Interbotix_uxarm_joyArmJoy_GRIPPER_SPEED_DEC*: int8 = 22'i8
const Ros1Interbotix_uxarm_joyArmJoy_MODE_SERVO*: int8 = 23'i8
const Ros1Interbotix_uxarm_joyArmJoy_MODE_TEACH*: int8 = 24'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Interbotix_uxarm_joyArmJoy*(): Ros1Interbotix_uxarm_joyArmJoy =
  result.`ee_x_cmd` = 0
  result.`ee_y_cmd` = 0
  result.`ee_z_cmd` = 0
  result.`ee_yaw_cmd` = 0
  result.`ee_pitch_cmd` = 0
  result.`waist_cmd` = 0
  result.`gripper_cmd` = 0
  result.`pose_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
  result.`gripper_speed_cmd` = 0
  result.`mode_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Interbotix_uxarm_joyArmJoy; w: var Writer) =
  putInteger(w,value.`ee_x_cmd`)
  putInteger(w,value.`ee_y_cmd`)
  putInteger(w,value.`ee_z_cmd`)
  putInteger(w,value.`ee_yaw_cmd`)
  putInteger(w,value.`ee_pitch_cmd`)
  putInteger(w,value.`waist_cmd`)
  putInteger(w,value.`gripper_cmd`)
  putInteger(w,value.`pose_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
  putInteger(w,value.`gripper_speed_cmd`)
  putInteger(w,value.`mode_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Interbotix_uxarm_joyArmJoy*(r: var Reader): Ros1Interbotix_uxarm_joyArmJoy =
  result = initRos1Interbotix_uxarm_joyArmJoy()
  result.`ee_x_cmd` = getInteger(r,int8)
  result.`ee_y_cmd` = getInteger(r,int8)
  result.`ee_z_cmd` = getInteger(r,int8)
  result.`ee_yaw_cmd` = getInteger(r,int8)
  result.`ee_pitch_cmd` = getInteger(r,int8)
  result.`waist_cmd` = getInteger(r,int8)
  result.`gripper_cmd` = getInteger(r,int8)
  result.`pose_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
  result.`gripper_speed_cmd` = getInteger(r,int8)
  result.`mode_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Interbotix_uxarm_joyArmJoy): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Interbotix_uxarm_joyArmJoy*(b: seq[byte]): Ros1Interbotix_uxarm_joyArmJoy =
  var r = initReader(b,12)
  result = readRos1Interbotix_uxarm_joyArmJoy(r)
  finish(r)
