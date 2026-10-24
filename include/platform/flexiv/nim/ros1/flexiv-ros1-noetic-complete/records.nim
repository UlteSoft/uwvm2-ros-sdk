## @brief Complete original flexiv ros1_noetic canonical values.
## @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
## every original field; native registration and manually granted ROS authority are separate. Caller-
## owned values and codec failures are described by each operation and the locale API reference.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of flexiv_msgs/JointPosVel.
## @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Flexiv_msgsJointPosVel* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/JointPosVel.positions; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `positions`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/JointPosVel.velocities; native type float64. Exactly 7 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `velocities`*: array[7,float64]
const Ros1Flexiv_msgsJointPosVelMaximumWireBytes* = 112
const Ros1Flexiv_msgsJointPosVelCodecIdentity* = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa"
const Ros1Flexiv_msgsJointPosVelNativeType* = "flexiv_msgs/JointPosVel"
const Ros1Flexiv_msgsJointPosVelNativeIdentity* = ""
proc initRos1Flexiv_msgsJointPosVel*(): Ros1Flexiv_msgsJointPosVel =
  result.`positions` = [0,0,0,0,0,0,0]
  result.`velocities` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Flexiv_msgsJointPosVel; w: var Writer) =
  for e in value.`positions`:
    putFloat64(w,e)
  for e in value.`velocities`:
    putFloat64(w,e)
proc readRos1Flexiv_msgsJointPosVel*(r: var Reader): Ros1Flexiv_msgsJointPosVel =
  result = initRos1Flexiv_msgsJointPosVel()
  let count0 = 7
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let count1 = 7
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
proc encode*(value: Ros1Flexiv_msgsJointPosVel): seq[byte] =
  var w = initWriter(112)
  writeFields(value,w)
  w.bytes
proc decodeRos1Flexiv_msgsJointPosVel*(b: seq[byte]): Ros1Flexiv_msgsJointPosVel =
  var r = initReader(b,112)
  result = readRos1Flexiv_msgsJointPosVel(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/Mode.
## @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Flexiv_msgsMode* = object
  ## @brief Retain the complete original int8 field.
  ## @details Original flexiv_msgs/Mode.mode; native type int8. Scalar value. Storage belongs to the
  ## complete value and acquires no ROS resource.
  `mode`*: int8
const Ros1Flexiv_msgsModeMaximumWireBytes* = 1
const Ros1Flexiv_msgsModeCodecIdentity* = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422"
const Ros1Flexiv_msgsModeNativeType* = "flexiv_msgs/Mode"
const Ros1Flexiv_msgsModeNativeIdentity* = ""
const Ros1Flexiv_msgsMode_MODE_UNKNOWN*: int8 = -1'i8
const Ros1Flexiv_msgsMode_MODE_IDLE*: int8 = 0'i8
const Ros1Flexiv_msgsMode_MODE_RT_JOINT_TORQUE*: int8 = 1'i8
const Ros1Flexiv_msgsMode_MODE_RT_JOINT_POSITION*: int8 = 2'i8
const Ros1Flexiv_msgsMode_MODE_NRT_JOINT_POSITION*: int8 = 3'i8
const Ros1Flexiv_msgsMode_MODE_NRT_PLAN_EXECUTION*: int8 = 4'i8
const Ros1Flexiv_msgsMode_MODE_NRT_PRIMITIVE_EXECUTION*: int8 = 5'i8
const Ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_BASE*: int8 = 6'i8
const Ros1Flexiv_msgsMode_MODE_RT_CARTESIAN_MOTION_FORCE_TCP*: int8 = 7'i8
const Ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_BASE*: int8 = 8'i8
const Ros1Flexiv_msgsMode_MODE_NRT_CARTESIAN_MOTION_FORCE_TCP*: int8 = 9'i8
proc initRos1Flexiv_msgsMode*(): Ros1Flexiv_msgsMode =
  result.`mode` = 0
proc writeFields*(value: Ros1Flexiv_msgsMode; w: var Writer) =
  putInteger(w,value.`mode`)
proc readRos1Flexiv_msgsMode*(r: var Reader): Ros1Flexiv_msgsMode =
  result = initRos1Flexiv_msgsMode()
  result.`mode` = getInteger(r,int8)
proc encode*(value: Ros1Flexiv_msgsMode): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Flexiv_msgsMode*(b: seq[byte]): Ros1Flexiv_msgsMode =
  var r = initReader(b,1)
  result = readRos1Flexiv_msgsMode(r)
  finish(r)
## @brief Own every original field of geometry_msgs/Point.
## @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Geometry_msgsPoint* = object
  ## @brief This contains the position of a point in free space
  ## @details Original geometry_msgs/Point.x; native type float64. Scalar value. Finite IEEE values; no
  ## implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `x`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/Point.y; native type float64. Scalar value. Finite IEEE values; no
  ## implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `y`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/Point.z; native type float64. Scalar value. Finite IEEE values; no
  ## implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `z`*: float64
const Ros1Geometry_msgsPointMaximumWireBytes* = 24
const Ros1Geometry_msgsPointCodecIdentity* = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
const Ros1Geometry_msgsPointNativeType* = "geometry_msgs/Point"
const Ros1Geometry_msgsPointNativeIdentity* = ""
proc initRos1Geometry_msgsPoint*(): Ros1Geometry_msgsPoint =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros1Geometry_msgsPoint; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos1Geometry_msgsPoint*(r: var Reader): Ros1Geometry_msgsPoint =
  result = initRos1Geometry_msgsPoint()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros1Geometry_msgsPoint): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPoint*(b: seq[byte]): Ros1Geometry_msgsPoint =
  var r = initReader(b,24)
  result = readRos1Geometry_msgsPoint(r)
  finish(r)
## @brief Own every original field of geometry_msgs/Quaternion.
## @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Geometry_msgsQuaternion* = object
  ## @brief This represents an orientation in free space in quaternion form.
  ## @details Original geometry_msgs/Quaternion.x; native type float64. Scalar value. Finite IEEE values;
  ## no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `x`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/Quaternion.y; native type float64. Scalar value. Finite IEEE values;
  ## no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `y`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/Quaternion.z; native type float64. Scalar value. Finite IEEE values;
  ## no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `z`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/Quaternion.w; native type float64. Scalar value. Finite IEEE values;
  ## no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `w`*: float64
const Ros1Geometry_msgsQuaternionMaximumWireBytes* = 32
const Ros1Geometry_msgsQuaternionCodecIdentity* = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
const Ros1Geometry_msgsQuaternionNativeType* = "geometry_msgs/Quaternion"
const Ros1Geometry_msgsQuaternionNativeIdentity* = ""
proc initRos1Geometry_msgsQuaternion*(): Ros1Geometry_msgsQuaternion =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`w` = 0
proc writeFields*(value: Ros1Geometry_msgsQuaternion; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`w`)
proc readRos1Geometry_msgsQuaternion*(r: var Reader): Ros1Geometry_msgsQuaternion =
  result = initRos1Geometry_msgsQuaternion()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`w` = getFloat64(r)
proc encode*(value: Ros1Geometry_msgsQuaternion): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsQuaternion*(b: seq[byte]): Ros1Geometry_msgsQuaternion =
  var r = initReader(b,32)
  result = readRos1Geometry_msgsQuaternion(r)
  finish(r)
## @brief Own every original field of geometry_msgs/Pose.
## @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Geometry_msgsPose* = object
  ## @brief A representation of pose in free space, composed of position and orientation.
  ## @details Original geometry_msgs/Pose.position; native type geometry_msgs/Point. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `position`*: Ros1Geometry_msgsPoint
  ## @brief Retain the complete original geometry_msgs/Quaternion field.
  ## @details Original geometry_msgs/Pose.orientation; native type geometry_msgs/Quaternion. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `orientation`*: Ros1Geometry_msgsQuaternion
const Ros1Geometry_msgsPoseMaximumWireBytes* = 56
const Ros1Geometry_msgsPoseCodecIdentity* = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
const Ros1Geometry_msgsPoseNativeType* = "geometry_msgs/Pose"
const Ros1Geometry_msgsPoseNativeIdentity* = ""
proc initRos1Geometry_msgsPose*(): Ros1Geometry_msgsPose =
  result.`position` = initRos1Geometry_msgsPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Geometry_msgsPose; w: var Writer) =
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos1Geometry_msgsPose*(r: var Reader): Ros1Geometry_msgsPose =
  result = initRos1Geometry_msgsPose()
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Geometry_msgsPose): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPose*(b: seq[byte]): Ros1Geometry_msgsPose =
  var r = initReader(b,56)
  result = readRos1Geometry_msgsPose(r)
  finish(r)
## @brief Own every original field of geometry_msgs/Vector3.
## @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Geometry_msgsVector3* = object
  ## @brief This represents a vector in free space. It is only meant to represent a direction. Therefore,
  ## it does not make sense to apply a translation to it (e.g., when applying a generic rigid
  ## transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be
  ## translatable too, use the geometry_msgs/Point message instead.
  ## @details Original geometry_msgs/Vector3.x; native type float64. Scalar value. Finite IEEE values; no
  ## implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `x`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/Vector3.y; native type float64. Scalar value. Finite IEEE values; no
  ## implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `y`*: float64
  ## @brief Retain the complete original float64 field.
  ## @details Original geometry_msgs/Vector3.z; native type float64. Scalar value. Finite IEEE values; no
  ## implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  `z`*: float64
const Ros1Geometry_msgsVector3MaximumWireBytes* = 24
const Ros1Geometry_msgsVector3CodecIdentity* = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
const Ros1Geometry_msgsVector3NativeType* = "geometry_msgs/Vector3"
const Ros1Geometry_msgsVector3NativeIdentity* = ""
proc initRos1Geometry_msgsVector3*(): Ros1Geometry_msgsVector3 =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros1Geometry_msgsVector3; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos1Geometry_msgsVector3*(r: var Reader): Ros1Geometry_msgsVector3 =
  result = initRos1Geometry_msgsVector3()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros1Geometry_msgsVector3): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsVector3*(b: seq[byte]): Ros1Geometry_msgsVector3 =
  var r = initReader(b,24)
  result = readRos1Geometry_msgsVector3(r)
  finish(r)
## @brief Own every original field of geometry_msgs/Accel.
## @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Geometry_msgsAccel* = object
  ## @brief This expresses acceleration in free space broken into its linear and angular parts.
  ## @details Original geometry_msgs/Accel.linear; native type geometry_msgs/Vector3. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `linear`*: Ros1Geometry_msgsVector3
  ## @brief Retain the complete original geometry_msgs/Vector3 field.
  ## @details Original geometry_msgs/Accel.angular; native type geometry_msgs/Vector3. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `angular`*: Ros1Geometry_msgsVector3
const Ros1Geometry_msgsAccelMaximumWireBytes* = 48
const Ros1Geometry_msgsAccelCodecIdentity* = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed"
const Ros1Geometry_msgsAccelNativeType* = "geometry_msgs/Accel"
const Ros1Geometry_msgsAccelNativeIdentity* = ""
proc initRos1Geometry_msgsAccel*(): Ros1Geometry_msgsAccel =
  result.`linear` = initRos1Geometry_msgsVector3()
  result.`angular` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1Geometry_msgsAccel; w: var Writer) =
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
proc readRos1Geometry_msgsAccel*(r: var Reader): Ros1Geometry_msgsAccel =
  result = initRos1Geometry_msgsAccel()
  result.`linear` = readRos1Geometry_msgsVector3(r)
  result.`angular` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1Geometry_msgsAccel): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsAccel*(b: seq[byte]): Ros1Geometry_msgsAccel =
  var r = initReader(b,48)
  result = readRos1Geometry_msgsAccel(r)
  finish(r)
## @brief Own every original field of geometry_msgs/Wrench.
## @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Geometry_msgsWrench* = object
  ## @brief This represents force in free space, separated into its linear and angular parts.
  ## @details Original geometry_msgs/Wrench.force; native type geometry_msgs/Vector3. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `force`*: Ros1Geometry_msgsVector3
  ## @brief Retain the complete original geometry_msgs/Vector3 field.
  ## @details Original geometry_msgs/Wrench.torque; native type geometry_msgs/Vector3. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `torque`*: Ros1Geometry_msgsVector3
const Ros1Geometry_msgsWrenchMaximumWireBytes* = 48
const Ros1Geometry_msgsWrenchCodecIdentity* = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
const Ros1Geometry_msgsWrenchNativeType* = "geometry_msgs/Wrench"
const Ros1Geometry_msgsWrenchNativeIdentity* = ""
proc initRos1Geometry_msgsWrench*(): Ros1Geometry_msgsWrench =
  result.`force` = initRos1Geometry_msgsVector3()
  result.`torque` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1Geometry_msgsWrench; w: var Writer) =
  writeFields(value.`force`,w)
  writeFields(value.`torque`,w)
proc readRos1Geometry_msgsWrench*(r: var Reader): Ros1Geometry_msgsWrench =
  result = initRos1Geometry_msgsWrench()
  result.`force` = readRos1Geometry_msgsVector3(r)
  result.`torque` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1Geometry_msgsWrench): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsWrench*(b: seq[byte]): Ros1Geometry_msgsWrench =
  var r = initReader(b,48)
  result = readRos1Geometry_msgsWrench(r)
  finish(r)
## @brief Own every original field of flexiv_msgs/RobotStates.
## @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros1Flexiv_msgsRobotStates* = object
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.q; native type float64. Exactly 7 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `q`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.theta; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `theta`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.dq; native type float64. Exactly 7 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dq`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.dtheta; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `dtheta`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.tau; native type float64. Exactly 7 elements. Finite IEEE
  ## values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.tau_des; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau_des`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.tau_dot; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau_dot`*: array[7,float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original flexiv_msgs/RobotStates.tau_ext; native type float64. Exactly 7 elements. Finite
  ## IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `tau_ext`*: array[7,float64]
  ## @brief Retain the complete original geometry_msgs/Pose field.
  ## @details Original flexiv_msgs/RobotStates.tcp_pose; native type geometry_msgs/Pose. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `tcp_pose`*: Ros1Geometry_msgsPose
  ## @brief Retain the complete original geometry_msgs/Pose field.
  ## @details Original flexiv_msgs/RobotStates.tcp_pose_des; native type geometry_msgs/Pose. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `tcp_pose_des`*: Ros1Geometry_msgsPose
  ## @brief Retain the complete original geometry_msgs/Accel field.
  ## @details Original flexiv_msgs/RobotStates.tcp_vel; native type geometry_msgs/Accel. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `tcp_vel`*: Ros1Geometry_msgsAccel
  ## @brief Retain the complete original geometry_msgs/Pose field.
  ## @details Original flexiv_msgs/RobotStates.cam_pose; native type geometry_msgs/Pose. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `cam_pose`*: Ros1Geometry_msgsPose
  ## @brief Retain the complete original geometry_msgs/Pose field.
  ## @details Original flexiv_msgs/RobotStates.flange_pose; native type geometry_msgs/Pose. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `flange_pose`*: Ros1Geometry_msgsPose
  ## @brief Retain the complete original geometry_msgs/Wrench field.
  ## @details Original flexiv_msgs/RobotStates.ft_sensor_raw; native type geometry_msgs/Wrench. Scalar
  ## value. Storage belongs to the complete value and acquires no ROS resource.
  `ft_sensor_raw`*: Ros1Geometry_msgsWrench
  ## @brief Retain the complete original geometry_msgs/Wrench field.
  ## @details Original flexiv_msgs/RobotStates.ext_wrench_tcp_frame; native type geometry_msgs/Wrench.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `ext_wrench_tcp_frame`*: Ros1Geometry_msgsWrench
  ## @brief Retain the complete original geometry_msgs/Wrench field.
  ## @details Original flexiv_msgs/RobotStates.ext_wrench_base_frame; native type geometry_msgs/Wrench.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `ext_wrench_base_frame`*: Ros1Geometry_msgsWrench
const Ros1Flexiv_msgsRobotStatesMaximumWireBytes* = 864
const Ros1Flexiv_msgsRobotStatesCodecIdentity* = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8"
const Ros1Flexiv_msgsRobotStatesNativeType* = "flexiv_msgs/RobotStates"
const Ros1Flexiv_msgsRobotStatesNativeIdentity* = ""
proc initRos1Flexiv_msgsRobotStates*(): Ros1Flexiv_msgsRobotStates =
  result.`q` = [0,0,0,0,0,0,0]
  result.`theta` = [0,0,0,0,0,0,0]
  result.`dq` = [0,0,0,0,0,0,0]
  result.`dtheta` = [0,0,0,0,0,0,0]
  result.`tau` = [0,0,0,0,0,0,0]
  result.`tau_des` = [0,0,0,0,0,0,0]
  result.`tau_dot` = [0,0,0,0,0,0,0]
  result.`tau_ext` = [0,0,0,0,0,0,0]
  result.`tcp_pose` = initRos1Geometry_msgsPose()
  result.`tcp_pose_des` = initRos1Geometry_msgsPose()
  result.`tcp_vel` = initRos1Geometry_msgsAccel()
  result.`cam_pose` = initRos1Geometry_msgsPose()
  result.`flange_pose` = initRos1Geometry_msgsPose()
  result.`ft_sensor_raw` = initRos1Geometry_msgsWrench()
  result.`ext_wrench_tcp_frame` = initRos1Geometry_msgsWrench()
  result.`ext_wrench_base_frame` = initRos1Geometry_msgsWrench()
proc writeFields*(value: Ros1Flexiv_msgsRobotStates; w: var Writer) =
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
proc readRos1Flexiv_msgsRobotStates*(r: var Reader): Ros1Flexiv_msgsRobotStates =
  result = initRos1Flexiv_msgsRobotStates()
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
  result.`tcp_pose` = readRos1Geometry_msgsPose(r)
  result.`tcp_pose_des` = readRos1Geometry_msgsPose(r)
  result.`tcp_vel` = readRos1Geometry_msgsAccel(r)
  result.`cam_pose` = readRos1Geometry_msgsPose(r)
  result.`flange_pose` = readRos1Geometry_msgsPose(r)
  result.`ft_sensor_raw` = readRos1Geometry_msgsWrench(r)
  result.`ext_wrench_tcp_frame` = readRos1Geometry_msgsWrench(r)
  result.`ext_wrench_base_frame` = readRos1Geometry_msgsWrench(r)
proc encode*(value: Ros1Flexiv_msgsRobotStates): seq[byte] =
  var w = initWriter(864)
  writeFields(value,w)
  w.bytes
proc decodeRos1Flexiv_msgsRobotStates*(b: seq[byte]): Ros1Flexiv_msgsRobotStates =
  var r = initReader(b,864)
  result = readRos1Flexiv_msgsRobotStates(r)
  finish(r)
