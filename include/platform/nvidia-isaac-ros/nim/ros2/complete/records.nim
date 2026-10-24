# @file records.nim
# @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-ros.
# @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
# while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Builtin_interfacesMsgTime* = object
  `sec`*: int32
  `nanosec`*: uint32
const Ros2Builtin_interfacesMsgTimeMaximumWireBytes* = 8
const Ros2Builtin_interfacesMsgTimeCodecIdentity* =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
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
type Ros2Std_msgsMsgHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
  `frame_id`*: string
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 76
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
const Ros2Std_msgsMsgHeaderNativeType* = "std_msgs/msg/Header"
const Ros2Std_msgsMsgHeaderNativeIdentity* = ""
proc initRos2Std_msgsMsgHeader*(): Ros2Std_msgsMsgHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
proc writeFields*(value: Ros2Std_msgsMsgHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,64)
proc readRos2Std_msgsMsgHeader*(r: var Reader): Ros2Std_msgsMsgHeader =
  result = initRos2Std_msgsMsgHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,64)
proc encode*(value: Ros2Std_msgsMsgHeader): seq[byte] =
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgHeader*(b: seq[byte]): Ros2Std_msgsMsgHeader =
  var r = initReader(b,76)
  result = readRos2Std_msgsMsgHeader(r)
  finish(r)
type Ros2Geometry_msgsMsgPoint* = object
  `x`*: float64
  `y`*: float64
  `z`*: float64
const Ros2Geometry_msgsMsgPointMaximumWireBytes* = 24
const Ros2Geometry_msgsMsgPointCodecIdentity* =
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
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
const Ros2Geometry_msgsMsgQuaternionCodecIdentity* =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
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
const Ros2Geometry_msgsMsgPoseCodecIdentity* =
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
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
type Ros2Geometry_msgsMsgPoseWithCovariance* = object
  `pose`*: Ros2Geometry_msgsMsgPose
  `covariance`*: array[36,float64]
const Ros2Geometry_msgsMsgPoseWithCovarianceMaximumWireBytes* = 344
const Ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity* =
    "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
const Ros2Geometry_msgsMsgPoseWithCovarianceNativeType* = "geometry_msgs/msg/PoseWithCovariance"
const Ros2Geometry_msgsMsgPoseWithCovarianceNativeIdentity* = ""
proc initRos2Geometry_msgsMsgPoseWithCovariance*(): Ros2Geometry_msgsMsgPoseWithCovariance =
  result.`pose` = initRos2Geometry_msgsMsgPose()
  result.`covariance` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Geometry_msgsMsgPoseWithCovariance; w: var Writer) =
  writeFields(value.`pose`,w)
  for e in value.`covariance`:
    putFloat64(w,e)
proc readRos2Geometry_msgsMsgPoseWithCovariance*(r: var Reader): Ros2Geometry_msgsMsgPoseWithCovariance =
  result = initRos2Geometry_msgsMsgPoseWithCovariance()
  result.`pose` = readRos2Geometry_msgsMsgPose(r)
  let count1 = 36
  for i in 0..<count1:
    result.`covariance`[i] = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgPoseWithCovariance): seq[byte] =
  var w = initWriter(344)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPoseWithCovariance*(b: seq[byte]): Ros2Geometry_msgsMsgPoseWithCovariance =
  var r = initReader(b,344)
  result = readRos2Geometry_msgsMsgPoseWithCovariance(r)
  finish(r)
type Ros2Geometry_msgsMsgPoseWithCovarianceStamped* = object
  `header`*: Ros2Std_msgsMsgHeader
  `pose`*: Ros2Geometry_msgsMsgPoseWithCovariance
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedMaximumWireBytes* = 420
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodecIdentity* =
    "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3"
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedNativeType* = "geometry_msgs/msg/PoseWithCovarianceStamped"
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedNativeIdentity* = ""
proc initRos2Geometry_msgsMsgPoseWithCovarianceStamped*(): Ros2Geometry_msgsMsgPoseWithCovarianceStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`pose` = initRos2Geometry_msgsMsgPoseWithCovariance()
proc writeFields*(value: Ros2Geometry_msgsMsgPoseWithCovarianceStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
proc readRos2Geometry_msgsMsgPoseWithCovarianceStamped*(r: var Reader): Ros2Geometry_msgsMsgPoseWithCovarianceStamped =
  result = initRos2Geometry_msgsMsgPoseWithCovarianceStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`pose` = readRos2Geometry_msgsMsgPoseWithCovariance(r)
proc encode*(value: Ros2Geometry_msgsMsgPoseWithCovarianceStamped): seq[byte] =
  var w = initWriter(420)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPoseWithCovarianceStamped*(b: seq[byte]): Ros2Geometry_msgsMsgPoseWithCovarianceStamped =
  var r = initReader(b,420)
  result = readRos2Geometry_msgsMsgPoseWithCovarianceStamped(r)
  finish(r)
type Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection* = object
  `family`*: string
  `id`*: int32
  `center`*: Ros2Geometry_msgsMsgPoint
  `corners`*: array[4,Ros2Geometry_msgsMsgPoint]
  `pose`*: Ros2Geometry_msgsMsgPoseWithCovarianceStamped
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionMaximumWireBytes* = 612
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodecIdentity* =
    "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7"
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionNativeType* =
    "isaac_ros_apriltag_interfaces/msg/AprilTagDetection"
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionNativeIdentity* = ""
proc initRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection*(
    ): Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection =
  result.`family` = ""
  result.`id` = 0
  result.`center` = initRos2Geometry_msgsMsgPoint()
  result.`corners` = [initRos2Geometry_msgsMsgPoint(),initRos2Geometry_msgsMsgPoint(),initRos2Geometry_msgsMsgPoint(),
      initRos2Geometry_msgsMsgPoint()]
  result.`pose` = initRos2Geometry_msgsMsgPoseWithCovarianceStamped()
proc writeFields*(value: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection; w: var Writer) =
  putString(w,value.`family`,64)
  putInteger(w,value.`id`)
  writeFields(value.`center`,w)
  for e in value.`corners`:
    writeFields(e,w)
  writeFields(value.`pose`,w)
proc readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection*(
    r: var Reader): Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection =
  result = initRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection()
  result.`family` = getString(r,64)
  result.`id` = getInteger(r,int32)
  result.`center` = readRos2Geometry_msgsMsgPoint(r)
  let count3 = 4
  for i in 0..<count3:
    result.`corners`[i] = readRos2Geometry_msgsMsgPoint(r)
  result.`pose` = readRos2Geometry_msgsMsgPoseWithCovarianceStamped(r)
proc encode*(value: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection): seq[byte] =
  var w = initWriter(612)
  writeFields(value,w)
  w.bytes
proc decodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection*(
    b: seq[byte]): Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection =
  var r = initReader(b,612)
  result = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(r)
  finish(r)
type Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray* = object
  `header`*: Ros2Std_msgsMsgHeader
  `detections`*: seq[Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection]
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayMaximumWireBytes* = 9872
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodecIdentity* =
    "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5"
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayNativeType* =
    "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray"
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayNativeIdentity* = ""
proc initRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray*(
    ): Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`detections` = @[]
proc writeFields*(value: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`detections`.len > 16: fail(22)
  putInteger(w,uint32(value.`detections`.len))
  for e in value.`detections`:
    writeFields(e,w)
proc readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray*(
    r: var Reader): Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray =
  result = initRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`detections` = newSeq[Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection](count1)
  for i in 0..<count1:
    result.`detections`[i] = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(r)
proc encode*(value: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray): seq[byte] =
  var w = initWriter(9872)
  writeFields(value,w)
  w.bytes
proc decodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray*(
    b: seq[byte]): Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray =
  var r = initReader(b,9872)
  result = readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(r)
  finish(r)
