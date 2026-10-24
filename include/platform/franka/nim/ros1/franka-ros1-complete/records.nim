## @brief Complete original franka ros1 canonical values.
## @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
## every original field; native registration and manually granted ROS authority are separate. Caller-
## owned values and codec failures are described by each operation and the locale API reference.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of franka_example_controllers/JointTorqueComparison.
## @details Canonical extent 176..176 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_example_controllersJointTorqueComparison* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_example_controllers/JointTorqueComparison.tau_error; native type float64.
  ## Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `tau_error`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_example_controllers/JointTorqueComparison.tau_commanded; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `tau_commanded`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_example_controllers/JointTorqueComparison.tau_measured; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `tau_measured`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_example_controllers/JointTorqueComparison.root_mean_square_error; native
  ## type float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `root_mean_square_error`*: float64
const Ros1Franka_example_controllersJointTorqueComparisonMaximumWireBytes* = 176
const Ros1Franka_example_controllersJointTorqueComparisonCodecIdentity* =
        "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254"
const Ros1Franka_example_controllersJointTorqueComparisonNativeType* = "franka_example_controllers/JointTorqueComparison"
const Ros1Franka_example_controllersJointTorqueComparisonNativeIdentity* = ""
proc initRos1Franka_example_controllersJointTorqueComparison*(): Ros1Franka_example_controllersJointTorqueComparison =
  result.`tau_error` = [0,0,0,0,0,0,0]
  result.`tau_commanded` = [0,0,0,0,0,0,0]
  result.`tau_measured` = [0,0,0,0,0,0,0]
  result.`root_mean_square_error` = 0
proc writeFields*(value: Ros1Franka_example_controllersJointTorqueComparison; w: var Writer) =
  for e in value.`tau_error`:
    putFloat64(w,e)
  for e in value.`tau_commanded`:
    putFloat64(w,e)
  for e in value.`tau_measured`:
    putFloat64(w,e)
  putFloat64(w,value.`root_mean_square_error`)
proc readRos1Franka_example_controllersJointTorqueComparison*(r: var Reader): Ros1Franka_example_controllersJointTorqueComparison =
  result = initRos1Franka_example_controllersJointTorqueComparison()
  let count0 = 7
  for i in 0..<count0:
    result.`tau_error`[i] = getFloat64(r)
  let count1 = 7
  for i in 0..<count1:
    result.`tau_commanded`[i] = getFloat64(r)
  let count2 = 7
  for i in 0..<count2:
    result.`tau_measured`[i] = getFloat64(r)
  result.`root_mean_square_error` = getFloat64(r)
proc encode*(value: Ros1Franka_example_controllersJointTorqueComparison): seq[byte] =
  var w = initWriter(176)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_example_controllersJointTorqueComparison*(b: seq[byte]): Ros1Franka_example_controllersJointTorqueComparison =
  var r = initReader(b,176)
  result = readRos1Franka_example_controllersJointTorqueComparison(r)
  finish(r)
## @brief Own every original field of franka_gripper/GraspEpsilon.
## @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperGraspEpsilon* = object
  ## @brief [m]
  ## @details Original franka_gripper/GraspEpsilon.inner; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `inner`*: float64
  ## @brief [m]
  ## @details Original franka_gripper/GraspEpsilon.outer; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `outer`*: float64
const Ros1Franka_gripperGraspEpsilonMaximumWireBytes* = 16
const Ros1Franka_gripperGraspEpsilonCodecIdentity* = "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9"
const Ros1Franka_gripperGraspEpsilonNativeType* = "franka_gripper/GraspEpsilon"
const Ros1Franka_gripperGraspEpsilonNativeIdentity* = ""
proc initRos1Franka_gripperGraspEpsilon*(): Ros1Franka_gripperGraspEpsilon =
  result.`inner` = 0
  result.`outer` = 0
proc writeFields*(value: Ros1Franka_gripperGraspEpsilon; w: var Writer) =
  putFloat64(w,value.`inner`)
  putFloat64(w,value.`outer`)
proc readRos1Franka_gripperGraspEpsilon*(r: var Reader): Ros1Franka_gripperGraspEpsilon =
  result = initRos1Franka_gripperGraspEpsilon()
  result.`inner` = getFloat64(r)
  result.`outer` = getFloat64(r)
proc encode*(value: Ros1Franka_gripperGraspEpsilon): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperGraspEpsilon*(b: seq[byte]): Ros1Franka_gripperGraspEpsilon =
  var r = initReader(b,16)
  result = readRos1Franka_gripperGraspEpsilon(r)
  finish(r)
## @brief Own every original field of franka_gripper/GraspGoal.
## @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperGraspGoal* = object
  ## @brief [m]
  ## @details Original franka_gripper/GraspGoal.width; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `width`*: float64
  ## @brief Retain the complete original franka_gripper/GraspEpsilon field.
  ## @details Original franka_gripper/GraspGoal.epsilon; native type franka_gripper/GraspEpsilon. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `epsilon`*: Ros1Franka_gripperGraspEpsilon
  ## @brief [m/s]
  ## @details Original franka_gripper/GraspGoal.speed; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `speed`*: float64
  ## @brief [N]
  ## @details Original franka_gripper/GraspGoal.force; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `force`*: float64
const Ros1Franka_gripperGraspGoalMaximumWireBytes* = 40
const Ros1Franka_gripperGraspGoalCodecIdentity* = "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf"
const Ros1Franka_gripperGraspGoalNativeType* = "franka_gripper/GraspGoal"
const Ros1Franka_gripperGraspGoalNativeIdentity* = ""
proc initRos1Franka_gripperGraspGoal*(): Ros1Franka_gripperGraspGoal =
  result.`width` = 0
  result.`epsilon` = initRos1Franka_gripperGraspEpsilon()
  result.`speed` = 0
  result.`force` = 0
proc writeFields*(value: Ros1Franka_gripperGraspGoal; w: var Writer) =
  putFloat64(w,value.`width`)
  writeFields(value.`epsilon`,w)
  putFloat64(w,value.`speed`)
  putFloat64(w,value.`force`)
proc readRos1Franka_gripperGraspGoal*(r: var Reader): Ros1Franka_gripperGraspGoal =
  result = initRos1Franka_gripperGraspGoal()
  result.`width` = getFloat64(r)
  result.`epsilon` = readRos1Franka_gripperGraspEpsilon(r)
  result.`speed` = getFloat64(r)
  result.`force` = getFloat64(r)
proc encode*(value: Ros1Franka_gripperGraspGoal): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperGraspGoal*(b: seq[byte]): Ros1Franka_gripperGraspGoal =
  var r = initReader(b,40)
  result = readRos1Franka_gripperGraspGoal(r)
  finish(r)
## @brief Own every original field of franka_gripper/GraspResult.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperGraspResult* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_gripper/GraspResult.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_gripper/GraspResult.error; native type string. Scalar value. UTF-8 capacity
  ## 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  `error`*: string
const Ros1Franka_gripperGraspResultMaximumWireBytes* = 261
const Ros1Franka_gripperGraspResultCodecIdentity* = "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e"
const Ros1Franka_gripperGraspResultNativeType* = "franka_gripper/GraspResult"
const Ros1Franka_gripperGraspResultNativeIdentity* = ""
proc initRos1Franka_gripperGraspResult*(): Ros1Franka_gripperGraspResult =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_gripperGraspResult; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_gripperGraspResult*(r: var Reader): Ros1Franka_gripperGraspResult =
  result = initRos1Franka_gripperGraspResult()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_gripperGraspResult): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperGraspResult*(b: seq[byte]): Ros1Franka_gripperGraspResult =
  var r = initReader(b,261)
  result = readRos1Franka_gripperGraspResult(r)
  finish(r)
## @brief Own every original field of franka_gripper/GraspFeedback.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperGraspFeedback* = object
const Ros1Franka_gripperGraspFeedbackMaximumWireBytes* = 0
const Ros1Franka_gripperGraspFeedbackCodecIdentity* = "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d"
const Ros1Franka_gripperGraspFeedbackNativeType* = "franka_gripper/GraspFeedback"
const Ros1Franka_gripperGraspFeedbackNativeIdentity* = ""
proc initRos1Franka_gripperGraspFeedback*(): Ros1Franka_gripperGraspFeedback =
  discard
proc writeFields*(value: Ros1Franka_gripperGraspFeedback; w: var Writer) =
  discard
proc readRos1Franka_gripperGraspFeedback*(r: var Reader): Ros1Franka_gripperGraspFeedback =
  result = initRos1Franka_gripperGraspFeedback()
proc encode*(value: Ros1Franka_gripperGraspFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperGraspFeedback*(b: seq[byte]): Ros1Franka_gripperGraspFeedback =
  var r = initReader(b,0)
  result = readRos1Franka_gripperGraspFeedback(r)
  finish(r)
## @brief Own every original field of franka_gripper/HomingGoal.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperHomingGoal* = object
const Ros1Franka_gripperHomingGoalMaximumWireBytes* = 0
const Ros1Franka_gripperHomingGoalCodecIdentity* = "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f"
const Ros1Franka_gripperHomingGoalNativeType* = "franka_gripper/HomingGoal"
const Ros1Franka_gripperHomingGoalNativeIdentity* = ""
proc initRos1Franka_gripperHomingGoal*(): Ros1Franka_gripperHomingGoal =
  discard
proc writeFields*(value: Ros1Franka_gripperHomingGoal; w: var Writer) =
  discard
proc readRos1Franka_gripperHomingGoal*(r: var Reader): Ros1Franka_gripperHomingGoal =
  result = initRos1Franka_gripperHomingGoal()
proc encode*(value: Ros1Franka_gripperHomingGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperHomingGoal*(b: seq[byte]): Ros1Franka_gripperHomingGoal =
  var r = initReader(b,0)
  result = readRos1Franka_gripperHomingGoal(r)
  finish(r)
## @brief Own every original field of franka_gripper/HomingResult.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperHomingResult* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_gripper/HomingResult.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_gripper/HomingResult.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros1Franka_gripperHomingResultMaximumWireBytes* = 261
const Ros1Franka_gripperHomingResultCodecIdentity* = "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477"
const Ros1Franka_gripperHomingResultNativeType* = "franka_gripper/HomingResult"
const Ros1Franka_gripperHomingResultNativeIdentity* = ""
proc initRos1Franka_gripperHomingResult*(): Ros1Franka_gripperHomingResult =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_gripperHomingResult; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_gripperHomingResult*(r: var Reader): Ros1Franka_gripperHomingResult =
  result = initRos1Franka_gripperHomingResult()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_gripperHomingResult): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperHomingResult*(b: seq[byte]): Ros1Franka_gripperHomingResult =
  var r = initReader(b,261)
  result = readRos1Franka_gripperHomingResult(r)
  finish(r)
## @brief Own every original field of franka_gripper/HomingFeedback.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperHomingFeedback* = object
const Ros1Franka_gripperHomingFeedbackMaximumWireBytes* = 0
const Ros1Franka_gripperHomingFeedbackCodecIdentity* = "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e"
const Ros1Franka_gripperHomingFeedbackNativeType* = "franka_gripper/HomingFeedback"
const Ros1Franka_gripperHomingFeedbackNativeIdentity* = ""
proc initRos1Franka_gripperHomingFeedback*(): Ros1Franka_gripperHomingFeedback =
  discard
proc writeFields*(value: Ros1Franka_gripperHomingFeedback; w: var Writer) =
  discard
proc readRos1Franka_gripperHomingFeedback*(r: var Reader): Ros1Franka_gripperHomingFeedback =
  result = initRos1Franka_gripperHomingFeedback()
proc encode*(value: Ros1Franka_gripperHomingFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperHomingFeedback*(b: seq[byte]): Ros1Franka_gripperHomingFeedback =
  var r = initReader(b,0)
  result = readRos1Franka_gripperHomingFeedback(r)
  finish(r)
## @brief Own every original field of franka_gripper/MoveGoal.
## @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperMoveGoal* = object
  ## @brief [m]
  ## @details Original franka_gripper/MoveGoal.width; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `width`*: float64
  ## @brief [m/s]
  ## @details Original franka_gripper/MoveGoal.speed; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `speed`*: float64
const Ros1Franka_gripperMoveGoalMaximumWireBytes* = 16
const Ros1Franka_gripperMoveGoalCodecIdentity* = "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a"
const Ros1Franka_gripperMoveGoalNativeType* = "franka_gripper/MoveGoal"
const Ros1Franka_gripperMoveGoalNativeIdentity* = ""
proc initRos1Franka_gripperMoveGoal*(): Ros1Franka_gripperMoveGoal =
  result.`width` = 0
  result.`speed` = 0
proc writeFields*(value: Ros1Franka_gripperMoveGoal; w: var Writer) =
  putFloat64(w,value.`width`)
  putFloat64(w,value.`speed`)
proc readRos1Franka_gripperMoveGoal*(r: var Reader): Ros1Franka_gripperMoveGoal =
  result = initRos1Franka_gripperMoveGoal()
  result.`width` = getFloat64(r)
  result.`speed` = getFloat64(r)
proc encode*(value: Ros1Franka_gripperMoveGoal): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperMoveGoal*(b: seq[byte]): Ros1Franka_gripperMoveGoal =
  var r = initReader(b,16)
  result = readRos1Franka_gripperMoveGoal(r)
  finish(r)
## @brief Own every original field of franka_gripper/MoveResult.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperMoveResult* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_gripper/MoveResult.success; native type bool. Scalar value. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_gripper/MoveResult.error; native type string. Scalar value. UTF-8 capacity
  ## 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  `error`*: string
const Ros1Franka_gripperMoveResultMaximumWireBytes* = 261
const Ros1Franka_gripperMoveResultCodecIdentity* = "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3"
const Ros1Franka_gripperMoveResultNativeType* = "franka_gripper/MoveResult"
const Ros1Franka_gripperMoveResultNativeIdentity* = ""
proc initRos1Franka_gripperMoveResult*(): Ros1Franka_gripperMoveResult =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_gripperMoveResult; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_gripperMoveResult*(r: var Reader): Ros1Franka_gripperMoveResult =
  result = initRos1Franka_gripperMoveResult()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_gripperMoveResult): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperMoveResult*(b: seq[byte]): Ros1Franka_gripperMoveResult =
  var r = initReader(b,261)
  result = readRos1Franka_gripperMoveResult(r)
  finish(r)
## @brief Own every original field of franka_gripper/MoveFeedback.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperMoveFeedback* = object
const Ros1Franka_gripperMoveFeedbackMaximumWireBytes* = 0
const Ros1Franka_gripperMoveFeedbackCodecIdentity* = "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80"
const Ros1Franka_gripperMoveFeedbackNativeType* = "franka_gripper/MoveFeedback"
const Ros1Franka_gripperMoveFeedbackNativeIdentity* = ""
proc initRos1Franka_gripperMoveFeedback*(): Ros1Franka_gripperMoveFeedback =
  discard
proc writeFields*(value: Ros1Franka_gripperMoveFeedback; w: var Writer) =
  discard
proc readRos1Franka_gripperMoveFeedback*(r: var Reader): Ros1Franka_gripperMoveFeedback =
  result = initRos1Franka_gripperMoveFeedback()
proc encode*(value: Ros1Franka_gripperMoveFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperMoveFeedback*(b: seq[byte]): Ros1Franka_gripperMoveFeedback =
  var r = initReader(b,0)
  result = readRos1Franka_gripperMoveFeedback(r)
  finish(r)
## @brief Own every original field of franka_gripper/StopGoal.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperStopGoal* = object
const Ros1Franka_gripperStopGoalMaximumWireBytes* = 0
const Ros1Franka_gripperStopGoalCodecIdentity* = "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245"
const Ros1Franka_gripperStopGoalNativeType* = "franka_gripper/StopGoal"
const Ros1Franka_gripperStopGoalNativeIdentity* = ""
proc initRos1Franka_gripperStopGoal*(): Ros1Franka_gripperStopGoal =
  discard
proc writeFields*(value: Ros1Franka_gripperStopGoal; w: var Writer) =
  discard
proc readRos1Franka_gripperStopGoal*(r: var Reader): Ros1Franka_gripperStopGoal =
  result = initRos1Franka_gripperStopGoal()
proc encode*(value: Ros1Franka_gripperStopGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperStopGoal*(b: seq[byte]): Ros1Franka_gripperStopGoal =
  var r = initReader(b,0)
  result = readRos1Franka_gripperStopGoal(r)
  finish(r)
## @brief Own every original field of franka_gripper/StopResult.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperStopResult* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_gripper/StopResult.success; native type bool. Scalar value. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_gripper/StopResult.error; native type string. Scalar value. UTF-8 capacity
  ## 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  `error`*: string
const Ros1Franka_gripperStopResultMaximumWireBytes* = 261
const Ros1Franka_gripperStopResultCodecIdentity* = "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61"
const Ros1Franka_gripperStopResultNativeType* = "franka_gripper/StopResult"
const Ros1Franka_gripperStopResultNativeIdentity* = ""
proc initRos1Franka_gripperStopResult*(): Ros1Franka_gripperStopResult =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_gripperStopResult; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_gripperStopResult*(r: var Reader): Ros1Franka_gripperStopResult =
  result = initRos1Franka_gripperStopResult()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_gripperStopResult): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperStopResult*(b: seq[byte]): Ros1Franka_gripperStopResult =
  var r = initReader(b,261)
  result = readRos1Franka_gripperStopResult(r)
  finish(r)
## @brief Own every original field of franka_gripper/StopFeedback.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_gripperStopFeedback* = object
const Ros1Franka_gripperStopFeedbackMaximumWireBytes* = 0
const Ros1Franka_gripperStopFeedbackCodecIdentity* = "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d"
const Ros1Franka_gripperStopFeedbackNativeType* = "franka_gripper/StopFeedback"
const Ros1Franka_gripperStopFeedbackNativeIdentity* = ""
proc initRos1Franka_gripperStopFeedback*(): Ros1Franka_gripperStopFeedback =
  discard
proc writeFields*(value: Ros1Franka_gripperStopFeedback; w: var Writer) =
  discard
proc readRos1Franka_gripperStopFeedback*(r: var Reader): Ros1Franka_gripperStopFeedback =
  result = initRos1Franka_gripperStopFeedback()
proc encode*(value: Ros1Franka_gripperStopFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_gripperStopFeedback*(b: seq[byte]): Ros1Franka_gripperStopFeedback =
  var r = initReader(b,0)
  result = readRos1Franka_gripperStopFeedback(r)
  finish(r)
## @brief Own every original field of franka_msgs/ErrorRecoveryGoal.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsErrorRecoveryGoal* = object
const Ros1Franka_msgsErrorRecoveryGoalMaximumWireBytes* = 0
const Ros1Franka_msgsErrorRecoveryGoalCodecIdentity* = "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64"
const Ros1Franka_msgsErrorRecoveryGoalNativeType* = "franka_msgs/ErrorRecoveryGoal"
const Ros1Franka_msgsErrorRecoveryGoalNativeIdentity* = ""
proc initRos1Franka_msgsErrorRecoveryGoal*(): Ros1Franka_msgsErrorRecoveryGoal =
  discard
proc writeFields*(value: Ros1Franka_msgsErrorRecoveryGoal; w: var Writer) =
  discard
proc readRos1Franka_msgsErrorRecoveryGoal*(r: var Reader): Ros1Franka_msgsErrorRecoveryGoal =
  result = initRos1Franka_msgsErrorRecoveryGoal()
proc encode*(value: Ros1Franka_msgsErrorRecoveryGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsErrorRecoveryGoal*(b: seq[byte]): Ros1Franka_msgsErrorRecoveryGoal =
  var r = initReader(b,0)
  result = readRos1Franka_msgsErrorRecoveryGoal(r)
  finish(r)
## @brief Own every original field of franka_msgs/ErrorRecoveryResult.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsErrorRecoveryResult* = object
const Ros1Franka_msgsErrorRecoveryResultMaximumWireBytes* = 0
const Ros1Franka_msgsErrorRecoveryResultCodecIdentity* = "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794"
const Ros1Franka_msgsErrorRecoveryResultNativeType* = "franka_msgs/ErrorRecoveryResult"
const Ros1Franka_msgsErrorRecoveryResultNativeIdentity* = ""
proc initRos1Franka_msgsErrorRecoveryResult*(): Ros1Franka_msgsErrorRecoveryResult =
  discard
proc writeFields*(value: Ros1Franka_msgsErrorRecoveryResult; w: var Writer) =
  discard
proc readRos1Franka_msgsErrorRecoveryResult*(r: var Reader): Ros1Franka_msgsErrorRecoveryResult =
  result = initRos1Franka_msgsErrorRecoveryResult()
proc encode*(value: Ros1Franka_msgsErrorRecoveryResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsErrorRecoveryResult*(b: seq[byte]): Ros1Franka_msgsErrorRecoveryResult =
  var r = initReader(b,0)
  result = readRos1Franka_msgsErrorRecoveryResult(r)
  finish(r)
## @brief Own every original field of franka_msgs/ErrorRecoveryFeedback.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsErrorRecoveryFeedback* = object
const Ros1Franka_msgsErrorRecoveryFeedbackMaximumWireBytes* = 0
const Ros1Franka_msgsErrorRecoveryFeedbackCodecIdentity* =
        "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21"
const Ros1Franka_msgsErrorRecoveryFeedbackNativeType* = "franka_msgs/ErrorRecoveryFeedback"
const Ros1Franka_msgsErrorRecoveryFeedbackNativeIdentity* = ""
proc initRos1Franka_msgsErrorRecoveryFeedback*(): Ros1Franka_msgsErrorRecoveryFeedback =
  discard
proc writeFields*(value: Ros1Franka_msgsErrorRecoveryFeedback; w: var Writer) =
  discard
proc readRos1Franka_msgsErrorRecoveryFeedback*(r: var Reader): Ros1Franka_msgsErrorRecoveryFeedback =
  result = initRos1Franka_msgsErrorRecoveryFeedback()
proc encode*(value: Ros1Franka_msgsErrorRecoveryFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsErrorRecoveryFeedback*(b: seq[byte]): Ros1Franka_msgsErrorRecoveryFeedback =
  var r = initReader(b,0)
  result = readRos1Franka_msgsErrorRecoveryFeedback(r)
  finish(r)
## @brief Own every original field of franka_msgs/Errors.
## @details Canonical extent 41..41 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsErrors* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_position_limits_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_position_limits_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.self_collision_avoidance_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `self_collision_avoidance_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_velocity_violation; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `joint_velocity_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_velocity_violation; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_velocity_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.force_control_safety_violation; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `force_control_safety_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_reflex; native type bool. Scalar value. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `joint_reflex`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_reflex; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `cartesian_reflex`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `max_goal_pose_deviation_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.max_path_pose_deviation_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `max_path_pose_deviation_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_velocity_profile_safety_violation; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_velocity_profile_safety_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_position_motion_generator_start_pose_invalid; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_position_motion_generator_start_pose_invalid`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_motion_generator_position_limits_violation; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_motion_generator_velocity_limits_violation; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_velocity_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_motion_generator_velocity_discontinuity; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_velocity_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_motion_generator_acceleration_discontinuity; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_acceleration_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_position_motion_generator_start_pose_invalid; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_position_motion_generator_start_pose_invalid`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_limit_violation; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_elbow_limit_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_limits_violation; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_velocity_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_velocity_discontinuity; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_velocity_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_acceleration_discontinuity; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_acceleration_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_elbow_sign_inconsistent`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_start_elbow_invalid; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_start_elbow_invalid`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_joint_position_limits_violation;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_velocity_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_joint_velocity_discontinuity; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_velocity_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_motion_generator_joint_acceleration_discontinuity;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_acceleration_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_position_motion_generator_invalid_frame; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_position_motion_generator_invalid_frame`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.force_controller_desired_force_tolerance_violation; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `force_controller_desired_force_tolerance_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.controller_torque_discontinuity; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `controller_torque_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.start_elbow_sign_inconsistent; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `start_elbow_sign_inconsistent`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.communication_constraints_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `communication_constraints_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.power_limit_violation; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `power_limit_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_p2p_insufficient_torque_for_planning; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_p2p_insufficient_torque_for_planning`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.tau_j_range_violation; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `tau_j_range_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.instability_detected; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `instability_detected`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_move_in_wrong_direction; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `joint_move_in_wrong_direction`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.cartesian_spline_motion_generator_violation; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_spline_motion_generator_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.joint_via_motion_generator_planning_joint_limit_violation;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_via_motion_generator_planning_joint_limit_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.base_acceleration_initialization_timeout; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `base_acceleration_initialization_timeout`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/Errors.base_acceleration_invalid_reading; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `base_acceleration_invalid_reading`*: bool
const Ros1Franka_msgsErrorsMaximumWireBytes* = 41
const Ros1Franka_msgsErrorsCodecIdentity* = "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca"
const Ros1Franka_msgsErrorsNativeType* = "franka_msgs/Errors"
const Ros1Franka_msgsErrorsNativeIdentity* = ""
proc initRos1Franka_msgsErrors*(): Ros1Franka_msgsErrors =
  result.`joint_position_limits_violation` = false
  result.`cartesian_position_limits_violation` = false
  result.`self_collision_avoidance_violation` = false
  result.`joint_velocity_violation` = false
  result.`cartesian_velocity_violation` = false
  result.`force_control_safety_violation` = false
  result.`joint_reflex` = false
  result.`cartesian_reflex` = false
  result.`max_goal_pose_deviation_violation` = false
  result.`max_path_pose_deviation_violation` = false
  result.`cartesian_velocity_profile_safety_violation` = false
  result.`joint_position_motion_generator_start_pose_invalid` = false
  result.`joint_motion_generator_position_limits_violation` = false
  result.`joint_motion_generator_velocity_limits_violation` = false
  result.`joint_motion_generator_velocity_discontinuity` = false
  result.`joint_motion_generator_acceleration_discontinuity` = false
  result.`cartesian_position_motion_generator_start_pose_invalid` = false
  result.`cartesian_motion_generator_elbow_limit_violation` = false
  result.`cartesian_motion_generator_velocity_limits_violation` = false
  result.`cartesian_motion_generator_velocity_discontinuity` = false
  result.`cartesian_motion_generator_acceleration_discontinuity` = false
  result.`cartesian_motion_generator_elbow_sign_inconsistent` = false
  result.`cartesian_motion_generator_start_elbow_invalid` = false
  result.`cartesian_motion_generator_joint_position_limits_violation` = false
  result.`cartesian_motion_generator_joint_velocity_limits_violation` = false
  result.`cartesian_motion_generator_joint_velocity_discontinuity` = false
  result.`cartesian_motion_generator_joint_acceleration_discontinuity` = false
  result.`cartesian_position_motion_generator_invalid_frame` = false
  result.`force_controller_desired_force_tolerance_violation` = false
  result.`controller_torque_discontinuity` = false
  result.`start_elbow_sign_inconsistent` = false
  result.`communication_constraints_violation` = false
  result.`power_limit_violation` = false
  result.`joint_p2p_insufficient_torque_for_planning` = false
  result.`tau_j_range_violation` = false
  result.`instability_detected` = false
  result.`joint_move_in_wrong_direction` = false
  result.`cartesian_spline_motion_generator_violation` = false
  result.`joint_via_motion_generator_planning_joint_limit_violation` = false
  result.`base_acceleration_initialization_timeout` = false
  result.`base_acceleration_invalid_reading` = false
proc writeFields*(value: Ros1Franka_msgsErrors; w: var Writer) =
  putBool(w,value.`joint_position_limits_violation`)
  putBool(w,value.`cartesian_position_limits_violation`)
  putBool(w,value.`self_collision_avoidance_violation`)
  putBool(w,value.`joint_velocity_violation`)
  putBool(w,value.`cartesian_velocity_violation`)
  putBool(w,value.`force_control_safety_violation`)
  putBool(w,value.`joint_reflex`)
  putBool(w,value.`cartesian_reflex`)
  putBool(w,value.`max_goal_pose_deviation_violation`)
  putBool(w,value.`max_path_pose_deviation_violation`)
  putBool(w,value.`cartesian_velocity_profile_safety_violation`)
  putBool(w,value.`joint_position_motion_generator_start_pose_invalid`)
  putBool(w,value.`joint_motion_generator_position_limits_violation`)
  putBool(w,value.`joint_motion_generator_velocity_limits_violation`)
  putBool(w,value.`joint_motion_generator_velocity_discontinuity`)
  putBool(w,value.`joint_motion_generator_acceleration_discontinuity`)
  putBool(w,value.`cartesian_position_motion_generator_start_pose_invalid`)
  putBool(w,value.`cartesian_motion_generator_elbow_limit_violation`)
  putBool(w,value.`cartesian_motion_generator_velocity_limits_violation`)
  putBool(w,value.`cartesian_motion_generator_velocity_discontinuity`)
  putBool(w,value.`cartesian_motion_generator_acceleration_discontinuity`)
  putBool(w,value.`cartesian_motion_generator_elbow_sign_inconsistent`)
  putBool(w,value.`cartesian_motion_generator_start_elbow_invalid`)
  putBool(w,value.`cartesian_motion_generator_joint_position_limits_violation`)
  putBool(w,value.`cartesian_motion_generator_joint_velocity_limits_violation`)
  putBool(w,value.`cartesian_motion_generator_joint_velocity_discontinuity`)
  putBool(w,value.`cartesian_motion_generator_joint_acceleration_discontinuity`)
  putBool(w,value.`cartesian_position_motion_generator_invalid_frame`)
  putBool(w,value.`force_controller_desired_force_tolerance_violation`)
  putBool(w,value.`controller_torque_discontinuity`)
  putBool(w,value.`start_elbow_sign_inconsistent`)
  putBool(w,value.`communication_constraints_violation`)
  putBool(w,value.`power_limit_violation`)
  putBool(w,value.`joint_p2p_insufficient_torque_for_planning`)
  putBool(w,value.`tau_j_range_violation`)
  putBool(w,value.`instability_detected`)
  putBool(w,value.`joint_move_in_wrong_direction`)
  putBool(w,value.`cartesian_spline_motion_generator_violation`)
  putBool(w,value.`joint_via_motion_generator_planning_joint_limit_violation`)
  putBool(w,value.`base_acceleration_initialization_timeout`)
  putBool(w,value.`base_acceleration_invalid_reading`)
proc readRos1Franka_msgsErrors*(r: var Reader): Ros1Franka_msgsErrors =
  result = initRos1Franka_msgsErrors()
  result.`joint_position_limits_violation` = getBool(r)
  result.`cartesian_position_limits_violation` = getBool(r)
  result.`self_collision_avoidance_violation` = getBool(r)
  result.`joint_velocity_violation` = getBool(r)
  result.`cartesian_velocity_violation` = getBool(r)
  result.`force_control_safety_violation` = getBool(r)
  result.`joint_reflex` = getBool(r)
  result.`cartesian_reflex` = getBool(r)
  result.`max_goal_pose_deviation_violation` = getBool(r)
  result.`max_path_pose_deviation_violation` = getBool(r)
  result.`cartesian_velocity_profile_safety_violation` = getBool(r)
  result.`joint_position_motion_generator_start_pose_invalid` = getBool(r)
  result.`joint_motion_generator_position_limits_violation` = getBool(r)
  result.`joint_motion_generator_velocity_limits_violation` = getBool(r)
  result.`joint_motion_generator_velocity_discontinuity` = getBool(r)
  result.`joint_motion_generator_acceleration_discontinuity` = getBool(r)
  result.`cartesian_position_motion_generator_start_pose_invalid` = getBool(r)
  result.`cartesian_motion_generator_elbow_limit_violation` = getBool(r)
  result.`cartesian_motion_generator_velocity_limits_violation` = getBool(r)
  result.`cartesian_motion_generator_velocity_discontinuity` = getBool(r)
  result.`cartesian_motion_generator_acceleration_discontinuity` = getBool(r)
  result.`cartesian_motion_generator_elbow_sign_inconsistent` = getBool(r)
  result.`cartesian_motion_generator_start_elbow_invalid` = getBool(r)
  result.`cartesian_motion_generator_joint_position_limits_violation` = getBool(r)
  result.`cartesian_motion_generator_joint_velocity_limits_violation` = getBool(r)
  result.`cartesian_motion_generator_joint_velocity_discontinuity` = getBool(r)
  result.`cartesian_motion_generator_joint_acceleration_discontinuity` = getBool(r)
  result.`cartesian_position_motion_generator_invalid_frame` = getBool(r)
  result.`force_controller_desired_force_tolerance_violation` = getBool(r)
  result.`controller_torque_discontinuity` = getBool(r)
  result.`start_elbow_sign_inconsistent` = getBool(r)
  result.`communication_constraints_violation` = getBool(r)
  result.`power_limit_violation` = getBool(r)
  result.`joint_p2p_insufficient_torque_for_planning` = getBool(r)
  result.`tau_j_range_violation` = getBool(r)
  result.`instability_detected` = getBool(r)
  result.`joint_move_in_wrong_direction` = getBool(r)
  result.`cartesian_spline_motion_generator_violation` = getBool(r)
  result.`joint_via_motion_generator_planning_joint_limit_violation` = getBool(r)
  result.`base_acceleration_initialization_timeout` = getBool(r)
  result.`base_acceleration_invalid_reading` = getBool(r)
proc encode*(value: Ros1Franka_msgsErrors): seq[byte] =
  var w = initWriter(41)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsErrors*(b: seq[byte]): Ros1Franka_msgsErrors =
  var r = initReader(b,41)
  result = readRos1Franka_msgsErrors(r)
  finish(r)
## @brief Own every original field of time.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Time* = object
  ## @brief Retain the complete original uint32 field.
  ## @details Original time.sec; native type uint32. Scalar value. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `sec`*: uint32
  ## @brief Retain the complete original uint32 field.
  ## @details Original time.nsec; native type uint32. Scalar value. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `nsec`*: uint32
const Ros1TimeMaximumWireBytes* = 8
const Ros1TimeCodecIdentity* = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
const Ros1TimeNativeType* = "time"
const Ros1TimeNativeIdentity* = ""
proc initRos1Time*(): Ros1Time =
  result.`sec` = 0
  result.`nsec` = 0
proc writeFields*(value: Ros1Time; w: var Writer) =
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
proc readRos1Time*(r: var Reader): Ros1Time =
  result = initRos1Time()
  result.`sec` = getInteger(r,uint32)
  result.`nsec` = getInteger(r,uint32)
  if result.`nsec` >= 1000000000: fail(22)
proc encode*(value: Ros1Time): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Time*(b: seq[byte]): Ros1Time =
  var r = initReader(b,8)
  result = readRos1Time(r)
  finish(r)
## @brief Own every original field of std_msgs/Header.
## @details Canonical extent 16..144 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Std_msgsHeader* = object
  ## @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  ## timestamped data in a particular coordinate frame.  sequence ID: consecutively increasing ID
  ## @details Original std_msgs/Header.seq; native type uint32. Scalar value. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `seq`*: uint32
  ## @brief Two-integer timestamp that is expressed as: * stamp.sec: seconds (stamp_secs) since epoch (in
  ## Python the variable is called 'secs') * stamp.nsec: nanoseconds since stamp_secs (in Python the
  ## variable is called 'nsecs') time-handling sugar is provided by the client library
  ## @details Original std_msgs/Header.stamp; native type time. Scalar value. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `stamp`*: Ros1Time
  ## @brief Frame this data is associated with
  ## @details Original std_msgs/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
  ## bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  `frame_id`*: string
const Ros1Std_msgsHeaderMaximumWireBytes* = 144
const Ros1Std_msgsHeaderCodecIdentity* = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
const Ros1Std_msgsHeaderNativeType* = "std_msgs/Header"
const Ros1Std_msgsHeaderNativeIdentity* = ""
proc initRos1Std_msgsHeader*(): Ros1Std_msgsHeader =
  result.`seq` = 0
  result.`stamp` = initRos1Time()
  result.`frame_id` = ""
proc writeFields*(value: Ros1Std_msgsHeader; w: var Writer) =
  putInteger(w,value.`seq`)
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
proc readRos1Std_msgsHeader*(r: var Reader): Ros1Std_msgsHeader =
  result = initRos1Std_msgsHeader()
  result.`seq` = getInteger(r,uint32)
  result.`stamp` = readRos1Time(r)
  result.`frame_id` = getString(r,128)
proc encode*(value: Ros1Std_msgsHeader): seq[byte] =
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
proc decodeRos1Std_msgsHeader*(b: seq[byte]): Ros1Std_msgsHeader =
  var r = initReader(b,144)
  result = readRos1Std_msgsHeader(r)
  finish(r)
## @brief Own every original field of franka_msgs/FrankaState.
## @details Canonical extent 2491..2619 bytes. Native type identity is independent; constructing a
## value opens no resource.
type Ros1Franka_msgsFrankaState* = object
  ## @brief Retain the complete original std_msgs/Header field.
  ## @details Original franka_msgs/FrankaState.header; native type std_msgs/Header. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `header`*: Ros1Std_msgsHeader
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.cartesian_collision; native type float64. Exactly 6
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `cartesian_collision`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.cartesian_contact; native type float64. Exactly 6
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `cartesian_contact`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.q; native type float64. Exactly 7 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `q`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.q_d; native type float64. Exactly 7 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `q_d`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.dq; native type float64. Exactly 7 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dq`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.dq_d; native type float64. Exactly 7 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dq_d`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.ddq_d; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `ddq_d`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.theta; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `theta`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.dtheta; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dtheta`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.tau_J; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau_J`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.dtau_J; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dtau_J`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.tau_J_d; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau_J_d`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.K_F_ext_hat_K; native type float64. Exactly 6 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `K_F_ext_hat_K`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.elbow; native type float64. Exactly 2 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `elbow`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.elbow_d; native type float64. Exactly 2 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `elbow_d`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.elbow_c; native type float64. Exactly 2 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `elbow_c`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.delbow_c; native type float64. Exactly 2 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `delbow_c`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.ddelbow_c; native type float64. Exactly 2 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `ddelbow_c`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.joint_collision; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `joint_collision`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.joint_contact; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `joint_contact`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_F_ext_hat_K; native type float64. Exactly 6 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `O_F_ext_hat_K`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_dP_EE_d; native type float64. Exactly 6 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `O_dP_EE_d`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_ddP_O; native type float64. Exactly 3 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `O_ddP_O`*: array[3,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_dP_EE_c; native type float64. Exactly 6 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `O_dP_EE_c`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_ddP_EE_c; native type float64. Exactly 6 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `O_ddP_EE_c`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.tau_ext_hat_filtered; native type float64. Exactly 7
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `tau_ext_hat_filtered`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.m_ee; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `m_ee`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.F_x_Cee; native type float64. Exactly 3 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `F_x_Cee`*: array[3,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.I_ee; native type float64. Exactly 9 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `I_ee`*: array[9,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.m_load; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `m_load`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.F_x_Cload; native type float64. Exactly 3 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `F_x_Cload`*: array[3,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.I_load; native type float64. Exactly 9 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `I_load`*: array[9,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.m_total; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `m_total`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.F_x_Ctotal; native type float64. Exactly 3 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `F_x_Ctotal`*: array[3,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.I_total; native type float64. Exactly 9 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `I_total`*: array[9,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_T_EE; native type float64. Exactly 16 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `O_T_EE`*: array[16,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_T_EE_d; native type float64. Exactly 16 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `O_T_EE_d`*: array[16,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.O_T_EE_c; native type float64. Exactly 16 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `O_T_EE_c`*: array[16,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.F_T_EE; native type float64. Exactly 16 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `F_T_EE`*: array[16,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.F_T_NE; native type float64. Exactly 16 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `F_T_NE`*: array[16,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.NE_T_EE; native type float64. Exactly 16 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `NE_T_EE`*: array[16,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.EE_T_K; native type float64. Exactly 16 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `EE_T_K`*: array[16,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.time; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `time`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/FrankaState.control_command_success_rate; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `control_command_success_rate`*: float64
  ## @brief Retain the complete original uint8 field.
  ## @details Original franka_msgs/FrankaState.robot_mode; native type uint8. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `robot_mode`*: uint8
  ## @brief Retain the complete original franka_msgs/Errors field.
  ## @details Original franka_msgs/FrankaState.current_errors; native type franka_msgs/Errors. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `current_errors`*: Ros1Franka_msgsErrors
  ## @brief Retain the complete original franka_msgs/Errors field.
  ## @details Original franka_msgs/FrankaState.last_motion_errors; native type franka_msgs/Errors. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `last_motion_errors`*: Ros1Franka_msgsErrors
const Ros1Franka_msgsFrankaStateMaximumWireBytes* = 2619
const Ros1Franka_msgsFrankaStateCodecIdentity* = "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71"
const Ros1Franka_msgsFrankaStateNativeType* = "franka_msgs/FrankaState"
const Ros1Franka_msgsFrankaStateNativeIdentity* = ""
const Ros1Franka_msgsFrankaState_ROBOT_MODE_OTHER*: uint8 = 0'u8
const Ros1Franka_msgsFrankaState_ROBOT_MODE_IDLE*: uint8 = 1'u8
const Ros1Franka_msgsFrankaState_ROBOT_MODE_MOVE*: uint8 = 2'u8
const Ros1Franka_msgsFrankaState_ROBOT_MODE_GUIDING*: uint8 = 3'u8
const Ros1Franka_msgsFrankaState_ROBOT_MODE_REFLEX*: uint8 = 4'u8
const Ros1Franka_msgsFrankaState_ROBOT_MODE_USER_STOPPED*: uint8 = 5'u8
const Ros1Franka_msgsFrankaState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY*: uint8 = 6'u8
proc initRos1Franka_msgsFrankaState*(): Ros1Franka_msgsFrankaState =
  result.`header` = initRos1Std_msgsHeader()
  result.`cartesian_collision` = [0,0,0,0,0,0]
  result.`cartesian_contact` = [0,0,0,0,0,0]
  result.`q` = [0,0,0,0,0,0,0]
  result.`q_d` = [0,0,0,0,0,0,0]
  result.`dq` = [0,0,0,0,0,0,0]
  result.`dq_d` = [0,0,0,0,0,0,0]
  result.`ddq_d` = [0,0,0,0,0,0,0]
  result.`theta` = [0,0,0,0,0,0,0]
  result.`dtheta` = [0,0,0,0,0,0,0]
  result.`tau_J` = [0,0,0,0,0,0,0]
  result.`dtau_J` = [0,0,0,0,0,0,0]
  result.`tau_J_d` = [0,0,0,0,0,0,0]
  result.`K_F_ext_hat_K` = [0,0,0,0,0,0]
  result.`elbow` = [0,0]
  result.`elbow_d` = [0,0]
  result.`elbow_c` = [0,0]
  result.`delbow_c` = [0,0]
  result.`ddelbow_c` = [0,0]
  result.`joint_collision` = [0,0,0,0,0,0,0]
  result.`joint_contact` = [0,0,0,0,0,0,0]
  result.`O_F_ext_hat_K` = [0,0,0,0,0,0]
  result.`O_dP_EE_d` = [0,0,0,0,0,0]
  result.`O_ddP_O` = [0,0,0]
  result.`O_dP_EE_c` = [0,0,0,0,0,0]
  result.`O_ddP_EE_c` = [0,0,0,0,0,0]
  result.`tau_ext_hat_filtered` = [0,0,0,0,0,0,0]
  result.`m_ee` = 0
  result.`F_x_Cee` = [0,0,0]
  result.`I_ee` = [0,0,0,0,0,0,0,0,0]
  result.`m_load` = 0
  result.`F_x_Cload` = [0,0,0]
  result.`I_load` = [0,0,0,0,0,0,0,0,0]
  result.`m_total` = 0
  result.`F_x_Ctotal` = [0,0,0]
  result.`I_total` = [0,0,0,0,0,0,0,0,0]
  result.`O_T_EE` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`O_T_EE_d` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`O_T_EE_c` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`F_T_EE` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`F_T_NE` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`NE_T_EE` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`EE_T_K` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`time` = 0
  result.`control_command_success_rate` = 0
  result.`robot_mode` = 0
  result.`current_errors` = initRos1Franka_msgsErrors()
  result.`last_motion_errors` = initRos1Franka_msgsErrors()
proc writeFields*(value: Ros1Franka_msgsFrankaState; w: var Writer) =
  writeFields(value.`header`,w)
  for e in value.`cartesian_collision`:
    putFloat64(w,e)
  for e in value.`cartesian_contact`:
    putFloat64(w,e)
  for e in value.`q`:
    putFloat64(w,e)
  for e in value.`q_d`:
    putFloat64(w,e)
  for e in value.`dq`:
    putFloat64(w,e)
  for e in value.`dq_d`:
    putFloat64(w,e)
  for e in value.`ddq_d`:
    putFloat64(w,e)
  for e in value.`theta`:
    putFloat64(w,e)
  for e in value.`dtheta`:
    putFloat64(w,e)
  for e in value.`tau_J`:
    putFloat64(w,e)
  for e in value.`dtau_J`:
    putFloat64(w,e)
  for e in value.`tau_J_d`:
    putFloat64(w,e)
  for e in value.`K_F_ext_hat_K`:
    putFloat64(w,e)
  for e in value.`elbow`:
    putFloat64(w,e)
  for e in value.`elbow_d`:
    putFloat64(w,e)
  for e in value.`elbow_c`:
    putFloat64(w,e)
  for e in value.`delbow_c`:
    putFloat64(w,e)
  for e in value.`ddelbow_c`:
    putFloat64(w,e)
  for e in value.`joint_collision`:
    putFloat64(w,e)
  for e in value.`joint_contact`:
    putFloat64(w,e)
  for e in value.`O_F_ext_hat_K`:
    putFloat64(w,e)
  for e in value.`O_dP_EE_d`:
    putFloat64(w,e)
  for e in value.`O_ddP_O`:
    putFloat64(w,e)
  for e in value.`O_dP_EE_c`:
    putFloat64(w,e)
  for e in value.`O_ddP_EE_c`:
    putFloat64(w,e)
  for e in value.`tau_ext_hat_filtered`:
    putFloat64(w,e)
  putFloat64(w,value.`m_ee`)
  for e in value.`F_x_Cee`:
    putFloat64(w,e)
  for e in value.`I_ee`:
    putFloat64(w,e)
  putFloat64(w,value.`m_load`)
  for e in value.`F_x_Cload`:
    putFloat64(w,e)
  for e in value.`I_load`:
    putFloat64(w,e)
  putFloat64(w,value.`m_total`)
  for e in value.`F_x_Ctotal`:
    putFloat64(w,e)
  for e in value.`I_total`:
    putFloat64(w,e)
  for e in value.`O_T_EE`:
    putFloat64(w,e)
  for e in value.`O_T_EE_d`:
    putFloat64(w,e)
  for e in value.`O_T_EE_c`:
    putFloat64(w,e)
  for e in value.`F_T_EE`:
    putFloat64(w,e)
  for e in value.`F_T_NE`:
    putFloat64(w,e)
  for e in value.`NE_T_EE`:
    putFloat64(w,e)
  for e in value.`EE_T_K`:
    putFloat64(w,e)
  putFloat64(w,value.`time`)
  putFloat64(w,value.`control_command_success_rate`)
  putInteger(w,value.`robot_mode`)
  writeFields(value.`current_errors`,w)
  writeFields(value.`last_motion_errors`,w)
proc readRos1Franka_msgsFrankaState*(r: var Reader): Ros1Franka_msgsFrankaState =
  result = initRos1Franka_msgsFrankaState()
  result.`header` = readRos1Std_msgsHeader(r)
  let count1 = 6
  for i in 0..<count1:
    result.`cartesian_collision`[i] = getFloat64(r)
  let count2 = 6
  for i in 0..<count2:
    result.`cartesian_contact`[i] = getFloat64(r)
  let count3 = 7
  for i in 0..<count3:
    result.`q`[i] = getFloat64(r)
  let count4 = 7
  for i in 0..<count4:
    result.`q_d`[i] = getFloat64(r)
  let count5 = 7
  for i in 0..<count5:
    result.`dq`[i] = getFloat64(r)
  let count6 = 7
  for i in 0..<count6:
    result.`dq_d`[i] = getFloat64(r)
  let count7 = 7
  for i in 0..<count7:
    result.`ddq_d`[i] = getFloat64(r)
  let count8 = 7
  for i in 0..<count8:
    result.`theta`[i] = getFloat64(r)
  let count9 = 7
  for i in 0..<count9:
    result.`dtheta`[i] = getFloat64(r)
  let count10 = 7
  for i in 0..<count10:
    result.`tau_J`[i] = getFloat64(r)
  let count11 = 7
  for i in 0..<count11:
    result.`dtau_J`[i] = getFloat64(r)
  let count12 = 7
  for i in 0..<count12:
    result.`tau_J_d`[i] = getFloat64(r)
  let count13 = 6
  for i in 0..<count13:
    result.`K_F_ext_hat_K`[i] = getFloat64(r)
  let count14 = 2
  for i in 0..<count14:
    result.`elbow`[i] = getFloat64(r)
  let count15 = 2
  for i in 0..<count15:
    result.`elbow_d`[i] = getFloat64(r)
  let count16 = 2
  for i in 0..<count16:
    result.`elbow_c`[i] = getFloat64(r)
  let count17 = 2
  for i in 0..<count17:
    result.`delbow_c`[i] = getFloat64(r)
  let count18 = 2
  for i in 0..<count18:
    result.`ddelbow_c`[i] = getFloat64(r)
  let count19 = 7
  for i in 0..<count19:
    result.`joint_collision`[i] = getFloat64(r)
  let count20 = 7
  for i in 0..<count20:
    result.`joint_contact`[i] = getFloat64(r)
  let count21 = 6
  for i in 0..<count21:
    result.`O_F_ext_hat_K`[i] = getFloat64(r)
  let count22 = 6
  for i in 0..<count22:
    result.`O_dP_EE_d`[i] = getFloat64(r)
  let count23 = 3
  for i in 0..<count23:
    result.`O_ddP_O`[i] = getFloat64(r)
  let count24 = 6
  for i in 0..<count24:
    result.`O_dP_EE_c`[i] = getFloat64(r)
  let count25 = 6
  for i in 0..<count25:
    result.`O_ddP_EE_c`[i] = getFloat64(r)
  let count26 = 7
  for i in 0..<count26:
    result.`tau_ext_hat_filtered`[i] = getFloat64(r)
  result.`m_ee` = getFloat64(r)
  let count28 = 3
  for i in 0..<count28:
    result.`F_x_Cee`[i] = getFloat64(r)
  let count29 = 9
  for i in 0..<count29:
    result.`I_ee`[i] = getFloat64(r)
  result.`m_load` = getFloat64(r)
  let count31 = 3
  for i in 0..<count31:
    result.`F_x_Cload`[i] = getFloat64(r)
  let count32 = 9
  for i in 0..<count32:
    result.`I_load`[i] = getFloat64(r)
  result.`m_total` = getFloat64(r)
  let count34 = 3
  for i in 0..<count34:
    result.`F_x_Ctotal`[i] = getFloat64(r)
  let count35 = 9
  for i in 0..<count35:
    result.`I_total`[i] = getFloat64(r)
  let count36 = 16
  for i in 0..<count36:
    result.`O_T_EE`[i] = getFloat64(r)
  let count37 = 16
  for i in 0..<count37:
    result.`O_T_EE_d`[i] = getFloat64(r)
  let count38 = 16
  for i in 0..<count38:
    result.`O_T_EE_c`[i] = getFloat64(r)
  let count39 = 16
  for i in 0..<count39:
    result.`F_T_EE`[i] = getFloat64(r)
  let count40 = 16
  for i in 0..<count40:
    result.`F_T_NE`[i] = getFloat64(r)
  let count41 = 16
  for i in 0..<count41:
    result.`NE_T_EE`[i] = getFloat64(r)
  let count42 = 16
  for i in 0..<count42:
    result.`EE_T_K`[i] = getFloat64(r)
  result.`time` = getFloat64(r)
  result.`control_command_success_rate` = getFloat64(r)
  result.`robot_mode` = getInteger(r,uint8)
  result.`current_errors` = readRos1Franka_msgsErrors(r)
  result.`last_motion_errors` = readRos1Franka_msgsErrors(r)
proc encode*(value: Ros1Franka_msgsFrankaState): seq[byte] =
  var w = initWriter(2619)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsFrankaState*(b: seq[byte]): Ros1Franka_msgsFrankaState =
  var r = initReader(b,2619)
  result = readRos1Franka_msgsFrankaState(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetCartesianImpedanceRequest.
## @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetCartesianImpedanceRequest* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetCartesianImpedanceRequest.cartesian_stiffness; native type float64.
  ## Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `cartesian_stiffness`*: array[6,float64]
const Ros1Franka_msgsSetCartesianImpedanceRequestMaximumWireBytes* = 48
const Ros1Franka_msgsSetCartesianImpedanceRequestCodecIdentity* =
        "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf"
const Ros1Franka_msgsSetCartesianImpedanceRequestNativeType* = "franka_msgs/SetCartesianImpedanceRequest"
const Ros1Franka_msgsSetCartesianImpedanceRequestNativeIdentity* = ""
proc initRos1Franka_msgsSetCartesianImpedanceRequest*(): Ros1Franka_msgsSetCartesianImpedanceRequest =
  result.`cartesian_stiffness` = [0,0,0,0,0,0]
proc writeFields*(value: Ros1Franka_msgsSetCartesianImpedanceRequest; w: var Writer) =
  for e in value.`cartesian_stiffness`:
    putFloat64(w,e)
proc readRos1Franka_msgsSetCartesianImpedanceRequest*(r: var Reader): Ros1Franka_msgsSetCartesianImpedanceRequest =
  result = initRos1Franka_msgsSetCartesianImpedanceRequest()
  let count0 = 6
  for i in 0..<count0:
    result.`cartesian_stiffness`[i] = getFloat64(r)
proc encode*(value: Ros1Franka_msgsSetCartesianImpedanceRequest): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetCartesianImpedanceRequest*(b: seq[byte]): Ros1Franka_msgsSetCartesianImpedanceRequest =
  var r = initReader(b,48)
  result = readRos1Franka_msgsSetCartesianImpedanceRequest(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetCartesianImpedanceResponse.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetCartesianImpedanceResponse* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/SetCartesianImpedanceResponse.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/SetCartesianImpedanceResponse.error; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros1Franka_msgsSetCartesianImpedanceResponseMaximumWireBytes* = 261
const Ros1Franka_msgsSetCartesianImpedanceResponseCodecIdentity* =
        "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b"
const Ros1Franka_msgsSetCartesianImpedanceResponseNativeType* = "franka_msgs/SetCartesianImpedanceResponse"
const Ros1Franka_msgsSetCartesianImpedanceResponseNativeIdentity* = ""
proc initRos1Franka_msgsSetCartesianImpedanceResponse*(): Ros1Franka_msgsSetCartesianImpedanceResponse =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_msgsSetCartesianImpedanceResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_msgsSetCartesianImpedanceResponse*(r: var Reader): Ros1Franka_msgsSetCartesianImpedanceResponse =
  result = initRos1Franka_msgsSetCartesianImpedanceResponse()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_msgsSetCartesianImpedanceResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetCartesianImpedanceResponse*(b: seq[byte]): Ros1Franka_msgsSetCartesianImpedanceResponse =
  var r = initReader(b,261)
  result = readRos1Franka_msgsSetCartesianImpedanceResponse(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetEEFrameRequest.
## @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetEEFrameRequest* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetEEFrameRequest.NE_T_EE; native type float64. Exactly 16 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `NE_T_EE`*: array[16,float64]
const Ros1Franka_msgsSetEEFrameRequestMaximumWireBytes* = 128
const Ros1Franka_msgsSetEEFrameRequestCodecIdentity* = "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc"
const Ros1Franka_msgsSetEEFrameRequestNativeType* = "franka_msgs/SetEEFrameRequest"
const Ros1Franka_msgsSetEEFrameRequestNativeIdentity* = ""
proc initRos1Franka_msgsSetEEFrameRequest*(): Ros1Franka_msgsSetEEFrameRequest =
  result.`NE_T_EE` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Franka_msgsSetEEFrameRequest; w: var Writer) =
  for e in value.`NE_T_EE`:
    putFloat64(w,e)
proc readRos1Franka_msgsSetEEFrameRequest*(r: var Reader): Ros1Franka_msgsSetEEFrameRequest =
  result = initRos1Franka_msgsSetEEFrameRequest()
  let count0 = 16
  for i in 0..<count0:
    result.`NE_T_EE`[i] = getFloat64(r)
proc encode*(value: Ros1Franka_msgsSetEEFrameRequest): seq[byte] =
  var w = initWriter(128)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetEEFrameRequest*(b: seq[byte]): Ros1Franka_msgsSetEEFrameRequest =
  var r = initReader(b,128)
  result = readRos1Franka_msgsSetEEFrameRequest(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetEEFrameResponse.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetEEFrameResponse* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/SetEEFrameResponse.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/SetEEFrameResponse.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros1Franka_msgsSetEEFrameResponseMaximumWireBytes* = 261
const Ros1Franka_msgsSetEEFrameResponseCodecIdentity* = "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67"
const Ros1Franka_msgsSetEEFrameResponseNativeType* = "franka_msgs/SetEEFrameResponse"
const Ros1Franka_msgsSetEEFrameResponseNativeIdentity* = ""
proc initRos1Franka_msgsSetEEFrameResponse*(): Ros1Franka_msgsSetEEFrameResponse =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_msgsSetEEFrameResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_msgsSetEEFrameResponse*(r: var Reader): Ros1Franka_msgsSetEEFrameResponse =
  result = initRos1Franka_msgsSetEEFrameResponse()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_msgsSetEEFrameResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetEEFrameResponse*(b: seq[byte]): Ros1Franka_msgsSetEEFrameResponse =
  var r = initReader(b,261)
  result = readRos1Franka_msgsSetEEFrameResponse(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorRequest.
## @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_torque_thresholds_nominal; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `lower_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_torque_thresholds_nominal; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `upper_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.lower_force_thresholds_nominal;
  ## native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `lower_force_thresholds_nominal`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetForceTorqueCollisionBehaviorRequest.upper_force_thresholds_nominal;
  ## native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `upper_force_thresholds_nominal`*: array[6,float64]
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestMaximumWireBytes* = 208
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestCodecIdentity* =
        "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5"
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestNativeType* = "franka_msgs/SetForceTorqueCollisionBehaviorRequest"
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequestNativeIdentity* = ""
proc initRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest*(): Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest =
  result.`lower_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`upper_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`lower_force_thresholds_nominal` = [0,0,0,0,0,0]
  result.`upper_force_thresholds_nominal` = [0,0,0,0,0,0]
proc writeFields*(value: Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest; w: var Writer) =
  for e in value.`lower_torque_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`upper_torque_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`lower_force_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`upper_force_thresholds_nominal`:
    putFloat64(w,e)
proc readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest*(r: var Reader):
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest =
  result = initRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest()
  let count0 = 7
  for i in 0..<count0:
    result.`lower_torque_thresholds_nominal`[i] = getFloat64(r)
  let count1 = 7
  for i in 0..<count1:
    result.`upper_torque_thresholds_nominal`[i] = getFloat64(r)
  let count2 = 6
  for i in 0..<count2:
    result.`lower_force_thresholds_nominal`[i] = getFloat64(r)
  let count3 = 6
  for i in 0..<count3:
    result.`upper_force_thresholds_nominal`[i] = getFloat64(r)
proc encode*(value: Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest): seq[byte] =
  var w = initWriter(208)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest*(b: seq[byte]):
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest =
  var r = initReader(b,208)
  result = readRos1Franka_msgsSetForceTorqueCollisionBehaviorRequest(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetForceTorqueCollisionBehaviorResponse.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.success; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/SetForceTorqueCollisionBehaviorResponse.error; native type string.
  ## Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `error`*: string
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseMaximumWireBytes* = 261
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseCodecIdentity* =
        "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5"
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseNativeType* = "franka_msgs/SetForceTorqueCollisionBehaviorResponse"
const Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponseNativeIdentity* = ""
proc initRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse*(): Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse*(r: var Reader):
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse =
  result = initRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse*(b: seq[byte]):
        Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse =
  var r = initReader(b,261)
  result = readRos1Franka_msgsSetForceTorqueCollisionBehaviorResponse(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetFullCollisionBehaviorRequest.
## @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetFullCollisionBehaviorRequest* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_acceleration;
  ## native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `lower_torque_thresholds_acceleration`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_acceleration;
  ## native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `upper_torque_thresholds_acceleration`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_torque_thresholds_nominal;
  ## native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `lower_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_torque_thresholds_nominal;
  ## native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `upper_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_acceleration;
  ## native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `lower_force_thresholds_acceleration`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_acceleration;
  ## native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `upper_force_thresholds_acceleration`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.lower_force_thresholds_nominal; native
  ## type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `lower_force_thresholds_nominal`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorRequest.upper_force_thresholds_nominal; native
  ## type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `upper_force_thresholds_nominal`*: array[6,float64]
const Ros1Franka_msgsSetFullCollisionBehaviorRequestMaximumWireBytes* = 416
const Ros1Franka_msgsSetFullCollisionBehaviorRequestCodecIdentity* =
        "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c"
const Ros1Franka_msgsSetFullCollisionBehaviorRequestNativeType* = "franka_msgs/SetFullCollisionBehaviorRequest"
const Ros1Franka_msgsSetFullCollisionBehaviorRequestNativeIdentity* = ""
proc initRos1Franka_msgsSetFullCollisionBehaviorRequest*(): Ros1Franka_msgsSetFullCollisionBehaviorRequest =
  result.`lower_torque_thresholds_acceleration` = [0,0,0,0,0,0,0]
  result.`upper_torque_thresholds_acceleration` = [0,0,0,0,0,0,0]
  result.`lower_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`upper_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`lower_force_thresholds_acceleration` = [0,0,0,0,0,0]
  result.`upper_force_thresholds_acceleration` = [0,0,0,0,0,0]
  result.`lower_force_thresholds_nominal` = [0,0,0,0,0,0]
  result.`upper_force_thresholds_nominal` = [0,0,0,0,0,0]
proc writeFields*(value: Ros1Franka_msgsSetFullCollisionBehaviorRequest; w: var Writer) =
  for e in value.`lower_torque_thresholds_acceleration`:
    putFloat64(w,e)
  for e in value.`upper_torque_thresholds_acceleration`:
    putFloat64(w,e)
  for e in value.`lower_torque_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`upper_torque_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`lower_force_thresholds_acceleration`:
    putFloat64(w,e)
  for e in value.`upper_force_thresholds_acceleration`:
    putFloat64(w,e)
  for e in value.`lower_force_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`upper_force_thresholds_nominal`:
    putFloat64(w,e)
proc readRos1Franka_msgsSetFullCollisionBehaviorRequest*(r: var Reader): Ros1Franka_msgsSetFullCollisionBehaviorRequest =
  result = initRos1Franka_msgsSetFullCollisionBehaviorRequest()
  let count0 = 7
  for i in 0..<count0:
    result.`lower_torque_thresholds_acceleration`[i] = getFloat64(r)
  let count1 = 7
  for i in 0..<count1:
    result.`upper_torque_thresholds_acceleration`[i] = getFloat64(r)
  let count2 = 7
  for i in 0..<count2:
    result.`lower_torque_thresholds_nominal`[i] = getFloat64(r)
  let count3 = 7
  for i in 0..<count3:
    result.`upper_torque_thresholds_nominal`[i] = getFloat64(r)
  let count4 = 6
  for i in 0..<count4:
    result.`lower_force_thresholds_acceleration`[i] = getFloat64(r)
  let count5 = 6
  for i in 0..<count5:
    result.`upper_force_thresholds_acceleration`[i] = getFloat64(r)
  let count6 = 6
  for i in 0..<count6:
    result.`lower_force_thresholds_nominal`[i] = getFloat64(r)
  let count7 = 6
  for i in 0..<count7:
    result.`upper_force_thresholds_nominal`[i] = getFloat64(r)
proc encode*(value: Ros1Franka_msgsSetFullCollisionBehaviorRequest): seq[byte] =
  var w = initWriter(416)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetFullCollisionBehaviorRequest*(b: seq[byte]): Ros1Franka_msgsSetFullCollisionBehaviorRequest =
  var r = initReader(b,416)
  result = readRos1Franka_msgsSetFullCollisionBehaviorRequest(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetFullCollisionBehaviorResponse.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetFullCollisionBehaviorResponse* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorResponse.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/SetFullCollisionBehaviorResponse.error; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `error`*: string
const Ros1Franka_msgsSetFullCollisionBehaviorResponseMaximumWireBytes* = 261
const Ros1Franka_msgsSetFullCollisionBehaviorResponseCodecIdentity* =
        "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2"
const Ros1Franka_msgsSetFullCollisionBehaviorResponseNativeType* = "franka_msgs/SetFullCollisionBehaviorResponse"
const Ros1Franka_msgsSetFullCollisionBehaviorResponseNativeIdentity* = ""
proc initRos1Franka_msgsSetFullCollisionBehaviorResponse*(): Ros1Franka_msgsSetFullCollisionBehaviorResponse =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_msgsSetFullCollisionBehaviorResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_msgsSetFullCollisionBehaviorResponse*(r: var Reader): Ros1Franka_msgsSetFullCollisionBehaviorResponse =
  result = initRos1Franka_msgsSetFullCollisionBehaviorResponse()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_msgsSetFullCollisionBehaviorResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetFullCollisionBehaviorResponse*(b: seq[byte]): Ros1Franka_msgsSetFullCollisionBehaviorResponse =
  var r = initReader(b,261)
  result = readRos1Franka_msgsSetFullCollisionBehaviorResponse(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetJointImpedanceRequest.
## @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetJointImpedanceRequest* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetJointImpedanceRequest.joint_stiffness; native type float64. Exactly
  ## 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `joint_stiffness`*: array[7,float64]
const Ros1Franka_msgsSetJointImpedanceRequestMaximumWireBytes* = 56
const Ros1Franka_msgsSetJointImpedanceRequestCodecIdentity* =
        "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53"
const Ros1Franka_msgsSetJointImpedanceRequestNativeType* = "franka_msgs/SetJointImpedanceRequest"
const Ros1Franka_msgsSetJointImpedanceRequestNativeIdentity* = ""
proc initRos1Franka_msgsSetJointImpedanceRequest*(): Ros1Franka_msgsSetJointImpedanceRequest =
  result.`joint_stiffness` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Franka_msgsSetJointImpedanceRequest; w: var Writer) =
  for e in value.`joint_stiffness`:
    putFloat64(w,e)
proc readRos1Franka_msgsSetJointImpedanceRequest*(r: var Reader): Ros1Franka_msgsSetJointImpedanceRequest =
  result = initRos1Franka_msgsSetJointImpedanceRequest()
  let count0 = 7
  for i in 0..<count0:
    result.`joint_stiffness`[i] = getFloat64(r)
proc encode*(value: Ros1Franka_msgsSetJointImpedanceRequest): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetJointImpedanceRequest*(b: seq[byte]): Ros1Franka_msgsSetJointImpedanceRequest =
  var r = initReader(b,56)
  result = readRos1Franka_msgsSetJointImpedanceRequest(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetJointImpedanceResponse.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetJointImpedanceResponse* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/SetJointImpedanceResponse.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/SetJointImpedanceResponse.error; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros1Franka_msgsSetJointImpedanceResponseMaximumWireBytes* = 261
const Ros1Franka_msgsSetJointImpedanceResponseCodecIdentity* =
        "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55"
const Ros1Franka_msgsSetJointImpedanceResponseNativeType* = "franka_msgs/SetJointImpedanceResponse"
const Ros1Franka_msgsSetJointImpedanceResponseNativeIdentity* = ""
proc initRos1Franka_msgsSetJointImpedanceResponse*(): Ros1Franka_msgsSetJointImpedanceResponse =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_msgsSetJointImpedanceResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_msgsSetJointImpedanceResponse*(r: var Reader): Ros1Franka_msgsSetJointImpedanceResponse =
  result = initRos1Franka_msgsSetJointImpedanceResponse()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_msgsSetJointImpedanceResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetJointImpedanceResponse*(b: seq[byte]): Ros1Franka_msgsSetJointImpedanceResponse =
  var r = initReader(b,261)
  result = readRos1Franka_msgsSetJointImpedanceResponse(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetKFrameRequest.
## @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetKFrameRequest* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetKFrameRequest.EE_T_K; native type float64. Exactly 16 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `EE_T_K`*: array[16,float64]
const Ros1Franka_msgsSetKFrameRequestMaximumWireBytes* = 128
const Ros1Franka_msgsSetKFrameRequestCodecIdentity* = "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446"
const Ros1Franka_msgsSetKFrameRequestNativeType* = "franka_msgs/SetKFrameRequest"
const Ros1Franka_msgsSetKFrameRequestNativeIdentity* = ""
proc initRos1Franka_msgsSetKFrameRequest*(): Ros1Franka_msgsSetKFrameRequest =
  result.`EE_T_K` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Franka_msgsSetKFrameRequest; w: var Writer) =
  for e in value.`EE_T_K`:
    putFloat64(w,e)
proc readRos1Franka_msgsSetKFrameRequest*(r: var Reader): Ros1Franka_msgsSetKFrameRequest =
  result = initRos1Franka_msgsSetKFrameRequest()
  let count0 = 16
  for i in 0..<count0:
    result.`EE_T_K`[i] = getFloat64(r)
proc encode*(value: Ros1Franka_msgsSetKFrameRequest): seq[byte] =
  var w = initWriter(128)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetKFrameRequest*(b: seq[byte]): Ros1Franka_msgsSetKFrameRequest =
  var r = initReader(b,128)
  result = readRos1Franka_msgsSetKFrameRequest(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetKFrameResponse.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetKFrameResponse* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/SetKFrameResponse.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/SetKFrameResponse.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros1Franka_msgsSetKFrameResponseMaximumWireBytes* = 261
const Ros1Franka_msgsSetKFrameResponseCodecIdentity* = "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443"
const Ros1Franka_msgsSetKFrameResponseNativeType* = "franka_msgs/SetKFrameResponse"
const Ros1Franka_msgsSetKFrameResponseNativeIdentity* = ""
proc initRos1Franka_msgsSetKFrameResponse*(): Ros1Franka_msgsSetKFrameResponse =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_msgsSetKFrameResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_msgsSetKFrameResponse*(r: var Reader): Ros1Franka_msgsSetKFrameResponse =
  result = initRos1Franka_msgsSetKFrameResponse()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_msgsSetKFrameResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetKFrameResponse*(b: seq[byte]): Ros1Franka_msgsSetKFrameResponse =
  var r = initReader(b,261)
  result = readRos1Franka_msgsSetKFrameResponse(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetLoadRequest.
## @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetLoadRequest* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetLoadRequest.mass; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `mass`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetLoadRequest.F_x_center_load; native type float64. Exactly 3
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `F_x_center_load`*: array[3,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/SetLoadRequest.load_inertia; native type float64. Exactly 9 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `load_inertia`*: array[9,float64]
const Ros1Franka_msgsSetLoadRequestMaximumWireBytes* = 104
const Ros1Franka_msgsSetLoadRequestCodecIdentity* = "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5"
const Ros1Franka_msgsSetLoadRequestNativeType* = "franka_msgs/SetLoadRequest"
const Ros1Franka_msgsSetLoadRequestNativeIdentity* = ""
proc initRos1Franka_msgsSetLoadRequest*(): Ros1Franka_msgsSetLoadRequest =
  result.`mass` = 0
  result.`F_x_center_load` = [0,0,0]
  result.`load_inertia` = [0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Franka_msgsSetLoadRequest; w: var Writer) =
  putFloat64(w,value.`mass`)
  for e in value.`F_x_center_load`:
    putFloat64(w,e)
  for e in value.`load_inertia`:
    putFloat64(w,e)
proc readRos1Franka_msgsSetLoadRequest*(r: var Reader): Ros1Franka_msgsSetLoadRequest =
  result = initRos1Franka_msgsSetLoadRequest()
  result.`mass` = getFloat64(r)
  let count1 = 3
  for i in 0..<count1:
    result.`F_x_center_load`[i] = getFloat64(r)
  let count2 = 9
  for i in 0..<count2:
    result.`load_inertia`[i] = getFloat64(r)
proc encode*(value: Ros1Franka_msgsSetLoadRequest): seq[byte] =
  var w = initWriter(104)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetLoadRequest*(b: seq[byte]): Ros1Franka_msgsSetLoadRequest =
  var r = initReader(b,104)
  result = readRos1Franka_msgsSetLoadRequest(r)
  finish(r)
## @brief Own every original field of franka_msgs/SetLoadResponse.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Franka_msgsSetLoadResponse* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/SetLoadResponse.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/SetLoadResponse.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros1Franka_msgsSetLoadResponseMaximumWireBytes* = 261
const Ros1Franka_msgsSetLoadResponseCodecIdentity* = "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3"
const Ros1Franka_msgsSetLoadResponseNativeType* = "franka_msgs/SetLoadResponse"
const Ros1Franka_msgsSetLoadResponseNativeIdentity* = ""
proc initRos1Franka_msgsSetLoadResponse*(): Ros1Franka_msgsSetLoadResponse =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros1Franka_msgsSetLoadResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos1Franka_msgsSetLoadResponse*(r: var Reader): Ros1Franka_msgsSetLoadResponse =
  result = initRos1Franka_msgsSetLoadResponse()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros1Franka_msgsSetLoadResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Franka_msgsSetLoadResponse*(b: seq[byte]): Ros1Franka_msgsSetLoadResponse =
  var r = initReader(b,261)
  result = readRos1Franka_msgsSetLoadResponse(r)
  finish(r)
