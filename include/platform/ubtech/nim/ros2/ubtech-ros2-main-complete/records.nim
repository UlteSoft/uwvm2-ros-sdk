# @file records.nim
# @brief Full ubtech nim codecs and original record metadata.
# @details Complete ubtech ros2_main values in nim. 8 original records retain 24 fields and 8 interface
# descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding
# is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/ubtech/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Builtin_interfacesMsgTime* = object
  `sec`*: int32
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
type Ros2Geometry_msgsMsgPoint* = object
  `x`*: float64
  `y`*: float64
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
type Ros2Geometry_msgsMsgQuaternion* = object
  `x`*: float64
  `y`*: float64
  `z`*: float64
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
type Ros2Geometry_msgsMsgPose* = object
  `position`*: Ros2Geometry_msgsMsgPoint
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
type Ros2Std_msgsMsgHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
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
type Ros2Geometry_msgsMsgPoseStamped* = object
  `header`*: Ros2Std_msgsMsgHeader
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
type Ros2Grab_demo_msgsMsgGraspCandidate* = object
  `header`*: Ros2Std_msgsMsgHeader
  `pose`*: Ros2Geometry_msgsMsgPoseStamped
  `group_name`*: string
  `confidence`*: float32
  `object_class`*: string
const Ros2Grab_demo_msgsMsgGraspCandidateMaximumWireBytes* = 604
const Ros2Grab_demo_msgsMsgGraspCandidateCodecIdentity* = "UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37"
const Ros2Grab_demo_msgsMsgGraspCandidateNativeType* = "grab_demo_msgs/msg/GraspCandidate"
const Ros2Grab_demo_msgsMsgGraspCandidateNativeIdentity* = ""
proc initRos2Grab_demo_msgsMsgGraspCandidate*(): Ros2Grab_demo_msgsMsgGraspCandidate =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`pose` = initRos2Geometry_msgsMsgPoseStamped()
  result.`group_name` = ""
  result.`confidence` = 0
  result.`object_class` = ""
proc writeFields*(value: Ros2Grab_demo_msgsMsgGraspCandidate; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
  putString(w,value.`group_name`,128)
  putFloat32(w,value.`confidence`)
  putString(w,value.`object_class`,128)
proc readRos2Grab_demo_msgsMsgGraspCandidate*(r: var Reader): Ros2Grab_demo_msgsMsgGraspCandidate =
  result = initRos2Grab_demo_msgsMsgGraspCandidate()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`pose` = readRos2Geometry_msgsMsgPoseStamped(r)
  result.`group_name` = getString(r,128)
  result.`confidence` = getFloat32(r)
  result.`object_class` = getString(r,128)
proc encode*(value: Ros2Grab_demo_msgsMsgGraspCandidate): seq[byte] =
  var w = initWriter(604)
  writeFields(value,w)
  w.bytes
proc decodeRos2Grab_demo_msgsMsgGraspCandidate*(b: seq[byte]): Ros2Grab_demo_msgsMsgGraspCandidate =
  var r = initReader(b,604)
  result = readRos2Grab_demo_msgsMsgGraspCandidate(r)
  finish(r)
type Ros2Grab_demo_msgsMsgIKRequest* = object
  `group_name`*: string
  `frame_id`*: string
  `position`*: Ros2Geometry_msgsMsgPoint
  `orientation`*: Ros2Geometry_msgsMsgQuaternion
const Ros2Grab_demo_msgsMsgIKRequestMaximumWireBytes* = 320
const Ros2Grab_demo_msgsMsgIKRequestCodecIdentity* = "UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa"
const Ros2Grab_demo_msgsMsgIKRequestNativeType* = "grab_demo_msgs/msg/IKRequest"
const Ros2Grab_demo_msgsMsgIKRequestNativeIdentity* = ""
proc initRos2Grab_demo_msgsMsgIKRequest*(): Ros2Grab_demo_msgsMsgIKRequest =
  result.`group_name` = ""
  result.`frame_id` = ""
  result.`position` = initRos2Geometry_msgsMsgPoint()
  result.`orientation` = initRos2Geometry_msgsMsgQuaternion()
proc writeFields*(value: Ros2Grab_demo_msgsMsgIKRequest; w: var Writer) =
  putString(w,value.`group_name`,128)
  putString(w,value.`frame_id`,128)
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos2Grab_demo_msgsMsgIKRequest*(r: var Reader): Ros2Grab_demo_msgsMsgIKRequest =
  result = initRos2Grab_demo_msgsMsgIKRequest()
  result.`group_name` = getString(r,128)
  result.`frame_id` = getString(r,128)
  result.`position` = readRos2Geometry_msgsMsgPoint(r)
  result.`orientation` = readRos2Geometry_msgsMsgQuaternion(r)
proc encode*(value: Ros2Grab_demo_msgsMsgIKRequest): seq[byte] =
  var w = initWriter(320)
  writeFields(value,w)
  w.bytes
proc decodeRos2Grab_demo_msgsMsgIKRequest*(b: seq[byte]): Ros2Grab_demo_msgsMsgIKRequest =
  var r = initReader(b,320)
  result = readRos2Grab_demo_msgsMsgIKRequest(r)
  finish(r)
