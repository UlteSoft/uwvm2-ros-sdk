## @brief Complete original flexiv ros2_jazzy_v2_2 canonical values.
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
## @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Goal.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionErrorRecovery_Goal* = object
const Ros2Flexiv_msgsActionErrorRecovery_GoalMaximumWireBytes* = 0
const Ros2Flexiv_msgsActionErrorRecovery_GoalCodecIdentity* =
        "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830"
const Ros2Flexiv_msgsActionErrorRecovery_GoalNativeType* = "flexiv_msgs/action/ErrorRecovery_Goal"
const Ros2Flexiv_msgsActionErrorRecovery_GoalNativeIdentity* = ""
proc initRos2Flexiv_msgsActionErrorRecovery_Goal*(): Ros2Flexiv_msgsActionErrorRecovery_Goal =
  discard
proc writeFields*(value: Ros2Flexiv_msgsActionErrorRecovery_Goal; w: var Writer) =
  discard
proc readRos2Flexiv_msgsActionErrorRecovery_Goal*(r: var Reader): Ros2Flexiv_msgsActionErrorRecovery_Goal =
  result = initRos2Flexiv_msgsActionErrorRecovery_Goal()
proc encode*(value: Ros2Flexiv_msgsActionErrorRecovery_Goal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionErrorRecovery_Goal*(b: seq[byte]): Ros2Flexiv_msgsActionErrorRecovery_Goal =
  var r = initReader(b,0)
  result = readRos2Flexiv_msgsActionErrorRecovery_Goal(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Result.
## @details Canonical extent 7..263 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionErrorRecovery_Result* = object
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/action/ErrorRecovery_Result.success; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Operator-facing explanation of the outcome
  ## @details Original flexiv_msgs/action/ErrorRecovery_Result.message; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `message`*: string
  ## @brief True when the robot is operational again but controllers must be restarted to resume motion
  ## @details Original flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart; native type
  ## bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `requires_controller_restart`*: bool
  ## @brief Policy that applied to the condition found, values defined in RecoveryPolicy.msg
  ## @details Original flexiv_msgs/action/ErrorRecovery_Result.recovery_policy; native type uint8. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `recovery_policy`*: uint8
const Ros2Flexiv_msgsActionErrorRecovery_ResultMaximumWireBytes* = 263
const Ros2Flexiv_msgsActionErrorRecovery_ResultCodecIdentity* =
        "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc"
const Ros2Flexiv_msgsActionErrorRecovery_ResultNativeType* = "flexiv_msgs/action/ErrorRecovery_Result"
const Ros2Flexiv_msgsActionErrorRecovery_ResultNativeIdentity* = ""
proc initRos2Flexiv_msgsActionErrorRecovery_Result*(): Ros2Flexiv_msgsActionErrorRecovery_Result =
  result.`success` = false
  result.`message` = ""
  result.`requires_controller_restart` = false
  result.`recovery_policy` = 0
proc writeFields*(value: Ros2Flexiv_msgsActionErrorRecovery_Result; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putBool(w,value.`requires_controller_restart`)
  putInteger(w,value.`recovery_policy`)
proc readRos2Flexiv_msgsActionErrorRecovery_Result*(r: var Reader): Ros2Flexiv_msgsActionErrorRecovery_Result =
  result = initRos2Flexiv_msgsActionErrorRecovery_Result()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`requires_controller_restart` = getBool(r)
  result.`recovery_policy` = getInteger(r,uint8)
proc encode*(value: Ros2Flexiv_msgsActionErrorRecovery_Result): seq[byte] =
  var w = initWriter(263)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionErrorRecovery_Result*(b: seq[byte]): Ros2Flexiv_msgsActionErrorRecovery_Result =
  var r = initReader(b,263)
  result = readRos2Flexiv_msgsActionErrorRecovery_Result(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Feedback.
## @details Canonical extent 9..265 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionErrorRecovery_Feedback* = object
  ## @brief Retain the complete original uint8 field.
  ## @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state; native type uint8.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `recovery_state`*: uint8
  ## @brief Human-readable name of the recovery state above
  ## @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; native type string.
  ## Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `recovery_state_name`*: string
  ## @brief Seconds elapsed since the recovery started
  ## @details Original flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds; native type float32.
  ## Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `elapsed_seconds`*: float32
const Ros2Flexiv_msgsActionErrorRecovery_FeedbackMaximumWireBytes* = 265
const Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodecIdentity* =
        "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739"
const Ros2Flexiv_msgsActionErrorRecovery_FeedbackNativeType* = "flexiv_msgs/action/ErrorRecovery_Feedback"
const Ros2Flexiv_msgsActionErrorRecovery_FeedbackNativeIdentity* = ""
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_IDLE*: uint8 = 0'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_CLASSIFY*: uint8 = 1'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_STOP*: uint8 = 2'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_CLEAR_FAULT*: uint8 = 3'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_WAIT_FAULT_CLEARED*: uint8 = 4'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_SERVO_ON*: uint8 = 5'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_WAIT_OPERATIONAL*: uint8 = 6'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_COMPLETE*: uint8 = 7'u8
const Ros2Flexiv_msgsActionErrorRecovery_Feedback_STATE_FAILED*: uint8 = 8'u8
proc initRos2Flexiv_msgsActionErrorRecovery_Feedback*(): Ros2Flexiv_msgsActionErrorRecovery_Feedback =
  result.`recovery_state` = 0
  result.`recovery_state_name` = ""
  result.`elapsed_seconds` = 0
proc writeFields*(value: Ros2Flexiv_msgsActionErrorRecovery_Feedback; w: var Writer) =
  putInteger(w,value.`recovery_state`)
  putString(w,value.`recovery_state_name`,256)
  putFloat32(w,value.`elapsed_seconds`)
proc readRos2Flexiv_msgsActionErrorRecovery_Feedback*(r: var Reader): Ros2Flexiv_msgsActionErrorRecovery_Feedback =
  result = initRos2Flexiv_msgsActionErrorRecovery_Feedback()
  result.`recovery_state` = getInteger(r,uint8)
  result.`recovery_state_name` = getString(r,256)
  result.`elapsed_seconds` = getFloat32(r)
proc encode*(value: Ros2Flexiv_msgsActionErrorRecovery_Feedback): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionErrorRecovery_Feedback*(b: seq[byte]): Ros2Flexiv_msgsActionErrorRecovery_Feedback =
  var r = initReader(b,265)
  result = readRos2Flexiv_msgsActionErrorRecovery_Feedback(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/Grasp_Goal.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionGrasp_Goal* = object
  ## @brief N
  ## @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `force`*: float64
const Ros2Flexiv_msgsActionGrasp_GoalMaximumWireBytes* = 8
const Ros2Flexiv_msgsActionGrasp_GoalCodecIdentity* = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce"
const Ros2Flexiv_msgsActionGrasp_GoalNativeType* = "flexiv_msgs/action/Grasp_Goal"
const Ros2Flexiv_msgsActionGrasp_GoalNativeIdentity* = ""
proc initRos2Flexiv_msgsActionGrasp_Goal*(): Ros2Flexiv_msgsActionGrasp_Goal =
  result.`force` = 0
proc writeFields*(value: Ros2Flexiv_msgsActionGrasp_Goal; w: var Writer) =
  putFloat64(w,value.`force`)
proc readRos2Flexiv_msgsActionGrasp_Goal*(r: var Reader): Ros2Flexiv_msgsActionGrasp_Goal =
  result = initRos2Flexiv_msgsActionGrasp_Goal()
  result.`force` = getFloat64(r)
proc encode*(value: Ros2Flexiv_msgsActionGrasp_Goal): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionGrasp_Goal*(b: seq[byte]): Ros2Flexiv_msgsActionGrasp_Goal =
  var r = initReader(b,8)
  result = readRos2Flexiv_msgsActionGrasp_Goal(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/Grasp_Result.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionGrasp_Result* = object
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros2Flexiv_msgsActionGrasp_ResultMaximumWireBytes* = 261
const Ros2Flexiv_msgsActionGrasp_ResultCodecIdentity* = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a"
const Ros2Flexiv_msgsActionGrasp_ResultNativeType* = "flexiv_msgs/action/Grasp_Result"
const Ros2Flexiv_msgsActionGrasp_ResultNativeIdentity* = ""
proc initRos2Flexiv_msgsActionGrasp_Result*(): Ros2Flexiv_msgsActionGrasp_Result =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Flexiv_msgsActionGrasp_Result; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Flexiv_msgsActionGrasp_Result*(r: var Reader): Ros2Flexiv_msgsActionGrasp_Result =
  result = initRos2Flexiv_msgsActionGrasp_Result()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Flexiv_msgsActionGrasp_Result): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionGrasp_Result*(b: seq[byte]): Ros2Flexiv_msgsActionGrasp_Result =
  var r = initReader(b,261)
  result = readRos2Flexiv_msgsActionGrasp_Result(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/Grasp_Feedback.
## @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionGrasp_Feedback* = object
  ## @brief m
  ## @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `current_width`*: float64
  ## @brief N
  ## @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
  ## value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `current_force`*: float64
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `moving`*: bool
const Ros2Flexiv_msgsActionGrasp_FeedbackMaximumWireBytes* = 17
const Ros2Flexiv_msgsActionGrasp_FeedbackCodecIdentity* =
        "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05"
const Ros2Flexiv_msgsActionGrasp_FeedbackNativeType* = "flexiv_msgs/action/Grasp_Feedback"
const Ros2Flexiv_msgsActionGrasp_FeedbackNativeIdentity* = ""
proc initRos2Flexiv_msgsActionGrasp_Feedback*(): Ros2Flexiv_msgsActionGrasp_Feedback =
  result.`current_width` = 0
  result.`current_force` = 0
  result.`moving` = false
proc writeFields*(value: Ros2Flexiv_msgsActionGrasp_Feedback; w: var Writer) =
  putFloat64(w,value.`current_width`)
  putFloat64(w,value.`current_force`)
  putBool(w,value.`moving`)
proc readRos2Flexiv_msgsActionGrasp_Feedback*(r: var Reader): Ros2Flexiv_msgsActionGrasp_Feedback =
  result = initRos2Flexiv_msgsActionGrasp_Feedback()
  result.`current_width` = getFloat64(r)
  result.`current_force` = getFloat64(r)
  result.`moving` = getBool(r)
proc encode*(value: Ros2Flexiv_msgsActionGrasp_Feedback): seq[byte] =
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionGrasp_Feedback*(b: seq[byte]): Ros2Flexiv_msgsActionGrasp_Feedback =
  var r = initReader(b,17)
  result = readRos2Flexiv_msgsActionGrasp_Feedback(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/Move_Goal.
## @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionMove_Goal* = object
  ## @brief m
  ## @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `width`*: float64
  ## @brief m/s
  ## @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `velocity`*: float64
  ## @brief N
  ## @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `max_force`*: float64
const Ros2Flexiv_msgsActionMove_GoalMaximumWireBytes* = 24
const Ros2Flexiv_msgsActionMove_GoalCodecIdentity* = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2"
const Ros2Flexiv_msgsActionMove_GoalNativeType* = "flexiv_msgs/action/Move_Goal"
const Ros2Flexiv_msgsActionMove_GoalNativeIdentity* = ""
proc initRos2Flexiv_msgsActionMove_Goal*(): Ros2Flexiv_msgsActionMove_Goal =
  result.`width` = 0
  result.`velocity` = 0
  result.`max_force` = 0
proc writeFields*(value: Ros2Flexiv_msgsActionMove_Goal; w: var Writer) =
  putFloat64(w,value.`width`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`max_force`)
proc readRos2Flexiv_msgsActionMove_Goal*(r: var Reader): Ros2Flexiv_msgsActionMove_Goal =
  result = initRos2Flexiv_msgsActionMove_Goal()
  result.`width` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`max_force` = getFloat64(r)
proc encode*(value: Ros2Flexiv_msgsActionMove_Goal): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionMove_Goal*(b: seq[byte]): Ros2Flexiv_msgsActionMove_Goal =
  var r = initReader(b,24)
  result = readRos2Flexiv_msgsActionMove_Goal(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/Move_Result.
## @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionMove_Result* = object
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Retain the complete original string field.
  ## @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `error`*: string
const Ros2Flexiv_msgsActionMove_ResultMaximumWireBytes* = 261
const Ros2Flexiv_msgsActionMove_ResultCodecIdentity* = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d"
const Ros2Flexiv_msgsActionMove_ResultNativeType* = "flexiv_msgs/action/Move_Result"
const Ros2Flexiv_msgsActionMove_ResultNativeIdentity* = ""
proc initRos2Flexiv_msgsActionMove_Result*(): Ros2Flexiv_msgsActionMove_Result =
  result.`success` = false
  result.`error` = ""
proc writeFields*(value: Ros2Flexiv_msgsActionMove_Result; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error`,256)
proc readRos2Flexiv_msgsActionMove_Result*(r: var Reader): Ros2Flexiv_msgsActionMove_Result =
  result = initRos2Flexiv_msgsActionMove_Result()
  result.`success` = getBool(r)
  result.`error` = getString(r,256)
proc encode*(value: Ros2Flexiv_msgsActionMove_Result): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionMove_Result*(b: seq[byte]): Ros2Flexiv_msgsActionMove_Result =
  var r = initReader(b,261)
  result = readRos2Flexiv_msgsActionMove_Result(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/action/Move_Feedback.
## @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsActionMove_Feedback* = object
  ## @brief m
  ## @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `current_width`*: float64
  ## @brief N
  ## @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `current_force`*: float64
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `moving`*: bool
const Ros2Flexiv_msgsActionMove_FeedbackMaximumWireBytes* = 17
const Ros2Flexiv_msgsActionMove_FeedbackCodecIdentity* = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38"
const Ros2Flexiv_msgsActionMove_FeedbackNativeType* = "flexiv_msgs/action/Move_Feedback"
const Ros2Flexiv_msgsActionMove_FeedbackNativeIdentity* = ""
proc initRos2Flexiv_msgsActionMove_Feedback*(): Ros2Flexiv_msgsActionMove_Feedback =
  result.`current_width` = 0
  result.`current_force` = 0
  result.`moving` = false
proc writeFields*(value: Ros2Flexiv_msgsActionMove_Feedback; w: var Writer) =
  putFloat64(w,value.`current_width`)
  putFloat64(w,value.`current_force`)
  putBool(w,value.`moving`)
proc readRos2Flexiv_msgsActionMove_Feedback*(r: var Reader): Ros2Flexiv_msgsActionMove_Feedback =
  result = initRos2Flexiv_msgsActionMove_Feedback()
  result.`current_width` = getFloat64(r)
  result.`current_force` = getFloat64(r)
  result.`moving` = getBool(r)
proc encode*(value: Ros2Flexiv_msgsActionMove_Feedback): seq[byte] =
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsActionMove_Feedback*(b: seq[byte]): Ros2Flexiv_msgsActionMove_Feedback =
  var r = initReader(b,17)
  result = readRos2Flexiv_msgsActionMove_Feedback(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/Digital.
## @details Canonical extent 2..2 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgDigital* = object
  ## @brief Retain the complete original uint8 field.
  ## @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
  ## the complete value and acquires no ROS resource.
  `pin`*: uint8
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
  ## the complete value and acquires no ROS resource.
  `state`*: bool
const Ros2Flexiv_msgsMsgDigitalMaximumWireBytes* = 2
const Ros2Flexiv_msgsMsgDigitalCodecIdentity* = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf"
const Ros2Flexiv_msgsMsgDigitalNativeType* = "flexiv_msgs/msg/Digital"
const Ros2Flexiv_msgsMsgDigitalNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgDigital*(): Ros2Flexiv_msgsMsgDigital =
  result.`pin` = 0
  result.`state` = false
proc writeFields*(value: Ros2Flexiv_msgsMsgDigital; w: var Writer) =
  putInteger(w,value.`pin`)
  putBool(w,value.`state`)
proc readRos2Flexiv_msgsMsgDigital*(r: var Reader): Ros2Flexiv_msgsMsgDigital =
  result = initRos2Flexiv_msgsMsgDigital()
  result.`pin` = getInteger(r,uint8)
  result.`state` = getBool(r)
proc encode*(value: Ros2Flexiv_msgsMsgDigital): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgDigital*(b: seq[byte]): Ros2Flexiv_msgsMsgDigital =
  var r = initReader(b,2)
  result = readRos2Flexiv_msgsMsgDigital(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/GPIOStates.
## @details Canonical extent 4..68 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgGPIOStates* = object
  ## @brief Retain the complete original flexiv_msgs/msg/Digital field.
  ## @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
  ## elements. Storage belongs to the complete value and acquires no ROS resource.
  `states`*: seq[Ros2Flexiv_msgsMsgDigital]
const Ros2Flexiv_msgsMsgGPIOStatesMaximumWireBytes* = 68
const Ros2Flexiv_msgsMsgGPIOStatesCodecIdentity* = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14"
const Ros2Flexiv_msgsMsgGPIOStatesNativeType* = "flexiv_msgs/msg/GPIOStates"
const Ros2Flexiv_msgsMsgGPIOStatesNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgGPIOStates*(): Ros2Flexiv_msgsMsgGPIOStates =
  result.`states` = @[]
proc writeFields*(value: Ros2Flexiv_msgsMsgGPIOStates; w: var Writer) =
  if value.`states`.len > 32: fail(22)
  putInteger(w,uint32(value.`states`.len))
  for e in value.`states`:
    writeFields(e,w)
proc readRos2Flexiv_msgsMsgGPIOStates*(r: var Reader): Ros2Flexiv_msgsMsgGPIOStates =
  result = initRos2Flexiv_msgsMsgGPIOStates()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`states` = newSeq[Ros2Flexiv_msgsMsgDigital](count0)
  for i in 0..<count0:
    result.`states`[i] = readRos2Flexiv_msgsMsgDigital(r)
proc encode*(value: Ros2Flexiv_msgsMsgGPIOStates): seq[byte] =
  var w = initWriter(68)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgGPIOStates*(b: seq[byte]): Ros2Flexiv_msgsMsgGPIOStates =
  var r = initReader(b,68)
  result = readRos2Flexiv_msgsMsgGPIOStates(r)
  finish(r)
## @brief Own every original field of std_msgs/msg/Header.
## @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Std_msgsMsgHeader* = object
  ## @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  ## timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  ## seconds and nanoseconds.
  ## @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `stamp`*: Ros2Builtin_interfacesMsgTime
  ## @brief Transform frame with which this data is associated.
  ## @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
  ## bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  `frame_id`*: string
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 268
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
const Ros2Std_msgsMsgHeaderNativeType* = "std_msgs/msg/Header"
const Ros2Std_msgsMsgHeaderNativeIdentity* = ""
proc initRos2Std_msgsMsgHeader*(): Ros2Std_msgsMsgHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
proc writeFields*(value: Ros2Std_msgsMsgHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,256)
proc readRos2Std_msgsMsgHeader*(r: var Reader): Ros2Std_msgsMsgHeader =
  result = initRos2Std_msgsMsgHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,256)
proc encode*(value: Ros2Std_msgsMsgHeader): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgHeader*(b: seq[byte]): Ros2Std_msgsMsgHeader =
  var r = initReader(b,268)
  result = readRos2Std_msgsMsgHeader(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/JointImpedance.
## @details Canonical extent 29..9373 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgJointImpedance* = object
  ## @brief Impedance properties of the robot's joint motion controller, used in the joint impedance
  ## control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header
  ## @details Original flexiv_msgs/msg/JointImpedance.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  ## robot are covered: the robot reports no nominal joint stiffness for external axes.
  ## @details Original flexiv_msgs/msg/JointImpedance.joint_names; native type string. At most 32
  ## elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `joint_names`*: seq[string]
  ## @brief Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad]
  ## @details Original flexiv_msgs/msg/JointImpedance.k_q; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `k_q`*: seq[float64]
  ## @brief Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7
  ## @details Original flexiv_msgs/msg/JointImpedance.z_q; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `z_q`*: seq[float64]
  ## @brief Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad]
  ## @details Original flexiv_msgs/msg/JointImpedance.k_q_nom; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `k_q_nom`*: seq[float64]
  ## @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  ## impedance control mode: they are held and applied on the next controller start.
  ## @details Original flexiv_msgs/msg/JointImpedance.in_effect; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `in_effect`*: bool
const Ros2Flexiv_msgsMsgJointImpedanceMaximumWireBytes* = 9373
const Ros2Flexiv_msgsMsgJointImpedanceCodecIdentity* = "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a"
const Ros2Flexiv_msgsMsgJointImpedanceNativeType* = "flexiv_msgs/msg/JointImpedance"
const Ros2Flexiv_msgsMsgJointImpedanceNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgJointImpedance*(): Ros2Flexiv_msgsMsgJointImpedance =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`k_q` = @[]
  result.`z_q` = @[]
  result.`k_q_nom` = @[]
  result.`in_effect` = false
proc writeFields*(value: Ros2Flexiv_msgsMsgJointImpedance; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 32: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`k_q`.len > 32: fail(22)
  putInteger(w,uint32(value.`k_q`.len))
  for e in value.`k_q`:
    putFloat64(w,e)
  if value.`z_q`.len > 32: fail(22)
  putInteger(w,uint32(value.`z_q`.len))
  for e in value.`z_q`:
    putFloat64(w,e)
  if value.`k_q_nom`.len > 32: fail(22)
  putInteger(w,uint32(value.`k_q_nom`.len))
  for e in value.`k_q_nom`:
    putFloat64(w,e)
  putBool(w,value.`in_effect`)
proc readRos2Flexiv_msgsMsgJointImpedance*(r: var Reader): Ros2Flexiv_msgsMsgJointImpedance =
  result = initRos2Flexiv_msgsMsgJointImpedance()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`k_q` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`k_q`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 32: fail(22)
  let count3 = int(rawcount3)
  result.`z_q` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`z_q`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 32: fail(22)
  let count4 = int(rawcount4)
  result.`k_q_nom` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`k_q_nom`[i] = getFloat64(r)
  result.`in_effect` = getBool(r)
proc encode*(value: Ros2Flexiv_msgsMsgJointImpedance): seq[byte] =
  var w = initWriter(9373)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgJointImpedance*(b: seq[byte]): Ros2Flexiv_msgsMsgJointImpedance =
  var r = initReader(b,9373)
  result = readRos2Flexiv_msgsMsgJointImpedance(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/JointInertiaScale.
## @details Canonical extent 21..8853 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgJointInertiaScale* = object
  ## @brief Inertia shaping scales of the robot's joint motion controller, used in the joint impedance
  ## control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header
  ## @details Original flexiv_msgs/msg/JointInertiaScale.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  ## robot are covered, matching JointImpedance.msg.
  ## @details Original flexiv_msgs/msg/JointInertiaScale.joint_names; native type string. At most 32
  ## elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `joint_names`*: seq[string]
  ## @brief Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0
  ## means no shaping; a smaller scale makes the joint behave as if it were lighter.
  ## @details Original flexiv_msgs/msg/JointInertiaScale.inertia_scales; native type float64. At most 32
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `inertia_scales`*: seq[float64]
  ## @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  ## impedance control mode: they are held and applied on the next controller start.
  ## @details Original flexiv_msgs/msg/JointInertiaScale.in_effect; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `in_effect`*: bool
const Ros2Flexiv_msgsMsgJointInertiaScaleMaximumWireBytes* = 8853
const Ros2Flexiv_msgsMsgJointInertiaScaleCodecIdentity* =
        "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f"
const Ros2Flexiv_msgsMsgJointInertiaScaleNativeType* = "flexiv_msgs/msg/JointInertiaScale"
const Ros2Flexiv_msgsMsgJointInertiaScaleNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgJointInertiaScale*(): Ros2Flexiv_msgsMsgJointInertiaScale =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`inertia_scales` = @[]
  result.`in_effect` = false
proc writeFields*(value: Ros2Flexiv_msgsMsgJointInertiaScale; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 32: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`inertia_scales`.len > 32: fail(22)
  putInteger(w,uint32(value.`inertia_scales`.len))
  for e in value.`inertia_scales`:
    putFloat64(w,e)
  putBool(w,value.`in_effect`)
proc readRos2Flexiv_msgsMsgJointInertiaScale*(r: var Reader): Ros2Flexiv_msgsMsgJointInertiaScale =
  result = initRos2Flexiv_msgsMsgJointInertiaScale()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`inertia_scales` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`inertia_scales`[i] = getFloat64(r)
  result.`in_effect` = getBool(r)
proc encode*(value: Ros2Flexiv_msgsMsgJointInertiaScale): seq[byte] =
  var w = initWriter(8853)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgJointInertiaScale*(b: seq[byte]): Ros2Flexiv_msgsMsgJointInertiaScale =
  var r = initReader(b,8853)
  result = readRos2Flexiv_msgsMsgJointInertiaScale(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/JointPosVel.
## @details Canonical extent 8..520 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgJointPosVel* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `positions`*: seq[float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `velocities`*: seq[float64]
const Ros2Flexiv_msgsMsgJointPosVelMaximumWireBytes* = 520
const Ros2Flexiv_msgsMsgJointPosVelCodecIdentity* = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca"
const Ros2Flexiv_msgsMsgJointPosVelNativeType* = "flexiv_msgs/msg/JointPosVel"
const Ros2Flexiv_msgsMsgJointPosVelNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgJointPosVel*(): Ros2Flexiv_msgsMsgJointPosVel =
  result.`positions` = @[]
  result.`velocities` = @[]
proc writeFields*(value: Ros2Flexiv_msgsMsgJointPosVel; w: var Writer) =
  if value.`positions`.len > 32: fail(22)
  putInteger(w,uint32(value.`positions`.len))
  for e in value.`positions`:
    putFloat64(w,e)
  if value.`velocities`.len > 32: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    putFloat64(w,e)
proc readRos2Flexiv_msgsMsgJointPosVel*(r: var Reader): Ros2Flexiv_msgsMsgJointPosVel =
  result = initRos2Flexiv_msgsMsgJointPosVel()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`positions` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
proc encode*(value: Ros2Flexiv_msgsMsgJointPosVel): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgJointPosVel*(b: seq[byte]): Ros2Flexiv_msgsMsgJointPosVel =
  var r = initReader(b,520)
  result = readRos2Flexiv_msgsMsgJointPosVel(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/MaxContactTorque.
## @details Canonical extent 25..9113 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgMaxContactTorque* = object
  ## @brief Maximum contact torques of the robot's joint motion controller, used in the joint impedance
  ## control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header
  ## @details Original flexiv_msgs/msg/MaxContactTorque.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  ## robot are covered, matching JointImpedance.msg.
  ## @details Original flexiv_msgs/msg/MaxContactTorque.joint_names; native type string. At most 32
  ## elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `joint_names`*: seq[string]
  ## @brief Maximum contact torque the controller regulates its output to maintain. [Nm]
  ## @details Original flexiv_msgs/msg/MaxContactTorque.max_contact_torques; native type float64. At most
  ## 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `max_contact_torques`*: seq[float64]
  ## @brief Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm]
  ## @details Original flexiv_msgs/msg/MaxContactTorque.tau_max; native type float64. At most 32
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `tau_max`*: seq[float64]
  ## @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  ## impedance control mode: they are held and applied on the next controller start.
  ## @details Original flexiv_msgs/msg/MaxContactTorque.in_effect; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `in_effect`*: bool
const Ros2Flexiv_msgsMsgMaxContactTorqueMaximumWireBytes* = 9113
const Ros2Flexiv_msgsMsgMaxContactTorqueCodecIdentity* = "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da"
const Ros2Flexiv_msgsMsgMaxContactTorqueNativeType* = "flexiv_msgs/msg/MaxContactTorque"
const Ros2Flexiv_msgsMsgMaxContactTorqueNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgMaxContactTorque*(): Ros2Flexiv_msgsMsgMaxContactTorque =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`max_contact_torques` = @[]
  result.`tau_max` = @[]
  result.`in_effect` = false
proc writeFields*(value: Ros2Flexiv_msgsMsgMaxContactTorque; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 32: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`max_contact_torques`.len > 32: fail(22)
  putInteger(w,uint32(value.`max_contact_torques`.len))
  for e in value.`max_contact_torques`:
    putFloat64(w,e)
  if value.`tau_max`.len > 32: fail(22)
  putInteger(w,uint32(value.`tau_max`.len))
  for e in value.`tau_max`:
    putFloat64(w,e)
  putBool(w,value.`in_effect`)
proc readRos2Flexiv_msgsMsgMaxContactTorque*(r: var Reader): Ros2Flexiv_msgsMsgMaxContactTorque =
  result = initRos2Flexiv_msgsMsgMaxContactTorque()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`max_contact_torques` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`max_contact_torques`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 32: fail(22)
  let count3 = int(rawcount3)
  result.`tau_max` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`tau_max`[i] = getFloat64(r)
  result.`in_effect` = getBool(r)
proc encode*(value: Ros2Flexiv_msgsMsgMaxContactTorque): seq[byte] =
  var w = initWriter(9113)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgMaxContactTorque*(b: seq[byte]): Ros2Flexiv_msgsMsgMaxContactTorque =
  var r = initReader(b,9113)
  result = readRos2Flexiv_msgsMsgMaxContactTorque(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/Mode.
## @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgMode* = object
  ## @brief Retain the complete original int8 field.
  ## @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `mode`*: int8
const Ros2Flexiv_msgsMsgModeMaximumWireBytes* = 1
const Ros2Flexiv_msgsMsgModeCodecIdentity* = "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87"
const Ros2Flexiv_msgsMsgModeNativeType* = "flexiv_msgs/msg/Mode"
const Ros2Flexiv_msgsMsgModeNativeIdentity* = ""
const Ros2Flexiv_msgsMsgMode_MODE_UNKNOWN*: int8 = 0'i8
const Ros2Flexiv_msgsMsgMode_MODE_IDLE*: int8 = 1'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE*: int8 = 2'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_IMPEDANCE*: int8 = 3'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_IMPEDANCE*: int8 = 4'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION*: int8 = 5'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION*: int8 = 6'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION*: int8 = 7'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION*: int8 = 8'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE*: int8 = 9'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE*: int8 = 10'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_SUPER_PRIMITIVE*: int8 = 11'i8
proc initRos2Flexiv_msgsMsgMode*(): Ros2Flexiv_msgsMsgMode =
  result.`mode` = 0
proc writeFields*(value: Ros2Flexiv_msgsMsgMode; w: var Writer) =
  putInteger(w,value.`mode`)
proc readRos2Flexiv_msgsMsgMode*(r: var Reader): Ros2Flexiv_msgsMsgMode =
  result = initRos2Flexiv_msgsMsgMode()
  result.`mode` = getInteger(r,int8)
proc encode*(value: Ros2Flexiv_msgsMsgMode): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgMode*(b: seq[byte]): Ros2Flexiv_msgsMsgMode =
  var r = initReader(b,1)
  result = readRos2Flexiv_msgsMsgMode(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/RobotEvent.
## @details Canonical extent 29..1053 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgRobotEvent* = object
  ## @brief Retain the complete original uint8 field.
  ## @details Original flexiv_msgs/msg/RobotEvent.level; native type uint8. Scalar value. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `level`*: uint8
  ## @brief Unique ID of the event
  ## @details Original flexiv_msgs/msg/RobotEvent.id; native type int32. Scalar value. Storage belongs to
  ## the complete value and acquires no ROS resource.
  `id`*: int32
  ## @brief Brief description of the event
  ## @details Original flexiv_msgs/msg/RobotEvent.description; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `description`*: string
  ## @brief Consequences caused by the event
  ## @details Original flexiv_msgs/msg/RobotEvent.consequences; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `consequences`*: string
  ## @brief Probable causes of the event
  ## @details Original flexiv_msgs/msg/RobotEvent.probable_causes; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `probable_causes`*: string
  ## @brief Recommended actions after the event
  ## @details Original flexiv_msgs/msg/RobotEvent.recommended_actions; native type string. Scalar value.
  ## UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `recommended_actions`*: string
  ## @brief Timestamp of the event
  ## @details Original flexiv_msgs/msg/RobotEvent.timestamp; native type builtin_interfaces/msg/Time.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `timestamp`*: Ros2Builtin_interfacesMsgTime
const Ros2Flexiv_msgsMsgRobotEventMaximumWireBytes* = 1053
const Ros2Flexiv_msgsMsgRobotEventCodecIdentity* = "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17"
const Ros2Flexiv_msgsMsgRobotEventNativeType* = "flexiv_msgs/msg/RobotEvent"
const Ros2Flexiv_msgsMsgRobotEventNativeIdentity* = ""
const Ros2Flexiv_msgsMsgRobotEvent_LEVEL_UNKNOWN*: uint8 = 0'u8
const Ros2Flexiv_msgsMsgRobotEvent_LEVEL_INFO*: uint8 = 1'u8
const Ros2Flexiv_msgsMsgRobotEvent_LEVEL_WARNING*: uint8 = 2'u8
const Ros2Flexiv_msgsMsgRobotEvent_LEVEL_ERROR*: uint8 = 3'u8
const Ros2Flexiv_msgsMsgRobotEvent_LEVEL_CRITICAL*: uint8 = 4'u8
proc initRos2Flexiv_msgsMsgRobotEvent*(): Ros2Flexiv_msgsMsgRobotEvent =
  result.`level` = 0
  result.`id` = 0
  result.`description` = ""
  result.`consequences` = ""
  result.`probable_causes` = ""
  result.`recommended_actions` = ""
  result.`timestamp` = initRos2Builtin_interfacesMsgTime()
proc writeFields*(value: Ros2Flexiv_msgsMsgRobotEvent; w: var Writer) =
  putInteger(w,value.`level`)
  putInteger(w,value.`id`)
  putString(w,value.`description`,256)
  putString(w,value.`consequences`,256)
  putString(w,value.`probable_causes`,256)
  putString(w,value.`recommended_actions`,256)
  writeFields(value.`timestamp`,w)
proc readRos2Flexiv_msgsMsgRobotEvent*(r: var Reader): Ros2Flexiv_msgsMsgRobotEvent =
  result = initRos2Flexiv_msgsMsgRobotEvent()
  result.`level` = getInteger(r,uint8)
  result.`id` = getInteger(r,int32)
  result.`description` = getString(r,256)
  result.`consequences` = getString(r,256)
  result.`probable_causes` = getString(r,256)
  result.`recommended_actions` = getString(r,256)
  result.`timestamp` = readRos2Builtin_interfacesMsgTime(r)
proc encode*(value: Ros2Flexiv_msgsMsgRobotEvent): seq[byte] =
  var w = initWriter(1053)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgRobotEvent*(b: seq[byte]): Ros2Flexiv_msgsMsgRobotEvent =
  var r = initReader(b,1053)
  result = readRos2Flexiv_msgsMsgRobotEvent(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/OperationalStatus.
## @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgOperationalStatus* = object
  ## @brief Operational status of the robot and of the driver supervising it. The status values mirror
  ## flexiv::rdk::OperationalStatus one-for-one. Header
  ## @details Original flexiv_msgs/msg/OperationalStatus.header; native type std_msgs/msg/Header. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Retain the complete original uint8 field.
  ## @details Original flexiv_msgs/msg/OperationalStatus.operational_status; native type uint8. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `operational_status`*: uint8
  ## @brief Human-readable name of the operational status above
  ## @details Original flexiv_msgs/msg/OperationalStatus.operational_status_name; native type string.
  ## Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `operational_status_name`*: string
  ## @brief Retain the complete original uint8 field.
  ## @details Original flexiv_msgs/msg/OperationalStatus.driver_state; native type uint8. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `driver_state`*: uint8
  ## @brief Robot condition flags
  ## @details Original flexiv_msgs/msg/OperationalStatus.connected; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `connected`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/msg/OperationalStatus.fault; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `fault`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/msg/OperationalStatus.operational; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `operational`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/msg/OperationalStatus.estop_released; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `estop_released`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/msg/OperationalStatus.reduced; native type bool. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `reduced`*: bool
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/msg/OperationalStatus.recovery_state; native type bool. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `recovery_state`*: bool
  ## @brief Current robot control mode, values defined in Mode.msg
  ## @details Original flexiv_msgs/msg/OperationalStatus.control_mode; native type int8. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `control_mode`*: int8
  ## @brief How the current condition should be recovered from, values defined in RecoveryPolicy.msg
  ## @details Original flexiv_msgs/msg/OperationalStatus.recovery_policy; native type uint8. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `recovery_policy`*: uint8
  ## @brief Operator-facing explanation of the current condition and what to do about it
  ## @details Original flexiv_msgs/msg/OperationalStatus.message; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `message`*: string
  ## @brief Most recent error and critical events reported by the robot
  ## @details Original flexiv_msgs/msg/OperationalStatus.recent_events; native type
  ## flexiv_msgs/msg/RobotEvent. At most 16 elements. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `recent_events`*: seq[Ros2Flexiv_msgsMsgRobotEvent]
const Ros2Flexiv_msgsMsgOperationalStatusMaximumWireBytes* = 17650
const Ros2Flexiv_msgsMsgOperationalStatusCodecIdentity* =
        "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62"
const Ros2Flexiv_msgsMsgOperationalStatusNativeType* = "flexiv_msgs/msg/OperationalStatus"
const Ros2Flexiv_msgsMsgOperationalStatusNativeIdentity* = ""
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_UNKNOWN*: uint8 = 0'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_READY*: uint8 = 1'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_BOOTING*: uint8 = 2'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_ESTOP_NOT_RELEASED*: uint8 = 3'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_NOT_SERVO_ON*: uint8 = 4'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_RELEASING_BRAKE*: uint8 = 5'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_MINOR_FAULT*: uint8 = 6'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_CRITICAL_FAULT*: uint8 = 7'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_REDUCED_STATE*: uint8 = 8'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_RECOVERY_STATE*: uint8 = 9'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_MANUAL_MODE*: uint8 = 10'u8
const Ros2Flexiv_msgsMsgOperationalStatus_STATUS_IN_AUTO_MODE*: uint8 = 11'u8
const Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_UNINITIALIZED*: uint8 = 0'u8
const Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_READY*: uint8 = 1'u8
const Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_FAULT*: uint8 = 2'u8
const Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_RECOVERING*: uint8 = 3'u8
const Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_LOCKOUT*: uint8 = 4'u8
const Ros2Flexiv_msgsMsgOperationalStatus_DRIVER_DISCONNECTED*: uint8 = 5'u8
proc initRos2Flexiv_msgsMsgOperationalStatus*(): Ros2Flexiv_msgsMsgOperationalStatus =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`operational_status` = 0
  result.`operational_status_name` = ""
  result.`driver_state` = 0
  result.`connected` = false
  result.`fault` = false
  result.`operational` = false
  result.`estop_released` = false
  result.`reduced` = false
  result.`recovery_state` = false
  result.`control_mode` = 0
  result.`recovery_policy` = 0
  result.`message` = ""
  result.`recent_events` = @[]
proc writeFields*(value: Ros2Flexiv_msgsMsgOperationalStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`operational_status`)
  putString(w,value.`operational_status_name`,256)
  putInteger(w,value.`driver_state`)
  putBool(w,value.`connected`)
  putBool(w,value.`fault`)
  putBool(w,value.`operational`)
  putBool(w,value.`estop_released`)
  putBool(w,value.`reduced`)
  putBool(w,value.`recovery_state`)
  putInteger(w,value.`control_mode`)
  putInteger(w,value.`recovery_policy`)
  putString(w,value.`message`,256)
  if value.`recent_events`.len > 16: fail(22)
  putInteger(w,uint32(value.`recent_events`.len))
  for e in value.`recent_events`:
    writeFields(e,w)
proc readRos2Flexiv_msgsMsgOperationalStatus*(r: var Reader): Ros2Flexiv_msgsMsgOperationalStatus =
  result = initRos2Flexiv_msgsMsgOperationalStatus()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`operational_status` = getInteger(r,uint8)
  result.`operational_status_name` = getString(r,256)
  result.`driver_state` = getInteger(r,uint8)
  result.`connected` = getBool(r)
  result.`fault` = getBool(r)
  result.`operational` = getBool(r)
  result.`estop_released` = getBool(r)
  result.`reduced` = getBool(r)
  result.`recovery_state` = getBool(r)
  result.`control_mode` = getInteger(r,int8)
  result.`recovery_policy` = getInteger(r,uint8)
  result.`message` = getString(r,256)
  let rawcount13 = getInteger(r,uint32)
  if rawcount13 > 16: fail(22)
  let count13 = int(rawcount13)
  result.`recent_events` = newSeq[Ros2Flexiv_msgsMsgRobotEvent](count13)
  for i in 0..<count13:
    result.`recent_events`[i] = readRos2Flexiv_msgsMsgRobotEvent(r)
proc encode*(value: Ros2Flexiv_msgsMsgOperationalStatus): seq[byte] =
  var w = initWriter(17650)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgOperationalStatus*(b: seq[byte]): Ros2Flexiv_msgsMsgOperationalStatus =
  var r = initReader(b,17650)
  result = readRos2Flexiv_msgsMsgOperationalStatus(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/RecoveryPolicy.
## @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgRecoveryPolicy* = object
  ## @brief Retain the complete original uint8 field.
  ## @details Original flexiv_msgs/msg/RecoveryPolicy.recovery_policy; native type uint8. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `recovery_policy`*: uint8
const Ros2Flexiv_msgsMsgRecoveryPolicyMaximumWireBytes* = 1
const Ros2Flexiv_msgsMsgRecoveryPolicyCodecIdentity* = "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf"
const Ros2Flexiv_msgsMsgRecoveryPolicyNativeType* = "flexiv_msgs/msg/RecoveryPolicy"
const Ros2Flexiv_msgsMsgRecoveryPolicyNativeIdentity* = ""
const Ros2Flexiv_msgsMsgRecoveryPolicy_NONE*: uint8 = 0'u8
const Ros2Flexiv_msgsMsgRecoveryPolicy_TRANSIENT*: uint8 = 1'u8
const Ros2Flexiv_msgsMsgRecoveryPolicy_AUTO_RECOVERABLE*: uint8 = 2'u8
const Ros2Flexiv_msgsMsgRecoveryPolicy_WAIT_OPERATOR*: uint8 = 3'u8
const Ros2Flexiv_msgsMsgRecoveryPolicy_SAFETY_LOCKOUT*: uint8 = 4'u8
const Ros2Flexiv_msgsMsgRecoveryPolicy_CONNECTION_LOST*: uint8 = 5'u8
proc initRos2Flexiv_msgsMsgRecoveryPolicy*(): Ros2Flexiv_msgsMsgRecoveryPolicy =
  result.`recovery_policy` = 0
proc writeFields*(value: Ros2Flexiv_msgsMsgRecoveryPolicy; w: var Writer) =
  putInteger(w,value.`recovery_policy`)
proc readRos2Flexiv_msgsMsgRecoveryPolicy*(r: var Reader): Ros2Flexiv_msgsMsgRecoveryPolicy =
  result = initRos2Flexiv_msgsMsgRecoveryPolicy()
  result.`recovery_policy` = getInteger(r,uint8)
proc encode*(value: Ros2Flexiv_msgsMsgRecoveryPolicy): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgRecoveryPolicy*(b: seq[byte]): Ros2Flexiv_msgsMsgRecoveryPolicy =
  var r = initReader(b,1)
  result = readRos2Flexiv_msgsMsgRecoveryPolicy(r)
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
## @details Canonical extent 68..324 bytes. Native type identity is independent; constructing a value
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
const Ros2Geometry_msgsMsgPoseStampedMaximumWireBytes* = 324
const Ros2Geometry_msgsMsgPoseStampedCodecIdentity* = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad"
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
  var w = initWriter(324)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPoseStamped*(b: seq[byte]): Ros2Geometry_msgsMsgPoseStamped =
  var r = initReader(b,324)
  result = readRos2Geometry_msgsMsgPoseStamped(r)
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
## @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
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
const Ros2Geometry_msgsMsgTwistStampedMaximumWireBytes* = 316
const Ros2Geometry_msgsMsgTwistStampedCodecIdentity* = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308"
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
  var w = initWriter(316)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgTwistStamped*(b: seq[byte]): Ros2Geometry_msgsMsgTwistStamped =
  var r = initReader(b,316)
  result = readRos2Geometry_msgsMsgTwistStamped(r)
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
## @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
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
const Ros2Geometry_msgsMsgWrenchStampedMaximumWireBytes* = 316
const Ros2Geometry_msgsMsgWrenchStampedCodecIdentity* = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177"
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
  var w = initWriter(316)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgWrenchStamped*(b: seq[byte]): Ros2Geometry_msgsMsgWrenchStamped =
  var r = initReader(b,316)
  result = readRos2Geometry_msgsMsgWrenchStamped(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/msg/RobotStates.
## @details Canonical extent 552..5160 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgRobotStates* = object
  ## @brief Header
  ## @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Robot system timestamp
  ## @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
  ## builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `robot_timestamp`*: Ros2Builtin_interfacesMsgTime
  ## @brief Measured joint positions using link-side encoder
  ## @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `q`*: seq[float64]
  ## @brief Measured joint positions using motor-side encoder
  ## @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `theta`*: seq[float64]
  ## @brief Measured joint velocities using link-side encoder
  ## @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dq`*: seq[float64]
  ## @brief Measured joint velocities using motor-side encoder
  ## @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `dtheta`*: seq[float64]
  ## @brief Measured joint torques
  ## @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau`*: seq[float64]
  ## @brief Numerical derivative of measured joint torques
  ## @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `tau_dot`*: seq[float64]
  ## @brief Estimated external joint torques
  ## @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `tau_ext`*: seq[float64]
  ## @brief Estimated interaction joint torques
  ## @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `tau_interact`*: seq[float64]
  ## @brief Measured joint temperatures
  ## @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `temperature`*: seq[float64]
  ## @brief Measured TCP pose expressed in world frame
  ## @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `tcp_pose`*: Ros2Geometry_msgsMsgPoseStamped
  ## @brief Measured TCP twist expressed in world frame
  ## @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `tcp_twist`*: Ros2Geometry_msgsMsgTwistStamped
  ## @brief Measured flange pose expressed in world frame
  ## @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
  ## geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `flange_pose`*: Ros2Geometry_msgsMsgPoseStamped
  ## @brief Raw force-torque (FT) sensor reading in flange frame
  ## @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
  ## geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `raw_ft_sensor`*: Ros2Geometry_msgsMsgWrenchStamped
  ## @brief Estimated external wrench applied on TCP and expressed in TCP frame
  ## @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
  ## geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `tcp_wrench_local`*: Ros2Geometry_msgsMsgWrenchStamped
  ## @brief Estimated external wrench applied on TCP and expressed in world frame
  ## @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
  ## geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `tcp_wrench`*: Ros2Geometry_msgsMsgWrenchStamped
  ## @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
  ## @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
  ## geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `raw_tcp_wrench_local`*: Ros2Geometry_msgsMsgWrenchStamped
  ## @brief Unfiltered external wrench applied on TCP and expressed in world frame
  ## @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
  ## geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `raw_tcp_wrench`*: Ros2Geometry_msgsMsgWrenchStamped
const Ros2Flexiv_msgsMsgRobotStatesMaximumWireBytes* = 5160
const Ros2Flexiv_msgsMsgRobotStatesCodecIdentity* = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a"
const Ros2Flexiv_msgsMsgRobotStatesNativeType* = "flexiv_msgs/msg/RobotStates"
const Ros2Flexiv_msgsMsgRobotStatesNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgRobotStates*(): Ros2Flexiv_msgsMsgRobotStates =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`robot_timestamp` = initRos2Builtin_interfacesMsgTime()
  result.`q` = @[]
  result.`theta` = @[]
  result.`dq` = @[]
  result.`dtheta` = @[]
  result.`tau` = @[]
  result.`tau_dot` = @[]
  result.`tau_ext` = @[]
  result.`tau_interact` = @[]
  result.`temperature` = @[]
  result.`tcp_pose` = initRos2Geometry_msgsMsgPoseStamped()
  result.`tcp_twist` = initRos2Geometry_msgsMsgTwistStamped()
  result.`flange_pose` = initRos2Geometry_msgsMsgPoseStamped()
  result.`raw_ft_sensor` = initRos2Geometry_msgsMsgWrenchStamped()
  result.`tcp_wrench_local` = initRos2Geometry_msgsMsgWrenchStamped()
  result.`tcp_wrench` = initRos2Geometry_msgsMsgWrenchStamped()
  result.`raw_tcp_wrench_local` = initRos2Geometry_msgsMsgWrenchStamped()
  result.`raw_tcp_wrench` = initRos2Geometry_msgsMsgWrenchStamped()
proc writeFields*(value: Ros2Flexiv_msgsMsgRobotStates; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`robot_timestamp`,w)
  if value.`q`.len > 32: fail(22)
  putInteger(w,uint32(value.`q`.len))
  for e in value.`q`:
    putFloat64(w,e)
  if value.`theta`.len > 32: fail(22)
  putInteger(w,uint32(value.`theta`.len))
  for e in value.`theta`:
    putFloat64(w,e)
  if value.`dq`.len > 32: fail(22)
  putInteger(w,uint32(value.`dq`.len))
  for e in value.`dq`:
    putFloat64(w,e)
  if value.`dtheta`.len > 32: fail(22)
  putInteger(w,uint32(value.`dtheta`.len))
  for e in value.`dtheta`:
    putFloat64(w,e)
  if value.`tau`.len > 32: fail(22)
  putInteger(w,uint32(value.`tau`.len))
  for e in value.`tau`:
    putFloat64(w,e)
  if value.`tau_dot`.len > 32: fail(22)
  putInteger(w,uint32(value.`tau_dot`.len))
  for e in value.`tau_dot`:
    putFloat64(w,e)
  if value.`tau_ext`.len > 32: fail(22)
  putInteger(w,uint32(value.`tau_ext`.len))
  for e in value.`tau_ext`:
    putFloat64(w,e)
  if value.`tau_interact`.len > 32: fail(22)
  putInteger(w,uint32(value.`tau_interact`.len))
  for e in value.`tau_interact`:
    putFloat64(w,e)
  if value.`temperature`.len > 32: fail(22)
  putInteger(w,uint32(value.`temperature`.len))
  for e in value.`temperature`:
    putFloat64(w,e)
  writeFields(value.`tcp_pose`,w)
  writeFields(value.`tcp_twist`,w)
  writeFields(value.`flange_pose`,w)
  writeFields(value.`raw_ft_sensor`,w)
  writeFields(value.`tcp_wrench_local`,w)
  writeFields(value.`tcp_wrench`,w)
  writeFields(value.`raw_tcp_wrench_local`,w)
  writeFields(value.`raw_tcp_wrench`,w)
proc readRos2Flexiv_msgsMsgRobotStates*(r: var Reader): Ros2Flexiv_msgsMsgRobotStates =
  result = initRos2Flexiv_msgsMsgRobotStates()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`robot_timestamp` = readRos2Builtin_interfacesMsgTime(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`q` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`q`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 32: fail(22)
  let count3 = int(rawcount3)
  result.`theta` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`theta`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 32: fail(22)
  let count4 = int(rawcount4)
  result.`dq` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`dq`[i] = getFloat64(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 32: fail(22)
  let count5 = int(rawcount5)
  result.`dtheta` = newSeq[float64](count5)
  for i in 0..<count5:
    result.`dtheta`[i] = getFloat64(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 32: fail(22)
  let count6 = int(rawcount6)
  result.`tau` = newSeq[float64](count6)
  for i in 0..<count6:
    result.`tau`[i] = getFloat64(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 32: fail(22)
  let count7 = int(rawcount7)
  result.`tau_dot` = newSeq[float64](count7)
  for i in 0..<count7:
    result.`tau_dot`[i] = getFloat64(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 32: fail(22)
  let count8 = int(rawcount8)
  result.`tau_ext` = newSeq[float64](count8)
  for i in 0..<count8:
    result.`tau_ext`[i] = getFloat64(r)
  let rawcount9 = getInteger(r,uint32)
  if rawcount9 > 32: fail(22)
  let count9 = int(rawcount9)
  result.`tau_interact` = newSeq[float64](count9)
  for i in 0..<count9:
    result.`tau_interact`[i] = getFloat64(r)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 32: fail(22)
  let count10 = int(rawcount10)
  result.`temperature` = newSeq[float64](count10)
  for i in 0..<count10:
    result.`temperature`[i] = getFloat64(r)
  result.`tcp_pose` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`tcp_twist` = readRos2Geometry_msgsMsgTwistStamped(r)
  result.`flange_pose` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`raw_ft_sensor` = readRos2Geometry_msgsMsgWrenchStamped(r)
  result.`tcp_wrench_local` = readRos2Geometry_msgsMsgWrenchStamped(r)
  result.`tcp_wrench` = readRos2Geometry_msgsMsgWrenchStamped(r)
  result.`raw_tcp_wrench_local` = readRos2Geometry_msgsMsgWrenchStamped(r)
  result.`raw_tcp_wrench` = readRos2Geometry_msgsMsgWrenchStamped(r)
proc encode*(value: Ros2Flexiv_msgsMsgRobotStates): seq[byte] =
  var w = initWriter(5160)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgRobotStates*(b: seq[byte]): Ros2Flexiv_msgsMsgRobotStates =
  var r = initReader(b,5160)
  result = readRos2Flexiv_msgsMsgRobotStates(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Request.
## @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvGetOperationalStatus_Request* = object
const Ros2Flexiv_msgsSrvGetOperationalStatus_RequestMaximumWireBytes* = 0
const Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodecIdentity* =
        "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12"
const Ros2Flexiv_msgsSrvGetOperationalStatus_RequestNativeType* = "flexiv_msgs/srv/GetOperationalStatus_Request"
const Ros2Flexiv_msgsSrvGetOperationalStatus_RequestNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvGetOperationalStatus_Request*(): Ros2Flexiv_msgsSrvGetOperationalStatus_Request =
  discard
proc writeFields*(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Request; w: var Writer) =
  discard
proc readRos2Flexiv_msgsSrvGetOperationalStatus_Request*(r: var Reader): Ros2Flexiv_msgsSrvGetOperationalStatus_Request =
  result = initRos2Flexiv_msgsSrvGetOperationalStatus_Request()
proc encode*(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvGetOperationalStatus_Request*(b: seq[byte]): Ros2Flexiv_msgsSrvGetOperationalStatus_Request =
  var r = initReader(b,0)
  result = readRos2Flexiv_msgsSrvGetOperationalStatus_Request(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Response.
## @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvGetOperationalStatus_Response* = object
  ## @brief Retain the complete original flexiv_msgs/msg/OperationalStatus field.
  ## @details Original flexiv_msgs/srv/GetOperationalStatus_Response.status; native type
  ## flexiv_msgs/msg/OperationalStatus. Scalar value. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `status`*: Ros2Flexiv_msgsMsgOperationalStatus
const Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseMaximumWireBytes* = 17650
const Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodecIdentity* =
        "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da"
const Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseNativeType* = "flexiv_msgs/srv/GetOperationalStatus_Response"
const Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvGetOperationalStatus_Response*(): Ros2Flexiv_msgsSrvGetOperationalStatus_Response =
  result.`status` = initRos2Flexiv_msgsMsgOperationalStatus()
proc writeFields*(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Response; w: var Writer) =
  writeFields(value.`status`,w)
proc readRos2Flexiv_msgsSrvGetOperationalStatus_Response*(r: var Reader): Ros2Flexiv_msgsSrvGetOperationalStatus_Response =
  result = initRos2Flexiv_msgsSrvGetOperationalStatus_Response()
  result.`status` = readRos2Flexiv_msgsMsgOperationalStatus(r)
proc encode*(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Response): seq[byte] =
  var w = initWriter(17650)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvGetOperationalStatus_Response*(b: seq[byte]): Ros2Flexiv_msgsSrvGetOperationalStatus_Response =
  var r = initReader(b,17650)
  result = readRos2Flexiv_msgsSrvGetOperationalStatus_Response(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Request.
## @details Canonical extent 12..8844 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvSetJointImpedance_Request* = object
  ## @brief Set impedance properties of the robot's joint motion controller. Requires the driver to run
  ## with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
  ## changes. Joints to set, named exactly as published on ~/joint_impedance. Leave empty to address
  ## every joint the interface covers, in that published order. On a dual-arm robot this is how a single
  ## arm is set on its own: name that arm's joints and the other arm is left untouched.
  ## @details Original flexiv_msgs/srv/SetJointImpedance_Request.joint_names; native type string. At most
  ## 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `joint_names`*: seq[string]
  ## @brief Joint motion stiffness K_q, one entry per joint in joint_names, or one per covered joint when
  ## joint_names is empty. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which
  ## in this position-streaming driver means the joint will sag under gravity. [Nm/rad]
  ## @details Original flexiv_msgs/srv/SetJointImpedance_Request.k_q; native type float64. At most 32
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `k_q`*: seq[float64]
  ## @brief Joint motion damping ratio Z_q, matching k_q entry for entry, or empty for the nominal 0.7.
  ## Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues.
  ## @details Original flexiv_msgs/srv/SetJointImpedance_Request.z_q; native type float64. At most 32
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `z_q`*: seq[float64]
const Ros2Flexiv_msgsSrvSetJointImpedance_RequestMaximumWireBytes* = 8844
const Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodecIdentity* =
        "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08"
const Ros2Flexiv_msgsSrvSetJointImpedance_RequestNativeType* = "flexiv_msgs/srv/SetJointImpedance_Request"
const Ros2Flexiv_msgsSrvSetJointImpedance_RequestNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvSetJointImpedance_Request*(): Ros2Flexiv_msgsSrvSetJointImpedance_Request =
  result.`joint_names` = @[]
  result.`k_q` = @[]
  result.`z_q` = @[]
proc writeFields*(value: Ros2Flexiv_msgsSrvSetJointImpedance_Request; w: var Writer) =
  if value.`joint_names`.len > 32: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`k_q`.len > 32: fail(22)
  putInteger(w,uint32(value.`k_q`.len))
  for e in value.`k_q`:
    putFloat64(w,e)
  if value.`z_q`.len > 32: fail(22)
  putInteger(w,uint32(value.`z_q`.len))
  for e in value.`z_q`:
    putFloat64(w,e)
proc readRos2Flexiv_msgsSrvSetJointImpedance_Request*(r: var Reader): Ros2Flexiv_msgsSrvSetJointImpedance_Request =
  result = initRos2Flexiv_msgsSrvSetJointImpedance_Request()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`joint_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`joint_names`[i] = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`k_q` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`k_q`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`z_q` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`z_q`[i] = getFloat64(r)
proc encode*(value: Ros2Flexiv_msgsSrvSetJointImpedance_Request): seq[byte] =
  var w = initWriter(8844)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvSetJointImpedance_Request*(b: seq[byte]): Ros2Flexiv_msgsSrvSetJointImpedance_Request =
  var r = initReader(b,8844)
  result = readRos2Flexiv_msgsSrvSetJointImpedance_Request(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Response.
## @details Canonical extent 34..9634 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvSetJointImpedance_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/srv/SetJointImpedance_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  ## @details Original flexiv_msgs/srv/SetJointImpedance_Response.message; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `message`*: string
  ## @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  ## rejection. Joints the request did not name keep the value they already had.
  ## @details Original flexiv_msgs/srv/SetJointImpedance_Response.setting; native type
  ## flexiv_msgs/msg/JointImpedance. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `setting`*: Ros2Flexiv_msgsMsgJointImpedance
const Ros2Flexiv_msgsSrvSetJointImpedance_ResponseMaximumWireBytes* = 9634
const Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodecIdentity* =
        "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96"
const Ros2Flexiv_msgsSrvSetJointImpedance_ResponseNativeType* = "flexiv_msgs/srv/SetJointImpedance_Response"
const Ros2Flexiv_msgsSrvSetJointImpedance_ResponseNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvSetJointImpedance_Response*(): Ros2Flexiv_msgsSrvSetJointImpedance_Response =
  result.`success` = false
  result.`message` = ""
  result.`setting` = initRos2Flexiv_msgsMsgJointImpedance()
proc writeFields*(value: Ros2Flexiv_msgsSrvSetJointImpedance_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  writeFields(value.`setting`,w)
proc readRos2Flexiv_msgsSrvSetJointImpedance_Response*(r: var Reader): Ros2Flexiv_msgsSrvSetJointImpedance_Response =
  result = initRos2Flexiv_msgsSrvSetJointImpedance_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`setting` = readRos2Flexiv_msgsMsgJointImpedance(r)
proc encode*(value: Ros2Flexiv_msgsSrvSetJointImpedance_Response): seq[byte] =
  var w = initWriter(9634)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvSetJointImpedance_Response*(b: seq[byte]): Ros2Flexiv_msgsSrvSetJointImpedance_Response =
  var r = initReader(b,9634)
  result = readRos2Flexiv_msgsSrvSetJointImpedance_Response(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Request.
## @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvSetJointInertiaScale_Request* = object
  ## @brief Set inertia shaping scales of the robot's joint motion controller, which make the joints
  ## behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.
  ## An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as
  ## published on ~/joint_inertia_scale. Leave empty to address every joint the interface covers, in that
  ## published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's
  ## joints and the other arm is left untouched.
  ## @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.joint_names; native type string. At
  ## most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `joint_names`*: seq[string]
  ## @brief Inertia shaping scale sigma_q, one entry per joint in joint_names, or one per covered joint
  ## when joint_names is empty. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a
  ## smaller scale corresponds to lighter inertia.
  ## @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales; native type float64.
  ## At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `inertia_scales`*: seq[float64]
const Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestMaximumWireBytes* = 8584
const Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodecIdentity* =
        "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625"
const Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestNativeType* = "flexiv_msgs/srv/SetJointInertiaScale_Request"
const Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvSetJointInertiaScale_Request*(): Ros2Flexiv_msgsSrvSetJointInertiaScale_Request =
  result.`joint_names` = @[]
  result.`inertia_scales` = @[]
proc writeFields*(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Request; w: var Writer) =
  if value.`joint_names`.len > 32: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`inertia_scales`.len > 32: fail(22)
  putInteger(w,uint32(value.`inertia_scales`.len))
  for e in value.`inertia_scales`:
    putFloat64(w,e)
proc readRos2Flexiv_msgsSrvSetJointInertiaScale_Request*(r: var Reader): Ros2Flexiv_msgsSrvSetJointInertiaScale_Request =
  result = initRos2Flexiv_msgsSrvSetJointInertiaScale_Request()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`joint_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`joint_names`[i] = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`inertia_scales` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`inertia_scales`[i] = getFloat64(r)
proc encode*(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Request): seq[byte] =
  var w = initWriter(8584)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvSetJointInertiaScale_Request*(b: seq[byte]): Ros2Flexiv_msgsSrvSetJointInertiaScale_Request =
  var r = initReader(b,8584)
  result = readRos2Flexiv_msgsSrvSetJointInertiaScale_Request(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Response.
## @details Canonical extent 26..9114 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvSetJointInertiaScale_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  ## @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.message; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `message`*: string
  ## @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  ## rejection. Joints the request did not name keep the value they already had.
  ## @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.setting; native type
  ## flexiv_msgs/msg/JointInertiaScale. Scalar value. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `setting`*: Ros2Flexiv_msgsMsgJointInertiaScale
const Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseMaximumWireBytes* = 9114
const Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodecIdentity* =
        "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931"
const Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseNativeType* = "flexiv_msgs/srv/SetJointInertiaScale_Response"
const Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvSetJointInertiaScale_Response*(): Ros2Flexiv_msgsSrvSetJointInertiaScale_Response =
  result.`success` = false
  result.`message` = ""
  result.`setting` = initRos2Flexiv_msgsMsgJointInertiaScale()
proc writeFields*(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  writeFields(value.`setting`,w)
proc readRos2Flexiv_msgsSrvSetJointInertiaScale_Response*(r: var Reader): Ros2Flexiv_msgsSrvSetJointInertiaScale_Response =
  result = initRos2Flexiv_msgsSrvSetJointInertiaScale_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`setting` = readRos2Flexiv_msgsMsgJointInertiaScale(r)
proc encode*(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Response): seq[byte] =
  var w = initWriter(9114)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvSetJointInertiaScale_Response*(b: seq[byte]): Ros2Flexiv_msgsSrvSetJointInertiaScale_Response =
  var r = initReader(b,9114)
  result = readRos2Flexiv_msgsSrvSetJointInertiaScale_Response(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Request.
## @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvSetMaxContactTorque_Request* = object
  ## @brief Set maximum contact torques of the robot's joint motion controller. The controller regulates
  ## its output to keep contact torques with the environment under these values. Requires the driver to
  ## run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
  ## changes. Joints to set, named exactly as published on ~/max_contact_torque. Leave empty to address
  ## every joint the interface covers, in that published order. On a dual-arm robot this is how a single
  ## arm is set on its own: name that arm's joints and the other arm is left untouched.
  ## @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.joint_names; native type string. At
  ## most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `joint_names`*: seq[string]
  ## @brief Maximum contact torque, one entry per joint in joint_names, or one per covered joint when
  ## joint_names is empty. Valid range [0, tau_max]. Raising this increases the force the robot may exert
  ## on its surroundings. [Nm]
  ## @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques; native type
  ## float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
  ## the complete value and acquires no ROS resource.
  `max_contact_torques`*: seq[float64]
const Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestMaximumWireBytes* = 8584
const Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodecIdentity* =
        "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e"
const Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestNativeType* = "flexiv_msgs/srv/SetMaxContactTorque_Request"
const Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvSetMaxContactTorque_Request*(): Ros2Flexiv_msgsSrvSetMaxContactTorque_Request =
  result.`joint_names` = @[]
  result.`max_contact_torques` = @[]
proc writeFields*(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Request; w: var Writer) =
  if value.`joint_names`.len > 32: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`max_contact_torques`.len > 32: fail(22)
  putInteger(w,uint32(value.`max_contact_torques`.len))
  for e in value.`max_contact_torques`:
    putFloat64(w,e)
proc readRos2Flexiv_msgsSrvSetMaxContactTorque_Request*(r: var Reader): Ros2Flexiv_msgsSrvSetMaxContactTorque_Request =
  result = initRos2Flexiv_msgsSrvSetMaxContactTorque_Request()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`joint_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`joint_names`[i] = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`max_contact_torques` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`max_contact_torques`[i] = getFloat64(r)
proc encode*(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Request): seq[byte] =
  var w = initWriter(8584)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvSetMaxContactTorque_Request*(b: seq[byte]): Ros2Flexiv_msgsSrvSetMaxContactTorque_Request =
  var r = initReader(b,8584)
  result = readRos2Flexiv_msgsSrvSetMaxContactTorque_Request(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Response.
## @details Canonical extent 30..9374 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsSrvSetMaxContactTorque_Response* = object
  ## @brief Retain the complete original bool field.
  ## @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.success; native type bool. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `success`*: bool
  ## @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  ## @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.message; native type string. Scalar
  ## value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `message`*: string
  ## @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  ## rejection. Joints the request did not name keep the value they already had.
  ## @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.setting; native type
  ## flexiv_msgs/msg/MaxContactTorque. Scalar value. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `setting`*: Ros2Flexiv_msgsMsgMaxContactTorque
const Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseMaximumWireBytes* = 9374
const Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodecIdentity* =
        "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c"
const Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseNativeType* = "flexiv_msgs/srv/SetMaxContactTorque_Response"
const Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseNativeIdentity* = ""
proc initRos2Flexiv_msgsSrvSetMaxContactTorque_Response*(): Ros2Flexiv_msgsSrvSetMaxContactTorque_Response =
  result.`success` = false
  result.`message` = ""
  result.`setting` = initRos2Flexiv_msgsMsgMaxContactTorque()
proc writeFields*(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  writeFields(value.`setting`,w)
proc readRos2Flexiv_msgsSrvSetMaxContactTorque_Response*(r: var Reader): Ros2Flexiv_msgsSrvSetMaxContactTorque_Response =
  result = initRos2Flexiv_msgsSrvSetMaxContactTorque_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`setting` = readRos2Flexiv_msgsMsgMaxContactTorque(r)
proc encode*(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Response): seq[byte] =
  var w = initWriter(9374)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsSrvSetMaxContactTorque_Response*(b: seq[byte]): Ros2Flexiv_msgsSrvSetMaxContactTorque_Response =
  var r = initReader(b,9374)
  result = readRos2Flexiv_msgsSrvSetMaxContactTorque_Response(r)
  finish(r)
