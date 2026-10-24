## @brief Complete original franka ros2 canonical values.
## @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
## every original field; native registration and manually granted ROS authority are separate. Caller-
## owned values and codec failures are described by each operation and the locale API reference.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of builtin_interfaces/msg/Time.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Builtin_interfacesMsgTime* = object
  ## @brief This message communicates ROS Time defined here:
  ## https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
  ## values.
  ## @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `sec`*: int32
  ## @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  ## e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
  ## represented as {sec: 1, nanosec: 7e8}
  ## @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `nanosec`*: uint32
const Ros2Builtin_interfacesMsgTimeMaximumWireBytes* = 8
const Ros2Builtin_interfacesMsgTimeCodecIdentity* = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
const Ros2Builtin_interfacesMsgTimeNativeType* = "builtin_interfaces/msg/Time"
const Ros2Builtin_interfacesMsgTimeNativeIdentity* = ""
proc initRos2Builtin_interfacesMsgTime*(): Ros2Builtin_interfacesMsgTime =
  result.`sec` = 0
  result.`nanosec` = 0
proc writeFields*(value: Ros2Builtin_interfacesMsgTime; w: var Writer) =
  if value.`nanosec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
proc readRos2Builtin_interfacesMsgTime*(r: var Reader): Ros2Builtin_interfacesMsgTime =
  result = initRos2Builtin_interfacesMsgTime()
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
  if result.`nanosec` >= 1000000000: fail(22)
proc encode*(value: Ros2Builtin_interfacesMsgTime): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Builtin_interfacesMsgTime*(b: seq[byte]): Ros2Builtin_interfacesMsgTime =
  var r = initReader(b,8)
  result = readRos2Builtin_interfacesMsgTime(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/ErrorRecovery_Goal.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionErrorRecovery_Goal* = object
const Ros2Franka_msgsActionErrorRecovery_GoalMaximumWireBytes* = 0
const Ros2Franka_msgsActionErrorRecovery_GoalCodecIdentity* =
        "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070"
const Ros2Franka_msgsActionErrorRecovery_GoalNativeType* = "franka_msgs/action/ErrorRecovery_Goal"
const Ros2Franka_msgsActionErrorRecovery_GoalNativeIdentity* = ""
proc initRos2Franka_msgsActionErrorRecovery_Goal*(): Ros2Franka_msgsActionErrorRecovery_Goal =
  discard
proc writeFields*(value: Ros2Franka_msgsActionErrorRecovery_Goal; w: var Writer) =
  discard
proc readRos2Franka_msgsActionErrorRecovery_Goal*(r: var Reader): Ros2Franka_msgsActionErrorRecovery_Goal =
  result = initRos2Franka_msgsActionErrorRecovery_Goal()
proc encode*(value: Ros2Franka_msgsActionErrorRecovery_Goal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionErrorRecovery_Goal*(b: seq[byte]): Ros2Franka_msgsActionErrorRecovery_Goal =
  var r = initReader(b,0)
  result = readRos2Franka_msgsActionErrorRecovery_Goal(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/ErrorRecovery_Result.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionErrorRecovery_Result* = object
const Ros2Franka_msgsActionErrorRecovery_ResultMaximumWireBytes* = 0
const Ros2Franka_msgsActionErrorRecovery_ResultCodecIdentity* =
        "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9"
const Ros2Franka_msgsActionErrorRecovery_ResultNativeType* = "franka_msgs/action/ErrorRecovery_Result"
const Ros2Franka_msgsActionErrorRecovery_ResultNativeIdentity* = ""
proc initRos2Franka_msgsActionErrorRecovery_Result*(): Ros2Franka_msgsActionErrorRecovery_Result =
  discard
proc writeFields*(value: Ros2Franka_msgsActionErrorRecovery_Result; w: var Writer) =
  discard
proc readRos2Franka_msgsActionErrorRecovery_Result*(r: var Reader): Ros2Franka_msgsActionErrorRecovery_Result =
  result = initRos2Franka_msgsActionErrorRecovery_Result()
proc encode*(value: Ros2Franka_msgsActionErrorRecovery_Result): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionErrorRecovery_Result*(b: seq[byte]): Ros2Franka_msgsActionErrorRecovery_Result =
  var r = initReader(b,0)
  result = readRos2Franka_msgsActionErrorRecovery_Result(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/ErrorRecovery_Feedback.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionErrorRecovery_Feedback* = object
const Ros2Franka_msgsActionErrorRecovery_FeedbackMaximumWireBytes* = 0
const Ros2Franka_msgsActionErrorRecovery_FeedbackCodecIdentity* =
        "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f"
const Ros2Franka_msgsActionErrorRecovery_FeedbackNativeType* = "franka_msgs/action/ErrorRecovery_Feedback"
const Ros2Franka_msgsActionErrorRecovery_FeedbackNativeIdentity* = ""
proc initRos2Franka_msgsActionErrorRecovery_Feedback*(): Ros2Franka_msgsActionErrorRecovery_Feedback =
  discard
proc writeFields*(value: Ros2Franka_msgsActionErrorRecovery_Feedback; w: var Writer) =
  discard
proc readRos2Franka_msgsActionErrorRecovery_Feedback*(r: var Reader): Ros2Franka_msgsActionErrorRecovery_Feedback =
  result = initRos2Franka_msgsActionErrorRecovery_Feedback()
proc encode*(value: Ros2Franka_msgsActionErrorRecovery_Feedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionErrorRecovery_Feedback*(b: seq[byte]): Ros2Franka_msgsActionErrorRecovery_Feedback =
  var r = initReader(b,0)
  result = readRos2Franka_msgsActionErrorRecovery_Feedback(r)
  finish(r)
## @brief Own every original field of franka_msgs/msg/GraspEpsilon.
## @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsMsgGraspEpsilon* = object
  ## @brief Maximum tolerated deviation when the actual grasped width is smaller than the commanded grasp
  ## width. Unit: [m]
  ## @details Original franka_msgs/msg/GraspEpsilon.inner; native type float64. Scalar value. Declared
  ## original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `inner`*: float64
  ## @brief Maximum tolerated deviation when the actual grasped width is larger than the commanded grasp
  ## width. Unit: [m]
  ## @details Original franka_msgs/msg/GraspEpsilon.outer; native type float64. Scalar value. Declared
  ## original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `outer`*: float64
const Ros2Franka_msgsMsgGraspEpsilonMaximumWireBytes* = 16
const Ros2Franka_msgsMsgGraspEpsilonCodecIdentity* = "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38"
const Ros2Franka_msgsMsgGraspEpsilonNativeType* = "franka_msgs/msg/GraspEpsilon"
const Ros2Franka_msgsMsgGraspEpsilonNativeIdentity* = ""
proc initRos2Franka_msgsMsgGraspEpsilon*(): Ros2Franka_msgsMsgGraspEpsilon =
  result.`inner` = cast[float64](0x3f747ae147ae147b'u64)
  result.`outer` = cast[float64](0x3f747ae147ae147b'u64)
proc writeFields*(value: Ros2Franka_msgsMsgGraspEpsilon; w: var Writer) =
  putFloat64(w,value.`inner`)
  putFloat64(w,value.`outer`)
proc readRos2Franka_msgsMsgGraspEpsilon*(r: var Reader): Ros2Franka_msgsMsgGraspEpsilon =
  result = initRos2Franka_msgsMsgGraspEpsilon()
  result.`inner` = getFloat64(r)
  result.`outer` = getFloat64(r)
proc encode*(value: Ros2Franka_msgsMsgGraspEpsilon): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsMsgGraspEpsilon*(b: seq[byte]): Ros2Franka_msgsMsgGraspEpsilon =
  var r = initReader(b,16)
  result = readRos2Franka_msgsMsgGraspEpsilon(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Grasp_Goal.
## @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionGrasp_Goal* = object
  ## @brief [m]
  ## @details Original franka_msgs/action/Grasp_Goal.width; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `width`*: float64
  ## @brief Retain the complete original franka_msgs/msg/GraspEpsilon field.
  ## @details Original franka_msgs/action/Grasp_Goal.epsilon; native type franka_msgs/msg/GraspEpsilon.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `epsilon`*: Ros2Franka_msgsMsgGraspEpsilon
  ## @brief [m/s]
  ## @details Original franka_msgs/action/Grasp_Goal.speed; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `speed`*: float64
  ## @brief [N]
  ## @details Original franka_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `force`*: float64
const Ros2Franka_msgsActionGrasp_GoalMaximumWireBytes* = 40
const Ros2Franka_msgsActionGrasp_GoalCodecIdentity* = "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f"
const Ros2Franka_msgsActionGrasp_GoalNativeType* = "franka_msgs/action/Grasp_Goal"
const Ros2Franka_msgsActionGrasp_GoalNativeIdentity* = ""
proc initRos2Franka_msgsActionGrasp_Goal*(): Ros2Franka_msgsActionGrasp_Goal =
  result.`width` = 0
  result.`epsilon` = initRos2Franka_msgsMsgGraspEpsilon()
  result.`speed` = 0
  result.`force` = 0
proc writeFields*(value: Ros2Franka_msgsActionGrasp_Goal; w: var Writer) =
  putFloat64(w,value.`width`)
  writeFields(value.`epsilon`,w)
  putFloat64(w,value.`speed`)
  putFloat64(w,value.`force`)
proc readRos2Franka_msgsActionGrasp_Goal*(r: var Reader): Ros2Franka_msgsActionGrasp_Goal =
  result = initRos2Franka_msgsActionGrasp_Goal()
  result.`width` = getFloat64(r)
  result.`epsilon` = readRos2Franka_msgsMsgGraspEpsilon(r)
  result.`speed` = getFloat64(r)
  result.`force` = getFloat64(r)
proc encode*(value: Ros2Franka_msgsActionGrasp_Goal): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionGrasp_Goal*(b: seq[byte]): Ros2Franka_msgsActionGrasp_Goal =
  var r = initReader(b,40)
  result = readRos2Franka_msgsActionGrasp_Goal(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Grasp_Result.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionGrasp_Result* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros2Franka_msgsActionGrasp_ResultMaximumWireBytes* = 261
const Ros2Franka_msgsActionGrasp_ResultCodecIdentity* = "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733"
const Ros2Franka_msgsActionGrasp_ResultNativeType* = "franka_msgs/action/Grasp_Result"
const Ros2Franka_msgsActionGrasp_ResultNativeIdentity* = ""
proc initRos2Franka_msgsActionGrasp_Result*(): Ros2Franka_msgsActionGrasp_Result =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsActionGrasp_Result; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsActionGrasp_Result*(r: var Reader): Ros2Franka_msgsActionGrasp_Result =
  result = initRos2Franka_msgsActionGrasp_Result()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsActionGrasp_Result): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionGrasp_Result*(b: seq[byte]): Ros2Franka_msgsActionGrasp_Result =
  var r = initReader(b,261)
  result = readRos2Franka_msgsActionGrasp_Result(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Grasp_Feedback.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionGrasp_Feedback* = object
  ## @brief [m]
  ## @details Original franka_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `current_width`*: float64
const Ros2Franka_msgsActionGrasp_FeedbackMaximumWireBytes* = 8
const Ros2Franka_msgsActionGrasp_FeedbackCodecIdentity* =
        "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe"
const Ros2Franka_msgsActionGrasp_FeedbackNativeType* = "franka_msgs/action/Grasp_Feedback"
const Ros2Franka_msgsActionGrasp_FeedbackNativeIdentity* = ""
proc initRos2Franka_msgsActionGrasp_Feedback*(): Ros2Franka_msgsActionGrasp_Feedback =
  result.`current_width` = 0
proc writeFields*(value: Ros2Franka_msgsActionGrasp_Feedback; w: var Writer) =
  putFloat64(w,value.`current_width`)
proc readRos2Franka_msgsActionGrasp_Feedback*(r: var Reader): Ros2Franka_msgsActionGrasp_Feedback =
  result = initRos2Franka_msgsActionGrasp_Feedback()
  result.`current_width` = getFloat64(r)
proc encode*(value: Ros2Franka_msgsActionGrasp_Feedback): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionGrasp_Feedback*(b: seq[byte]): Ros2Franka_msgsActionGrasp_Feedback =
  var r = initReader(b,8)
  result = readRos2Franka_msgsActionGrasp_Feedback(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Homing_Goal.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionHoming_Goal* = object
const Ros2Franka_msgsActionHoming_GoalMaximumWireBytes* = 0
const Ros2Franka_msgsActionHoming_GoalCodecIdentity* = "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d"
const Ros2Franka_msgsActionHoming_GoalNativeType* = "franka_msgs/action/Homing_Goal"
const Ros2Franka_msgsActionHoming_GoalNativeIdentity* = ""
proc initRos2Franka_msgsActionHoming_Goal*(): Ros2Franka_msgsActionHoming_Goal =
  discard
proc writeFields*(value: Ros2Franka_msgsActionHoming_Goal; w: var Writer) =
  discard
proc readRos2Franka_msgsActionHoming_Goal*(r: var Reader): Ros2Franka_msgsActionHoming_Goal =
  result = initRos2Franka_msgsActionHoming_Goal()
proc encode*(value: Ros2Franka_msgsActionHoming_Goal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionHoming_Goal*(b: seq[byte]): Ros2Franka_msgsActionHoming_Goal =
  var r = initReader(b,0)
  result = readRos2Franka_msgsActionHoming_Goal(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Homing_Result.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionHoming_Result* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/action/Homing_Result.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/action/Homing_Result.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros2Franka_msgsActionHoming_ResultMaximumWireBytes* = 261
const Ros2Franka_msgsActionHoming_ResultCodecIdentity* = "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c"
const Ros2Franka_msgsActionHoming_ResultNativeType* = "franka_msgs/action/Homing_Result"
const Ros2Franka_msgsActionHoming_ResultNativeIdentity* = ""
proc initRos2Franka_msgsActionHoming_Result*(): Ros2Franka_msgsActionHoming_Result =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsActionHoming_Result; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsActionHoming_Result*(r: var Reader): Ros2Franka_msgsActionHoming_Result =
  result = initRos2Franka_msgsActionHoming_Result()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsActionHoming_Result): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionHoming_Result*(b: seq[byte]): Ros2Franka_msgsActionHoming_Result =
  var r = initReader(b,261)
  result = readRos2Franka_msgsActionHoming_Result(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Homing_Feedback.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionHoming_Feedback* = object
  ## @brief [m]
  ## @details Original franka_msgs/action/Homing_Feedback.current_width; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `current_width`*: float64
const Ros2Franka_msgsActionHoming_FeedbackMaximumWireBytes* = 8
const Ros2Franka_msgsActionHoming_FeedbackCodecIdentity* =
        "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46"
const Ros2Franka_msgsActionHoming_FeedbackNativeType* = "franka_msgs/action/Homing_Feedback"
const Ros2Franka_msgsActionHoming_FeedbackNativeIdentity* = ""
proc initRos2Franka_msgsActionHoming_Feedback*(): Ros2Franka_msgsActionHoming_Feedback =
  result.`current_width` = 0
proc writeFields*(value: Ros2Franka_msgsActionHoming_Feedback; w: var Writer) =
  putFloat64(w,value.`current_width`)
proc readRos2Franka_msgsActionHoming_Feedback*(r: var Reader): Ros2Franka_msgsActionHoming_Feedback =
  result = initRos2Franka_msgsActionHoming_Feedback()
  result.`current_width` = getFloat64(r)
proc encode*(value: Ros2Franka_msgsActionHoming_Feedback): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionHoming_Feedback*(b: seq[byte]): Ros2Franka_msgsActionHoming_Feedback =
  var r = initReader(b,8)
  result = readRos2Franka_msgsActionHoming_Feedback(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Move_Goal.
## @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionMove_Goal* = object
  ## @brief [m]
  ## @details Original franka_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `width`*: float64
  ## @brief [m/s]
  ## @details Original franka_msgs/action/Move_Goal.speed; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `speed`*: float64
const Ros2Franka_msgsActionMove_GoalMaximumWireBytes* = 16
const Ros2Franka_msgsActionMove_GoalCodecIdentity* = "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f"
const Ros2Franka_msgsActionMove_GoalNativeType* = "franka_msgs/action/Move_Goal"
const Ros2Franka_msgsActionMove_GoalNativeIdentity* = ""
proc initRos2Franka_msgsActionMove_Goal*(): Ros2Franka_msgsActionMove_Goal =
  result.`width` = 0
  result.`speed` = 0
proc writeFields*(value: Ros2Franka_msgsActionMove_Goal; w: var Writer) =
  putFloat64(w,value.`width`)
  putFloat64(w,value.`speed`)
proc readRos2Franka_msgsActionMove_Goal*(r: var Reader): Ros2Franka_msgsActionMove_Goal =
  result = initRos2Franka_msgsActionMove_Goal()
  result.`width` = getFloat64(r)
  result.`speed` = getFloat64(r)
proc encode*(value: Ros2Franka_msgsActionMove_Goal): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionMove_Goal*(b: seq[byte]): Ros2Franka_msgsActionMove_Goal =
  var r = initReader(b,16)
  result = readRos2Franka_msgsActionMove_Goal(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Move_Result.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionMove_Result* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros2Franka_msgsActionMove_ResultMaximumWireBytes* = 261
const Ros2Franka_msgsActionMove_ResultCodecIdentity* = "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266"
const Ros2Franka_msgsActionMove_ResultNativeType* = "franka_msgs/action/Move_Result"
const Ros2Franka_msgsActionMove_ResultNativeIdentity* = ""
proc initRos2Franka_msgsActionMove_Result*(): Ros2Franka_msgsActionMove_Result =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsActionMove_Result; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsActionMove_Result*(r: var Reader): Ros2Franka_msgsActionMove_Result =
  result = initRos2Franka_msgsActionMove_Result()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsActionMove_Result): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionMove_Result*(b: seq[byte]): Ros2Franka_msgsActionMove_Result =
  var r = initReader(b,261)
  result = readRos2Franka_msgsActionMove_Result(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/Move_Feedback.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionMove_Feedback* = object
  ## @brief [m]
  ## @details Original franka_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `current_width`*: float64
const Ros2Franka_msgsActionMove_FeedbackMaximumWireBytes* = 8
const Ros2Franka_msgsActionMove_FeedbackCodecIdentity* = "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596"
const Ros2Franka_msgsActionMove_FeedbackNativeType* = "franka_msgs/action/Move_Feedback"
const Ros2Franka_msgsActionMove_FeedbackNativeIdentity* = ""
proc initRos2Franka_msgsActionMove_Feedback*(): Ros2Franka_msgsActionMove_Feedback =
  result.`current_width` = 0
proc writeFields*(value: Ros2Franka_msgsActionMove_Feedback; w: var Writer) =
  putFloat64(w,value.`current_width`)
proc readRos2Franka_msgsActionMove_Feedback*(r: var Reader): Ros2Franka_msgsActionMove_Feedback =
  result = initRos2Franka_msgsActionMove_Feedback()
  result.`current_width` = getFloat64(r)
proc encode*(value: Ros2Franka_msgsActionMove_Feedback): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionMove_Feedback*(b: seq[byte]): Ros2Franka_msgsActionMove_Feedback =
  var r = initReader(b,8)
  result = readRos2Franka_msgsActionMove_Feedback(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/PTPMotion_Goal.
## @details Canonical extent 16..128 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionPTPMotion_Goal* = object
  ## @brief ## This defines a PTPMotion action for controlling a Franka robot using point-to-point motion
  ## commands. The goal_joint_configuration specifies the desired joint angles. [rad]
  ## @details Original franka_msgs/action/PTPMotion_Goal.goal_joint_configuration; native type float64.
  ## At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `goal_joint_configuration`*: seq[float64]
  ## @brief The maximum allowed joint velocities for the motion. [rad/s]
  ## @details Original franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities; native type float64.
  ## At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `maximum_joint_velocities`*: seq[float64]
  ## @brief The acceptable goal tolerance for the motion. The 'target reached condition is met when - the
  ## absolute difference between the current and goal joint positions is within this goal_tolerance - the
  ## joint velocities are below a small threshold [rad]
  ## @details Original franka_msgs/action/PTPMotion_Goal.goal_tolerance; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `goal_tolerance`*: float64
const Ros2Franka_msgsActionPTPMotion_GoalMaximumWireBytes* = 128
const Ros2Franka_msgsActionPTPMotion_GoalCodecIdentity* =
        "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc"
const Ros2Franka_msgsActionPTPMotion_GoalNativeType* = "franka_msgs/action/PTPMotion_Goal"
const Ros2Franka_msgsActionPTPMotion_GoalNativeIdentity* = ""
proc initRos2Franka_msgsActionPTPMotion_Goal*(): Ros2Franka_msgsActionPTPMotion_Goal =
  result.`goal_joint_configuration` = @[]
  result.`maximum_joint_velocities` = @[]
  result.`goal_tolerance` = 0
proc writeFields*(value: Ros2Franka_msgsActionPTPMotion_Goal; w: var Writer) =
  if value.`goal_joint_configuration`.len > 7: fail(22)
  putInteger(w,uint32(value.`goal_joint_configuration`.len))
  for e in value.`goal_joint_configuration`:
    putFloat64(w,e)
  if value.`maximum_joint_velocities`.len > 7: fail(22)
  putInteger(w,uint32(value.`maximum_joint_velocities`.len))
  for e in value.`maximum_joint_velocities`:
    putFloat64(w,e)
  putFloat64(w,value.`goal_tolerance`)
proc readRos2Franka_msgsActionPTPMotion_Goal*(r: var Reader): Ros2Franka_msgsActionPTPMotion_Goal =
  result = initRos2Franka_msgsActionPTPMotion_Goal()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 7: fail(22)
  let count0 = int(rawcount0)
  result.`goal_joint_configuration` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`goal_joint_configuration`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 7: fail(22)
  let count1 = int(rawcount1)
  result.`maximum_joint_velocities` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`maximum_joint_velocities`[i] = getFloat64(r)
  result.`goal_tolerance` = getFloat64(r)
proc encode*(value: Ros2Franka_msgsActionPTPMotion_Goal): seq[byte] =
  var w = initWriter(128)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionPTPMotion_Goal*(b: seq[byte]): Ros2Franka_msgsActionPTPMotion_Goal =
  var r = initReader(b,128)
  result = readRos2Franka_msgsActionPTPMotion_Goal(r)
  finish(r)
## @brief Own every original field of franka_msgs/msg/TargetStatus.
## @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsMsgTargetStatus* = object
  ## @brief # The current status of the motion (one of the above states)
  ## @details Original franka_msgs/msg/TargetStatus.status; native type uint8. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `status`*: uint8
const Ros2Franka_msgsMsgTargetStatusMaximumWireBytes* = 1
const Ros2Franka_msgsMsgTargetStatusCodecIdentity* = "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585"
const Ros2Franka_msgsMsgTargetStatusNativeType* = "franka_msgs/msg/TargetStatus"
const Ros2Franka_msgsMsgTargetStatusNativeIdentity* = ""
const Ros2Franka_msgsMsgTargetStatus_IDLE*: uint8 = 0'u8
const Ros2Franka_msgsMsgTargetStatus_EXECUTING*: uint8 = 1'u8
const Ros2Franka_msgsMsgTargetStatus_TARGET_REACHED*: uint8 = 2'u8
const Ros2Franka_msgsMsgTargetStatus_ABORTED*: uint8 = 3'u8
proc initRos2Franka_msgsMsgTargetStatus*(): Ros2Franka_msgsMsgTargetStatus =
  result.`status` = 0
proc writeFields*(value: Ros2Franka_msgsMsgTargetStatus; w: var Writer) =
  putInteger(w,value.`status`)
proc readRos2Franka_msgsMsgTargetStatus*(r: var Reader): Ros2Franka_msgsMsgTargetStatus =
  result = initRos2Franka_msgsMsgTargetStatus()
  result.`status` = getInteger(r,uint8)
proc encode*(value: Ros2Franka_msgsMsgTargetStatus): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsMsgTargetStatus*(b: seq[byte]): Ros2Franka_msgsMsgTargetStatus =
  var r = initReader(b,1)
  result = readRos2Franka_msgsMsgTargetStatus(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/PTPMotion_Result.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionPTPMotion_Result* = object
  ## @brief Result of the point-to-point motion action
  ## @details Original franka_msgs/action/PTPMotion_Result.target_status; native type
  ## franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `target_status`*: Ros2Franka_msgsMsgTargetStatus
  ## @brief In case of failure, an error message describing the issue
  ## @details Original franka_msgs/action/PTPMotion_Result.error_message; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `error_message`*: string
const Ros2Franka_msgsActionPTPMotion_ResultMaximumWireBytes* = 261
const Ros2Franka_msgsActionPTPMotion_ResultCodecIdentity* =
        "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1"
const Ros2Franka_msgsActionPTPMotion_ResultNativeType* = "franka_msgs/action/PTPMotion_Result"
const Ros2Franka_msgsActionPTPMotion_ResultNativeIdentity* = ""
proc initRos2Franka_msgsActionPTPMotion_Result*(): Ros2Franka_msgsActionPTPMotion_Result =
  result.`target_status` = initRos2Franka_msgsMsgTargetStatus()
  result.`error_message` = ""
proc writeFields*(value: Ros2Franka_msgsActionPTPMotion_Result; w: var Writer) =
  writeFields(value.`target_status`,w)
  putString(w,value.`error_message`,256)
proc readRos2Franka_msgsActionPTPMotion_Result*(r: var Reader): Ros2Franka_msgsActionPTPMotion_Result =
  result = initRos2Franka_msgsActionPTPMotion_Result()
  result.`target_status` = readRos2Franka_msgsMsgTargetStatus(r)
  result.`error_message` = getString(r,256)
proc encode*(value: Ros2Franka_msgsActionPTPMotion_Result): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionPTPMotion_Result*(b: seq[byte]): Ros2Franka_msgsActionPTPMotion_Result =
  var r = initReader(b,261)
  result = readRos2Franka_msgsActionPTPMotion_Result(r)
  finish(r)
## @brief Own every original field of franka_msgs/action/PTPMotion_Feedback.
## @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsActionPTPMotion_Feedback* = object
  ## @brief Feedback during the execution of the point-to-point motion
  ## @details Original franka_msgs/action/PTPMotion_Feedback.target_status; native type
  ## franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `target_status`*: Ros2Franka_msgsMsgTargetStatus
const Ros2Franka_msgsActionPTPMotion_FeedbackMaximumWireBytes* = 1
const Ros2Franka_msgsActionPTPMotion_FeedbackCodecIdentity* =
        "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300"
const Ros2Franka_msgsActionPTPMotion_FeedbackNativeType* = "franka_msgs/action/PTPMotion_Feedback"
const Ros2Franka_msgsActionPTPMotion_FeedbackNativeIdentity* = ""
proc initRos2Franka_msgsActionPTPMotion_Feedback*(): Ros2Franka_msgsActionPTPMotion_Feedback =
  result.`target_status` = initRos2Franka_msgsMsgTargetStatus()
proc writeFields*(value: Ros2Franka_msgsActionPTPMotion_Feedback; w: var Writer) =
  writeFields(value.`target_status`,w)
proc readRos2Franka_msgsActionPTPMotion_Feedback*(r: var Reader): Ros2Franka_msgsActionPTPMotion_Feedback =
  result = initRos2Franka_msgsActionPTPMotion_Feedback()
  result.`target_status` = readRos2Franka_msgsMsgTargetStatus(r)
proc encode*(value: Ros2Franka_msgsActionPTPMotion_Feedback): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsActionPTPMotion_Feedback*(b: seq[byte]): Ros2Franka_msgsActionPTPMotion_Feedback =
  var r = initReader(b,1)
  result = readRos2Franka_msgsActionPTPMotion_Feedback(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Vector3.
## @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgVector3* = object
  ## @brief This represents a vector in free space. This is semantically different than a point. A vector
  ## is always anchored at the origin. When a transform is applied to a vector, only the rotational
  ## component is applied.
  ## @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `x`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `y`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `z`*: float64
const Ros2Geometry_msgsMsgVector3MaximumWireBytes* = 24
const Ros2Geometry_msgsMsgVector3CodecIdentity* = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
const Ros2Geometry_msgsMsgVector3NativeType* = "geometry_msgs/msg/Vector3"
const Ros2Geometry_msgsMsgVector3NativeIdentity* = ""
proc initRos2Geometry_msgsMsgVector3*(): Ros2Geometry_msgsMsgVector3 =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros2Geometry_msgsMsgVector3; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos2Geometry_msgsMsgVector3*(r: var Reader): Ros2Geometry_msgsMsgVector3 =
  result = initRos2Geometry_msgsMsgVector3()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgVector3): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgVector3*(b: seq[byte]): Ros2Geometry_msgsMsgVector3 =
  var r = initReader(b,24)
  result = readRos2Geometry_msgsMsgVector3(r)
  finish(r)
## @brief Own every original field of franka_msgs/msg/CollisionIndicators.
## @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsMsgCollisionIndicators* = object
  ## @brief ## Indicates which dimensions have an active contact/collision flag raised
  ## @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision; native type
  ## geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `is_cartesian_linear_collision`*: Ros2Geometry_msgsMsgVector3
  ## @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  ## @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision; native type
  ## geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `is_cartesian_angular_collision`*: Ros2Geometry_msgsMsgVector3
  ## @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  ## @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact; native type
  ## geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `is_cartesian_linear_contact`*: Ros2Geometry_msgsMsgVector3
  ## @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  ## @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact; native type
  ## geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `is_cartesian_angular_contact`*: Ros2Geometry_msgsMsgVector3
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/msg/CollisionIndicators.is_joint_collision; native type float64.
  ## Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `is_joint_collision`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/msg/CollisionIndicators.is_joint_contact; native type float64. Exactly
  ## 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `is_joint_contact`*: array[7,float64]
const Ros2Franka_msgsMsgCollisionIndicatorsMaximumWireBytes* = 208
const Ros2Franka_msgsMsgCollisionIndicatorsCodecIdentity* =
        "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1"
const Ros2Franka_msgsMsgCollisionIndicatorsNativeType* = "franka_msgs/msg/CollisionIndicators"
const Ros2Franka_msgsMsgCollisionIndicatorsNativeIdentity* = ""
proc initRos2Franka_msgsMsgCollisionIndicators*(): Ros2Franka_msgsMsgCollisionIndicators =
  result.`is_cartesian_linear_collision` = initRos2Geometry_msgsMsgVector3()
  result.`is_cartesian_angular_collision` = initRos2Geometry_msgsMsgVector3()
  result.`is_cartesian_linear_contact` = initRos2Geometry_msgsMsgVector3()
  result.`is_cartesian_angular_contact` = initRos2Geometry_msgsMsgVector3()
  result.`is_joint_collision` = [0,0,0,0,0,0,0]
  result.`is_joint_contact` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsMsgCollisionIndicators; w: var Writer) =
  writeFields(value.`is_cartesian_linear_collision`,w)
  writeFields(value.`is_cartesian_angular_collision`,w)
  writeFields(value.`is_cartesian_linear_contact`,w)
  writeFields(value.`is_cartesian_angular_contact`,w)
  for e in value.`is_joint_collision`:
    putFloat64(w,e)
  for e in value.`is_joint_contact`:
    putFloat64(w,e)
proc readRos2Franka_msgsMsgCollisionIndicators*(r: var Reader): Ros2Franka_msgsMsgCollisionIndicators =
  result = initRos2Franka_msgsMsgCollisionIndicators()
  result.`is_cartesian_linear_collision` = readRos2Geometry_msgsMsgVector3(r)
  result.`is_cartesian_angular_collision` = readRos2Geometry_msgsMsgVector3(r)
  result.`is_cartesian_linear_contact` = readRos2Geometry_msgsMsgVector3(r)
  result.`is_cartesian_angular_contact` = readRos2Geometry_msgsMsgVector3(r)
  let count4 = 7
  for i in 0..<count4:
    result.`is_joint_collision`[i] = getFloat64(r)
  let count5 = 7
  for i in 0..<count5:
    result.`is_joint_contact`[i] = getFloat64(r)
proc encode*(value: Ros2Franka_msgsMsgCollisionIndicators): seq[byte] =
  var w = initWriter(208)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsMsgCollisionIndicators*(b: seq[byte]): Ros2Franka_msgsMsgCollisionIndicators =
  var r = initReader(b,208)
  result = readRos2Franka_msgsMsgCollisionIndicators(r)
  finish(r)
## @brief Own every original field of franka_msgs/msg/Elbow.
## @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsMsgElbow* = object
  ## @brief ## The state of the elbow
  ## @details Original franka_msgs/msg/Elbow.position; native type float64. Exactly 2 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `position`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/msg/Elbow.desired_position; native type float64. Exactly 2 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `desired_position`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/msg/Elbow.commanded_position; native type float64. Exactly 2 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `commanded_position`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/msg/Elbow.commanded_velocity; native type float64. Exactly 2 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `commanded_velocity`*: array[2,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/msg/Elbow.commanded_acceleration; native type float64. Exactly 2
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `commanded_acceleration`*: array[2,float64]
const Ros2Franka_msgsMsgElbowMaximumWireBytes* = 80
const Ros2Franka_msgsMsgElbowCodecIdentity* = "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6"
const Ros2Franka_msgsMsgElbowNativeType* = "franka_msgs/msg/Elbow"
const Ros2Franka_msgsMsgElbowNativeIdentity* = ""
proc initRos2Franka_msgsMsgElbow*(): Ros2Franka_msgsMsgElbow =
  result.`position` = [0,0]
  result.`desired_position` = [0,0]
  result.`commanded_position` = [0,0]
  result.`commanded_velocity` = [0,0]
  result.`commanded_acceleration` = [0,0]
proc writeFields*(value: Ros2Franka_msgsMsgElbow; w: var Writer) =
  for e in value.`position`:
    putFloat64(w,e)
  for e in value.`desired_position`:
    putFloat64(w,e)
  for e in value.`commanded_position`:
    putFloat64(w,e)
  for e in value.`commanded_velocity`:
    putFloat64(w,e)
  for e in value.`commanded_acceleration`:
    putFloat64(w,e)
proc readRos2Franka_msgsMsgElbow*(r: var Reader): Ros2Franka_msgsMsgElbow =
  result = initRos2Franka_msgsMsgElbow()
  let count0 = 2
  for i in 0..<count0:
    result.`position`[i] = getFloat64(r)
  let count1 = 2
  for i in 0..<count1:
    result.`desired_position`[i] = getFloat64(r)
  let count2 = 2
  for i in 0..<count2:
    result.`commanded_position`[i] = getFloat64(r)
  let count3 = 2
  for i in 0..<count3:
    result.`commanded_velocity`[i] = getFloat64(r)
  let count4 = 2
  for i in 0..<count4:
    result.`commanded_acceleration`[i] = getFloat64(r)
proc encode*(value: Ros2Franka_msgsMsgElbow): seq[byte] =
  var w = initWriter(80)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsMsgElbow*(b: seq[byte]): Ros2Franka_msgsMsgElbow =
  var r = initReader(b,80)
  result = readRos2Franka_msgsMsgElbow(r)
  finish(r)
## @brief Own every original field of franka_msgs/msg/Errors.
## @details Canonical extent 36..36 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsMsgErrors* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_position_limits_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_position_limits_violation; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.self_collision_avoidance_violation; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `self_collision_avoidance_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_velocity_violation; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `joint_velocity_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_velocity_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_velocity_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.force_control_safety_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `force_control_safety_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_reflex; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `joint_reflex`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_reflex; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `cartesian_reflex`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `max_goal_pose_deviation_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.max_path_pose_deviation_violation; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `max_path_pose_deviation_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_velocity_profile_safety_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_position_motion_generator_start_pose_invalid`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_velocity_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_velocity_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_motion_generator_acceleration_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_position_motion_generator_start_pose_invalid`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_elbow_limit_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_velocity_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_velocity_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_acceleration_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_elbow_sign_inconsistent`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_start_elbow_invalid`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_position_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_velocity_limits_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity;
  ## native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_velocity_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original
  ## franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_motion_generator_joint_acceleration_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `cartesian_position_motion_generator_invalid_frame`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation; native
  ## type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `force_controller_desired_force_tolerance_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.controller_torque_discontinuity; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `controller_torque_discontinuity`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.start_elbow_sign_inconsistent; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `start_elbow_sign_inconsistent`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.communication_constraints_violation; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `communication_constraints_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.power_limit_violation; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `power_limit_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `joint_p2p_insufficient_torque_for_planning`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.tau_j_range_violation; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `tau_j_range_violation`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/msg/Errors.instability_detected; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `instability_detected`*: bool
const Ros2Franka_msgsMsgErrorsMaximumWireBytes* = 36
const Ros2Franka_msgsMsgErrorsCodecIdentity* = "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c"
const Ros2Franka_msgsMsgErrorsNativeType* = "franka_msgs/msg/Errors"
const Ros2Franka_msgsMsgErrorsNativeIdentity* = ""
proc initRos2Franka_msgsMsgErrors*(): Ros2Franka_msgsMsgErrors =
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
proc writeFields*(value: Ros2Franka_msgsMsgErrors; w: var Writer) =
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
proc readRos2Franka_msgsMsgErrors*(r: var Reader): Ros2Franka_msgsMsgErrors =
  result = initRos2Franka_msgsMsgErrors()
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
proc encode*(value: Ros2Franka_msgsMsgErrors): seq[byte] =
  var w = initWriter(36)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsMsgErrors*(b: seq[byte]): Ros2Franka_msgsMsgErrors =
  var r = initReader(b,36)
  result = readRos2Franka_msgsMsgErrors(r)
  finish(r)
## @brief Own every original field of std_msgs/msg/Header.
## @details Canonical extent 12..140 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Std_msgsMsgHeader* = object
  ## @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  ## timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  ## seconds and nanoseconds.
  ## @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `stamp`*: Ros2Builtin_interfacesMsgTime
  ## @brief Transform frame with which this data is associated.
  ## @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
  ## bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  `frame_id`*: string
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 140
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
const Ros2Std_msgsMsgHeaderNativeType* = "std_msgs/msg/Header"
const Ros2Std_msgsMsgHeaderNativeIdentity* = ""
proc initRos2Std_msgsMsgHeader*(): Ros2Std_msgsMsgHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
proc writeFields*(value: Ros2Std_msgsMsgHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
proc readRos2Std_msgsMsgHeader*(r: var Reader): Ros2Std_msgsMsgHeader =
  result = initRos2Std_msgsMsgHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,128)
proc encode*(value: Ros2Std_msgsMsgHeader): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgHeader*(b: seq[byte]): Ros2Std_msgsMsgHeader =
  var r = initReader(b,140)
  result = readRos2Std_msgsMsgHeader(r)
  finish(r)
## @brief Own every original field of sensor_msgs/msg/JointState.
## @details Canonical extent 28..1248 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Sensor_msgsMsgJointState* = object
  ## @brief This is a message that holds data to describe the state of a set of torque controlled joints.
  ## The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
  ## m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
  ## N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
  ## states were recorded. All the joint states in one message have to be recorded at the same time.
  ## This message consists of a multiple arrays, one for each part of the joint state. The goal is to
  ## make each of the fields optional. When e.g. your joints have no effort associated with them, you can
  ## leave the effort array empty.  All arrays in this message should have the same size, or be empty.
  ## This is the only way to uniquely associate the joint name with the correct states.
  ## @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original string field.
  ## @details Original sensor_msgs/msg/JointState.name; native type string. At most 7 elements. UTF-8
  ## capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `name`*: seq[string]
  ## @brief Retain the complete original float64 field.
  ## @details Original sensor_msgs/msg/JointState.position; native type float64. At most 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `position`*: seq[float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `velocity`*: seq[float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `effort`*: seq[float64]
const Ros2Sensor_msgsMsgJointStateMaximumWireBytes* = 1248
const Ros2Sensor_msgsMsgJointStateCodecIdentity* = "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3"
const Ros2Sensor_msgsMsgJointStateNativeType* = "sensor_msgs/msg/JointState"
const Ros2Sensor_msgsMsgJointStateNativeIdentity* = ""
proc initRos2Sensor_msgsMsgJointState*(): Ros2Sensor_msgsMsgJointState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
proc writeFields*(value: Ros2Sensor_msgsMsgJointState; w: var Writer) =
  if len(value.`name`) != 0 and len(value.`position`) != 0 and len(value.`name`) != len(value.`position`): fail(22)
  if len(value.`name`) != 0 and len(value.`velocity`) != 0 and len(value.`name`) != len(value.`velocity`): fail(22)
  if len(value.`name`) != 0 and len(value.`effort`) != 0 and len(value.`name`) != len(value.`effort`): fail(22)
  if len(value.`position`) != 0 and len(value.`velocity`) != 0 and len(value.`position`) != len(value.`velocity`): fail(22)
  if len(value.`position`) != 0 and len(value.`effort`) != 0 and len(value.`position`) != len(value.`effort`): fail(22)
  if len(value.`velocity`) != 0 and len(value.`effort`) != 0 and len(value.`velocity`) != len(value.`effort`): fail(22)
  writeFields(value.`header`,w)
  if value.`name`.len > 7: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,128)
  if value.`position`.len > 7: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 7: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 7: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
proc readRos2Sensor_msgsMsgJointState*(r: var Reader): Ros2Sensor_msgsMsgJointState =
  result = initRos2Sensor_msgsMsgJointState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 7: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 7: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 7: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 7: fail(22)
  let count4 = int(rawcount4)
  result.`effort` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`effort`[i] = getFloat64(r)
  if len(result.`name`) != 0 and len(result.`position`) != 0 and len(result.`name`) != len(result.`position`): fail(22)
  if len(result.`name`) != 0 and len(result.`velocity`) != 0 and len(result.`name`) != len(result.`velocity`): fail(22)
  if len(result.`name`) != 0 and len(result.`effort`) != 0 and len(result.`name`) != len(result.`effort`): fail(22)
  if len(result.`position`) != 0 and len(result.`velocity`) != 0 and len(result.`position`) != len(result.`velocity`): fail(22)
  if len(result.`position`) != 0 and len(result.`effort`) != 0 and len(result.`position`) != len(result.`effort`): fail(22)
  if len(result.`velocity`) != 0 and len(result.`effort`) != 0 and len(result.`velocity`) != len(result.`effort`): fail(22)
proc encode*(value: Ros2Sensor_msgsMsgJointState): seq[byte] =
  var w = initWriter(1248)
  writeFields(value,w)
  w.bytes
proc decodeRos2Sensor_msgsMsgJointState*(b: seq[byte]): Ros2Sensor_msgsMsgJointState =
  var r = initReader(b,1248)
  result = readRos2Sensor_msgsMsgJointState(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Wrench.
## @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgWrench* = object
  ## @brief This represents force in free space, separated into its linear and angular parts.
  ## @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `force`*: Ros2Geometry_msgsMsgVector3
  ## @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  ## @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `torque`*: Ros2Geometry_msgsMsgVector3
const Ros2Geometry_msgsMsgWrenchMaximumWireBytes* = 48
const Ros2Geometry_msgsMsgWrenchCodecIdentity* = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
const Ros2Geometry_msgsMsgWrenchNativeType* = "geometry_msgs/msg/Wrench"
const Ros2Geometry_msgsMsgWrenchNativeIdentity* = ""
proc initRos2Geometry_msgsMsgWrench*(): Ros2Geometry_msgsMsgWrench =
  result.`force` = initRos2Geometry_msgsMsgVector3()
  result.`torque` = initRos2Geometry_msgsMsgVector3()
proc writeFields*(value: Ros2Geometry_msgsMsgWrench; w: var Writer) =
  writeFields(value.`force`,w)
  writeFields(value.`torque`,w)
proc readRos2Geometry_msgsMsgWrench*(r: var Reader): Ros2Geometry_msgsMsgWrench =
  result = initRos2Geometry_msgsMsgWrench()
  result.`force` = readRos2Geometry_msgsMsgVector3(r)
  result.`torque` = readRos2Geometry_msgsMsgVector3(r)
proc encode*(value: Ros2Geometry_msgsMsgWrench): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgWrench*(b: seq[byte]): Ros2Geometry_msgsMsgWrench =
  var r = initReader(b,48)
  result = readRos2Geometry_msgsMsgWrench(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/WrenchStamped.
## @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgWrenchStamped* = object
  ## @brief A wrench with reference coordinate frame and timestamp
  ## @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original geometry_msgs/msg/Wrench field.
  ## @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `wrench`*: Ros2Geometry_msgsMsgWrench
const Ros2Geometry_msgsMsgWrenchStampedMaximumWireBytes* = 188
const Ros2Geometry_msgsMsgWrenchStampedCodecIdentity* = "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66"
const Ros2Geometry_msgsMsgWrenchStampedNativeType* = "geometry_msgs/msg/WrenchStamped"
const Ros2Geometry_msgsMsgWrenchStampedNativeIdentity* = ""
proc initRos2Geometry_msgsMsgWrenchStamped*(): Ros2Geometry_msgsMsgWrenchStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`wrench` = initRos2Geometry_msgsMsgWrench()
proc writeFields*(value: Ros2Geometry_msgsMsgWrenchStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`wrench`,w)
proc readRos2Geometry_msgsMsgWrenchStamped*(r: var Reader): Ros2Geometry_msgsMsgWrenchStamped =
  result = initRos2Geometry_msgsMsgWrenchStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`wrench` = readRos2Geometry_msgsMsgWrench(r)
proc encode*(value: Ros2Geometry_msgsMsgWrenchStamped): seq[byte] =
  var w = initWriter(188)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgWrenchStamped*(b: seq[byte]): Ros2Geometry_msgsMsgWrenchStamped =
  var r = initReader(b,188)
  result = readRos2Geometry_msgsMsgWrenchStamped(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Inertia.
## @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgInertia* = object
  ## @brief Mass [kg]
  ## @details Original geometry_msgs/msg/Inertia.m; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `m`*: float64
  ## @brief Center of mass [m]
  ## @details Original geometry_msgs/msg/Inertia.com; native type geometry_msgs/msg/Vector3. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `com`*: Ros2Geometry_msgsMsgVector3
  ## @brief Inertia Tensor [kg-m^2] about the center of mass | ixx ixy ixz | I = | ixy iyy iyz | | ixz
  ## iyz izz |
  ## @details Original geometry_msgs/msg/Inertia.ixx; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `ixx`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Inertia.ixy; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `ixy`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Inertia.ixz; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `ixz`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Inertia.iyy; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `iyy`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Inertia.iyz; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `iyz`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Inertia.izz; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `izz`*: float64
const Ros2Geometry_msgsMsgInertiaMaximumWireBytes* = 80
const Ros2Geometry_msgsMsgInertiaCodecIdentity* = "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a"
const Ros2Geometry_msgsMsgInertiaNativeType* = "geometry_msgs/msg/Inertia"
const Ros2Geometry_msgsMsgInertiaNativeIdentity* = ""
proc initRos2Geometry_msgsMsgInertia*(): Ros2Geometry_msgsMsgInertia =
  result.`m` = 0
  result.`com` = initRos2Geometry_msgsMsgVector3()
  result.`ixx` = 0
  result.`ixy` = 0
  result.`ixz` = 0
  result.`iyy` = 0
  result.`iyz` = 0
  result.`izz` = 0
proc writeFields*(value: Ros2Geometry_msgsMsgInertia; w: var Writer) =
  putFloat64(w,value.`m`)
  writeFields(value.`com`,w)
  putFloat64(w,value.`ixx`)
  putFloat64(w,value.`ixy`)
  putFloat64(w,value.`ixz`)
  putFloat64(w,value.`iyy`)
  putFloat64(w,value.`iyz`)
  putFloat64(w,value.`izz`)
proc readRos2Geometry_msgsMsgInertia*(r: var Reader): Ros2Geometry_msgsMsgInertia =
  result = initRos2Geometry_msgsMsgInertia()
  result.`m` = getFloat64(r)
  result.`com` = readRos2Geometry_msgsMsgVector3(r)
  result.`ixx` = getFloat64(r)
  result.`ixy` = getFloat64(r)
  result.`ixz` = getFloat64(r)
  result.`iyy` = getFloat64(r)
  result.`iyz` = getFloat64(r)
  result.`izz` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgInertia): seq[byte] =
  var w = initWriter(80)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgInertia*(b: seq[byte]): Ros2Geometry_msgsMsgInertia =
  var r = initReader(b,80)
  result = readRos2Geometry_msgsMsgInertia(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/InertiaStamped.
## @details Canonical extent 92..220 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgInertiaStamped* = object
  ## @brief An Inertia with a time stamp and reference frame.
  ## @details Original geometry_msgs/msg/InertiaStamped.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original geometry_msgs/msg/Inertia field.
  ## @details Original geometry_msgs/msg/InertiaStamped.inertia; native type geometry_msgs/msg/Inertia.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `inertia`*: Ros2Geometry_msgsMsgInertia
const Ros2Geometry_msgsMsgInertiaStampedMaximumWireBytes* = 220
const Ros2Geometry_msgsMsgInertiaStampedCodecIdentity* = "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576"
const Ros2Geometry_msgsMsgInertiaStampedNativeType* = "geometry_msgs/msg/InertiaStamped"
const Ros2Geometry_msgsMsgInertiaStampedNativeIdentity* = ""
proc initRos2Geometry_msgsMsgInertiaStamped*(): Ros2Geometry_msgsMsgInertiaStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`inertia` = initRos2Geometry_msgsMsgInertia()
proc writeFields*(value: Ros2Geometry_msgsMsgInertiaStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`inertia`,w)
proc readRos2Geometry_msgsMsgInertiaStamped*(r: var Reader): Ros2Geometry_msgsMsgInertiaStamped =
  result = initRos2Geometry_msgsMsgInertiaStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`inertia` = readRos2Geometry_msgsMsgInertia(r)
proc encode*(value: Ros2Geometry_msgsMsgInertiaStamped): seq[byte] =
  var w = initWriter(220)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgInertiaStamped*(b: seq[byte]): Ros2Geometry_msgsMsgInertiaStamped =
  var r = initReader(b,220)
  result = readRos2Geometry_msgsMsgInertiaStamped(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Point.
## @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgPoint* = object
  ## @brief This contains the position of a point in free space
  ## @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
  ## no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `x`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
  ## no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `y`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
  ## no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `z`*: float64
const Ros2Geometry_msgsMsgPointMaximumWireBytes* = 24
const Ros2Geometry_msgsMsgPointCodecIdentity* = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
const Ros2Geometry_msgsMsgPointNativeType* = "geometry_msgs/msg/Point"
const Ros2Geometry_msgsMsgPointNativeIdentity* = ""
proc initRos2Geometry_msgsMsgPoint*(): Ros2Geometry_msgsMsgPoint =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros2Geometry_msgsMsgPoint; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos2Geometry_msgsMsgPoint*(r: var Reader): Ros2Geometry_msgsMsgPoint =
  result = initRos2Geometry_msgsMsgPoint()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgPoint): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPoint*(b: seq[byte]): Ros2Geometry_msgsMsgPoint =
  var r = initReader(b,24)
  result = readRos2Geometry_msgsMsgPoint(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Quaternion.
## @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgQuaternion* = object
  ## @brief This represents an orientation in free space in quaternion form.
  ## @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
  ## original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `x`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
  ## original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `y`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
  ## original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `z`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
  ## original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `w`*: float64
const Ros2Geometry_msgsMsgQuaternionMaximumWireBytes* = 32
const Ros2Geometry_msgsMsgQuaternionCodecIdentity* = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
const Ros2Geometry_msgsMsgQuaternionNativeType* = "geometry_msgs/msg/Quaternion"
const Ros2Geometry_msgsMsgQuaternionNativeIdentity* = ""
proc initRos2Geometry_msgsMsgQuaternion*(): Ros2Geometry_msgsMsgQuaternion =
  result.`x` = cast[float64](0x0'u64)
  result.`y` = cast[float64](0x0'u64)
  result.`z` = cast[float64](0x0'u64)
  result.`w` = cast[float64](0x3ff0000000000000'u64)
proc writeFields*(value: Ros2Geometry_msgsMsgQuaternion; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`w`)
proc readRos2Geometry_msgsMsgQuaternion*(r: var Reader): Ros2Geometry_msgsMsgQuaternion =
  result = initRos2Geometry_msgsMsgQuaternion()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`w` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgQuaternion): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgQuaternion*(b: seq[byte]): Ros2Geometry_msgsMsgQuaternion =
  var r = initReader(b,32)
  result = readRos2Geometry_msgsMsgQuaternion(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Pose.
## @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgPose* = object
  ## @brief A representation of pose in free space, composed of position and orientation.
  ## @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `position`*: Ros2Geometry_msgsMsgPoint
  ## @brief Retain the complete original geometry_msgs/msg/Quaternion field.
  ## @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `orientation`*: Ros2Geometry_msgsMsgQuaternion
const Ros2Geometry_msgsMsgPoseMaximumWireBytes* = 56
const Ros2Geometry_msgsMsgPoseCodecIdentity* = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
const Ros2Geometry_msgsMsgPoseNativeType* = "geometry_msgs/msg/Pose"
const Ros2Geometry_msgsMsgPoseNativeIdentity* = ""
proc initRos2Geometry_msgsMsgPose*(): Ros2Geometry_msgsMsgPose =
  result.`position` = initRos2Geometry_msgsMsgPoint()
  result.`orientation` = initRos2Geometry_msgsMsgQuaternion()
proc writeFields*(value: Ros2Geometry_msgsMsgPose; w: var Writer) =
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos2Geometry_msgsMsgPose*(r: var Reader): Ros2Geometry_msgsMsgPose =
  result = initRos2Geometry_msgsMsgPose()
  result.`position` = readRos2Geometry_msgsMsgPoint(r)
  result.`orientation` = readRos2Geometry_msgsMsgQuaternion(r)
proc encode*(value: Ros2Geometry_msgsMsgPose): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPose*(b: seq[byte]): Ros2Geometry_msgsMsgPose =
  var r = initReader(b,56)
  result = readRos2Geometry_msgsMsgPose(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/PoseStamped.
## @details Canonical extent 68..196 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgPoseStamped* = object
  ## @brief A Pose with reference coordinate frame and timestamp
  ## @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original geometry_msgs/msg/Pose field.
  ## @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `pose`*: Ros2Geometry_msgsMsgPose
const Ros2Geometry_msgsMsgPoseStampedMaximumWireBytes* = 196
const Ros2Geometry_msgsMsgPoseStampedCodecIdentity* = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2"
const Ros2Geometry_msgsMsgPoseStampedNativeType* = "geometry_msgs/msg/PoseStamped"
const Ros2Geometry_msgsMsgPoseStampedNativeIdentity* = ""
proc initRos2Geometry_msgsMsgPoseStamped*(): Ros2Geometry_msgsMsgPoseStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`pose` = initRos2Geometry_msgsMsgPose()
proc writeFields*(value: Ros2Geometry_msgsMsgPoseStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
proc readRos2Geometry_msgsMsgPoseStamped*(r: var Reader): Ros2Geometry_msgsMsgPoseStamped =
  result = initRos2Geometry_msgsMsgPoseStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`pose` = readRos2Geometry_msgsMsgPose(r)
proc encode*(value: Ros2Geometry_msgsMsgPoseStamped): seq[byte] =
  var w = initWriter(196)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPoseStamped*(b: seq[byte]): Ros2Geometry_msgsMsgPoseStamped =
  var r = initReader(b,196)
  result = readRos2Geometry_msgsMsgPoseStamped(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Twist.
## @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgTwist* = object
  ## @brief This expresses velocity in free space broken into its linear and angular parts.
  ## @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `linear`*: Ros2Geometry_msgsMsgVector3
  ## @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  ## @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `angular`*: Ros2Geometry_msgsMsgVector3
const Ros2Geometry_msgsMsgTwistMaximumWireBytes* = 48
const Ros2Geometry_msgsMsgTwistCodecIdentity* = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
const Ros2Geometry_msgsMsgTwistNativeType* = "geometry_msgs/msg/Twist"
const Ros2Geometry_msgsMsgTwistNativeIdentity* = ""
proc initRos2Geometry_msgsMsgTwist*(): Ros2Geometry_msgsMsgTwist =
  result.`linear` = initRos2Geometry_msgsMsgVector3()
  result.`angular` = initRos2Geometry_msgsMsgVector3()
proc writeFields*(value: Ros2Geometry_msgsMsgTwist; w: var Writer) =
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
proc readRos2Geometry_msgsMsgTwist*(r: var Reader): Ros2Geometry_msgsMsgTwist =
  result = initRos2Geometry_msgsMsgTwist()
  result.`linear` = readRos2Geometry_msgsMsgVector3(r)
  result.`angular` = readRos2Geometry_msgsMsgVector3(r)
proc encode*(value: Ros2Geometry_msgsMsgTwist): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgTwist*(b: seq[byte]): Ros2Geometry_msgsMsgTwist =
  var r = initReader(b,48)
  result = readRos2Geometry_msgsMsgTwist(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/TwistStamped.
## @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgTwistStamped* = object
  ## @brief A twist with reference coordinate frame and timestamp
  ## @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original geometry_msgs/msg/Twist field.
  ## @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `twist`*: Ros2Geometry_msgsMsgTwist
const Ros2Geometry_msgsMsgTwistStampedMaximumWireBytes* = 188
const Ros2Geometry_msgsMsgTwistStampedCodecIdentity* = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"
const Ros2Geometry_msgsMsgTwistStampedNativeType* = "geometry_msgs/msg/TwistStamped"
const Ros2Geometry_msgsMsgTwistStampedNativeIdentity* = ""
proc initRos2Geometry_msgsMsgTwistStamped*(): Ros2Geometry_msgsMsgTwistStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`twist` = initRos2Geometry_msgsMsgTwist()
proc writeFields*(value: Ros2Geometry_msgsMsgTwistStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`twist`,w)
proc readRos2Geometry_msgsMsgTwistStamped*(r: var Reader): Ros2Geometry_msgsMsgTwistStamped =
  result = initRos2Geometry_msgsMsgTwistStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`twist` = readRos2Geometry_msgsMsgTwist(r)
proc encode*(value: Ros2Geometry_msgsMsgTwistStamped): seq[byte] =
  var w = initWriter(188)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgTwistStamped*(b: seq[byte]): Ros2Geometry_msgsMsgTwistStamped =
  var r = initReader(b,188)
  result = readRos2Geometry_msgsMsgTwistStamped(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Accel.
## @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgAccel* = object
  ## @brief This expresses acceleration in free space broken into its linear and angular parts.
  ## @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `linear`*: Ros2Geometry_msgsMsgVector3
  ## @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  ## @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `angular`*: Ros2Geometry_msgsMsgVector3
const Ros2Geometry_msgsMsgAccelMaximumWireBytes* = 48
const Ros2Geometry_msgsMsgAccelCodecIdentity* = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde"
const Ros2Geometry_msgsMsgAccelNativeType* = "geometry_msgs/msg/Accel"
const Ros2Geometry_msgsMsgAccelNativeIdentity* = ""
proc initRos2Geometry_msgsMsgAccel*(): Ros2Geometry_msgsMsgAccel =
  result.`linear` = initRos2Geometry_msgsMsgVector3()
  result.`angular` = initRos2Geometry_msgsMsgVector3()
proc writeFields*(value: Ros2Geometry_msgsMsgAccel; w: var Writer) =
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
proc readRos2Geometry_msgsMsgAccel*(r: var Reader): Ros2Geometry_msgsMsgAccel =
  result = initRos2Geometry_msgsMsgAccel()
  result.`linear` = readRos2Geometry_msgsMsgVector3(r)
  result.`angular` = readRos2Geometry_msgsMsgVector3(r)
proc encode*(value: Ros2Geometry_msgsMsgAccel): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgAccel*(b: seq[byte]): Ros2Geometry_msgsMsgAccel =
  var r = initReader(b,48)
  result = readRos2Geometry_msgsMsgAccel(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/AccelStamped.
## @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgAccelStamped* = object
  ## @brief An accel with reference coordinate frame and timestamp
  ## @details Original geometry_msgs/msg/AccelStamped.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original geometry_msgs/msg/Accel field.
  ## @details Original geometry_msgs/msg/AccelStamped.accel; native type geometry_msgs/msg/Accel. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `accel`*: Ros2Geometry_msgsMsgAccel
const Ros2Geometry_msgsMsgAccelStampedMaximumWireBytes* = 188
const Ros2Geometry_msgsMsgAccelStampedCodecIdentity* = "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899"
const Ros2Geometry_msgsMsgAccelStampedNativeType* = "geometry_msgs/msg/AccelStamped"
const Ros2Geometry_msgsMsgAccelStampedNativeIdentity* = ""
proc initRos2Geometry_msgsMsgAccelStamped*(): Ros2Geometry_msgsMsgAccelStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`accel` = initRos2Geometry_msgsMsgAccel()
proc writeFields*(value: Ros2Geometry_msgsMsgAccelStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`accel`,w)
proc readRos2Geometry_msgsMsgAccelStamped*(r: var Reader): Ros2Geometry_msgsMsgAccelStamped =
  result = initRos2Geometry_msgsMsgAccelStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`accel` = readRos2Geometry_msgsMsgAccel(r)
proc encode*(value: Ros2Geometry_msgsMsgAccelStamped): seq[byte] =
  var w = initWriter(188)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgAccelStamped*(b: seq[byte]): Ros2Geometry_msgsMsgAccelStamped =
  var r = initReader(b,188)
  result = readRos2Geometry_msgsMsgAccelStamped(r)
  finish(r)
## @brief Own every original field of geometry_msgs/msg/Vector3Stamped.
## @details Canonical extent 36..164 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Geometry_msgsMsgVector3Stamped* = object
  ## @brief This represents a Vector3 with reference coordinate frame and timestamp Note that this
  ## follows vector semantics with it always anchored at the origin, so the rotational elements of a
  ## transform are the only parts applied when transforming.
  ## @details Original geometry_msgs/msg/Vector3Stamped.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  ## @details Original geometry_msgs/msg/Vector3Stamped.vector; native type geometry_msgs/msg/Vector3.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `vector`*: Ros2Geometry_msgsMsgVector3
const Ros2Geometry_msgsMsgVector3StampedMaximumWireBytes* = 164
const Ros2Geometry_msgsMsgVector3StampedCodecIdentity* = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b"
const Ros2Geometry_msgsMsgVector3StampedNativeType* = "geometry_msgs/msg/Vector3Stamped"
const Ros2Geometry_msgsMsgVector3StampedNativeIdentity* = ""
proc initRos2Geometry_msgsMsgVector3Stamped*(): Ros2Geometry_msgsMsgVector3Stamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`vector` = initRos2Geometry_msgsMsgVector3()
proc writeFields*(value: Ros2Geometry_msgsMsgVector3Stamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`vector`,w)
proc readRos2Geometry_msgsMsgVector3Stamped*(r: var Reader): Ros2Geometry_msgsMsgVector3Stamped =
  result = initRos2Geometry_msgsMsgVector3Stamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`vector` = readRos2Geometry_msgsMsgVector3(r)
proc encode*(value: Ros2Geometry_msgsMsgVector3Stamped): seq[byte] =
  var w = initWriter(164)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgVector3Stamped*(b: seq[byte]): Ros2Geometry_msgsMsgVector3Stamped =
  var r = initReader(b,164)
  result = readRos2Geometry_msgsMsgVector3Stamped(r)
  finish(r)
## @brief Own every original field of franka_msgs/msg/FrankaRobotState.
## @details Canonical extent 1961..10169 bytes. Native type identity is independent; constructing a
## value opens no resource.
type Ros2Franka_msgsMsgFrankaRobotState* = object
  ## @brief ## Default parts of the message
  ## @details Original franka_msgs/msg/FrankaRobotState.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief ## Indicates which dimensions have an active contact/collision flag raised
  ## @details Original franka_msgs/msg/FrankaRobotState.collision_indicators; native type
  ## franka_msgs/msg/CollisionIndicators. Scalar value. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `collision_indicators`*: Ros2Franka_msgsMsgCollisionIndicators
  ## @brief ## The state of the arm in joint space The joint state consisting out of position (q),
  ## velocity (dq) and effort (tau_J)
  ## @details Original franka_msgs/msg/FrankaRobotState.measured_joint_state; native type
  ## sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `measured_joint_state`*: Ros2Sensor_msgsMsgJointState
  ## @brief The desired joint state consisting out of position (q_d), velocity (dq_d) and effort
  ## (tau_J_d)
  ## @details Original franka_msgs/msg/FrankaRobotState.desired_joint_state; native type
  ## sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `desired_joint_state`*: Ros2Sensor_msgsMsgJointState
  ## @brief The measured motor state of the joints consisting out of position (theta) and velocity
  ## (dtheta)
  ## @details Original franka_msgs/msg/FrankaRobotState.measured_joint_motor_state; native type
  ## sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `measured_joint_motor_state`*: Ros2Sensor_msgsMsgJointState
  ## @brief The desired joint acceleration
  ## @details Original franka_msgs/msg/FrankaRobotState.ddq_d; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `ddq_d`*: array[7,float64]
  ## @brief The derivative of the measured torque signal
  ## @details Original franka_msgs/msg/FrankaRobotState.dtau_j; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `dtau_j`*: array[7,float64]
  ## @brief Filtered external torque. The JointState consists out of effort (tau_ext_hat_filtered)
  ## @details Original franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered; native type
  ## sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau_ext_hat_filtered`*: Ros2Sensor_msgsMsgJointState
  ## @brief ## The state of the elbow
  ## @details Original franka_msgs/msg/FrankaRobotState.elbow; native type franka_msgs/msg/Elbow. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `elbow`*: Ros2Franka_msgsMsgElbow
  ## @brief ## The active wrenches acting on the stiffness frame expressed relative to stiffness frame
  ## @details Original franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k; native type
  ## geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `k_f_ext_hat_k`*: Ros2Geometry_msgsMsgWrenchStamped
  ## @brief base frame
  ## @details Original franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k; native type
  ## geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `o_f_ext_hat_k`*: Ros2Geometry_msgsMsgWrenchStamped
  ## @brief ## The different inertias of the arm The end-effector inertia
  ## @details Original franka_msgs/msg/FrankaRobotState.inertia_ee; native type
  ## geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `inertia_ee`*: Ros2Geometry_msgsMsgInertiaStamped
  ## @brief The load inertia
  ## @details Original franka_msgs/msg/FrankaRobotState.inertia_load; native type
  ## geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `inertia_load`*: Ros2Geometry_msgsMsgInertiaStamped
  ## @brief The total (end-effector + load) inertia
  ## @details Original franka_msgs/msg/FrankaRobotState.inertia_total; native type
  ## geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `inertia_total`*: Ros2Geometry_msgsMsgInertiaStamped
  ## @brief ## The poses describing the transformations between different frames of the arm Measured end-
  ## effector pose in base frame
  ## @details Original franka_msgs/msg/FrankaRobotState.o_t_ee; native type
  ## geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `o_t_ee`*: Ros2Geometry_msgsMsgPoseStamped
  ## @brief Last desired end-effector pose of motion generation in base frame
  ## @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_d; native type
  ## geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `o_t_ee_d`*: Ros2Geometry_msgsMsgPoseStamped
  ## @brief Last commanded end-effector pose of motion generation in base frame
  ## @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_c; native type
  ## geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `o_t_ee_c`*: Ros2Geometry_msgsMsgPoseStamped
  ## @brief Flange to end-effector frame
  ## @details Original franka_msgs/msg/FrankaRobotState.f_t_ee; native type
  ## geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `f_t_ee`*: Ros2Geometry_msgsMsgPoseStamped
  ## @brief End-effector to stiffness frame
  ## @details Original franka_msgs/msg/FrankaRobotState.ee_t_k; native type
  ## geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `ee_t_k`*: Ros2Geometry_msgsMsgPoseStamped
  ## @brief Desired end effector twist in base frame
  ## @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_d; native type
  ## geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `o_dp_ee_d`*: Ros2Geometry_msgsMsgTwistStamped
  ## @brief Last commanded end effector twist in base frame
  ## @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_c; native type
  ## geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `o_dp_ee_c`*: Ros2Geometry_msgsMsgTwistStamped
  ## @brief Last commanded end effector acceleration in base frame
  ## @details Original franka_msgs/msg/FrankaRobotState.o_ddp_ee_c; native type
  ## geometry_msgs/msg/AccelStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `o_ddp_ee_c`*: Ros2Geometry_msgsMsgAccelStamped
  ## @brief ## Additional information
  ## @details Original franka_msgs/msg/FrankaRobotState.time; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `time`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/msg/FrankaRobotState.control_command_success_rate; native type
  ## float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `control_command_success_rate`*: float64
  ## @brief Retain the complete original uint8 field.
  ## @details Original franka_msgs/msg/FrankaRobotState.robot_mode; native type uint8. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `robot_mode`*: uint8
  ## @brief Retain the complete original franka_msgs/msg/Errors field.
  ## @details Original franka_msgs/msg/FrankaRobotState.current_errors; native type
  ## franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `current_errors`*: Ros2Franka_msgsMsgErrors
  ## @brief Retain the complete original franka_msgs/msg/Errors field.
  ## @details Original franka_msgs/msg/FrankaRobotState.last_motion_errors; native type
  ## franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `last_motion_errors`*: Ros2Franka_msgsMsgErrors
  ## @brief ## Translational acceleration data from the joint-mounted accelerometers, expressed in the
  ## "<prefix>link<i>_accelerometer_<side>" frame named in each header (joints 1 through 6, mounted on
  ## links 0 through 5; no accelerometer on joint 7)
  ## @details Original franka_msgs/msg/FrankaRobotState.accelerometer_top; native type
  ## geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `accelerometer_top`*: array[6,Ros2Geometry_msgsMsgVector3Stamped]
  ## @brief Retain the complete original geometry_msgs/msg/Vector3Stamped field.
  ## @details Original franka_msgs/msg/FrankaRobotState.accelerometer_bottom; native type
  ## geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `accelerometer_bottom`*: array[6,Ros2Geometry_msgsMsgVector3Stamped]
const Ros2Franka_msgsMsgFrankaRobotStateMaximumWireBytes* = 10169
const Ros2Franka_msgsMsgFrankaRobotStateCodecIdentity* = "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282"
const Ros2Franka_msgsMsgFrankaRobotStateNativeType* = "franka_msgs/msg/FrankaRobotState"
const Ros2Franka_msgsMsgFrankaRobotStateNativeIdentity* = ""
const Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_OTHER*: uint8 = 0'u8
const Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_IDLE*: uint8 = 1'u8
const Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_MOVE*: uint8 = 2'u8
const Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_GUIDING*: uint8 = 3'u8
const Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_REFLEX*: uint8 = 4'u8
const Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_USER_STOPPED*: uint8 = 5'u8
const Ros2Franka_msgsMsgFrankaRobotState_ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY*: uint8 = 6'u8
proc initRos2Franka_msgsMsgFrankaRobotState*(): Ros2Franka_msgsMsgFrankaRobotState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`collision_indicators` = initRos2Franka_msgsMsgCollisionIndicators()
  result.`measured_joint_state` = initRos2Sensor_msgsMsgJointState()
  result.`desired_joint_state` = initRos2Sensor_msgsMsgJointState()
  result.`measured_joint_motor_state` = initRos2Sensor_msgsMsgJointState()
  result.`ddq_d` = [0,0,0,0,0,0,0]
  result.`dtau_j` = [0,0,0,0,0,0,0]
  result.`tau_ext_hat_filtered` = initRos2Sensor_msgsMsgJointState()
  result.`elbow` = initRos2Franka_msgsMsgElbow()
  result.`k_f_ext_hat_k` = initRos2Geometry_msgsMsgWrenchStamped()
  result.`o_f_ext_hat_k` = initRos2Geometry_msgsMsgWrenchStamped()
  result.`inertia_ee` = initRos2Geometry_msgsMsgInertiaStamped()
  result.`inertia_load` = initRos2Geometry_msgsMsgInertiaStamped()
  result.`inertia_total` = initRos2Geometry_msgsMsgInertiaStamped()
  result.`o_t_ee` = initRos2Geometry_msgsMsgPoseStamped()
  result.`o_t_ee_d` = initRos2Geometry_msgsMsgPoseStamped()
  result.`o_t_ee_c` = initRos2Geometry_msgsMsgPoseStamped()
  result.`f_t_ee` = initRos2Geometry_msgsMsgPoseStamped()
  result.`ee_t_k` = initRos2Geometry_msgsMsgPoseStamped()
  result.`o_dp_ee_d` = initRos2Geometry_msgsMsgTwistStamped()
  result.`o_dp_ee_c` = initRos2Geometry_msgsMsgTwistStamped()
  result.`o_ddp_ee_c` = initRos2Geometry_msgsMsgAccelStamped()
  result.`time` = 0
  result.`control_command_success_rate` = 0
  result.`robot_mode` = 0
  result.`current_errors` = initRos2Franka_msgsMsgErrors()
  result.`last_motion_errors` = initRos2Franka_msgsMsgErrors()
  result.`accelerometer_top` =
          [initRos2Geometry_msgsMsgVector3Stamped(),initRos2Geometry_msgsMsgVector3Stamped(),
                  initRos2Geometry_msgsMsgVector3Stamped(),initRos2Geometry_msgsMsgVector3Stamped(),
                  initRos2Geometry_msgsMsgVector3Stamped(),initRos2Geometry_msgsMsgVector3Stamped()]
  result.`accelerometer_bottom` =
          [initRos2Geometry_msgsMsgVector3Stamped(),initRos2Geometry_msgsMsgVector3Stamped(),
                  initRos2Geometry_msgsMsgVector3Stamped(),initRos2Geometry_msgsMsgVector3Stamped(),
                  initRos2Geometry_msgsMsgVector3Stamped(),initRos2Geometry_msgsMsgVector3Stamped()]
proc writeFields*(value: Ros2Franka_msgsMsgFrankaRobotState; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`collision_indicators`,w)
  writeFields(value.`measured_joint_state`,w)
  writeFields(value.`desired_joint_state`,w)
  writeFields(value.`measured_joint_motor_state`,w)
  for e in value.`ddq_d`:
    putFloat64(w,e)
  for e in value.`dtau_j`:
    putFloat64(w,e)
  writeFields(value.`tau_ext_hat_filtered`,w)
  writeFields(value.`elbow`,w)
  writeFields(value.`k_f_ext_hat_k`,w)
  writeFields(value.`o_f_ext_hat_k`,w)
  writeFields(value.`inertia_ee`,w)
  writeFields(value.`inertia_load`,w)
  writeFields(value.`inertia_total`,w)
  writeFields(value.`o_t_ee`,w)
  writeFields(value.`o_t_ee_d`,w)
  writeFields(value.`o_t_ee_c`,w)
  writeFields(value.`f_t_ee`,w)
  writeFields(value.`ee_t_k`,w)
  writeFields(value.`o_dp_ee_d`,w)
  writeFields(value.`o_dp_ee_c`,w)
  writeFields(value.`o_ddp_ee_c`,w)
  putFloat64(w,value.`time`)
  putFloat64(w,value.`control_command_success_rate`)
  putInteger(w,value.`robot_mode`)
  writeFields(value.`current_errors`,w)
  writeFields(value.`last_motion_errors`,w)
  for e in value.`accelerometer_top`:
    writeFields(e,w)
  for e in value.`accelerometer_bottom`:
    writeFields(e,w)
proc readRos2Franka_msgsMsgFrankaRobotState*(r: var Reader): Ros2Franka_msgsMsgFrankaRobotState =
  result = initRos2Franka_msgsMsgFrankaRobotState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`collision_indicators` = readRos2Franka_msgsMsgCollisionIndicators(r)
  result.`measured_joint_state` = readRos2Sensor_msgsMsgJointState(r)
  result.`desired_joint_state` = readRos2Sensor_msgsMsgJointState(r)
  result.`measured_joint_motor_state` = readRos2Sensor_msgsMsgJointState(r)
  let count5 = 7
  for i in 0..<count5:
    result.`ddq_d`[i] = getFloat64(r)
  let count6 = 7
  for i in 0..<count6:
    result.`dtau_j`[i] = getFloat64(r)
  result.`tau_ext_hat_filtered` = readRos2Sensor_msgsMsgJointState(r)
  result.`elbow` = readRos2Franka_msgsMsgElbow(r)
  result.`k_f_ext_hat_k` = readRos2Geometry_msgsMsgWrenchStamped(r)
  result.`o_f_ext_hat_k` = readRos2Geometry_msgsMsgWrenchStamped(r)
  result.`inertia_ee` = readRos2Geometry_msgsMsgInertiaStamped(r)
  result.`inertia_load` = readRos2Geometry_msgsMsgInertiaStamped(r)
  result.`inertia_total` = readRos2Geometry_msgsMsgInertiaStamped(r)
  result.`o_t_ee` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`o_t_ee_d` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`o_t_ee_c` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`f_t_ee` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`ee_t_k` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`o_dp_ee_d` = readRos2Geometry_msgsMsgTwistStamped(r)
  result.`o_dp_ee_c` = readRos2Geometry_msgsMsgTwistStamped(r)
  result.`o_ddp_ee_c` = readRos2Geometry_msgsMsgAccelStamped(r)
  result.`time` = getFloat64(r)
  result.`control_command_success_rate` = getFloat64(r)
  result.`robot_mode` = getInteger(r,uint8)
  result.`current_errors` = readRos2Franka_msgsMsgErrors(r)
  result.`last_motion_errors` = readRos2Franka_msgsMsgErrors(r)
  let count27 = 6
  for i in 0..<count27:
    result.`accelerometer_top`[i] = readRos2Geometry_msgsMsgVector3Stamped(r)
  let count28 = 6
  for i in 0..<count28:
    result.`accelerometer_bottom`[i] = readRos2Geometry_msgsMsgVector3Stamped(r)
proc encode*(value: Ros2Franka_msgsMsgFrankaRobotState): seq[byte] =
  var w = initWriter(10169)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsMsgFrankaRobotState*(b: seq[byte]): Ros2Franka_msgsMsgFrankaRobotState =
  var r = initReader(b,10169)
  result = readRos2Franka_msgsMsgFrankaRobotState(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Request.
## @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetCartesianStiffness_Request* = object
  ## @brief Cartesian stiffness represented as (x, y, z, roll, pitch, yaw). The values are used in the
  ## direction of the stiffness frame.
  ## @details Original franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness; native type
  ## float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `cartesian_stiffness`*: array[6,float64]
const Ros2Franka_msgsSrvSetCartesianStiffness_RequestMaximumWireBytes* = 48
const Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodecIdentity* =
        "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260"
const Ros2Franka_msgsSrvSetCartesianStiffness_RequestNativeType* = "franka_msgs/srv/SetCartesianStiffness_Request"
const Ros2Franka_msgsSrvSetCartesianStiffness_RequestNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetCartesianStiffness_Request*(): Ros2Franka_msgsSrvSetCartesianStiffness_Request =
  result.`cartesian_stiffness` = [0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsSrvSetCartesianStiffness_Request; w: var Writer) =
  for e in value.`cartesian_stiffness`:
    putFloat64(w,e)
proc readRos2Franka_msgsSrvSetCartesianStiffness_Request*(r: var Reader): Ros2Franka_msgsSrvSetCartesianStiffness_Request =
  result = initRos2Franka_msgsSrvSetCartesianStiffness_Request()
  let count0 = 6
  for i in 0..<count0:
    result.`cartesian_stiffness`[i] = getFloat64(r)
proc encode*(value: Ros2Franka_msgsSrvSetCartesianStiffness_Request): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetCartesianStiffness_Request*(b: seq[byte]): Ros2Franka_msgsSrvSetCartesianStiffness_Request =
  var r = initReader(b,48)
  result = readRos2Franka_msgsSrvSetCartesianStiffness_Request(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Response.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetCartesianStiffness_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/srv/SetCartesianStiffness_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/srv/SetCartesianStiffness_Response.error; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `error`*: string
const Ros2Franka_msgsSrvSetCartesianStiffness_ResponseMaximumWireBytes* = 261
const Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodecIdentity* =
        "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa"
const Ros2Franka_msgsSrvSetCartesianStiffness_ResponseNativeType* = "franka_msgs/srv/SetCartesianStiffness_Response"
const Ros2Franka_msgsSrvSetCartesianStiffness_ResponseNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetCartesianStiffness_Response*(): Ros2Franka_msgsSrvSetCartesianStiffness_Response =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsSrvSetCartesianStiffness_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsSrvSetCartesianStiffness_Response*(r: var Reader): Ros2Franka_msgsSrvSetCartesianStiffness_Response =
  result = initRos2Franka_msgsSrvSetCartesianStiffness_Response()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsSrvSetCartesianStiffness_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetCartesianStiffness_Response*(b: seq[byte]): Ros2Franka_msgsSrvSetCartesianStiffness_Response =
  var r = initReader(b,261)
  result = readRos2Franka_msgsSrvSetCartesianStiffness_Response(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
## @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `lower_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `upper_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal; native type
  ## float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `lower_force_thresholds_nominal`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal; native type
  ## float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `upper_force_thresholds_nominal`*: array[6,float64]
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestMaximumWireBytes* = 208
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodecIdentity* =
        "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c"
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestNativeType* =
        "franka_msgs/srv/SetForceTorqueCollisionBehavior_Request"
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request*(): Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request =
  result.`lower_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`upper_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`lower_force_thresholds_nominal` = [0,0,0,0,0,0]
  result.`upper_force_thresholds_nominal` = [0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request; w: var Writer) =
  for e in value.`lower_torque_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`upper_torque_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`lower_force_thresholds_nominal`:
    putFloat64(w,e)
  for e in value.`upper_force_thresholds_nominal`:
    putFloat64(w,e)
proc readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request*(r: var Reader):
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request =
  result = initRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request()
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
proc encode*(value: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request): seq[byte] =
  var w = initWriter(208)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request*(b: seq[byte]):
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request =
  var r = initReader(b,208)
  result = readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error; native type
  ## string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `error`*: string
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseMaximumWireBytes* = 261
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodecIdentity* =
        "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a"
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseNativeType* =
        "franka_msgs/srv/SetForceTorqueCollisionBehavior_Response"
const Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response*(): Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response*(r: var Reader):
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response =
  result = initRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response*(b: seq[byte]):
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response =
  var r = initReader(b,261)
  result = readRos2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Request.
## @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetFullCollisionBehavior_Request* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `lower_torque_thresholds_acceleration`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration; native type
  ## float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `upper_torque_thresholds_acceleration`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal;
  ## native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `lower_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal;
  ## native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `upper_torque_thresholds_nominal`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration; native type
  ## float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `lower_force_thresholds_acceleration`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original
  ## franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration; native type
  ## float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `upper_force_thresholds_acceleration`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal;
  ## native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `lower_force_thresholds_nominal`*: array[6,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal;
  ## native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `upper_force_thresholds_nominal`*: array[6,float64]
const Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestMaximumWireBytes* = 416
const Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodecIdentity* =
        "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824"
const Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestNativeType* = "franka_msgs/srv/SetFullCollisionBehavior_Request"
const Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetFullCollisionBehavior_Request*(): Ros2Franka_msgsSrvSetFullCollisionBehavior_Request =
  result.`lower_torque_thresholds_acceleration` = [0,0,0,0,0,0,0]
  result.`upper_torque_thresholds_acceleration` = [0,0,0,0,0,0,0]
  result.`lower_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`upper_torque_thresholds_nominal` = [0,0,0,0,0,0,0]
  result.`lower_force_thresholds_acceleration` = [0,0,0,0,0,0]
  result.`upper_force_thresholds_acceleration` = [0,0,0,0,0,0]
  result.`lower_force_thresholds_nominal` = [0,0,0,0,0,0]
  result.`upper_force_thresholds_nominal` = [0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsSrvSetFullCollisionBehavior_Request; w: var Writer) =
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
proc readRos2Franka_msgsSrvSetFullCollisionBehavior_Request*(r: var Reader): Ros2Franka_msgsSrvSetFullCollisionBehavior_Request =
  result = initRos2Franka_msgsSrvSetFullCollisionBehavior_Request()
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
proc encode*(value: Ros2Franka_msgsSrvSetFullCollisionBehavior_Request): seq[byte] =
  var w = initWriter(416)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetFullCollisionBehavior_Request*(b: seq[byte]): Ros2Franka_msgsSrvSetFullCollisionBehavior_Request =
  var r = initReader(b,416)
  result = readRos2Franka_msgsSrvSetFullCollisionBehavior_Request(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Response.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetFullCollisionBehavior_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.success; native type bool.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.error; native type string.
  ## Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `error`*: string
const Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseMaximumWireBytes* = 261
const Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodecIdentity* =
        "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300"
const Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseNativeType* = "franka_msgs/srv/SetFullCollisionBehavior_Response"
const Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetFullCollisionBehavior_Response*(): Ros2Franka_msgsSrvSetFullCollisionBehavior_Response =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsSrvSetFullCollisionBehavior_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsSrvSetFullCollisionBehavior_Response*(r: var Reader): Ros2Franka_msgsSrvSetFullCollisionBehavior_Response =
  result = initRos2Franka_msgsSrvSetFullCollisionBehavior_Response()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsSrvSetFullCollisionBehavior_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetFullCollisionBehavior_Response*(b: seq[byte]): Ros2Franka_msgsSrvSetFullCollisionBehavior_Response =
  var r = initReader(b,261)
  result = readRos2Franka_msgsSrvSetFullCollisionBehavior_Response(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetJointStiffness_Request.
## @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetJointStiffness_Request* = object
  ## @brief Impedance for each joint in the internal controller
  ## @details Original franka_msgs/srv/SetJointStiffness_Request.joint_stiffness; native type float64.
  ## Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `joint_stiffness`*: array[7,float64]
const Ros2Franka_msgsSrvSetJointStiffness_RequestMaximumWireBytes* = 56
const Ros2Franka_msgsSrvSetJointStiffness_RequestCodecIdentity* =
        "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c"
const Ros2Franka_msgsSrvSetJointStiffness_RequestNativeType* = "franka_msgs/srv/SetJointStiffness_Request"
const Ros2Franka_msgsSrvSetJointStiffness_RequestNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetJointStiffness_Request*(): Ros2Franka_msgsSrvSetJointStiffness_Request =
  result.`joint_stiffness` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsSrvSetJointStiffness_Request; w: var Writer) =
  for e in value.`joint_stiffness`:
    putFloat64(w,e)
proc readRos2Franka_msgsSrvSetJointStiffness_Request*(r: var Reader): Ros2Franka_msgsSrvSetJointStiffness_Request =
  result = initRos2Franka_msgsSrvSetJointStiffness_Request()
  let count0 = 7
  for i in 0..<count0:
    result.`joint_stiffness`[i] = getFloat64(r)
proc encode*(value: Ros2Franka_msgsSrvSetJointStiffness_Request): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetJointStiffness_Request*(b: seq[byte]): Ros2Franka_msgsSrvSetJointStiffness_Request =
  var r = initReader(b,56)
  result = readRos2Franka_msgsSrvSetJointStiffness_Request(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetJointStiffness_Response.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetJointStiffness_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/srv/SetJointStiffness_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/srv/SetJointStiffness_Response.error; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `error`*: string
const Ros2Franka_msgsSrvSetJointStiffness_ResponseMaximumWireBytes* = 261
const Ros2Franka_msgsSrvSetJointStiffness_ResponseCodecIdentity* =
        "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d"
const Ros2Franka_msgsSrvSetJointStiffness_ResponseNativeType* = "franka_msgs/srv/SetJointStiffness_Response"
const Ros2Franka_msgsSrvSetJointStiffness_ResponseNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetJointStiffness_Response*(): Ros2Franka_msgsSrvSetJointStiffness_Response =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsSrvSetJointStiffness_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsSrvSetJointStiffness_Response*(r: var Reader): Ros2Franka_msgsSrvSetJointStiffness_Response =
  result = initRos2Franka_msgsSrvSetJointStiffness_Response()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsSrvSetJointStiffness_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetJointStiffness_Response*(b: seq[byte]): Ros2Franka_msgsSrvSetJointStiffness_Response =
  var r = initReader(b,261)
  result = readRos2Franka_msgsSrvSetJointStiffness_Response(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetLoad_Request.
## @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetLoad_Request* = object
  ## @brief The mass of the object
  ## @details Original franka_msgs/srv/SetLoad_Request.mass; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `mass`*: float64
  ## @brief Position of the center of mass
  ## @details Original franka_msgs/srv/SetLoad_Request.center_of_mass; native type float64. Exactly 3
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `center_of_mass`*: array[3,float64]
  ## @brief Inertia of the object - the provided 3x3 matrix is in column major form.
  ## @details Original franka_msgs/srv/SetLoad_Request.load_inertia; native type float64. Exactly 9
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `load_inertia`*: array[9,float64]
const Ros2Franka_msgsSrvSetLoad_RequestMaximumWireBytes* = 104
const Ros2Franka_msgsSrvSetLoad_RequestCodecIdentity* = "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8"
const Ros2Franka_msgsSrvSetLoad_RequestNativeType* = "franka_msgs/srv/SetLoad_Request"
const Ros2Franka_msgsSrvSetLoad_RequestNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetLoad_Request*(): Ros2Franka_msgsSrvSetLoad_Request =
  result.`mass` = 0
  result.`center_of_mass` = [0,0,0]
  result.`load_inertia` = [0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsSrvSetLoad_Request; w: var Writer) =
  putFloat64(w,value.`mass`)
  for e in value.`center_of_mass`:
    putFloat64(w,e)
  for e in value.`load_inertia`:
    putFloat64(w,e)
proc readRos2Franka_msgsSrvSetLoad_Request*(r: var Reader): Ros2Franka_msgsSrvSetLoad_Request =
  result = initRos2Franka_msgsSrvSetLoad_Request()
  result.`mass` = getFloat64(r)
  let count1 = 3
  for i in 0..<count1:
    result.`center_of_mass`[i] = getFloat64(r)
  let count2 = 9
  for i in 0..<count2:
    result.`load_inertia`[i] = getFloat64(r)
proc encode*(value: Ros2Franka_msgsSrvSetLoad_Request): seq[byte] =
  var w = initWriter(104)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetLoad_Request*(b: seq[byte]): Ros2Franka_msgsSrvSetLoad_Request =
  var r = initReader(b,104)
  result = readRos2Franka_msgsSrvSetLoad_Request(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetLoad_Response.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetLoad_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/srv/SetLoad_Response.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/srv/SetLoad_Response.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros2Franka_msgsSrvSetLoad_ResponseMaximumWireBytes* = 261
const Ros2Franka_msgsSrvSetLoad_ResponseCodecIdentity* = "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf"
const Ros2Franka_msgsSrvSetLoad_ResponseNativeType* = "franka_msgs/srv/SetLoad_Response"
const Ros2Franka_msgsSrvSetLoad_ResponseNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetLoad_Response*(): Ros2Franka_msgsSrvSetLoad_Response =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsSrvSetLoad_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsSrvSetLoad_Response*(r: var Reader): Ros2Franka_msgsSrvSetLoad_Response =
  result = initRos2Franka_msgsSrvSetLoad_Response()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsSrvSetLoad_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetLoad_Response*(b: seq[byte]): Ros2Franka_msgsSrvSetLoad_Response =
  var r = initReader(b,261)
  result = readRos2Franka_msgsSrvSetLoad_Response(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Request.
## @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetStiffnessFrame_Request* = object
  ## @brief Sets the transformation matrix describing the stiffness frame relative to the TCP frame. A
  ## 4x4 column-major transformation matrix representing the position and orientation.
  ## @details Original franka_msgs/srv/SetStiffnessFrame_Request.transformation; native type float64.
  ## Exactly 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `transformation`*: array[16,float64]
const Ros2Franka_msgsSrvSetStiffnessFrame_RequestMaximumWireBytes* = 128
const Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodecIdentity* =
        "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402"
const Ros2Franka_msgsSrvSetStiffnessFrame_RequestNativeType* = "franka_msgs/srv/SetStiffnessFrame_Request"
const Ros2Franka_msgsSrvSetStiffnessFrame_RequestNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetStiffnessFrame_Request*(): Ros2Franka_msgsSrvSetStiffnessFrame_Request =
  result.`transformation` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsSrvSetStiffnessFrame_Request; w: var Writer) =
  for e in value.`transformation`:
    putFloat64(w,e)
proc readRos2Franka_msgsSrvSetStiffnessFrame_Request*(r: var Reader): Ros2Franka_msgsSrvSetStiffnessFrame_Request =
  result = initRos2Franka_msgsSrvSetStiffnessFrame_Request()
  let count0 = 16
  for i in 0..<count0:
    result.`transformation`[i] = getFloat64(r)
proc encode*(value: Ros2Franka_msgsSrvSetStiffnessFrame_Request): seq[byte] =
  var w = initWriter(128)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetStiffnessFrame_Request*(b: seq[byte]): Ros2Franka_msgsSrvSetStiffnessFrame_Request =
  var r = initReader(b,128)
  result = readRos2Franka_msgsSrvSetStiffnessFrame_Request(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Response.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetStiffnessFrame_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/srv/SetStiffnessFrame_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/srv/SetStiffnessFrame_Response.error; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `error`*: string
const Ros2Franka_msgsSrvSetStiffnessFrame_ResponseMaximumWireBytes* = 261
const Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodecIdentity* =
        "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744"
const Ros2Franka_msgsSrvSetStiffnessFrame_ResponseNativeType* = "franka_msgs/srv/SetStiffnessFrame_Response"
const Ros2Franka_msgsSrvSetStiffnessFrame_ResponseNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetStiffnessFrame_Response*(): Ros2Franka_msgsSrvSetStiffnessFrame_Response =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsSrvSetStiffnessFrame_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsSrvSetStiffnessFrame_Response*(r: var Reader): Ros2Franka_msgsSrvSetStiffnessFrame_Response =
  result = initRos2Franka_msgsSrvSetStiffnessFrame_Response()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsSrvSetStiffnessFrame_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetStiffnessFrame_Response*(b: seq[byte]): Ros2Franka_msgsSrvSetStiffnessFrame_Response =
  var r = initReader(b,261)
  result = readRos2Franka_msgsSrvSetStiffnessFrame_Response(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetTCPFrame_Request.
## @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetTCPFrame_Request* = object
  ## @brief Sets the transformation matrix describing the tcp frame to the end-effector frame. A 4x4
  ## column-major transformation matrix representing the position and orientation.
  ## @details Original franka_msgs/srv/SetTCPFrame_Request.transformation; native type float64. Exactly
  ## 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `transformation`*: array[16,float64]
const Ros2Franka_msgsSrvSetTCPFrame_RequestMaximumWireBytes* = 128
const Ros2Franka_msgsSrvSetTCPFrame_RequestCodecIdentity* =
        "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f"
const Ros2Franka_msgsSrvSetTCPFrame_RequestNativeType* = "franka_msgs/srv/SetTCPFrame_Request"
const Ros2Franka_msgsSrvSetTCPFrame_RequestNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetTCPFrame_Request*(): Ros2Franka_msgsSrvSetTCPFrame_Request =
  result.`transformation` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Franka_msgsSrvSetTCPFrame_Request; w: var Writer) =
  for e in value.`transformation`:
    putFloat64(w,e)
proc readRos2Franka_msgsSrvSetTCPFrame_Request*(r: var Reader): Ros2Franka_msgsSrvSetTCPFrame_Request =
  result = initRos2Franka_msgsSrvSetTCPFrame_Request()
  let count0 = 16
  for i in 0..<count0:
    result.`transformation`[i] = getFloat64(r)
proc encode*(value: Ros2Franka_msgsSrvSetTCPFrame_Request): seq[byte] =
  var w = initWriter(128)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetTCPFrame_Request*(b: seq[byte]): Ros2Franka_msgsSrvSetTCPFrame_Request =
  var r = initReader(b,128)
  result = readRos2Franka_msgsSrvSetTCPFrame_Request(r)
  finish(r)
## @brief Own every original field of franka_msgs/srv/SetTCPFrame_Response.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_msgsSrvSetTCPFrame_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original franka_msgs/srv/SetTCPFrame_Response.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original franka_msgs/srv/SetTCPFrame_Response.error; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros2Franka_msgsSrvSetTCPFrame_ResponseMaximumWireBytes* = 261
const Ros2Franka_msgsSrvSetTCPFrame_ResponseCodecIdentity* =
        "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38"
const Ros2Franka_msgsSrvSetTCPFrame_ResponseNativeType* = "franka_msgs/srv/SetTCPFrame_Response"
const Ros2Franka_msgsSrvSetTCPFrame_ResponseNativeIdentity* = ""
proc initRos2Franka_msgsSrvSetTCPFrame_Response*(): Ros2Franka_msgsSrvSetTCPFrame_Response =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Franka_msgsSrvSetTCPFrame_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Franka_msgsSrvSetTCPFrame_Response*(r: var Reader): Ros2Franka_msgsSrvSetTCPFrame_Response =
  result = initRos2Franka_msgsSrvSetTCPFrame_Response()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_msgsSrvSetTCPFrame_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_msgsSrvSetTCPFrame_Response*(b: seq[byte]): Ros2Franka_msgsSrvSetTCPFrame_Response =
  var r = initReader(b,261)
  result = readRos2Franka_msgsSrvSetTCPFrame_Response(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Goal.
## @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsActionMoveAbsolute_Goal* = object
  ## @brief Command an absolute move of the Franka Spine. Target position [m]
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Goal.position; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `position`*: float64
  ## @brief Motion velocity [m/s], must be > 0
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Goal.velocity; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `velocity`*: float64
  ## @brief Motion acceleration [m/s²], must be > 0
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Goal.acceleration; native type float64.
  ## Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `acceleration`*: float64
  ## @brief Motion deceleration [m/s²], must be > 0
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Goal.deceleration; native type float64.
  ## Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `deceleration`*: float64
const Ros2Franka_spine_msgsActionMoveAbsolute_GoalMaximumWireBytes* = 32
const Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodecIdentity* =
        "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13"
const Ros2Franka_spine_msgsActionMoveAbsolute_GoalNativeType* = "franka_spine_msgs/action/MoveAbsolute_Goal"
const Ros2Franka_spine_msgsActionMoveAbsolute_GoalNativeIdentity* = ""
proc initRos2Franka_spine_msgsActionMoveAbsolute_Goal*(): Ros2Franka_spine_msgsActionMoveAbsolute_Goal =
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
  result.`deceleration` = 0
proc writeFields*(value: Ros2Franka_spine_msgsActionMoveAbsolute_Goal; w: var Writer) =
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
  putFloat64(w,value.`deceleration`)
proc readRos2Franka_spine_msgsActionMoveAbsolute_Goal*(r: var Reader): Ros2Franka_spine_msgsActionMoveAbsolute_Goal =
  result = initRos2Franka_spine_msgsActionMoveAbsolute_Goal()
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
  result.`deceleration` = getFloat64(r)
proc encode*(value: Ros2Franka_spine_msgsActionMoveAbsolute_Goal): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsActionMoveAbsolute_Goal*(b: seq[byte]): Ros2Franka_spine_msgsActionMoveAbsolute_Goal =
  var r = initReader(b,32)
  result = readRos2Franka_spine_msgsActionMoveAbsolute_Goal(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Result.
## @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsActionMoveAbsolute_Result* = object
  ## @brief True if the target position was reached
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Result.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief How the motion was stopped (from spine response)
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Result.stop_by; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `stop_by`*: string
  ## @brief Error description if success is false
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Result.error; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `error`*: string
const Ros2Franka_spine_msgsActionMoveAbsolute_ResultMaximumWireBytes* = 521
const Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodecIdentity* =
        "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5"
const Ros2Franka_spine_msgsActionMoveAbsolute_ResultNativeType* = "franka_spine_msgs/action/MoveAbsolute_Result"
const Ros2Franka_spine_msgsActionMoveAbsolute_ResultNativeIdentity* = ""
proc initRos2Franka_spine_msgsActionMoveAbsolute_Result*(): Ros2Franka_spine_msgsActionMoveAbsolute_Result =
  result.`success` = false
  result.`stop_by` = ""
  result.`error` = ""
proc writeFields*(value: Ros2Franka_spine_msgsActionMoveAbsolute_Result; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`stop_by`,256)
  putString(w,value.`error`,256)
proc readRos2Franka_spine_msgsActionMoveAbsolute_Result*(r: var Reader): Ros2Franka_spine_msgsActionMoveAbsolute_Result =
  result = initRos2Franka_spine_msgsActionMoveAbsolute_Result()
  result.`success` = getBool(r)
  result.`stop_by` = getString(r,256)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Franka_spine_msgsActionMoveAbsolute_Result): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsActionMoveAbsolute_Result*(b: seq[byte]): Ros2Franka_spine_msgsActionMoveAbsolute_Result =
  var r = initReader(b,521)
  result = readRos2Franka_spine_msgsActionMoveAbsolute_Result(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Feedback.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsActionMoveAbsolute_Feedback* = object
  ## @brief Current spine position [m]
  ## @details Original franka_spine_msgs/action/MoveAbsolute_Feedback.current_position; native type
  ## float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `current_position`*: float64
const Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackMaximumWireBytes* = 8
const Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodecIdentity* =
        "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929"
const Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackNativeType* = "franka_spine_msgs/action/MoveAbsolute_Feedback"
const Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackNativeIdentity* = ""
proc initRos2Franka_spine_msgsActionMoveAbsolute_Feedback*(): Ros2Franka_spine_msgsActionMoveAbsolute_Feedback =
  result.`current_position` = 0
proc writeFields*(value: Ros2Franka_spine_msgsActionMoveAbsolute_Feedback; w: var Writer) =
  putFloat64(w,value.`current_position`)
proc readRos2Franka_spine_msgsActionMoveAbsolute_Feedback*(r: var Reader): Ros2Franka_spine_msgsActionMoveAbsolute_Feedback =
  result = initRos2Franka_spine_msgsActionMoveAbsolute_Feedback()
  result.`current_position` = getFloat64(r)
proc encode*(value: Ros2Franka_spine_msgsActionMoveAbsolute_Feedback): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsActionMoveAbsolute_Feedback*(b: seq[byte]): Ros2Franka_spine_msgsActionMoveAbsolute_Feedback =
  var r = initReader(b,8)
  result = readRos2Franka_spine_msgsActionMoveAbsolute_Feedback(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/msg/UserLimits.
## @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsMsgUserLimits* = object
  ## @brief User-defined soft motion limits for the spine. Lower motion limit [m]
  ## @details Original franka_spine_msgs/msg/UserLimits.lower_limit; native type float64. Scalar value.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `lower_limit`*: float64
  ## @brief Upper motion limit [m]
  ## @details Original franka_spine_msgs/msg/UserLimits.upper_limit; native type float64. Scalar value.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `upper_limit`*: float64
const Ros2Franka_spine_msgsMsgUserLimitsMaximumWireBytes* = 16
const Ros2Franka_spine_msgsMsgUserLimitsCodecIdentity* = "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368"
const Ros2Franka_spine_msgsMsgUserLimitsNativeType* = "franka_spine_msgs/msg/UserLimits"
const Ros2Franka_spine_msgsMsgUserLimitsNativeIdentity* = ""
proc initRos2Franka_spine_msgsMsgUserLimits*(): Ros2Franka_spine_msgsMsgUserLimits =
  result.`lower_limit` = 0
  result.`upper_limit` = 0
proc writeFields*(value: Ros2Franka_spine_msgsMsgUserLimits; w: var Writer) =
  putFloat64(w,value.`lower_limit`)
  putFloat64(w,value.`upper_limit`)
proc readRos2Franka_spine_msgsMsgUserLimits*(r: var Reader): Ros2Franka_spine_msgsMsgUserLimits =
  result = initRos2Franka_spine_msgsMsgUserLimits()
  result.`lower_limit` = getFloat64(r)
  result.`upper_limit` = getFloat64(r)
proc encode*(value: Ros2Franka_spine_msgsMsgUserLimits): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsMsgUserLimits*(b: seq[byte]): Ros2Franka_spine_msgsMsgUserLimits =
  var r = initReader(b,16)
  result = readRos2Franka_spine_msgsMsgUserLimits(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/msg/SpineParameters.
## @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsMsgSpineParameters* = object
  ## @brief Aggregated spine parameters returned by the GetParameters service. User-defined motion limits
  ## @details Original franka_spine_msgs/msg/SpineParameters.user_limits; native type
  ## franka_spine_msgs/msg/UserLimits. Scalar value. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `user_limits`*: Ros2Franka_spine_msgsMsgUserLimits
const Ros2Franka_spine_msgsMsgSpineParametersMaximumWireBytes* = 16
const Ros2Franka_spine_msgsMsgSpineParametersCodecIdentity* =
        "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223"
const Ros2Franka_spine_msgsMsgSpineParametersNativeType* = "franka_spine_msgs/msg/SpineParameters"
const Ros2Franka_spine_msgsMsgSpineParametersNativeIdentity* = ""
proc initRos2Franka_spine_msgsMsgSpineParameters*(): Ros2Franka_spine_msgsMsgSpineParameters =
  result.`user_limits` = initRos2Franka_spine_msgsMsgUserLimits()
proc writeFields*(value: Ros2Franka_spine_msgsMsgSpineParameters; w: var Writer) =
  writeFields(value.`user_limits`,w)
proc readRos2Franka_spine_msgsMsgSpineParameters*(r: var Reader): Ros2Franka_spine_msgsMsgSpineParameters =
  result = initRos2Franka_spine_msgsMsgSpineParameters()
  result.`user_limits` = readRos2Franka_spine_msgsMsgUserLimits(r)
proc encode*(value: Ros2Franka_spine_msgsMsgSpineParameters): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsMsgSpineParameters*(b: seq[byte]): Ros2Franka_spine_msgsMsgSpineParameters =
  var r = initReader(b,16)
  result = readRos2Franka_spine_msgsMsgSpineParameters(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/msg/SpinePosition.
## @details Canonical extent 21..149 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsMsgSpinePosition* = object
  ## @brief Periodic spine position sample published on ~/position. Subscribe to this instead of polling
  ## the GetPosition service in a loop.
  ## @details Original franka_spine_msgs/msg/SpinePosition.header; native type std_msgs/msg/Header.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Last known position [m]
  ## @details Original franka_spine_msgs/msg/SpinePosition.position; native type float64. Scalar value.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `position`*: float64
  ## @brief False when the sample is stale because the REST read failed
  ## @details Original franka_spine_msgs/msg/SpinePosition.valid; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `valid`*: bool
const Ros2Franka_spine_msgsMsgSpinePositionMaximumWireBytes* = 149
const Ros2Franka_spine_msgsMsgSpinePositionCodecIdentity* =
        "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775"
const Ros2Franka_spine_msgsMsgSpinePositionNativeType* = "franka_spine_msgs/msg/SpinePosition"
const Ros2Franka_spine_msgsMsgSpinePositionNativeIdentity* = ""
proc initRos2Franka_spine_msgsMsgSpinePosition*(): Ros2Franka_spine_msgsMsgSpinePosition =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`position` = 0
  result.`valid` = false
proc writeFields*(value: Ros2Franka_spine_msgsMsgSpinePosition; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat64(w,value.`position`)
  putBool(w,value.`valid`)
proc readRos2Franka_spine_msgsMsgSpinePosition*(r: var Reader): Ros2Franka_spine_msgsMsgSpinePosition =
  result = initRos2Franka_spine_msgsMsgSpinePosition()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`position` = getFloat64(r)
  result.`valid` = getBool(r)
proc encode*(value: Ros2Franka_spine_msgsMsgSpinePosition): seq[byte] =
  var w = initWriter(149)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsMsgSpinePosition*(b: seq[byte]): Ros2Franka_spine_msgsMsgSpinePosition =
  var r = initReader(b,149)
  result = readRos2Franka_spine_msgsMsgSpinePosition(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/msg/SpineState.
## @details Canonical extent 25..921 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsMsgSpineState* = object
  ## @brief Periodic spine state sample published on ~/state. Subscribe to this instead of polling the
  ## GetSpineState service in a loop. Possible states: NotReadyToSwitchOn, SwitchedOff, ReadyToSwitchOn,
  ## MotorOff, SwitchedOn, QuickStopActive, FaultReactionActive, Fault, Unknown.
  ## @details Original franka_spine_msgs/msg/SpineState.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Current spine state
  ## @details Original franka_spine_msgs/msg/SpineState.state; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `state`*: string
  ## @brief Error code (empty when no error)
  ## @details Original franka_spine_msgs/msg/SpineState.error_code; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error_code`*: string
  ## @brief Human-readable error description
  ## @details Original franka_spine_msgs/msg/SpineState.error_description; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `error_description`*: string
  ## @brief False when the sample is stale because the REST read failed
  ## @details Original franka_spine_msgs/msg/SpineState.valid; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `valid`*: bool
const Ros2Franka_spine_msgsMsgSpineStateMaximumWireBytes* = 921
const Ros2Franka_spine_msgsMsgSpineStateCodecIdentity* = "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441"
const Ros2Franka_spine_msgsMsgSpineStateNativeType* = "franka_spine_msgs/msg/SpineState"
const Ros2Franka_spine_msgsMsgSpineStateNativeIdentity* = ""
proc initRos2Franka_spine_msgsMsgSpineState*(): Ros2Franka_spine_msgsMsgSpineState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`state` = ""
  result.`error_code` = ""
  result.`error_description` = ""
  result.`valid` = false
proc writeFields*(value: Ros2Franka_spine_msgsMsgSpineState; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`state`,256)
  putString(w,value.`error_code`,256)
  putString(w,value.`error_description`,256)
  putBool(w,value.`valid`)
proc readRos2Franka_spine_msgsMsgSpineState*(r: var Reader): Ros2Franka_spine_msgsMsgSpineState =
  result = initRos2Franka_spine_msgsMsgSpineState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`state` = getString(r,256)
  result.`error_code` = getString(r,256)
  result.`error_description` = getString(r,256)
  result.`valid` = getBool(r)
proc encode*(value: Ros2Franka_spine_msgsMsgSpineState): seq[byte] =
  var w = initWriter(921)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsMsgSpineState*(b: seq[byte]): Ros2Franka_spine_msgsMsgSpineState =
  var r = initReader(b,921)
  result = readRos2Franka_spine_msgsMsgSpineState(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/FaultReset_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvFaultReset_Request* = object
const Ros2Franka_spine_msgsSrvFaultReset_RequestMaximumWireBytes* = 0
const Ros2Franka_spine_msgsSrvFaultReset_RequestCodecIdentity* =
        "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33"
const Ros2Franka_spine_msgsSrvFaultReset_RequestNativeType* = "franka_spine_msgs/srv/FaultReset_Request"
const Ros2Franka_spine_msgsSrvFaultReset_RequestNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvFaultReset_Request*(): Ros2Franka_spine_msgsSrvFaultReset_Request =
  discard
proc writeFields*(value: Ros2Franka_spine_msgsSrvFaultReset_Request; w: var Writer) =
  discard
proc readRos2Franka_spine_msgsSrvFaultReset_Request*(r: var Reader): Ros2Franka_spine_msgsSrvFaultReset_Request =
  result = initRos2Franka_spine_msgsSrvFaultReset_Request()
proc encode*(value: Ros2Franka_spine_msgsSrvFaultReset_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvFaultReset_Request*(b: seq[byte]): Ros2Franka_spine_msgsSrvFaultReset_Request =
  var r = initReader(b,0)
  result = readRos2Franka_spine_msgsSrvFaultReset_Request(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/FaultReset_Response.
## @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvFaultReset_Response* = object
  ## @brief Spine state after the reset
  ## @details Original franka_spine_msgs/srv/FaultReset_Response.state; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `state`*: string
  ## @brief True if the fault was cleared
  ## @details Original franka_spine_msgs/srv/FaultReset_Response.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Human-readable status or error description
  ## @details Original franka_spine_msgs/srv/FaultReset_Response.message; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `message`*: string
const Ros2Franka_spine_msgsSrvFaultReset_ResponseMaximumWireBytes* = 521
const Ros2Franka_spine_msgsSrvFaultReset_ResponseCodecIdentity* =
        "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c"
const Ros2Franka_spine_msgsSrvFaultReset_ResponseNativeType* = "franka_spine_msgs/srv/FaultReset_Response"
const Ros2Franka_spine_msgsSrvFaultReset_ResponseNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvFaultReset_Response*(): Ros2Franka_spine_msgsSrvFaultReset_Response =
  result.`state` = ""
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Franka_spine_msgsSrvFaultReset_Response; w: var Writer) =
  putString(w,value.`state`,256)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos2Franka_spine_msgsSrvFaultReset_Response*(r: var Reader): Ros2Franka_spine_msgsSrvFaultReset_Response =
  result = initRos2Franka_spine_msgsSrvFaultReset_Response()
  result.`state` = getString(r,256)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros2Franka_spine_msgsSrvFaultReset_Response): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvFaultReset_Response*(b: seq[byte]): Ros2Franka_spine_msgsSrvFaultReset_Response =
  var r = initReader(b,521)
  result = readRos2Franka_spine_msgsSrvFaultReset_Response(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/GetParameters_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvGetParameters_Request* = object
const Ros2Franka_spine_msgsSrvGetParameters_RequestMaximumWireBytes* = 0
const Ros2Franka_spine_msgsSrvGetParameters_RequestCodecIdentity* =
        "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14"
const Ros2Franka_spine_msgsSrvGetParameters_RequestNativeType* = "franka_spine_msgs/srv/GetParameters_Request"
const Ros2Franka_spine_msgsSrvGetParameters_RequestNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvGetParameters_Request*(): Ros2Franka_spine_msgsSrvGetParameters_Request =
  discard
proc writeFields*(value: Ros2Franka_spine_msgsSrvGetParameters_Request; w: var Writer) =
  discard
proc readRos2Franka_spine_msgsSrvGetParameters_Request*(r: var Reader): Ros2Franka_spine_msgsSrvGetParameters_Request =
  result = initRos2Franka_spine_msgsSrvGetParameters_Request()
proc encode*(value: Ros2Franka_spine_msgsSrvGetParameters_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvGetParameters_Request*(b: seq[byte]): Ros2Franka_spine_msgsSrvGetParameters_Request =
  var r = initReader(b,0)
  result = readRos2Franka_spine_msgsSrvGetParameters_Request(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/GetParameters_Response.
## @details Canonical extent 21..277 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvGetParameters_Response* = object
  ## @brief Calibration and limit values
  ## @details Original franka_spine_msgs/srv/GetParameters_Response.parameters; native type
  ## franka_spine_msgs/msg/SpineParameters. Scalar value. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `parameters`*: Ros2Franka_spine_msgsMsgSpineParameters
  ## @brief True if the REST call succeeded
  ## @details Original franka_spine_msgs/srv/GetParameters_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Human-readable status or error description
  ## @details Original franka_spine_msgs/srv/GetParameters_Response.message; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `message`*: string
const Ros2Franka_spine_msgsSrvGetParameters_ResponseMaximumWireBytes* = 277
const Ros2Franka_spine_msgsSrvGetParameters_ResponseCodecIdentity* =
        "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed"
const Ros2Franka_spine_msgsSrvGetParameters_ResponseNativeType* = "franka_spine_msgs/srv/GetParameters_Response"
const Ros2Franka_spine_msgsSrvGetParameters_ResponseNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvGetParameters_Response*(): Ros2Franka_spine_msgsSrvGetParameters_Response =
  result.`parameters` = initRos2Franka_spine_msgsMsgSpineParameters()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Franka_spine_msgsSrvGetParameters_Response; w: var Writer) =
  writeFields(value.`parameters`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos2Franka_spine_msgsSrvGetParameters_Response*(r: var Reader): Ros2Franka_spine_msgsSrvGetParameters_Response =
  result = initRos2Franka_spine_msgsSrvGetParameters_Response()
  result.`parameters` = readRos2Franka_spine_msgsMsgSpineParameters(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros2Franka_spine_msgsSrvGetParameters_Response): seq[byte] =
  var w = initWriter(277)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvGetParameters_Response*(b: seq[byte]): Ros2Franka_spine_msgsSrvGetParameters_Response =
  var r = initReader(b,277)
  result = readRos2Franka_spine_msgsSrvGetParameters_Response(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/GetPosition_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvGetPosition_Request* = object
const Ros2Franka_spine_msgsSrvGetPosition_RequestMaximumWireBytes* = 0
const Ros2Franka_spine_msgsSrvGetPosition_RequestCodecIdentity* =
        "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2"
const Ros2Franka_spine_msgsSrvGetPosition_RequestNativeType* = "franka_spine_msgs/srv/GetPosition_Request"
const Ros2Franka_spine_msgsSrvGetPosition_RequestNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvGetPosition_Request*(): Ros2Franka_spine_msgsSrvGetPosition_Request =
  discard
proc writeFields*(value: Ros2Franka_spine_msgsSrvGetPosition_Request; w: var Writer) =
  discard
proc readRos2Franka_spine_msgsSrvGetPosition_Request*(r: var Reader): Ros2Franka_spine_msgsSrvGetPosition_Request =
  result = initRos2Franka_spine_msgsSrvGetPosition_Request()
proc encode*(value: Ros2Franka_spine_msgsSrvGetPosition_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvGetPosition_Request*(b: seq[byte]): Ros2Franka_spine_msgsSrvGetPosition_Request =
  var r = initReader(b,0)
  result = readRos2Franka_spine_msgsSrvGetPosition_Request(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/GetPosition_Response.
## @details Canonical extent 9..9 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvGetPosition_Response* = object
  ## @brief Current position [m]
  ## @details Original franka_spine_msgs/srv/GetPosition_Response.position; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `position`*: float64
  ## @brief True if the REST call succeeded
  ## @details Original franka_spine_msgs/srv/GetPosition_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
const Ros2Franka_spine_msgsSrvGetPosition_ResponseMaximumWireBytes* = 9
const Ros2Franka_spine_msgsSrvGetPosition_ResponseCodecIdentity* =
        "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8"
const Ros2Franka_spine_msgsSrvGetPosition_ResponseNativeType* = "franka_spine_msgs/srv/GetPosition_Response"
const Ros2Franka_spine_msgsSrvGetPosition_ResponseNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvGetPosition_Response*(): Ros2Franka_spine_msgsSrvGetPosition_Response =
  result.`position` = 0
  result.`success` = false
proc writeFields*(value: Ros2Franka_spine_msgsSrvGetPosition_Response; w: var Writer) =
  putFloat64(w,value.`position`)
  putBool(w,value.`success`)
proc readRos2Franka_spine_msgsSrvGetPosition_Response*(r: var Reader): Ros2Franka_spine_msgsSrvGetPosition_Response =
  result = initRos2Franka_spine_msgsSrvGetPosition_Response()
  result.`position` = getFloat64(r)
  result.`success` = getBool(r)
proc encode*(value: Ros2Franka_spine_msgsSrvGetPosition_Response): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvGetPosition_Response*(b: seq[byte]): Ros2Franka_spine_msgsSrvGetPosition_Response =
  var r = initReader(b,9)
  result = readRos2Franka_spine_msgsSrvGetPosition_Response(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvGetSpineState_Request* = object
const Ros2Franka_spine_msgsSrvGetSpineState_RequestMaximumWireBytes* = 0
const Ros2Franka_spine_msgsSrvGetSpineState_RequestCodecIdentity* =
        "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67"
const Ros2Franka_spine_msgsSrvGetSpineState_RequestNativeType* = "franka_spine_msgs/srv/GetSpineState_Request"
const Ros2Franka_spine_msgsSrvGetSpineState_RequestNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvGetSpineState_Request*(): Ros2Franka_spine_msgsSrvGetSpineState_Request =
  discard
proc writeFields*(value: Ros2Franka_spine_msgsSrvGetSpineState_Request; w: var Writer) =
  discard
proc readRos2Franka_spine_msgsSrvGetSpineState_Request*(r: var Reader): Ros2Franka_spine_msgsSrvGetSpineState_Request =
  result = initRos2Franka_spine_msgsSrvGetSpineState_Request()
proc encode*(value: Ros2Franka_spine_msgsSrvGetSpineState_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvGetSpineState_Request*(b: seq[byte]): Ros2Franka_spine_msgsSrvGetSpineState_Request =
  var r = initReader(b,0)
  result = readRos2Franka_spine_msgsSrvGetSpineState_Request(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Response.
## @details Canonical extent 13..781 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvGetSpineState_Response* = object
  ## @brief Current spine state
  ## @details Original franka_spine_msgs/srv/GetSpineState_Response.state; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `state`*: string
  ## @brief Error code (empty when no error)
  ## @details Original franka_spine_msgs/srv/GetSpineState_Response.error_code; native type string.
  ## Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `error_code`*: string
  ## @brief Human-readable error description
  ## @details Original franka_spine_msgs/srv/GetSpineState_Response.error_description; native type
  ## string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `error_description`*: string
  ## @brief True if the REST call succeeded
  ## @details Original franka_spine_msgs/srv/GetSpineState_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
const Ros2Franka_spine_msgsSrvGetSpineState_ResponseMaximumWireBytes* = 781
const Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodecIdentity* =
        "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1"
const Ros2Franka_spine_msgsSrvGetSpineState_ResponseNativeType* = "franka_spine_msgs/srv/GetSpineState_Response"
const Ros2Franka_spine_msgsSrvGetSpineState_ResponseNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvGetSpineState_Response*(): Ros2Franka_spine_msgsSrvGetSpineState_Response =
  result.`state` = ""
  result.`error_code` = ""
  result.`error_description` = ""
  result.`success` = false
proc writeFields*(value: Ros2Franka_spine_msgsSrvGetSpineState_Response; w: var Writer) =
  putString(w,value.`state`,256)
  putString(w,value.`error_code`,256)
  putString(w,value.`error_description`,256)
  putBool(w,value.`success`)
proc readRos2Franka_spine_msgsSrvGetSpineState_Response*(r: var Reader): Ros2Franka_spine_msgsSrvGetSpineState_Response =
  result = initRos2Franka_spine_msgsSrvGetSpineState_Response()
  result.`state` = getString(r,256)
  result.`error_code` = getString(r,256)
  result.`error_description` = getString(r,256)
  result.`success` = getBool(r)
proc encode*(value: Ros2Franka_spine_msgsSrvGetSpineState_Response): seq[byte] =
  var w = initWriter(781)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvGetSpineState_Response*(b: seq[byte]): Ros2Franka_spine_msgsSrvGetSpineState_Response =
  var r = initReader(b,781)
  result = readRos2Franka_spine_msgsSrvGetSpineState_Response(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/Halt_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvHalt_Request* = object
const Ros2Franka_spine_msgsSrvHalt_RequestMaximumWireBytes* = 0
const Ros2Franka_spine_msgsSrvHalt_RequestCodecIdentity* =
        "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111"
const Ros2Franka_spine_msgsSrvHalt_RequestNativeType* = "franka_spine_msgs/srv/Halt_Request"
const Ros2Franka_spine_msgsSrvHalt_RequestNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvHalt_Request*(): Ros2Franka_spine_msgsSrvHalt_Request =
  discard
proc writeFields*(value: Ros2Franka_spine_msgsSrvHalt_Request; w: var Writer) =
  discard
proc readRos2Franka_spine_msgsSrvHalt_Request*(r: var Reader): Ros2Franka_spine_msgsSrvHalt_Request =
  result = initRos2Franka_spine_msgsSrvHalt_Request()
proc encode*(value: Ros2Franka_spine_msgsSrvHalt_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvHalt_Request*(b: seq[byte]): Ros2Franka_spine_msgsSrvHalt_Request =
  var r = initReader(b,0)
  result = readRos2Franka_spine_msgsSrvHalt_Request(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/Halt_Response.
## @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvHalt_Response* = object
  ## @brief Spine state after the halt
  ## @details Original franka_spine_msgs/srv/Halt_Response.state; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `state`*: string
  ## @brief True if the halt was executed
  ## @details Original franka_spine_msgs/srv/Halt_Response.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Human-readable status or error description
  ## @details Original franka_spine_msgs/srv/Halt_Response.message; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `message`*: string
const Ros2Franka_spine_msgsSrvHalt_ResponseMaximumWireBytes* = 521
const Ros2Franka_spine_msgsSrvHalt_ResponseCodecIdentity* =
        "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77"
const Ros2Franka_spine_msgsSrvHalt_ResponseNativeType* = "franka_spine_msgs/srv/Halt_Response"
const Ros2Franka_spine_msgsSrvHalt_ResponseNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvHalt_Response*(): Ros2Franka_spine_msgsSrvHalt_Response =
  result.`state` = ""
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Franka_spine_msgsSrvHalt_Response; w: var Writer) =
  putString(w,value.`state`,256)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos2Franka_spine_msgsSrvHalt_Response*(r: var Reader): Ros2Franka_spine_msgsSrvHalt_Response =
  result = initRos2Franka_spine_msgsSrvHalt_Response()
  result.`state` = getString(r,256)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros2Franka_spine_msgsSrvHalt_Response): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvHalt_Response*(b: seq[byte]): Ros2Franka_spine_msgsSrvHalt_Response =
  var r = initReader(b,521)
  result = readRos2Franka_spine_msgsSrvHalt_Response(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvSwitchOff_Request* = object
const Ros2Franka_spine_msgsSrvSwitchOff_RequestMaximumWireBytes* = 0
const Ros2Franka_spine_msgsSrvSwitchOff_RequestCodecIdentity* =
        "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16"
const Ros2Franka_spine_msgsSrvSwitchOff_RequestNativeType* = "franka_spine_msgs/srv/SwitchOff_Request"
const Ros2Franka_spine_msgsSrvSwitchOff_RequestNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvSwitchOff_Request*(): Ros2Franka_spine_msgsSrvSwitchOff_Request =
  discard
proc writeFields*(value: Ros2Franka_spine_msgsSrvSwitchOff_Request; w: var Writer) =
  discard
proc readRos2Franka_spine_msgsSrvSwitchOff_Request*(r: var Reader): Ros2Franka_spine_msgsSrvSwitchOff_Request =
  result = initRos2Franka_spine_msgsSrvSwitchOff_Request()
proc encode*(value: Ros2Franka_spine_msgsSrvSwitchOff_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvSwitchOff_Request*(b: seq[byte]): Ros2Franka_spine_msgsSrvSwitchOff_Request =
  var r = initReader(b,0)
  result = readRos2Franka_spine_msgsSrvSwitchOff_Request(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Response.
## @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvSwitchOff_Response* = object
  ## @brief Spine state after switching off
  ## @details Original franka_spine_msgs/srv/SwitchOff_Response.state; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `state`*: string
  ## @brief True if the transition succeeded
  ## @details Original franka_spine_msgs/srv/SwitchOff_Response.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Human-readable status or error description
  ## @details Original franka_spine_msgs/srv/SwitchOff_Response.message; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `message`*: string
const Ros2Franka_spine_msgsSrvSwitchOff_ResponseMaximumWireBytes* = 521
const Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodecIdentity* =
        "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad"
const Ros2Franka_spine_msgsSrvSwitchOff_ResponseNativeType* = "franka_spine_msgs/srv/SwitchOff_Response"
const Ros2Franka_spine_msgsSrvSwitchOff_ResponseNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvSwitchOff_Response*(): Ros2Franka_spine_msgsSrvSwitchOff_Response =
  result.`state` = ""
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Franka_spine_msgsSrvSwitchOff_Response; w: var Writer) =
  putString(w,value.`state`,256)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos2Franka_spine_msgsSrvSwitchOff_Response*(r: var Reader): Ros2Franka_spine_msgsSrvSwitchOff_Response =
  result = initRos2Franka_spine_msgsSrvSwitchOff_Response()
  result.`state` = getString(r,256)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros2Franka_spine_msgsSrvSwitchOff_Response): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvSwitchOff_Response*(b: seq[byte]): Ros2Franka_spine_msgsSrvSwitchOff_Response =
  var r = initReader(b,521)
  result = readRos2Franka_spine_msgsSrvSwitchOff_Response(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvSwitchOn_Request* = object
const Ros2Franka_spine_msgsSrvSwitchOn_RequestMaximumWireBytes* = 0
const Ros2Franka_spine_msgsSrvSwitchOn_RequestCodecIdentity* =
        "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56"
const Ros2Franka_spine_msgsSrvSwitchOn_RequestNativeType* = "franka_spine_msgs/srv/SwitchOn_Request"
const Ros2Franka_spine_msgsSrvSwitchOn_RequestNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvSwitchOn_Request*(): Ros2Franka_spine_msgsSrvSwitchOn_Request =
  discard
proc writeFields*(value: Ros2Franka_spine_msgsSrvSwitchOn_Request; w: var Writer) =
  discard
proc readRos2Franka_spine_msgsSrvSwitchOn_Request*(r: var Reader): Ros2Franka_spine_msgsSrvSwitchOn_Request =
  result = initRos2Franka_spine_msgsSrvSwitchOn_Request()
proc encode*(value: Ros2Franka_spine_msgsSrvSwitchOn_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvSwitchOn_Request*(b: seq[byte]): Ros2Franka_spine_msgsSrvSwitchOn_Request =
  var r = initReader(b,0)
  result = readRos2Franka_spine_msgsSrvSwitchOn_Request(r)
  finish(r)
## @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Response.
## @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Franka_spine_msgsSrvSwitchOn_Response* = object
  ## @brief Spine state after switching on
  ## @details Original franka_spine_msgs/srv/SwitchOn_Response.state; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `state`*: string
  ## @brief True if the transition succeeded
  ## @details Original franka_spine_msgs/srv/SwitchOn_Response.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Human-readable status or error description
  ## @details Original franka_spine_msgs/srv/SwitchOn_Response.message; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `message`*: string
const Ros2Franka_spine_msgsSrvSwitchOn_ResponseMaximumWireBytes* = 521
const Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodecIdentity* =
        "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d"
const Ros2Franka_spine_msgsSrvSwitchOn_ResponseNativeType* = "franka_spine_msgs/srv/SwitchOn_Response"
const Ros2Franka_spine_msgsSrvSwitchOn_ResponseNativeIdentity* = ""
proc initRos2Franka_spine_msgsSrvSwitchOn_Response*(): Ros2Franka_spine_msgsSrvSwitchOn_Response =
  result.`state` = ""
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Franka_spine_msgsSrvSwitchOn_Response; w: var Writer) =
  putString(w,value.`state`,256)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos2Franka_spine_msgsSrvSwitchOn_Response*(r: var Reader): Ros2Franka_spine_msgsSrvSwitchOn_Response =
  result = initRos2Franka_spine_msgsSrvSwitchOn_Response()
  result.`state` = getString(r,256)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros2Franka_spine_msgsSrvSwitchOn_Response): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos2Franka_spine_msgsSrvSwitchOn_Response*(b: seq[byte]): Ros2Franka_spine_msgsSrvSwitchOn_Response =
  var r = initReader(b,521)
  result = readRos2Franka_spine_msgsSrvSwitchOn_Response(r)
  finish(r)
