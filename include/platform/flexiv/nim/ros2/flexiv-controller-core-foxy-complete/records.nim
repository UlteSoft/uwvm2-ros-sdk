## @brief Complete original flexiv controller_core_foxy canonical values.
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
  ## @brief Time indicates a specific point in time, relative to a clock's 0 point. The seconds
  ## component, valid over all int32 values.
  ## @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
  ## to the complete value and acquires no ROS resource.
  `sec`*: int32
  ## @brief The nanoseconds component, valid in the range [0, 10e9).
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
## @brief Own every original field of builtin_interfaces/msg/Duration.
## @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Builtin_interfacesMsgDuration* = object
  ## @brief Duration defines a period between two time points. It is comprised of a seconds component and
  ## a nanoseconds component. Seconds component, range is valid over any possible int32 value.
  ## @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `sec`*: int32
  ## @brief Nanoseconds component in the range of [0, 10e9).
  ## @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `nanosec`*: uint32
const Ros2Builtin_interfacesMsgDurationMaximumWireBytes* = 8
const Ros2Builtin_interfacesMsgDurationCodecIdentity* = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
const Ros2Builtin_interfacesMsgDurationNativeType* = "builtin_interfaces/msg/Duration"
const Ros2Builtin_interfacesMsgDurationNativeIdentity* = ""
proc initRos2Builtin_interfacesMsgDuration*(): Ros2Builtin_interfacesMsgDuration =
  result.`sec` = 0
  result.`nanosec` = 0
proc writeFields*(value: Ros2Builtin_interfacesMsgDuration; w: var Writer) =
  if value.`nanosec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
proc readRos2Builtin_interfacesMsgDuration*(r: var Reader): Ros2Builtin_interfacesMsgDuration =
  result = initRos2Builtin_interfacesMsgDuration()
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
  if result.`nanosec` >= 1000000000: fail(22)
proc encode*(value: Ros2Builtin_interfacesMsgDuration): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Builtin_interfacesMsgDuration*(b: seq[byte]): Ros2Builtin_interfacesMsgDuration =
  var r = initReader(b,8)
  result = readRos2Builtin_interfacesMsgDuration(r)
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
## @brief Own every original field of sensor_msgs/msg/JointState.
## @details Canonical extent 28..9372 bytes. Native type identity is independent; constructing a value
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
  ## @details Original sensor_msgs/msg/JointState.name; native type string. At most 32 elements. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `name`*: seq[string]
  ## @brief Retain the complete original float64 field.
  ## @details Original sensor_msgs/msg/JointState.position; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `position`*: seq[float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `velocity`*: seq[float64]
  ## @brief Retain the complete original float64 field.
  ## @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `effort`*: seq[float64]
const Ros2Sensor_msgsMsgJointStateMaximumWireBytes* = 9372
const Ros2Sensor_msgsMsgJointStateCodecIdentity* = "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556"
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
  if value.`name`.len > 32: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,256)
  if value.`position`.len > 32: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 32: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 32: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
proc readRos2Sensor_msgsMsgJointState*(r: var Reader): Ros2Sensor_msgsMsgJointState =
  result = initRos2Sensor_msgsMsgJointState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 32: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 32: fail(22)
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
  var w = initWriter(9372)
  writeFields(value,w)
  w.bytes
proc decodeRos2Sensor_msgsMsgJointState*(b: seq[byte]): Ros2Sensor_msgsMsgJointState =
  var r = initReader(b,9372)
  result = readRos2Sensor_msgsMsgJointState(r)
  finish(r)
## @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
## @details Canonical extent 24..1048 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Trajectory_msgsMsgJointTrajectoryPoint* = object
  ## @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
  ## positions[, effort] for the trajectory to be executed. All specified values are in the same order as
  ## the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
  ## "0" position. The units depend on the specific joint type: radians for revolute or continuous
  ## joints, and meters for prismatic joints.
  ## @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most
  ## 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `positions`*: seq[float64]
  ## @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
  ## for revolute or continuous joints, and meters/second for prismatic joints.
  ## @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
  ## 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `velocities`*: seq[float64]
  ## @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
  ## for revolute or continuous joints, and meters/second^2 for prismatic joints.
  ## @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
  ## most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  ## value and acquires no ROS resource.
  `accelerations`*: seq[float64]
  ## @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
  ## denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
  ## @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 32
  ## elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `effort`*: seq[float64]
  ## @brief Desired time from the trajectory start to arrive at this trajectory point.
  ## @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
  ## builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  ## ROS resource.
  `time_from_start`*: Ros2Builtin_interfacesMsgDuration
const Ros2Trajectory_msgsMsgJointTrajectoryPointMaximumWireBytes* = 1048
const Ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity* =
        "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c"
const Ros2Trajectory_msgsMsgJointTrajectoryPointNativeType* = "trajectory_msgs/msg/JointTrajectoryPoint"
const Ros2Trajectory_msgsMsgJointTrajectoryPointNativeIdentity* = ""
proc initRos2Trajectory_msgsMsgJointTrajectoryPoint*(): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  result.`positions` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`effort` = @[]
  result.`time_from_start` = initRos2Builtin_interfacesMsgDuration()
proc writeFields*(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint; w: var Writer) =
  if value.`positions`.len > 32: fail(22)
  putInteger(w,uint32(value.`positions`.len))
  for e in value.`positions`:
    putFloat64(w,e)
  if value.`velocities`.len > 32: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    putFloat64(w,e)
  if value.`accelerations`.len > 32: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    putFloat64(w,e)
  if value.`effort`.len > 32: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
  writeFields(value.`time_from_start`,w)
proc readRos2Trajectory_msgsMsgJointTrajectoryPoint*(r: var Reader): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  result = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
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
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 32: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 32: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
  result.`time_from_start` = readRos2Builtin_interfacesMsgDuration(r)
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint): seq[byte] =
  var w = initWriter(1048)
  writeFields(value,w)
  w.bytes
proc decodeRos2Trajectory_msgsMsgJointTrajectoryPoint*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  var r = initReader(b,1048)
  result = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  finish(r)
## @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
## @details Canonical extent 20..16980 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Trajectory_msgsMsgJointTrajectory* = object
  ## @brief The header is used to specify the coordinate frame and the reference time for the trajectory
  ## durations
  ## @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief The names of the active joints in each trajectory point. These names are ordered and must
  ## correspond to the values in each trajectory point.
  ## @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 32
  ## elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  ## acquires no ROS resource.
  `joint_names`*: seq[string]
  ## @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
  ## efforts of the joints at each time point.
  ## @details Original trajectory_msgs/msg/JointTrajectory.points; native type
  ## trajectory_msgs/msg/JointTrajectoryPoint. At most 8 elements. Storage belongs to the complete value
  ## and acquires no ROS resource.
  `points`*: seq[Ros2Trajectory_msgsMsgJointTrajectoryPoint]
const Ros2Trajectory_msgsMsgJointTrajectoryMaximumWireBytes* = 16980
const Ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity* =
        "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4"
const Ros2Trajectory_msgsMsgJointTrajectoryNativeType* = "trajectory_msgs/msg/JointTrajectory"
const Ros2Trajectory_msgsMsgJointTrajectoryNativeIdentity* = ""
proc initRos2Trajectory_msgsMsgJointTrajectory*(): Ros2Trajectory_msgsMsgJointTrajectory =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
proc writeFields*(value: Ros2Trajectory_msgsMsgJointTrajectory; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 32: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`points`.len > 8: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
proc readRos2Trajectory_msgsMsgJointTrajectory*(r: var Reader): Ros2Trajectory_msgsMsgJointTrajectory =
  result = initRos2Trajectory_msgsMsgJointTrajectory()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros2Trajectory_msgsMsgJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectory): seq[byte] =
  var w = initWriter(16980)
  writeFields(value,w)
  w.bytes
proc decodeRos2Trajectory_msgsMsgJointTrajectory*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectory =
  var r = initReader(b,16980)
  result = readRos2Trajectory_msgsMsgJointTrajectory(r)
  finish(r)
## @brief Own every original field of std_msgs/msg/MultiArrayDimension.
## @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Std_msgsMsgMultiArrayDimension* = object
  ## @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  ## recommended to create your own semantically meaningful message. However if you would like to
  ## continue using this please use the equivalent in example_msgs. label of given dimension
  ## @details Original std_msgs/msg/MultiArrayDimension.label; native type string. Scalar value. UTF-8
  ## capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  ## resource.
  `label`*: string
  ## @brief size of given dimension (in type units)
  ## @details Original std_msgs/msg/MultiArrayDimension.size; native type uint32. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `size`*: uint32
  ## @brief stride of given dimension
  ## @details Original std_msgs/msg/MultiArrayDimension.stride; native type uint32. Scalar value. Storage
  ## belongs to the complete value and acquires no ROS resource.
  `stride`*: uint32
const Ros2Std_msgsMsgMultiArrayDimensionMaximumWireBytes* = 268
const Ros2Std_msgsMsgMultiArrayDimensionCodecIdentity* = "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d"
const Ros2Std_msgsMsgMultiArrayDimensionNativeType* = "std_msgs/msg/MultiArrayDimension"
const Ros2Std_msgsMsgMultiArrayDimensionNativeIdentity* = ""
proc initRos2Std_msgsMsgMultiArrayDimension*(): Ros2Std_msgsMsgMultiArrayDimension =
  result.`label` = ""
  result.`size` = 0
  result.`stride` = 0
proc writeFields*(value: Ros2Std_msgsMsgMultiArrayDimension; w: var Writer) =
  putString(w,value.`label`,256)
  putInteger(w,value.`size`)
  putInteger(w,value.`stride`)
proc readRos2Std_msgsMsgMultiArrayDimension*(r: var Reader): Ros2Std_msgsMsgMultiArrayDimension =
  result = initRos2Std_msgsMsgMultiArrayDimension()
  result.`label` = getString(r,256)
  result.`size` = getInteger(r,uint32)
  result.`stride` = getInteger(r,uint32)
proc encode*(value: Ros2Std_msgsMsgMultiArrayDimension): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgMultiArrayDimension*(b: seq[byte]): Ros2Std_msgsMsgMultiArrayDimension =
  var r = initReader(b,268)
  result = readRos2Std_msgsMsgMultiArrayDimension(r)
  finish(r)
## @brief Own every original field of std_msgs/msg/MultiArrayLayout.
## @details Canonical extent 8..2152 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Std_msgsMsgMultiArrayLayout* = object
  ## @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  ## recommended to create your own semantically meaningful message. However if you would like to
  ## continue using this please use the equivalent in example_msgs. The multiarray declares a generic
  ## multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner
  ## most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most
  ## dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A
  ## standard, 3-channel 640x480 image with interleaved color channels would be specified as:
  ## dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride
  ## is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920
  ## dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith
  ## row, jth column, and kth channel. Array of dimension properties
  ## @details Original std_msgs/msg/MultiArrayLayout.dim; native type std_msgs/msg/MultiArrayDimension.
  ## At most 8 elements. Storage belongs to the complete value and acquires no ROS resource.
  `dim`*: seq[Ros2Std_msgsMsgMultiArrayDimension]
  ## @brief padding bytes at front of data
  ## @details Original std_msgs/msg/MultiArrayLayout.data_offset; native type uint32. Scalar value.
  ## Storage belongs to the complete value and acquires no ROS resource.
  `data_offset`*: uint32
const Ros2Std_msgsMsgMultiArrayLayoutMaximumWireBytes* = 2152
const Ros2Std_msgsMsgMultiArrayLayoutCodecIdentity* = "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40"
const Ros2Std_msgsMsgMultiArrayLayoutNativeType* = "std_msgs/msg/MultiArrayLayout"
const Ros2Std_msgsMsgMultiArrayLayoutNativeIdentity* = ""
proc initRos2Std_msgsMsgMultiArrayLayout*(): Ros2Std_msgsMsgMultiArrayLayout =
  result.`dim` = @[]
  result.`data_offset` = 0
proc writeFields*(value: Ros2Std_msgsMsgMultiArrayLayout; w: var Writer) =
  if value.`dim`.len > 8: fail(22)
  putInteger(w,uint32(value.`dim`.len))
  for e in value.`dim`:
    writeFields(e,w)
  putInteger(w,value.`data_offset`)
proc readRos2Std_msgsMsgMultiArrayLayout*(r: var Reader): Ros2Std_msgsMsgMultiArrayLayout =
  result = initRos2Std_msgsMsgMultiArrayLayout()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`dim` = newSeq[Ros2Std_msgsMsgMultiArrayDimension](count0)
  for i in 0..<count0:
    result.`dim`[i] = readRos2Std_msgsMsgMultiArrayDimension(r)
  result.`data_offset` = getInteger(r,uint32)
proc encode*(value: Ros2Std_msgsMsgMultiArrayLayout): seq[byte] =
  var w = initWriter(2152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgMultiArrayLayout*(b: seq[byte]): Ros2Std_msgsMsgMultiArrayLayout =
  var r = initReader(b,2152)
  result = readRos2Std_msgsMsgMultiArrayLayout(r)
  finish(r)
## @brief Own every original field of std_msgs/msg/Float64MultiArray.
## @details Canonical extent 12..2412 bytes. Native type identity is independent; constructing a value
## opens no resource.
type Ros2Std_msgsMsgFloat64MultiArray* = object
  ## @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  ## recommended to create your own semantically meaningful message. However if you would like to
  ## continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout
  ## message definition for documentation on all multiarrays. specification of data layout
  ## @details Original std_msgs/msg/Float64MultiArray.layout; native type std_msgs/msg/MultiArrayLayout.
  ## Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  `layout`*: Ros2Std_msgsMsgMultiArrayLayout
  ## @brief array of data
  ## @details Original std_msgs/msg/Float64MultiArray.data; native type float64. At most 32 elements.
  ## Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  ## no ROS resource.
  `data`*: seq[float64]
const Ros2Std_msgsMsgFloat64MultiArrayMaximumWireBytes* = 2412
const Ros2Std_msgsMsgFloat64MultiArrayCodecIdentity* = "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2"
const Ros2Std_msgsMsgFloat64MultiArrayNativeType* = "std_msgs/msg/Float64MultiArray"
const Ros2Std_msgsMsgFloat64MultiArrayNativeIdentity* = ""
proc initRos2Std_msgsMsgFloat64MultiArray*(): Ros2Std_msgsMsgFloat64MultiArray =
  result.`layout` = initRos2Std_msgsMsgMultiArrayLayout()
  result.`data` = @[]
proc writeFields*(value: Ros2Std_msgsMsgFloat64MultiArray; w: var Writer) =
  writeFields(value.`layout`,w)
  if value.`data`.len > 32: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putFloat64(w,e)
proc readRos2Std_msgsMsgFloat64MultiArray*(r: var Reader): Ros2Std_msgsMsgFloat64MultiArray =
  result = initRos2Std_msgsMsgFloat64MultiArray()
  result.`layout` = readRos2Std_msgsMsgMultiArrayLayout(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`data` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`data`[i] = getFloat64(r)
proc encode*(value: Ros2Std_msgsMsgFloat64MultiArray): seq[byte] =
  var w = initWriter(2412)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgFloat64MultiArray*(b: seq[byte]): Ros2Std_msgsMsgFloat64MultiArray =
  var r = initReader(b,2412)
  result = readRos2Std_msgsMsgFloat64MultiArray(r)
  finish(r)
