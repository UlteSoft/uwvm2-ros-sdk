## @brief Complete original flexiv ros2_foxy canonical values.
## @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
## every original field; native registration and manually granted ROS authority are separate. Caller-
## owned values and codec failures are described by each operation and the locale API reference.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of flexiv_msgs/msg/JointPosVel.
## @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgJointPosVel* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `positions`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `velocities`*: array[7,float64]
const Ros2Flexiv_msgsMsgJointPosVelMaximumWireBytes* = 112
const Ros2Flexiv_msgsMsgJointPosVelCodecIdentity* = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8"
const Ros2Flexiv_msgsMsgJointPosVelNativeType* = "flexiv_msgs/msg/JointPosVel"
const Ros2Flexiv_msgsMsgJointPosVelNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgJointPosVel*(): Ros2Flexiv_msgsMsgJointPosVel =
  result.`positions` = [0,0,0,0,0,0,0]
  result.`velocities` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Flexiv_msgsMsgJointPosVel; w: var Writer) =
  for e in value.`positions`:
    putFloat64(w,e)
  for e in value.`velocities`:
    putFloat64(w,e)
proc readRos2Flexiv_msgsMsgJointPosVel*(r: var Reader): Ros2Flexiv_msgsMsgJointPosVel =
  result = initRos2Flexiv_msgsMsgJointPosVel()
  let count0 = 7
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let count1 = 7
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
proc encode*(value: Ros2Flexiv_msgsMsgJointPosVel): seq[byte] =
  var w = initWriter(112)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgJointPosVel*(b: seq[byte]): Ros2Flexiv_msgsMsgJointPosVel =
  var r = initReader(b,112)
  result = readRos2Flexiv_msgsMsgJointPosVel(r)
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
const Ros2Flexiv_msgsMsgModeCodecIdentity* = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f"
const Ros2Flexiv_msgsMsgModeNativeType* = "flexiv_msgs/msg/Mode"
const Ros2Flexiv_msgsMsgModeNativeIdentity* = ""
const Ros2Flexiv_msgsMsgMode_MODE_UNKNOWN*: int8 = -1'i8
const Ros2Flexiv_msgsMsgMode_MODE_IDLE*: int8 = 0'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_TORQUE*: int8 = 1'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_JOINT_POSITION*: int8 = 2'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_JOINT_POSITION*: int8 = 3'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_PLAN_EXECUTION*: int8 = 4'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_PRIMITIVE_EXECUTION*: int8 = 5'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE*: int8 = 6'i8
const Ros2Flexiv_msgsMsgMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP*: int8 = 7'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE*: int8 = 8'i8
const Ros2Flexiv_msgsMsgMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP*: int8 = 9'i8
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
## @brief Own every original field of flexiv_msgs/msg/RobotStates.
## @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Flexiv_msgsMsgRobotStates* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.q; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `q`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `theta`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dq`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `dtheta`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.tau_des; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `tau_des`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `tau_dot`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `tau_ext`*: array[7,float64]
  ## @brief Retain the complete original geometry_msgs/msg/Pose field.
  ## @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/Pose. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `tcp_pose`*: Ros2Geometry_msgsMsgPose
  ## @brief Retain the complete original geometry_msgs/msg/Pose field.
  ## @details Original flexiv_msgs/msg/RobotStates.tcp_pose_des; native type geometry_msgs/msg/Pose.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `tcp_pose_des`*: Ros2Geometry_msgsMsgPose
  ## @brief Retain the complete original geometry_msgs/msg/Accel field.
  ## @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/Accel. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `tcp_vel`*: Ros2Geometry_msgsMsgAccel
  ## @brief Retain the complete original geometry_msgs/msg/Pose field.
  ## @details Original flexiv_msgs/msg/RobotStates.cam_pose; native type geometry_msgs/msg/Pose. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `cam_pose`*: Ros2Geometry_msgsMsgPose
  ## @brief Retain the complete original geometry_msgs/msg/Pose field.
  ## @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type geometry_msgs/msg/Pose.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `flange_pose`*: Ros2Geometry_msgsMsgPose
  ## @brief Retain the complete original geometry_msgs/msg/Wrench field.
  ## @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type geometry_msgs/msg/Wrench.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `ft_sensor_raw`*: Ros2Geometry_msgsMsgWrench
  ## @brief Retain the complete original geometry_msgs/msg/Wrench field.
  ## @details Original flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame; native type
  ## geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `ext_wrench_tcp_frame`*: Ros2Geometry_msgsMsgWrench
  ## @brief Retain the complete original geometry_msgs/msg/Wrench field.
  ## @details Original flexiv_msgs/msg/RobotStates.ext_wrench_base_frame; native type
  ## geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `ext_wrench_base_frame`*: Ros2Geometry_msgsMsgWrench
const Ros2Flexiv_msgsMsgRobotStatesMaximumWireBytes* = 864
const Ros2Flexiv_msgsMsgRobotStatesCodecIdentity* = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b"
const Ros2Flexiv_msgsMsgRobotStatesNativeType* = "flexiv_msgs/msg/RobotStates"
const Ros2Flexiv_msgsMsgRobotStatesNativeIdentity* = ""
proc initRos2Flexiv_msgsMsgRobotStates*(): Ros2Flexiv_msgsMsgRobotStates =
  result.`q` = [0,0,0,0,0,0,0]
  result.`theta` = [0,0,0,0,0,0,0]
  result.`dq` = [0,0,0,0,0,0,0]
  result.`dtheta` = [0,0,0,0,0,0,0]
  result.`tau` = [0,0,0,0,0,0,0]
  result.`tau_des` = [0,0,0,0,0,0,0]
  result.`tau_dot` = [0,0,0,0,0,0,0]
  result.`tau_ext` = [0,0,0,0,0,0,0]
  result.`tcp_pose` = initRos2Geometry_msgsMsgPose()
  result.`tcp_pose_des` = initRos2Geometry_msgsMsgPose()
  result.`tcp_vel` = initRos2Geometry_msgsMsgAccel()
  result.`cam_pose` = initRos2Geometry_msgsMsgPose()
  result.`flange_pose` = initRos2Geometry_msgsMsgPose()
  result.`ft_sensor_raw` = initRos2Geometry_msgsMsgWrench()
  result.`ext_wrench_tcp_frame` = initRos2Geometry_msgsMsgWrench()
  result.`ext_wrench_base_frame` = initRos2Geometry_msgsMsgWrench()
proc writeFields*(value: Ros2Flexiv_msgsMsgRobotStates; w: var Writer) =
  for e in value.`q`:
    putFloat64(w,e)
  for e in value.`theta`:
    putFloat64(w,e)
  for e in value.`dq`:
    putFloat64(w,e)
  for e in value.`dtheta`:
    putFloat64(w,e)
  for e in value.`tau`:
    putFloat64(w,e)
  for e in value.`tau_des`:
    putFloat64(w,e)
  for e in value.`tau_dot`:
    putFloat64(w,e)
  for e in value.`tau_ext`:
    putFloat64(w,e)
  writeFields(value.`tcp_pose`,w)
  writeFields(value.`tcp_pose_des`,w)
  writeFields(value.`tcp_vel`,w)
  writeFields(value.`cam_pose`,w)
  writeFields(value.`flange_pose`,w)
  writeFields(value.`ft_sensor_raw`,w)
  writeFields(value.`ext_wrench_tcp_frame`,w)
  writeFields(value.`ext_wrench_base_frame`,w)
proc readRos2Flexiv_msgsMsgRobotStates*(r: var Reader): Ros2Flexiv_msgsMsgRobotStates =
  result = initRos2Flexiv_msgsMsgRobotStates()
  let count0 = 7
  for i in 0..<count0:
    result.`q`[i] = getFloat64(r)
  let count1 = 7
  for i in 0..<count1:
    result.`theta`[i] = getFloat64(r)
  let count2 = 7
  for i in 0..<count2:
    result.`dq`[i] = getFloat64(r)
  let count3 = 7
  for i in 0..<count3:
    result.`dtheta`[i] = getFloat64(r)
  let count4 = 7
  for i in 0..<count4:
    result.`tau`[i] = getFloat64(r)
  let count5 = 7
  for i in 0..<count5:
    result.`tau_des`[i] = getFloat64(r)
  let count6 = 7
  for i in 0..<count6:
    result.`tau_dot`[i] = getFloat64(r)
  let count7 = 7
  for i in 0..<count7:
    result.`tau_ext`[i] = getFloat64(r)
  result.`tcp_pose` = readRos2Geometry_msgsMsgPose(r)
  result.`tcp_pose_des` = readRos2Geometry_msgsMsgPose(r)
  result.`tcp_vel` = readRos2Geometry_msgsMsgAccel(r)
  result.`cam_pose` = readRos2Geometry_msgsMsgPose(r)
  result.`flange_pose` = readRos2Geometry_msgsMsgPose(r)
  result.`ft_sensor_raw` = readRos2Geometry_msgsMsgWrench(r)
  result.`ext_wrench_tcp_frame` = readRos2Geometry_msgsMsgWrench(r)
  result.`ext_wrench_base_frame` = readRos2Geometry_msgsMsgWrench(r)
proc encode*(value: Ros2Flexiv_msgsMsgRobotStates): seq[byte] =
  var w = initWriter(864)
  writeFields(value,w)
  w.bytes
proc decodeRos2Flexiv_msgsMsgRobotStates*(b: seq[byte]): Ros2Flexiv_msgsMsgRobotStates =
  var r = initReader(b,864)
  result = readRos2Flexiv_msgsMsgRobotStates(r)
  finish(r)
