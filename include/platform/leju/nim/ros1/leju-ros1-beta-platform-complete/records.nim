# @file records.nim
# @brief Full leju nim codecs and original record metadata.
# @details Complete leju ros1_beta_platform values in nim. 532 original records retain 1587 fields and 378 interface
# descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding
# is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/leju/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros1Time* = object
  `sec`*: uint32
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
type Ros1Std_msgsHeader* = object
  `seq`*: uint32
  `stamp`*: Ros1Time
  `frame_id`*: string
const Ros1Std_msgsHeaderMaximumWireBytes* = 272
const Ros1Std_msgsHeaderCodecIdentity* = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7"
const Ros1Std_msgsHeaderNativeType* = "std_msgs/Header"
const Ros1Std_msgsHeaderNativeIdentity* = ""
proc initRos1Std_msgsHeader*(): Ros1Std_msgsHeader =
  result.`seq` = 0
  result.`stamp` = initRos1Time()
  result.`frame_id` = ""
proc writeFields*(value: Ros1Std_msgsHeader; w: var Writer) =
  putInteger(w,value.`seq`)
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,256)
proc readRos1Std_msgsHeader*(r: var Reader): Ros1Std_msgsHeader =
  result = initRos1Std_msgsHeader()
  result.`seq` = getInteger(r,uint32)
  result.`stamp` = readRos1Time(r)
  result.`frame_id` = getString(r,256)
proc encode*(value: Ros1Std_msgsHeader): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos1Std_msgsHeader*(b: seq[byte]): Ros1Std_msgsHeader =
  var r = initReader(b,272)
  result = readRos1Std_msgsHeader(r)
  finish(r)
type Ros1Geometry_msgsPoint* = object
  `x`*: float64
  `y`*: float64
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
type Ros1Geometry_msgsQuaternion* = object
  `x`*: float64
  `y`*: float64
  `z`*: float64
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
type Ros1Geometry_msgsPose* = object
  `position`*: Ros1Geometry_msgsPoint
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
type Ros1Geometry_msgsPoseWithCovariance* = object
  `pose`*: Ros1Geometry_msgsPose
  `covariance`*: array[36,float64]
const Ros1Geometry_msgsPoseWithCovarianceMaximumWireBytes* = 344
const Ros1Geometry_msgsPoseWithCovarianceCodecIdentity* = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
const Ros1Geometry_msgsPoseWithCovarianceNativeType* = "geometry_msgs/PoseWithCovariance"
const Ros1Geometry_msgsPoseWithCovarianceNativeIdentity* = ""
proc initRos1Geometry_msgsPoseWithCovariance*(): Ros1Geometry_msgsPoseWithCovariance =
  result.`pose` = initRos1Geometry_msgsPose()
  result.`covariance` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Geometry_msgsPoseWithCovariance; w: var Writer) =
  writeFields(value.`pose`,w)
  for e in value.`covariance`:
    putFloat64(w,e)
proc readRos1Geometry_msgsPoseWithCovariance*(r: var Reader): Ros1Geometry_msgsPoseWithCovariance =
  result = initRos1Geometry_msgsPoseWithCovariance()
  result.`pose` = readRos1Geometry_msgsPose(r)
  let count1 = 36
  for i in 0..<count1:
    result.`covariance`[i] = getFloat64(r)
proc encode*(value: Ros1Geometry_msgsPoseWithCovariance): seq[byte] =
  var w = initWriter(344)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPoseWithCovariance*(b: seq[byte]): Ros1Geometry_msgsPoseWithCovariance =
  var r = initReader(b,344)
  result = readRos1Geometry_msgsPoseWithCovariance(r)
  finish(r)
type Ros1Aruco_msgsMarker* = object
  `header`*: Ros1Std_msgsHeader
  `id`*: uint32
  `pose`*: Ros1Geometry_msgsPoseWithCovariance
  `confidence`*: float64
const Ros1Aruco_msgsMarkerMaximumWireBytes* = 628
const Ros1Aruco_msgsMarkerCodecIdentity* = "UWVMROS1_4c6aee9b879070cefe3a1b59e11178b93b8226c179d5c193232713f70ec0dc2f"
const Ros1Aruco_msgsMarkerNativeType* = "aruco_msgs/Marker"
const Ros1Aruco_msgsMarkerNativeIdentity* = ""
proc initRos1Aruco_msgsMarker*(): Ros1Aruco_msgsMarker =
  result.`header` = initRos1Std_msgsHeader()
  result.`id` = 0
  result.`pose` = initRos1Geometry_msgsPoseWithCovariance()
  result.`confidence` = 0
proc writeFields*(value: Ros1Aruco_msgsMarker; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`id`)
  writeFields(value.`pose`,w)
  putFloat64(w,value.`confidence`)
proc readRos1Aruco_msgsMarker*(r: var Reader): Ros1Aruco_msgsMarker =
  result = initRos1Aruco_msgsMarker()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`id` = getInteger(r,uint32)
  result.`pose` = readRos1Geometry_msgsPoseWithCovariance(r)
  result.`confidence` = getFloat64(r)
proc encode*(value: Ros1Aruco_msgsMarker): seq[byte] =
  var w = initWriter(628)
  writeFields(value,w)
  w.bytes
proc decodeRos1Aruco_msgsMarker*(b: seq[byte]): Ros1Aruco_msgsMarker =
  var r = initReader(b,628)
  result = readRos1Aruco_msgsMarker(r)
  finish(r)
type Ros1Aruco_msgsMarkerArray* = object
  `header`*: Ros1Std_msgsHeader
  `markers`*: seq[Ros1Aruco_msgsMarker]
const Ros1Aruco_msgsMarkerArrayMaximumWireBytes* = 5300
const Ros1Aruco_msgsMarkerArrayCodecIdentity* = "UWVMROS1_2fabec40c19196e3575ffa99710bce32fa2827ee63f65dc49b8742897901e422"
const Ros1Aruco_msgsMarkerArrayNativeType* = "aruco_msgs/MarkerArray"
const Ros1Aruco_msgsMarkerArrayNativeIdentity* = ""
proc initRos1Aruco_msgsMarkerArray*(): Ros1Aruco_msgsMarkerArray =
  result.`header` = initRos1Std_msgsHeader()
  result.`markers` = @[]
proc writeFields*(value: Ros1Aruco_msgsMarkerArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`markers`.len > 8: fail(22)
  putInteger(w,uint32(value.`markers`.len))
  for e in value.`markers`:
    writeFields(e,w)
proc readRos1Aruco_msgsMarkerArray*(r: var Reader): Ros1Aruco_msgsMarkerArray =
  result = initRos1Aruco_msgsMarkerArray()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`markers` = newSeq[Ros1Aruco_msgsMarker](count1)
  for i in 0..<count1:
    result.`markers`[i] = readRos1Aruco_msgsMarker(r)
proc encode*(value: Ros1Aruco_msgsMarkerArray): seq[byte] =
  var w = initWriter(5300)
  writeFields(value,w)
  w.bytes
proc decodeRos1Aruco_msgsMarkerArray*(b: seq[byte]): Ros1Aruco_msgsMarkerArray =
  var r = initReader(b,5300)
  result = readRos1Aruco_msgsMarkerArray(r)
  finish(r)
type Ros1Easy_handeye_msgsCheckStartingPoseRequest* = object
const Ros1Easy_handeye_msgsCheckStartingPoseRequestMaximumWireBytes* = 0
const Ros1Easy_handeye_msgsCheckStartingPoseRequestCodecIdentity* = "UWVMROS1_3fc4c8d58fc78cb1a405a11648106b11b5dc0b52ab53f09d5fcd12ea0fd9dd81"
const Ros1Easy_handeye_msgsCheckStartingPoseRequestNativeType* = "easy_handeye_msgs/CheckStartingPoseRequest"
const Ros1Easy_handeye_msgsCheckStartingPoseRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsCheckStartingPoseRequest*(): Ros1Easy_handeye_msgsCheckStartingPoseRequest =
  discard
proc writeFields*(value: Ros1Easy_handeye_msgsCheckStartingPoseRequest; w: var Writer) =
  discard
proc readRos1Easy_handeye_msgsCheckStartingPoseRequest*(r: var Reader): Ros1Easy_handeye_msgsCheckStartingPoseRequest =
  result = initRos1Easy_handeye_msgsCheckStartingPoseRequest()
proc encode*(value: Ros1Easy_handeye_msgsCheckStartingPoseRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsCheckStartingPoseRequest*(b: seq[byte]): Ros1Easy_handeye_msgsCheckStartingPoseRequest =
  var r = initReader(b,0)
  result = readRos1Easy_handeye_msgsCheckStartingPoseRequest(r)
  finish(r)
type Ros1Geometry_msgsPoseStamped* = object
  `header`*: Ros1Std_msgsHeader
  `pose`*: Ros1Geometry_msgsPose
const Ros1Geometry_msgsPoseStampedMaximumWireBytes* = 328
const Ros1Geometry_msgsPoseStampedCodecIdentity* = "UWVMROS1_c7266bddd3b2f53e635603df8e18d33514783e7f49bc4d10c2d9d95fb72b4883"
const Ros1Geometry_msgsPoseStampedNativeType* = "geometry_msgs/PoseStamped"
const Ros1Geometry_msgsPoseStampedNativeIdentity* = ""
proc initRos1Geometry_msgsPoseStamped*(): Ros1Geometry_msgsPoseStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`pose` = initRos1Geometry_msgsPose()
proc writeFields*(value: Ros1Geometry_msgsPoseStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
proc readRos1Geometry_msgsPoseStamped*(r: var Reader): Ros1Geometry_msgsPoseStamped =
  result = initRos1Geometry_msgsPoseStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`pose` = readRos1Geometry_msgsPose(r)
proc encode*(value: Ros1Geometry_msgsPoseStamped): seq[byte] =
  var w = initWriter(328)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPoseStamped*(b: seq[byte]): Ros1Geometry_msgsPoseStamped =
  var r = initReader(b,328)
  result = readRos1Geometry_msgsPoseStamped(r)
  finish(r)
type Ros1Easy_handeye_msgsTargetPoseList* = object
  `home_pose`*: Ros1Geometry_msgsPoseStamped
  `target_poses`*: seq[Ros1Geometry_msgsPoseStamped]
  `current_target_pose_index`*: int64
const Ros1Easy_handeye_msgsTargetPoseListMaximumWireBytes* = 2964
const Ros1Easy_handeye_msgsTargetPoseListCodecIdentity* = "UWVMROS1_88fadc5096aa9285f5f9e24f64ff9192bfe46cadff0ae15763857b777d76a881"
const Ros1Easy_handeye_msgsTargetPoseListNativeType* = "easy_handeye_msgs/TargetPoseList"
const Ros1Easy_handeye_msgsTargetPoseListNativeIdentity* = ""
proc initRos1Easy_handeye_msgsTargetPoseList*(): Ros1Easy_handeye_msgsTargetPoseList =
  result.`home_pose` = initRos1Geometry_msgsPoseStamped()
  result.`target_poses` = @[]
  result.`current_target_pose_index` = 0
proc writeFields*(value: Ros1Easy_handeye_msgsTargetPoseList; w: var Writer) =
  writeFields(value.`home_pose`,w)
  if value.`target_poses`.len > 8: fail(22)
  putInteger(w,uint32(value.`target_poses`.len))
  for e in value.`target_poses`:
    writeFields(e,w)
  putInteger(w,value.`current_target_pose_index`)
proc readRos1Easy_handeye_msgsTargetPoseList*(r: var Reader): Ros1Easy_handeye_msgsTargetPoseList =
  result = initRos1Easy_handeye_msgsTargetPoseList()
  result.`home_pose` = readRos1Geometry_msgsPoseStamped(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`target_poses` = newSeq[Ros1Geometry_msgsPoseStamped](count1)
  for i in 0..<count1:
    result.`target_poses`[i] = readRos1Geometry_msgsPoseStamped(r)
  result.`current_target_pose_index` = getInteger(r,int64)
proc encode*(value: Ros1Easy_handeye_msgsTargetPoseList): seq[byte] =
  var w = initWriter(2964)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsTargetPoseList*(b: seq[byte]): Ros1Easy_handeye_msgsTargetPoseList =
  var r = initReader(b,2964)
  result = readRos1Easy_handeye_msgsTargetPoseList(r)
  finish(r)
type Ros1Easy_handeye_msgsCheckStartingPoseResponse* = object
  `can_calibrate`*: bool
  `target_poses`*: Ros1Easy_handeye_msgsTargetPoseList
const Ros1Easy_handeye_msgsCheckStartingPoseResponseMaximumWireBytes* = 2965
const Ros1Easy_handeye_msgsCheckStartingPoseResponseCodecIdentity* = "UWVMROS1_26c11afb0477b87d076dfbdb624db02eda6c84501177b02f8e42cad4516c9abe"
const Ros1Easy_handeye_msgsCheckStartingPoseResponseNativeType* = "easy_handeye_msgs/CheckStartingPoseResponse"
const Ros1Easy_handeye_msgsCheckStartingPoseResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsCheckStartingPoseResponse*(): Ros1Easy_handeye_msgsCheckStartingPoseResponse =
  result.`can_calibrate` = false
  result.`target_poses` = initRos1Easy_handeye_msgsTargetPoseList()
proc writeFields*(value: Ros1Easy_handeye_msgsCheckStartingPoseResponse; w: var Writer) =
  putBool(w,value.`can_calibrate`)
  writeFields(value.`target_poses`,w)
proc readRos1Easy_handeye_msgsCheckStartingPoseResponse*(r: var Reader): Ros1Easy_handeye_msgsCheckStartingPoseResponse =
  result = initRos1Easy_handeye_msgsCheckStartingPoseResponse()
  result.`can_calibrate` = getBool(r)
  result.`target_poses` = readRos1Easy_handeye_msgsTargetPoseList(r)
proc encode*(value: Ros1Easy_handeye_msgsCheckStartingPoseResponse): seq[byte] =
  var w = initWriter(2965)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsCheckStartingPoseResponse*(b: seq[byte]): Ros1Easy_handeye_msgsCheckStartingPoseResponse =
  var r = initReader(b,2965)
  result = readRos1Easy_handeye_msgsCheckStartingPoseResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsComputeCalibrationRequest* = object
const Ros1Easy_handeye_msgsComputeCalibrationRequestMaximumWireBytes* = 0
const Ros1Easy_handeye_msgsComputeCalibrationRequestCodecIdentity* = "UWVMROS1_9a3a6b91c791068f25b7287aa2538d557e293268c8efdf0175514f64412cb998"
const Ros1Easy_handeye_msgsComputeCalibrationRequestNativeType* = "easy_handeye_msgs/ComputeCalibrationRequest"
const Ros1Easy_handeye_msgsComputeCalibrationRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsComputeCalibrationRequest*(): Ros1Easy_handeye_msgsComputeCalibrationRequest =
  discard
proc writeFields*(value: Ros1Easy_handeye_msgsComputeCalibrationRequest; w: var Writer) =
  discard
proc readRos1Easy_handeye_msgsComputeCalibrationRequest*(r: var Reader): Ros1Easy_handeye_msgsComputeCalibrationRequest =
  result = initRos1Easy_handeye_msgsComputeCalibrationRequest()
proc encode*(value: Ros1Easy_handeye_msgsComputeCalibrationRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsComputeCalibrationRequest*(b: seq[byte]): Ros1Easy_handeye_msgsComputeCalibrationRequest =
  var r = initReader(b,0)
  result = readRos1Easy_handeye_msgsComputeCalibrationRequest(r)
  finish(r)
type Ros1Geometry_msgsVector3* = object
  `x`*: float64
  `y`*: float64
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
type Ros1Geometry_msgsTransform* = object
  `translation`*: Ros1Geometry_msgsVector3
  `rotation`*: Ros1Geometry_msgsQuaternion
const Ros1Geometry_msgsTransformMaximumWireBytes* = 56
const Ros1Geometry_msgsTransformCodecIdentity* = "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085"
const Ros1Geometry_msgsTransformNativeType* = "geometry_msgs/Transform"
const Ros1Geometry_msgsTransformNativeIdentity* = ""
proc initRos1Geometry_msgsTransform*(): Ros1Geometry_msgsTransform =
  result.`translation` = initRos1Geometry_msgsVector3()
  result.`rotation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Geometry_msgsTransform; w: var Writer) =
  writeFields(value.`translation`,w)
  writeFields(value.`rotation`,w)
proc readRos1Geometry_msgsTransform*(r: var Reader): Ros1Geometry_msgsTransform =
  result = initRos1Geometry_msgsTransform()
  result.`translation` = readRos1Geometry_msgsVector3(r)
  result.`rotation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Geometry_msgsTransform): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsTransform*(b: seq[byte]): Ros1Geometry_msgsTransform =
  var r = initReader(b,56)
  result = readRos1Geometry_msgsTransform(r)
  finish(r)
type Ros1Geometry_msgsTransformStamped* = object
  `header`*: Ros1Std_msgsHeader
  `child_frame_id`*: string
  `transform`*: Ros1Geometry_msgsTransform
const Ros1Geometry_msgsTransformStampedMaximumWireBytes* = 588
const Ros1Geometry_msgsTransformStampedCodecIdentity* = "UWVMROS1_aca34d1b6d4741062f931da8292f79a9448841fd1d212c35e23a69ae8edc40a8"
const Ros1Geometry_msgsTransformStampedNativeType* = "geometry_msgs/TransformStamped"
const Ros1Geometry_msgsTransformStampedNativeIdentity* = ""
proc initRos1Geometry_msgsTransformStamped*(): Ros1Geometry_msgsTransformStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`child_frame_id` = ""
  result.`transform` = initRos1Geometry_msgsTransform()
proc writeFields*(value: Ros1Geometry_msgsTransformStamped; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`child_frame_id`,256)
  writeFields(value.`transform`,w)
proc readRos1Geometry_msgsTransformStamped*(r: var Reader): Ros1Geometry_msgsTransformStamped =
  result = initRos1Geometry_msgsTransformStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`child_frame_id` = getString(r,256)
  result.`transform` = readRos1Geometry_msgsTransform(r)
proc encode*(value: Ros1Geometry_msgsTransformStamped): seq[byte] =
  var w = initWriter(588)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsTransformStamped*(b: seq[byte]): Ros1Geometry_msgsTransformStamped =
  var r = initReader(b,588)
  result = readRos1Geometry_msgsTransformStamped(r)
  finish(r)
type Ros1Easy_handeye_msgsHandeyeCalibration* = object
  `eye_on_hand`*: bool
  `transform`*: Ros1Geometry_msgsTransformStamped
const Ros1Easy_handeye_msgsHandeyeCalibrationMaximumWireBytes* = 589
const Ros1Easy_handeye_msgsHandeyeCalibrationCodecIdentity* = "UWVMROS1_97090e29d44c66824b480167dba1bc1a356f32adc9dd3017964e72d55f676ed1"
const Ros1Easy_handeye_msgsHandeyeCalibrationNativeType* = "easy_handeye_msgs/HandeyeCalibration"
const Ros1Easy_handeye_msgsHandeyeCalibrationNativeIdentity* = ""
proc initRos1Easy_handeye_msgsHandeyeCalibration*(): Ros1Easy_handeye_msgsHandeyeCalibration =
  result.`eye_on_hand` = false
  result.`transform` = initRos1Geometry_msgsTransformStamped()
proc writeFields*(value: Ros1Easy_handeye_msgsHandeyeCalibration; w: var Writer) =
  putBool(w,value.`eye_on_hand`)
  writeFields(value.`transform`,w)
proc readRos1Easy_handeye_msgsHandeyeCalibration*(r: var Reader): Ros1Easy_handeye_msgsHandeyeCalibration =
  result = initRos1Easy_handeye_msgsHandeyeCalibration()
  result.`eye_on_hand` = getBool(r)
  result.`transform` = readRos1Geometry_msgsTransformStamped(r)
proc encode*(value: Ros1Easy_handeye_msgsHandeyeCalibration): seq[byte] =
  var w = initWriter(589)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsHandeyeCalibration*(b: seq[byte]): Ros1Easy_handeye_msgsHandeyeCalibration =
  var r = initReader(b,589)
  result = readRos1Easy_handeye_msgsHandeyeCalibration(r)
  finish(r)
type Ros1Easy_handeye_msgsComputeCalibrationResponse* = object
  `valid`*: bool
  `calibration`*: Ros1Easy_handeye_msgsHandeyeCalibration
const Ros1Easy_handeye_msgsComputeCalibrationResponseMaximumWireBytes* = 590
const Ros1Easy_handeye_msgsComputeCalibrationResponseCodecIdentity* = "UWVMROS1_6c47afe3d660734f25066602d1bc3237d0de0fef07f8d278939df035601a3856"
const Ros1Easy_handeye_msgsComputeCalibrationResponseNativeType* = "easy_handeye_msgs/ComputeCalibrationResponse"
const Ros1Easy_handeye_msgsComputeCalibrationResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsComputeCalibrationResponse*(): Ros1Easy_handeye_msgsComputeCalibrationResponse =
  result.`valid` = false
  result.`calibration` = initRos1Easy_handeye_msgsHandeyeCalibration()
proc writeFields*(value: Ros1Easy_handeye_msgsComputeCalibrationResponse; w: var Writer) =
  putBool(w,value.`valid`)
  writeFields(value.`calibration`,w)
proc readRos1Easy_handeye_msgsComputeCalibrationResponse*(r: var Reader): Ros1Easy_handeye_msgsComputeCalibrationResponse =
  result = initRos1Easy_handeye_msgsComputeCalibrationResponse()
  result.`valid` = getBool(r)
  result.`calibration` = readRos1Easy_handeye_msgsHandeyeCalibration(r)
proc encode*(value: Ros1Easy_handeye_msgsComputeCalibrationResponse): seq[byte] =
  var w = initWriter(590)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsComputeCalibrationResponse*(b: seq[byte]): Ros1Easy_handeye_msgsComputeCalibrationResponse =
  var r = initReader(b,590)
  result = readRos1Easy_handeye_msgsComputeCalibrationResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsEnumerateTargetPosesRequest* = object
const Ros1Easy_handeye_msgsEnumerateTargetPosesRequestMaximumWireBytes* = 0
const Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodecIdentity* = "UWVMROS1_b326fb3c9cbc970f4066e60e7787a7ecce78d0168109b5d2017806d0c5fb18b6"
const Ros1Easy_handeye_msgsEnumerateTargetPosesRequestNativeType* = "easy_handeye_msgs/EnumerateTargetPosesRequest"
const Ros1Easy_handeye_msgsEnumerateTargetPosesRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsEnumerateTargetPosesRequest*(): Ros1Easy_handeye_msgsEnumerateTargetPosesRequest =
  discard
proc writeFields*(value: Ros1Easy_handeye_msgsEnumerateTargetPosesRequest; w: var Writer) =
  discard
proc readRos1Easy_handeye_msgsEnumerateTargetPosesRequest*(r: var Reader): Ros1Easy_handeye_msgsEnumerateTargetPosesRequest =
  result = initRos1Easy_handeye_msgsEnumerateTargetPosesRequest()
proc encode*(value: Ros1Easy_handeye_msgsEnumerateTargetPosesRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsEnumerateTargetPosesRequest*(b: seq[byte]): Ros1Easy_handeye_msgsEnumerateTargetPosesRequest =
  var r = initReader(b,0)
  result = readRos1Easy_handeye_msgsEnumerateTargetPosesRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsEnumerateTargetPosesResponse* = object
  `target_poses`*: Ros1Easy_handeye_msgsTargetPoseList
const Ros1Easy_handeye_msgsEnumerateTargetPosesResponseMaximumWireBytes* = 2964
const Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodecIdentity* = "UWVMROS1_22821ba135f62766771c0a50abe568897c086c18d3a3913db0ae29dda2d98ce9"
const Ros1Easy_handeye_msgsEnumerateTargetPosesResponseNativeType* = "easy_handeye_msgs/EnumerateTargetPosesResponse"
const Ros1Easy_handeye_msgsEnumerateTargetPosesResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsEnumerateTargetPosesResponse*(): Ros1Easy_handeye_msgsEnumerateTargetPosesResponse =
  result.`target_poses` = initRos1Easy_handeye_msgsTargetPoseList()
proc writeFields*(value: Ros1Easy_handeye_msgsEnumerateTargetPosesResponse; w: var Writer) =
  writeFields(value.`target_poses`,w)
proc readRos1Easy_handeye_msgsEnumerateTargetPosesResponse*(r: var Reader): Ros1Easy_handeye_msgsEnumerateTargetPosesResponse =
  result = initRos1Easy_handeye_msgsEnumerateTargetPosesResponse()
  result.`target_poses` = readRos1Easy_handeye_msgsTargetPoseList(r)
proc encode*(value: Ros1Easy_handeye_msgsEnumerateTargetPosesResponse): seq[byte] =
  var w = initWriter(2964)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse*(b: seq[byte]): Ros1Easy_handeye_msgsEnumerateTargetPosesResponse =
  var r = initReader(b,2964)
  result = readRos1Easy_handeye_msgsEnumerateTargetPosesResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsExecutePlanRequest* = object
const Ros1Easy_handeye_msgsExecutePlanRequestMaximumWireBytes* = 0
const Ros1Easy_handeye_msgsExecutePlanRequestCodecIdentity* = "UWVMROS1_07d845828171563871b7617f6890afb7d15f136f95af7db9dafe0bd784479f3c"
const Ros1Easy_handeye_msgsExecutePlanRequestNativeType* = "easy_handeye_msgs/ExecutePlanRequest"
const Ros1Easy_handeye_msgsExecutePlanRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsExecutePlanRequest*(): Ros1Easy_handeye_msgsExecutePlanRequest =
  discard
proc writeFields*(value: Ros1Easy_handeye_msgsExecutePlanRequest; w: var Writer) =
  discard
proc readRos1Easy_handeye_msgsExecutePlanRequest*(r: var Reader): Ros1Easy_handeye_msgsExecutePlanRequest =
  result = initRos1Easy_handeye_msgsExecutePlanRequest()
proc encode*(value: Ros1Easy_handeye_msgsExecutePlanRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsExecutePlanRequest*(b: seq[byte]): Ros1Easy_handeye_msgsExecutePlanRequest =
  var r = initReader(b,0)
  result = readRos1Easy_handeye_msgsExecutePlanRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsExecutePlanResponse* = object
  `success`*: bool
const Ros1Easy_handeye_msgsExecutePlanResponseMaximumWireBytes* = 1
const Ros1Easy_handeye_msgsExecutePlanResponseCodecIdentity* = "UWVMROS1_fab7ba93fde4252e3253dad045788be4a28a1cc3235551c3925f9d4c961b5201"
const Ros1Easy_handeye_msgsExecutePlanResponseNativeType* = "easy_handeye_msgs/ExecutePlanResponse"
const Ros1Easy_handeye_msgsExecutePlanResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsExecutePlanResponse*(): Ros1Easy_handeye_msgsExecutePlanResponse =
  result.`success` = false
proc writeFields*(value: Ros1Easy_handeye_msgsExecutePlanResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Easy_handeye_msgsExecutePlanResponse*(r: var Reader): Ros1Easy_handeye_msgsExecutePlanResponse =
  result = initRos1Easy_handeye_msgsExecutePlanResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Easy_handeye_msgsExecutePlanResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsExecutePlanResponse*(b: seq[byte]): Ros1Easy_handeye_msgsExecutePlanResponse =
  var r = initReader(b,1)
  result = readRos1Easy_handeye_msgsExecutePlanResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsListAlgorithmsRequest* = object
const Ros1Easy_handeye_msgsListAlgorithmsRequestMaximumWireBytes* = 0
const Ros1Easy_handeye_msgsListAlgorithmsRequestCodecIdentity* = "UWVMROS1_37355f8ff36ec035e22e4716f4e4963417a52f73affb570ccd330d40357e58a1"
const Ros1Easy_handeye_msgsListAlgorithmsRequestNativeType* = "easy_handeye_msgs/ListAlgorithmsRequest"
const Ros1Easy_handeye_msgsListAlgorithmsRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsListAlgorithmsRequest*(): Ros1Easy_handeye_msgsListAlgorithmsRequest =
  discard
proc writeFields*(value: Ros1Easy_handeye_msgsListAlgorithmsRequest; w: var Writer) =
  discard
proc readRos1Easy_handeye_msgsListAlgorithmsRequest*(r: var Reader): Ros1Easy_handeye_msgsListAlgorithmsRequest =
  result = initRos1Easy_handeye_msgsListAlgorithmsRequest()
proc encode*(value: Ros1Easy_handeye_msgsListAlgorithmsRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsListAlgorithmsRequest*(b: seq[byte]): Ros1Easy_handeye_msgsListAlgorithmsRequest =
  var r = initReader(b,0)
  result = readRos1Easy_handeye_msgsListAlgorithmsRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsListAlgorithmsResponse* = object
  `algorithms`*: seq[string]
  `current_algorithm`*: string
const Ros1Easy_handeye_msgsListAlgorithmsResponseMaximumWireBytes* = 4424
const Ros1Easy_handeye_msgsListAlgorithmsResponseCodecIdentity* = "UWVMROS1_9117a612c5ea330ec82ab01c84cbfbb1f7a3c3fdeda6cc2ef5573cdf8627aa04"
const Ros1Easy_handeye_msgsListAlgorithmsResponseNativeType* = "easy_handeye_msgs/ListAlgorithmsResponse"
const Ros1Easy_handeye_msgsListAlgorithmsResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsListAlgorithmsResponse*(): Ros1Easy_handeye_msgsListAlgorithmsResponse =
  result.`algorithms` = @[]
  result.`current_algorithm` = ""
proc writeFields*(value: Ros1Easy_handeye_msgsListAlgorithmsResponse; w: var Writer) =
  if value.`algorithms`.len > 16: fail(22)
  putInteger(w,uint32(value.`algorithms`.len))
  for e in value.`algorithms`:
    putString(w,e,256)
  putString(w,value.`current_algorithm`,256)
proc readRos1Easy_handeye_msgsListAlgorithmsResponse*(r: var Reader): Ros1Easy_handeye_msgsListAlgorithmsResponse =
  result = initRos1Easy_handeye_msgsListAlgorithmsResponse()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`algorithms` = newSeq[string](count0)
  for i in 0..<count0:
    result.`algorithms`[i] = getString(r,256)
  result.`current_algorithm` = getString(r,256)
proc encode*(value: Ros1Easy_handeye_msgsListAlgorithmsResponse): seq[byte] =
  var w = initWriter(4424)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsListAlgorithmsResponse*(b: seq[byte]): Ros1Easy_handeye_msgsListAlgorithmsResponse =
  var r = initReader(b,4424)
  result = readRos1Easy_handeye_msgsListAlgorithmsResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest* = object
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestMaximumWireBytes* = 0
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodecIdentity* = "UWVMROS1_8fe688f2e3b2f638b9cf027d09c0932787ba89cc253e38a577f30eacd2a2dede"
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestNativeType* = "easy_handeye_msgs/PlanToSelectedTargetPoseRequest"
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest*(): Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest =
  discard
proc writeFields*(value: Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest; w: var Writer) =
  discard
proc readRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest*(r: var Reader): Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest =
  result = initRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest()
proc encode*(value: Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest*(b: seq[byte]): Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest =
  var r = initReader(b,0)
  result = readRos1Easy_handeye_msgsPlanToSelectedTargetPoseRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse* = object
  `success`*: bool
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseMaximumWireBytes* = 1
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodecIdentity* = "UWVMROS1_36cd8dbf0bde4a28be39a4d8f2ae62e5d0c812d497266f2b04fd212eaf31d884"
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseNativeType* = "easy_handeye_msgs/PlanToSelectedTargetPoseResponse"
const Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse*(): Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse =
  result.`success` = false
proc writeFields*(value: Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse*(r: var Reader): Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse =
  result = initRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse*(b: seq[byte]): Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse =
  var r = initReader(b,1)
  result = readRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsRemoveSampleRequest* = object
  `sample_index`*: int8
const Ros1Easy_handeye_msgsRemoveSampleRequestMaximumWireBytes* = 1
const Ros1Easy_handeye_msgsRemoveSampleRequestCodecIdentity* = "UWVMROS1_8aef990bd52391a06da78acd25d6e7e7edf28369cea8e1c899c77bb07d365102"
const Ros1Easy_handeye_msgsRemoveSampleRequestNativeType* = "easy_handeye_msgs/RemoveSampleRequest"
const Ros1Easy_handeye_msgsRemoveSampleRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsRemoveSampleRequest*(): Ros1Easy_handeye_msgsRemoveSampleRequest =
  result.`sample_index` = 0
proc writeFields*(value: Ros1Easy_handeye_msgsRemoveSampleRequest; w: var Writer) =
  putInteger(w,value.`sample_index`)
proc readRos1Easy_handeye_msgsRemoveSampleRequest*(r: var Reader): Ros1Easy_handeye_msgsRemoveSampleRequest =
  result = initRos1Easy_handeye_msgsRemoveSampleRequest()
  result.`sample_index` = getInteger(r,int8)
proc encode*(value: Ros1Easy_handeye_msgsRemoveSampleRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsRemoveSampleRequest*(b: seq[byte]): Ros1Easy_handeye_msgsRemoveSampleRequest =
  var r = initReader(b,1)
  result = readRos1Easy_handeye_msgsRemoveSampleRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsSampleList* = object
  `hand_world_samples`*: seq[Ros1Geometry_msgsTransform]
  `camera_marker_samples`*: seq[Ros1Geometry_msgsTransform]
const Ros1Easy_handeye_msgsSampleListMaximumWireBytes* = 904
const Ros1Easy_handeye_msgsSampleListCodecIdentity* = "UWVMROS1_08184f786ead6b56ce3573af53cda314a034ed6b073704ef3666504699a00f92"
const Ros1Easy_handeye_msgsSampleListNativeType* = "easy_handeye_msgs/SampleList"
const Ros1Easy_handeye_msgsSampleListNativeIdentity* = ""
proc initRos1Easy_handeye_msgsSampleList*(): Ros1Easy_handeye_msgsSampleList =
  result.`hand_world_samples` = @[]
  result.`camera_marker_samples` = @[]
proc writeFields*(value: Ros1Easy_handeye_msgsSampleList; w: var Writer) =
  if value.`hand_world_samples`.len > 8: fail(22)
  putInteger(w,uint32(value.`hand_world_samples`.len))
  for e in value.`hand_world_samples`:
    writeFields(e,w)
  if value.`camera_marker_samples`.len > 8: fail(22)
  putInteger(w,uint32(value.`camera_marker_samples`.len))
  for e in value.`camera_marker_samples`:
    writeFields(e,w)
proc readRos1Easy_handeye_msgsSampleList*(r: var Reader): Ros1Easy_handeye_msgsSampleList =
  result = initRos1Easy_handeye_msgsSampleList()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`hand_world_samples` = newSeq[Ros1Geometry_msgsTransform](count0)
  for i in 0..<count0:
    result.`hand_world_samples`[i] = readRos1Geometry_msgsTransform(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`camera_marker_samples` = newSeq[Ros1Geometry_msgsTransform](count1)
  for i in 0..<count1:
    result.`camera_marker_samples`[i] = readRos1Geometry_msgsTransform(r)
proc encode*(value: Ros1Easy_handeye_msgsSampleList): seq[byte] =
  var w = initWriter(904)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsSampleList*(b: seq[byte]): Ros1Easy_handeye_msgsSampleList =
  var r = initReader(b,904)
  result = readRos1Easy_handeye_msgsSampleList(r)
  finish(r)
type Ros1Easy_handeye_msgsRemoveSampleResponse* = object
  `samples`*: Ros1Easy_handeye_msgsSampleList
const Ros1Easy_handeye_msgsRemoveSampleResponseMaximumWireBytes* = 904
const Ros1Easy_handeye_msgsRemoveSampleResponseCodecIdentity* = "UWVMROS1_ee655ac7197c2ab2b302383dd34009d58f1a09a531c929195f1eb91e26176804"
const Ros1Easy_handeye_msgsRemoveSampleResponseNativeType* = "easy_handeye_msgs/RemoveSampleResponse"
const Ros1Easy_handeye_msgsRemoveSampleResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsRemoveSampleResponse*(): Ros1Easy_handeye_msgsRemoveSampleResponse =
  result.`samples` = initRos1Easy_handeye_msgsSampleList()
proc writeFields*(value: Ros1Easy_handeye_msgsRemoveSampleResponse; w: var Writer) =
  writeFields(value.`samples`,w)
proc readRos1Easy_handeye_msgsRemoveSampleResponse*(r: var Reader): Ros1Easy_handeye_msgsRemoveSampleResponse =
  result = initRos1Easy_handeye_msgsRemoveSampleResponse()
  result.`samples` = readRos1Easy_handeye_msgsSampleList(r)
proc encode*(value: Ros1Easy_handeye_msgsRemoveSampleResponse): seq[byte] =
  var w = initWriter(904)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsRemoveSampleResponse*(b: seq[byte]): Ros1Easy_handeye_msgsRemoveSampleResponse =
  var r = initReader(b,904)
  result = readRos1Easy_handeye_msgsRemoveSampleResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsSelectTargetPoseRequest* = object
  `target_pose_index`*: int64
const Ros1Easy_handeye_msgsSelectTargetPoseRequestMaximumWireBytes* = 8
const Ros1Easy_handeye_msgsSelectTargetPoseRequestCodecIdentity* = "UWVMROS1_d4ddd810f9199385b81f53a2a4cc505c8a19f724733cd2dd7c0556c4b75ec9e1"
const Ros1Easy_handeye_msgsSelectTargetPoseRequestNativeType* = "easy_handeye_msgs/SelectTargetPoseRequest"
const Ros1Easy_handeye_msgsSelectTargetPoseRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsSelectTargetPoseRequest*(): Ros1Easy_handeye_msgsSelectTargetPoseRequest =
  result.`target_pose_index` = 0
proc writeFields*(value: Ros1Easy_handeye_msgsSelectTargetPoseRequest; w: var Writer) =
  putInteger(w,value.`target_pose_index`)
proc readRos1Easy_handeye_msgsSelectTargetPoseRequest*(r: var Reader): Ros1Easy_handeye_msgsSelectTargetPoseRequest =
  result = initRos1Easy_handeye_msgsSelectTargetPoseRequest()
  result.`target_pose_index` = getInteger(r,int64)
proc encode*(value: Ros1Easy_handeye_msgsSelectTargetPoseRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsSelectTargetPoseRequest*(b: seq[byte]): Ros1Easy_handeye_msgsSelectTargetPoseRequest =
  var r = initReader(b,8)
  result = readRos1Easy_handeye_msgsSelectTargetPoseRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsSelectTargetPoseResponse* = object
  `success`*: bool
  `target_poses`*: Ros1Easy_handeye_msgsTargetPoseList
const Ros1Easy_handeye_msgsSelectTargetPoseResponseMaximumWireBytes* = 2965
const Ros1Easy_handeye_msgsSelectTargetPoseResponseCodecIdentity* = "UWVMROS1_8565990ebb5f321a2f3d5d72a4ea549b3b5d9a9b25ad549c82e60a2d6f79f7ce"
const Ros1Easy_handeye_msgsSelectTargetPoseResponseNativeType* = "easy_handeye_msgs/SelectTargetPoseResponse"
const Ros1Easy_handeye_msgsSelectTargetPoseResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsSelectTargetPoseResponse*(): Ros1Easy_handeye_msgsSelectTargetPoseResponse =
  result.`success` = false
  result.`target_poses` = initRos1Easy_handeye_msgsTargetPoseList()
proc writeFields*(value: Ros1Easy_handeye_msgsSelectTargetPoseResponse; w: var Writer) =
  putBool(w,value.`success`)
  writeFields(value.`target_poses`,w)
proc readRos1Easy_handeye_msgsSelectTargetPoseResponse*(r: var Reader): Ros1Easy_handeye_msgsSelectTargetPoseResponse =
  result = initRos1Easy_handeye_msgsSelectTargetPoseResponse()
  result.`success` = getBool(r)
  result.`target_poses` = readRos1Easy_handeye_msgsTargetPoseList(r)
proc encode*(value: Ros1Easy_handeye_msgsSelectTargetPoseResponse): seq[byte] =
  var w = initWriter(2965)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsSelectTargetPoseResponse*(b: seq[byte]): Ros1Easy_handeye_msgsSelectTargetPoseResponse =
  var r = initReader(b,2965)
  result = readRos1Easy_handeye_msgsSelectTargetPoseResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsSetAlgorithmRequest* = object
  `new_algorithm`*: string
const Ros1Easy_handeye_msgsSetAlgorithmRequestMaximumWireBytes* = 260
const Ros1Easy_handeye_msgsSetAlgorithmRequestCodecIdentity* = "UWVMROS1_b1a591e215ef089e0ac0e8504c06f0a35d4dcfb4f257553a7d9af22526a3312a"
const Ros1Easy_handeye_msgsSetAlgorithmRequestNativeType* = "easy_handeye_msgs/SetAlgorithmRequest"
const Ros1Easy_handeye_msgsSetAlgorithmRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsSetAlgorithmRequest*(): Ros1Easy_handeye_msgsSetAlgorithmRequest =
  result.`new_algorithm` = ""
proc writeFields*(value: Ros1Easy_handeye_msgsSetAlgorithmRequest; w: var Writer) =
  putString(w,value.`new_algorithm`,256)
proc readRos1Easy_handeye_msgsSetAlgorithmRequest*(r: var Reader): Ros1Easy_handeye_msgsSetAlgorithmRequest =
  result = initRos1Easy_handeye_msgsSetAlgorithmRequest()
  result.`new_algorithm` = getString(r,256)
proc encode*(value: Ros1Easy_handeye_msgsSetAlgorithmRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsSetAlgorithmRequest*(b: seq[byte]): Ros1Easy_handeye_msgsSetAlgorithmRequest =
  var r = initReader(b,260)
  result = readRos1Easy_handeye_msgsSetAlgorithmRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsSetAlgorithmResponse* = object
  `success`*: bool
const Ros1Easy_handeye_msgsSetAlgorithmResponseMaximumWireBytes* = 1
const Ros1Easy_handeye_msgsSetAlgorithmResponseCodecIdentity* = "UWVMROS1_13b67482d24c9b1105e896a2a64c9d83418e15ecb690e72810725d3eb82003bc"
const Ros1Easy_handeye_msgsSetAlgorithmResponseNativeType* = "easy_handeye_msgs/SetAlgorithmResponse"
const Ros1Easy_handeye_msgsSetAlgorithmResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsSetAlgorithmResponse*(): Ros1Easy_handeye_msgsSetAlgorithmResponse =
  result.`success` = false
proc writeFields*(value: Ros1Easy_handeye_msgsSetAlgorithmResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Easy_handeye_msgsSetAlgorithmResponse*(r: var Reader): Ros1Easy_handeye_msgsSetAlgorithmResponse =
  result = initRos1Easy_handeye_msgsSetAlgorithmResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Easy_handeye_msgsSetAlgorithmResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsSetAlgorithmResponse*(b: seq[byte]): Ros1Easy_handeye_msgsSetAlgorithmResponse =
  var r = initReader(b,1)
  result = readRos1Easy_handeye_msgsSetAlgorithmResponse(r)
  finish(r)
type Ros1Easy_handeye_msgsTakeSampleRequest* = object
const Ros1Easy_handeye_msgsTakeSampleRequestMaximumWireBytes* = 0
const Ros1Easy_handeye_msgsTakeSampleRequestCodecIdentity* = "UWVMROS1_da50bca8888696f3b4df1d1a0ce41aa91ea6bdb60ec0f509ff1e8012464b6a56"
const Ros1Easy_handeye_msgsTakeSampleRequestNativeType* = "easy_handeye_msgs/TakeSampleRequest"
const Ros1Easy_handeye_msgsTakeSampleRequestNativeIdentity* = ""
proc initRos1Easy_handeye_msgsTakeSampleRequest*(): Ros1Easy_handeye_msgsTakeSampleRequest =
  discard
proc writeFields*(value: Ros1Easy_handeye_msgsTakeSampleRequest; w: var Writer) =
  discard
proc readRos1Easy_handeye_msgsTakeSampleRequest*(r: var Reader): Ros1Easy_handeye_msgsTakeSampleRequest =
  result = initRos1Easy_handeye_msgsTakeSampleRequest()
proc encode*(value: Ros1Easy_handeye_msgsTakeSampleRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsTakeSampleRequest*(b: seq[byte]): Ros1Easy_handeye_msgsTakeSampleRequest =
  var r = initReader(b,0)
  result = readRos1Easy_handeye_msgsTakeSampleRequest(r)
  finish(r)
type Ros1Easy_handeye_msgsTakeSampleResponse* = object
  `samples`*: Ros1Easy_handeye_msgsSampleList
const Ros1Easy_handeye_msgsTakeSampleResponseMaximumWireBytes* = 904
const Ros1Easy_handeye_msgsTakeSampleResponseCodecIdentity* = "UWVMROS1_ed83ae7869d2981c366f6b6145b51265b99d8e1d75a82d5089f564b29c1699d8"
const Ros1Easy_handeye_msgsTakeSampleResponseNativeType* = "easy_handeye_msgs/TakeSampleResponse"
const Ros1Easy_handeye_msgsTakeSampleResponseNativeIdentity* = ""
proc initRos1Easy_handeye_msgsTakeSampleResponse*(): Ros1Easy_handeye_msgsTakeSampleResponse =
  result.`samples` = initRos1Easy_handeye_msgsSampleList()
proc writeFields*(value: Ros1Easy_handeye_msgsTakeSampleResponse; w: var Writer) =
  writeFields(value.`samples`,w)
proc readRos1Easy_handeye_msgsTakeSampleResponse*(r: var Reader): Ros1Easy_handeye_msgsTakeSampleResponse =
  result = initRos1Easy_handeye_msgsTakeSampleResponse()
  result.`samples` = readRos1Easy_handeye_msgsSampleList(r)
proc encode*(value: Ros1Easy_handeye_msgsTakeSampleResponse): seq[byte] =
  var w = initWriter(904)
  writeFields(value,w)
  w.bytes
proc decodeRos1Easy_handeye_msgsTakeSampleResponse*(b: seq[byte]): Ros1Easy_handeye_msgsTakeSampleResponse =
  var r = initReader(b,904)
  result = readRos1Easy_handeye_msgsTakeSampleResponse(r)
  finish(r)
type Ros1Geographic_msgsGeoPoint* = object
  `latitude`*: float64
  `longitude`*: float64
  `altitude`*: float64
const Ros1Geographic_msgsGeoPointMaximumWireBytes* = 24
const Ros1Geographic_msgsGeoPointCodecIdentity* = "UWVMROS1_ec50d91b012128fee7d4f57b375b8f558e246779cd434b9fe50d45e86d42e07b"
const Ros1Geographic_msgsGeoPointNativeType* = "geographic_msgs/GeoPoint"
const Ros1Geographic_msgsGeoPointNativeIdentity* = ""
proc initRos1Geographic_msgsGeoPoint*(): Ros1Geographic_msgsGeoPoint =
  result.`latitude` = 0
  result.`longitude` = 0
  result.`altitude` = 0
proc writeFields*(value: Ros1Geographic_msgsGeoPoint; w: var Writer) =
  putFloat64(w,value.`latitude`)
  putFloat64(w,value.`longitude`)
  putFloat64(w,value.`altitude`)
proc readRos1Geographic_msgsGeoPoint*(r: var Reader): Ros1Geographic_msgsGeoPoint =
  result = initRos1Geographic_msgsGeoPoint()
  result.`latitude` = getFloat64(r)
  result.`longitude` = getFloat64(r)
  result.`altitude` = getFloat64(r)
proc encode*(value: Ros1Geographic_msgsGeoPoint): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geographic_msgsGeoPoint*(b: seq[byte]): Ros1Geographic_msgsGeoPoint =
  var r = initReader(b,24)
  result = readRos1Geographic_msgsGeoPoint(r)
  finish(r)
type Ros1Geographic_msgsGeoPose* = object
  `position`*: Ros1Geographic_msgsGeoPoint
  `orientation`*: Ros1Geometry_msgsQuaternion
const Ros1Geographic_msgsGeoPoseMaximumWireBytes* = 56
const Ros1Geographic_msgsGeoPoseCodecIdentity* = "UWVMROS1_ebeb1378d616de152f891e28a7ff2308e6d755a6cf9f5d30666375fd6a649789"
const Ros1Geographic_msgsGeoPoseNativeType* = "geographic_msgs/GeoPose"
const Ros1Geographic_msgsGeoPoseNativeIdentity* = ""
proc initRos1Geographic_msgsGeoPose*(): Ros1Geographic_msgsGeoPose =
  result.`position` = initRos1Geographic_msgsGeoPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Geographic_msgsGeoPose; w: var Writer) =
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos1Geographic_msgsGeoPose*(r: var Reader): Ros1Geographic_msgsGeoPose =
  result = initRos1Geographic_msgsGeoPose()
  result.`position` = readRos1Geographic_msgsGeoPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Geographic_msgsGeoPose): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geographic_msgsGeoPose*(b: seq[byte]): Ros1Geographic_msgsGeoPose =
  var r = initReader(b,56)
  result = readRos1Geographic_msgsGeoPose(r)
  finish(r)
type Ros1Geometry_msgsPointStamped* = object
  `header`*: Ros1Std_msgsHeader
  `point`*: Ros1Geometry_msgsPoint
const Ros1Geometry_msgsPointStampedMaximumWireBytes* = 296
const Ros1Geometry_msgsPointStampedCodecIdentity* = "UWVMROS1_af031472d543ea47133f33fe6831cabff92403fe95e6a8c16822d00fa3533c64"
const Ros1Geometry_msgsPointStampedNativeType* = "geometry_msgs/PointStamped"
const Ros1Geometry_msgsPointStampedNativeIdentity* = ""
proc initRos1Geometry_msgsPointStamped*(): Ros1Geometry_msgsPointStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`point` = initRos1Geometry_msgsPoint()
proc writeFields*(value: Ros1Geometry_msgsPointStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`point`,w)
proc readRos1Geometry_msgsPointStamped*(r: var Reader): Ros1Geometry_msgsPointStamped =
  result = initRos1Geometry_msgsPointStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`point` = readRos1Geometry_msgsPoint(r)
proc encode*(value: Ros1Geometry_msgsPointStamped): seq[byte] =
  var w = initWriter(296)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPointStamped*(b: seq[byte]): Ros1Geometry_msgsPointStamped =
  var r = initReader(b,296)
  result = readRos1Geometry_msgsPointStamped(r)
  finish(r)
type Ros1Geometry_msgsPoseWithCovarianceStamped* = object
  `header`*: Ros1Std_msgsHeader
  `pose`*: Ros1Geometry_msgsPoseWithCovariance
const Ros1Geometry_msgsPoseWithCovarianceStampedMaximumWireBytes* = 616
const Ros1Geometry_msgsPoseWithCovarianceStampedCodecIdentity* = "UWVMROS1_06a1c60d720ab18417e5a166c6af54e076b2afb2020b447e65d2e47312bd66b4"
const Ros1Geometry_msgsPoseWithCovarianceStampedNativeType* = "geometry_msgs/PoseWithCovarianceStamped"
const Ros1Geometry_msgsPoseWithCovarianceStampedNativeIdentity* = ""
proc initRos1Geometry_msgsPoseWithCovarianceStamped*(): Ros1Geometry_msgsPoseWithCovarianceStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`pose` = initRos1Geometry_msgsPoseWithCovariance()
proc writeFields*(value: Ros1Geometry_msgsPoseWithCovarianceStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
proc readRos1Geometry_msgsPoseWithCovarianceStamped*(r: var Reader): Ros1Geometry_msgsPoseWithCovarianceStamped =
  result = initRos1Geometry_msgsPoseWithCovarianceStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`pose` = readRos1Geometry_msgsPoseWithCovariance(r)
proc encode*(value: Ros1Geometry_msgsPoseWithCovarianceStamped): seq[byte] =
  var w = initWriter(616)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsPoseWithCovarianceStamped*(b: seq[byte]): Ros1Geometry_msgsPoseWithCovarianceStamped =
  var r = initReader(b,616)
  result = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
  finish(r)
type Ros1Geometry_msgsTwist* = object
  `linear`*: Ros1Geometry_msgsVector3
  `angular`*: Ros1Geometry_msgsVector3
const Ros1Geometry_msgsTwistMaximumWireBytes* = 48
const Ros1Geometry_msgsTwistCodecIdentity* = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
const Ros1Geometry_msgsTwistNativeType* = "geometry_msgs/Twist"
const Ros1Geometry_msgsTwistNativeIdentity* = ""
proc initRos1Geometry_msgsTwist*(): Ros1Geometry_msgsTwist =
  result.`linear` = initRos1Geometry_msgsVector3()
  result.`angular` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1Geometry_msgsTwist; w: var Writer) =
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
proc readRos1Geometry_msgsTwist*(r: var Reader): Ros1Geometry_msgsTwist =
  result = initRos1Geometry_msgsTwist()
  result.`linear` = readRos1Geometry_msgsVector3(r)
  result.`angular` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1Geometry_msgsTwist): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Geometry_msgsTwist*(b: seq[byte]): Ros1Geometry_msgsTwist =
  var r = initReader(b,48)
  result = readRos1Geometry_msgsTwist(r)
  finish(r)
type Ros1Grid_map_msgsGetGridMapRequest* = object
  `frame_id`*: string
  `position_x`*: float64
  `position_y`*: float64
  `length_x`*: float64
  `length_y`*: float64
  `layers`*: seq[string]
const Ros1Grid_map_msgsGetGridMapRequestMaximumWireBytes* = 4456
const Ros1Grid_map_msgsGetGridMapRequestCodecIdentity* = "UWVMROS1_6a6ca67b0c3336808432126c2d35434f441f72cfc58cbd72273c9f6641d5ac36"
const Ros1Grid_map_msgsGetGridMapRequestNativeType* = "grid_map_msgs/GetGridMapRequest"
const Ros1Grid_map_msgsGetGridMapRequestNativeIdentity* = ""
proc initRos1Grid_map_msgsGetGridMapRequest*(): Ros1Grid_map_msgsGetGridMapRequest =
  result.`frame_id` = ""
  result.`position_x` = 0
  result.`position_y` = 0
  result.`length_x` = 0
  result.`length_y` = 0
  result.`layers` = @[]
proc writeFields*(value: Ros1Grid_map_msgsGetGridMapRequest; w: var Writer) =
  putString(w,value.`frame_id`,256)
  putFloat64(w,value.`position_x`)
  putFloat64(w,value.`position_y`)
  putFloat64(w,value.`length_x`)
  putFloat64(w,value.`length_y`)
  if value.`layers`.len > 16: fail(22)
  putInteger(w,uint32(value.`layers`.len))
  for e in value.`layers`:
    putString(w,e,256)
proc readRos1Grid_map_msgsGetGridMapRequest*(r: var Reader): Ros1Grid_map_msgsGetGridMapRequest =
  result = initRos1Grid_map_msgsGetGridMapRequest()
  result.`frame_id` = getString(r,256)
  result.`position_x` = getFloat64(r)
  result.`position_y` = getFloat64(r)
  result.`length_x` = getFloat64(r)
  result.`length_y` = getFloat64(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 16: fail(22)
  let count5 = int(rawcount5)
  result.`layers` = newSeq[string](count5)
  for i in 0..<count5:
    result.`layers`[i] = getString(r,256)
proc encode*(value: Ros1Grid_map_msgsGetGridMapRequest): seq[byte] =
  var w = initWriter(4456)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsGetGridMapRequest*(b: seq[byte]): Ros1Grid_map_msgsGetGridMapRequest =
  var r = initReader(b,4456)
  result = readRos1Grid_map_msgsGetGridMapRequest(r)
  finish(r)
type Ros1Grid_map_msgsGridMapInfo* = object
  `header`*: Ros1Std_msgsHeader
  `resolution`*: float64
  `length_x`*: float64
  `length_y`*: float64
  `pose`*: Ros1Geometry_msgsPose
const Ros1Grid_map_msgsGridMapInfoMaximumWireBytes* = 352
const Ros1Grid_map_msgsGridMapInfoCodecIdentity* = "UWVMROS1_627e4d580bed755f37e9d10c88a0e199ce45070e06a37870ee4ec26d33529707"
const Ros1Grid_map_msgsGridMapInfoNativeType* = "grid_map_msgs/GridMapInfo"
const Ros1Grid_map_msgsGridMapInfoNativeIdentity* = ""
proc initRos1Grid_map_msgsGridMapInfo*(): Ros1Grid_map_msgsGridMapInfo =
  result.`header` = initRos1Std_msgsHeader()
  result.`resolution` = 0
  result.`length_x` = 0
  result.`length_y` = 0
  result.`pose` = initRos1Geometry_msgsPose()
proc writeFields*(value: Ros1Grid_map_msgsGridMapInfo; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat64(w,value.`resolution`)
  putFloat64(w,value.`length_x`)
  putFloat64(w,value.`length_y`)
  writeFields(value.`pose`,w)
proc readRos1Grid_map_msgsGridMapInfo*(r: var Reader): Ros1Grid_map_msgsGridMapInfo =
  result = initRos1Grid_map_msgsGridMapInfo()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`resolution` = getFloat64(r)
  result.`length_x` = getFloat64(r)
  result.`length_y` = getFloat64(r)
  result.`pose` = readRos1Geometry_msgsPose(r)
proc encode*(value: Ros1Grid_map_msgsGridMapInfo): seq[byte] =
  var w = initWriter(352)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsGridMapInfo*(b: seq[byte]): Ros1Grid_map_msgsGridMapInfo =
  var r = initReader(b,352)
  result = readRos1Grid_map_msgsGridMapInfo(r)
  finish(r)
type Ros1Std_msgsMultiArrayDimension* = object
  `label`*: string
  `size`*: uint32
  `stride`*: uint32
const Ros1Std_msgsMultiArrayDimensionMaximumWireBytes* = 76
const Ros1Std_msgsMultiArrayDimensionCodecIdentity* = "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444"
const Ros1Std_msgsMultiArrayDimensionNativeType* = "std_msgs/MultiArrayDimension"
const Ros1Std_msgsMultiArrayDimensionNativeIdentity* = ""
proc initRos1Std_msgsMultiArrayDimension*(): Ros1Std_msgsMultiArrayDimension =
  result.`label` = ""
  result.`size` = 0
  result.`stride` = 0
proc writeFields*(value: Ros1Std_msgsMultiArrayDimension; w: var Writer) =
  putString(w,value.`label`,64)
  putInteger(w,value.`size`)
  putInteger(w,value.`stride`)
proc readRos1Std_msgsMultiArrayDimension*(r: var Reader): Ros1Std_msgsMultiArrayDimension =
  result = initRos1Std_msgsMultiArrayDimension()
  result.`label` = getString(r,64)
  result.`size` = getInteger(r,uint32)
  result.`stride` = getInteger(r,uint32)
proc encode*(value: Ros1Std_msgsMultiArrayDimension): seq[byte] =
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
proc decodeRos1Std_msgsMultiArrayDimension*(b: seq[byte]): Ros1Std_msgsMultiArrayDimension =
  var r = initReader(b,76)
  result = readRos1Std_msgsMultiArrayDimension(r)
  finish(r)
type Ros1Std_msgsMultiArrayLayout* = object
  `dim`*: seq[Ros1Std_msgsMultiArrayDimension]
  `data_offset`*: uint32
const Ros1Std_msgsMultiArrayLayoutMaximumWireBytes* = 236
const Ros1Std_msgsMultiArrayLayoutCodecIdentity* = "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e"
const Ros1Std_msgsMultiArrayLayoutNativeType* = "std_msgs/MultiArrayLayout"
const Ros1Std_msgsMultiArrayLayoutNativeIdentity* = ""
proc initRos1Std_msgsMultiArrayLayout*(): Ros1Std_msgsMultiArrayLayout =
  result.`dim` = @[]
  result.`data_offset` = 0
proc writeFields*(value: Ros1Std_msgsMultiArrayLayout; w: var Writer) =
  if value.`dim`.len > 3: fail(22)
  putInteger(w,uint32(value.`dim`.len))
  for e in value.`dim`:
    writeFields(e,w)
  putInteger(w,value.`data_offset`)
proc readRos1Std_msgsMultiArrayLayout*(r: var Reader): Ros1Std_msgsMultiArrayLayout =
  result = initRos1Std_msgsMultiArrayLayout()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 3: fail(22)
  let count0 = int(rawcount0)
  result.`dim` = newSeq[Ros1Std_msgsMultiArrayDimension](count0)
  for i in 0..<count0:
    result.`dim`[i] = readRos1Std_msgsMultiArrayDimension(r)
  result.`data_offset` = getInteger(r,uint32)
proc encode*(value: Ros1Std_msgsMultiArrayLayout): seq[byte] =
  var w = initWriter(236)
  writeFields(value,w)
  w.bytes
proc decodeRos1Std_msgsMultiArrayLayout*(b: seq[byte]): Ros1Std_msgsMultiArrayLayout =
  var r = initReader(b,236)
  result = readRos1Std_msgsMultiArrayLayout(r)
  finish(r)
type Ros1Std_msgsFloat32MultiArray* = object
  `layout`*: Ros1Std_msgsMultiArrayLayout
  `data`*: seq[float32]
const Ros1Std_msgsFloat32MultiArrayMaximumWireBytes* = 752
const Ros1Std_msgsFloat32MultiArrayCodecIdentity* = "UWVMROS1_efe70dd93d2d9760e318849238c230d1d52af194ed792d632a2bd8f1c0abd615"
const Ros1Std_msgsFloat32MultiArrayNativeType* = "std_msgs/Float32MultiArray"
const Ros1Std_msgsFloat32MultiArrayNativeIdentity* = ""
proc initRos1Std_msgsFloat32MultiArray*(): Ros1Std_msgsFloat32MultiArray =
  result.`layout` = initRos1Std_msgsMultiArrayLayout()
  result.`data` = @[]
proc writeFields*(value: Ros1Std_msgsFloat32MultiArray; w: var Writer) =
  writeFields(value.`layout`,w)
  if value.`data`.len > 128: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putFloat32(w,e)
proc readRos1Std_msgsFloat32MultiArray*(r: var Reader): Ros1Std_msgsFloat32MultiArray =
  result = initRos1Std_msgsFloat32MultiArray()
  result.`layout` = readRos1Std_msgsMultiArrayLayout(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 128: fail(22)
  let count1 = int(rawcount1)
  result.`data` = newSeq[float32](count1)
  for i in 0..<count1:
    result.`data`[i] = getFloat32(r)
proc encode*(value: Ros1Std_msgsFloat32MultiArray): seq[byte] =
  var w = initWriter(752)
  writeFields(value,w)
  w.bytes
proc decodeRos1Std_msgsFloat32MultiArray*(b: seq[byte]): Ros1Std_msgsFloat32MultiArray =
  var r = initReader(b,752)
  result = readRos1Std_msgsFloat32MultiArray(r)
  finish(r)
type Ros1Grid_map_msgsGridMap* = object
  `info`*: Ros1Grid_map_msgsGridMapInfo
  `layers`*: seq[string]
  `basic_layers`*: seq[string]
  `data`*: seq[Ros1Std_msgsFloat32MultiArray]
  `outer_start_index`*: uint16
  `inner_start_index`*: uint16
const Ros1Grid_map_msgsGridMapMaximumWireBytes* = 11696
const Ros1Grid_map_msgsGridMapCodecIdentity* = "UWVMROS1_167b329af64d534462a99d146a62b749270df1859e9aa93124653d431194289d"
const Ros1Grid_map_msgsGridMapNativeType* = "grid_map_msgs/GridMap"
const Ros1Grid_map_msgsGridMapNativeIdentity* = ""
proc initRos1Grid_map_msgsGridMap*(): Ros1Grid_map_msgsGridMap =
  result.`info` = initRos1Grid_map_msgsGridMapInfo()
  result.`layers` = @[]
  result.`basic_layers` = @[]
  result.`data` = @[]
  result.`outer_start_index` = 0
  result.`inner_start_index` = 0
proc writeFields*(value: Ros1Grid_map_msgsGridMap; w: var Writer) =
  writeFields(value.`info`,w)
  if value.`layers`.len > 16: fail(22)
  putInteger(w,uint32(value.`layers`.len))
  for e in value.`layers`:
    putString(w,e,256)
  if value.`basic_layers`.len > 16: fail(22)
  putInteger(w,uint32(value.`basic_layers`.len))
  for e in value.`basic_layers`:
    putString(w,e,256)
  if value.`data`.len > 4: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
  putInteger(w,value.`outer_start_index`)
  putInteger(w,value.`inner_start_index`)
proc readRos1Grid_map_msgsGridMap*(r: var Reader): Ros1Grid_map_msgsGridMap =
  result = initRos1Grid_map_msgsGridMap()
  result.`info` = readRos1Grid_map_msgsGridMapInfo(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`layers` = newSeq[string](count1)
  for i in 0..<count1:
    result.`layers`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`basic_layers` = newSeq[string](count2)
  for i in 0..<count2:
    result.`basic_layers`[i] = getString(r,256)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`data` = newSeq[Ros1Std_msgsFloat32MultiArray](count3)
  for i in 0..<count3:
    result.`data`[i] = readRos1Std_msgsFloat32MultiArray(r)
  result.`outer_start_index` = getInteger(r,uint16)
  result.`inner_start_index` = getInteger(r,uint16)
proc encode*(value: Ros1Grid_map_msgsGridMap): seq[byte] =
  var w = initWriter(11696)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsGridMap*(b: seq[byte]): Ros1Grid_map_msgsGridMap =
  var r = initReader(b,11696)
  result = readRos1Grid_map_msgsGridMap(r)
  finish(r)
type Ros1Grid_map_msgsGetGridMapResponse* = object
  `map`*: Ros1Grid_map_msgsGridMap
const Ros1Grid_map_msgsGetGridMapResponseMaximumWireBytes* = 11696
const Ros1Grid_map_msgsGetGridMapResponseCodecIdentity* = "UWVMROS1_e403330b5d2e338510fba789f8ea7702fccad33bc683825b1d0847397f6c5008"
const Ros1Grid_map_msgsGetGridMapResponseNativeType* = "grid_map_msgs/GetGridMapResponse"
const Ros1Grid_map_msgsGetGridMapResponseNativeIdentity* = ""
proc initRos1Grid_map_msgsGetGridMapResponse*(): Ros1Grid_map_msgsGetGridMapResponse =
  result.`map` = initRos1Grid_map_msgsGridMap()
proc writeFields*(value: Ros1Grid_map_msgsGetGridMapResponse; w: var Writer) =
  writeFields(value.`map`,w)
proc readRos1Grid_map_msgsGetGridMapResponse*(r: var Reader): Ros1Grid_map_msgsGetGridMapResponse =
  result = initRos1Grid_map_msgsGetGridMapResponse()
  result.`map` = readRos1Grid_map_msgsGridMap(r)
proc encode*(value: Ros1Grid_map_msgsGetGridMapResponse): seq[byte] =
  var w = initWriter(11696)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsGetGridMapResponse*(b: seq[byte]): Ros1Grid_map_msgsGetGridMapResponse =
  var r = initReader(b,11696)
  result = readRos1Grid_map_msgsGetGridMapResponse(r)
  finish(r)
type Ros1Grid_map_msgsGetGridMapInfoRequest* = object
const Ros1Grid_map_msgsGetGridMapInfoRequestMaximumWireBytes* = 0
const Ros1Grid_map_msgsGetGridMapInfoRequestCodecIdentity* = "UWVMROS1_7afb29ab4a3f53004d18ff0b392894163d9957e135559a4305534e3f5b3b0ac2"
const Ros1Grid_map_msgsGetGridMapInfoRequestNativeType* = "grid_map_msgs/GetGridMapInfoRequest"
const Ros1Grid_map_msgsGetGridMapInfoRequestNativeIdentity* = ""
proc initRos1Grid_map_msgsGetGridMapInfoRequest*(): Ros1Grid_map_msgsGetGridMapInfoRequest =
  discard
proc writeFields*(value: Ros1Grid_map_msgsGetGridMapInfoRequest; w: var Writer) =
  discard
proc readRos1Grid_map_msgsGetGridMapInfoRequest*(r: var Reader): Ros1Grid_map_msgsGetGridMapInfoRequest =
  result = initRos1Grid_map_msgsGetGridMapInfoRequest()
proc encode*(value: Ros1Grid_map_msgsGetGridMapInfoRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsGetGridMapInfoRequest*(b: seq[byte]): Ros1Grid_map_msgsGetGridMapInfoRequest =
  var r = initReader(b,0)
  result = readRos1Grid_map_msgsGetGridMapInfoRequest(r)
  finish(r)
type Ros1Grid_map_msgsGetGridMapInfoResponse* = object
  `info`*: Ros1Grid_map_msgsGridMapInfo
const Ros1Grid_map_msgsGetGridMapInfoResponseMaximumWireBytes* = 352
const Ros1Grid_map_msgsGetGridMapInfoResponseCodecIdentity* = "UWVMROS1_c0222f0160cc17d21a49b2bf9b5d003b683c36a4b7a8cc9b72d7d4c3e776b65e"
const Ros1Grid_map_msgsGetGridMapInfoResponseNativeType* = "grid_map_msgs/GetGridMapInfoResponse"
const Ros1Grid_map_msgsGetGridMapInfoResponseNativeIdentity* = ""
proc initRos1Grid_map_msgsGetGridMapInfoResponse*(): Ros1Grid_map_msgsGetGridMapInfoResponse =
  result.`info` = initRos1Grid_map_msgsGridMapInfo()
proc writeFields*(value: Ros1Grid_map_msgsGetGridMapInfoResponse; w: var Writer) =
  writeFields(value.`info`,w)
proc readRos1Grid_map_msgsGetGridMapInfoResponse*(r: var Reader): Ros1Grid_map_msgsGetGridMapInfoResponse =
  result = initRos1Grid_map_msgsGetGridMapInfoResponse()
  result.`info` = readRos1Grid_map_msgsGridMapInfo(r)
proc encode*(value: Ros1Grid_map_msgsGetGridMapInfoResponse): seq[byte] =
  var w = initWriter(352)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsGetGridMapInfoResponse*(b: seq[byte]): Ros1Grid_map_msgsGetGridMapInfoResponse =
  var r = initReader(b,352)
  result = readRos1Grid_map_msgsGetGridMapInfoResponse(r)
  finish(r)
type Ros1Grid_map_msgsProcessFileRequest* = object
  `file_path`*: string
  `topic_name`*: string
const Ros1Grid_map_msgsProcessFileRequestMaximumWireBytes* = 520
const Ros1Grid_map_msgsProcessFileRequestCodecIdentity* = "UWVMROS1_cce0ea934d85569bac32220e0eee614d3b97ea8e1017b2afa4bbef87f8ead341"
const Ros1Grid_map_msgsProcessFileRequestNativeType* = "grid_map_msgs/ProcessFileRequest"
const Ros1Grid_map_msgsProcessFileRequestNativeIdentity* = ""
proc initRos1Grid_map_msgsProcessFileRequest*(): Ros1Grid_map_msgsProcessFileRequest =
  result.`file_path` = ""
  result.`topic_name` = ""
proc writeFields*(value: Ros1Grid_map_msgsProcessFileRequest; w: var Writer) =
  putString(w,value.`file_path`,256)
  putString(w,value.`topic_name`,256)
proc readRos1Grid_map_msgsProcessFileRequest*(r: var Reader): Ros1Grid_map_msgsProcessFileRequest =
  result = initRos1Grid_map_msgsProcessFileRequest()
  result.`file_path` = getString(r,256)
  result.`topic_name` = getString(r,256)
proc encode*(value: Ros1Grid_map_msgsProcessFileRequest): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsProcessFileRequest*(b: seq[byte]): Ros1Grid_map_msgsProcessFileRequest =
  var r = initReader(b,520)
  result = readRos1Grid_map_msgsProcessFileRequest(r)
  finish(r)
type Ros1Grid_map_msgsProcessFileResponse* = object
  `success`*: bool
const Ros1Grid_map_msgsProcessFileResponseMaximumWireBytes* = 1
const Ros1Grid_map_msgsProcessFileResponseCodecIdentity* = "UWVMROS1_2529f5ec87079d451a084b9e95f77692729735a9f59d95a2fcc2aec4bec2f5e4"
const Ros1Grid_map_msgsProcessFileResponseNativeType* = "grid_map_msgs/ProcessFileResponse"
const Ros1Grid_map_msgsProcessFileResponseNativeIdentity* = ""
proc initRos1Grid_map_msgsProcessFileResponse*(): Ros1Grid_map_msgsProcessFileResponse =
  result.`success` = false
proc writeFields*(value: Ros1Grid_map_msgsProcessFileResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Grid_map_msgsProcessFileResponse*(r: var Reader): Ros1Grid_map_msgsProcessFileResponse =
  result = initRos1Grid_map_msgsProcessFileResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Grid_map_msgsProcessFileResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsProcessFileResponse*(b: seq[byte]): Ros1Grid_map_msgsProcessFileResponse =
  var r = initReader(b,1)
  result = readRos1Grid_map_msgsProcessFileResponse(r)
  finish(r)
type Ros1Grid_map_msgsSetGridMapRequest* = object
  `map`*: Ros1Grid_map_msgsGridMap
const Ros1Grid_map_msgsSetGridMapRequestMaximumWireBytes* = 11696
const Ros1Grid_map_msgsSetGridMapRequestCodecIdentity* = "UWVMROS1_f48dc789c03ace0841b7dc092a21f0b89cb2eaf73e2a4b1e396b071c7470af49"
const Ros1Grid_map_msgsSetGridMapRequestNativeType* = "grid_map_msgs/SetGridMapRequest"
const Ros1Grid_map_msgsSetGridMapRequestNativeIdentity* = ""
proc initRos1Grid_map_msgsSetGridMapRequest*(): Ros1Grid_map_msgsSetGridMapRequest =
  result.`map` = initRos1Grid_map_msgsGridMap()
proc writeFields*(value: Ros1Grid_map_msgsSetGridMapRequest; w: var Writer) =
  writeFields(value.`map`,w)
proc readRos1Grid_map_msgsSetGridMapRequest*(r: var Reader): Ros1Grid_map_msgsSetGridMapRequest =
  result = initRos1Grid_map_msgsSetGridMapRequest()
  result.`map` = readRos1Grid_map_msgsGridMap(r)
proc encode*(value: Ros1Grid_map_msgsSetGridMapRequest): seq[byte] =
  var w = initWriter(11696)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsSetGridMapRequest*(b: seq[byte]): Ros1Grid_map_msgsSetGridMapRequest =
  var r = initReader(b,11696)
  result = readRos1Grid_map_msgsSetGridMapRequest(r)
  finish(r)
type Ros1Grid_map_msgsSetGridMapResponse* = object
const Ros1Grid_map_msgsSetGridMapResponseMaximumWireBytes* = 0
const Ros1Grid_map_msgsSetGridMapResponseCodecIdentity* = "UWVMROS1_7fa15943c57206e71fb112bd714245e6f92938232cf399f4b368ba22dc336e89"
const Ros1Grid_map_msgsSetGridMapResponseNativeType* = "grid_map_msgs/SetGridMapResponse"
const Ros1Grid_map_msgsSetGridMapResponseNativeIdentity* = ""
proc initRos1Grid_map_msgsSetGridMapResponse*(): Ros1Grid_map_msgsSetGridMapResponse =
  discard
proc writeFields*(value: Ros1Grid_map_msgsSetGridMapResponse; w: var Writer) =
  discard
proc readRos1Grid_map_msgsSetGridMapResponse*(r: var Reader): Ros1Grid_map_msgsSetGridMapResponse =
  result = initRos1Grid_map_msgsSetGridMapResponse()
proc encode*(value: Ros1Grid_map_msgsSetGridMapResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Grid_map_msgsSetGridMapResponse*(b: seq[byte]): Ros1Grid_map_msgsSetGridMapResponse =
  var r = initReader(b,0)
  result = readRos1Grid_map_msgsSetGridMapResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeECJointMotordata* = object
  `l_pos_pitch`*: int32
  `l_pos_yaw`*: int32
  `l_pos_end`*: int32
  `r_pos_pitch`*: int32
  `r_pos_yaw`*: int32
  `r_pos_end`*: int32
const Ros1H12pro_controller_nodeECJointMotordataMaximumWireBytes* = 24
const Ros1H12pro_controller_nodeECJointMotordataCodecIdentity* = "UWVMROS1_38d70c1b0afa7384e478e0fb65b5c55915218b8be4904a0861c4df3b6d5269af"
const Ros1H12pro_controller_nodeECJointMotordataNativeType* = "h12pro_controller_node/ECJointMotordata"
const Ros1H12pro_controller_nodeECJointMotordataNativeIdentity* = ""
proc initRos1H12pro_controller_nodeECJointMotordata*(): Ros1H12pro_controller_nodeECJointMotordata =
  result.`l_pos_pitch` = 0
  result.`l_pos_yaw` = 0
  result.`l_pos_end` = 0
  result.`r_pos_pitch` = 0
  result.`r_pos_yaw` = 0
  result.`r_pos_end` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeECJointMotordata; w: var Writer) =
  putInteger(w,value.`l_pos_pitch`)
  putInteger(w,value.`l_pos_yaw`)
  putInteger(w,value.`l_pos_end`)
  putInteger(w,value.`r_pos_pitch`)
  putInteger(w,value.`r_pos_yaw`)
  putInteger(w,value.`r_pos_end`)
proc readRos1H12pro_controller_nodeECJointMotordata*(r: var Reader): Ros1H12pro_controller_nodeECJointMotordata =
  result = initRos1H12pro_controller_nodeECJointMotordata()
  result.`l_pos_pitch` = getInteger(r,int32)
  result.`l_pos_yaw` = getInteger(r,int32)
  result.`l_pos_end` = getInteger(r,int32)
  result.`r_pos_pitch` = getInteger(r,int32)
  result.`r_pos_yaw` = getInteger(r,int32)
  result.`r_pos_end` = getInteger(r,int32)
proc encode*(value: Ros1H12pro_controller_nodeECJointMotordata): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeECJointMotordata*(b: seq[byte]): Ros1H12pro_controller_nodeECJointMotordata =
  var r = initReader(b,24)
  result = readRos1H12pro_controller_nodeECJointMotordata(r)
  finish(r)
type Ros1H12pro_controller_nodeExecuteArmActionRequest* = object
  `action_name`*: string
const Ros1H12pro_controller_nodeExecuteArmActionRequestMaximumWireBytes* = 260
const Ros1H12pro_controller_nodeExecuteArmActionRequestCodecIdentity* = "UWVMROS1_f056f42108d3d0648731ef1a107350b875c51411a94e1f6f1d6f8abeaad89127"
const Ros1H12pro_controller_nodeExecuteArmActionRequestNativeType* = "h12pro_controller_node/ExecuteArmActionRequest"
const Ros1H12pro_controller_nodeExecuteArmActionRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodeExecuteArmActionRequest*(): Ros1H12pro_controller_nodeExecuteArmActionRequest =
  result.`action_name` = ""
proc writeFields*(value: Ros1H12pro_controller_nodeExecuteArmActionRequest; w: var Writer) =
  putString(w,value.`action_name`,256)
proc readRos1H12pro_controller_nodeExecuteArmActionRequest*(r: var Reader): Ros1H12pro_controller_nodeExecuteArmActionRequest =
  result = initRos1H12pro_controller_nodeExecuteArmActionRequest()
  result.`action_name` = getString(r,256)
proc encode*(value: Ros1H12pro_controller_nodeExecuteArmActionRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeExecuteArmActionRequest*(b: seq[byte]): Ros1H12pro_controller_nodeExecuteArmActionRequest =
  var r = initReader(b,260)
  result = readRos1H12pro_controller_nodeExecuteArmActionRequest(r)
  finish(r)
type Ros1H12pro_controller_nodeExecuteArmActionResponse* = object
  `success`*: bool
  `message`*: string
const Ros1H12pro_controller_nodeExecuteArmActionResponseMaximumWireBytes* = 261
const Ros1H12pro_controller_nodeExecuteArmActionResponseCodecIdentity* = "UWVMROS1_cf99103830460daeb7bb958251cc3bec1918b83e8e1e2a47dea0303f413a9977"
const Ros1H12pro_controller_nodeExecuteArmActionResponseNativeType* = "h12pro_controller_node/ExecuteArmActionResponse"
const Ros1H12pro_controller_nodeExecuteArmActionResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeExecuteArmActionResponse*(): Ros1H12pro_controller_nodeExecuteArmActionResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1H12pro_controller_nodeExecuteArmActionResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1H12pro_controller_nodeExecuteArmActionResponse*(r: var Reader): Ros1H12pro_controller_nodeExecuteArmActionResponse =
  result = initRos1H12pro_controller_nodeExecuteArmActionResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1H12pro_controller_nodeExecuteArmActionResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeExecuteArmActionResponse*(b: seq[byte]): Ros1H12pro_controller_nodeExecuteArmActionResponse =
  var r = initReader(b,261)
  result = readRos1H12pro_controller_nodeExecuteArmActionResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeRobotActionState* = object
  `state`*: uint8
const Ros1H12pro_controller_nodeRobotActionStateMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeRobotActionStateCodecIdentity* = "UWVMROS1_5f4ddca56a2ea070c4631f83b37a6a45772fea9612e3ed9341dc062639b70a7c"
const Ros1H12pro_controller_nodeRobotActionStateNativeType* = "h12pro_controller_node/RobotActionState"
const Ros1H12pro_controller_nodeRobotActionStateNativeIdentity* = ""
proc initRos1H12pro_controller_nodeRobotActionState*(): Ros1H12pro_controller_nodeRobotActionState =
  result.`state` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeRobotActionState; w: var Writer) =
  putInteger(w,value.`state`)
proc readRos1H12pro_controller_nodeRobotActionState*(r: var Reader): Ros1H12pro_controller_nodeRobotActionState =
  result = initRos1H12pro_controller_nodeRobotActionState()
  result.`state` = getInteger(r,uint8)
proc encode*(value: Ros1H12pro_controller_nodeRobotActionState): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeRobotActionState*(b: seq[byte]): Ros1H12pro_controller_nodeRobotActionState =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeRobotActionState(r)
  finish(r)
type Ros1H12pro_controller_nodeUpdateH12CustomizeConfig* = object
  `update_msg`*: string
const Ros1H12pro_controller_nodeUpdateH12CustomizeConfigMaximumWireBytes* = 260
const Ros1H12pro_controller_nodeUpdateH12CustomizeConfigCodecIdentity* = "UWVMROS1_7946916c322fac4fccf83ab6833512a225f5b15a61e6b2958be64f0e40ecb696"
const Ros1H12pro_controller_nodeUpdateH12CustomizeConfigNativeType* = "h12pro_controller_node/UpdateH12CustomizeConfig"
const Ros1H12pro_controller_nodeUpdateH12CustomizeConfigNativeIdentity* = ""
proc initRos1H12pro_controller_nodeUpdateH12CustomizeConfig*(): Ros1H12pro_controller_nodeUpdateH12CustomizeConfig =
  result.`update_msg` = ""
proc writeFields*(value: Ros1H12pro_controller_nodeUpdateH12CustomizeConfig; w: var Writer) =
  putString(w,value.`update_msg`,256)
proc readRos1H12pro_controller_nodeUpdateH12CustomizeConfig*(r: var Reader): Ros1H12pro_controller_nodeUpdateH12CustomizeConfig =
  result = initRos1H12pro_controller_nodeUpdateH12CustomizeConfig()
  result.`update_msg` = getString(r,256)
proc encode*(value: Ros1H12pro_controller_nodeUpdateH12CustomizeConfig): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig*(b: seq[byte]): Ros1H12pro_controller_nodeUpdateH12CustomizeConfig =
  var r = initReader(b,260)
  result = readRos1H12pro_controller_nodeUpdateH12CustomizeConfig(r)
  finish(r)
type Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest* = object
  `control_mode`*: bool
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodecIdentity* = "UWVMROS1_9b65e35bfdb3893f6d46b8a6b949eba0f5b2e8cb4d40867764413818ea8c110b"
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestNativeType* = "h12pro_controller_node/changeAMBACCtrlModeRequest"
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest*(): Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest =
  result.`control_mode` = false
proc writeFields*(value: Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest; w: var Writer) =
  putBool(w,value.`control_mode`)
proc readRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest*(r: var Reader): Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest =
  result = initRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest()
  result.`control_mode` = getBool(r)
proc encode*(value: Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest*(b: seq[byte]): Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeChangeAMBACCtrlModeRequest(r)
  finish(r)
type Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse* = object
  `result`*: bool
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodecIdentity* = "UWVMROS1_35234b0139456ff2ca4dbabbe8339ef5a281571fb8836827a1d370bb2c74d187"
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseNativeType* = "h12pro_controller_node/changeAMBACCtrlModeResponse"
const Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse*(): Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse =
  result.`result` = false
proc writeFields*(value: Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse*(r: var Reader): Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse =
  result = initRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse*(b: seq[byte]): Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeChangeArmCtrlModeRequest* = object
  `control_mode`*: bool
const Ros1H12pro_controller_nodeChangeArmCtrlModeRequestMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodecIdentity* = "UWVMROS1_b06930c1767f5522fc78b4b57289373c0d472bdb03c515f6f6e216997cde3a20"
const Ros1H12pro_controller_nodeChangeArmCtrlModeRequestNativeType* = "h12pro_controller_node/changeArmCtrlModeRequest"
const Ros1H12pro_controller_nodeChangeArmCtrlModeRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodeChangeArmCtrlModeRequest*(): Ros1H12pro_controller_nodeChangeArmCtrlModeRequest =
  result.`control_mode` = false
proc writeFields*(value: Ros1H12pro_controller_nodeChangeArmCtrlModeRequest; w: var Writer) =
  putBool(w,value.`control_mode`)
proc readRos1H12pro_controller_nodeChangeArmCtrlModeRequest*(r: var Reader): Ros1H12pro_controller_nodeChangeArmCtrlModeRequest =
  result = initRos1H12pro_controller_nodeChangeArmCtrlModeRequest()
  result.`control_mode` = getBool(r)
proc encode*(value: Ros1H12pro_controller_nodeChangeArmCtrlModeRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeChangeArmCtrlModeRequest*(b: seq[byte]): Ros1H12pro_controller_nodeChangeArmCtrlModeRequest =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeChangeArmCtrlModeRequest(r)
  finish(r)
type Ros1H12pro_controller_nodeChangeArmCtrlModeResponse* = object
  `result`*: bool
const Ros1H12pro_controller_nodeChangeArmCtrlModeResponseMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodecIdentity* = "UWVMROS1_b0d76c7e9b9f80975d329b2f527fd498779611f977494483494b56ecc4f398b5"
const Ros1H12pro_controller_nodeChangeArmCtrlModeResponseNativeType* = "h12pro_controller_node/changeArmCtrlModeResponse"
const Ros1H12pro_controller_nodeChangeArmCtrlModeResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeChangeArmCtrlModeResponse*(): Ros1H12pro_controller_nodeChangeArmCtrlModeResponse =
  result.`result` = false
proc writeFields*(value: Ros1H12pro_controller_nodeChangeArmCtrlModeResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1H12pro_controller_nodeChangeArmCtrlModeResponse*(r: var Reader): Ros1H12pro_controller_nodeChangeArmCtrlModeResponse =
  result = initRos1H12pro_controller_nodeChangeArmCtrlModeResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1H12pro_controller_nodeChangeArmCtrlModeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse*(b: seq[byte]): Ros1H12pro_controller_nodeChangeArmCtrlModeResponse =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeChangeArmCtrlModeResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest* = object
  `config_name`*: string
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestMaximumWireBytes* = 260
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodecIdentity* = "UWVMROS1_d60045478a17e0a4fa13126456d2db9279248ef18fbb21781c162b528e4dc3a2"
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestNativeType* = "h12pro_controller_node/changeHandArmPosesByConfigNameRequest"
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest*(): Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest =
  result.`config_name` = ""
proc writeFields*(value: Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest; w: var Writer) =
  putString(w,value.`config_name`,256)
proc readRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest*(r: var Reader): Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest =
  result = initRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest()
  result.`config_name` = getString(r,256)
proc encode*(value: Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest*(b: seq[byte]): Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest =
  var r = initReader(b,260)
  result = readRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest(r)
  finish(r)
type Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse* = object
  `result`*: bool
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodecIdentity* = "UWVMROS1_719178893c33a800600c8aecdcde550424fbae3effc2921e77e878e112a74fdb"
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseNativeType* = "h12pro_controller_node/changeHandArmPosesByConfigNameResponse"
const Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse*(): Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse =
  result.`result` = false
proc writeFields*(value: Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse*(r: var Reader): Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse =
  result = initRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse*(b: seq[byte]): Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeH12proRemoteControllerChannel* = object
  `channels`*: seq[uint16]
  `sbus_state`*: uint8
const Ros1H12pro_controller_nodeH12proRemoteControllerChannelMaximumWireBytes* = 37
const Ros1H12pro_controller_nodeH12proRemoteControllerChannelCodecIdentity* = "UWVMROS1_4accf8faf4cd4b4a0e71fbb9aa3a7d0590d3d1a85013001ffaabc036b9899652"
const Ros1H12pro_controller_nodeH12proRemoteControllerChannelNativeType* = "h12pro_controller_node/h12proRemoteControllerChannel"
const Ros1H12pro_controller_nodeH12proRemoteControllerChannelNativeIdentity* = ""
proc initRos1H12pro_controller_nodeH12proRemoteControllerChannel*(): Ros1H12pro_controller_nodeH12proRemoteControllerChannel =
  result.`channels` = @[]
  result.`sbus_state` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeH12proRemoteControllerChannel; w: var Writer) =
  if value.`channels`.len > 16: fail(22)
  putInteger(w,uint32(value.`channels`.len))
  for e in value.`channels`:
    putInteger(w,e)
  putInteger(w,value.`sbus_state`)
proc readRos1H12pro_controller_nodeH12proRemoteControllerChannel*(r: var Reader): Ros1H12pro_controller_nodeH12proRemoteControllerChannel =
  result = initRos1H12pro_controller_nodeH12proRemoteControllerChannel()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`channels` = newSeq[uint16](count0)
  for i in 0..<count0:
    result.`channels`[i] = getInteger(r,uint16)
  result.`sbus_state` = getInteger(r,uint8)
proc encode*(value: Ros1H12pro_controller_nodeH12proRemoteControllerChannel): seq[byte] =
  var w = initWriter(37)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeH12proRemoteControllerChannel*(b: seq[byte]): Ros1H12pro_controller_nodeH12proRemoteControllerChannel =
  var r = initReader(b,37)
  result = readRos1H12pro_controller_nodeH12proRemoteControllerChannel(r)
  finish(r)
type Ros1H12pro_controller_nodePlaymusicRequest* = object
  `music_number`*: string
  `volume`*: int64
const Ros1H12pro_controller_nodePlaymusicRequestMaximumWireBytes* = 268
const Ros1H12pro_controller_nodePlaymusicRequestCodecIdentity* = "UWVMROS1_215228523fbfc3026aa3f12153492f05c08a6b024a0582e16293e87eaa1db6e1"
const Ros1H12pro_controller_nodePlaymusicRequestNativeType* = "h12pro_controller_node/playmusicRequest"
const Ros1H12pro_controller_nodePlaymusicRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodePlaymusicRequest*(): Ros1H12pro_controller_nodePlaymusicRequest =
  result.`music_number` = ""
  result.`volume` = 0
proc writeFields*(value: Ros1H12pro_controller_nodePlaymusicRequest; w: var Writer) =
  putString(w,value.`music_number`,256)
  putInteger(w,value.`volume`)
proc readRos1H12pro_controller_nodePlaymusicRequest*(r: var Reader): Ros1H12pro_controller_nodePlaymusicRequest =
  result = initRos1H12pro_controller_nodePlaymusicRequest()
  result.`music_number` = getString(r,256)
  result.`volume` = getInteger(r,int64)
proc encode*(value: Ros1H12pro_controller_nodePlaymusicRequest): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodePlaymusicRequest*(b: seq[byte]): Ros1H12pro_controller_nodePlaymusicRequest =
  var r = initReader(b,268)
  result = readRos1H12pro_controller_nodePlaymusicRequest(r)
  finish(r)
type Ros1H12pro_controller_nodePlaymusicResponse* = object
  `success_flag`*: bool
const Ros1H12pro_controller_nodePlaymusicResponseMaximumWireBytes* = 1
const Ros1H12pro_controller_nodePlaymusicResponseCodecIdentity* = "UWVMROS1_ad77815d74f9e37b5c3eb2f5ea672c884e1682328b1526b4fb3b7d7c6241e823"
const Ros1H12pro_controller_nodePlaymusicResponseNativeType* = "h12pro_controller_node/playmusicResponse"
const Ros1H12pro_controller_nodePlaymusicResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodePlaymusicResponse*(): Ros1H12pro_controller_nodePlaymusicResponse =
  result.`success_flag` = false
proc writeFields*(value: Ros1H12pro_controller_nodePlaymusicResponse; w: var Writer) =
  putBool(w,value.`success_flag`)
proc readRos1H12pro_controller_nodePlaymusicResponse*(r: var Reader): Ros1H12pro_controller_nodePlaymusicResponse =
  result = initRos1H12pro_controller_nodePlaymusicResponse()
  result.`success_flag` = getBool(r)
proc encode*(value: Ros1H12pro_controller_nodePlaymusicResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodePlaymusicResponse*(b: seq[byte]): Ros1H12pro_controller_nodePlaymusicResponse =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodePlaymusicResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeRobotPhase* = object
  `mainPhase`*: uint8
  `subPhase`*: uint8
const Ros1H12pro_controller_nodeRobotPhaseMaximumWireBytes* = 2
const Ros1H12pro_controller_nodeRobotPhaseCodecIdentity* = "UWVMROS1_1c0c1805fc76e776d119cda9a549c2d34b9f23f201583bb488217985a1949283"
const Ros1H12pro_controller_nodeRobotPhaseNativeType* = "h12pro_controller_node/robotPhase"
const Ros1H12pro_controller_nodeRobotPhaseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeRobotPhase*(): Ros1H12pro_controller_nodeRobotPhase =
  result.`mainPhase` = 0
  result.`subPhase` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeRobotPhase; w: var Writer) =
  putInteger(w,value.`mainPhase`)
  putInteger(w,value.`subPhase`)
proc readRos1H12pro_controller_nodeRobotPhase*(r: var Reader): Ros1H12pro_controller_nodeRobotPhase =
  result = initRos1H12pro_controller_nodeRobotPhase()
  result.`mainPhase` = getInteger(r,uint8)
  result.`subPhase` = getInteger(r,uint8)
proc encode*(value: Ros1H12pro_controller_nodeRobotPhase): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeRobotPhase*(b: seq[byte]): Ros1H12pro_controller_nodeRobotPhase =
  var r = initReader(b,2)
  result = readRos1H12pro_controller_nodeRobotPhase(r)
  finish(r)
type Ros1H12pro_controller_nodeRobotQVTau* = object
  `q`*: seq[float64]
  `v`*: seq[float64]
  `tau`*: seq[float64]
const Ros1H12pro_controller_nodeRobotQVTauMaximumWireBytes* = 1292
const Ros1H12pro_controller_nodeRobotQVTauCodecIdentity* = "UWVMROS1_571ffeebcde739e9f557f701f5a021e743cdfbd7192894fb9d8a4ee5810e2fb7"
const Ros1H12pro_controller_nodeRobotQVTauNativeType* = "h12pro_controller_node/robotQVTau"
const Ros1H12pro_controller_nodeRobotQVTauNativeIdentity* = ""
proc initRos1H12pro_controller_nodeRobotQVTau*(): Ros1H12pro_controller_nodeRobotQVTau =
  result.`q` = @[]
  result.`v` = @[]
  result.`tau` = @[]
proc writeFields*(value: Ros1H12pro_controller_nodeRobotQVTau; w: var Writer) =
  if value.`q`.len > 16: fail(22)
  putInteger(w,uint32(value.`q`.len))
  for e in value.`q`:
    putFloat64(w,e)
  if value.`v`.len > 16: fail(22)
  putInteger(w,uint32(value.`v`.len))
  for e in value.`v`:
    putFloat64(w,e)
  if value.`tau`.len > 128: fail(22)
  putInteger(w,uint32(value.`tau`.len))
  for e in value.`tau`:
    putFloat64(w,e)
proc readRos1H12pro_controller_nodeRobotQVTau*(r: var Reader): Ros1H12pro_controller_nodeRobotQVTau =
  result = initRos1H12pro_controller_nodeRobotQVTau()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`q` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`q`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`v` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`v`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 128: fail(22)
  let count2 = int(rawcount2)
  result.`tau` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`tau`[i] = getFloat64(r)
proc encode*(value: Ros1H12pro_controller_nodeRobotQVTau): seq[byte] =
  var w = initWriter(1292)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeRobotQVTau*(b: seq[byte]): Ros1H12pro_controller_nodeRobotQVTau =
  var r = initReader(b,1292)
  result = readRos1H12pro_controller_nodeRobotQVTau(r)
  finish(r)
type Ros1H12pro_controller_nodeRobotTorsoState* = object
  `torsoR`*: Ros1Geometry_msgsVector3
  `torsoRd`*: Ros1Geometry_msgsVector3
  `torsoRdd`*: Ros1Geometry_msgsVector3
  `r`*: Ros1Geometry_msgsVector3
  `rd`*: Ros1Geometry_msgsVector3
  `rdd`*: Ros1Geometry_msgsVector3
const Ros1H12pro_controller_nodeRobotTorsoStateMaximumWireBytes* = 144
const Ros1H12pro_controller_nodeRobotTorsoStateCodecIdentity* = "UWVMROS1_14f926d6ebfbf5d88bc052c012e75c06be9db2cb0b90699cb1ab80c939ea565c"
const Ros1H12pro_controller_nodeRobotTorsoStateNativeType* = "h12pro_controller_node/robotTorsoState"
const Ros1H12pro_controller_nodeRobotTorsoStateNativeIdentity* = ""
proc initRos1H12pro_controller_nodeRobotTorsoState*(): Ros1H12pro_controller_nodeRobotTorsoState =
  result.`torsoR` = initRos1Geometry_msgsVector3()
  result.`torsoRd` = initRos1Geometry_msgsVector3()
  result.`torsoRdd` = initRos1Geometry_msgsVector3()
  result.`r` = initRos1Geometry_msgsVector3()
  result.`rd` = initRos1Geometry_msgsVector3()
  result.`rdd` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1H12pro_controller_nodeRobotTorsoState; w: var Writer) =
  writeFields(value.`torsoR`,w)
  writeFields(value.`torsoRd`,w)
  writeFields(value.`torsoRdd`,w)
  writeFields(value.`r`,w)
  writeFields(value.`rd`,w)
  writeFields(value.`rdd`,w)
proc readRos1H12pro_controller_nodeRobotTorsoState*(r: var Reader): Ros1H12pro_controller_nodeRobotTorsoState =
  result = initRos1H12pro_controller_nodeRobotTorsoState()
  result.`torsoR` = readRos1Geometry_msgsVector3(r)
  result.`torsoRd` = readRos1Geometry_msgsVector3(r)
  result.`torsoRdd` = readRos1Geometry_msgsVector3(r)
  result.`r` = readRos1Geometry_msgsVector3(r)
  result.`rd` = readRos1Geometry_msgsVector3(r)
  result.`rdd` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1H12pro_controller_nodeRobotTorsoState): seq[byte] =
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeRobotTorsoState*(b: seq[byte]): Ros1H12pro_controller_nodeRobotTorsoState =
  var r = initReader(b,144)
  result = readRos1H12pro_controller_nodeRobotTorsoState(r)
  finish(r)
type Ros1H12pro_controller_nodeSrvChangePhasesRequest* = object
  `masterID`*: uint8
  `stateReq`*: string
  `subState`*: string
const Ros1H12pro_controller_nodeSrvChangePhasesRequestMaximumWireBytes* = 521
const Ros1H12pro_controller_nodeSrvChangePhasesRequestCodecIdentity* = "UWVMROS1_35f9c693f0b169fdfdcf11464d935135477a7cfe7e0039b86603b393ab9016e5"
const Ros1H12pro_controller_nodeSrvChangePhasesRequestNativeType* = "h12pro_controller_node/srvChangePhasesRequest"
const Ros1H12pro_controller_nodeSrvChangePhasesRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodeSrvChangePhasesRequest*(): Ros1H12pro_controller_nodeSrvChangePhasesRequest =
  result.`masterID` = 0
  result.`stateReq` = ""
  result.`subState` = ""
proc writeFields*(value: Ros1H12pro_controller_nodeSrvChangePhasesRequest; w: var Writer) =
  putInteger(w,value.`masterID`)
  putString(w,value.`stateReq`,256)
  putString(w,value.`subState`,256)
proc readRos1H12pro_controller_nodeSrvChangePhasesRequest*(r: var Reader): Ros1H12pro_controller_nodeSrvChangePhasesRequest =
  result = initRos1H12pro_controller_nodeSrvChangePhasesRequest()
  result.`masterID` = getInteger(r,uint8)
  result.`stateReq` = getString(r,256)
  result.`subState` = getString(r,256)
proc encode*(value: Ros1H12pro_controller_nodeSrvChangePhasesRequest): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeSrvChangePhasesRequest*(b: seq[byte]): Ros1H12pro_controller_nodeSrvChangePhasesRequest =
  var r = initReader(b,521)
  result = readRos1H12pro_controller_nodeSrvChangePhasesRequest(r)
  finish(r)
type Ros1H12pro_controller_nodeSrvChangePhasesResponse* = object
  `stateRes`*: int16
const Ros1H12pro_controller_nodeSrvChangePhasesResponseMaximumWireBytes* = 2
const Ros1H12pro_controller_nodeSrvChangePhasesResponseCodecIdentity* = "UWVMROS1_ff0bc644bfbfeccaf52a31d36ee291170456d71037d93e54527fb875ced7d4e4"
const Ros1H12pro_controller_nodeSrvChangePhasesResponseNativeType* = "h12pro_controller_node/srvChangePhasesResponse"
const Ros1H12pro_controller_nodeSrvChangePhasesResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeSrvChangePhasesResponse*(): Ros1H12pro_controller_nodeSrvChangePhasesResponse =
  result.`stateRes` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeSrvChangePhasesResponse; w: var Writer) =
  putInteger(w,value.`stateRes`)
proc readRos1H12pro_controller_nodeSrvChangePhasesResponse*(r: var Reader): Ros1H12pro_controller_nodeSrvChangePhasesResponse =
  result = initRos1H12pro_controller_nodeSrvChangePhasesResponse()
  result.`stateRes` = getInteger(r,int16)
proc encode*(value: Ros1H12pro_controller_nodeSrvChangePhasesResponse): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeSrvChangePhasesResponse*(b: seq[byte]): Ros1H12pro_controller_nodeSrvChangePhasesResponse =
  var r = initReader(b,2)
  result = readRos1H12pro_controller_nodeSrvChangePhasesResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeSrvClearPositionCMDRequest* = object
const Ros1H12pro_controller_nodeSrvClearPositionCMDRequestMaximumWireBytes* = 0
const Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodecIdentity* = "UWVMROS1_662897522ba05be000762eed51f5b98b5352cf91c663e0289f09f93c2c33a278"
const Ros1H12pro_controller_nodeSrvClearPositionCMDRequestNativeType* = "h12pro_controller_node/srvClearPositionCMDRequest"
const Ros1H12pro_controller_nodeSrvClearPositionCMDRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodeSrvClearPositionCMDRequest*(): Ros1H12pro_controller_nodeSrvClearPositionCMDRequest =
  discard
proc writeFields*(value: Ros1H12pro_controller_nodeSrvClearPositionCMDRequest; w: var Writer) =
  discard
proc readRos1H12pro_controller_nodeSrvClearPositionCMDRequest*(r: var Reader): Ros1H12pro_controller_nodeSrvClearPositionCMDRequest =
  result = initRos1H12pro_controller_nodeSrvClearPositionCMDRequest()
proc encode*(value: Ros1H12pro_controller_nodeSrvClearPositionCMDRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeSrvClearPositionCMDRequest*(b: seq[byte]): Ros1H12pro_controller_nodeSrvClearPositionCMDRequest =
  var r = initReader(b,0)
  result = readRos1H12pro_controller_nodeSrvClearPositionCMDRequest(r)
  finish(r)
type Ros1H12pro_controller_nodeSrvClearPositionCMDResponse* = object
  `result`*: int8
const Ros1H12pro_controller_nodeSrvClearPositionCMDResponseMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodecIdentity* = "UWVMROS1_e604650fe3e28eb6c83dd6866024af5fce7fcf33e4eff36bcda779a158d2fc61"
const Ros1H12pro_controller_nodeSrvClearPositionCMDResponseNativeType* = "h12pro_controller_node/srvClearPositionCMDResponse"
const Ros1H12pro_controller_nodeSrvClearPositionCMDResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeSrvClearPositionCMDResponse*(): Ros1H12pro_controller_nodeSrvClearPositionCMDResponse =
  result.`result` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeSrvClearPositionCMDResponse; w: var Writer) =
  putInteger(w,value.`result`)
proc readRos1H12pro_controller_nodeSrvClearPositionCMDResponse*(r: var Reader): Ros1H12pro_controller_nodeSrvClearPositionCMDResponse =
  result = initRos1H12pro_controller_nodeSrvClearPositionCMDResponse()
  result.`result` = getInteger(r,int8)
proc encode*(value: Ros1H12pro_controller_nodeSrvClearPositionCMDResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse*(b: seq[byte]): Ros1H12pro_controller_nodeSrvClearPositionCMDResponse =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeSrvClearPositionCMDResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeSrvchangeCtlModeRequest* = object
  `masterID`*: uint8
  `control_mode`*: uint8
const Ros1H12pro_controller_nodeSrvchangeCtlModeRequestMaximumWireBytes* = 2
const Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodecIdentity* = "UWVMROS1_b6d8a72ebcb1f8f961e0fe7e7cc74eecf51e4cbf951758bbb3c7412ca1cac09d"
const Ros1H12pro_controller_nodeSrvchangeCtlModeRequestNativeType* = "h12pro_controller_node/srvchangeCtlModeRequest"
const Ros1H12pro_controller_nodeSrvchangeCtlModeRequestNativeIdentity* = ""
proc initRos1H12pro_controller_nodeSrvchangeCtlModeRequest*(): Ros1H12pro_controller_nodeSrvchangeCtlModeRequest =
  result.`masterID` = 0
  result.`control_mode` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeSrvchangeCtlModeRequest; w: var Writer) =
  putInteger(w,value.`masterID`)
  putInteger(w,value.`control_mode`)
proc readRos1H12pro_controller_nodeSrvchangeCtlModeRequest*(r: var Reader): Ros1H12pro_controller_nodeSrvchangeCtlModeRequest =
  result = initRos1H12pro_controller_nodeSrvchangeCtlModeRequest()
  result.`masterID` = getInteger(r,uint8)
  result.`control_mode` = getInteger(r,uint8)
proc encode*(value: Ros1H12pro_controller_nodeSrvchangeCtlModeRequest): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeSrvchangeCtlModeRequest*(b: seq[byte]): Ros1H12pro_controller_nodeSrvchangeCtlModeRequest =
  var r = initReader(b,2)
  result = readRos1H12pro_controller_nodeSrvchangeCtlModeRequest(r)
  finish(r)
type Ros1H12pro_controller_nodeSrvchangeCtlModeResponse* = object
  `control_mode`*: uint8
const Ros1H12pro_controller_nodeSrvchangeCtlModeResponseMaximumWireBytes* = 1
const Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodecIdentity* = "UWVMROS1_e4d95ba086ca12457a43b719f0bb7dc216d34e1dbc9e050a1acac000cd12a463"
const Ros1H12pro_controller_nodeSrvchangeCtlModeResponseNativeType* = "h12pro_controller_node/srvchangeCtlModeResponse"
const Ros1H12pro_controller_nodeSrvchangeCtlModeResponseNativeIdentity* = ""
proc initRos1H12pro_controller_nodeSrvchangeCtlModeResponse*(): Ros1H12pro_controller_nodeSrvchangeCtlModeResponse =
  result.`control_mode` = 0
proc writeFields*(value: Ros1H12pro_controller_nodeSrvchangeCtlModeResponse; w: var Writer) =
  putInteger(w,value.`control_mode`)
proc readRos1H12pro_controller_nodeSrvchangeCtlModeResponse*(r: var Reader): Ros1H12pro_controller_nodeSrvchangeCtlModeResponse =
  result = initRos1H12pro_controller_nodeSrvchangeCtlModeResponse()
  result.`control_mode` = getInteger(r,uint8)
proc encode*(value: Ros1H12pro_controller_nodeSrvchangeCtlModeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse*(b: seq[byte]): Ros1H12pro_controller_nodeSrvchangeCtlModeResponse =
  var r = initReader(b,1)
  result = readRos1H12pro_controller_nodeSrvchangeCtlModeResponse(r)
  finish(r)
type Ros1H12pro_controller_nodeWalkCommand* = object
  `mode`*: uint8
  `values`*: seq[float64]
const Ros1H12pro_controller_nodeWalkCommandMaximumWireBytes* = 133
const Ros1H12pro_controller_nodeWalkCommandCodecIdentity* = "UWVMROS1_15c67ec2af4d615aa5496c894f3e0372a813f9c2b9f1ae4acb7282cccef14ac6"
const Ros1H12pro_controller_nodeWalkCommandNativeType* = "h12pro_controller_node/walkCommand"
const Ros1H12pro_controller_nodeWalkCommandNativeIdentity* = ""
proc initRos1H12pro_controller_nodeWalkCommand*(): Ros1H12pro_controller_nodeWalkCommand =
  result.`mode` = 0
  result.`values` = @[]
proc writeFields*(value: Ros1H12pro_controller_nodeWalkCommand; w: var Writer) =
  putInteger(w,value.`mode`)
  if value.`values`.len > 16: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1H12pro_controller_nodeWalkCommand*(r: var Reader): Ros1H12pro_controller_nodeWalkCommand =
  result = initRos1H12pro_controller_nodeWalkCommand()
  result.`mode` = getInteger(r,uint8)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`values` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1H12pro_controller_nodeWalkCommand): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
proc decodeRos1H12pro_controller_nodeWalkCommand*(b: seq[byte]): Ros1H12pro_controller_nodeWalkCommand =
  var r = initReader(b,133)
  result = readRos1H12pro_controller_nodeWalkCommand(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp* = object
  `offset`*: int32
  `left_hand_pose`*: seq[float64]
  `right_hand_pose`*: seq[float64]
const Ros1HandcontrollerdemorosnodeArmPoseWithTimeStampMaximumWireBytes* = 268
const Ros1HandcontrollerdemorosnodeArmPoseWithTimeStampCodecIdentity* = "UWVMROS1_19346185962b42ce7671c490a92650ff618576d2b222d36a717cfe707ce51044"
const Ros1HandcontrollerdemorosnodeArmPoseWithTimeStampNativeType* = "handcontrollerdemorosnode/armPoseWithTimeStamp"
const Ros1HandcontrollerdemorosnodeArmPoseWithTimeStampNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp*(): Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp =
  result.`offset` = 0
  result.`left_hand_pose` = @[]
  result.`right_hand_pose` = @[]
proc writeFields*(value: Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp; w: var Writer) =
  putInteger(w,value.`offset`)
  if value.`left_hand_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`left_hand_pose`.len))
  for e in value.`left_hand_pose`:
    putFloat64(w,e)
  if value.`right_hand_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`right_hand_pose`.len))
  for e in value.`right_hand_pose`:
    putFloat64(w,e)
proc readRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp*(r: var Reader): Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp =
  result = initRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp()
  result.`offset` = getInteger(r,int32)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`left_hand_pose` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`left_hand_pose`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`right_hand_pose` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`right_hand_pose`[i] = getFloat64(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp*(b: seq[byte]): Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp =
  var r = initReader(b,268)
  result = readRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest* = object
  `enable`*: bool
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestMaximumWireBytes* = 1
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodecIdentity* = "UWVMROS1_8e505adec0a30e0bdc55052a97793a17b0635caf99bf56ae1170a2b733b054c8"
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestNativeType* = "handcontrollerdemorosnode/changeHandTrackingModeRequest"
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest*(): Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest =
  result.`enable` = false
proc writeFields*(value: Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest; w: var Writer) =
  putBool(w,value.`enable`)
proc readRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest*(r: var Reader): Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest =
  result = initRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest()
  result.`enable` = getBool(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest*(b: seq[byte]): Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest =
  var r = initReader(b,1)
  result = readRos1HandcontrollerdemorosnodeChangeHandTrackingModeRequest(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse* = object
  `result`*: bool
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseMaximumWireBytes* = 1
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodecIdentity* = "UWVMROS1_61fc1f01f2f69f8f8618f3ddf3cf1b1ba5b624425b31227f9e966599c5b6bc80"
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseNativeType* = "handcontrollerdemorosnode/changeHandTrackingModeResponse"
const Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse*(): Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse =
  result.`result` = false
proc writeFields*(value: Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse*(r: var Reader): Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse =
  result = initRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse*(b: seq[byte]): Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse =
  var r = initReader(b,1)
  result = readRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeControlEndHandRequest* = object
  `left_hand_position`*: seq[uint8]
  `right_hand_position`*: seq[uint8]
const Ros1HandcontrollerdemorosnodeControlEndHandRequestMaximumWireBytes* = 520
const Ros1HandcontrollerdemorosnodeControlEndHandRequestCodecIdentity* = "UWVMROS1_1abb47f2413f9b70d61d00cf6b33e64f5892be6ba487bf40b271c7975dcb04f9"
const Ros1HandcontrollerdemorosnodeControlEndHandRequestNativeType* = "handcontrollerdemorosnode/controlEndHandRequest"
const Ros1HandcontrollerdemorosnodeControlEndHandRequestNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeControlEndHandRequest*(): Ros1HandcontrollerdemorosnodeControlEndHandRequest =
  result.`left_hand_position` = @[]
  result.`right_hand_position` = @[]
proc writeFields*(value: Ros1HandcontrollerdemorosnodeControlEndHandRequest; w: var Writer) =
  if value.`left_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`left_hand_position`.len))
  for e in value.`left_hand_position`:
    putInteger(w,e)
  if value.`right_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`right_hand_position`.len))
  for e in value.`right_hand_position`:
    putInteger(w,e)
proc readRos1HandcontrollerdemorosnodeControlEndHandRequest*(r: var Reader): Ros1HandcontrollerdemorosnodeControlEndHandRequest =
  result = initRos1HandcontrollerdemorosnodeControlEndHandRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 256: fail(22)
  let count0 = int(rawcount0)
  result.`left_hand_position` = newSeq[uint8](count0)
  for i in 0..<count0:
    result.`left_hand_position`[i] = getInteger(r,uint8)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 256: fail(22)
  let count1 = int(rawcount1)
  result.`right_hand_position` = newSeq[uint8](count1)
  for i in 0..<count1:
    result.`right_hand_position`[i] = getInteger(r,uint8)
proc encode*(value: Ros1HandcontrollerdemorosnodeControlEndHandRequest): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeControlEndHandRequest*(b: seq[byte]): Ros1HandcontrollerdemorosnodeControlEndHandRequest =
  var r = initReader(b,520)
  result = readRos1HandcontrollerdemorosnodeControlEndHandRequest(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeControlEndHandResponse* = object
  `result`*: bool
const Ros1HandcontrollerdemorosnodeControlEndHandResponseMaximumWireBytes* = 1
const Ros1HandcontrollerdemorosnodeControlEndHandResponseCodecIdentity* = "UWVMROS1_55d259517e6fd2fca6f659b50d3a2a29f64ec8c85ecc07ddcbfdeae50b0c125e"
const Ros1HandcontrollerdemorosnodeControlEndHandResponseNativeType* = "handcontrollerdemorosnode/controlEndHandResponse"
const Ros1HandcontrollerdemorosnodeControlEndHandResponseNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeControlEndHandResponse*(): Ros1HandcontrollerdemorosnodeControlEndHandResponse =
  result.`result` = false
proc writeFields*(value: Ros1HandcontrollerdemorosnodeControlEndHandResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1HandcontrollerdemorosnodeControlEndHandResponse*(r: var Reader): Ros1HandcontrollerdemorosnodeControlEndHandResponse =
  result = initRos1HandcontrollerdemorosnodeControlEndHandResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeControlEndHandResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeControlEndHandResponse*(b: seq[byte]): Ros1HandcontrollerdemorosnodeControlEndHandResponse =
  var r = initReader(b,1)
  result = readRos1HandcontrollerdemorosnodeControlEndHandResponse(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeHandRotationEular* = object
  `eulerAngles`*: seq[Ros1Geometry_msgsVector3]
const Ros1HandcontrollerdemorosnodeHandRotationEularMaximumWireBytes* = 196
const Ros1HandcontrollerdemorosnodeHandRotationEularCodecIdentity* = "UWVMROS1_35528ea7896dd9b93e6bb7c4a1fc61547ed0311e579b4367bf656afcd9570153"
const Ros1HandcontrollerdemorosnodeHandRotationEularNativeType* = "handcontrollerdemorosnode/handRotationEular"
const Ros1HandcontrollerdemorosnodeHandRotationEularNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeHandRotationEular*(): Ros1HandcontrollerdemorosnodeHandRotationEular =
  result.`eulerAngles` = @[]
proc writeFields*(value: Ros1HandcontrollerdemorosnodeHandRotationEular; w: var Writer) =
  if value.`eulerAngles`.len > 8: fail(22)
  putInteger(w,uint32(value.`eulerAngles`.len))
  for e in value.`eulerAngles`:
    writeFields(e,w)
proc readRos1HandcontrollerdemorosnodeHandRotationEular*(r: var Reader): Ros1HandcontrollerdemorosnodeHandRotationEular =
  result = initRos1HandcontrollerdemorosnodeHandRotationEular()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`eulerAngles` = newSeq[Ros1Geometry_msgsVector3](count0)
  for i in 0..<count0:
    result.`eulerAngles`[i] = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeHandRotationEular): seq[byte] =
  var w = initWriter(196)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeHandRotationEular*(b: seq[byte]): Ros1HandcontrollerdemorosnodeHandRotationEular =
  var r = initReader(b,196)
  result = readRos1HandcontrollerdemorosnodeHandRotationEular(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeRobotArmPose* = object
  `left_arm_pose`*: seq[float64]
  `right_arm_pose`*: seq[float64]
const Ros1HandcontrollerdemorosnodeRobotArmPoseMaximumWireBytes* = 264
const Ros1HandcontrollerdemorosnodeRobotArmPoseCodecIdentity* = "UWVMROS1_a1c4224279c2a6bdd2bdff21ac64ecbc6fc9f044b604d7147337630305af01d1"
const Ros1HandcontrollerdemorosnodeRobotArmPoseNativeType* = "handcontrollerdemorosnode/robotArmPose"
const Ros1HandcontrollerdemorosnodeRobotArmPoseNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeRobotArmPose*(): Ros1HandcontrollerdemorosnodeRobotArmPose =
  result.`left_arm_pose` = @[]
  result.`right_arm_pose` = @[]
proc writeFields*(value: Ros1HandcontrollerdemorosnodeRobotArmPose; w: var Writer) =
  if value.`left_arm_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`left_arm_pose`.len))
  for e in value.`left_arm_pose`:
    putFloat64(w,e)
  if value.`right_arm_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`right_arm_pose`.len))
  for e in value.`right_arm_pose`:
    putFloat64(w,e)
proc readRos1HandcontrollerdemorosnodeRobotArmPose*(r: var Reader): Ros1HandcontrollerdemorosnodeRobotArmPose =
  result = initRos1HandcontrollerdemorosnodeRobotArmPose()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`left_arm_pose` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`left_arm_pose`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`right_arm_pose` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`right_arm_pose`[i] = getFloat64(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeRobotArmPose): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeRobotArmPose*(b: seq[byte]): Ros1HandcontrollerdemorosnodeRobotArmPose =
  var r = initReader(b,264)
  result = readRos1HandcontrollerdemorosnodeRobotArmPose(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeRobotHandPosition* = object
  `header`*: Ros1Std_msgsHeader
  `left_hand_position`*: seq[uint8]
  `right_hand_position`*: seq[uint8]
const Ros1HandcontrollerdemorosnodeRobotHandPositionMaximumWireBytes* = 792
const Ros1HandcontrollerdemorosnodeRobotHandPositionCodecIdentity* = "UWVMROS1_7a9af4cd610ae49ec9742e9e94a316c4de09f2ee6da583b20c0bb45315079f32"
const Ros1HandcontrollerdemorosnodeRobotHandPositionNativeType* = "handcontrollerdemorosnode/robotHandPosition"
const Ros1HandcontrollerdemorosnodeRobotHandPositionNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeRobotHandPosition*(): Ros1HandcontrollerdemorosnodeRobotHandPosition =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_hand_position` = @[]
  result.`right_hand_position` = @[]
proc writeFields*(value: Ros1HandcontrollerdemorosnodeRobotHandPosition; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`left_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`left_hand_position`.len))
  for e in value.`left_hand_position`:
    putInteger(w,e)
  if value.`right_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`right_hand_position`.len))
  for e in value.`right_hand_position`:
    putInteger(w,e)
proc readRos1HandcontrollerdemorosnodeRobotHandPosition*(r: var Reader): Ros1HandcontrollerdemorosnodeRobotHandPosition =
  result = initRos1HandcontrollerdemorosnodeRobotHandPosition()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 256: fail(22)
  let count1 = int(rawcount1)
  result.`left_hand_position` = newSeq[uint8](count1)
  for i in 0..<count1:
    result.`left_hand_position`[i] = getInteger(r,uint8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 256: fail(22)
  let count2 = int(rawcount2)
  result.`right_hand_position` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`right_hand_position`[i] = getInteger(r,uint8)
proc encode*(value: Ros1HandcontrollerdemorosnodeRobotHandPosition): seq[byte] =
  var w = initWriter(792)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeRobotHandPosition*(b: seq[byte]): Ros1HandcontrollerdemorosnodeRobotHandPosition =
  var r = initReader(b,792)
  result = readRos1HandcontrollerdemorosnodeRobotHandPosition(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeSrvArmIKRequest* = object
  `left_arm_pose`*: seq[float64]
  `right_arm_pose`*: seq[float64]
const Ros1HandcontrollerdemorosnodeSrvArmIKRequestMaximumWireBytes* = 264
const Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodecIdentity* = "UWVMROS1_49d66cccce65f6305f0ab4393d8eb581cb4b8fac9789394dad7d5c4c57b549f0"
const Ros1HandcontrollerdemorosnodeSrvArmIKRequestNativeType* = "handcontrollerdemorosnode/srvArmIKRequest"
const Ros1HandcontrollerdemorosnodeSrvArmIKRequestNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeSrvArmIKRequest*(): Ros1HandcontrollerdemorosnodeSrvArmIKRequest =
  result.`left_arm_pose` = @[]
  result.`right_arm_pose` = @[]
proc writeFields*(value: Ros1HandcontrollerdemorosnodeSrvArmIKRequest; w: var Writer) =
  if value.`left_arm_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`left_arm_pose`.len))
  for e in value.`left_arm_pose`:
    putFloat64(w,e)
  if value.`right_arm_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`right_arm_pose`.len))
  for e in value.`right_arm_pose`:
    putFloat64(w,e)
proc readRos1HandcontrollerdemorosnodeSrvArmIKRequest*(r: var Reader): Ros1HandcontrollerdemorosnodeSrvArmIKRequest =
  result = initRos1HandcontrollerdemorosnodeSrvArmIKRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`left_arm_pose` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`left_arm_pose`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`right_arm_pose` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`right_arm_pose`[i] = getFloat64(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeSrvArmIKRequest): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeSrvArmIKRequest*(b: seq[byte]): Ros1HandcontrollerdemorosnodeSrvArmIKRequest =
  var r = initReader(b,264)
  result = readRos1HandcontrollerdemorosnodeSrvArmIKRequest(r)
  finish(r)
type Ros1Sensor_msgsJointState* = object
  `header`*: Ros1Std_msgsHeader
  `name`*: seq[string]
  `position`*: seq[float64]
  `velocity`*: seq[float64]
  `effort`*: seq[float64]
const Ros1Sensor_msgsJointStateMaximumWireBytes* = 12064
const Ros1Sensor_msgsJointStateCodecIdentity* = "UWVMROS1_682440f51ada53238ed5f92cc6162cf5160282d8edad387272f279923e29e456"
const Ros1Sensor_msgsJointStateNativeType* = "sensor_msgs/JointState"
const Ros1Sensor_msgsJointStateNativeIdentity* = ""
proc initRos1Sensor_msgsJointState*(): Ros1Sensor_msgsJointState =
  result.`header` = initRos1Std_msgsHeader()
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
proc writeFields*(value: Ros1Sensor_msgsJointState; w: var Writer) =
  if len(value.`name`) != 0 and len(value.`position`) != 0 and len(value.`name`) != len(value.`position`): fail(22)
  if len(value.`name`) != 0 and len(value.`velocity`) != 0 and len(value.`name`) != len(value.`velocity`): fail(22)
  if len(value.`name`) != 0 and len(value.`effort`) != 0 and len(value.`name`) != len(value.`effort`): fail(22)
  if len(value.`position`) != 0 and len(value.`velocity`) != 0 and len(value.`position`) != len(value.`velocity`): fail(22)
  if len(value.`position`) != 0 and len(value.`effort`) != 0 and len(value.`position`) != len(value.`effort`): fail(22)
  if len(value.`velocity`) != 0 and len(value.`effort`) != 0 and len(value.`velocity`) != len(value.`effort`): fail(22)
  writeFields(value.`header`,w)
  if value.`name`.len > 128: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,64)
  if value.`position`.len > 128: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 128: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 128: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
proc readRos1Sensor_msgsJointState*(r: var Reader): Ros1Sensor_msgsJointState =
  result = initRos1Sensor_msgsJointState()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 128: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 128: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 128: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 128: fail(22)
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
proc encode*(value: Ros1Sensor_msgsJointState): seq[byte] =
  var w = initWriter(12064)
  writeFields(value,w)
  w.bytes
proc decodeRos1Sensor_msgsJointState*(b: seq[byte]): Ros1Sensor_msgsJointState =
  var r = initReader(b,12064)
  result = readRos1Sensor_msgsJointState(r)
  finish(r)
type Ros1HandcontrollerdemorosnodeSrvArmIKResponse* = object
  `joint_state`*: Ros1Sensor_msgsJointState
const Ros1HandcontrollerdemorosnodeSrvArmIKResponseMaximumWireBytes* = 12064
const Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodecIdentity* = "UWVMROS1_9dbdfffef67508ebbad4da825a18d2f3fdb551caa78ab225dc4b6422a826ffdc"
const Ros1HandcontrollerdemorosnodeSrvArmIKResponseNativeType* = "handcontrollerdemorosnode/srvArmIKResponse"
const Ros1HandcontrollerdemorosnodeSrvArmIKResponseNativeIdentity* = ""
proc initRos1HandcontrollerdemorosnodeSrvArmIKResponse*(): Ros1HandcontrollerdemorosnodeSrvArmIKResponse =
  result.`joint_state` = initRos1Sensor_msgsJointState()
proc writeFields*(value: Ros1HandcontrollerdemorosnodeSrvArmIKResponse; w: var Writer) =
  writeFields(value.`joint_state`,w)
proc readRos1HandcontrollerdemorosnodeSrvArmIKResponse*(r: var Reader): Ros1HandcontrollerdemorosnodeSrvArmIKResponse =
  result = initRos1HandcontrollerdemorosnodeSrvArmIKResponse()
  result.`joint_state` = readRos1Sensor_msgsJointState(r)
proc encode*(value: Ros1HandcontrollerdemorosnodeSrvArmIKResponse): seq[byte] =
  var w = initWriter(12064)
  writeFields(value,w)
  w.bytes
proc decodeRos1HandcontrollerdemorosnodeSrvArmIKResponse*(b: seq[byte]): Ros1HandcontrollerdemorosnodeSrvArmIKResponse =
  var r = initReader(b,12064)
  result = readRos1HandcontrollerdemorosnodeSrvArmIKResponse(r)
  finish(r)
type Ros1Hardware_nodeHorizontalMotionByStep* = object
  `step`*: int32
const Ros1Hardware_nodeHorizontalMotionByStepMaximumWireBytes* = 4
const Ros1Hardware_nodeHorizontalMotionByStepCodecIdentity* = "UWVMROS1_f688b22ab716b205eed4c0d5ae91d2cd352b92ebf97d1d2f732597ee12955ac2"
const Ros1Hardware_nodeHorizontalMotionByStepNativeType* = "hardware_node/horizontalMotionByStep"
const Ros1Hardware_nodeHorizontalMotionByStepNativeIdentity* = ""
proc initRos1Hardware_nodeHorizontalMotionByStep*(): Ros1Hardware_nodeHorizontalMotionByStep =
  result.`step` = 0
proc writeFields*(value: Ros1Hardware_nodeHorizontalMotionByStep; w: var Writer) =
  putInteger(w,value.`step`)
proc readRos1Hardware_nodeHorizontalMotionByStep*(r: var Reader): Ros1Hardware_nodeHorizontalMotionByStep =
  result = initRos1Hardware_nodeHorizontalMotionByStep()
  result.`step` = getInteger(r,int32)
proc encode*(value: Ros1Hardware_nodeHorizontalMotionByStep): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Hardware_nodeHorizontalMotionByStep*(b: seq[byte]): Ros1Hardware_nodeHorizontalMotionByStep =
  var r = initReader(b,4)
  result = readRos1Hardware_nodeHorizontalMotionByStep(r)
  finish(r)
type Ros1Hardware_nodeRobotHeadMotionData* = object
  `target_position`*: seq[int32]
const Ros1Hardware_nodeRobotHeadMotionDataMaximumWireBytes* = 68
const Ros1Hardware_nodeRobotHeadMotionDataCodecIdentity* = "UWVMROS1_9220e0cb3b81c2ed7e9b4f15d1ddec9ac68d24d2fa0878e19532bb0a322ec305"
const Ros1Hardware_nodeRobotHeadMotionDataNativeType* = "hardware_node/robotHeadMotionData"
const Ros1Hardware_nodeRobotHeadMotionDataNativeIdentity* = ""
proc initRos1Hardware_nodeRobotHeadMotionData*(): Ros1Hardware_nodeRobotHeadMotionData =
  result.`target_position` = @[]
proc writeFields*(value: Ros1Hardware_nodeRobotHeadMotionData; w: var Writer) =
  if value.`target_position`.len > 16: fail(22)
  putInteger(w,uint32(value.`target_position`.len))
  for e in value.`target_position`:
    putInteger(w,e)
proc readRos1Hardware_nodeRobotHeadMotionData*(r: var Reader): Ros1Hardware_nodeRobotHeadMotionData =
  result = initRos1Hardware_nodeRobotHeadMotionData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`target_position` = newSeq[int32](count0)
  for i in 0..<count0:
    result.`target_position`[i] = getInteger(r,int32)
proc encode*(value: Ros1Hardware_nodeRobotHeadMotionData): seq[byte] =
  var w = initWriter(68)
  writeFields(value,w)
  w.bytes
proc decodeRos1Hardware_nodeRobotHeadMotionData*(b: seq[byte]): Ros1Hardware_nodeRobotHeadMotionData =
  var r = initReader(b,68)
  result = readRos1Hardware_nodeRobotHeadMotionData(r)
  finish(r)
type Ros1Humanoid_arm_controlArmControlRequest* = object
  `req`*: int64
  `tagid`*: int64
const Ros1Humanoid_arm_controlArmControlRequestMaximumWireBytes* = 16
const Ros1Humanoid_arm_controlArmControlRequestCodecIdentity* = "UWVMROS1_2b071c6cdc4e566950290d7bae36096c3ff913256fd6a8dd62270f58a64a0594"
const Ros1Humanoid_arm_controlArmControlRequestNativeType* = "humanoid_arm_control/armControlRequest"
const Ros1Humanoid_arm_controlArmControlRequestNativeIdentity* = ""
proc initRos1Humanoid_arm_controlArmControlRequest*(): Ros1Humanoid_arm_controlArmControlRequest =
  result.`req` = 0
  result.`tagid` = 0
proc writeFields*(value: Ros1Humanoid_arm_controlArmControlRequest; w: var Writer) =
  putInteger(w,value.`req`)
  putInteger(w,value.`tagid`)
proc readRos1Humanoid_arm_controlArmControlRequest*(r: var Reader): Ros1Humanoid_arm_controlArmControlRequest =
  result = initRos1Humanoid_arm_controlArmControlRequest()
  result.`req` = getInteger(r,int64)
  result.`tagid` = getInteger(r,int64)
proc encode*(value: Ros1Humanoid_arm_controlArmControlRequest): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_arm_controlArmControlRequest*(b: seq[byte]): Ros1Humanoid_arm_controlArmControlRequest =
  var r = initReader(b,16)
  result = readRos1Humanoid_arm_controlArmControlRequest(r)
  finish(r)
type Ros1Humanoid_arm_controlArmControlResponse* = object
  `success`*: int64
  `time`*: float64
const Ros1Humanoid_arm_controlArmControlResponseMaximumWireBytes* = 16
const Ros1Humanoid_arm_controlArmControlResponseCodecIdentity* = "UWVMROS1_df0a2faa8ca46981dd36cc59a7950b983d9d18b1fc1d90cffb9bc4ed1bbd3f43"
const Ros1Humanoid_arm_controlArmControlResponseNativeType* = "humanoid_arm_control/armControlResponse"
const Ros1Humanoid_arm_controlArmControlResponseNativeIdentity* = ""
proc initRos1Humanoid_arm_controlArmControlResponse*(): Ros1Humanoid_arm_controlArmControlResponse =
  result.`success` = 0
  result.`time` = 0
proc writeFields*(value: Ros1Humanoid_arm_controlArmControlResponse; w: var Writer) =
  putInteger(w,value.`success`)
  putFloat64(w,value.`time`)
proc readRos1Humanoid_arm_controlArmControlResponse*(r: var Reader): Ros1Humanoid_arm_controlArmControlResponse =
  result = initRos1Humanoid_arm_controlArmControlResponse()
  result.`success` = getInteger(r,int64)
  result.`time` = getFloat64(r)
proc encode*(value: Ros1Humanoid_arm_controlArmControlResponse): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_arm_controlArmControlResponse*(b: seq[byte]): Ros1Humanoid_arm_controlArmControlResponse =
  var r = initReader(b,16)
  result = readRos1Humanoid_arm_controlArmControlResponse(r)
  finish(r)
type Ros1Humanoid_arm_controlHandUpAndGrabRequest* = object
  `req`*: int64
const Ros1Humanoid_arm_controlHandUpAndGrabRequestMaximumWireBytes* = 8
const Ros1Humanoid_arm_controlHandUpAndGrabRequestCodecIdentity* = "UWVMROS1_bf59313b0aadf2a1875dded92e3e466d4cd3e54e847f1581434cd4a84e45e0a1"
const Ros1Humanoid_arm_controlHandUpAndGrabRequestNativeType* = "humanoid_arm_control/handUpAndGrabRequest"
const Ros1Humanoid_arm_controlHandUpAndGrabRequestNativeIdentity* = ""
proc initRos1Humanoid_arm_controlHandUpAndGrabRequest*(): Ros1Humanoid_arm_controlHandUpAndGrabRequest =
  result.`req` = 0
proc writeFields*(value: Ros1Humanoid_arm_controlHandUpAndGrabRequest; w: var Writer) =
  putInteger(w,value.`req`)
proc readRos1Humanoid_arm_controlHandUpAndGrabRequest*(r: var Reader): Ros1Humanoid_arm_controlHandUpAndGrabRequest =
  result = initRos1Humanoid_arm_controlHandUpAndGrabRequest()
  result.`req` = getInteger(r,int64)
proc encode*(value: Ros1Humanoid_arm_controlHandUpAndGrabRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_arm_controlHandUpAndGrabRequest*(b: seq[byte]): Ros1Humanoid_arm_controlHandUpAndGrabRequest =
  var r = initReader(b,8)
  result = readRos1Humanoid_arm_controlHandUpAndGrabRequest(r)
  finish(r)
type Ros1Humanoid_arm_controlHandUpAndGrabResponse* = object
  `success`*: bool
const Ros1Humanoid_arm_controlHandUpAndGrabResponseMaximumWireBytes* = 1
const Ros1Humanoid_arm_controlHandUpAndGrabResponseCodecIdentity* = "UWVMROS1_61db6a7ea57555b6faee91c2c8e8648761e25edd2291dce831dc69dae3bece77"
const Ros1Humanoid_arm_controlHandUpAndGrabResponseNativeType* = "humanoid_arm_control/handUpAndGrabResponse"
const Ros1Humanoid_arm_controlHandUpAndGrabResponseNativeIdentity* = ""
proc initRos1Humanoid_arm_controlHandUpAndGrabResponse*(): Ros1Humanoid_arm_controlHandUpAndGrabResponse =
  result.`success` = false
proc writeFields*(value: Ros1Humanoid_arm_controlHandUpAndGrabResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Humanoid_arm_controlHandUpAndGrabResponse*(r: var Reader): Ros1Humanoid_arm_controlHandUpAndGrabResponse =
  result = initRos1Humanoid_arm_controlHandUpAndGrabResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Humanoid_arm_controlHandUpAndGrabResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_arm_controlHandUpAndGrabResponse*(b: seq[byte]): Ros1Humanoid_arm_controlHandUpAndGrabResponse =
  var r = initReader(b,1)
  result = readRos1Humanoid_arm_controlHandUpAndGrabResponse(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest* = object
  `action_name`*: string
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestMaximumWireBytes* = 260
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodecIdentity* = "UWVMROS1_21f8af35276c15f8c48b53ca002e04e7575a2917662c8cd2cc245c79c0d5349e"
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestNativeType* = "humanoid_plan_arm_trajectory/ExecuteArmActionRequest"
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest*(): Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest =
  result.`action_name` = ""
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest; w: var Writer) =
  putString(w,value.`action_name`,256)
proc readRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest =
  result = initRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest()
  result.`action_name` = getString(r,256)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest =
  var r = initReader(b,260)
  result = readRos1Humanoid_plan_arm_trajectoryExecuteArmActionRequest(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseMaximumWireBytes* = 261
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodecIdentity* = "UWVMROS1_9242c66a70abf0d215dbcc5b4846770a8fc2d61eb88bf03b7436b226b7f6f3ea"
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseNativeType* = "humanoid_plan_arm_trajectory/ExecuteArmActionResponse"
const Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse*(): Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse =
  result = initRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse =
  var r = initReader(b,261)
  result = readRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryRobotActionState* = object
  `state`*: uint8
const Ros1Humanoid_plan_arm_trajectoryRobotActionStateMaximumWireBytes* = 1
const Ros1Humanoid_plan_arm_trajectoryRobotActionStateCodecIdentity* = "UWVMROS1_e2394a0c9ed8f6435f996443c7a6adf416b3a7660e077bbac4ba1ad34f8f53fc"
const Ros1Humanoid_plan_arm_trajectoryRobotActionStateNativeType* = "humanoid_plan_arm_trajectory/RobotActionState"
const Ros1Humanoid_plan_arm_trajectoryRobotActionStateNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryRobotActionState*(): Ros1Humanoid_plan_arm_trajectoryRobotActionState =
  result.`state` = 0
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryRobotActionState; w: var Writer) =
  putInteger(w,value.`state`)
proc readRos1Humanoid_plan_arm_trajectoryRobotActionState*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryRobotActionState =
  result = initRos1Humanoid_plan_arm_trajectoryRobotActionState()
  result.`state` = getInteger(r,uint8)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryRobotActionState): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryRobotActionState*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryRobotActionState =
  var r = initReader(b,1)
  result = readRos1Humanoid_plan_arm_trajectoryRobotActionState(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint* = object
  `end_point`*: seq[float64]
  `left_control_point`*: seq[float64]
  `right_control_point`*: seq[float64]
const Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPointMaximumWireBytes* = 396
const Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPointCodecIdentity* = "UWVMROS1_689f2cd6ba7d0aa78e92bb857e61280f5d763a477129a2448819529af1d695a7"
const Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPointNativeType* = "humanoid_plan_arm_trajectory/bezierCurveCubicPoint"
const Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPointNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint*(): Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint =
  result.`end_point` = @[]
  result.`left_control_point` = @[]
  result.`right_control_point` = @[]
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint; w: var Writer) =
  if value.`end_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`end_point`.len))
  for e in value.`end_point`:
    putFloat64(w,e)
  if value.`left_control_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`left_control_point`.len))
  for e in value.`left_control_point`:
    putFloat64(w,e)
  if value.`right_control_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`right_control_point`.len))
  for e in value.`right_control_point`:
    putFloat64(w,e)
proc readRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint =
  result = initRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`end_point` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`end_point`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`left_control_point` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`left_control_point`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`right_control_point` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`right_control_point`[i] = getFloat64(r)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint): seq[byte] =
  var w = initWriter(396)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint =
  var r = initReader(b,396)
  result = readRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory* = object
  `bezier_curve_points`*: seq[Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint]
const Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectoryMaximumWireBytes* = 3172
const Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectoryCodecIdentity* = "UWVMROS1_5e3d4297a2557764d89155dc2231684dfedf760e75bf73b16f8e118666b5c929"
const Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectoryNativeType* = "humanoid_plan_arm_trajectory/jointBezierTrajectory"
const Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectoryNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory*(): Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory =
  result.`bezier_curve_points` = @[]
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory; w: var Writer) =
  if value.`bezier_curve_points`.len > 8: fail(22)
  putInteger(w,uint32(value.`bezier_curve_points`.len))
  for e in value.`bezier_curve_points`:
    writeFields(e,w)
proc readRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory =
  result = initRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`bezier_curve_points` = newSeq[Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint](count0)
  for i in 0..<count0:
    result.`bezier_curve_points`[i] = readRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(r)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory): seq[byte] =
  var w = initWriter(3172)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory =
  var r = initReader(b,3172)
  result = readRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryPlanArmState* = object
  `progress`*: int32
  `is_finished`*: bool
const Ros1Humanoid_plan_arm_trajectoryPlanArmStateMaximumWireBytes* = 5
const Ros1Humanoid_plan_arm_trajectoryPlanArmStateCodecIdentity* = "UWVMROS1_b9fe42380559dcc29f8626d7664a6e66739e3487df24f79fdacedbcfe8009a29"
const Ros1Humanoid_plan_arm_trajectoryPlanArmStateNativeType* = "humanoid_plan_arm_trajectory/planArmState"
const Ros1Humanoid_plan_arm_trajectoryPlanArmStateNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryPlanArmState*(): Ros1Humanoid_plan_arm_trajectoryPlanArmState =
  result.`progress` = 0
  result.`is_finished` = false
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmState; w: var Writer) =
  putInteger(w,value.`progress`)
  putBool(w,value.`is_finished`)
proc readRos1Humanoid_plan_arm_trajectoryPlanArmState*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryPlanArmState =
  result = initRos1Humanoid_plan_arm_trajectoryPlanArmState()
  result.`progress` = getInteger(r,int32)
  result.`is_finished` = getBool(r)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmState): seq[byte] =
  var w = initWriter(5)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryPlanArmState*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryPlanArmState =
  var r = initReader(b,5)
  result = readRos1Humanoid_plan_arm_trajectoryPlanArmState(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest* = object
  `multi_joint_bezier_trajectory`*: seq[Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory]
  `start_frame_time`*: float64
  `end_frame_time`*: float64
  `joint_names`*: seq[string]
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestMaximumWireBytes* = 29560
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodecIdentity* = "UWVMROS1_7ed93fc26e36fe908fd03bb2baeddb8ab51a2e0658e5bc9da4f026d0f825e7a2"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestNativeType* = "humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveRequest"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest*(): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest =
  result.`multi_joint_bezier_trajectory` = @[]
  result.`start_frame_time` = 0
  result.`end_frame_time` = 0
  result.`joint_names` = @[]
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest; w: var Writer) =
  if value.`multi_joint_bezier_trajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`multi_joint_bezier_trajectory`.len))
  for e in value.`multi_joint_bezier_trajectory`:
    writeFields(e,w)
  putFloat64(w,value.`start_frame_time`)
  putFloat64(w,value.`end_frame_time`)
  if value.`joint_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
proc readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest =
  result = initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`multi_joint_bezier_trajectory` = newSeq[Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory](count0)
  for i in 0..<count0:
    result.`multi_joint_bezier_trajectory`[i] = readRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(r)
  result.`start_frame_time` = getFloat64(r)
  result.`end_frame_time` = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`joint_names` = newSeq[string](count3)
  for i in 0..<count3:
    result.`joint_names`[i] = getString(r,256)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest): seq[byte] =
  var w = initWriter(29560)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest =
  var r = initReader(b,29560)
  result = readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse* = object
  `success`*: bool
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseMaximumWireBytes* = 1
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodecIdentity* = "UWVMROS1_4a82604b8f91b5e35f3c7f8e875b08607f5625d8d6f87db6c95cc3eb0b481bb4"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseNativeType* = "humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveResponse"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse*(): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse =
  result.`success` = false
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse =
  result = initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse =
  var r = initReader(b,1)
  result = readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse(r)
  finish(r)
type Ros1Duration* = object
  `sec`*: int32
  `nsec`*: int32
const Ros1DurationMaximumWireBytes* = 8
const Ros1DurationCodecIdentity* = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
const Ros1DurationNativeType* = "duration"
const Ros1DurationNativeIdentity* = ""
proc initRos1Duration*(): Ros1Duration =
  result.`sec` = 0
  result.`nsec` = 0
proc writeFields*(value: Ros1Duration; w: var Writer) =
  if value.`nsec` < 0: fail(22)
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
proc readRos1Duration*(r: var Reader): Ros1Duration =
  result = initRos1Duration()
  result.`sec` = getInteger(r,int32)
  result.`nsec` = getInteger(r,int32)
  if result.`nsec` < 0: fail(22)
  if result.`nsec` >= 1000000000: fail(22)
proc encode*(value: Ros1Duration): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Duration*(b: seq[byte]): Ros1Duration =
  var r = initReader(b,8)
  result = readRos1Duration(r)
  finish(r)
type Ros1Trajectory_msgsJointTrajectoryPoint* = object
  `positions`*: seq[float64]
  `velocities`*: seq[float64]
  `accelerations`*: seq[float64]
  `effort`*: seq[float64]
  `time_from_start`*: Ros1Duration
const Ros1Trajectory_msgsJointTrajectoryPointMaximumWireBytes* = 536
const Ros1Trajectory_msgsJointTrajectoryPointCodecIdentity* = "UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81"
const Ros1Trajectory_msgsJointTrajectoryPointNativeType* = "trajectory_msgs/JointTrajectoryPoint"
const Ros1Trajectory_msgsJointTrajectoryPointNativeIdentity* = ""
proc initRos1Trajectory_msgsJointTrajectoryPoint*(): Ros1Trajectory_msgsJointTrajectoryPoint =
  result.`positions` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`effort` = @[]
  result.`time_from_start` = initRos1Duration()
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
proc encode*(value: Ros1Trajectory_msgsJointTrajectoryPoint): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
proc decodeRos1Trajectory_msgsJointTrajectoryPoint*(b: seq[byte]): Ros1Trajectory_msgsJointTrajectoryPoint =
  var r = initReader(b,536)
  result = readRos1Trajectory_msgsJointTrajectoryPoint(r)
  finish(r)
type Ros1Trajectory_msgsJointTrajectory* = object
  `header`*: Ros1Std_msgsHeader
  `joint_names`*: seq[string]
  `points`*: seq[Ros1Trajectory_msgsJointTrajectoryPoint]
const Ros1Trajectory_msgsJointTrajectoryMaximumWireBytes* = 8728
const Ros1Trajectory_msgsJointTrajectoryCodecIdentity* = "UWVMROS1_be6c35515187dbb5d0ba11af18a8fab6254371d409f69653707821aee118f938"
const Ros1Trajectory_msgsJointTrajectoryNativeType* = "trajectory_msgs/JointTrajectory"
const Ros1Trajectory_msgsJointTrajectoryNativeIdentity* = ""
proc initRos1Trajectory_msgsJointTrajectory*(): Ros1Trajectory_msgsJointTrajectory =
  result.`header` = initRos1Std_msgsHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
proc writeFields*(value: Ros1Trajectory_msgsJointTrajectory; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
  if value.`points`.len > 8: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
proc readRos1Trajectory_msgsJointTrajectory*(r: var Reader): Ros1Trajectory_msgsJointTrajectory =
  result = initRos1Trajectory_msgsJointTrajectory()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros1Trajectory_msgsJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos1Trajectory_msgsJointTrajectoryPoint(r)
proc encode*(value: Ros1Trajectory_msgsJointTrajectory): seq[byte] =
  var w = initWriter(8728)
  writeFields(value,w)
  w.bytes
proc decodeRos1Trajectory_msgsJointTrajectory*(b: seq[byte]): Ros1Trajectory_msgsJointTrajectory =
  var r = initReader(b,8728)
  result = readRos1Trajectory_msgsJointTrajectory(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest* = object
  `joint_trajectory`*: Ros1Trajectory_msgsJointTrajectory
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestMaximumWireBytes* = 8728
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodecIdentity* = "UWVMROS1_4f0ce7fcda16917aa57144ad4b5b2d606fe244b25f900b4d20352433939c6138"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestNativeType* = "humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineRequest"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest*(): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest =
  result.`joint_trajectory` = initRos1Trajectory_msgsJointTrajectory()
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest; w: var Writer) =
  writeFields(value.`joint_trajectory`,w)
proc readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest =
  result = initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest()
  result.`joint_trajectory` = readRos1Trajectory_msgsJointTrajectory(r)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest): seq[byte] =
  var w = initWriter(8728)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest =
  var r = initReader(b,8728)
  result = readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest(r)
  finish(r)
type Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse* = object
  `success`*: bool
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseMaximumWireBytes* = 1
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodecIdentity* = "UWVMROS1_60ddec147657fa0acc0a4b731cf7a9c58ba5d5028853ccb5064370b3614b385e"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseNativeType* = "humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineResponse"
const Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseNativeIdentity* = ""
proc initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse*(): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse =
  result.`success` = false
proc writeFields*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse*(r: var Reader): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse =
  result = initRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse*(b: seq[byte]): Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse =
  var r = initReader(b,1)
  result = readRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse(r)
  finish(r)
type Ros1Kindr_msgsVectorAtPosition* = object
  `header`*: Ros1Std_msgsHeader
  `type`*: uint8
  `name`*: string
  `vector`*: Ros1Geometry_msgsVector3
  `position`*: Ros1Geometry_msgsPoint
  `position_frame_id`*: string
const Ros1Kindr_msgsVectorAtPositionMaximumWireBytes* = 841
const Ros1Kindr_msgsVectorAtPositionCodecIdentity* = "UWVMROS1_bc1daa239350f73838cc3e2d3b173cd3356d856ed1f3d02c201a84b1ba8d10a1"
const Ros1Kindr_msgsVectorAtPositionNativeType* = "kindr_msgs/VectorAtPosition"
const Ros1Kindr_msgsVectorAtPositionNativeIdentity* = ""
const Ros1Kindr_msgsVectorAtPosition_TYPE_TYPELESS*: uint8 = 0'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_JERK*: uint8 = 6'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_ACCELERATION*: uint8 = 7'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_VELOCITY*: uint8 = 8'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_POSITION*: uint8 = 9'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_FORCE*: uint8 = 10'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_MOMEMTUM*: uint8 = 11'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_ANGULAR_JERK*: uint8 = 12'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_ANGULAR_ACCELERATION*: uint8 = 13'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_ANGULAR_VELOCITY*: uint8 = 14'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_TORQUE*: uint8 = 16'u8
const Ros1Kindr_msgsVectorAtPosition_TYPE_ANGULAR_MOMEMTUM*: uint8 = 17'u8
proc initRos1Kindr_msgsVectorAtPosition*(): Ros1Kindr_msgsVectorAtPosition =
  result.`header` = initRos1Std_msgsHeader()
  result.`type` = 0
  result.`name` = ""
  result.`vector` = initRos1Geometry_msgsVector3()
  result.`position` = initRos1Geometry_msgsPoint()
  result.`position_frame_id` = ""
proc writeFields*(value: Ros1Kindr_msgsVectorAtPosition; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`type`)
  putString(w,value.`name`,256)
  writeFields(value.`vector`,w)
  writeFields(value.`position`,w)
  putString(w,value.`position_frame_id`,256)
proc readRos1Kindr_msgsVectorAtPosition*(r: var Reader): Ros1Kindr_msgsVectorAtPosition =
  result = initRos1Kindr_msgsVectorAtPosition()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`type` = getInteger(r,uint8)
  result.`name` = getString(r,256)
  result.`vector` = readRos1Geometry_msgsVector3(r)
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`position_frame_id` = getString(r,256)
proc encode*(value: Ros1Kindr_msgsVectorAtPosition): seq[byte] =
  var w = initWriter(841)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kindr_msgsVectorAtPosition*(b: seq[byte]): Ros1Kindr_msgsVectorAtPosition =
  var r = initReader(b,841)
  result = readRos1Kindr_msgsVectorAtPosition(r)
  finish(r)
type Ros1Kuavo_audio_playerAudio_statusRequest* = object
const Ros1Kuavo_audio_playerAudio_statusRequestMaximumWireBytes* = 0
const Ros1Kuavo_audio_playerAudio_statusRequestCodecIdentity* = "UWVMROS1_f97d690c1ed905da0ca05ad9fd54d8eda09627af48fac8da4e9319cda2fc57ae"
const Ros1Kuavo_audio_playerAudio_statusRequestNativeType* = "kuavo_audio_player/audio_statusRequest"
const Ros1Kuavo_audio_playerAudio_statusRequestNativeIdentity* = ""
proc initRos1Kuavo_audio_playerAudio_statusRequest*(): Ros1Kuavo_audio_playerAudio_statusRequest =
  discard
proc writeFields*(value: Ros1Kuavo_audio_playerAudio_statusRequest; w: var Writer) =
  discard
proc readRos1Kuavo_audio_playerAudio_statusRequest*(r: var Reader): Ros1Kuavo_audio_playerAudio_statusRequest =
  result = initRos1Kuavo_audio_playerAudio_statusRequest()
proc encode*(value: Ros1Kuavo_audio_playerAudio_statusRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_audio_playerAudio_statusRequest*(b: seq[byte]): Ros1Kuavo_audio_playerAudio_statusRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_audio_playerAudio_statusRequest(r)
  finish(r)
type Ros1Kuavo_audio_playerAudio_statusResponse* = object
  `is_playing`*: bool
const Ros1Kuavo_audio_playerAudio_statusResponseMaximumWireBytes* = 1
const Ros1Kuavo_audio_playerAudio_statusResponseCodecIdentity* = "UWVMROS1_0245390904197da671731dfc6249a5c1af2d8da7311f8be8efe55555d218fec6"
const Ros1Kuavo_audio_playerAudio_statusResponseNativeType* = "kuavo_audio_player/audio_statusResponse"
const Ros1Kuavo_audio_playerAudio_statusResponseNativeIdentity* = ""
proc initRos1Kuavo_audio_playerAudio_statusResponse*(): Ros1Kuavo_audio_playerAudio_statusResponse =
  result.`is_playing` = false
proc writeFields*(value: Ros1Kuavo_audio_playerAudio_statusResponse; w: var Writer) =
  putBool(w,value.`is_playing`)
proc readRos1Kuavo_audio_playerAudio_statusResponse*(r: var Reader): Ros1Kuavo_audio_playerAudio_statusResponse =
  result = initRos1Kuavo_audio_playerAudio_statusResponse()
  result.`is_playing` = getBool(r)
proc encode*(value: Ros1Kuavo_audio_playerAudio_statusResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_audio_playerAudio_statusResponse*(b: seq[byte]): Ros1Kuavo_audio_playerAudio_statusResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_audio_playerAudio_statusResponse(r)
  finish(r)
type Ros1Kuavo_audio_playerPlaymusicRequest* = object
  `music_number`*: string
  `volume`*: int64
const Ros1Kuavo_audio_playerPlaymusicRequestMaximumWireBytes* = 268
const Ros1Kuavo_audio_playerPlaymusicRequestCodecIdentity* = "UWVMROS1_43abc9929baa3910ffe2b1623208f3321e6c6ad641aabcff33f2b288d111c476"
const Ros1Kuavo_audio_playerPlaymusicRequestNativeType* = "kuavo_audio_player/playmusicRequest"
const Ros1Kuavo_audio_playerPlaymusicRequestNativeIdentity* = ""
proc initRos1Kuavo_audio_playerPlaymusicRequest*(): Ros1Kuavo_audio_playerPlaymusicRequest =
  result.`music_number` = ""
  result.`volume` = 0
proc writeFields*(value: Ros1Kuavo_audio_playerPlaymusicRequest; w: var Writer) =
  putString(w,value.`music_number`,256)
  putInteger(w,value.`volume`)
proc readRos1Kuavo_audio_playerPlaymusicRequest*(r: var Reader): Ros1Kuavo_audio_playerPlaymusicRequest =
  result = initRos1Kuavo_audio_playerPlaymusicRequest()
  result.`music_number` = getString(r,256)
  result.`volume` = getInteger(r,int64)
proc encode*(value: Ros1Kuavo_audio_playerPlaymusicRequest): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_audio_playerPlaymusicRequest*(b: seq[byte]): Ros1Kuavo_audio_playerPlaymusicRequest =
  var r = initReader(b,268)
  result = readRos1Kuavo_audio_playerPlaymusicRequest(r)
  finish(r)
type Ros1Kuavo_audio_playerPlaymusicResponse* = object
  `success_flag`*: bool
const Ros1Kuavo_audio_playerPlaymusicResponseMaximumWireBytes* = 1
const Ros1Kuavo_audio_playerPlaymusicResponseCodecIdentity* = "UWVMROS1_191b11d8b6731ff4298e2462fe7b47bcacdb5d2c3562757c120c17b4430cbe75"
const Ros1Kuavo_audio_playerPlaymusicResponseNativeType* = "kuavo_audio_player/playmusicResponse"
const Ros1Kuavo_audio_playerPlaymusicResponseNativeIdentity* = ""
proc initRos1Kuavo_audio_playerPlaymusicResponse*(): Ros1Kuavo_audio_playerPlaymusicResponse =
  result.`success_flag` = false
proc writeFields*(value: Ros1Kuavo_audio_playerPlaymusicResponse; w: var Writer) =
  putBool(w,value.`success_flag`)
proc readRos1Kuavo_audio_playerPlaymusicResponse*(r: var Reader): Ros1Kuavo_audio_playerPlaymusicResponse =
  result = initRos1Kuavo_audio_playerPlaymusicResponse()
  result.`success_flag` = getBool(r)
proc encode*(value: Ros1Kuavo_audio_playerPlaymusicResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_audio_playerPlaymusicResponse*(b: seq[byte]): Ros1Kuavo_audio_playerPlaymusicResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_audio_playerPlaymusicResponse(r)
  finish(r)
type Ros1Kuavo_mappingDeleteMapRequest* = object
  `map_name`*: string
const Ros1Kuavo_mappingDeleteMapRequestMaximumWireBytes* = 260
const Ros1Kuavo_mappingDeleteMapRequestCodecIdentity* = "UWVMROS1_aac10d7d962844a53bda46cc3a7b185343837a8a3e8a1abd7fdca88997947f31"
const Ros1Kuavo_mappingDeleteMapRequestNativeType* = "kuavo_mapping/DeleteMapRequest"
const Ros1Kuavo_mappingDeleteMapRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingDeleteMapRequest*(): Ros1Kuavo_mappingDeleteMapRequest =
  result.`map_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingDeleteMapRequest; w: var Writer) =
  putString(w,value.`map_name`,256)
proc readRos1Kuavo_mappingDeleteMapRequest*(r: var Reader): Ros1Kuavo_mappingDeleteMapRequest =
  result = initRos1Kuavo_mappingDeleteMapRequest()
  result.`map_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingDeleteMapRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingDeleteMapRequest*(b: seq[byte]): Ros1Kuavo_mappingDeleteMapRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_mappingDeleteMapRequest(r)
  finish(r)
type Ros1Kuavo_mappingDeleteMapResponse* = object
  `success`*: bool
  `message`*: string
  `map_name`*: string
const Ros1Kuavo_mappingDeleteMapResponseMaximumWireBytes* = 521
const Ros1Kuavo_mappingDeleteMapResponseCodecIdentity* = "UWVMROS1_b075c750af76a0ec5cada415590db74050d3e62fd911030c8610f852c7ed121b"
const Ros1Kuavo_mappingDeleteMapResponseNativeType* = "kuavo_mapping/DeleteMapResponse"
const Ros1Kuavo_mappingDeleteMapResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingDeleteMapResponse*(): Ros1Kuavo_mappingDeleteMapResponse =
  result.`success` = false
  result.`message` = ""
  result.`map_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingDeleteMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`map_name`,256)
proc readRos1Kuavo_mappingDeleteMapResponse*(r: var Reader): Ros1Kuavo_mappingDeleteMapResponse =
  result = initRos1Kuavo_mappingDeleteMapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`map_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingDeleteMapResponse): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingDeleteMapResponse*(b: seq[byte]): Ros1Kuavo_mappingDeleteMapResponse =
  var r = initReader(b,521)
  result = readRos1Kuavo_mappingDeleteMapResponse(r)
  finish(r)
type Ros1Kuavo_mappingEditMapRequest* = object
  `map_name`*: string
  `points`*: seq[float64]
  `operation`*: string
const Ros1Kuavo_mappingEditMapRequestMaximumWireBytes* = 652
const Ros1Kuavo_mappingEditMapRequestCodecIdentity* = "UWVMROS1_bbb68b6161b9728ae6c78319fb557f26bda80a94adad133098262dae57f9f736"
const Ros1Kuavo_mappingEditMapRequestNativeType* = "kuavo_mapping/EditMapRequest"
const Ros1Kuavo_mappingEditMapRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingEditMapRequest*(): Ros1Kuavo_mappingEditMapRequest =
  result.`map_name` = ""
  result.`points` = @[]
  result.`operation` = ""
proc writeFields*(value: Ros1Kuavo_mappingEditMapRequest; w: var Writer) =
  putString(w,value.`map_name`,256)
  if value.`points`.len > 16: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    putFloat64(w,e)
  putString(w,value.`operation`,256)
proc readRos1Kuavo_mappingEditMapRequest*(r: var Reader): Ros1Kuavo_mappingEditMapRequest =
  result = initRos1Kuavo_mappingEditMapRequest()
  result.`map_name` = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`points` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`points`[i] = getFloat64(r)
  result.`operation` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingEditMapRequest): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingEditMapRequest*(b: seq[byte]): Ros1Kuavo_mappingEditMapRequest =
  var r = initReader(b,652)
  result = readRos1Kuavo_mappingEditMapRequest(r)
  finish(r)
type Ros1Kuavo_mappingEditMapResponse* = object
  `success`*: bool
  `message`*: string
  `image_data`*: string
const Ros1Kuavo_mappingEditMapResponseMaximumWireBytes* = 521
const Ros1Kuavo_mappingEditMapResponseCodecIdentity* = "UWVMROS1_8e4f58a3fbdc5e842cdf6daf431cf74f82fa00dae90791802e8f3d0f30bea0a8"
const Ros1Kuavo_mappingEditMapResponseNativeType* = "kuavo_mapping/EditMapResponse"
const Ros1Kuavo_mappingEditMapResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingEditMapResponse*(): Ros1Kuavo_mappingEditMapResponse =
  result.`success` = false
  result.`message` = ""
  result.`image_data` = ""
proc writeFields*(value: Ros1Kuavo_mappingEditMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`image_data`,256)
proc readRos1Kuavo_mappingEditMapResponse*(r: var Reader): Ros1Kuavo_mappingEditMapResponse =
  result = initRos1Kuavo_mappingEditMapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`image_data` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingEditMapResponse): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingEditMapResponse*(b: seq[byte]): Ros1Kuavo_mappingEditMapResponse =
  var r = initReader(b,521)
  result = readRos1Kuavo_mappingEditMapResponse(r)
  finish(r)
type Ros1Kuavo_mappingGetAllMapsRequest* = object
const Ros1Kuavo_mappingGetAllMapsRequestMaximumWireBytes* = 0
const Ros1Kuavo_mappingGetAllMapsRequestCodecIdentity* = "UWVMROS1_8ecf1a96694cc402875f7bb3bd965b13cb4e7a6eceb73b984261944d910ed9ad"
const Ros1Kuavo_mappingGetAllMapsRequestNativeType* = "kuavo_mapping/GetAllMapsRequest"
const Ros1Kuavo_mappingGetAllMapsRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingGetAllMapsRequest*(): Ros1Kuavo_mappingGetAllMapsRequest =
  discard
proc writeFields*(value: Ros1Kuavo_mappingGetAllMapsRequest; w: var Writer) =
  discard
proc readRos1Kuavo_mappingGetAllMapsRequest*(r: var Reader): Ros1Kuavo_mappingGetAllMapsRequest =
  result = initRos1Kuavo_mappingGetAllMapsRequest()
proc encode*(value: Ros1Kuavo_mappingGetAllMapsRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingGetAllMapsRequest*(b: seq[byte]): Ros1Kuavo_mappingGetAllMapsRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_mappingGetAllMapsRequest(r)
  finish(r)
type Ros1Kuavo_mappingGetAllMapsResponse* = object
  `maps`*: seq[string]
const Ros1Kuavo_mappingGetAllMapsResponseMaximumWireBytes* = 4164
const Ros1Kuavo_mappingGetAllMapsResponseCodecIdentity* = "UWVMROS1_b5b330be5b9e5a0a0eded8925bcb69e8298b8249dec81b00fe0082afe65a4af1"
const Ros1Kuavo_mappingGetAllMapsResponseNativeType* = "kuavo_mapping/GetAllMapsResponse"
const Ros1Kuavo_mappingGetAllMapsResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingGetAllMapsResponse*(): Ros1Kuavo_mappingGetAllMapsResponse =
  result.`maps` = @[]
proc writeFields*(value: Ros1Kuavo_mappingGetAllMapsResponse; w: var Writer) =
  if value.`maps`.len > 16: fail(22)
  putInteger(w,uint32(value.`maps`.len))
  for e in value.`maps`:
    putString(w,e,256)
proc readRos1Kuavo_mappingGetAllMapsResponse*(r: var Reader): Ros1Kuavo_mappingGetAllMapsResponse =
  result = initRos1Kuavo_mappingGetAllMapsResponse()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`maps` = newSeq[string](count0)
  for i in 0..<count0:
    result.`maps`[i] = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingGetAllMapsResponse): seq[byte] =
  var w = initWriter(4164)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingGetAllMapsResponse*(b: seq[byte]): Ros1Kuavo_mappingGetAllMapsResponse =
  var r = initReader(b,4164)
  result = readRos1Kuavo_mappingGetAllMapsResponse(r)
  finish(r)
type Ros1Kuavo_mappingGetCurrentMapRequest* = object
const Ros1Kuavo_mappingGetCurrentMapRequestMaximumWireBytes* = 0
const Ros1Kuavo_mappingGetCurrentMapRequestCodecIdentity* = "UWVMROS1_c3b2df6d6d1e08619be06a878917aef313bc6a8d124ded561407af62213d0c11"
const Ros1Kuavo_mappingGetCurrentMapRequestNativeType* = "kuavo_mapping/GetCurrentMapRequest"
const Ros1Kuavo_mappingGetCurrentMapRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingGetCurrentMapRequest*(): Ros1Kuavo_mappingGetCurrentMapRequest =
  discard
proc writeFields*(value: Ros1Kuavo_mappingGetCurrentMapRequest; w: var Writer) =
  discard
proc readRos1Kuavo_mappingGetCurrentMapRequest*(r: var Reader): Ros1Kuavo_mappingGetCurrentMapRequest =
  result = initRos1Kuavo_mappingGetCurrentMapRequest()
proc encode*(value: Ros1Kuavo_mappingGetCurrentMapRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingGetCurrentMapRequest*(b: seq[byte]): Ros1Kuavo_mappingGetCurrentMapRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_mappingGetCurrentMapRequest(r)
  finish(r)
type Ros1Kuavo_mappingGetCurrentMapResponse* = object
  `current_map`*: string
const Ros1Kuavo_mappingGetCurrentMapResponseMaximumWireBytes* = 260
const Ros1Kuavo_mappingGetCurrentMapResponseCodecIdentity* = "UWVMROS1_4b939cd83cd2de1b5dd38047a81c7be3314a965f3e869a297aaab274f22288fc"
const Ros1Kuavo_mappingGetCurrentMapResponseNativeType* = "kuavo_mapping/GetCurrentMapResponse"
const Ros1Kuavo_mappingGetCurrentMapResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingGetCurrentMapResponse*(): Ros1Kuavo_mappingGetCurrentMapResponse =
  result.`current_map` = ""
proc writeFields*(value: Ros1Kuavo_mappingGetCurrentMapResponse; w: var Writer) =
  putString(w,value.`current_map`,256)
proc readRos1Kuavo_mappingGetCurrentMapResponse*(r: var Reader): Ros1Kuavo_mappingGetCurrentMapResponse =
  result = initRos1Kuavo_mappingGetCurrentMapResponse()
  result.`current_map` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingGetCurrentMapResponse): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingGetCurrentMapResponse*(b: seq[byte]): Ros1Kuavo_mappingGetCurrentMapResponse =
  var r = initReader(b,260)
  result = readRos1Kuavo_mappingGetCurrentMapResponse(r)
  finish(r)
type Ros1Kuavo_mappingInitialPoseWithTaskPointRequest* = object
  `task_point_name`*: string
const Ros1Kuavo_mappingInitialPoseWithTaskPointRequestMaximumWireBytes* = 260
const Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodecIdentity* = "UWVMROS1_1117aa6a51d14d2ebd38bc414a18159dcfd549581a9f309010ff448257fcff8f"
const Ros1Kuavo_mappingInitialPoseWithTaskPointRequestNativeType* = "kuavo_mapping/InitialPoseWithTaskPointRequest"
const Ros1Kuavo_mappingInitialPoseWithTaskPointRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingInitialPoseWithTaskPointRequest*(): Ros1Kuavo_mappingInitialPoseWithTaskPointRequest =
  result.`task_point_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingInitialPoseWithTaskPointRequest; w: var Writer) =
  putString(w,value.`task_point_name`,256)
proc readRos1Kuavo_mappingInitialPoseWithTaskPointRequest*(r: var Reader): Ros1Kuavo_mappingInitialPoseWithTaskPointRequest =
  result = initRos1Kuavo_mappingInitialPoseWithTaskPointRequest()
  result.`task_point_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingInitialPoseWithTaskPointRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingInitialPoseWithTaskPointRequest*(b: seq[byte]): Ros1Kuavo_mappingInitialPoseWithTaskPointRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_mappingInitialPoseWithTaskPointRequest(r)
  finish(r)
type Ros1Kuavo_mappingInitialPoseWithTaskPointResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_mappingInitialPoseWithTaskPointResponseMaximumWireBytes* = 261
const Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodecIdentity* = "UWVMROS1_fe171dea7d3aa761a05c5e9ca8c0300f151549e55fe2d61623fcc4b3537669bd"
const Ros1Kuavo_mappingInitialPoseWithTaskPointResponseNativeType* = "kuavo_mapping/InitialPoseWithTaskPointResponse"
const Ros1Kuavo_mappingInitialPoseWithTaskPointResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingInitialPoseWithTaskPointResponse*(): Ros1Kuavo_mappingInitialPoseWithTaskPointResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_mappingInitialPoseWithTaskPointResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_mappingInitialPoseWithTaskPointResponse*(r: var Reader): Ros1Kuavo_mappingInitialPoseWithTaskPointResponse =
  result = initRos1Kuavo_mappingInitialPoseWithTaskPointResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingInitialPoseWithTaskPointResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse*(b: seq[byte]): Ros1Kuavo_mappingInitialPoseWithTaskPointResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_mappingInitialPoseWithTaskPointResponse(r)
  finish(r)
type Ros1Kuavo_mappingLoadMapRequest* = object
  `map_name`*: string
const Ros1Kuavo_mappingLoadMapRequestMaximumWireBytes* = 260
const Ros1Kuavo_mappingLoadMapRequestCodecIdentity* = "UWVMROS1_39877b34482fa3369fec6fd95df396129b0317e00142df4d5a45c265be042720"
const Ros1Kuavo_mappingLoadMapRequestNativeType* = "kuavo_mapping/LoadMapRequest"
const Ros1Kuavo_mappingLoadMapRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingLoadMapRequest*(): Ros1Kuavo_mappingLoadMapRequest =
  result.`map_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingLoadMapRequest; w: var Writer) =
  putString(w,value.`map_name`,256)
proc readRos1Kuavo_mappingLoadMapRequest*(r: var Reader): Ros1Kuavo_mappingLoadMapRequest =
  result = initRos1Kuavo_mappingLoadMapRequest()
  result.`map_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingLoadMapRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingLoadMapRequest*(b: seq[byte]): Ros1Kuavo_mappingLoadMapRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_mappingLoadMapRequest(r)
  finish(r)
type Ros1Kuavo_mappingLoadMapResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_mappingLoadMapResponseMaximumWireBytes* = 261
const Ros1Kuavo_mappingLoadMapResponseCodecIdentity* = "UWVMROS1_c5fd63cb0fd95e0b6d8bb091a4abf9c74ea40383379fb9a065cfa5c976d7d9e4"
const Ros1Kuavo_mappingLoadMapResponseNativeType* = "kuavo_mapping/LoadMapResponse"
const Ros1Kuavo_mappingLoadMapResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingLoadMapResponse*(): Ros1Kuavo_mappingLoadMapResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_mappingLoadMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_mappingLoadMapResponse*(r: var Reader): Ros1Kuavo_mappingLoadMapResponse =
  result = initRos1Kuavo_mappingLoadMapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingLoadMapResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingLoadMapResponse*(b: seq[byte]): Ros1Kuavo_mappingLoadMapResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_mappingLoadMapResponse(r)
  finish(r)
type Ros1Kuavo_mappingNavigateToTaskPointRequest* = object
  `task_name`*: string
const Ros1Kuavo_mappingNavigateToTaskPointRequestMaximumWireBytes* = 260
const Ros1Kuavo_mappingNavigateToTaskPointRequestCodecIdentity* = "UWVMROS1_a2b5f37013e5a2f56a6dd870660ad38b59b966700bb54701012a7c600d990fee"
const Ros1Kuavo_mappingNavigateToTaskPointRequestNativeType* = "kuavo_mapping/NavigateToTaskPointRequest"
const Ros1Kuavo_mappingNavigateToTaskPointRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingNavigateToTaskPointRequest*(): Ros1Kuavo_mappingNavigateToTaskPointRequest =
  result.`task_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingNavigateToTaskPointRequest; w: var Writer) =
  putString(w,value.`task_name`,256)
proc readRos1Kuavo_mappingNavigateToTaskPointRequest*(r: var Reader): Ros1Kuavo_mappingNavigateToTaskPointRequest =
  result = initRos1Kuavo_mappingNavigateToTaskPointRequest()
  result.`task_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingNavigateToTaskPointRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingNavigateToTaskPointRequest*(b: seq[byte]): Ros1Kuavo_mappingNavigateToTaskPointRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_mappingNavigateToTaskPointRequest(r)
  finish(r)
type Ros1Kuavo_mappingNavigateToTaskPointResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_mappingNavigateToTaskPointResponseMaximumWireBytes* = 261
const Ros1Kuavo_mappingNavigateToTaskPointResponseCodecIdentity* = "UWVMROS1_baf0625d4aabfb10ea065cb920d0f5ea2c8294a8ee0b33080d8d5a7891206dc2"
const Ros1Kuavo_mappingNavigateToTaskPointResponseNativeType* = "kuavo_mapping/NavigateToTaskPointResponse"
const Ros1Kuavo_mappingNavigateToTaskPointResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingNavigateToTaskPointResponse*(): Ros1Kuavo_mappingNavigateToTaskPointResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_mappingNavigateToTaskPointResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_mappingNavigateToTaskPointResponse*(r: var Reader): Ros1Kuavo_mappingNavigateToTaskPointResponse =
  result = initRos1Kuavo_mappingNavigateToTaskPointResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingNavigateToTaskPointResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingNavigateToTaskPointResponse*(b: seq[byte]): Ros1Kuavo_mappingNavigateToTaskPointResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_mappingNavigateToTaskPointResponse(r)
  finish(r)
type Ros1Kuavo_mappingRenameMapRequest* = object
  `old_name`*: string
  `new_name`*: string
const Ros1Kuavo_mappingRenameMapRequestMaximumWireBytes* = 520
const Ros1Kuavo_mappingRenameMapRequestCodecIdentity* = "UWVMROS1_45bbf580fa9ea0d45f1233405e5f3ce95f652a1ca6044b584ae918acf4f65eea"
const Ros1Kuavo_mappingRenameMapRequestNativeType* = "kuavo_mapping/RenameMapRequest"
const Ros1Kuavo_mappingRenameMapRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingRenameMapRequest*(): Ros1Kuavo_mappingRenameMapRequest =
  result.`old_name` = ""
  result.`new_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingRenameMapRequest; w: var Writer) =
  putString(w,value.`old_name`,256)
  putString(w,value.`new_name`,256)
proc readRos1Kuavo_mappingRenameMapRequest*(r: var Reader): Ros1Kuavo_mappingRenameMapRequest =
  result = initRos1Kuavo_mappingRenameMapRequest()
  result.`old_name` = getString(r,256)
  result.`new_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingRenameMapRequest): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingRenameMapRequest*(b: seq[byte]): Ros1Kuavo_mappingRenameMapRequest =
  var r = initReader(b,520)
  result = readRos1Kuavo_mappingRenameMapRequest(r)
  finish(r)
type Ros1Kuavo_mappingRenameMapResponse* = object
  `success`*: bool
  `message`*: string
  `old_name`*: string
  `new_name`*: string
const Ros1Kuavo_mappingRenameMapResponseMaximumWireBytes* = 781
const Ros1Kuavo_mappingRenameMapResponseCodecIdentity* = "UWVMROS1_a65d793d296107dffcb6e0706fe6a0d2aa1b1f8888f127b82ef9be10d4e8616b"
const Ros1Kuavo_mappingRenameMapResponseNativeType* = "kuavo_mapping/RenameMapResponse"
const Ros1Kuavo_mappingRenameMapResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingRenameMapResponse*(): Ros1Kuavo_mappingRenameMapResponse =
  result.`success` = false
  result.`message` = ""
  result.`old_name` = ""
  result.`new_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingRenameMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`old_name`,256)
  putString(w,value.`new_name`,256)
proc readRos1Kuavo_mappingRenameMapResponse*(r: var Reader): Ros1Kuavo_mappingRenameMapResponse =
  result = initRos1Kuavo_mappingRenameMapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`old_name` = getString(r,256)
  result.`new_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingRenameMapResponse): seq[byte] =
  var w = initWriter(781)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingRenameMapResponse*(b: seq[byte]): Ros1Kuavo_mappingRenameMapResponse =
  var r = initReader(b,781)
  result = readRos1Kuavo_mappingRenameMapResponse(r)
  finish(r)
type Ros1Kuavo_mappingSaveMapRequest* = object
  `map_name`*: string
const Ros1Kuavo_mappingSaveMapRequestMaximumWireBytes* = 260
const Ros1Kuavo_mappingSaveMapRequestCodecIdentity* = "UWVMROS1_c203eb94569cd32a2f0c480e1b13cc93198ff77576eb1a8fa7b7b8d778fb8828"
const Ros1Kuavo_mappingSaveMapRequestNativeType* = "kuavo_mapping/SaveMapRequest"
const Ros1Kuavo_mappingSaveMapRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingSaveMapRequest*(): Ros1Kuavo_mappingSaveMapRequest =
  result.`map_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingSaveMapRequest; w: var Writer) =
  putString(w,value.`map_name`,256)
proc readRos1Kuavo_mappingSaveMapRequest*(r: var Reader): Ros1Kuavo_mappingSaveMapRequest =
  result = initRos1Kuavo_mappingSaveMapRequest()
  result.`map_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingSaveMapRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingSaveMapRequest*(b: seq[byte]): Ros1Kuavo_mappingSaveMapRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_mappingSaveMapRequest(r)
  finish(r)
type Ros1Kuavo_mappingSaveMapResponse* = object
  `success`*: bool
  `message`*: string
  `map_path`*: string
  `yaml_path`*: string
  `pgm_path`*: string
  `pcd_path`*: string
const Ros1Kuavo_mappingSaveMapResponseMaximumWireBytes* = 1301
const Ros1Kuavo_mappingSaveMapResponseCodecIdentity* = "UWVMROS1_04e64d751397c0a18046b53f437b3567e6197f60f824debe47d9e8076f4e8db9"
const Ros1Kuavo_mappingSaveMapResponseNativeType* = "kuavo_mapping/SaveMapResponse"
const Ros1Kuavo_mappingSaveMapResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingSaveMapResponse*(): Ros1Kuavo_mappingSaveMapResponse =
  result.`success` = false
  result.`message` = ""
  result.`map_path` = ""
  result.`yaml_path` = ""
  result.`pgm_path` = ""
  result.`pcd_path` = ""
proc writeFields*(value: Ros1Kuavo_mappingSaveMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`map_path`,256)
  putString(w,value.`yaml_path`,256)
  putString(w,value.`pgm_path`,256)
  putString(w,value.`pcd_path`,256)
proc readRos1Kuavo_mappingSaveMapResponse*(r: var Reader): Ros1Kuavo_mappingSaveMapResponse =
  result = initRos1Kuavo_mappingSaveMapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`map_path` = getString(r,256)
  result.`yaml_path` = getString(r,256)
  result.`pgm_path` = getString(r,256)
  result.`pcd_path` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingSaveMapResponse): seq[byte] =
  var w = initWriter(1301)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingSaveMapResponse*(b: seq[byte]): Ros1Kuavo_mappingSaveMapResponse =
  var r = initReader(b,1301)
  result = readRos1Kuavo_mappingSaveMapResponse(r)
  finish(r)
type Ros1Kuavo_mappingSetInitialPoseRequest* = object
  `initial_pose`*: Ros1Geometry_msgsPoseWithCovarianceStamped
const Ros1Kuavo_mappingSetInitialPoseRequestMaximumWireBytes* = 616
const Ros1Kuavo_mappingSetInitialPoseRequestCodecIdentity* = "UWVMROS1_832e206b0be5a30a52d1a6f1994a3826467f15913f891787c6c0f76e222b1566"
const Ros1Kuavo_mappingSetInitialPoseRequestNativeType* = "kuavo_mapping/SetInitialPoseRequest"
const Ros1Kuavo_mappingSetInitialPoseRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingSetInitialPoseRequest*(): Ros1Kuavo_mappingSetInitialPoseRequest =
  result.`initial_pose` = initRos1Geometry_msgsPoseWithCovarianceStamped()
proc writeFields*(value: Ros1Kuavo_mappingSetInitialPoseRequest; w: var Writer) =
  writeFields(value.`initial_pose`,w)
proc readRos1Kuavo_mappingSetInitialPoseRequest*(r: var Reader): Ros1Kuavo_mappingSetInitialPoseRequest =
  result = initRos1Kuavo_mappingSetInitialPoseRequest()
  result.`initial_pose` = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
proc encode*(value: Ros1Kuavo_mappingSetInitialPoseRequest): seq[byte] =
  var w = initWriter(616)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingSetInitialPoseRequest*(b: seq[byte]): Ros1Kuavo_mappingSetInitialPoseRequest =
  var r = initReader(b,616)
  result = readRos1Kuavo_mappingSetInitialPoseRequest(r)
  finish(r)
type Ros1Kuavo_mappingSetInitialPoseResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_mappingSetInitialPoseResponseMaximumWireBytes* = 261
const Ros1Kuavo_mappingSetInitialPoseResponseCodecIdentity* = "UWVMROS1_8335ac18125fe274c1a76029db9b865a35557febf39a6e3733a4f7e5450b5c37"
const Ros1Kuavo_mappingSetInitialPoseResponseNativeType* = "kuavo_mapping/SetInitialPoseResponse"
const Ros1Kuavo_mappingSetInitialPoseResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingSetInitialPoseResponse*(): Ros1Kuavo_mappingSetInitialPoseResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_mappingSetInitialPoseResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_mappingSetInitialPoseResponse*(r: var Reader): Ros1Kuavo_mappingSetInitialPoseResponse =
  result = initRos1Kuavo_mappingSetInitialPoseResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingSetInitialPoseResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingSetInitialPoseResponse*(b: seq[byte]): Ros1Kuavo_mappingSetInitialPoseResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_mappingSetInitialPoseResponse(r)
  finish(r)
type Ros1Kuavo_mappingStartMappingRequest* = object
  `map_name`*: string
  `lidar_type`*: string
const Ros1Kuavo_mappingStartMappingRequestMaximumWireBytes* = 520
const Ros1Kuavo_mappingStartMappingRequestCodecIdentity* = "UWVMROS1_874682fbb586b183e8c4d84f3be2feb743d57d3a2e966965e438a6587277decf"
const Ros1Kuavo_mappingStartMappingRequestNativeType* = "kuavo_mapping/StartMappingRequest"
const Ros1Kuavo_mappingStartMappingRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingStartMappingRequest*(): Ros1Kuavo_mappingStartMappingRequest =
  result.`map_name` = ""
  result.`lidar_type` = ""
proc writeFields*(value: Ros1Kuavo_mappingStartMappingRequest; w: var Writer) =
  putString(w,value.`map_name`,256)
  putString(w,value.`lidar_type`,256)
proc readRos1Kuavo_mappingStartMappingRequest*(r: var Reader): Ros1Kuavo_mappingStartMappingRequest =
  result = initRos1Kuavo_mappingStartMappingRequest()
  result.`map_name` = getString(r,256)
  result.`lidar_type` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingStartMappingRequest): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingStartMappingRequest*(b: seq[byte]): Ros1Kuavo_mappingStartMappingRequest =
  var r = initReader(b,520)
  result = readRos1Kuavo_mappingStartMappingRequest(r)
  finish(r)
type Ros1Kuavo_mappingStartMappingResponse* = object
  `success`*: bool
  `message`*: string
  `map_name`*: string
const Ros1Kuavo_mappingStartMappingResponseMaximumWireBytes* = 521
const Ros1Kuavo_mappingStartMappingResponseCodecIdentity* = "UWVMROS1_6cf0a52b7aa4774cb9fb0be766d116b433f996b80f339c7557c00815607c62c0"
const Ros1Kuavo_mappingStartMappingResponseNativeType* = "kuavo_mapping/StartMappingResponse"
const Ros1Kuavo_mappingStartMappingResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingStartMappingResponse*(): Ros1Kuavo_mappingStartMappingResponse =
  result.`success` = false
  result.`message` = ""
  result.`map_name` = ""
proc writeFields*(value: Ros1Kuavo_mappingStartMappingResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`map_name`,256)
proc readRos1Kuavo_mappingStartMappingResponse*(r: var Reader): Ros1Kuavo_mappingStartMappingResponse =
  result = initRos1Kuavo_mappingStartMappingResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`map_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingStartMappingResponse): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingStartMappingResponse*(b: seq[byte]): Ros1Kuavo_mappingStartMappingResponse =
  var r = initReader(b,521)
  result = readRos1Kuavo_mappingStartMappingResponse(r)
  finish(r)
type Ros1Kuavo_mappingStopMappingRequest* = object
const Ros1Kuavo_mappingStopMappingRequestMaximumWireBytes* = 0
const Ros1Kuavo_mappingStopMappingRequestCodecIdentity* = "UWVMROS1_168a98e242741c38f2edb346778f7c25be34593cc452253c7ee17f51b42d5312"
const Ros1Kuavo_mappingStopMappingRequestNativeType* = "kuavo_mapping/StopMappingRequest"
const Ros1Kuavo_mappingStopMappingRequestNativeIdentity* = ""
proc initRos1Kuavo_mappingStopMappingRequest*(): Ros1Kuavo_mappingStopMappingRequest =
  discard
proc writeFields*(value: Ros1Kuavo_mappingStopMappingRequest; w: var Writer) =
  discard
proc readRos1Kuavo_mappingStopMappingRequest*(r: var Reader): Ros1Kuavo_mappingStopMappingRequest =
  result = initRos1Kuavo_mappingStopMappingRequest()
proc encode*(value: Ros1Kuavo_mappingStopMappingRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingStopMappingRequest*(b: seq[byte]): Ros1Kuavo_mappingStopMappingRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_mappingStopMappingRequest(r)
  finish(r)
type Ros1Kuavo_mappingStopMappingResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_mappingStopMappingResponseMaximumWireBytes* = 261
const Ros1Kuavo_mappingStopMappingResponseCodecIdentity* = "UWVMROS1_17b821c01d3df0a9607716b89c1068637b5448b8ebe888c7c2dd6de900d211bf"
const Ros1Kuavo_mappingStopMappingResponseNativeType* = "kuavo_mapping/StopMappingResponse"
const Ros1Kuavo_mappingStopMappingResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingStopMappingResponse*(): Ros1Kuavo_mappingStopMappingResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_mappingStopMappingResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_mappingStopMappingResponse*(r: var Reader): Ros1Kuavo_mappingStopMappingResponse =
  result = initRos1Kuavo_mappingStopMappingResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingStopMappingResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingStopMappingResponse*(b: seq[byte]): Ros1Kuavo_mappingStopMappingResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_mappingStopMappingResponse(r)
  finish(r)
type Ros1Kuavo_mappingTaskPoint* = object
  `pose`*: Ros1Geometry_msgsPose
  `name`*: string
const Ros1Kuavo_mappingTaskPointMaximumWireBytes* = 316
const Ros1Kuavo_mappingTaskPointCodecIdentity* = "UWVMROS1_fe6afa2e8cca97a9648d448712d6274a95b0a2afb65084d1024fb21751f70688"
const Ros1Kuavo_mappingTaskPointNativeType* = "kuavo_mapping/TaskPoint"
const Ros1Kuavo_mappingTaskPointNativeIdentity* = ""
proc initRos1Kuavo_mappingTaskPoint*(): Ros1Kuavo_mappingTaskPoint =
  result.`pose` = initRos1Geometry_msgsPose()
  result.`name` = ""
proc writeFields*(value: Ros1Kuavo_mappingTaskPoint; w: var Writer) =
  writeFields(value.`pose`,w)
  putString(w,value.`name`,256)
proc readRos1Kuavo_mappingTaskPoint*(r: var Reader): Ros1Kuavo_mappingTaskPoint =
  result = initRos1Kuavo_mappingTaskPoint()
  result.`pose` = readRos1Geometry_msgsPose(r)
  result.`name` = getString(r,256)
proc encode*(value: Ros1Kuavo_mappingTaskPoint): seq[byte] =
  var w = initWriter(316)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingTaskPoint*(b: seq[byte]): Ros1Kuavo_mappingTaskPoint =
  var r = initReader(b,316)
  result = readRos1Kuavo_mappingTaskPoint(r)
  finish(r)
type Ros1Kuavo_mappingTaskPointOperationRequest* = object
  `operation`*: int8
  `task_point`*: Ros1Kuavo_mappingTaskPoint
  `name`*: string
  `use_robot_current_pose`*: bool
const Ros1Kuavo_mappingTaskPointOperationRequestMaximumWireBytes* = 578
const Ros1Kuavo_mappingTaskPointOperationRequestCodecIdentity* = "UWVMROS1_c6344869bb1e8975ca2222ed0788e8693c137861bbbd296ba278bbaee9fec25a"
const Ros1Kuavo_mappingTaskPointOperationRequestNativeType* = "kuavo_mapping/TaskPointOperationRequest"
const Ros1Kuavo_mappingTaskPointOperationRequestNativeIdentity* = ""
const Ros1Kuavo_mappingTaskPointOperationRequest_ADD*: int8 = 0'i8
const Ros1Kuavo_mappingTaskPointOperationRequest_UPDATE*: int8 = 1'i8
const Ros1Kuavo_mappingTaskPointOperationRequest_DELETE*: int8 = 2'i8
const Ros1Kuavo_mappingTaskPointOperationRequest_GET*: int8 = 3'i8
proc initRos1Kuavo_mappingTaskPointOperationRequest*(): Ros1Kuavo_mappingTaskPointOperationRequest =
  result.`operation` = 0
  result.`task_point` = initRos1Kuavo_mappingTaskPoint()
  result.`name` = ""
  result.`use_robot_current_pose` = false
proc writeFields*(value: Ros1Kuavo_mappingTaskPointOperationRequest; w: var Writer) =
  putInteger(w,value.`operation`)
  writeFields(value.`task_point`,w)
  putString(w,value.`name`,256)
  putBool(w,value.`use_robot_current_pose`)
proc readRos1Kuavo_mappingTaskPointOperationRequest*(r: var Reader): Ros1Kuavo_mappingTaskPointOperationRequest =
  result = initRos1Kuavo_mappingTaskPointOperationRequest()
  result.`operation` = getInteger(r,int8)
  result.`task_point` = readRos1Kuavo_mappingTaskPoint(r)
  result.`name` = getString(r,256)
  result.`use_robot_current_pose` = getBool(r)
proc encode*(value: Ros1Kuavo_mappingTaskPointOperationRequest): seq[byte] =
  var w = initWriter(578)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingTaskPointOperationRequest*(b: seq[byte]): Ros1Kuavo_mappingTaskPointOperationRequest =
  var r = initReader(b,578)
  result = readRos1Kuavo_mappingTaskPointOperationRequest(r)
  finish(r)
type Ros1Kuavo_mappingTaskPointOperationResponse* = object
  `success`*: bool
  `message`*: string
  `task_points`*: seq[Ros1Kuavo_mappingTaskPoint]
const Ros1Kuavo_mappingTaskPointOperationResponseMaximumWireBytes* = 2793
const Ros1Kuavo_mappingTaskPointOperationResponseCodecIdentity* = "UWVMROS1_263d6613ca44b86c344aaa2f85c46584052ff465208d3ab764ccce2cae809d70"
const Ros1Kuavo_mappingTaskPointOperationResponseNativeType* = "kuavo_mapping/TaskPointOperationResponse"
const Ros1Kuavo_mappingTaskPointOperationResponseNativeIdentity* = ""
proc initRos1Kuavo_mappingTaskPointOperationResponse*(): Ros1Kuavo_mappingTaskPointOperationResponse =
  result.`success` = false
  result.`message` = ""
  result.`task_points` = @[]
proc writeFields*(value: Ros1Kuavo_mappingTaskPointOperationResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  if value.`task_points`.len > 8: fail(22)
  putInteger(w,uint32(value.`task_points`.len))
  for e in value.`task_points`:
    writeFields(e,w)
proc readRos1Kuavo_mappingTaskPointOperationResponse*(r: var Reader): Ros1Kuavo_mappingTaskPointOperationResponse =
  result = initRos1Kuavo_mappingTaskPointOperationResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`task_points` = newSeq[Ros1Kuavo_mappingTaskPoint](count2)
  for i in 0..<count2:
    result.`task_points`[i] = readRos1Kuavo_mappingTaskPoint(r)
proc encode*(value: Ros1Kuavo_mappingTaskPointOperationResponse): seq[byte] =
  var w = initWriter(2793)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_mappingTaskPointOperationResponse*(b: seq[byte]): Ros1Kuavo_mappingTaskPointOperationResponse =
  var r = initReader(b,2793)
  result = readRos1Kuavo_mappingTaskPointOperationResponse(r)
  finish(r)
type Ros1Kuavo_msgsAprilTagDetection* = object
  `id`*: seq[int32]
  `size`*: seq[float64]
  `pose`*: Ros1Geometry_msgsPoseWithCovarianceStamped
const Ros1Kuavo_msgsAprilTagDetectionMaximumWireBytes* = 816
const Ros1Kuavo_msgsAprilTagDetectionCodecIdentity* = "UWVMROS1_890dc965bbcaf6ac97e03050b55bbd43671d8e04bb04b127380a3a091f189405"
const Ros1Kuavo_msgsAprilTagDetectionNativeType* = "kuavo_msgs/AprilTagDetection"
const Ros1Kuavo_msgsAprilTagDetectionNativeIdentity* = ""
proc initRos1Kuavo_msgsAprilTagDetection*(): Ros1Kuavo_msgsAprilTagDetection =
  result.`id` = @[]
  result.`size` = @[]
  result.`pose` = initRos1Geometry_msgsPoseWithCovarianceStamped()
proc writeFields*(value: Ros1Kuavo_msgsAprilTagDetection; w: var Writer) =
  if value.`id`.len > 16: fail(22)
  putInteger(w,uint32(value.`id`.len))
  for e in value.`id`:
    putInteger(w,e)
  if value.`size`.len > 16: fail(22)
  putInteger(w,uint32(value.`size`.len))
  for e in value.`size`:
    putFloat64(w,e)
  writeFields(value.`pose`,w)
proc readRos1Kuavo_msgsAprilTagDetection*(r: var Reader): Ros1Kuavo_msgsAprilTagDetection =
  result = initRos1Kuavo_msgsAprilTagDetection()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`id` = newSeq[int32](count0)
  for i in 0..<count0:
    result.`id`[i] = getInteger(r,int32)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`size` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`size`[i] = getFloat64(r)
  result.`pose` = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
proc encode*(value: Ros1Kuavo_msgsAprilTagDetection): seq[byte] =
  var w = initWriter(816)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAprilTagDetection*(b: seq[byte]): Ros1Kuavo_msgsAprilTagDetection =
  var r = initReader(b,816)
  result = readRos1Kuavo_msgsAprilTagDetection(r)
  finish(r)
type Ros1Kuavo_msgsAprilTagDetectionArray* = object
  `header`*: Ros1Std_msgsHeader
  `detections`*: seq[Ros1Kuavo_msgsAprilTagDetection]
const Ros1Kuavo_msgsAprilTagDetectionArrayMaximumWireBytes* = 6804
const Ros1Kuavo_msgsAprilTagDetectionArrayCodecIdentity* = "UWVMROS1_35d5d01d892fa758b0a0c6c6c66fe1764f6d85cef4e12b84d3bcd2cf5e51e479"
const Ros1Kuavo_msgsAprilTagDetectionArrayNativeType* = "kuavo_msgs/AprilTagDetectionArray"
const Ros1Kuavo_msgsAprilTagDetectionArrayNativeIdentity* = ""
proc initRos1Kuavo_msgsAprilTagDetectionArray*(): Ros1Kuavo_msgsAprilTagDetectionArray =
  result.`header` = initRos1Std_msgsHeader()
  result.`detections` = @[]
proc writeFields*(value: Ros1Kuavo_msgsAprilTagDetectionArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`detections`.len > 8: fail(22)
  putInteger(w,uint32(value.`detections`.len))
  for e in value.`detections`:
    writeFields(e,w)
proc readRos1Kuavo_msgsAprilTagDetectionArray*(r: var Reader): Ros1Kuavo_msgsAprilTagDetectionArray =
  result = initRos1Kuavo_msgsAprilTagDetectionArray()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`detections` = newSeq[Ros1Kuavo_msgsAprilTagDetection](count1)
  for i in 0..<count1:
    result.`detections`[i] = readRos1Kuavo_msgsAprilTagDetection(r)
proc encode*(value: Ros1Kuavo_msgsAprilTagDetectionArray): seq[byte] =
  var w = initWriter(6804)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAprilTagDetectionArray*(b: seq[byte]): Ros1Kuavo_msgsAprilTagDetectionArray =
  var r = initReader(b,6804)
  result = readRos1Kuavo_msgsAprilTagDetectionArray(r)
  finish(r)
type Ros1Kuavo_msgsAudioPlaybackStatus* = object
  `header`*: Ros1Std_msgsHeader
  `playing`*: bool
  `message`*: string
  `buffer_size`*: int32
const Ros1Kuavo_msgsAudioPlaybackStatusMaximumWireBytes* = 537
const Ros1Kuavo_msgsAudioPlaybackStatusCodecIdentity* = "UWVMROS1_3debc3102bd6a895732616303fedbb06d2d067e132b56ffcfe3e5f756a06895e"
const Ros1Kuavo_msgsAudioPlaybackStatusNativeType* = "kuavo_msgs/AudioPlaybackStatus"
const Ros1Kuavo_msgsAudioPlaybackStatusNativeIdentity* = ""
proc initRos1Kuavo_msgsAudioPlaybackStatus*(): Ros1Kuavo_msgsAudioPlaybackStatus =
  result.`header` = initRos1Std_msgsHeader()
  result.`playing` = false
  result.`message` = ""
  result.`buffer_size` = 0
proc writeFields*(value: Ros1Kuavo_msgsAudioPlaybackStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`playing`)
  putString(w,value.`message`,256)
  putInteger(w,value.`buffer_size`)
proc readRos1Kuavo_msgsAudioPlaybackStatus*(r: var Reader): Ros1Kuavo_msgsAudioPlaybackStatus =
  result = initRos1Kuavo_msgsAudioPlaybackStatus()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`playing` = getBool(r)
  result.`message` = getString(r,256)
  result.`buffer_size` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsAudioPlaybackStatus): seq[byte] =
  var w = initWriter(537)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAudioPlaybackStatus*(b: seq[byte]): Ros1Kuavo_msgsAudioPlaybackStatus =
  var r = initReader(b,537)
  result = readRos1Kuavo_msgsAudioPlaybackStatus(r)
  finish(r)
type Ros1Kuavo_msgsAudioReceiverData* = object
  `data`*: seq[uint8]
const Ros1Kuavo_msgsAudioReceiverDataMaximumWireBytes* = 260
const Ros1Kuavo_msgsAudioReceiverDataCodecIdentity* = "UWVMROS1_178e212273125b87e2ed45dfdbdc4ab1ad5ce4e4e3e9f5e37d71bbff63dd7aac"
const Ros1Kuavo_msgsAudioReceiverDataNativeType* = "kuavo_msgs/AudioReceiverData"
const Ros1Kuavo_msgsAudioReceiverDataNativeIdentity* = ""
proc initRos1Kuavo_msgsAudioReceiverData*(): Ros1Kuavo_msgsAudioReceiverData =
  result.`data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsAudioReceiverData; w: var Writer) =
  if value.`data`.len > 256: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
proc readRos1Kuavo_msgsAudioReceiverData*(r: var Reader): Ros1Kuavo_msgsAudioReceiverData =
  result = initRos1Kuavo_msgsAudioReceiverData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 256: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[uint8](count0)
  for i in 0..<count0:
    result.`data`[i] = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsAudioReceiverData): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAudioReceiverData*(b: seq[byte]): Ros1Kuavo_msgsAudioReceiverData =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsAudioReceiverData(r)
  finish(r)
type Ros1Kuavo_msgsBatteryInfo* = object
  `battery_id`*: uint8
  `voltage`*: uint32
  `current`*: int32
  `remaining_capacity`*: uint32
  `full_capacity`*: uint32
  `percentage`*: uint8
  `cycle_count`*: uint16
  `protection_flags`*: uint32
  `temperatures`*: array[6,int16]
  `timestamp`*: Ros1Time
const Ros1Kuavo_msgsBatteryInfoMaximumWireBytes* = 44
const Ros1Kuavo_msgsBatteryInfoCodecIdentity* = "UWVMROS1_6d43dab239ef03efd0e42c71727600603e4c38c3c240e3cf119f379aaa65925f"
const Ros1Kuavo_msgsBatteryInfoNativeType* = "kuavo_msgs/BatteryInfo"
const Ros1Kuavo_msgsBatteryInfoNativeIdentity* = ""
proc initRos1Kuavo_msgsBatteryInfo*(): Ros1Kuavo_msgsBatteryInfo =
  result.`battery_id` = 0
  result.`voltage` = 0
  result.`current` = 0
  result.`remaining_capacity` = 0
  result.`full_capacity` = 0
  result.`percentage` = 0
  result.`cycle_count` = 0
  result.`protection_flags` = 0
  result.`temperatures` = [0,0,0,0,0,0]
  result.`timestamp` = initRos1Time()
proc writeFields*(value: Ros1Kuavo_msgsBatteryInfo; w: var Writer) =
  putInteger(w,value.`battery_id`)
  putInteger(w,value.`voltage`)
  putInteger(w,value.`current`)
  putInteger(w,value.`remaining_capacity`)
  putInteger(w,value.`full_capacity`)
  putInteger(w,value.`percentage`)
  putInteger(w,value.`cycle_count`)
  putInteger(w,value.`protection_flags`)
  for e in value.`temperatures`:
    putInteger(w,e)
  writeFields(value.`timestamp`,w)
proc readRos1Kuavo_msgsBatteryInfo*(r: var Reader): Ros1Kuavo_msgsBatteryInfo =
  result = initRos1Kuavo_msgsBatteryInfo()
  result.`battery_id` = getInteger(r,uint8)
  result.`voltage` = getInteger(r,uint32)
  result.`current` = getInteger(r,int32)
  result.`remaining_capacity` = getInteger(r,uint32)
  result.`full_capacity` = getInteger(r,uint32)
  result.`percentage` = getInteger(r,uint8)
  result.`cycle_count` = getInteger(r,uint16)
  result.`protection_flags` = getInteger(r,uint32)
  let count8 = 6
  for i in 0..<count8:
    result.`temperatures`[i] = getInteger(r,int16)
  result.`timestamp` = readRos1Time(r)
proc encode*(value: Ros1Kuavo_msgsBatteryInfo): seq[byte] =
  var w = initWriter(44)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsBatteryInfo*(b: seq[byte]): Ros1Kuavo_msgsBatteryInfo =
  var r = initReader(b,44)
  result = readRos1Kuavo_msgsBatteryInfo(r)
  finish(r)
type Ros1Kuavo_msgsColor* = object
  `r`*: uint8
  `g`*: uint8
  `b`*: uint8
const Ros1Kuavo_msgsColorMaximumWireBytes* = 3
const Ros1Kuavo_msgsColorCodecIdentity* = "UWVMROS1_c4fe4b1a89e4e339d2c2539b24734340d2f3de93b6cb2787a088081bff5c4e3a"
const Ros1Kuavo_msgsColorNativeType* = "kuavo_msgs/Color"
const Ros1Kuavo_msgsColorNativeIdentity* = ""
proc initRos1Kuavo_msgsColor*(): Ros1Kuavo_msgsColor =
  result.`r` = 0
  result.`g` = 0
  result.`b` = 0
proc writeFields*(value: Ros1Kuavo_msgsColor; w: var Writer) =
  putInteger(w,value.`r`)
  putInteger(w,value.`g`)
  putInteger(w,value.`b`)
proc readRos1Kuavo_msgsColor*(r: var Reader): Ros1Kuavo_msgsColor =
  result = initRos1Kuavo_msgsColor()
  result.`r` = getInteger(r,uint8)
  result.`g` = getInteger(r,uint8)
  result.`b` = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsColor): seq[byte] =
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsColor*(b: seq[byte]): Ros1Kuavo_msgsColor =
  var r = initReader(b,3)
  result = readRos1Kuavo_msgsColor(r)
  finish(r)
type Ros1Kuavo_msgsControllerSwitchEvent* = object
  `header`*: Ros1Std_msgsHeader
  `from_controller`*: string
  `to_controller`*: string
const Ros1Kuavo_msgsControllerSwitchEventMaximumWireBytes* = 792
const Ros1Kuavo_msgsControllerSwitchEventCodecIdentity* = "UWVMROS1_1c2826bf98d2b1b2873f233c87b399d3bc15b044c628d3b26dc520183d9d6fc5"
const Ros1Kuavo_msgsControllerSwitchEventNativeType* = "kuavo_msgs/ControllerSwitchEvent"
const Ros1Kuavo_msgsControllerSwitchEventNativeIdentity* = ""
proc initRos1Kuavo_msgsControllerSwitchEvent*(): Ros1Kuavo_msgsControllerSwitchEvent =
  result.`header` = initRos1Std_msgsHeader()
  result.`from_controller` = ""
  result.`to_controller` = ""
proc writeFields*(value: Ros1Kuavo_msgsControllerSwitchEvent; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`from_controller`,256)
  putString(w,value.`to_controller`,256)
proc readRos1Kuavo_msgsControllerSwitchEvent*(r: var Reader): Ros1Kuavo_msgsControllerSwitchEvent =
  result = initRos1Kuavo_msgsControllerSwitchEvent()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`from_controller` = getString(r,256)
  result.`to_controller` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsControllerSwitchEvent): seq[byte] =
  var w = initWriter(792)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsControllerSwitchEvent*(b: seq[byte]): Ros1Kuavo_msgsControllerSwitchEvent =
  var r = initReader(b,792)
  result = readRos1Kuavo_msgsControllerSwitchEvent(r)
  finish(r)
type Ros1Kuavo_msgsCreatePathRequest* = object
  `path_type`*: string
  `v_max_linear`*: float64
  `yaw_offset`*: float64
  `length`*: float64
  `radius`*: float64
  `amplitude`*: float64
  `half_scurve`*: bool
const Ros1Kuavo_msgsCreatePathRequestMaximumWireBytes* = 301
const Ros1Kuavo_msgsCreatePathRequestCodecIdentity* = "UWVMROS1_478f357d2d30fb6c735d24db510b6dbb649fd0392aebbc2ddc900232fda68b85"
const Ros1Kuavo_msgsCreatePathRequestNativeType* = "kuavo_msgs/CreatePathRequest"
const Ros1Kuavo_msgsCreatePathRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsCreatePathRequest*(): Ros1Kuavo_msgsCreatePathRequest =
  result.`path_type` = ""
  result.`v_max_linear` = 0
  result.`yaw_offset` = 0
  result.`length` = 0
  result.`radius` = 0
  result.`amplitude` = 0
  result.`half_scurve` = false
proc writeFields*(value: Ros1Kuavo_msgsCreatePathRequest; w: var Writer) =
  putString(w,value.`path_type`,256)
  putFloat64(w,value.`v_max_linear`)
  putFloat64(w,value.`yaw_offset`)
  putFloat64(w,value.`length`)
  putFloat64(w,value.`radius`)
  putFloat64(w,value.`amplitude`)
  putBool(w,value.`half_scurve`)
proc readRos1Kuavo_msgsCreatePathRequest*(r: var Reader): Ros1Kuavo_msgsCreatePathRequest =
  result = initRos1Kuavo_msgsCreatePathRequest()
  result.`path_type` = getString(r,256)
  result.`v_max_linear` = getFloat64(r)
  result.`yaw_offset` = getFloat64(r)
  result.`length` = getFloat64(r)
  result.`radius` = getFloat64(r)
  result.`amplitude` = getFloat64(r)
  result.`half_scurve` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsCreatePathRequest): seq[byte] =
  var w = initWriter(301)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsCreatePathRequest*(b: seq[byte]): Ros1Kuavo_msgsCreatePathRequest =
  var r = initReader(b,301)
  result = readRos1Kuavo_msgsCreatePathRequest(r)
  finish(r)
type Ros1Nav_msgsPath* = object
  `header`*: Ros1Std_msgsHeader
  `poses`*: seq[Ros1Geometry_msgsPoseStamped]
const Ros1Nav_msgsPathMaximumWireBytes* = 2900
const Ros1Nav_msgsPathCodecIdentity* = "UWVMROS1_ee4ffa0e9f6d8e778e020d89bd798326efa72d0639979ce1f151b69cea2f5cdd"
const Ros1Nav_msgsPathNativeType* = "nav_msgs/Path"
const Ros1Nav_msgsPathNativeIdentity* = ""
proc initRos1Nav_msgsPath*(): Ros1Nav_msgsPath =
  result.`header` = initRos1Std_msgsHeader()
  result.`poses` = @[]
proc writeFields*(value: Ros1Nav_msgsPath; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`poses`.len > 8: fail(22)
  putInteger(w,uint32(value.`poses`.len))
  for e in value.`poses`:
    writeFields(e,w)
proc readRos1Nav_msgsPath*(r: var Reader): Ros1Nav_msgsPath =
  result = initRos1Nav_msgsPath()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`poses` = newSeq[Ros1Geometry_msgsPoseStamped](count1)
  for i in 0..<count1:
    result.`poses`[i] = readRos1Geometry_msgsPoseStamped(r)
proc encode*(value: Ros1Nav_msgsPath): seq[byte] =
  var w = initWriter(2900)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nav_msgsPath*(b: seq[byte]): Ros1Nav_msgsPath =
  var r = initReader(b,2900)
  result = readRos1Nav_msgsPath(r)
  finish(r)
type Ros1Kuavo_msgsCreatePathResponse* = object
  `success`*: bool
  `message`*: string
  `path`*: Ros1Nav_msgsPath
const Ros1Kuavo_msgsCreatePathResponseMaximumWireBytes* = 3161
const Ros1Kuavo_msgsCreatePathResponseCodecIdentity* = "UWVMROS1_2663aa848c09f6f18ed5e14730332153a8a56bc5b133bd17690bd45d06c47ec0"
const Ros1Kuavo_msgsCreatePathResponseNativeType* = "kuavo_msgs/CreatePathResponse"
const Ros1Kuavo_msgsCreatePathResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsCreatePathResponse*(): Ros1Kuavo_msgsCreatePathResponse =
  result.`success` = false
  result.`message` = ""
  result.`path` = initRos1Nav_msgsPath()
proc writeFields*(value: Ros1Kuavo_msgsCreatePathResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  writeFields(value.`path`,w)
proc readRos1Kuavo_msgsCreatePathResponse*(r: var Reader): Ros1Kuavo_msgsCreatePathResponse =
  result = initRos1Kuavo_msgsCreatePathResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`path` = readRos1Nav_msgsPath(r)
proc encode*(value: Ros1Kuavo_msgsCreatePathResponse): seq[byte] =
  var w = initWriter(3161)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsCreatePathResponse*(b: seq[byte]): Ros1Kuavo_msgsCreatePathResponse =
  var r = initReader(b,3161)
  result = readRos1Kuavo_msgsCreatePathResponse(r)
  finish(r)
type Ros1Kuavo_msgsDanceTrajectoryState* = object
  `header`*: Ros1Std_msgsHeader
  `dance_name`*: string
  `state`*: string
  `run_id`*: uint32
  `current_step`*: int32
  `total_steps`*: int32
const Ros1Kuavo_msgsDanceTrajectoryStateMaximumWireBytes* = 804
const Ros1Kuavo_msgsDanceTrajectoryStateCodecIdentity* = "UWVMROS1_56f8cfcaf4c1324d8a6f330311da7281587e97d1376c6d79015c28a36fc4b6a9"
const Ros1Kuavo_msgsDanceTrajectoryStateNativeType* = "kuavo_msgs/DanceTrajectoryState"
const Ros1Kuavo_msgsDanceTrajectoryStateNativeIdentity* = ""
proc initRos1Kuavo_msgsDanceTrajectoryState*(): Ros1Kuavo_msgsDanceTrajectoryState =
  result.`header` = initRos1Std_msgsHeader()
  result.`dance_name` = ""
  result.`state` = ""
  result.`run_id` = 0
  result.`current_step` = 0
  result.`total_steps` = 0
proc writeFields*(value: Ros1Kuavo_msgsDanceTrajectoryState; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`dance_name`,256)
  putString(w,value.`state`,256)
  putInteger(w,value.`run_id`)
  putInteger(w,value.`current_step`)
  putInteger(w,value.`total_steps`)
proc readRos1Kuavo_msgsDanceTrajectoryState*(r: var Reader): Ros1Kuavo_msgsDanceTrajectoryState =
  result = initRos1Kuavo_msgsDanceTrajectoryState()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`dance_name` = getString(r,256)
  result.`state` = getString(r,256)
  result.`run_id` = getInteger(r,uint32)
  result.`current_step` = getInteger(r,int32)
  result.`total_steps` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsDanceTrajectoryState): seq[byte] =
  var w = initWriter(804)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsDanceTrajectoryState*(b: seq[byte]): Ros1Kuavo_msgsDanceTrajectoryState =
  var r = initReader(b,804)
  result = readRos1Kuavo_msgsDanceTrajectoryState(r)
  finish(r)
type Ros1Kuavo_msgsExecuteArmActionRequest* = object
  `action_name`*: string
const Ros1Kuavo_msgsExecuteArmActionRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsExecuteArmActionRequestCodecIdentity* = "UWVMROS1_d43994ccbd360139479285b18e644ff69a113e224558494cbc4a346398975298"
const Ros1Kuavo_msgsExecuteArmActionRequestNativeType* = "kuavo_msgs/ExecuteArmActionRequest"
const Ros1Kuavo_msgsExecuteArmActionRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsExecuteArmActionRequest*(): Ros1Kuavo_msgsExecuteArmActionRequest =
  result.`action_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsExecuteArmActionRequest; w: var Writer) =
  putString(w,value.`action_name`,256)
proc readRos1Kuavo_msgsExecuteArmActionRequest*(r: var Reader): Ros1Kuavo_msgsExecuteArmActionRequest =
  result = initRos1Kuavo_msgsExecuteArmActionRequest()
  result.`action_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsExecuteArmActionRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsExecuteArmActionRequest*(b: seq[byte]): Ros1Kuavo_msgsExecuteArmActionRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsExecuteArmActionRequest(r)
  finish(r)
type Ros1Kuavo_msgsExecuteArmActionResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsExecuteArmActionResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsExecuteArmActionResponseCodecIdentity* = "UWVMROS1_abcfb19fc995d65895c69f8bfd035a063e826bb3e4059e67ee77f2fd9e87fc5b"
const Ros1Kuavo_msgsExecuteArmActionResponseNativeType* = "kuavo_msgs/ExecuteArmActionResponse"
const Ros1Kuavo_msgsExecuteArmActionResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsExecuteArmActionResponse*(): Ros1Kuavo_msgsExecuteArmActionResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsExecuteArmActionResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsExecuteArmActionResponse*(r: var Reader): Ros1Kuavo_msgsExecuteArmActionResponse =
  result = initRos1Kuavo_msgsExecuteArmActionResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsExecuteArmActionResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsExecuteArmActionResponse*(b: seq[byte]): Ros1Kuavo_msgsExecuteArmActionResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsExecuteArmActionResponse(r)
  finish(r)
type Ros1Kuavo_msgsFTsensorData* = object
  `Fx`*: seq[float64]
  `Fy`*: seq[float64]
  `Fz`*: seq[float64]
  `Mx`*: seq[float64]
  `My`*: seq[float64]
  `Mz`*: seq[float64]
const Ros1Kuavo_msgsFTsensorDataMaximumWireBytes* = 792
const Ros1Kuavo_msgsFTsensorDataCodecIdentity* = "UWVMROS1_f17198f8ad7f451dc2717c09f65e2c30d56c9c6cdaff75a0172e1a01cacf5906"
const Ros1Kuavo_msgsFTsensorDataNativeType* = "kuavo_msgs/FTsensorData"
const Ros1Kuavo_msgsFTsensorDataNativeIdentity* = ""
proc initRos1Kuavo_msgsFTsensorData*(): Ros1Kuavo_msgsFTsensorData =
  result.`Fx` = @[]
  result.`Fy` = @[]
  result.`Fz` = @[]
  result.`Mx` = @[]
  result.`My` = @[]
  result.`Mz` = @[]
proc writeFields*(value: Ros1Kuavo_msgsFTsensorData; w: var Writer) =
  if value.`Fx`.len > 16: fail(22)
  putInteger(w,uint32(value.`Fx`.len))
  for e in value.`Fx`:
    putFloat64(w,e)
  if value.`Fy`.len > 16: fail(22)
  putInteger(w,uint32(value.`Fy`.len))
  for e in value.`Fy`:
    putFloat64(w,e)
  if value.`Fz`.len > 16: fail(22)
  putInteger(w,uint32(value.`Fz`.len))
  for e in value.`Fz`:
    putFloat64(w,e)
  if value.`Mx`.len > 16: fail(22)
  putInteger(w,uint32(value.`Mx`.len))
  for e in value.`Mx`:
    putFloat64(w,e)
  if value.`My`.len > 16: fail(22)
  putInteger(w,uint32(value.`My`.len))
  for e in value.`My`:
    putFloat64(w,e)
  if value.`Mz`.len > 16: fail(22)
  putInteger(w,uint32(value.`Mz`.len))
  for e in value.`Mz`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsFTsensorData*(r: var Reader): Ros1Kuavo_msgsFTsensorData =
  result = initRos1Kuavo_msgsFTsensorData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`Fx` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`Fx`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`Fy` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`Fy`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`Fz` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`Fz`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`Mx` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`Mx`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`My` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`My`[i] = getFloat64(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 16: fail(22)
  let count5 = int(rawcount5)
  result.`Mz` = newSeq[float64](count5)
  for i in 0..<count5:
    result.`Mz`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsFTsensorData): seq[byte] =
  var w = initWriter(792)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFTsensorData*(b: seq[byte]): Ros1Kuavo_msgsFTsensorData =
  var r = initReader(b,792)
  result = readRos1Kuavo_msgsFTsensorData(r)
  finish(r)
type Ros1Kuavo_msgsFaceBoundingBox* = object
  `x1`*: int32
  `y1`*: int32
  `x2`*: int32
  `y2`*: int32
  `confidence`*: float32
  `header`*: Ros1Std_msgsHeader
const Ros1Kuavo_msgsFaceBoundingBoxMaximumWireBytes* = 292
const Ros1Kuavo_msgsFaceBoundingBoxCodecIdentity* = "UWVMROS1_6ac2300ba29692faba5446831f73728bd67713e6dc8cb0255ec9d4d1b71db98c"
const Ros1Kuavo_msgsFaceBoundingBoxNativeType* = "kuavo_msgs/FaceBoundingBox"
const Ros1Kuavo_msgsFaceBoundingBoxNativeIdentity* = ""
proc initRos1Kuavo_msgsFaceBoundingBox*(): Ros1Kuavo_msgsFaceBoundingBox =
  result.`x1` = 0
  result.`y1` = 0
  result.`x2` = 0
  result.`y2` = 0
  result.`confidence` = 0
  result.`header` = initRos1Std_msgsHeader()
proc writeFields*(value: Ros1Kuavo_msgsFaceBoundingBox; w: var Writer) =
  putInteger(w,value.`x1`)
  putInteger(w,value.`y1`)
  putInteger(w,value.`x2`)
  putInteger(w,value.`y2`)
  putFloat32(w,value.`confidence`)
  writeFields(value.`header`,w)
proc readRos1Kuavo_msgsFaceBoundingBox*(r: var Reader): Ros1Kuavo_msgsFaceBoundingBox =
  result = initRos1Kuavo_msgsFaceBoundingBox()
  result.`x1` = getInteger(r,int32)
  result.`y1` = getInteger(r,int32)
  result.`x2` = getInteger(r,int32)
  result.`y2` = getInteger(r,int32)
  result.`confidence` = getFloat32(r)
  result.`header` = readRos1Std_msgsHeader(r)
proc encode*(value: Ros1Kuavo_msgsFaceBoundingBox): seq[byte] =
  var w = initWriter(292)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFaceBoundingBox*(b: seq[byte]): Ros1Kuavo_msgsFaceBoundingBox =
  var r = initReader(b,292)
  result = readRos1Kuavo_msgsFaceBoundingBox(r)
  finish(r)
type Ros1Kuavo_msgsFallStandCommandRequest* = object
  `command`*: uint8
const Ros1Kuavo_msgsFallStandCommandRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsFallStandCommandRequestCodecIdentity* = "UWVMROS1_a5d9d66843bd8aeb29b50ba78bcff0d54020f24fed123f39c351d26143354629"
const Ros1Kuavo_msgsFallStandCommandRequestNativeType* = "kuavo_msgs/FallStandCommandRequest"
const Ros1Kuavo_msgsFallStandCommandRequestNativeIdentity* = ""
const Ros1Kuavo_msgsFallStandCommandRequest_PREPARE*: uint8 = 1'u8
const Ros1Kuavo_msgsFallStandCommandRequest_STAND_UP*: uint8 = 2'u8
const Ros1Kuavo_msgsFallStandCommandRequest_RESET*: uint8 = 3'u8
proc initRos1Kuavo_msgsFallStandCommandRequest*(): Ros1Kuavo_msgsFallStandCommandRequest =
  result.`command` = 0
proc writeFields*(value: Ros1Kuavo_msgsFallStandCommandRequest; w: var Writer) =
  putInteger(w,value.`command`)
proc readRos1Kuavo_msgsFallStandCommandRequest*(r: var Reader): Ros1Kuavo_msgsFallStandCommandRequest =
  result = initRos1Kuavo_msgsFallStandCommandRequest()
  result.`command` = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsFallStandCommandRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFallStandCommandRequest*(b: seq[byte]): Ros1Kuavo_msgsFallStandCommandRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsFallStandCommandRequest(r)
  finish(r)
type Ros1Kuavo_msgsFallStandCommandResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsFallStandCommandResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsFallStandCommandResponseCodecIdentity* = "UWVMROS1_6cbe2cc62e0b13783a54bce4b951af1a508703fd7c070ea1cb5c5a565490c7a3"
const Ros1Kuavo_msgsFallStandCommandResponseNativeType* = "kuavo_msgs/FallStandCommandResponse"
const Ros1Kuavo_msgsFallStandCommandResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsFallStandCommandResponse*(): Ros1Kuavo_msgsFallStandCommandResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsFallStandCommandResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsFallStandCommandResponse*(r: var Reader): Ros1Kuavo_msgsFallStandCommandResponse =
  result = initRos1Kuavo_msgsFallStandCommandResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsFallStandCommandResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFallStandCommandResponse*(b: seq[byte]): Ros1Kuavo_msgsFallStandCommandResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsFallStandCommandResponse(r)
  finish(r)
type Ros1Kuavo_msgsFloat32MultiArrayStamped* = object
  `header`*: Ros1Std_msgsHeader
  `data`*: Ros1Std_msgsFloat32MultiArray
const Ros1Kuavo_msgsFloat32MultiArrayStampedMaximumWireBytes* = 1024
const Ros1Kuavo_msgsFloat32MultiArrayStampedCodecIdentity* = "UWVMROS1_ff2db4c4bde340f06574d38cfb22abaae0e59ba3ca5149d92c96edd3e092029f"
const Ros1Kuavo_msgsFloat32MultiArrayStampedNativeType* = "kuavo_msgs/Float32MultiArrayStamped"
const Ros1Kuavo_msgsFloat32MultiArrayStampedNativeIdentity* = ""
proc initRos1Kuavo_msgsFloat32MultiArrayStamped*(): Ros1Kuavo_msgsFloat32MultiArrayStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`data` = initRos1Std_msgsFloat32MultiArray()
proc writeFields*(value: Ros1Kuavo_msgsFloat32MultiArrayStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`data`,w)
proc readRos1Kuavo_msgsFloat32MultiArrayStamped*(r: var Reader): Ros1Kuavo_msgsFloat32MultiArrayStamped =
  result = initRos1Kuavo_msgsFloat32MultiArrayStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`data` = readRos1Std_msgsFloat32MultiArray(r)
proc encode*(value: Ros1Kuavo_msgsFloat32MultiArrayStamped): seq[byte] =
  var w = initWriter(1024)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFloat32MultiArrayStamped*(b: seq[byte]): Ros1Kuavo_msgsFloat32MultiArrayStamped =
  var r = initReader(b,1024)
  result = readRos1Kuavo_msgsFloat32MultiArrayStamped(r)
  finish(r)
type Ros1Kuavo_msgsGetAllMapsRequest* = object
const Ros1Kuavo_msgsGetAllMapsRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetAllMapsRequestCodecIdentity* = "UWVMROS1_f46ccfea6a4c91196ffadc91a2b667b2e8f69d21185bab2cd4f1f9034ef8cebf"
const Ros1Kuavo_msgsGetAllMapsRequestNativeType* = "kuavo_msgs/GetAllMapsRequest"
const Ros1Kuavo_msgsGetAllMapsRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetAllMapsRequest*(): Ros1Kuavo_msgsGetAllMapsRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetAllMapsRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetAllMapsRequest*(r: var Reader): Ros1Kuavo_msgsGetAllMapsRequest =
  result = initRos1Kuavo_msgsGetAllMapsRequest()
proc encode*(value: Ros1Kuavo_msgsGetAllMapsRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetAllMapsRequest*(b: seq[byte]): Ros1Kuavo_msgsGetAllMapsRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetAllMapsRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetAllMapsResponse* = object
  `maps`*: seq[string]
const Ros1Kuavo_msgsGetAllMapsResponseMaximumWireBytes* = 4164
const Ros1Kuavo_msgsGetAllMapsResponseCodecIdentity* = "UWVMROS1_f80958b5c4419ec5672e8fdd7c5e6d6ec0a57b38e4827fc3667b6c91f59a47bf"
const Ros1Kuavo_msgsGetAllMapsResponseNativeType* = "kuavo_msgs/GetAllMapsResponse"
const Ros1Kuavo_msgsGetAllMapsResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetAllMapsResponse*(): Ros1Kuavo_msgsGetAllMapsResponse =
  result.`maps` = @[]
proc writeFields*(value: Ros1Kuavo_msgsGetAllMapsResponse; w: var Writer) =
  if value.`maps`.len > 16: fail(22)
  putInteger(w,uint32(value.`maps`.len))
  for e in value.`maps`:
    putString(w,e,256)
proc readRos1Kuavo_msgsGetAllMapsResponse*(r: var Reader): Ros1Kuavo_msgsGetAllMapsResponse =
  result = initRos1Kuavo_msgsGetAllMapsResponse()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`maps` = newSeq[string](count0)
  for i in 0..<count0:
    result.`maps`[i] = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGetAllMapsResponse): seq[byte] =
  var w = initWriter(4164)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetAllMapsResponse*(b: seq[byte]): Ros1Kuavo_msgsGetAllMapsResponse =
  var r = initReader(b,4164)
  result = readRos1Kuavo_msgsGetAllMapsResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetBatteryInfoRequest* = object
  `battery_id`*: uint8
const Ros1Kuavo_msgsGetBatteryInfoRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsGetBatteryInfoRequestCodecIdentity* = "UWVMROS1_2fb5ded57aec55776fa99e0a29dafc39132d99f4ba07f634903ed76d02e55f7f"
const Ros1Kuavo_msgsGetBatteryInfoRequestNativeType* = "kuavo_msgs/GetBatteryInfoRequest"
const Ros1Kuavo_msgsGetBatteryInfoRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetBatteryInfoRequest*(): Ros1Kuavo_msgsGetBatteryInfoRequest =
  result.`battery_id` = 0
proc writeFields*(value: Ros1Kuavo_msgsGetBatteryInfoRequest; w: var Writer) =
  putInteger(w,value.`battery_id`)
proc readRos1Kuavo_msgsGetBatteryInfoRequest*(r: var Reader): Ros1Kuavo_msgsGetBatteryInfoRequest =
  result = initRos1Kuavo_msgsGetBatteryInfoRequest()
  result.`battery_id` = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsGetBatteryInfoRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetBatteryInfoRequest*(b: seq[byte]): Ros1Kuavo_msgsGetBatteryInfoRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsGetBatteryInfoRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetBatteryInfoResponse* = object
  `battery_id`*: uint8
  `voltage`*: uint32
  `current`*: int32
  `remaining_capacity`*: uint32
  `full_capacity`*: uint32
  `percentage`*: uint8
  `cycle_count`*: uint16
  `protection_flags`*: uint32
  `temperatures`*: array[6,int16]
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsGetBatteryInfoResponseMaximumWireBytes* = 297
const Ros1Kuavo_msgsGetBatteryInfoResponseCodecIdentity* = "UWVMROS1_ca1379a3f888318206ae182fd9943330cb1a4030b0e567af6bba4c755a8aadbb"
const Ros1Kuavo_msgsGetBatteryInfoResponseNativeType* = "kuavo_msgs/GetBatteryInfoResponse"
const Ros1Kuavo_msgsGetBatteryInfoResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetBatteryInfoResponse*(): Ros1Kuavo_msgsGetBatteryInfoResponse =
  result.`battery_id` = 0
  result.`voltage` = 0
  result.`current` = 0
  result.`remaining_capacity` = 0
  result.`full_capacity` = 0
  result.`percentage` = 0
  result.`cycle_count` = 0
  result.`protection_flags` = 0
  result.`temperatures` = [0,0,0,0,0,0]
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsGetBatteryInfoResponse; w: var Writer) =
  putInteger(w,value.`battery_id`)
  putInteger(w,value.`voltage`)
  putInteger(w,value.`current`)
  putInteger(w,value.`remaining_capacity`)
  putInteger(w,value.`full_capacity`)
  putInteger(w,value.`percentage`)
  putInteger(w,value.`cycle_count`)
  putInteger(w,value.`protection_flags`)
  for e in value.`temperatures`:
    putInteger(w,e)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsGetBatteryInfoResponse*(r: var Reader): Ros1Kuavo_msgsGetBatteryInfoResponse =
  result = initRos1Kuavo_msgsGetBatteryInfoResponse()
  result.`battery_id` = getInteger(r,uint8)
  result.`voltage` = getInteger(r,uint32)
  result.`current` = getInteger(r,int32)
  result.`remaining_capacity` = getInteger(r,uint32)
  result.`full_capacity` = getInteger(r,uint32)
  result.`percentage` = getInteger(r,uint8)
  result.`cycle_count` = getInteger(r,uint16)
  result.`protection_flags` = getInteger(r,uint32)
  let count8 = 6
  for i in 0..<count8:
    result.`temperatures`[i] = getInteger(r,int16)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGetBatteryInfoResponse): seq[byte] =
  var w = initWriter(297)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetBatteryInfoResponse*(b: seq[byte]): Ros1Kuavo_msgsGetBatteryInfoResponse =
  var r = initReader(b,297)
  result = readRos1Kuavo_msgsGetBatteryInfoResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetCurrentMapRequest* = object
const Ros1Kuavo_msgsGetCurrentMapRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetCurrentMapRequestCodecIdentity* = "UWVMROS1_4f0d2b50c249ae9ba1bb86f997638789a4531523d1892bd5ec3aa4f0425fc84c"
const Ros1Kuavo_msgsGetCurrentMapRequestNativeType* = "kuavo_msgs/GetCurrentMapRequest"
const Ros1Kuavo_msgsGetCurrentMapRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetCurrentMapRequest*(): Ros1Kuavo_msgsGetCurrentMapRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetCurrentMapRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetCurrentMapRequest*(r: var Reader): Ros1Kuavo_msgsGetCurrentMapRequest =
  result = initRos1Kuavo_msgsGetCurrentMapRequest()
proc encode*(value: Ros1Kuavo_msgsGetCurrentMapRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetCurrentMapRequest*(b: seq[byte]): Ros1Kuavo_msgsGetCurrentMapRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetCurrentMapRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetCurrentMapResponse* = object
  `current_map`*: string
const Ros1Kuavo_msgsGetCurrentMapResponseMaximumWireBytes* = 260
const Ros1Kuavo_msgsGetCurrentMapResponseCodecIdentity* = "UWVMROS1_1d0625e17de7de83cfcc183d61e71b7b3136e85153b988e29c0a1eee428550de"
const Ros1Kuavo_msgsGetCurrentMapResponseNativeType* = "kuavo_msgs/GetCurrentMapResponse"
const Ros1Kuavo_msgsGetCurrentMapResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetCurrentMapResponse*(): Ros1Kuavo_msgsGetCurrentMapResponse =
  result.`current_map` = ""
proc writeFields*(value: Ros1Kuavo_msgsGetCurrentMapResponse; w: var Writer) =
  putString(w,value.`current_map`,256)
proc readRos1Kuavo_msgsGetCurrentMapResponse*(r: var Reader): Ros1Kuavo_msgsGetCurrentMapResponse =
  result = initRos1Kuavo_msgsGetCurrentMapResponse()
  result.`current_map` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGetCurrentMapResponse): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetCurrentMapResponse*(b: seq[byte]): Ros1Kuavo_msgsGetCurrentMapResponse =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsGetCurrentMapResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetPowerBoardStatusRequest* = object
const Ros1Kuavo_msgsGetPowerBoardStatusRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetPowerBoardStatusRequestCodecIdentity* = "UWVMROS1_ca40f94da04e34a367abb1e09603558411feb316c858cf85dafa61565cce5822"
const Ros1Kuavo_msgsGetPowerBoardStatusRequestNativeType* = "kuavo_msgs/GetPowerBoardStatusRequest"
const Ros1Kuavo_msgsGetPowerBoardStatusRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetPowerBoardStatusRequest*(): Ros1Kuavo_msgsGetPowerBoardStatusRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetPowerBoardStatusRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetPowerBoardStatusRequest*(r: var Reader): Ros1Kuavo_msgsGetPowerBoardStatusRequest =
  result = initRos1Kuavo_msgsGetPowerBoardStatusRequest()
proc encode*(value: Ros1Kuavo_msgsGetPowerBoardStatusRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetPowerBoardStatusRequest*(b: seq[byte]): Ros1Kuavo_msgsGetPowerBoardStatusRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetPowerBoardStatusRequest(r)
  finish(r)
type Ros1Kuavo_msgsPowerBoardStatus* = object
  `timestamp`*: Ros1Time
  `status_byte1`*: uint8
  `status_byte2`*: uint8
  `status_byte3`*: uint8
  `ntc_temperature`*: uint8
  `charge_voltage`*: uint8
  `bat1_voltage`*: uint8
  `bat2_voltage`*: uint8
  `stop_int`*: bool
  `rf_int`*: bool
  `board_is_wheel`*: bool
  `ideal_diode_fail`*: bool
  `cur_ov_protection`*: bool
  `bat1_comm_ok`*: bool
  `bat2_comm_ok`*: bool
  `bat1_exists`*: bool
  `bat2_exists`*: bool
  `bat1_low_power`*: bool
  `bat2_low_power`*: bool
  `charging`*: bool
  `fail_12v`*: bool
  `fail_19v`*: bool
  `fail_24v`*: bool
  `arm_en`*: bool
  `leg_en`*: bool
  `out_19v_en`*: bool
  `out1_12v_en`*: bool
  `out2_12v_en`*: bool
  `out3_12v_en`*: bool
  `out_24v_en`*: bool
const Ros1Kuavo_msgsPowerBoardStatusMaximumWireBytes* = 37
const Ros1Kuavo_msgsPowerBoardStatusCodecIdentity* = "UWVMROS1_3909ec15d3b274f56c82aab332a227d789a181bfa6dfc5901af1228e64632142"
const Ros1Kuavo_msgsPowerBoardStatusNativeType* = "kuavo_msgs/PowerBoardStatus"
const Ros1Kuavo_msgsPowerBoardStatusNativeIdentity* = ""
proc initRos1Kuavo_msgsPowerBoardStatus*(): Ros1Kuavo_msgsPowerBoardStatus =
  result.`timestamp` = initRos1Time()
  result.`status_byte1` = 0
  result.`status_byte2` = 0
  result.`status_byte3` = 0
  result.`ntc_temperature` = 0
  result.`charge_voltage` = 0
  result.`bat1_voltage` = 0
  result.`bat2_voltage` = 0
  result.`stop_int` = false
  result.`rf_int` = false
  result.`board_is_wheel` = false
  result.`ideal_diode_fail` = false
  result.`cur_ov_protection` = false
  result.`bat1_comm_ok` = false
  result.`bat2_comm_ok` = false
  result.`bat1_exists` = false
  result.`bat2_exists` = false
  result.`bat1_low_power` = false
  result.`bat2_low_power` = false
  result.`charging` = false
  result.`fail_12v` = false
  result.`fail_19v` = false
  result.`fail_24v` = false
  result.`arm_en` = false
  result.`leg_en` = false
  result.`out_19v_en` = false
  result.`out1_12v_en` = false
  result.`out2_12v_en` = false
  result.`out3_12v_en` = false
  result.`out_24v_en` = false
proc writeFields*(value: Ros1Kuavo_msgsPowerBoardStatus; w: var Writer) =
  writeFields(value.`timestamp`,w)
  putInteger(w,value.`status_byte1`)
  putInteger(w,value.`status_byte2`)
  putInteger(w,value.`status_byte3`)
  putInteger(w,value.`ntc_temperature`)
  putInteger(w,value.`charge_voltage`)
  putInteger(w,value.`bat1_voltage`)
  putInteger(w,value.`bat2_voltage`)
  putBool(w,value.`stop_int`)
  putBool(w,value.`rf_int`)
  putBool(w,value.`board_is_wheel`)
  putBool(w,value.`ideal_diode_fail`)
  putBool(w,value.`cur_ov_protection`)
  putBool(w,value.`bat1_comm_ok`)
  putBool(w,value.`bat2_comm_ok`)
  putBool(w,value.`bat1_exists`)
  putBool(w,value.`bat2_exists`)
  putBool(w,value.`bat1_low_power`)
  putBool(w,value.`bat2_low_power`)
  putBool(w,value.`charging`)
  putBool(w,value.`fail_12v`)
  putBool(w,value.`fail_19v`)
  putBool(w,value.`fail_24v`)
  putBool(w,value.`arm_en`)
  putBool(w,value.`leg_en`)
  putBool(w,value.`out_19v_en`)
  putBool(w,value.`out1_12v_en`)
  putBool(w,value.`out2_12v_en`)
  putBool(w,value.`out3_12v_en`)
  putBool(w,value.`out_24v_en`)
proc readRos1Kuavo_msgsPowerBoardStatus*(r: var Reader): Ros1Kuavo_msgsPowerBoardStatus =
  result = initRos1Kuavo_msgsPowerBoardStatus()
  result.`timestamp` = readRos1Time(r)
  result.`status_byte1` = getInteger(r,uint8)
  result.`status_byte2` = getInteger(r,uint8)
  result.`status_byte3` = getInteger(r,uint8)
  result.`ntc_temperature` = getInteger(r,uint8)
  result.`charge_voltage` = getInteger(r,uint8)
  result.`bat1_voltage` = getInteger(r,uint8)
  result.`bat2_voltage` = getInteger(r,uint8)
  result.`stop_int` = getBool(r)
  result.`rf_int` = getBool(r)
  result.`board_is_wheel` = getBool(r)
  result.`ideal_diode_fail` = getBool(r)
  result.`cur_ov_protection` = getBool(r)
  result.`bat1_comm_ok` = getBool(r)
  result.`bat2_comm_ok` = getBool(r)
  result.`bat1_exists` = getBool(r)
  result.`bat2_exists` = getBool(r)
  result.`bat1_low_power` = getBool(r)
  result.`bat2_low_power` = getBool(r)
  result.`charging` = getBool(r)
  result.`fail_12v` = getBool(r)
  result.`fail_19v` = getBool(r)
  result.`fail_24v` = getBool(r)
  result.`arm_en` = getBool(r)
  result.`leg_en` = getBool(r)
  result.`out_19v_en` = getBool(r)
  result.`out1_12v_en` = getBool(r)
  result.`out2_12v_en` = getBool(r)
  result.`out3_12v_en` = getBool(r)
  result.`out_24v_en` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsPowerBoardStatus): seq[byte] =
  var w = initWriter(37)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPowerBoardStatus*(b: seq[byte]): Ros1Kuavo_msgsPowerBoardStatus =
  var r = initReader(b,37)
  result = readRos1Kuavo_msgsPowerBoardStatus(r)
  finish(r)
type Ros1Kuavo_msgsGetPowerBoardStatusResponse* = object
  `status`*: Ros1Kuavo_msgsPowerBoardStatus
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsGetPowerBoardStatusResponseMaximumWireBytes* = 298
const Ros1Kuavo_msgsGetPowerBoardStatusResponseCodecIdentity* = "UWVMROS1_dc451a58bff76c485b8f6e3ca5d28a67745503d5d2a1cd5b68aa205fe86ec96b"
const Ros1Kuavo_msgsGetPowerBoardStatusResponseNativeType* = "kuavo_msgs/GetPowerBoardStatusResponse"
const Ros1Kuavo_msgsGetPowerBoardStatusResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetPowerBoardStatusResponse*(): Ros1Kuavo_msgsGetPowerBoardStatusResponse =
  result.`status` = initRos1Kuavo_msgsPowerBoardStatus()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsGetPowerBoardStatusResponse; w: var Writer) =
  writeFields(value.`status`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsGetPowerBoardStatusResponse*(r: var Reader): Ros1Kuavo_msgsGetPowerBoardStatusResponse =
  result = initRos1Kuavo_msgsGetPowerBoardStatusResponse()
  result.`status` = readRos1Kuavo_msgsPowerBoardStatus(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGetPowerBoardStatusResponse): seq[byte] =
  var w = initWriter(298)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetPowerBoardStatusResponse*(b: seq[byte]): Ros1Kuavo_msgsGetPowerBoardStatusResponse =
  var r = initReader(b,298)
  result = readRos1Kuavo_msgsGetPowerBoardStatusResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetStringListRequest* = object
const Ros1Kuavo_msgsGetStringListRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetStringListRequestCodecIdentity* = "UWVMROS1_8075a78360c8b2181b06046c2dc48be11d3051d6568c470fd10aee07644a0438"
const Ros1Kuavo_msgsGetStringListRequestNativeType* = "kuavo_msgs/GetStringListRequest"
const Ros1Kuavo_msgsGetStringListRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetStringListRequest*(): Ros1Kuavo_msgsGetStringListRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetStringListRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetStringListRequest*(r: var Reader): Ros1Kuavo_msgsGetStringListRequest =
  result = initRos1Kuavo_msgsGetStringListRequest()
proc encode*(value: Ros1Kuavo_msgsGetStringListRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetStringListRequest*(b: seq[byte]): Ros1Kuavo_msgsGetStringListRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetStringListRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetStringListResponse* = object
  `data`*: seq[string]
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsGetStringListResponseMaximumWireBytes* = 4425
const Ros1Kuavo_msgsGetStringListResponseCodecIdentity* = "UWVMROS1_3fc229d60eede52a5c7d96fe957cc495dba890aabb23b48c688766da5f7ae086"
const Ros1Kuavo_msgsGetStringListResponseNativeType* = "kuavo_msgs/GetStringListResponse"
const Ros1Kuavo_msgsGetStringListResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetStringListResponse*(): Ros1Kuavo_msgsGetStringListResponse =
  result.`data` = @[]
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsGetStringListResponse; w: var Writer) =
  if value.`data`.len > 16: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putString(w,e,256)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsGetStringListResponse*(r: var Reader): Ros1Kuavo_msgsGetStringListResponse =
  result = initRos1Kuavo_msgsGetStringListResponse()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[string](count0)
  for i in 0..<count0:
    result.`data`[i] = getString(r,256)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGetStringListResponse): seq[byte] =
  var w = initWriter(4425)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetStringListResponse*(b: seq[byte]): Ros1Kuavo_msgsGetStringListResponse =
  var r = initReader(b,4425)
  result = readRos1Kuavo_msgsGetStringListResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest* = object
const Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodecIdentity* = "UWVMROS1_959b27f3971013d43876eafe11341e6ce6b6ccb11c944f9cfc27e60eb29ef73a"
const Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestNativeType* = "kuavo_msgs/GetTargetPartPoseInCameraRequest"
const Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetTargetPartPoseInCameraRequest*(): Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetTargetPartPoseInCameraRequest*(r: var Reader): Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest =
  result = initRos1Kuavo_msgsGetTargetPartPoseInCameraRequest()
proc encode*(value: Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetTargetPartPoseInCameraRequest*(b: seq[byte]): Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetTargetPartPoseInCameraRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse* = object
  `success`*: bool
  `message`*: string
  `pose_in_camera`*: Ros1Geometry_msgsPose
const Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseMaximumWireBytes* = 317
const Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodecIdentity* = "UWVMROS1_2f9f0d6e26e39812a69998906d36e1190876afe997a15bf806204414f4aecd7c"
const Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseNativeType* = "kuavo_msgs/GetTargetPartPoseInCameraResponse"
const Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetTargetPartPoseInCameraResponse*(): Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse =
  result.`success` = false
  result.`message` = ""
  result.`pose_in_camera` = initRos1Geometry_msgsPose()
proc writeFields*(value: Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  writeFields(value.`pose_in_camera`,w)
proc readRos1Kuavo_msgsGetTargetPartPoseInCameraResponse*(r: var Reader): Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse =
  result = initRos1Kuavo_msgsGetTargetPartPoseInCameraResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`pose_in_camera` = readRos1Geometry_msgsPose(r)
proc encode*(value: Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse): seq[byte] =
  var w = initWriter(317)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse*(b: seq[byte]): Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse =
  var r = initReader(b,317)
  result = readRos1Kuavo_msgsGetTargetPartPoseInCameraResponse(r)
  finish(r)
type Ros1Kuavo_msgsInitialPoseWithTaskPointRequest* = object
  `task_point_name`*: string
const Ros1Kuavo_msgsInitialPoseWithTaskPointRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodecIdentity* = "UWVMROS1_c64a398106df13b51953dbd1f7e869387973edb068e72a1caeb2a2f66e2970f8"
const Ros1Kuavo_msgsInitialPoseWithTaskPointRequestNativeType* = "kuavo_msgs/InitialPoseWithTaskPointRequest"
const Ros1Kuavo_msgsInitialPoseWithTaskPointRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsInitialPoseWithTaskPointRequest*(): Ros1Kuavo_msgsInitialPoseWithTaskPointRequest =
  result.`task_point_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsInitialPoseWithTaskPointRequest; w: var Writer) =
  putString(w,value.`task_point_name`,256)
proc readRos1Kuavo_msgsInitialPoseWithTaskPointRequest*(r: var Reader): Ros1Kuavo_msgsInitialPoseWithTaskPointRequest =
  result = initRos1Kuavo_msgsInitialPoseWithTaskPointRequest()
  result.`task_point_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsInitialPoseWithTaskPointRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsInitialPoseWithTaskPointRequest*(b: seq[byte]): Ros1Kuavo_msgsInitialPoseWithTaskPointRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsInitialPoseWithTaskPointRequest(r)
  finish(r)
type Ros1Kuavo_msgsInitialPoseWithTaskPointResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsInitialPoseWithTaskPointResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodecIdentity* = "UWVMROS1_72bcf223dcb9aa760b8b2c1fefe0a23177d42785f8827a85d85a56c91d941e2d"
const Ros1Kuavo_msgsInitialPoseWithTaskPointResponseNativeType* = "kuavo_msgs/InitialPoseWithTaskPointResponse"
const Ros1Kuavo_msgsInitialPoseWithTaskPointResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsInitialPoseWithTaskPointResponse*(): Ros1Kuavo_msgsInitialPoseWithTaskPointResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsInitialPoseWithTaskPointResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsInitialPoseWithTaskPointResponse*(r: var Reader): Ros1Kuavo_msgsInitialPoseWithTaskPointResponse =
  result = initRos1Kuavo_msgsInitialPoseWithTaskPointResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsInitialPoseWithTaskPointResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse*(b: seq[byte]): Ros1Kuavo_msgsInitialPoseWithTaskPointResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsInitialPoseWithTaskPointResponse(r)
  finish(r)
type Ros1Kuavo_msgsJoySticks* = object
  `left_x`*: float32
  `left_y`*: float32
  `left_trigger`*: float32
  `left_grip`*: float32
  `left_first_button_pressed`*: bool
  `left_second_button_pressed`*: bool
  `left_first_button_touched`*: bool
  `left_second_button_touched`*: bool
  `right_x`*: float32
  `right_y`*: float32
  `right_trigger`*: float32
  `right_grip`*: float32
  `right_first_button_pressed`*: bool
  `right_second_button_pressed`*: bool
  `right_first_button_touched`*: bool
  `right_second_button_touched`*: bool
const Ros1Kuavo_msgsJoySticksMaximumWireBytes* = 40
const Ros1Kuavo_msgsJoySticksCodecIdentity* = "UWVMROS1_d007c3176715da6b17bcd89f3ff2dc3906c1f2308ba57ff36dca5e6a82f7bd5b"
const Ros1Kuavo_msgsJoySticksNativeType* = "kuavo_msgs/JoySticks"
const Ros1Kuavo_msgsJoySticksNativeIdentity* = ""
proc initRos1Kuavo_msgsJoySticks*(): Ros1Kuavo_msgsJoySticks =
  result.`left_x` = 0
  result.`left_y` = 0
  result.`left_trigger` = 0
  result.`left_grip` = 0
  result.`left_first_button_pressed` = false
  result.`left_second_button_pressed` = false
  result.`left_first_button_touched` = false
  result.`left_second_button_touched` = false
  result.`right_x` = 0
  result.`right_y` = 0
  result.`right_trigger` = 0
  result.`right_grip` = 0
  result.`right_first_button_pressed` = false
  result.`right_second_button_pressed` = false
  result.`right_first_button_touched` = false
  result.`right_second_button_touched` = false
proc writeFields*(value: Ros1Kuavo_msgsJoySticks; w: var Writer) =
  putFloat32(w,value.`left_x`)
  putFloat32(w,value.`left_y`)
  putFloat32(w,value.`left_trigger`)
  putFloat32(w,value.`left_grip`)
  putBool(w,value.`left_first_button_pressed`)
  putBool(w,value.`left_second_button_pressed`)
  putBool(w,value.`left_first_button_touched`)
  putBool(w,value.`left_second_button_touched`)
  putFloat32(w,value.`right_x`)
  putFloat32(w,value.`right_y`)
  putFloat32(w,value.`right_trigger`)
  putFloat32(w,value.`right_grip`)
  putBool(w,value.`right_first_button_pressed`)
  putBool(w,value.`right_second_button_pressed`)
  putBool(w,value.`right_first_button_touched`)
  putBool(w,value.`right_second_button_touched`)
proc readRos1Kuavo_msgsJoySticks*(r: var Reader): Ros1Kuavo_msgsJoySticks =
  result = initRos1Kuavo_msgsJoySticks()
  result.`left_x` = getFloat32(r)
  result.`left_y` = getFloat32(r)
  result.`left_trigger` = getFloat32(r)
  result.`left_grip` = getFloat32(r)
  result.`left_first_button_pressed` = getBool(r)
  result.`left_second_button_pressed` = getBool(r)
  result.`left_first_button_touched` = getBool(r)
  result.`left_second_button_touched` = getBool(r)
  result.`right_x` = getFloat32(r)
  result.`right_y` = getFloat32(r)
  result.`right_trigger` = getFloat32(r)
  result.`right_grip` = getFloat32(r)
  result.`right_first_button_pressed` = getBool(r)
  result.`right_second_button_pressed` = getBool(r)
  result.`right_first_button_touched` = getBool(r)
  result.`right_second_button_touched` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsJoySticks): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsJoySticks*(b: seq[byte]): Ros1Kuavo_msgsJoySticks =
  var r = initReader(b,40)
  result = readRos1Kuavo_msgsJoySticks(r)
  finish(r)
type Ros1Kuavo_msgsLoadMapRequest* = object
  `map_name`*: string
const Ros1Kuavo_msgsLoadMapRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsLoadMapRequestCodecIdentity* = "UWVMROS1_6e2c47c3ef5b788c01d05977c52e9538021fe40e2dbeda7aac838acd62e77e57"
const Ros1Kuavo_msgsLoadMapRequestNativeType* = "kuavo_msgs/LoadMapRequest"
const Ros1Kuavo_msgsLoadMapRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsLoadMapRequest*(): Ros1Kuavo_msgsLoadMapRequest =
  result.`map_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsLoadMapRequest; w: var Writer) =
  putString(w,value.`map_name`,256)
proc readRos1Kuavo_msgsLoadMapRequest*(r: var Reader): Ros1Kuavo_msgsLoadMapRequest =
  result = initRos1Kuavo_msgsLoadMapRequest()
  result.`map_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsLoadMapRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLoadMapRequest*(b: seq[byte]): Ros1Kuavo_msgsLoadMapRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsLoadMapRequest(r)
  finish(r)
type Ros1Kuavo_msgsLoadMapResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsLoadMapResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsLoadMapResponseCodecIdentity* = "UWVMROS1_93d33c8c117d288f4de16ea98cab3820157e6ba6113341d290d1bf80d08a9eb2"
const Ros1Kuavo_msgsLoadMapResponseNativeType* = "kuavo_msgs/LoadMapResponse"
const Ros1Kuavo_msgsLoadMapResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsLoadMapResponse*(): Ros1Kuavo_msgsLoadMapResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsLoadMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsLoadMapResponse*(r: var Reader): Ros1Kuavo_msgsLoadMapResponse =
  result = initRos1Kuavo_msgsLoadMapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsLoadMapResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLoadMapResponse*(b: seq[byte]): Ros1Kuavo_msgsLoadMapResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsLoadMapResponse(r)
  finish(r)
type Ros1Kuavo_msgsMetadata* = object
  `header`*: Ros1Std_msgsHeader
  `json_data`*: string
const Ros1Kuavo_msgsMetadataMaximumWireBytes* = 532
const Ros1Kuavo_msgsMetadataCodecIdentity* = "UWVMROS1_d1710d70dbaede086c4c02e1b55f8a56238e181f11edf7001da28bac6fbc2570"
const Ros1Kuavo_msgsMetadataNativeType* = "kuavo_msgs/Metadata"
const Ros1Kuavo_msgsMetadataNativeIdentity* = ""
proc initRos1Kuavo_msgsMetadata*(): Ros1Kuavo_msgsMetadata =
  result.`header` = initRos1Std_msgsHeader()
  result.`json_data` = ""
proc writeFields*(value: Ros1Kuavo_msgsMetadata; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`json_data`,256)
proc readRos1Kuavo_msgsMetadata*(r: var Reader): Ros1Kuavo_msgsMetadata =
  result = initRos1Kuavo_msgsMetadata()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`json_data` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsMetadata): seq[byte] =
  var w = initWriter(532)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsMetadata*(b: seq[byte]): Ros1Kuavo_msgsMetadata =
  var r = initReader(b,532)
  result = readRos1Kuavo_msgsMetadata(r)
  finish(r)
type Ros1Kuavo_msgsMmDetectionMsg* = object
  `header`*: Ros1Std_msgsHeader
  `hasAnomaly`*: bool
  `trajectoryPositionErrorMax`*: float64
  `trajectoryPositionErrorAvg`*: float64
  `trajectoryPositionMaxThresholdExceeded`*: bool
  `trajectoryPositionAvgThresholdExceeded`*: bool
  `trajectoryOrientationErrorMax`*: float64
  `trajectoryOrientationErrorAvg`*: float64
  `trajectoryOrientationMaxThresholdExceeded`*: bool
  `trajectoryOrientationAvgThresholdExceeded`*: bool
  `velocityMagnitudeAvg`*: float64
  `velocityMagnitudeMax`*: float64
  `velocityAvgThresholdExceeded`*: bool
  `velocityMaxThresholdExceeded`*: bool
const Ros1Kuavo_msgsMmDetectionMsgMaximumWireBytes* = 327
const Ros1Kuavo_msgsMmDetectionMsgCodecIdentity* = "UWVMROS1_26ebffd502c5a27512ada8ba611f1f2c250f5d601e179ebc54758e9190f3a807"
const Ros1Kuavo_msgsMmDetectionMsgNativeType* = "kuavo_msgs/MmDetectionMsg"
const Ros1Kuavo_msgsMmDetectionMsgNativeIdentity* = ""
proc initRos1Kuavo_msgsMmDetectionMsg*(): Ros1Kuavo_msgsMmDetectionMsg =
  result.`header` = initRos1Std_msgsHeader()
  result.`hasAnomaly` = false
  result.`trajectoryPositionErrorMax` = 0
  result.`trajectoryPositionErrorAvg` = 0
  result.`trajectoryPositionMaxThresholdExceeded` = false
  result.`trajectoryPositionAvgThresholdExceeded` = false
  result.`trajectoryOrientationErrorMax` = 0
  result.`trajectoryOrientationErrorAvg` = 0
  result.`trajectoryOrientationMaxThresholdExceeded` = false
  result.`trajectoryOrientationAvgThresholdExceeded` = false
  result.`velocityMagnitudeAvg` = 0
  result.`velocityMagnitudeMax` = 0
  result.`velocityAvgThresholdExceeded` = false
  result.`velocityMaxThresholdExceeded` = false
proc writeFields*(value: Ros1Kuavo_msgsMmDetectionMsg; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`hasAnomaly`)
  putFloat64(w,value.`trajectoryPositionErrorMax`)
  putFloat64(w,value.`trajectoryPositionErrorAvg`)
  putBool(w,value.`trajectoryPositionMaxThresholdExceeded`)
  putBool(w,value.`trajectoryPositionAvgThresholdExceeded`)
  putFloat64(w,value.`trajectoryOrientationErrorMax`)
  putFloat64(w,value.`trajectoryOrientationErrorAvg`)
  putBool(w,value.`trajectoryOrientationMaxThresholdExceeded`)
  putBool(w,value.`trajectoryOrientationAvgThresholdExceeded`)
  putFloat64(w,value.`velocityMagnitudeAvg`)
  putFloat64(w,value.`velocityMagnitudeMax`)
  putBool(w,value.`velocityAvgThresholdExceeded`)
  putBool(w,value.`velocityMaxThresholdExceeded`)
proc readRos1Kuavo_msgsMmDetectionMsg*(r: var Reader): Ros1Kuavo_msgsMmDetectionMsg =
  result = initRos1Kuavo_msgsMmDetectionMsg()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`hasAnomaly` = getBool(r)
  result.`trajectoryPositionErrorMax` = getFloat64(r)
  result.`trajectoryPositionErrorAvg` = getFloat64(r)
  result.`trajectoryPositionMaxThresholdExceeded` = getBool(r)
  result.`trajectoryPositionAvgThresholdExceeded` = getBool(r)
  result.`trajectoryOrientationErrorMax` = getFloat64(r)
  result.`trajectoryOrientationErrorAvg` = getFloat64(r)
  result.`trajectoryOrientationMaxThresholdExceeded` = getBool(r)
  result.`trajectoryOrientationAvgThresholdExceeded` = getBool(r)
  result.`velocityMagnitudeAvg` = getFloat64(r)
  result.`velocityMagnitudeMax` = getFloat64(r)
  result.`velocityAvgThresholdExceeded` = getBool(r)
  result.`velocityMaxThresholdExceeded` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsMmDetectionMsg): seq[byte] =
  var w = initWriter(327)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsMmDetectionMsg*(b: seq[byte]): Ros1Kuavo_msgsMmDetectionMsg =
  var r = initReader(b,327)
  result = readRos1Kuavo_msgsMmDetectionMsg(r)
  finish(r)
type Ros1Kuavo_msgsMocapPoseRetarget* = object
  `header`*: Ros1Std_msgsHeader
  `base_link_pose`*: Ros1Geometry_msgsPose
  `base_velocity`*: array[6,float64]
  `joint_position`*: array[27,float64]
  `joint_velocity`*: array[27,float64]
  `end_effector_poses`*: array[4,Ros1Geometry_msgsPoint]
const Ros1Kuavo_msgsMocapPoseRetargetMaximumWireBytes* = 904
const Ros1Kuavo_msgsMocapPoseRetargetCodecIdentity* = "UWVMROS1_a32401d15b34da4f4fee4e0f93b9760d7c402596f7b3287fb7252a985390f718"
const Ros1Kuavo_msgsMocapPoseRetargetNativeType* = "kuavo_msgs/MocapPoseRetarget"
const Ros1Kuavo_msgsMocapPoseRetargetNativeIdentity* = ""
proc initRos1Kuavo_msgsMocapPoseRetarget*(): Ros1Kuavo_msgsMocapPoseRetarget =
  result.`header` = initRos1Std_msgsHeader()
  result.`base_link_pose` = initRos1Geometry_msgsPose()
  result.`base_velocity` = [0,0,0,0,0,0]
  result.`joint_position` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`joint_velocity` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`end_effector_poses` = [initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint()]
proc writeFields*(value: Ros1Kuavo_msgsMocapPoseRetarget; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`base_link_pose`,w)
  for e in value.`base_velocity`:
    putFloat64(w,e)
  for e in value.`joint_position`:
    putFloat64(w,e)
  for e in value.`joint_velocity`:
    putFloat64(w,e)
  for e in value.`end_effector_poses`:
    writeFields(e,w)
proc readRos1Kuavo_msgsMocapPoseRetarget*(r: var Reader): Ros1Kuavo_msgsMocapPoseRetarget =
  result = initRos1Kuavo_msgsMocapPoseRetarget()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`base_link_pose` = readRos1Geometry_msgsPose(r)
  let count2 = 6
  for i in 0..<count2:
    result.`base_velocity`[i] = getFloat64(r)
  let count3 = 27
  for i in 0..<count3:
    result.`joint_position`[i] = getFloat64(r)
  let count4 = 27
  for i in 0..<count4:
    result.`joint_velocity`[i] = getFloat64(r)
  let count5 = 4
  for i in 0..<count5:
    result.`end_effector_poses`[i] = readRos1Geometry_msgsPoint(r)
proc encode*(value: Ros1Kuavo_msgsMocapPoseRetarget): seq[byte] =
  var w = initWriter(904)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsMocapPoseRetarget*(b: seq[byte]): Ros1Kuavo_msgsMocapPoseRetarget =
  var r = initReader(b,904)
  result = readRos1Kuavo_msgsMocapPoseRetarget(r)
  finish(r)
type Ros1Kuavo_msgsNavigateToTaskPointRequest* = object
  `task_name`*: string
const Ros1Kuavo_msgsNavigateToTaskPointRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsNavigateToTaskPointRequestCodecIdentity* = "UWVMROS1_a6583f68f87bc6f4cdddefe4d65667df96e5339fe24c8201683a6699945e47ac"
const Ros1Kuavo_msgsNavigateToTaskPointRequestNativeType* = "kuavo_msgs/NavigateToTaskPointRequest"
const Ros1Kuavo_msgsNavigateToTaskPointRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsNavigateToTaskPointRequest*(): Ros1Kuavo_msgsNavigateToTaskPointRequest =
  result.`task_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsNavigateToTaskPointRequest; w: var Writer) =
  putString(w,value.`task_name`,256)
proc readRos1Kuavo_msgsNavigateToTaskPointRequest*(r: var Reader): Ros1Kuavo_msgsNavigateToTaskPointRequest =
  result = initRos1Kuavo_msgsNavigateToTaskPointRequest()
  result.`task_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsNavigateToTaskPointRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsNavigateToTaskPointRequest*(b: seq[byte]): Ros1Kuavo_msgsNavigateToTaskPointRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsNavigateToTaskPointRequest(r)
  finish(r)
type Ros1Kuavo_msgsNavigateToTaskPointResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsNavigateToTaskPointResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsNavigateToTaskPointResponseCodecIdentity* = "UWVMROS1_5dfcecdd2820810c8decca4c9e3680a2487b62b5bf39da815a316e3ee4a81c41"
const Ros1Kuavo_msgsNavigateToTaskPointResponseNativeType* = "kuavo_msgs/NavigateToTaskPointResponse"
const Ros1Kuavo_msgsNavigateToTaskPointResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsNavigateToTaskPointResponse*(): Ros1Kuavo_msgsNavigateToTaskPointResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsNavigateToTaskPointResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsNavigateToTaskPointResponse*(r: var Reader): Ros1Kuavo_msgsNavigateToTaskPointResponse =
  result = initRos1Kuavo_msgsNavigateToTaskPointResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsNavigateToTaskPointResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsNavigateToTaskPointResponse*(b: seq[byte]): Ros1Kuavo_msgsNavigateToTaskPointResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsNavigateToTaskPointResponse(r)
  finish(r)
type Ros1Kuavo_msgsPlayMusicImmediateRequest* = object
  `music_number`*: string
  `volume`*: int64
const Ros1Kuavo_msgsPlayMusicImmediateRequestMaximumWireBytes* = 268
const Ros1Kuavo_msgsPlayMusicImmediateRequestCodecIdentity* = "UWVMROS1_938d9c4cd55f905595166352a6c4e6ffdd461419c41d078fb5d76cc9fee1faf6"
const Ros1Kuavo_msgsPlayMusicImmediateRequestNativeType* = "kuavo_msgs/PlayMusicImmediateRequest"
const Ros1Kuavo_msgsPlayMusicImmediateRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsPlayMusicImmediateRequest*(): Ros1Kuavo_msgsPlayMusicImmediateRequest =
  result.`music_number` = ""
  result.`volume` = 0
proc writeFields*(value: Ros1Kuavo_msgsPlayMusicImmediateRequest; w: var Writer) =
  putString(w,value.`music_number`,256)
  putInteger(w,value.`volume`)
proc readRos1Kuavo_msgsPlayMusicImmediateRequest*(r: var Reader): Ros1Kuavo_msgsPlayMusicImmediateRequest =
  result = initRos1Kuavo_msgsPlayMusicImmediateRequest()
  result.`music_number` = getString(r,256)
  result.`volume` = getInteger(r,int64)
proc encode*(value: Ros1Kuavo_msgsPlayMusicImmediateRequest): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlayMusicImmediateRequest*(b: seq[byte]): Ros1Kuavo_msgsPlayMusicImmediateRequest =
  var r = initReader(b,268)
  result = readRos1Kuavo_msgsPlayMusicImmediateRequest(r)
  finish(r)
type Ros1Kuavo_msgsPlayMusicImmediateResponse* = object
  `success_flag`*: bool
const Ros1Kuavo_msgsPlayMusicImmediateResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsPlayMusicImmediateResponseCodecIdentity* = "UWVMROS1_f8836c018cdcdd9550b8fda978ed22581b47a2d9fa7c4093575c91381a301dc2"
const Ros1Kuavo_msgsPlayMusicImmediateResponseNativeType* = "kuavo_msgs/PlayMusicImmediateResponse"
const Ros1Kuavo_msgsPlayMusicImmediateResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsPlayMusicImmediateResponse*(): Ros1Kuavo_msgsPlayMusicImmediateResponse =
  result.`success_flag` = false
proc writeFields*(value: Ros1Kuavo_msgsPlayMusicImmediateResponse; w: var Writer) =
  putBool(w,value.`success_flag`)
proc readRos1Kuavo_msgsPlayMusicImmediateResponse*(r: var Reader): Ros1Kuavo_msgsPlayMusicImmediateResponse =
  result = initRos1Kuavo_msgsPlayMusicImmediateResponse()
  result.`success_flag` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsPlayMusicImmediateResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlayMusicImmediateResponse*(b: seq[byte]): Ros1Kuavo_msgsPlayMusicImmediateResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsPlayMusicImmediateResponse(r)
  finish(r)
type Ros1Kuavo_msgsRelaySelectChannelRequest* = object
  `channel`*: int8
const Ros1Kuavo_msgsRelaySelectChannelRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsRelaySelectChannelRequestCodecIdentity* = "UWVMROS1_00151266456b82a46c9c10405194863dabb71750e808319a6d3290684ad1ae79"
const Ros1Kuavo_msgsRelaySelectChannelRequestNativeType* = "kuavo_msgs/RelaySelectChannelRequest"
const Ros1Kuavo_msgsRelaySelectChannelRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsRelaySelectChannelRequest*(): Ros1Kuavo_msgsRelaySelectChannelRequest =
  result.`channel` = 0
proc writeFields*(value: Ros1Kuavo_msgsRelaySelectChannelRequest; w: var Writer) =
  putInteger(w,value.`channel`)
proc readRos1Kuavo_msgsRelaySelectChannelRequest*(r: var Reader): Ros1Kuavo_msgsRelaySelectChannelRequest =
  result = initRos1Kuavo_msgsRelaySelectChannelRequest()
  result.`channel` = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsRelaySelectChannelRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRelaySelectChannelRequest*(b: seq[byte]): Ros1Kuavo_msgsRelaySelectChannelRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsRelaySelectChannelRequest(r)
  finish(r)
type Ros1Kuavo_msgsRelaySelectChannelResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsRelaySelectChannelResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsRelaySelectChannelResponseCodecIdentity* = "UWVMROS1_a0ec3435609d651b53e002aea7dac00cd4ef2fffd4fe104b1531b14d35f1bc73"
const Ros1Kuavo_msgsRelaySelectChannelResponseNativeType* = "kuavo_msgs/RelaySelectChannelResponse"
const Ros1Kuavo_msgsRelaySelectChannelResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsRelaySelectChannelResponse*(): Ros1Kuavo_msgsRelaySelectChannelResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsRelaySelectChannelResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsRelaySelectChannelResponse*(r: var Reader): Ros1Kuavo_msgsRelaySelectChannelResponse =
  result = initRos1Kuavo_msgsRelaySelectChannelResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsRelaySelectChannelResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRelaySelectChannelResponse*(b: seq[byte]): Ros1Kuavo_msgsRelaySelectChannelResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsRelaySelectChannelResponse(r)
  finish(r)
type Ros1Kuavo_msgsRepublishTFsRequest* = object
  `source_frames`*: seq[string]
  `target_frame`*: string
  `angular_thres`*: float32
  `trans_thres`*: float32
  `rate`*: float32
  `timeout`*: Ros1Duration
const Ros1Kuavo_msgsRepublishTFsRequestMaximumWireBytes* = 4444
const Ros1Kuavo_msgsRepublishTFsRequestCodecIdentity* = "UWVMROS1_77af77ab0c403fb2dd7a32b7a1c189e5d4e63941c961067116aec64dd63f8a13"
const Ros1Kuavo_msgsRepublishTFsRequestNativeType* = "kuavo_msgs/RepublishTFsRequest"
const Ros1Kuavo_msgsRepublishTFsRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsRepublishTFsRequest*(): Ros1Kuavo_msgsRepublishTFsRequest =
  result.`source_frames` = @[]
  result.`target_frame` = ""
  result.`angular_thres` = 0
  result.`trans_thres` = 0
  result.`rate` = 0
  result.`timeout` = initRos1Duration()
proc writeFields*(value: Ros1Kuavo_msgsRepublishTFsRequest; w: var Writer) =
  if value.`source_frames`.len > 16: fail(22)
  putInteger(w,uint32(value.`source_frames`.len))
  for e in value.`source_frames`:
    putString(w,e,256)
  putString(w,value.`target_frame`,256)
  putFloat32(w,value.`angular_thres`)
  putFloat32(w,value.`trans_thres`)
  putFloat32(w,value.`rate`)
  writeFields(value.`timeout`,w)
proc readRos1Kuavo_msgsRepublishTFsRequest*(r: var Reader): Ros1Kuavo_msgsRepublishTFsRequest =
  result = initRos1Kuavo_msgsRepublishTFsRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`source_frames` = newSeq[string](count0)
  for i in 0..<count0:
    result.`source_frames`[i] = getString(r,256)
  result.`target_frame` = getString(r,256)
  result.`angular_thres` = getFloat32(r)
  result.`trans_thres` = getFloat32(r)
  result.`rate` = getFloat32(r)
  result.`timeout` = readRos1Duration(r)
proc encode*(value: Ros1Kuavo_msgsRepublishTFsRequest): seq[byte] =
  var w = initWriter(4444)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRepublishTFsRequest*(b: seq[byte]): Ros1Kuavo_msgsRepublishTFsRequest =
  var r = initReader(b,4444)
  result = readRos1Kuavo_msgsRepublishTFsRequest(r)
  finish(r)
type Ros1Kuavo_msgsRepublishTFsResponse* = object
  `status`*: int32
  `topic_name`*: string
const Ros1Kuavo_msgsRepublishTFsResponseMaximumWireBytes* = 264
const Ros1Kuavo_msgsRepublishTFsResponseCodecIdentity* = "UWVMROS1_3dc41a797ea11a7be71bfc8aa869f5a1dafbb7c370cc4781ce3d66bff5c8deab"
const Ros1Kuavo_msgsRepublishTFsResponseNativeType* = "kuavo_msgs/RepublishTFsResponse"
const Ros1Kuavo_msgsRepublishTFsResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsRepublishTFsResponse*(): Ros1Kuavo_msgsRepublishTFsResponse =
  result.`status` = 0
  result.`topic_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsRepublishTFsResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`topic_name`,256)
proc readRos1Kuavo_msgsRepublishTFsResponse*(r: var Reader): Ros1Kuavo_msgsRepublishTFsResponse =
  result = initRos1Kuavo_msgsRepublishTFsResponse()
  result.`status` = getInteger(r,int32)
  result.`topic_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsRepublishTFsResponse): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRepublishTFsResponse*(b: seq[byte]): Ros1Kuavo_msgsRepublishTFsResponse =
  var r = initReader(b,264)
  result = readRos1Kuavo_msgsRepublishTFsResponse(r)
  finish(r)
type Ros1Kuavo_msgsRigidBodyDescription* = object
  `header`*: Ros1Std_msgsHeader
  `ids`*: seq[int32]
  `names`*: seq[string]
  `parent_ids`*: seq[int32]
  `offsets`*: seq[Ros1Geometry_msgsPoint]
const Ros1Kuavo_msgsRigidBodyDescriptionMaximumWireBytes* = 4768
const Ros1Kuavo_msgsRigidBodyDescriptionCodecIdentity* = "UWVMROS1_a2e5b7796503d5282d1a253da2c75985ac839b76116d3dc64e1cf4dc605dfc2d"
const Ros1Kuavo_msgsRigidBodyDescriptionNativeType* = "kuavo_msgs/RigidBodyDescription"
const Ros1Kuavo_msgsRigidBodyDescriptionNativeIdentity* = ""
proc initRos1Kuavo_msgsRigidBodyDescription*(): Ros1Kuavo_msgsRigidBodyDescription =
  result.`header` = initRos1Std_msgsHeader()
  result.`ids` = @[]
  result.`names` = @[]
  result.`parent_ids` = @[]
  result.`offsets` = @[]
proc writeFields*(value: Ros1Kuavo_msgsRigidBodyDescription; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`ids`.len > 16: fail(22)
  putInteger(w,uint32(value.`ids`.len))
  for e in value.`ids`:
    putInteger(w,e)
  if value.`names`.len > 16: fail(22)
  putInteger(w,uint32(value.`names`.len))
  for e in value.`names`:
    putString(w,e,256)
  if value.`parent_ids`.len > 16: fail(22)
  putInteger(w,uint32(value.`parent_ids`.len))
  for e in value.`parent_ids`:
    putInteger(w,e)
  if value.`offsets`.len > 8: fail(22)
  putInteger(w,uint32(value.`offsets`.len))
  for e in value.`offsets`:
    writeFields(e,w)
proc readRos1Kuavo_msgsRigidBodyDescription*(r: var Reader): Ros1Kuavo_msgsRigidBodyDescription =
  result = initRos1Kuavo_msgsRigidBodyDescription()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`ids` = newSeq[int32](count1)
  for i in 0..<count1:
    result.`ids`[i] = getInteger(r,int32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`names` = newSeq[string](count2)
  for i in 0..<count2:
    result.`names`[i] = getString(r,256)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`parent_ids` = newSeq[int32](count3)
  for i in 0..<count3:
    result.`parent_ids`[i] = getInteger(r,int32)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 8: fail(22)
  let count4 = int(rawcount4)
  result.`offsets` = newSeq[Ros1Geometry_msgsPoint](count4)
  for i in 0..<count4:
    result.`offsets`[i] = readRos1Geometry_msgsPoint(r)
proc encode*(value: Ros1Kuavo_msgsRigidBodyDescription): seq[byte] =
  var w = initWriter(4768)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRigidBodyDescription*(b: seq[byte]): Ros1Kuavo_msgsRigidBodyDescription =
  var r = initReader(b,4768)
  result = readRos1Kuavo_msgsRigidBodyDescription(r)
  finish(r)
type Ros1Kuavo_msgsRigidBodyFrame* = object
  `name`*: string
  `position`*: Ros1Geometry_msgsPoint
  `orientation`*: Ros1Geometry_msgsQuaternion
const Ros1Kuavo_msgsRigidBodyFrameMaximumWireBytes* = 316
const Ros1Kuavo_msgsRigidBodyFrameCodecIdentity* = "UWVMROS1_246b8c5a8cd226500da07ab1bfbb5b7c6eb8cb65e7907387b58db3022a1ea0e6"
const Ros1Kuavo_msgsRigidBodyFrameNativeType* = "kuavo_msgs/RigidBodyFrame"
const Ros1Kuavo_msgsRigidBodyFrameNativeIdentity* = ""
proc initRos1Kuavo_msgsRigidBodyFrame*(): Ros1Kuavo_msgsRigidBodyFrame =
  result.`name` = ""
  result.`position` = initRos1Geometry_msgsPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Kuavo_msgsRigidBodyFrame; w: var Writer) =
  putString(w,value.`name`,256)
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos1Kuavo_msgsRigidBodyFrame*(r: var Reader): Ros1Kuavo_msgsRigidBodyFrame =
  result = initRos1Kuavo_msgsRigidBodyFrame()
  result.`name` = getString(r,256)
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Kuavo_msgsRigidBodyFrame): seq[byte] =
  var w = initWriter(316)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRigidBodyFrame*(b: seq[byte]): Ros1Kuavo_msgsRigidBodyFrame =
  var r = initReader(b,316)
  result = readRos1Kuavo_msgsRigidBodyFrame(r)
  finish(r)
type Ros1Kuavo_msgsRobotActionState* = object
  `state`*: uint8
const Ros1Kuavo_msgsRobotActionStateMaximumWireBytes* = 1
const Ros1Kuavo_msgsRobotActionStateCodecIdentity* = "UWVMROS1_28172973f12ecf9545fff7b4cf3ba4b493db5ea195d487b320e8a17c77d11c79"
const Ros1Kuavo_msgsRobotActionStateNativeType* = "kuavo_msgs/RobotActionState"
const Ros1Kuavo_msgsRobotActionStateNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotActionState*(): Ros1Kuavo_msgsRobotActionState =
  result.`state` = 0
proc writeFields*(value: Ros1Kuavo_msgsRobotActionState; w: var Writer) =
  putInteger(w,value.`state`)
proc readRos1Kuavo_msgsRobotActionState*(r: var Reader): Ros1Kuavo_msgsRobotActionState =
  result = initRos1Kuavo_msgsRobotActionState()
  result.`state` = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsRobotActionState): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotActionState*(b: seq[byte]): Ros1Kuavo_msgsRobotActionState =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsRobotActionState(r)
  finish(r)
type Ros1Kuavo_msgsSetHeadControlModeRequest* = object
  `mode`*: string
  `fixed_hand`*: string
const Ros1Kuavo_msgsSetHeadControlModeRequestMaximumWireBytes* = 520
const Ros1Kuavo_msgsSetHeadControlModeRequestCodecIdentity* = "UWVMROS1_bea6df3fd35d03b2338aab6b136dada9b31c0ddb5f13c8df41bd30c119f9afdf"
const Ros1Kuavo_msgsSetHeadControlModeRequestNativeType* = "kuavo_msgs/SetHeadControlModeRequest"
const Ros1Kuavo_msgsSetHeadControlModeRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetHeadControlModeRequest*(): Ros1Kuavo_msgsSetHeadControlModeRequest =
  result.`mode` = ""
  result.`fixed_hand` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetHeadControlModeRequest; w: var Writer) =
  putString(w,value.`mode`,256)
  putString(w,value.`fixed_hand`,256)
proc readRos1Kuavo_msgsSetHeadControlModeRequest*(r: var Reader): Ros1Kuavo_msgsSetHeadControlModeRequest =
  result = initRos1Kuavo_msgsSetHeadControlModeRequest()
  result.`mode` = getString(r,256)
  result.`fixed_hand` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetHeadControlModeRequest): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetHeadControlModeRequest*(b: seq[byte]): Ros1Kuavo_msgsSetHeadControlModeRequest =
  var r = initReader(b,520)
  result = readRos1Kuavo_msgsSetHeadControlModeRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetHeadControlModeResponse* = object
  `success`*: bool
  `message`*: string
  `current_mode`*: string
const Ros1Kuavo_msgsSetHeadControlModeResponseMaximumWireBytes* = 521
const Ros1Kuavo_msgsSetHeadControlModeResponseCodecIdentity* = "UWVMROS1_f264f3fecf3ac21e6dec4b7b46be5c445eb22cc552de583946bf866e694c464f"
const Ros1Kuavo_msgsSetHeadControlModeResponseNativeType* = "kuavo_msgs/SetHeadControlModeResponse"
const Ros1Kuavo_msgsSetHeadControlModeResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetHeadControlModeResponse*(): Ros1Kuavo_msgsSetHeadControlModeResponse =
  result.`success` = false
  result.`message` = ""
  result.`current_mode` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetHeadControlModeResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`current_mode`,256)
proc readRos1Kuavo_msgsSetHeadControlModeResponse*(r: var Reader): Ros1Kuavo_msgsSetHeadControlModeResponse =
  result = initRos1Kuavo_msgsSetHeadControlModeResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`current_mode` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetHeadControlModeResponse): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetHeadControlModeResponse*(b: seq[byte]): Ros1Kuavo_msgsSetHeadControlModeResponse =
  var r = initReader(b,521)
  result = readRos1Kuavo_msgsSetHeadControlModeResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest* = object
  `transport`*: int8
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodecIdentity* = "UWVMROS1_a0f69c9c118c365522ff2a7e7df3e3d3ecf9811f71d13ed07100c1d80392fba4"
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestNativeType* = "kuavo_msgs/SetIncrementalArmTrajLinkRequest"
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestNativeIdentity* = ""
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest_TRANSPORT_NONE*: int8 = 0'i8
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest_TRANSPORT_SHM*: int8 = 1'i8
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest_TRANSPORT_KUAVO_ARM_TRAJ*: int8 = 2'i8
proc initRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest*(): Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest =
  result.`transport` = 0
proc writeFields*(value: Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest; w: var Writer) =
  putInteger(w,value.`transport`)
proc readRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest*(r: var Reader): Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest =
  result = initRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest()
  result.`transport` = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest*(b: seq[byte]): Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsSetIncrementalArmTrajLinkRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodecIdentity* = "UWVMROS1_e72fe05a3c0bd9a2cc5c7f952adaedabc6cfe180f9fac0e75bb31c17554e2443"
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseNativeType* = "kuavo_msgs/SetIncrementalArmTrajLinkResponse"
const Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse*(): Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse*(r: var Reader): Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse =
  result = initRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse*(b: seq[byte]): Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetInitialPoseRequest* = object
  `initial_pose`*: Ros1Geometry_msgsPoseWithCovarianceStamped
const Ros1Kuavo_msgsSetInitialPoseRequestMaximumWireBytes* = 616
const Ros1Kuavo_msgsSetInitialPoseRequestCodecIdentity* = "UWVMROS1_f415ec0a920b01d929f930499273a44422fa552f6b51ad651abb41bac4a5c84c"
const Ros1Kuavo_msgsSetInitialPoseRequestNativeType* = "kuavo_msgs/SetInitialPoseRequest"
const Ros1Kuavo_msgsSetInitialPoseRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetInitialPoseRequest*(): Ros1Kuavo_msgsSetInitialPoseRequest =
  result.`initial_pose` = initRos1Geometry_msgsPoseWithCovarianceStamped()
proc writeFields*(value: Ros1Kuavo_msgsSetInitialPoseRequest; w: var Writer) =
  writeFields(value.`initial_pose`,w)
proc readRos1Kuavo_msgsSetInitialPoseRequest*(r: var Reader): Ros1Kuavo_msgsSetInitialPoseRequest =
  result = initRos1Kuavo_msgsSetInitialPoseRequest()
  result.`initial_pose` = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
proc encode*(value: Ros1Kuavo_msgsSetInitialPoseRequest): seq[byte] =
  var w = initWriter(616)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetInitialPoseRequest*(b: seq[byte]): Ros1Kuavo_msgsSetInitialPoseRequest =
  var r = initReader(b,616)
  result = readRos1Kuavo_msgsSetInitialPoseRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetInitialPoseResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetInitialPoseResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetInitialPoseResponseCodecIdentity* = "UWVMROS1_dece3eddb62c7595f164d6b4f68b451c98172ba567e4be905b6e20c3e5bb525a"
const Ros1Kuavo_msgsSetInitialPoseResponseNativeType* = "kuavo_msgs/SetInitialPoseResponse"
const Ros1Kuavo_msgsSetInitialPoseResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetInitialPoseResponse*(): Ros1Kuavo_msgsSetInitialPoseResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetInitialPoseResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetInitialPoseResponse*(r: var Reader): Ros1Kuavo_msgsSetInitialPoseResponse =
  result = initRos1Kuavo_msgsSetInitialPoseResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetInitialPoseResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetInitialPoseResponse*(b: seq[byte]): Ros1Kuavo_msgsSetInitialPoseResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetInitialPoseResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetJoyTopicRequest* = object
  `topic_name`*: string
const Ros1Kuavo_msgsSetJoyTopicRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsSetJoyTopicRequestCodecIdentity* = "UWVMROS1_cefea607dc0197ead58be542500cf84167db55587db8463ec62709c077b69730"
const Ros1Kuavo_msgsSetJoyTopicRequestNativeType* = "kuavo_msgs/SetJoyTopicRequest"
const Ros1Kuavo_msgsSetJoyTopicRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetJoyTopicRequest*(): Ros1Kuavo_msgsSetJoyTopicRequest =
  result.`topic_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetJoyTopicRequest; w: var Writer) =
  putString(w,value.`topic_name`,256)
proc readRos1Kuavo_msgsSetJoyTopicRequest*(r: var Reader): Ros1Kuavo_msgsSetJoyTopicRequest =
  result = initRos1Kuavo_msgsSetJoyTopicRequest()
  result.`topic_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetJoyTopicRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetJoyTopicRequest*(b: seq[byte]): Ros1Kuavo_msgsSetJoyTopicRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsSetJoyTopicRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetJoyTopicResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetJoyTopicResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetJoyTopicResponseCodecIdentity* = "UWVMROS1_57c5cdbe2c37eb865c356d3ad6da49784ce0297484908718c5cda5bb75e2a7d0"
const Ros1Kuavo_msgsSetJoyTopicResponseNativeType* = "kuavo_msgs/SetJoyTopicResponse"
const Ros1Kuavo_msgsSetJoyTopicResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetJoyTopicResponse*(): Ros1Kuavo_msgsSetJoyTopicResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetJoyTopicResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetJoyTopicResponse*(r: var Reader): Ros1Kuavo_msgsSetJoyTopicResponse =
  result = initRos1Kuavo_msgsSetJoyTopicResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetJoyTopicResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetJoyTopicResponse*(b: seq[byte]): Ros1Kuavo_msgsSetJoyTopicResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetJoyTopicResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetLEDModeRequest* = object
  `mode`*: uint8
  `color1`*: array[3,uint8]
  `color2`*: array[3,uint8]
  `color3`*: array[3,uint8]
  `color4`*: array[3,uint8]
  `color5`*: array[3,uint8]
  `color6`*: array[3,uint8]
  `color7`*: array[3,uint8]
  `color8`*: array[3,uint8]
  `color9`*: array[3,uint8]
  `color10`*: array[3,uint8]
const Ros1Kuavo_msgsSetLEDModeRequestMaximumWireBytes* = 31
const Ros1Kuavo_msgsSetLEDModeRequestCodecIdentity* = "UWVMROS1_0bad4e89bb5022c7fe027d30fbaa906042d97e043985af5cb1855a77cf508275"
const Ros1Kuavo_msgsSetLEDModeRequestNativeType* = "kuavo_msgs/SetLEDModeRequest"
const Ros1Kuavo_msgsSetLEDModeRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetLEDModeRequest*(): Ros1Kuavo_msgsSetLEDModeRequest =
  result.`mode` = 0
  result.`color1` = [0,0,0]
  result.`color2` = [0,0,0]
  result.`color3` = [0,0,0]
  result.`color4` = [0,0,0]
  result.`color5` = [0,0,0]
  result.`color6` = [0,0,0]
  result.`color7` = [0,0,0]
  result.`color8` = [0,0,0]
  result.`color9` = [0,0,0]
  result.`color10` = [0,0,0]
proc writeFields*(value: Ros1Kuavo_msgsSetLEDModeRequest; w: var Writer) =
  putInteger(w,value.`mode`)
  for e in value.`color1`:
    putInteger(w,e)
  for e in value.`color2`:
    putInteger(w,e)
  for e in value.`color3`:
    putInteger(w,e)
  for e in value.`color4`:
    putInteger(w,e)
  for e in value.`color5`:
    putInteger(w,e)
  for e in value.`color6`:
    putInteger(w,e)
  for e in value.`color7`:
    putInteger(w,e)
  for e in value.`color8`:
    putInteger(w,e)
  for e in value.`color9`:
    putInteger(w,e)
  for e in value.`color10`:
    putInteger(w,e)
proc readRos1Kuavo_msgsSetLEDModeRequest*(r: var Reader): Ros1Kuavo_msgsSetLEDModeRequest =
  result = initRos1Kuavo_msgsSetLEDModeRequest()
  result.`mode` = getInteger(r,uint8)
  let count1 = 3
  for i in 0..<count1:
    result.`color1`[i] = getInteger(r,uint8)
  let count2 = 3
  for i in 0..<count2:
    result.`color2`[i] = getInteger(r,uint8)
  let count3 = 3
  for i in 0..<count3:
    result.`color3`[i] = getInteger(r,uint8)
  let count4 = 3
  for i in 0..<count4:
    result.`color4`[i] = getInteger(r,uint8)
  let count5 = 3
  for i in 0..<count5:
    result.`color5`[i] = getInteger(r,uint8)
  let count6 = 3
  for i in 0..<count6:
    result.`color6`[i] = getInteger(r,uint8)
  let count7 = 3
  for i in 0..<count7:
    result.`color7`[i] = getInteger(r,uint8)
  let count8 = 3
  for i in 0..<count8:
    result.`color8`[i] = getInteger(r,uint8)
  let count9 = 3
  for i in 0..<count9:
    result.`color9`[i] = getInteger(r,uint8)
  let count10 = 3
  for i in 0..<count10:
    result.`color10`[i] = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsSetLEDModeRequest): seq[byte] =
  var w = initWriter(31)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetLEDModeRequest*(b: seq[byte]): Ros1Kuavo_msgsSetLEDModeRequest =
  var r = initReader(b,31)
  result = readRos1Kuavo_msgsSetLEDModeRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetLEDModeResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsSetLEDModeResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsSetLEDModeResponseCodecIdentity* = "UWVMROS1_792d4cf8c31848b18b099b702a18d7a1857a0e336209e8120442eef129f0e021"
const Ros1Kuavo_msgsSetLEDModeResponseNativeType* = "kuavo_msgs/SetLEDModeResponse"
const Ros1Kuavo_msgsSetLEDModeResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetLEDModeResponse*(): Ros1Kuavo_msgsSetLEDModeResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsSetLEDModeResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsSetLEDModeResponse*(r: var Reader): Ros1Kuavo_msgsSetLEDModeResponse =
  result = initRos1Kuavo_msgsSetLEDModeResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsSetLEDModeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetLEDModeResponse*(b: seq[byte]): Ros1Kuavo_msgsSetLEDModeResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsSetLEDModeResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetLEDMode_freeRequest* = object
  `mode`*: uint8
  `colors`*: seq[Ros1Kuavo_msgsColor]
const Ros1Kuavo_msgsSetLEDMode_freeRequestMaximumWireBytes* = 29
const Ros1Kuavo_msgsSetLEDMode_freeRequestCodecIdentity* = "UWVMROS1_16286964780da8498ef4c346122661059d938f61d807104a3ecc35fd429a3673"
const Ros1Kuavo_msgsSetLEDMode_freeRequestNativeType* = "kuavo_msgs/SetLEDMode_freeRequest"
const Ros1Kuavo_msgsSetLEDMode_freeRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetLEDMode_freeRequest*(): Ros1Kuavo_msgsSetLEDMode_freeRequest =
  result.`mode` = 0
  result.`colors` = @[]
proc writeFields*(value: Ros1Kuavo_msgsSetLEDMode_freeRequest; w: var Writer) =
  putInteger(w,value.`mode`)
  if value.`colors`.len > 8: fail(22)
  putInteger(w,uint32(value.`colors`.len))
  for e in value.`colors`:
    writeFields(e,w)
proc readRos1Kuavo_msgsSetLEDMode_freeRequest*(r: var Reader): Ros1Kuavo_msgsSetLEDMode_freeRequest =
  result = initRos1Kuavo_msgsSetLEDMode_freeRequest()
  result.`mode` = getInteger(r,uint8)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`colors` = newSeq[Ros1Kuavo_msgsColor](count1)
  for i in 0..<count1:
    result.`colors`[i] = readRos1Kuavo_msgsColor(r)
proc encode*(value: Ros1Kuavo_msgsSetLEDMode_freeRequest): seq[byte] =
  var w = initWriter(29)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetLEDMode_freeRequest*(b: seq[byte]): Ros1Kuavo_msgsSetLEDMode_freeRequest =
  var r = initReader(b,29)
  result = readRos1Kuavo_msgsSetLEDMode_freeRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetLEDMode_freeResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsSetLEDMode_freeResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsSetLEDMode_freeResponseCodecIdentity* = "UWVMROS1_59f0736941d470331164916bca40d5c2e754acd265d1e11f22c4bd8591c46d9d"
const Ros1Kuavo_msgsSetLEDMode_freeResponseNativeType* = "kuavo_msgs/SetLEDMode_freeResponse"
const Ros1Kuavo_msgsSetLEDMode_freeResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetLEDMode_freeResponse*(): Ros1Kuavo_msgsSetLEDMode_freeResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsSetLEDMode_freeResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsSetLEDMode_freeResponse*(r: var Reader): Ros1Kuavo_msgsSetLEDMode_freeResponse =
  result = initRos1Kuavo_msgsSetLEDMode_freeResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsSetLEDMode_freeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetLEDMode_freeResponse*(b: seq[byte]): Ros1Kuavo_msgsSetLEDMode_freeResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsSetLEDMode_freeResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetStringRequest* = object
  `data`*: string
const Ros1Kuavo_msgsSetStringRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsSetStringRequestCodecIdentity* = "UWVMROS1_222cac7fb8a01062ca8ef2d97c78c9d352669afa43549c08deae8bc62829c809"
const Ros1Kuavo_msgsSetStringRequestNativeType* = "kuavo_msgs/SetStringRequest"
const Ros1Kuavo_msgsSetStringRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetStringRequest*(): Ros1Kuavo_msgsSetStringRequest =
  result.`data` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetStringRequest; w: var Writer) =
  putString(w,value.`data`,256)
proc readRos1Kuavo_msgsSetStringRequest*(r: var Reader): Ros1Kuavo_msgsSetStringRequest =
  result = initRos1Kuavo_msgsSetStringRequest()
  result.`data` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetStringRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetStringRequest*(b: seq[byte]): Ros1Kuavo_msgsSetStringRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsSetStringRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetStringResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetStringResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetStringResponseCodecIdentity* = "UWVMROS1_8e7f36fbf5eaef32581f8f0fcf8b0eb32a04a2318547b2519e44cc2c8eb603bc"
const Ros1Kuavo_msgsSetStringResponseNativeType* = "kuavo_msgs/SetStringResponse"
const Ros1Kuavo_msgsSetStringResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetStringResponse*(): Ros1Kuavo_msgsSetStringResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetStringResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetStringResponse*(r: var Reader): Ros1Kuavo_msgsSetStringResponse =
  result = initRos1Kuavo_msgsSetStringResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetStringResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetStringResponse*(b: seq[byte]): Ros1Kuavo_msgsSetStringResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetStringResponse(r)
  finish(r)
type Ros1Kuavo_msgsSkeletonFrame* = object
  `header`*: Ros1Std_msgsHeader
  `rigid_bodies`*: seq[Ros1Kuavo_msgsRigidBodyFrame]
const Ros1Kuavo_msgsSkeletonFrameMaximumWireBytes* = 2804
const Ros1Kuavo_msgsSkeletonFrameCodecIdentity* = "UWVMROS1_1a45a890aaf5a44863418ea10536105b44cb69f08e5e54e79d27778498cefd38"
const Ros1Kuavo_msgsSkeletonFrameNativeType* = "kuavo_msgs/SkeletonFrame"
const Ros1Kuavo_msgsSkeletonFrameNativeIdentity* = ""
proc initRos1Kuavo_msgsSkeletonFrame*(): Ros1Kuavo_msgsSkeletonFrame =
  result.`header` = initRos1Std_msgsHeader()
  result.`rigid_bodies` = @[]
proc writeFields*(value: Ros1Kuavo_msgsSkeletonFrame; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`rigid_bodies`.len > 8: fail(22)
  putInteger(w,uint32(value.`rigid_bodies`.len))
  for e in value.`rigid_bodies`:
    writeFields(e,w)
proc readRos1Kuavo_msgsSkeletonFrame*(r: var Reader): Ros1Kuavo_msgsSkeletonFrame =
  result = initRos1Kuavo_msgsSkeletonFrame()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`rigid_bodies` = newSeq[Ros1Kuavo_msgsRigidBodyFrame](count1)
  for i in 0..<count1:
    result.`rigid_bodies`[i] = readRos1Kuavo_msgsRigidBodyFrame(r)
proc encode*(value: Ros1Kuavo_msgsSkeletonFrame): seq[byte] =
  var w = initWriter(2804)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSkeletonFrame*(b: seq[byte]): Ros1Kuavo_msgsSkeletonFrame =
  var r = initReader(b,2804)
  result = readRos1Kuavo_msgsSkeletonFrame(r)
  finish(r)
type Ros1Kuavo_msgsSpeechSynthesisRequest* = object
  `data`*: string
  `volume`*: float32
const Ros1Kuavo_msgsSpeechSynthesisRequestMaximumWireBytes* = 264
const Ros1Kuavo_msgsSpeechSynthesisRequestCodecIdentity* = "UWVMROS1_4a354e2acfce1efec18e5624ed6b17b1d432239ffd8e61d86cdea9effbef62be"
const Ros1Kuavo_msgsSpeechSynthesisRequestNativeType* = "kuavo_msgs/SpeechSynthesisRequest"
const Ros1Kuavo_msgsSpeechSynthesisRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSpeechSynthesisRequest*(): Ros1Kuavo_msgsSpeechSynthesisRequest =
  result.`data` = ""
  result.`volume` = 0
proc writeFields*(value: Ros1Kuavo_msgsSpeechSynthesisRequest; w: var Writer) =
  putString(w,value.`data`,256)
  putFloat32(w,value.`volume`)
proc readRos1Kuavo_msgsSpeechSynthesisRequest*(r: var Reader): Ros1Kuavo_msgsSpeechSynthesisRequest =
  result = initRos1Kuavo_msgsSpeechSynthesisRequest()
  result.`data` = getString(r,256)
  result.`volume` = getFloat32(r)
proc encode*(value: Ros1Kuavo_msgsSpeechSynthesisRequest): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSpeechSynthesisRequest*(b: seq[byte]): Ros1Kuavo_msgsSpeechSynthesisRequest =
  var r = initReader(b,264)
  result = readRos1Kuavo_msgsSpeechSynthesisRequest(r)
  finish(r)
type Ros1Kuavo_msgsSpeechSynthesisResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsSpeechSynthesisResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsSpeechSynthesisResponseCodecIdentity* = "UWVMROS1_ffbd8b7182b1d37b18770b35913ba1c9712c40072a7e03f7a8db7a8dc0eec6e0"
const Ros1Kuavo_msgsSpeechSynthesisResponseNativeType* = "kuavo_msgs/SpeechSynthesisResponse"
const Ros1Kuavo_msgsSpeechSynthesisResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSpeechSynthesisResponse*(): Ros1Kuavo_msgsSpeechSynthesisResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsSpeechSynthesisResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsSpeechSynthesisResponse*(r: var Reader): Ros1Kuavo_msgsSpeechSynthesisResponse =
  result = initRos1Kuavo_msgsSpeechSynthesisResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsSpeechSynthesisResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSpeechSynthesisResponse*(b: seq[byte]): Ros1Kuavo_msgsSpeechSynthesisResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsSpeechSynthesisResponse(r)
  finish(r)
type Ros1Kuavo_msgsTFArray* = object
  `transforms`*: seq[Ros1Geometry_msgsTransformStamped]
const Ros1Kuavo_msgsTFArrayMaximumWireBytes* = 4708
const Ros1Kuavo_msgsTFArrayCodecIdentity* = "UWVMROS1_8991804f6d4ead4842bd099dd017712251be3480fbeefa5e748a388c6d008cf8"
const Ros1Kuavo_msgsTFArrayNativeType* = "kuavo_msgs/TFArray"
const Ros1Kuavo_msgsTFArrayNativeIdentity* = ""
proc initRos1Kuavo_msgsTFArray*(): Ros1Kuavo_msgsTFArray =
  result.`transforms` = @[]
proc writeFields*(value: Ros1Kuavo_msgsTFArray; w: var Writer) =
  if value.`transforms`.len > 8: fail(22)
  putInteger(w,uint32(value.`transforms`.len))
  for e in value.`transforms`:
    writeFields(e,w)
proc readRos1Kuavo_msgsTFArray*(r: var Reader): Ros1Kuavo_msgsTFArray =
  result = initRos1Kuavo_msgsTFArray()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`transforms` = newSeq[Ros1Geometry_msgsTransformStamped](count0)
  for i in 0..<count0:
    result.`transforms`[i] = readRos1Geometry_msgsTransformStamped(r)
proc encode*(value: Ros1Kuavo_msgsTFArray): seq[byte] =
  var w = initWriter(4708)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTFArray*(b: seq[byte]): Ros1Kuavo_msgsTFArray =
  var r = initReader(b,4708)
  result = readRos1Kuavo_msgsTFArray(r)
  finish(r)
type Ros1Kuavo_msgsTaskPoint* = object
  `pose`*: Ros1Geometry_msgsPose
  `name`*: string
const Ros1Kuavo_msgsTaskPointMaximumWireBytes* = 316
const Ros1Kuavo_msgsTaskPointCodecIdentity* = "UWVMROS1_49f32513d8c17cbb9c573a3126ee71fbab248c81cb89a13b534c67d2316ec0e8"
const Ros1Kuavo_msgsTaskPointNativeType* = "kuavo_msgs/TaskPoint"
const Ros1Kuavo_msgsTaskPointNativeIdentity* = ""
proc initRos1Kuavo_msgsTaskPoint*(): Ros1Kuavo_msgsTaskPoint =
  result.`pose` = initRos1Geometry_msgsPose()
  result.`name` = ""
proc writeFields*(value: Ros1Kuavo_msgsTaskPoint; w: var Writer) =
  writeFields(value.`pose`,w)
  putString(w,value.`name`,256)
proc readRos1Kuavo_msgsTaskPoint*(r: var Reader): Ros1Kuavo_msgsTaskPoint =
  result = initRos1Kuavo_msgsTaskPoint()
  result.`pose` = readRos1Geometry_msgsPose(r)
  result.`name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsTaskPoint): seq[byte] =
  var w = initWriter(316)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTaskPoint*(b: seq[byte]): Ros1Kuavo_msgsTaskPoint =
  var r = initReader(b,316)
  result = readRos1Kuavo_msgsTaskPoint(r)
  finish(r)
type Ros1Kuavo_msgsTaskPointOperationRequest* = object
  `operation`*: int8
  `task_point`*: Ros1Kuavo_msgsTaskPoint
  `name`*: string
  `use_robot_current_pose`*: bool
const Ros1Kuavo_msgsTaskPointOperationRequestMaximumWireBytes* = 578
const Ros1Kuavo_msgsTaskPointOperationRequestCodecIdentity* = "UWVMROS1_307c9ed6bd9199b93976bf8fa8a7c7d6ebb86721dc5210a0aa6a3790a020f8f2"
const Ros1Kuavo_msgsTaskPointOperationRequestNativeType* = "kuavo_msgs/TaskPointOperationRequest"
const Ros1Kuavo_msgsTaskPointOperationRequestNativeIdentity* = ""
const Ros1Kuavo_msgsTaskPointOperationRequest_ADD*: int8 = 0'i8
const Ros1Kuavo_msgsTaskPointOperationRequest_UPDATE*: int8 = 1'i8
const Ros1Kuavo_msgsTaskPointOperationRequest_DELETE*: int8 = 2'i8
const Ros1Kuavo_msgsTaskPointOperationRequest_GET*: int8 = 3'i8
proc initRos1Kuavo_msgsTaskPointOperationRequest*(): Ros1Kuavo_msgsTaskPointOperationRequest =
  result.`operation` = 0
  result.`task_point` = initRos1Kuavo_msgsTaskPoint()
  result.`name` = ""
  result.`use_robot_current_pose` = false
proc writeFields*(value: Ros1Kuavo_msgsTaskPointOperationRequest; w: var Writer) =
  putInteger(w,value.`operation`)
  writeFields(value.`task_point`,w)
  putString(w,value.`name`,256)
  putBool(w,value.`use_robot_current_pose`)
proc readRos1Kuavo_msgsTaskPointOperationRequest*(r: var Reader): Ros1Kuavo_msgsTaskPointOperationRequest =
  result = initRos1Kuavo_msgsTaskPointOperationRequest()
  result.`operation` = getInteger(r,int8)
  result.`task_point` = readRos1Kuavo_msgsTaskPoint(r)
  result.`name` = getString(r,256)
  result.`use_robot_current_pose` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsTaskPointOperationRequest): seq[byte] =
  var w = initWriter(578)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTaskPointOperationRequest*(b: seq[byte]): Ros1Kuavo_msgsTaskPointOperationRequest =
  var r = initReader(b,578)
  result = readRos1Kuavo_msgsTaskPointOperationRequest(r)
  finish(r)
type Ros1Kuavo_msgsTaskPointOperationResponse* = object
  `success`*: bool
  `message`*: string
  `task_points`*: seq[Ros1Kuavo_msgsTaskPoint]
const Ros1Kuavo_msgsTaskPointOperationResponseMaximumWireBytes* = 2793
const Ros1Kuavo_msgsTaskPointOperationResponseCodecIdentity* = "UWVMROS1_f17745859e589241fa538fc31355d64c73274003fc08e87142890ca30b22cafd"
const Ros1Kuavo_msgsTaskPointOperationResponseNativeType* = "kuavo_msgs/TaskPointOperationResponse"
const Ros1Kuavo_msgsTaskPointOperationResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsTaskPointOperationResponse*(): Ros1Kuavo_msgsTaskPointOperationResponse =
  result.`success` = false
  result.`message` = ""
  result.`task_points` = @[]
proc writeFields*(value: Ros1Kuavo_msgsTaskPointOperationResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  if value.`task_points`.len > 8: fail(22)
  putInteger(w,uint32(value.`task_points`.len))
  for e in value.`task_points`:
    writeFields(e,w)
proc readRos1Kuavo_msgsTaskPointOperationResponse*(r: var Reader): Ros1Kuavo_msgsTaskPointOperationResponse =
  result = initRos1Kuavo_msgsTaskPointOperationResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`task_points` = newSeq[Ros1Kuavo_msgsTaskPoint](count2)
  for i in 0..<count2:
    result.`task_points`[i] = readRos1Kuavo_msgsTaskPoint(r)
proc encode*(value: Ros1Kuavo_msgsTaskPointOperationResponse): seq[byte] =
  var w = initWriter(2793)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTaskPointOperationResponse*(b: seq[byte]): Ros1Kuavo_msgsTaskPointOperationResponse =
  var r = initReader(b,2793)
  result = readRos1Kuavo_msgsTaskPointOperationResponse(r)
  finish(r)
type Ros1Kuavo_msgsTransportModeCommandRequest* = object
  `command`*: uint8
const Ros1Kuavo_msgsTransportModeCommandRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsTransportModeCommandRequestCodecIdentity* = "UWVMROS1_b626f3c4a1222157a7b263f429301abb78c41d0af9be0e3ca473cccf323db097"
const Ros1Kuavo_msgsTransportModeCommandRequestNativeType* = "kuavo_msgs/TransportModeCommandRequest"
const Ros1Kuavo_msgsTransportModeCommandRequestNativeIdentity* = ""
const Ros1Kuavo_msgsTransportModeCommandRequest_TRANSPORT_ENTER*: uint8 = 1'u8
const Ros1Kuavo_msgsTransportModeCommandRequest_TRANSPORT_LOCK*: uint8 = 2'u8
const Ros1Kuavo_msgsTransportModeCommandRequest_TRANSPORT_EXIT*: uint8 = 3'u8
const Ros1Kuavo_msgsTransportModeCommandRequest_TRANSPORT_FALL_DOWN*: uint8 = 4'u8
const Ros1Kuavo_msgsTransportModeCommandRequest_TRANSPORT_HAND_OVER*: uint8 = 5'u8
proc initRos1Kuavo_msgsTransportModeCommandRequest*(): Ros1Kuavo_msgsTransportModeCommandRequest =
  result.`command` = 0
proc writeFields*(value: Ros1Kuavo_msgsTransportModeCommandRequest; w: var Writer) =
  putInteger(w,value.`command`)
proc readRos1Kuavo_msgsTransportModeCommandRequest*(r: var Reader): Ros1Kuavo_msgsTransportModeCommandRequest =
  result = initRos1Kuavo_msgsTransportModeCommandRequest()
  result.`command` = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsTransportModeCommandRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTransportModeCommandRequest*(b: seq[byte]): Ros1Kuavo_msgsTransportModeCommandRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsTransportModeCommandRequest(r)
  finish(r)
type Ros1Kuavo_msgsTransportModeCommandResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsTransportModeCommandResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsTransportModeCommandResponseCodecIdentity* = "UWVMROS1_96c0b7dbf0adfb165b556d79a5e9a9aa4e65806f7ffbde344c23fb315066a647"
const Ros1Kuavo_msgsTransportModeCommandResponseNativeType* = "kuavo_msgs/TransportModeCommandResponse"
const Ros1Kuavo_msgsTransportModeCommandResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsTransportModeCommandResponse*(): Ros1Kuavo_msgsTransportModeCommandResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsTransportModeCommandResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsTransportModeCommandResponse*(r: var Reader): Ros1Kuavo_msgsTransportModeCommandResponse =
  result = initRos1Kuavo_msgsTransportModeCommandResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsTransportModeCommandResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTransportModeCommandResponse*(b: seq[byte]): Ros1Kuavo_msgsTransportModeCommandResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsTransportModeCommandResponse(r)
  finish(r)
type Ros1Kuavo_msgsVMPTrajectoryState* = object
  `header`*: Ros1Std_msgsHeader
  `current_index`*: int32
  `current_name`*: string
  `current_frame`*: int32
  `total_frames`*: int32
  `progress`*: float32
  `completed`*: bool
const Ros1Kuavo_msgsVMPTrajectoryStateMaximumWireBytes* = 549
const Ros1Kuavo_msgsVMPTrajectoryStateCodecIdentity* = "UWVMROS1_03c1486b58284a85164ac80fb470fa2d76637c85cc97db06ee9b19f258c7ed10"
const Ros1Kuavo_msgsVMPTrajectoryStateNativeType* = "kuavo_msgs/VMPTrajectoryState"
const Ros1Kuavo_msgsVMPTrajectoryStateNativeIdentity* = ""
proc initRos1Kuavo_msgsVMPTrajectoryState*(): Ros1Kuavo_msgsVMPTrajectoryState =
  result.`header` = initRos1Std_msgsHeader()
  result.`current_index` = 0
  result.`current_name` = ""
  result.`current_frame` = 0
  result.`total_frames` = 0
  result.`progress` = 0
  result.`completed` = false
proc writeFields*(value: Ros1Kuavo_msgsVMPTrajectoryState; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`current_index`)
  putString(w,value.`current_name`,256)
  putInteger(w,value.`current_frame`)
  putInteger(w,value.`total_frames`)
  putFloat32(w,value.`progress`)
  putBool(w,value.`completed`)
proc readRos1Kuavo_msgsVMPTrajectoryState*(r: var Reader): Ros1Kuavo_msgsVMPTrajectoryState =
  result = initRos1Kuavo_msgsVMPTrajectoryState()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`current_index` = getInteger(r,int32)
  result.`current_name` = getString(r,256)
  result.`current_frame` = getInteger(r,int32)
  result.`total_frames` = getInteger(r,int32)
  result.`progress` = getFloat32(r)
  result.`completed` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsVMPTrajectoryState): seq[byte] =
  var w = initWriter(549)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsVMPTrajectoryState*(b: seq[byte]): Ros1Kuavo_msgsVMPTrajectoryState =
  var r = initReader(b,549)
  result = readRos1Kuavo_msgsVMPTrajectoryState(r)
  finish(r)
type Ros1Kuavo_msgsAccessIkSolveRequest* = object
  `totalTimeDesired`*: float64
  `maxAttempts`*: int32
  `linearErrorMax`*: float64
  `angularErrorMax`*: float64
  `poseDesired`*: array[6,float64]
  `isLocal`*: bool
  `isLeft`*: bool
  `isWholeBody`*: bool
const Ros1Kuavo_msgsAccessIkSolveRequestMaximumWireBytes* = 79
const Ros1Kuavo_msgsAccessIkSolveRequestCodecIdentity* = "UWVMROS1_4607c77f5557492cd69d42b8822746d00b6199f0cf14bd0753156159ace7c274"
const Ros1Kuavo_msgsAccessIkSolveRequestNativeType* = "kuavo_msgs/accessIkSolveRequest"
const Ros1Kuavo_msgsAccessIkSolveRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsAccessIkSolveRequest*(): Ros1Kuavo_msgsAccessIkSolveRequest =
  result.`totalTimeDesired` = 0
  result.`maxAttempts` = 0
  result.`linearErrorMax` = 0
  result.`angularErrorMax` = 0
  result.`poseDesired` = [0,0,0,0,0,0]
  result.`isLocal` = false
  result.`isLeft` = false
  result.`isWholeBody` = false
proc writeFields*(value: Ros1Kuavo_msgsAccessIkSolveRequest; w: var Writer) =
  putFloat64(w,value.`totalTimeDesired`)
  putInteger(w,value.`maxAttempts`)
  putFloat64(w,value.`linearErrorMax`)
  putFloat64(w,value.`angularErrorMax`)
  for e in value.`poseDesired`:
    putFloat64(w,e)
  putBool(w,value.`isLocal`)
  putBool(w,value.`isLeft`)
  putBool(w,value.`isWholeBody`)
proc readRos1Kuavo_msgsAccessIkSolveRequest*(r: var Reader): Ros1Kuavo_msgsAccessIkSolveRequest =
  result = initRos1Kuavo_msgsAccessIkSolveRequest()
  result.`totalTimeDesired` = getFloat64(r)
  result.`maxAttempts` = getInteger(r,int32)
  result.`linearErrorMax` = getFloat64(r)
  result.`angularErrorMax` = getFloat64(r)
  let count4 = 6
  for i in 0..<count4:
    result.`poseDesired`[i] = getFloat64(r)
  result.`isLocal` = getBool(r)
  result.`isLeft` = getBool(r)
  result.`isWholeBody` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsAccessIkSolveRequest): seq[byte] =
  var w = initWriter(79)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAccessIkSolveRequest*(b: seq[byte]): Ros1Kuavo_msgsAccessIkSolveRequest =
  var r = initReader(b,79)
  result = readRos1Kuavo_msgsAccessIkSolveRequest(r)
  finish(r)
type Ros1Kuavo_msgsAccessIkSolveResponse* = object
  `success`*: bool
  `bestLinearError`*: float64
  `bestAngularError`*: float64
  `qBest`*: seq[float64]
  `posPriorityAccess`*: bool
  `posPriorityLinearError`*: float64
  `posPriorityAngularError`*: float64
  `qPosPriorityBest`*: seq[float64]
const Ros1Kuavo_msgsAccessIkSolveResponseMaximumWireBytes* = 298
const Ros1Kuavo_msgsAccessIkSolveResponseCodecIdentity* = "UWVMROS1_f572b8681cceb266e69c70a3e8a1b463fdfc280bc07f89318982ec3703f97863"
const Ros1Kuavo_msgsAccessIkSolveResponseNativeType* = "kuavo_msgs/accessIkSolveResponse"
const Ros1Kuavo_msgsAccessIkSolveResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsAccessIkSolveResponse*(): Ros1Kuavo_msgsAccessIkSolveResponse =
  result.`success` = false
  result.`bestLinearError` = 0
  result.`bestAngularError` = 0
  result.`qBest` = @[]
  result.`posPriorityAccess` = false
  result.`posPriorityLinearError` = 0
  result.`posPriorityAngularError` = 0
  result.`qPosPriorityBest` = @[]
proc writeFields*(value: Ros1Kuavo_msgsAccessIkSolveResponse; w: var Writer) =
  putBool(w,value.`success`)
  putFloat64(w,value.`bestLinearError`)
  putFloat64(w,value.`bestAngularError`)
  if value.`qBest`.len > 16: fail(22)
  putInteger(w,uint32(value.`qBest`.len))
  for e in value.`qBest`:
    putFloat64(w,e)
  putBool(w,value.`posPriorityAccess`)
  putFloat64(w,value.`posPriorityLinearError`)
  putFloat64(w,value.`posPriorityAngularError`)
  if value.`qPosPriorityBest`.len > 16: fail(22)
  putInteger(w,uint32(value.`qPosPriorityBest`.len))
  for e in value.`qPosPriorityBest`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsAccessIkSolveResponse*(r: var Reader): Ros1Kuavo_msgsAccessIkSolveResponse =
  result = initRos1Kuavo_msgsAccessIkSolveResponse()
  result.`success` = getBool(r)
  result.`bestLinearError` = getFloat64(r)
  result.`bestAngularError` = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`qBest` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`qBest`[i] = getFloat64(r)
  result.`posPriorityAccess` = getBool(r)
  result.`posPriorityLinearError` = getFloat64(r)
  result.`posPriorityAngularError` = getFloat64(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 16: fail(22)
  let count7 = int(rawcount7)
  result.`qPosPriorityBest` = newSeq[float64](count7)
  for i in 0..<count7:
    result.`qPosPriorityBest`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsAccessIkSolveResponse): seq[byte] =
  var w = initWriter(298)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAccessIkSolveResponse*(b: seq[byte]): Ros1Kuavo_msgsAccessIkSolveResponse =
  var r = initReader(b,298)
  result = readRos1Kuavo_msgsAccessIkSolveResponse(r)
  finish(r)
type Ros1Kuavo_msgsAdjustZeroPointRequest* = object
  `motor_index`*: int32
  `offset`*: float64
const Ros1Kuavo_msgsAdjustZeroPointRequestMaximumWireBytes* = 12
const Ros1Kuavo_msgsAdjustZeroPointRequestCodecIdentity* = "UWVMROS1_e1ad07f586e81db4a1e56f059c7f56169505da3f26d67f198d20c24ac94ea4a5"
const Ros1Kuavo_msgsAdjustZeroPointRequestNativeType* = "kuavo_msgs/adjustZeroPointRequest"
const Ros1Kuavo_msgsAdjustZeroPointRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsAdjustZeroPointRequest*(): Ros1Kuavo_msgsAdjustZeroPointRequest =
  result.`motor_index` = 0
  result.`offset` = 0
proc writeFields*(value: Ros1Kuavo_msgsAdjustZeroPointRequest; w: var Writer) =
  putInteger(w,value.`motor_index`)
  putFloat64(w,value.`offset`)
proc readRos1Kuavo_msgsAdjustZeroPointRequest*(r: var Reader): Ros1Kuavo_msgsAdjustZeroPointRequest =
  result = initRos1Kuavo_msgsAdjustZeroPointRequest()
  result.`motor_index` = getInteger(r,int32)
  result.`offset` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsAdjustZeroPointRequest): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAdjustZeroPointRequest*(b: seq[byte]): Ros1Kuavo_msgsAdjustZeroPointRequest =
  var r = initReader(b,12)
  result = readRos1Kuavo_msgsAdjustZeroPointRequest(r)
  finish(r)
type Ros1Kuavo_msgsAdjustZeroPointResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsAdjustZeroPointResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsAdjustZeroPointResponseCodecIdentity* = "UWVMROS1_311c7110e229c8fb310d73f70ec7fdfeabd8facea00fa2ab7292e6782455f695"
const Ros1Kuavo_msgsAdjustZeroPointResponseNativeType* = "kuavo_msgs/adjustZeroPointResponse"
const Ros1Kuavo_msgsAdjustZeroPointResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsAdjustZeroPointResponse*(): Ros1Kuavo_msgsAdjustZeroPointResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsAdjustZeroPointResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsAdjustZeroPointResponse*(r: var Reader): Ros1Kuavo_msgsAdjustZeroPointResponse =
  result = initRos1Kuavo_msgsAdjustZeroPointResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsAdjustZeroPointResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsAdjustZeroPointResponse*(b: seq[byte]): Ros1Kuavo_msgsAdjustZeroPointResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsAdjustZeroPointResponse(r)
  finish(r)
type Ros1Kuavo_msgsArmCollisionCheckInfo* = object
  `link1_name`*: string
  `link2_name`*: string
const Ros1Kuavo_msgsArmCollisionCheckInfoMaximumWireBytes* = 520
const Ros1Kuavo_msgsArmCollisionCheckInfoCodecIdentity* = "UWVMROS1_cfee93819aff05b3584b5102dd724c6b67e9fd3b33037918b0dd8682eabfce71"
const Ros1Kuavo_msgsArmCollisionCheckInfoNativeType* = "kuavo_msgs/armCollisionCheckInfo"
const Ros1Kuavo_msgsArmCollisionCheckInfoNativeIdentity* = ""
proc initRos1Kuavo_msgsArmCollisionCheckInfo*(): Ros1Kuavo_msgsArmCollisionCheckInfo =
  result.`link1_name` = ""
  result.`link2_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsArmCollisionCheckInfo; w: var Writer) =
  putString(w,value.`link1_name`,256)
  putString(w,value.`link2_name`,256)
proc readRos1Kuavo_msgsArmCollisionCheckInfo*(r: var Reader): Ros1Kuavo_msgsArmCollisionCheckInfo =
  result = initRos1Kuavo_msgsArmCollisionCheckInfo()
  result.`link1_name` = getString(r,256)
  result.`link2_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsArmCollisionCheckInfo): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsArmCollisionCheckInfo*(b: seq[byte]): Ros1Kuavo_msgsArmCollisionCheckInfo =
  var r = initReader(b,520)
  result = readRos1Kuavo_msgsArmCollisionCheckInfo(r)
  finish(r)
type Ros1Kuavo_msgsArmHandPose* = object
  `pos_xyz`*: array[3,float64]
  `quat_xyzw`*: array[4,float64]
  `elbow_pos_xyz`*: array[3,float64]
  `joint_angles`*: array[7,float64]
const Ros1Kuavo_msgsArmHandPoseMaximumWireBytes* = 136
const Ros1Kuavo_msgsArmHandPoseCodecIdentity* = "UWVMROS1_728d735e83430f1eb64f24f126a24296e9efb3aff0bfea40ecfe5fe0ba8fe9f6"
const Ros1Kuavo_msgsArmHandPoseNativeType* = "kuavo_msgs/armHandPose"
const Ros1Kuavo_msgsArmHandPoseNativeIdentity* = ""
proc initRos1Kuavo_msgsArmHandPose*(): Ros1Kuavo_msgsArmHandPose =
  result.`pos_xyz` = [0,0,0]
  result.`quat_xyzw` = [0,0,0,0]
  result.`elbow_pos_xyz` = [0,0,0]
  result.`joint_angles` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Kuavo_msgsArmHandPose; w: var Writer) =
  for e in value.`pos_xyz`:
    putFloat64(w,e)
  for e in value.`quat_xyzw`:
    putFloat64(w,e)
  for e in value.`elbow_pos_xyz`:
    putFloat64(w,e)
  for e in value.`joint_angles`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsArmHandPose*(r: var Reader): Ros1Kuavo_msgsArmHandPose =
  result = initRos1Kuavo_msgsArmHandPose()
  let count0 = 3
  for i in 0..<count0:
    result.`pos_xyz`[i] = getFloat64(r)
  let count1 = 4
  for i in 0..<count1:
    result.`quat_xyzw`[i] = getFloat64(r)
  let count2 = 3
  for i in 0..<count2:
    result.`elbow_pos_xyz`[i] = getFloat64(r)
  let count3 = 7
  for i in 0..<count3:
    result.`joint_angles`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsArmHandPose): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsArmHandPose*(b: seq[byte]): Ros1Kuavo_msgsArmHandPose =
  var r = initReader(b,136)
  result = readRos1Kuavo_msgsArmHandPose(r)
  finish(r)
type Ros1Kuavo_msgsArmHandPoseFree* = object
  `pos_xyz`*: array[3,float64]
  `quat_xyzw`*: array[4,float64]
  `elbow_pos_xyz`*: array[3,float64]
  `joint_angles`*: seq[float64]
const Ros1Kuavo_msgsArmHandPoseFreeMaximumWireBytes* = 212
const Ros1Kuavo_msgsArmHandPoseFreeCodecIdentity* = "UWVMROS1_59dd0e669158a32f2b312c00a6bc696012bcbb67970b611a6a6559929c02adb4"
const Ros1Kuavo_msgsArmHandPoseFreeNativeType* = "kuavo_msgs/armHandPoseFree"
const Ros1Kuavo_msgsArmHandPoseFreeNativeIdentity* = ""
proc initRos1Kuavo_msgsArmHandPoseFree*(): Ros1Kuavo_msgsArmHandPoseFree =
  result.`pos_xyz` = [0,0,0]
  result.`quat_xyzw` = [0,0,0,0]
  result.`elbow_pos_xyz` = [0,0,0]
  result.`joint_angles` = @[]
proc writeFields*(value: Ros1Kuavo_msgsArmHandPoseFree; w: var Writer) =
  for e in value.`pos_xyz`:
    putFloat64(w,e)
  for e in value.`quat_xyzw`:
    putFloat64(w,e)
  for e in value.`elbow_pos_xyz`:
    putFloat64(w,e)
  if value.`joint_angles`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_angles`.len))
  for e in value.`joint_angles`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsArmHandPoseFree*(r: var Reader): Ros1Kuavo_msgsArmHandPoseFree =
  result = initRos1Kuavo_msgsArmHandPoseFree()
  let count0 = 3
  for i in 0..<count0:
    result.`pos_xyz`[i] = getFloat64(r)
  let count1 = 4
  for i in 0..<count1:
    result.`quat_xyzw`[i] = getFloat64(r)
  let count2 = 3
  for i in 0..<count2:
    result.`elbow_pos_xyz`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`joint_angles` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`joint_angles`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsArmHandPoseFree): seq[byte] =
  var w = initWriter(212)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsArmHandPoseFree*(b: seq[byte]): Ros1Kuavo_msgsArmHandPoseFree =
  var r = initReader(b,212)
  result = readRos1Kuavo_msgsArmHandPoseFree(r)
  finish(r)
type Ros1Kuavo_msgsArmPoseWithTimeStamp* = object
  `offset`*: int32
  `left_hand_pose`*: seq[float64]
  `right_hand_pose`*: seq[float64]
const Ros1Kuavo_msgsArmPoseWithTimeStampMaximumWireBytes* = 268
const Ros1Kuavo_msgsArmPoseWithTimeStampCodecIdentity* = "UWVMROS1_6a20a74d62ff2c106e9e9b1a15fc853135d5a1bb1a0b28b1f3ebae466e15771f"
const Ros1Kuavo_msgsArmPoseWithTimeStampNativeType* = "kuavo_msgs/armPoseWithTimeStamp"
const Ros1Kuavo_msgsArmPoseWithTimeStampNativeIdentity* = ""
proc initRos1Kuavo_msgsArmPoseWithTimeStamp*(): Ros1Kuavo_msgsArmPoseWithTimeStamp =
  result.`offset` = 0
  result.`left_hand_pose` = @[]
  result.`right_hand_pose` = @[]
proc writeFields*(value: Ros1Kuavo_msgsArmPoseWithTimeStamp; w: var Writer) =
  putInteger(w,value.`offset`)
  if value.`left_hand_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`left_hand_pose`.len))
  for e in value.`left_hand_pose`:
    putFloat64(w,e)
  if value.`right_hand_pose`.len > 16: fail(22)
  putInteger(w,uint32(value.`right_hand_pose`.len))
  for e in value.`right_hand_pose`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsArmPoseWithTimeStamp*(r: var Reader): Ros1Kuavo_msgsArmPoseWithTimeStamp =
  result = initRos1Kuavo_msgsArmPoseWithTimeStamp()
  result.`offset` = getInteger(r,int32)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`left_hand_pose` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`left_hand_pose`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`right_hand_pose` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`right_hand_pose`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsArmPoseWithTimeStamp): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsArmPoseWithTimeStamp*(b: seq[byte]): Ros1Kuavo_msgsArmPoseWithTimeStamp =
  var r = initReader(b,268)
  result = readRos1Kuavo_msgsArmPoseWithTimeStamp(r)
  finish(r)
type Ros1Kuavo_msgsArmTargetPoses* = object
  `times`*: seq[float64]
  `values`*: seq[float64]
  `frame`*: int32
const Ros1Kuavo_msgsArmTargetPosesMaximumWireBytes* = 268
const Ros1Kuavo_msgsArmTargetPosesCodecIdentity* = "UWVMROS1_7ba1e04215842b08433ad7c6aaf980f4cf9142ef4e6cd1a94047888df822239f"
const Ros1Kuavo_msgsArmTargetPosesNativeType* = "kuavo_msgs/armTargetPoses"
const Ros1Kuavo_msgsArmTargetPosesNativeIdentity* = ""
proc initRos1Kuavo_msgsArmTargetPoses*(): Ros1Kuavo_msgsArmTargetPoses =
  result.`times` = @[]
  result.`values` = @[]
  result.`frame` = 0
proc writeFields*(value: Ros1Kuavo_msgsArmTargetPoses; w: var Writer) =
  if value.`times`.len > 16: fail(22)
  putInteger(w,uint32(value.`times`.len))
  for e in value.`times`:
    putFloat64(w,e)
  if value.`values`.len > 16: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
  putInteger(w,value.`frame`)
proc readRos1Kuavo_msgsArmTargetPoses*(r: var Reader): Ros1Kuavo_msgsArmTargetPoses =
  result = initRos1Kuavo_msgsArmTargetPoses()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`times` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`times`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`values` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`values`[i] = getFloat64(r)
  result.`frame` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsArmTargetPoses): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsArmTargetPoses*(b: seq[byte]): Ros1Kuavo_msgsArmTargetPoses =
  var r = initReader(b,268)
  result = readRos1Kuavo_msgsArmTargetPoses(r)
  finish(r)
type Ros1Kuavo_msgsBezierCurveCubicPoint* = object
  `end_point`*: seq[float64]
  `left_control_point`*: seq[float64]
  `right_control_point`*: seq[float64]
const Ros1Kuavo_msgsBezierCurveCubicPointMaximumWireBytes* = 396
const Ros1Kuavo_msgsBezierCurveCubicPointCodecIdentity* = "UWVMROS1_aed931f10d3d77a315befaf89bc33a3e8d39ec8081abde5f9f58b60c20e5c856"
const Ros1Kuavo_msgsBezierCurveCubicPointNativeType* = "kuavo_msgs/bezierCurveCubicPoint"
const Ros1Kuavo_msgsBezierCurveCubicPointNativeIdentity* = ""
proc initRos1Kuavo_msgsBezierCurveCubicPoint*(): Ros1Kuavo_msgsBezierCurveCubicPoint =
  result.`end_point` = @[]
  result.`left_control_point` = @[]
  result.`right_control_point` = @[]
proc writeFields*(value: Ros1Kuavo_msgsBezierCurveCubicPoint; w: var Writer) =
  if value.`end_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`end_point`.len))
  for e in value.`end_point`:
    putFloat64(w,e)
  if value.`left_control_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`left_control_point`.len))
  for e in value.`left_control_point`:
    putFloat64(w,e)
  if value.`right_control_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`right_control_point`.len))
  for e in value.`right_control_point`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsBezierCurveCubicPoint*(r: var Reader): Ros1Kuavo_msgsBezierCurveCubicPoint =
  result = initRos1Kuavo_msgsBezierCurveCubicPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`end_point` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`end_point`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`left_control_point` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`left_control_point`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`right_control_point` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`right_control_point`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsBezierCurveCubicPoint): seq[byte] =
  var w = initWriter(396)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsBezierCurveCubicPoint*(b: seq[byte]): Ros1Kuavo_msgsBezierCurveCubicPoint =
  var r = initReader(b,396)
  result = readRos1Kuavo_msgsBezierCurveCubicPoint(r)
  finish(r)
type Ros1Kuavo_msgsChangeArmCtrlModeRequest* = object
  `control_mode`*: int32
const Ros1Kuavo_msgsChangeArmCtrlModeRequestMaximumWireBytes* = 4
const Ros1Kuavo_msgsChangeArmCtrlModeRequestCodecIdentity* = "UWVMROS1_b068af7cea2b555967cc7c813996902cf68737cfd01dd82ad02500871f3a02bb"
const Ros1Kuavo_msgsChangeArmCtrlModeRequestNativeType* = "kuavo_msgs/changeArmCtrlModeRequest"
const Ros1Kuavo_msgsChangeArmCtrlModeRequestNativeIdentity* = ""
const Ros1Kuavo_msgsChangeArmCtrlModeRequest_ik_ultra_fast_mode*: int32 = 3'i32
proc initRos1Kuavo_msgsChangeArmCtrlModeRequest*(): Ros1Kuavo_msgsChangeArmCtrlModeRequest =
  result.`control_mode` = 0
proc writeFields*(value: Ros1Kuavo_msgsChangeArmCtrlModeRequest; w: var Writer) =
  putInteger(w,value.`control_mode`)
proc readRos1Kuavo_msgsChangeArmCtrlModeRequest*(r: var Reader): Ros1Kuavo_msgsChangeArmCtrlModeRequest =
  result = initRos1Kuavo_msgsChangeArmCtrlModeRequest()
  result.`control_mode` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsChangeArmCtrlModeRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeArmCtrlModeRequest*(b: seq[byte]): Ros1Kuavo_msgsChangeArmCtrlModeRequest =
  var r = initReader(b,4)
  result = readRos1Kuavo_msgsChangeArmCtrlModeRequest(r)
  finish(r)
type Ros1Kuavo_msgsChangeArmCtrlModeResponse* = object
  `result`*: bool
  `mode`*: int32
  `message`*: string
const Ros1Kuavo_msgsChangeArmCtrlModeResponseMaximumWireBytes* = 265
const Ros1Kuavo_msgsChangeArmCtrlModeResponseCodecIdentity* = "UWVMROS1_c6366fe001000894badf0bed6114d880710ebbb07958b2b95bec730b69bbd5c4"
const Ros1Kuavo_msgsChangeArmCtrlModeResponseNativeType* = "kuavo_msgs/changeArmCtrlModeResponse"
const Ros1Kuavo_msgsChangeArmCtrlModeResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeArmCtrlModeResponse*(): Ros1Kuavo_msgsChangeArmCtrlModeResponse =
  result.`result` = false
  result.`mode` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsChangeArmCtrlModeResponse; w: var Writer) =
  putBool(w,value.`result`)
  putInteger(w,value.`mode`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsChangeArmCtrlModeResponse*(r: var Reader): Ros1Kuavo_msgsChangeArmCtrlModeResponse =
  result = initRos1Kuavo_msgsChangeArmCtrlModeResponse()
  result.`result` = getBool(r)
  result.`mode` = getInteger(r,int32)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsChangeArmCtrlModeResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeArmCtrlModeResponse*(b: seq[byte]): Ros1Kuavo_msgsChangeArmCtrlModeResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_msgsChangeArmCtrlModeResponse(r)
  finish(r)
type Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest* = object
  `control_mode`*: bool
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodecIdentity* = "UWVMROS1_5a91ebca645d32d8c23e688042703cad59b3deba3930db3a0f2ff701b4f6e4f3"
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestNativeType* = "kuavo_msgs/changeArmCtrlModeKuavoRequest"
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest*(): Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest =
  result.`control_mode` = false
proc writeFields*(value: Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest; w: var Writer) =
  putBool(w,value.`control_mode`)
proc readRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest*(r: var Reader): Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest =
  result = initRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest()
  result.`control_mode` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest*(b: seq[byte]): Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsChangeArmCtrlModeKuavoRequest(r)
  finish(r)
type Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse* = object
  `result`*: bool
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodecIdentity* = "UWVMROS1_f5f5d8cba542d051c114c197040f0e2624f681a5b3ff92b02db70e1ade4331b1"
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseNativeType* = "kuavo_msgs/changeArmCtrlModeKuavoResponse"
const Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse*(): Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse =
  result.`result` = false
proc writeFields*(value: Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse*(r: var Reader): Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse =
  result = initRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse*(b: seq[byte]): Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse(r)
  finish(r)
type Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest* = object
  `obsUpdateMode`*: int8
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodecIdentity* = "UWVMROS1_7bcfd6319a75a54a2772176b8a39313bb2e9a345b7561ae5649578bea0146f76"
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestNativeType* = "kuavo_msgs/changeLbMpcObsUpdateModeSrvRequest"
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest*(): Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest =
  result.`obsUpdateMode` = 0
proc writeFields*(value: Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest; w: var Writer) =
  putInteger(w,value.`obsUpdateMode`)
proc readRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest*(r: var Reader): Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest =
  result = initRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest()
  result.`obsUpdateMode` = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodecIdentity* = "UWVMROS1_b7f5b92bdf7ff99aaddfa2d391b5e5e65df46d21c47088ee223a88a8e5a28e9f"
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseNativeType* = "kuavo_msgs/changeLbMpcObsUpdateModeSrvResponse"
const Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse*(): Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse*(r: var Reader): Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse =
  result = initRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsChangeLbQuickModeSrvRequest* = object
  `quickMode`*: int8
const Ros1Kuavo_msgsChangeLbQuickModeSrvRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodecIdentity* = "UWVMROS1_aedd6e1c52452ec88114a791b978b05876f5611e27b080055950bebf4f74e56e"
const Ros1Kuavo_msgsChangeLbQuickModeSrvRequestNativeType* = "kuavo_msgs/changeLbQuickModeSrvRequest"
const Ros1Kuavo_msgsChangeLbQuickModeSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeLbQuickModeSrvRequest*(): Ros1Kuavo_msgsChangeLbQuickModeSrvRequest =
  result.`quickMode` = 0
proc writeFields*(value: Ros1Kuavo_msgsChangeLbQuickModeSrvRequest; w: var Writer) =
  putInteger(w,value.`quickMode`)
proc readRos1Kuavo_msgsChangeLbQuickModeSrvRequest*(r: var Reader): Ros1Kuavo_msgsChangeLbQuickModeSrvRequest =
  result = initRos1Kuavo_msgsChangeLbQuickModeSrvRequest()
  result.`quickMode` = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsChangeLbQuickModeSrvRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeLbQuickModeSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsChangeLbQuickModeSrvRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsChangeLbQuickModeSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsChangeLbQuickModeSrvResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsChangeLbQuickModeSrvResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodecIdentity* = "UWVMROS1_162770ec0ef48a2419d382c39ec6833e4de8eca9af4cae6698a3e79cbd401996"
const Ros1Kuavo_msgsChangeLbQuickModeSrvResponseNativeType* = "kuavo_msgs/changeLbQuickModeSrvResponse"
const Ros1Kuavo_msgsChangeLbQuickModeSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeLbQuickModeSrvResponse*(): Ros1Kuavo_msgsChangeLbQuickModeSrvResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsChangeLbQuickModeSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsChangeLbQuickModeSrvResponse*(r: var Reader): Ros1Kuavo_msgsChangeLbQuickModeSrvResponse =
  result = initRos1Kuavo_msgsChangeLbQuickModeSrvResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsChangeLbQuickModeSrvResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsChangeLbQuickModeSrvResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsChangeLbQuickModeSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsMotorParam* = object
  `Kp`*: float32
  `Kd`*: float32
  `id`*: int16
const Ros1Kuavo_msgsMotorParamMaximumWireBytes* = 10
const Ros1Kuavo_msgsMotorParamCodecIdentity* = "UWVMROS1_dc3c55c0faab62a473cc5afd1e697c9dac64857fe83d4b186619ce37db0fb2fd"
const Ros1Kuavo_msgsMotorParamNativeType* = "kuavo_msgs/motorParam"
const Ros1Kuavo_msgsMotorParamNativeIdentity* = ""
proc initRos1Kuavo_msgsMotorParam*(): Ros1Kuavo_msgsMotorParam =
  result.`Kp` = 0
  result.`Kd` = 0
  result.`id` = 0
proc writeFields*(value: Ros1Kuavo_msgsMotorParam; w: var Writer) =
  putFloat32(w,value.`Kp`)
  putFloat32(w,value.`Kd`)
  putInteger(w,value.`id`)
proc readRos1Kuavo_msgsMotorParam*(r: var Reader): Ros1Kuavo_msgsMotorParam =
  result = initRos1Kuavo_msgsMotorParam()
  result.`Kp` = getFloat32(r)
  result.`Kd` = getFloat32(r)
  result.`id` = getInteger(r,int16)
proc encode*(value: Ros1Kuavo_msgsMotorParam): seq[byte] =
  var w = initWriter(10)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsMotorParam*(b: seq[byte]): Ros1Kuavo_msgsMotorParam =
  var r = initReader(b,10)
  result = readRos1Kuavo_msgsMotorParam(r)
  finish(r)
type Ros1Kuavo_msgsChangeMotorParamRequest* = object
  `data`*: seq[Ros1Kuavo_msgsMotorParam]
const Ros1Kuavo_msgsChangeMotorParamRequestMaximumWireBytes* = 84
const Ros1Kuavo_msgsChangeMotorParamRequestCodecIdentity* = "UWVMROS1_27d517f878651ae667e92811351b74016389f86b29b6b41c9769ba2c3678b8c4"
const Ros1Kuavo_msgsChangeMotorParamRequestNativeType* = "kuavo_msgs/changeMotorParamRequest"
const Ros1Kuavo_msgsChangeMotorParamRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeMotorParamRequest*(): Ros1Kuavo_msgsChangeMotorParamRequest =
  result.`data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsChangeMotorParamRequest; w: var Writer) =
  if value.`data`.len > 8: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos1Kuavo_msgsChangeMotorParamRequest*(r: var Reader): Ros1Kuavo_msgsChangeMotorParamRequest =
  result = initRos1Kuavo_msgsChangeMotorParamRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[Ros1Kuavo_msgsMotorParam](count0)
  for i in 0..<count0:
    result.`data`[i] = readRos1Kuavo_msgsMotorParam(r)
proc encode*(value: Ros1Kuavo_msgsChangeMotorParamRequest): seq[byte] =
  var w = initWriter(84)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeMotorParamRequest*(b: seq[byte]): Ros1Kuavo_msgsChangeMotorParamRequest =
  var r = initReader(b,84)
  result = readRos1Kuavo_msgsChangeMotorParamRequest(r)
  finish(r)
type Ros1Kuavo_msgsChangeMotorParamResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsChangeMotorParamResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsChangeMotorParamResponseCodecIdentity* = "UWVMROS1_b4140350dff17ffd2f64bd04f25a0be06c4da10e817f90ce96b8c39db6465cfb"
const Ros1Kuavo_msgsChangeMotorParamResponseNativeType* = "kuavo_msgs/changeMotorParamResponse"
const Ros1Kuavo_msgsChangeMotorParamResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeMotorParamResponse*(): Ros1Kuavo_msgsChangeMotorParamResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsChangeMotorParamResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsChangeMotorParamResponse*(r: var Reader): Ros1Kuavo_msgsChangeMotorParamResponse =
  result = initRos1Kuavo_msgsChangeMotorParamResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsChangeMotorParamResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeMotorParamResponse*(b: seq[byte]): Ros1Kuavo_msgsChangeMotorParamResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsChangeMotorParamResponse(r)
  finish(r)
type Ros1Kuavo_msgsChangeTorsoCtrlModeRequest* = object
  `control_mode`*: int32
const Ros1Kuavo_msgsChangeTorsoCtrlModeRequestMaximumWireBytes* = 4
const Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodecIdentity* = "UWVMROS1_f9c72da54ebb0db0f523c4b72c5b5854e9775a9432dc27f1c06cb8bca4ca952d"
const Ros1Kuavo_msgsChangeTorsoCtrlModeRequestNativeType* = "kuavo_msgs/changeTorsoCtrlModeRequest"
const Ros1Kuavo_msgsChangeTorsoCtrlModeRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeTorsoCtrlModeRequest*(): Ros1Kuavo_msgsChangeTorsoCtrlModeRequest =
  result.`control_mode` = 0
proc writeFields*(value: Ros1Kuavo_msgsChangeTorsoCtrlModeRequest; w: var Writer) =
  putInteger(w,value.`control_mode`)
proc readRos1Kuavo_msgsChangeTorsoCtrlModeRequest*(r: var Reader): Ros1Kuavo_msgsChangeTorsoCtrlModeRequest =
  result = initRos1Kuavo_msgsChangeTorsoCtrlModeRequest()
  result.`control_mode` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsChangeTorsoCtrlModeRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeTorsoCtrlModeRequest*(b: seq[byte]): Ros1Kuavo_msgsChangeTorsoCtrlModeRequest =
  var r = initReader(b,4)
  result = readRos1Kuavo_msgsChangeTorsoCtrlModeRequest(r)
  finish(r)
type Ros1Kuavo_msgsChangeTorsoCtrlModeResponse* = object
  `result`*: bool
  `mode`*: int32
  `message`*: string
const Ros1Kuavo_msgsChangeTorsoCtrlModeResponseMaximumWireBytes* = 265
const Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodecIdentity* = "UWVMROS1_e1065686a1571d4d8866f2bd17f626c7e8e2cba9db8200d649d6ea070fd8367a"
const Ros1Kuavo_msgsChangeTorsoCtrlModeResponseNativeType* = "kuavo_msgs/changeTorsoCtrlModeResponse"
const Ros1Kuavo_msgsChangeTorsoCtrlModeResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeTorsoCtrlModeResponse*(): Ros1Kuavo_msgsChangeTorsoCtrlModeResponse =
  result.`result` = false
  result.`mode` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsChangeTorsoCtrlModeResponse; w: var Writer) =
  putBool(w,value.`result`)
  putInteger(w,value.`mode`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsChangeTorsoCtrlModeResponse*(r: var Reader): Ros1Kuavo_msgsChangeTorsoCtrlModeResponse =
  result = initRos1Kuavo_msgsChangeTorsoCtrlModeResponse()
  result.`result` = getBool(r)
  result.`mode` = getInteger(r,int32)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsChangeTorsoCtrlModeResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse*(b: seq[byte]): Ros1Kuavo_msgsChangeTorsoCtrlModeResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_msgsChangeTorsoCtrlModeResponse(r)
  finish(r)
type Ros1Kuavo_msgsChangeWaistCtrlModeRequest* = object
  `control_mode`*: int32
const Ros1Kuavo_msgsChangeWaistCtrlModeRequestMaximumWireBytes* = 4
const Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodecIdentity* = "UWVMROS1_bc255f9b1f8b583419684d6751413b5625c59e6722aa08a938939b3910a16e7b"
const Ros1Kuavo_msgsChangeWaistCtrlModeRequestNativeType* = "kuavo_msgs/changeWaistCtrlModeRequest"
const Ros1Kuavo_msgsChangeWaistCtrlModeRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeWaistCtrlModeRequest*(): Ros1Kuavo_msgsChangeWaistCtrlModeRequest =
  result.`control_mode` = 0
proc writeFields*(value: Ros1Kuavo_msgsChangeWaistCtrlModeRequest; w: var Writer) =
  putInteger(w,value.`control_mode`)
proc readRos1Kuavo_msgsChangeWaistCtrlModeRequest*(r: var Reader): Ros1Kuavo_msgsChangeWaistCtrlModeRequest =
  result = initRos1Kuavo_msgsChangeWaistCtrlModeRequest()
  result.`control_mode` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsChangeWaistCtrlModeRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeWaistCtrlModeRequest*(b: seq[byte]): Ros1Kuavo_msgsChangeWaistCtrlModeRequest =
  var r = initReader(b,4)
  result = readRos1Kuavo_msgsChangeWaistCtrlModeRequest(r)
  finish(r)
type Ros1Kuavo_msgsChangeWaistCtrlModeResponse* = object
  `result`*: bool
  `mode`*: int32
  `message`*: string
const Ros1Kuavo_msgsChangeWaistCtrlModeResponseMaximumWireBytes* = 265
const Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodecIdentity* = "UWVMROS1_eebe8a6b6928b85aa34c68e0b3aef0f56f6ae141b3dd2f05152f3c0cb4362913"
const Ros1Kuavo_msgsChangeWaistCtrlModeResponseNativeType* = "kuavo_msgs/changeWaistCtrlModeResponse"
const Ros1Kuavo_msgsChangeWaistCtrlModeResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChangeWaistCtrlModeResponse*(): Ros1Kuavo_msgsChangeWaistCtrlModeResponse =
  result.`result` = false
  result.`mode` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsChangeWaistCtrlModeResponse; w: var Writer) =
  putBool(w,value.`result`)
  putInteger(w,value.`mode`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsChangeWaistCtrlModeResponse*(r: var Reader): Ros1Kuavo_msgsChangeWaistCtrlModeResponse =
  result = initRos1Kuavo_msgsChangeWaistCtrlModeResponse()
  result.`result` = getBool(r)
  result.`mode` = getInteger(r,int32)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsChangeWaistCtrlModeResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChangeWaistCtrlModeResponse*(b: seq[byte]): Ros1Kuavo_msgsChangeWaistCtrlModeResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_msgsChangeWaistCtrlModeResponse(r)
  finish(r)
type Ros1Kuavo_msgsChassisPoseCmdSrvRequest* = object
  `target_pose`*: Ros1Geometry_msgsPose
  `duration`*: seq[float64]
const Ros1Kuavo_msgsChassisPoseCmdSrvRequestMaximumWireBytes* = 188
const Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodecIdentity* = "UWVMROS1_8bb38989ec0533d11cd98d7182ebfaf1d1c5c9a0e59314fee2a0a8cc1cf4d99f"
const Ros1Kuavo_msgsChassisPoseCmdSrvRequestNativeType* = "kuavo_msgs/chassisPoseCmdSrvRequest"
const Ros1Kuavo_msgsChassisPoseCmdSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsChassisPoseCmdSrvRequest*(): Ros1Kuavo_msgsChassisPoseCmdSrvRequest =
  result.`target_pose` = initRos1Geometry_msgsPose()
  result.`duration` = @[]
proc writeFields*(value: Ros1Kuavo_msgsChassisPoseCmdSrvRequest; w: var Writer) =
  writeFields(value.`target_pose`,w)
  if value.`duration`.len > 16: fail(22)
  putInteger(w,uint32(value.`duration`.len))
  for e in value.`duration`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsChassisPoseCmdSrvRequest*(r: var Reader): Ros1Kuavo_msgsChassisPoseCmdSrvRequest =
  result = initRos1Kuavo_msgsChassisPoseCmdSrvRequest()
  result.`target_pose` = readRos1Geometry_msgsPose(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`duration` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`duration`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsChassisPoseCmdSrvRequest): seq[byte] =
  var w = initWriter(188)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChassisPoseCmdSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsChassisPoseCmdSrvRequest =
  var r = initReader(b,188)
  result = readRos1Kuavo_msgsChassisPoseCmdSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsChassisPoseCmdSrvResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsChassisPoseCmdSrvResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodecIdentity* = "UWVMROS1_d8ced0167e8370bd833499b343be634636560003755db904855a70515862e737"
const Ros1Kuavo_msgsChassisPoseCmdSrvResponseNativeType* = "kuavo_msgs/chassisPoseCmdSrvResponse"
const Ros1Kuavo_msgsChassisPoseCmdSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsChassisPoseCmdSrvResponse*(): Ros1Kuavo_msgsChassisPoseCmdSrvResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsChassisPoseCmdSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsChassisPoseCmdSrvResponse*(r: var Reader): Ros1Kuavo_msgsChassisPoseCmdSrvResponse =
  result = initRos1Kuavo_msgsChassisPoseCmdSrvResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsChassisPoseCmdSrvResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsChassisPoseCmdSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsChassisPoseCmdSrvResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsChassisPoseCmdSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsEndEffectorData* = object
  `name`*: seq[string]
  `position`*: seq[float64]
  `velocity`*: seq[float64]
  `effort`*: seq[float64]
const Ros1Kuavo_msgsEndEffectorDataMaximumWireBytes* = 4560
const Ros1Kuavo_msgsEndEffectorDataCodecIdentity* = "UWVMROS1_e984b3281bf8be9337ef4508f3499f8fe12d55fb292b85b106cbffef4f34d720"
const Ros1Kuavo_msgsEndEffectorDataNativeType* = "kuavo_msgs/endEffectorData"
const Ros1Kuavo_msgsEndEffectorDataNativeIdentity* = ""
proc initRos1Kuavo_msgsEndEffectorData*(): Ros1Kuavo_msgsEndEffectorData =
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
proc writeFields*(value: Ros1Kuavo_msgsEndEffectorData; w: var Writer) =
  if value.`name`.len > 16: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,256)
  if value.`position`.len > 16: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 16: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 16: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsEndEffectorData*(r: var Reader): Ros1Kuavo_msgsEndEffectorData =
  result = initRos1Kuavo_msgsEndEffectorData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`name` = newSeq[string](count0)
  for i in 0..<count0:
    result.`name`[i] = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`position` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`position`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`velocity` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`velocity`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsEndEffectorData): seq[byte] =
  var w = initWriter(4560)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsEndEffectorData*(b: seq[byte]): Ros1Kuavo_msgsEndEffectorData =
  var r = initReader(b,4560)
  result = readRos1Kuavo_msgsEndEffectorData(r)
  finish(r)
type Ros1Kuavo_msgsControlLejuClawRequest* = object
  `data`*: Ros1Kuavo_msgsEndEffectorData
const Ros1Kuavo_msgsControlLejuClawRequestMaximumWireBytes* = 4560
const Ros1Kuavo_msgsControlLejuClawRequestCodecIdentity* = "UWVMROS1_881440ff46cfe5876525a730cbff55b70f2b00e2c6c0d0539640629ea064f37d"
const Ros1Kuavo_msgsControlLejuClawRequestNativeType* = "kuavo_msgs/controlLejuClawRequest"
const Ros1Kuavo_msgsControlLejuClawRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsControlLejuClawRequest*(): Ros1Kuavo_msgsControlLejuClawRequest =
  result.`data` = initRos1Kuavo_msgsEndEffectorData()
proc writeFields*(value: Ros1Kuavo_msgsControlLejuClawRequest; w: var Writer) =
  writeFields(value.`data`,w)
proc readRos1Kuavo_msgsControlLejuClawRequest*(r: var Reader): Ros1Kuavo_msgsControlLejuClawRequest =
  result = initRos1Kuavo_msgsControlLejuClawRequest()
  result.`data` = readRos1Kuavo_msgsEndEffectorData(r)
proc encode*(value: Ros1Kuavo_msgsControlLejuClawRequest): seq[byte] =
  var w = initWriter(4560)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsControlLejuClawRequest*(b: seq[byte]): Ros1Kuavo_msgsControlLejuClawRequest =
  var r = initReader(b,4560)
  result = readRos1Kuavo_msgsControlLejuClawRequest(r)
  finish(r)
type Ros1Kuavo_msgsControlLejuClawResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsControlLejuClawResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsControlLejuClawResponseCodecIdentity* = "UWVMROS1_1c41adab23cdf564273b166e287aba08d4ef3b25aec4260773931a456293acaf"
const Ros1Kuavo_msgsControlLejuClawResponseNativeType* = "kuavo_msgs/controlLejuClawResponse"
const Ros1Kuavo_msgsControlLejuClawResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsControlLejuClawResponse*(): Ros1Kuavo_msgsControlLejuClawResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsControlLejuClawResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsControlLejuClawResponse*(r: var Reader): Ros1Kuavo_msgsControlLejuClawResponse =
  result = initRos1Kuavo_msgsControlLejuClawResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsControlLejuClawResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsControlLejuClawResponse*(b: seq[byte]): Ros1Kuavo_msgsControlLejuClawResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsControlLejuClawResponse(r)
  finish(r)
type Ros1Kuavo_msgsDexhandCommand* = object
  `header`*: Ros1Std_msgsHeader
  `control_mode`*: int8
  `data`*: seq[int16]
const Ros1Kuavo_msgsDexhandCommandMaximumWireBytes* = 309
const Ros1Kuavo_msgsDexhandCommandCodecIdentity* = "UWVMROS1_9800aeab62a5a0038869601935b796f17c761ca091196d3a2fe1f236ecac55e3"
const Ros1Kuavo_msgsDexhandCommandNativeType* = "kuavo_msgs/dexhandCommand"
const Ros1Kuavo_msgsDexhandCommandNativeIdentity* = ""
const Ros1Kuavo_msgsDexhandCommand_POSITION_CONTROL*: int8 = 0'i8
const Ros1Kuavo_msgsDexhandCommand_VELOCITY_CONTROL*: int8 = 1'i8
proc initRos1Kuavo_msgsDexhandCommand*(): Ros1Kuavo_msgsDexhandCommand =
  result.`header` = initRos1Std_msgsHeader()
  result.`control_mode` = 0
  result.`data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsDexhandCommand; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`control_mode`)
  if value.`data`.len > 16: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
proc readRos1Kuavo_msgsDexhandCommand*(r: var Reader): Ros1Kuavo_msgsDexhandCommand =
  result = initRos1Kuavo_msgsDexhandCommand()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`control_mode` = getInteger(r,int8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`data` = newSeq[int16](count2)
  for i in 0..<count2:
    result.`data`[i] = getInteger(r,int16)
proc encode*(value: Ros1Kuavo_msgsDexhandCommand): seq[byte] =
  var w = initWriter(309)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsDexhandCommand*(b: seq[byte]): Ros1Kuavo_msgsDexhandCommand =
  var r = initReader(b,309)
  result = readRos1Kuavo_msgsDexhandCommand(r)
  finish(r)
type Ros1Kuavo_msgsTouchSensorStatus* = object
  `normal_force1`*: uint16
  `normal_force2`*: uint16
  `normal_force3`*: uint16
  `tangential_force1`*: uint16
  `tangential_force2`*: uint16
  `tangential_force3`*: uint16
  `tangential_direction1`*: uint16
  `tangential_direction2`*: uint16
  `tangential_direction3`*: uint16
  `self_proximity1`*: uint32
  `self_proximity2`*: uint32
  `mutual_proximity`*: uint32
  `status`*: uint16
const Ros1Kuavo_msgsTouchSensorStatusMaximumWireBytes* = 32
const Ros1Kuavo_msgsTouchSensorStatusCodecIdentity* = "UWVMROS1_ea916c62624747f95aee5134d578ca26f635f8d5b2661395d50ea1e9080af2fc"
const Ros1Kuavo_msgsTouchSensorStatusNativeType* = "kuavo_msgs/touchSensorStatus"
const Ros1Kuavo_msgsTouchSensorStatusNativeIdentity* = ""
proc initRos1Kuavo_msgsTouchSensorStatus*(): Ros1Kuavo_msgsTouchSensorStatus =
  result.`normal_force1` = 0
  result.`normal_force2` = 0
  result.`normal_force3` = 0
  result.`tangential_force1` = 0
  result.`tangential_force2` = 0
  result.`tangential_force3` = 0
  result.`tangential_direction1` = 0
  result.`tangential_direction2` = 0
  result.`tangential_direction3` = 0
  result.`self_proximity1` = 0
  result.`self_proximity2` = 0
  result.`mutual_proximity` = 0
  result.`status` = 0
proc writeFields*(value: Ros1Kuavo_msgsTouchSensorStatus; w: var Writer) =
  putInteger(w,value.`normal_force1`)
  putInteger(w,value.`normal_force2`)
  putInteger(w,value.`normal_force3`)
  putInteger(w,value.`tangential_force1`)
  putInteger(w,value.`tangential_force2`)
  putInteger(w,value.`tangential_force3`)
  putInteger(w,value.`tangential_direction1`)
  putInteger(w,value.`tangential_direction2`)
  putInteger(w,value.`tangential_direction3`)
  putInteger(w,value.`self_proximity1`)
  putInteger(w,value.`self_proximity2`)
  putInteger(w,value.`mutual_proximity`)
  putInteger(w,value.`status`)
proc readRos1Kuavo_msgsTouchSensorStatus*(r: var Reader): Ros1Kuavo_msgsTouchSensorStatus =
  result = initRos1Kuavo_msgsTouchSensorStatus()
  result.`normal_force1` = getInteger(r,uint16)
  result.`normal_force2` = getInteger(r,uint16)
  result.`normal_force3` = getInteger(r,uint16)
  result.`tangential_force1` = getInteger(r,uint16)
  result.`tangential_force2` = getInteger(r,uint16)
  result.`tangential_force3` = getInteger(r,uint16)
  result.`tangential_direction1` = getInteger(r,uint16)
  result.`tangential_direction2` = getInteger(r,uint16)
  result.`tangential_direction3` = getInteger(r,uint16)
  result.`self_proximity1` = getInteger(r,uint32)
  result.`self_proximity2` = getInteger(r,uint32)
  result.`mutual_proximity` = getInteger(r,uint32)
  result.`status` = getInteger(r,uint16)
proc encode*(value: Ros1Kuavo_msgsTouchSensorStatus): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTouchSensorStatus*(b: seq[byte]): Ros1Kuavo_msgsTouchSensorStatus =
  var r = initReader(b,32)
  result = readRos1Kuavo_msgsTouchSensorStatus(r)
  finish(r)
type Ros1Kuavo_msgsDexhandTouchState* = object
  `header`*: Ros1Std_msgsHeader
  `left_hand`*: array[5,Ros1Kuavo_msgsTouchSensorStatus]
  `right_hand`*: array[5,Ros1Kuavo_msgsTouchSensorStatus]
const Ros1Kuavo_msgsDexhandTouchStateMaximumWireBytes* = 592
const Ros1Kuavo_msgsDexhandTouchStateCodecIdentity* = "UWVMROS1_03a697286c716d6093b4f8d3502dbf7b09936d64928dfbaa8811b17549b01033"
const Ros1Kuavo_msgsDexhandTouchStateNativeType* = "kuavo_msgs/dexhandTouchState"
const Ros1Kuavo_msgsDexhandTouchStateNativeIdentity* = ""
proc initRos1Kuavo_msgsDexhandTouchState*(): Ros1Kuavo_msgsDexhandTouchState =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_hand` = [initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus()]
  result.`right_hand` = [initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus(),initRos1Kuavo_msgsTouchSensorStatus()]
proc writeFields*(value: Ros1Kuavo_msgsDexhandTouchState; w: var Writer) =
  writeFields(value.`header`,w)
  for e in value.`left_hand`:
    writeFields(e,w)
  for e in value.`right_hand`:
    writeFields(e,w)
proc readRos1Kuavo_msgsDexhandTouchState*(r: var Reader): Ros1Kuavo_msgsDexhandTouchState =
  result = initRos1Kuavo_msgsDexhandTouchState()
  result.`header` = readRos1Std_msgsHeader(r)
  let count1 = 5
  for i in 0..<count1:
    result.`left_hand`[i] = readRos1Kuavo_msgsTouchSensorStatus(r)
  let count2 = 5
  for i in 0..<count2:
    result.`right_hand`[i] = readRos1Kuavo_msgsTouchSensorStatus(r)
proc encode*(value: Ros1Kuavo_msgsDexhandTouchState): seq[byte] =
  var w = initWriter(592)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsDexhandTouchState*(b: seq[byte]): Ros1Kuavo_msgsDexhandTouchState =
  var r = initReader(b,592)
  result = readRos1Kuavo_msgsDexhandTouchState(r)
  finish(r)
type Ros1Kuavo_msgsEePoseReachErrorRequest* = object
  `isLeft`*: bool
const Ros1Kuavo_msgsEePoseReachErrorRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsEePoseReachErrorRequestCodecIdentity* = "UWVMROS1_1111a59887022419cd8a989840be446b679342e5a876236fe39af3a604234c04"
const Ros1Kuavo_msgsEePoseReachErrorRequestNativeType* = "kuavo_msgs/eePoseReachErrorRequest"
const Ros1Kuavo_msgsEePoseReachErrorRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsEePoseReachErrorRequest*(): Ros1Kuavo_msgsEePoseReachErrorRequest =
  result.`isLeft` = false
proc writeFields*(value: Ros1Kuavo_msgsEePoseReachErrorRequest; w: var Writer) =
  putBool(w,value.`isLeft`)
proc readRos1Kuavo_msgsEePoseReachErrorRequest*(r: var Reader): Ros1Kuavo_msgsEePoseReachErrorRequest =
  result = initRos1Kuavo_msgsEePoseReachErrorRequest()
  result.`isLeft` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsEePoseReachErrorRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsEePoseReachErrorRequest*(b: seq[byte]): Ros1Kuavo_msgsEePoseReachErrorRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsEePoseReachErrorRequest(r)
  finish(r)
type Ros1Kuavo_msgsEePoseReachErrorResponse* = object
  `success`*: bool
  `errVector`*: seq[float64]
const Ros1Kuavo_msgsEePoseReachErrorResponseMaximumWireBytes* = 133
const Ros1Kuavo_msgsEePoseReachErrorResponseCodecIdentity* = "UWVMROS1_0293d17ba1a37f2baf5703bb59629827c923d504d10852a3c2e1e2f24b888cd0"
const Ros1Kuavo_msgsEePoseReachErrorResponseNativeType* = "kuavo_msgs/eePoseReachErrorResponse"
const Ros1Kuavo_msgsEePoseReachErrorResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsEePoseReachErrorResponse*(): Ros1Kuavo_msgsEePoseReachErrorResponse =
  result.`success` = false
  result.`errVector` = @[]
proc writeFields*(value: Ros1Kuavo_msgsEePoseReachErrorResponse; w: var Writer) =
  putBool(w,value.`success`)
  if value.`errVector`.len > 16: fail(22)
  putInteger(w,uint32(value.`errVector`.len))
  for e in value.`errVector`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsEePoseReachErrorResponse*(r: var Reader): Ros1Kuavo_msgsEePoseReachErrorResponse =
  result = initRos1Kuavo_msgsEePoseReachErrorResponse()
  result.`success` = getBool(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`errVector` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`errVector`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsEePoseReachErrorResponse): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsEePoseReachErrorResponse*(b: seq[byte]): Ros1Kuavo_msgsEePoseReachErrorResponse =
  var r = initReader(b,133)
  result = readRos1Kuavo_msgsEePoseReachErrorResponse(r)
  finish(r)
type Ros1Kuavo_msgsEnableHandTouchSensorRequest* = object
  `mask`*: uint8
const Ros1Kuavo_msgsEnableHandTouchSensorRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsEnableHandTouchSensorRequestCodecIdentity* = "UWVMROS1_7492603694aed3482d3930e90339de6d809a04249b1df0d4d5effe2f7bde78fa"
const Ros1Kuavo_msgsEnableHandTouchSensorRequestNativeType* = "kuavo_msgs/enableHandTouchSensorRequest"
const Ros1Kuavo_msgsEnableHandTouchSensorRequestNativeIdentity* = ""
const Ros1Kuavo_msgsEnableHandTouchSensorRequest_THUMB_SENSOR*: uint8 = 1'u8
const Ros1Kuavo_msgsEnableHandTouchSensorRequest_INDEX_SENSOR*: uint8 = 2'u8
const Ros1Kuavo_msgsEnableHandTouchSensorRequest_MIDDLE_SENSOR*: uint8 = 4'u8
const Ros1Kuavo_msgsEnableHandTouchSensorRequest_RING_SENSOR*: uint8 = 8'u8
const Ros1Kuavo_msgsEnableHandTouchSensorRequest_PINKY_SENSOR*: uint8 = 16'u8
proc initRos1Kuavo_msgsEnableHandTouchSensorRequest*(): Ros1Kuavo_msgsEnableHandTouchSensorRequest =
  result.`mask` = 0
proc writeFields*(value: Ros1Kuavo_msgsEnableHandTouchSensorRequest; w: var Writer) =
  putInteger(w,value.`mask`)
proc readRos1Kuavo_msgsEnableHandTouchSensorRequest*(r: var Reader): Ros1Kuavo_msgsEnableHandTouchSensorRequest =
  result = initRos1Kuavo_msgsEnableHandTouchSensorRequest()
  result.`mask` = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsEnableHandTouchSensorRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsEnableHandTouchSensorRequest*(b: seq[byte]): Ros1Kuavo_msgsEnableHandTouchSensorRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsEnableHandTouchSensorRequest(r)
  finish(r)
type Ros1Kuavo_msgsEnableHandTouchSensorResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsEnableHandTouchSensorResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsEnableHandTouchSensorResponseCodecIdentity* = "UWVMROS1_d523a7299d823eaf2a97c34ec02b353cbc1806c92e9452aa3221fb605659e0b6"
const Ros1Kuavo_msgsEnableHandTouchSensorResponseNativeType* = "kuavo_msgs/enableHandTouchSensorResponse"
const Ros1Kuavo_msgsEnableHandTouchSensorResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsEnableHandTouchSensorResponse*(): Ros1Kuavo_msgsEnableHandTouchSensorResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsEnableHandTouchSensorResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsEnableHandTouchSensorResponse*(r: var Reader): Ros1Kuavo_msgsEnableHandTouchSensorResponse =
  result = initRos1Kuavo_msgsEnableHandTouchSensorResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsEnableHandTouchSensorResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsEnableHandTouchSensorResponse*(b: seq[byte]): Ros1Kuavo_msgsEnableHandTouchSensorResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsEnableHandTouchSensorResponse(r)
  finish(r)
type Ros1Kuavo_msgsFkSrvRequest* = object
  `q`*: seq[float64]
const Ros1Kuavo_msgsFkSrvRequestMaximumWireBytes* = 132
const Ros1Kuavo_msgsFkSrvRequestCodecIdentity* = "UWVMROS1_5e1b8d650b88005066b97a2be990ef2d2c5c3e38cbb629b8d204d51595981e76"
const Ros1Kuavo_msgsFkSrvRequestNativeType* = "kuavo_msgs/fkSrvRequest"
const Ros1Kuavo_msgsFkSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsFkSrvRequest*(): Ros1Kuavo_msgsFkSrvRequest =
  result.`q` = @[]
proc writeFields*(value: Ros1Kuavo_msgsFkSrvRequest; w: var Writer) =
  if value.`q`.len > 16: fail(22)
  putInteger(w,uint32(value.`q`.len))
  for e in value.`q`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsFkSrvRequest*(r: var Reader): Ros1Kuavo_msgsFkSrvRequest =
  result = initRos1Kuavo_msgsFkSrvRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`q` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`q`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsFkSrvRequest): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFkSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsFkSrvRequest =
  var r = initReader(b,132)
  result = readRos1Kuavo_msgsFkSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPose* = object
  `header`*: Ros1Std_msgsHeader
  `left_pose`*: Ros1Kuavo_msgsArmHandPose
  `right_pose`*: Ros1Kuavo_msgsArmHandPose
const Ros1Kuavo_msgsTwoArmHandPoseMaximumWireBytes* = 544
const Ros1Kuavo_msgsTwoArmHandPoseCodecIdentity* = "UWVMROS1_b75626d0314b13bb772c5813ff909de276b1069059a68e424d69bd3c8b524883"
const Ros1Kuavo_msgsTwoArmHandPoseNativeType* = "kuavo_msgs/twoArmHandPose"
const Ros1Kuavo_msgsTwoArmHandPoseNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPose*(): Ros1Kuavo_msgsTwoArmHandPose =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_pose` = initRos1Kuavo_msgsArmHandPose()
  result.`right_pose` = initRos1Kuavo_msgsArmHandPose()
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPose; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_pose`,w)
  writeFields(value.`right_pose`,w)
proc readRos1Kuavo_msgsTwoArmHandPose*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPose =
  result = initRos1Kuavo_msgsTwoArmHandPose()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`left_pose` = readRos1Kuavo_msgsArmHandPose(r)
  result.`right_pose` = readRos1Kuavo_msgsArmHandPose(r)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPose): seq[byte] =
  var w = initWriter(544)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPose*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPose =
  var r = initReader(b,544)
  result = readRos1Kuavo_msgsTwoArmHandPose(r)
  finish(r)
type Ros1Kuavo_msgsFkSrvResponse* = object
  `success`*: bool
  `hand_poses`*: Ros1Kuavo_msgsTwoArmHandPose
const Ros1Kuavo_msgsFkSrvResponseMaximumWireBytes* = 545
const Ros1Kuavo_msgsFkSrvResponseCodecIdentity* = "UWVMROS1_4e8e29636dd04a2d166285fade3bbee860743da319fe26ce2504a0f3b713f102"
const Ros1Kuavo_msgsFkSrvResponseNativeType* = "kuavo_msgs/fkSrvResponse"
const Ros1Kuavo_msgsFkSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsFkSrvResponse*(): Ros1Kuavo_msgsFkSrvResponse =
  result.`success` = false
  result.`hand_poses` = initRos1Kuavo_msgsTwoArmHandPose()
proc writeFields*(value: Ros1Kuavo_msgsFkSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
  writeFields(value.`hand_poses`,w)
proc readRos1Kuavo_msgsFkSrvResponse*(r: var Reader): Ros1Kuavo_msgsFkSrvResponse =
  result = initRos1Kuavo_msgsFkSrvResponse()
  result.`success` = getBool(r)
  result.`hand_poses` = readRos1Kuavo_msgsTwoArmHandPose(r)
proc encode*(value: Ros1Kuavo_msgsFkSrvResponse): seq[byte] =
  var w = initWriter(545)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFkSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsFkSrvResponse =
  var r = initReader(b,545)
  result = readRos1Kuavo_msgsFkSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsFkSrvWithReferFrameRequest* = object
  `q`*: seq[float64]
  `base_frame`*: string
  `end_effector_frame`*: string
  `hand_side`*: int32
const Ros1Kuavo_msgsFkSrvWithReferFrameRequestMaximumWireBytes* = 656
const Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodecIdentity* = "UWVMROS1_f6bf6c9af634743b2e8404ab3b301b024fd9177b0195f11f463073205362639c"
const Ros1Kuavo_msgsFkSrvWithReferFrameRequestNativeType* = "kuavo_msgs/fkSrvWithReferFrameRequest"
const Ros1Kuavo_msgsFkSrvWithReferFrameRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsFkSrvWithReferFrameRequest*(): Ros1Kuavo_msgsFkSrvWithReferFrameRequest =
  result.`q` = @[]
  result.`base_frame` = ""
  result.`end_effector_frame` = ""
  result.`hand_side` = 0
proc writeFields*(value: Ros1Kuavo_msgsFkSrvWithReferFrameRequest; w: var Writer) =
  if value.`q`.len > 16: fail(22)
  putInteger(w,uint32(value.`q`.len))
  for e in value.`q`:
    putFloat64(w,e)
  putString(w,value.`base_frame`,256)
  putString(w,value.`end_effector_frame`,256)
  putInteger(w,value.`hand_side`)
proc readRos1Kuavo_msgsFkSrvWithReferFrameRequest*(r: var Reader): Ros1Kuavo_msgsFkSrvWithReferFrameRequest =
  result = initRos1Kuavo_msgsFkSrvWithReferFrameRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`q` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`q`[i] = getFloat64(r)
  result.`base_frame` = getString(r,256)
  result.`end_effector_frame` = getString(r,256)
  result.`hand_side` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsFkSrvWithReferFrameRequest): seq[byte] =
  var w = initWriter(656)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFkSrvWithReferFrameRequest*(b: seq[byte]): Ros1Kuavo_msgsFkSrvWithReferFrameRequest =
  var r = initReader(b,656)
  result = readRos1Kuavo_msgsFkSrvWithReferFrameRequest(r)
  finish(r)
type Ros1Kuavo_msgsFkSrvWithReferFrameResponse* = object
  `success`*: bool
  `error_message`*: string
  `hand_poses`*: Ros1Kuavo_msgsTwoArmHandPose
const Ros1Kuavo_msgsFkSrvWithReferFrameResponseMaximumWireBytes* = 805
const Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodecIdentity* = "UWVMROS1_bfa3ab88799783d624991e303b427aef719f6a5ba1eee19bb7248e7d36d85815"
const Ros1Kuavo_msgsFkSrvWithReferFrameResponseNativeType* = "kuavo_msgs/fkSrvWithReferFrameResponse"
const Ros1Kuavo_msgsFkSrvWithReferFrameResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsFkSrvWithReferFrameResponse*(): Ros1Kuavo_msgsFkSrvWithReferFrameResponse =
  result.`success` = false
  result.`error_message` = ""
  result.`hand_poses` = initRos1Kuavo_msgsTwoArmHandPose()
proc writeFields*(value: Ros1Kuavo_msgsFkSrvWithReferFrameResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`error_message`,256)
  writeFields(value.`hand_poses`,w)
proc readRos1Kuavo_msgsFkSrvWithReferFrameResponse*(r: var Reader): Ros1Kuavo_msgsFkSrvWithReferFrameResponse =
  result = initRos1Kuavo_msgsFkSrvWithReferFrameResponse()
  result.`success` = getBool(r)
  result.`error_message` = getString(r,256)
  result.`hand_poses` = readRos1Kuavo_msgsTwoArmHandPose(r)
proc encode*(value: Ros1Kuavo_msgsFkSrvWithReferFrameResponse): seq[byte] =
  var w = initWriter(805)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFkSrvWithReferFrameResponse*(b: seq[byte]): Ros1Kuavo_msgsFkSrvWithReferFrameResponse =
  var r = initReader(b,805)
  result = readRos1Kuavo_msgsFkSrvWithReferFrameResponse(r)
  finish(r)
type Ros1Kuavo_msgsFootPose* = object
  `footPose`*: array[4,float64]
  `torsoPose`*: array[4,float64]
const Ros1Kuavo_msgsFootPoseMaximumWireBytes* = 64
const Ros1Kuavo_msgsFootPoseCodecIdentity* = "UWVMROS1_1dc43938a13dbe26a59007ec003aff5038173178b97cb2e3ff0d795345bac14f"
const Ros1Kuavo_msgsFootPoseNativeType* = "kuavo_msgs/footPose"
const Ros1Kuavo_msgsFootPoseNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPose*(): Ros1Kuavo_msgsFootPose =
  result.`footPose` = [0,0,0,0]
  result.`torsoPose` = [0,0,0,0]
proc writeFields*(value: Ros1Kuavo_msgsFootPose; w: var Writer) =
  for e in value.`footPose`:
    putFloat64(w,e)
  for e in value.`torsoPose`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsFootPose*(r: var Reader): Ros1Kuavo_msgsFootPose =
  result = initRos1Kuavo_msgsFootPose()
  let count0 = 4
  for i in 0..<count0:
    result.`footPose`[i] = getFloat64(r)
  let count1 = 4
  for i in 0..<count1:
    result.`torsoPose`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsFootPose): seq[byte] =
  var w = initWriter(64)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPose*(b: seq[byte]): Ros1Kuavo_msgsFootPose =
  var r = initReader(b,64)
  result = readRos1Kuavo_msgsFootPose(r)
  finish(r)
type Ros1Kuavo_msgsFootPose6D* = object
  `footPose6D`*: array[6,float64]
  `torsoPose6D`*: array[6,float64]
const Ros1Kuavo_msgsFootPose6DMaximumWireBytes* = 96
const Ros1Kuavo_msgsFootPose6DCodecIdentity* = "UWVMROS1_4034cc908006c3541786b162c806a1b49e49598fda96bb68f76a060a3c48f0b9"
const Ros1Kuavo_msgsFootPose6DNativeType* = "kuavo_msgs/footPose6D"
const Ros1Kuavo_msgsFootPose6DNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPose6D*(): Ros1Kuavo_msgsFootPose6D =
  result.`footPose6D` = [0,0,0,0,0,0]
  result.`torsoPose6D` = [0,0,0,0,0,0]
proc writeFields*(value: Ros1Kuavo_msgsFootPose6D; w: var Writer) =
  for e in value.`footPose6D`:
    putFloat64(w,e)
  for e in value.`torsoPose6D`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsFootPose6D*(r: var Reader): Ros1Kuavo_msgsFootPose6D =
  result = initRos1Kuavo_msgsFootPose6D()
  let count0 = 6
  for i in 0..<count0:
    result.`footPose6D`[i] = getFloat64(r)
  let count1 = 6
  for i in 0..<count1:
    result.`torsoPose6D`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsFootPose6D): seq[byte] =
  var w = initWriter(96)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPose6D*(b: seq[byte]): Ros1Kuavo_msgsFootPose6D =
  var r = initReader(b,96)
  result = readRos1Kuavo_msgsFootPose6D(r)
  finish(r)
type Ros1Kuavo_msgsFootPoses6D* = object
  `data`*: seq[Ros1Kuavo_msgsFootPose6D]
const Ros1Kuavo_msgsFootPoses6DMaximumWireBytes* = 772
const Ros1Kuavo_msgsFootPoses6DCodecIdentity* = "UWVMROS1_2bfbb2b401ca234254f356cf8e261cc9a43faadf7fcf16dd21775706f2925052"
const Ros1Kuavo_msgsFootPoses6DNativeType* = "kuavo_msgs/footPoses6D"
const Ros1Kuavo_msgsFootPoses6DNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPoses6D*(): Ros1Kuavo_msgsFootPoses6D =
  result.`data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsFootPoses6D; w: var Writer) =
  if value.`data`.len > 8: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos1Kuavo_msgsFootPoses6D*(r: var Reader): Ros1Kuavo_msgsFootPoses6D =
  result = initRos1Kuavo_msgsFootPoses6D()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[Ros1Kuavo_msgsFootPose6D](count0)
  for i in 0..<count0:
    result.`data`[i] = readRos1Kuavo_msgsFootPose6D(r)
proc encode*(value: Ros1Kuavo_msgsFootPoses6D): seq[byte] =
  var w = initWriter(772)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPoses6D*(b: seq[byte]): Ros1Kuavo_msgsFootPoses6D =
  var r = initReader(b,772)
  result = readRos1Kuavo_msgsFootPoses6D(r)
  finish(r)
type Ros1Kuavo_msgsFootPose6DTargetTrajectories* = object
  `timeTrajectory`*: seq[float64]
  `footIndexTrajectory`*: seq[int32]
  `footPoseTrajectory`*: seq[Ros1Kuavo_msgsFootPose6D]
  `additionalFootPoseTrajectory`*: seq[Ros1Kuavo_msgsFootPoses6D]
  `swingHeightTrajectory`*: seq[float64]
  `insertTime`*: float64
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesMaximumWireBytes* = 7292
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesCodecIdentity* = "UWVMROS1_c69e87081e6d953188281e1f53fbef5e25c049901827313c84e2718b97ce385e"
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesNativeType* = "kuavo_msgs/footPose6DTargetTrajectories"
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPose6DTargetTrajectories*(): Ros1Kuavo_msgsFootPose6DTargetTrajectories =
  result.`timeTrajectory` = @[]
  result.`footIndexTrajectory` = @[]
  result.`footPoseTrajectory` = @[]
  result.`additionalFootPoseTrajectory` = @[]
  result.`swingHeightTrajectory` = @[]
  result.`insertTime` = 0
proc writeFields*(value: Ros1Kuavo_msgsFootPose6DTargetTrajectories; w: var Writer) =
  if value.`timeTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`timeTrajectory`.len))
  for e in value.`timeTrajectory`:
    putFloat64(w,e)
  if value.`footIndexTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`footIndexTrajectory`.len))
  for e in value.`footIndexTrajectory`:
    putInteger(w,e)
  if value.`footPoseTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`footPoseTrajectory`.len))
  for e in value.`footPoseTrajectory`:
    writeFields(e,w)
  if value.`additionalFootPoseTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`additionalFootPoseTrajectory`.len))
  for e in value.`additionalFootPoseTrajectory`:
    writeFields(e,w)
  if value.`swingHeightTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`swingHeightTrajectory`.len))
  for e in value.`swingHeightTrajectory`:
    putFloat64(w,e)
  putFloat64(w,value.`insertTime`)
proc readRos1Kuavo_msgsFootPose6DTargetTrajectories*(r: var Reader): Ros1Kuavo_msgsFootPose6DTargetTrajectories =
  result = initRos1Kuavo_msgsFootPose6DTargetTrajectories()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`timeTrajectory` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`timeTrajectory`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`footIndexTrajectory` = newSeq[int32](count1)
  for i in 0..<count1:
    result.`footIndexTrajectory`[i] = getInteger(r,int32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`footPoseTrajectory` = newSeq[Ros1Kuavo_msgsFootPose6D](count2)
  for i in 0..<count2:
    result.`footPoseTrajectory`[i] = readRos1Kuavo_msgsFootPose6D(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`additionalFootPoseTrajectory` = newSeq[Ros1Kuavo_msgsFootPoses6D](count3)
  for i in 0..<count3:
    result.`additionalFootPoseTrajectory`[i] = readRos1Kuavo_msgsFootPoses6D(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`swingHeightTrajectory` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`swingHeightTrajectory`[i] = getFloat64(r)
  result.`insertTime` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsFootPose6DTargetTrajectories): seq[byte] =
  var w = initWriter(7292)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPose6DTargetTrajectories*(b: seq[byte]): Ros1Kuavo_msgsFootPose6DTargetTrajectories =
  var r = initReader(b,7292)
  result = readRos1Kuavo_msgsFootPose6DTargetTrajectories(r)
  finish(r)
type Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest* = object
  `foot_pose_target_trajectories`*: Ros1Kuavo_msgsFootPose6DTargetTrajectories
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestMaximumWireBytes* = 7292
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodecIdentity* = "UWVMROS1_b702239b1be77367a9504b076cfcface3ecb76be696c5a0d079e237c0c1ba93d"
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestNativeType* = "kuavo_msgs/footPose6DTargetTrajectoriesSrvRequest"
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest*(): Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest =
  result.`foot_pose_target_trajectories` = initRos1Kuavo_msgsFootPose6DTargetTrajectories()
proc writeFields*(value: Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest; w: var Writer) =
  writeFields(value.`foot_pose_target_trajectories`,w)
proc readRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest*(r: var Reader): Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest =
  result = initRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest()
  result.`foot_pose_target_trajectories` = readRos1Kuavo_msgsFootPose6DTargetTrajectories(r)
proc encode*(value: Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest): seq[byte] =
  var w = initWriter(7292)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest =
  var r = initReader(b,7292)
  result = readRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodecIdentity* = "UWVMROS1_b2c4ca80226f02e81ed6c2769481f61923f82d647e7c2e675a93a841df374b78"
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseNativeType* = "kuavo_msgs/footPose6DTargetTrajectoriesSrvResponse"
const Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse*(): Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse*(r: var Reader): Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse =
  result = initRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsFootPoses* = object
  `data`*: seq[Ros1Kuavo_msgsFootPose]
const Ros1Kuavo_msgsFootPosesMaximumWireBytes* = 516
const Ros1Kuavo_msgsFootPosesCodecIdentity* = "UWVMROS1_216a16a93492de300186e7d08b26ab98ecab699e7141ccc733358773798bcc55"
const Ros1Kuavo_msgsFootPosesNativeType* = "kuavo_msgs/footPoses"
const Ros1Kuavo_msgsFootPosesNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPoses*(): Ros1Kuavo_msgsFootPoses =
  result.`data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsFootPoses; w: var Writer) =
  if value.`data`.len > 8: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos1Kuavo_msgsFootPoses*(r: var Reader): Ros1Kuavo_msgsFootPoses =
  result = initRos1Kuavo_msgsFootPoses()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[Ros1Kuavo_msgsFootPose](count0)
  for i in 0..<count0:
    result.`data`[i] = readRos1Kuavo_msgsFootPose(r)
proc encode*(value: Ros1Kuavo_msgsFootPoses): seq[byte] =
  var w = initWriter(516)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPoses*(b: seq[byte]): Ros1Kuavo_msgsFootPoses =
  var r = initReader(b,516)
  result = readRos1Kuavo_msgsFootPoses(r)
  finish(r)
type Ros1Kuavo_msgsFootPoseTargetTrajectories* = object
  `timeTrajectory`*: seq[float64]
  `footIndexTrajectory`*: seq[int32]
  `footPoseTrajectory`*: seq[Ros1Kuavo_msgsFootPose]
  `additionalFootPoseTrajectory`*: seq[Ros1Kuavo_msgsFootPoses]
  `swingHeightTrajectory`*: seq[float64]
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesMaximumWireBytes* = 4980
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesCodecIdentity* = "UWVMROS1_a9f8c1da63f1789e36043a3d3169f77dac28d4e4cdd8d655e528973daa17a547"
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesNativeType* = "kuavo_msgs/footPoseTargetTrajectories"
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPoseTargetTrajectories*(): Ros1Kuavo_msgsFootPoseTargetTrajectories =
  result.`timeTrajectory` = @[]
  result.`footIndexTrajectory` = @[]
  result.`footPoseTrajectory` = @[]
  result.`additionalFootPoseTrajectory` = @[]
  result.`swingHeightTrajectory` = @[]
proc writeFields*(value: Ros1Kuavo_msgsFootPoseTargetTrajectories; w: var Writer) =
  if value.`timeTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`timeTrajectory`.len))
  for e in value.`timeTrajectory`:
    putFloat64(w,e)
  if value.`footIndexTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`footIndexTrajectory`.len))
  for e in value.`footIndexTrajectory`:
    putInteger(w,e)
  if value.`footPoseTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`footPoseTrajectory`.len))
  for e in value.`footPoseTrajectory`:
    writeFields(e,w)
  if value.`additionalFootPoseTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`additionalFootPoseTrajectory`.len))
  for e in value.`additionalFootPoseTrajectory`:
    writeFields(e,w)
  if value.`swingHeightTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`swingHeightTrajectory`.len))
  for e in value.`swingHeightTrajectory`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsFootPoseTargetTrajectories*(r: var Reader): Ros1Kuavo_msgsFootPoseTargetTrajectories =
  result = initRos1Kuavo_msgsFootPoseTargetTrajectories()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`timeTrajectory` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`timeTrajectory`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`footIndexTrajectory` = newSeq[int32](count1)
  for i in 0..<count1:
    result.`footIndexTrajectory`[i] = getInteger(r,int32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`footPoseTrajectory` = newSeq[Ros1Kuavo_msgsFootPose](count2)
  for i in 0..<count2:
    result.`footPoseTrajectory`[i] = readRos1Kuavo_msgsFootPose(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`additionalFootPoseTrajectory` = newSeq[Ros1Kuavo_msgsFootPoses](count3)
  for i in 0..<count3:
    result.`additionalFootPoseTrajectory`[i] = readRos1Kuavo_msgsFootPoses(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`swingHeightTrajectory` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`swingHeightTrajectory`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsFootPoseTargetTrajectories): seq[byte] =
  var w = initWriter(4980)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPoseTargetTrajectories*(b: seq[byte]): Ros1Kuavo_msgsFootPoseTargetTrajectories =
  var r = initReader(b,4980)
  result = readRos1Kuavo_msgsFootPoseTargetTrajectories(r)
  finish(r)
type Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest* = object
  `foot_pose_target_trajectories`*: Ros1Kuavo_msgsFootPoseTargetTrajectories
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestMaximumWireBytes* = 4980
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodecIdentity* = "UWVMROS1_7b8db8268aa6bc136f472646224e802e1b4d4db82c02f183666600770dfaa898"
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestNativeType* = "kuavo_msgs/footPoseTargetTrajectoriesSrvRequest"
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest*(): Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest =
  result.`foot_pose_target_trajectories` = initRos1Kuavo_msgsFootPoseTargetTrajectories()
proc writeFields*(value: Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest; w: var Writer) =
  writeFields(value.`foot_pose_target_trajectories`,w)
proc readRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest*(r: var Reader): Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest =
  result = initRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest()
  result.`foot_pose_target_trajectories` = readRos1Kuavo_msgsFootPoseTargetTrajectories(r)
proc encode*(value: Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest): seq[byte] =
  var w = initWriter(4980)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest =
  var r = initReader(b,4980)
  result = readRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodecIdentity* = "UWVMROS1_30d352e2d02aeac74a6706d55a22f4179ef80b4a3eb66058f1fe197e0cf268ba"
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseNativeType* = "kuavo_msgs/footPoseTargetTrajectoriesSrvResponse"
const Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse*(): Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse*(r: var Reader): Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse =
  result = initRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsFootPoseWithVision* = object
  `footPoseId`*: int32
  `footIndexTrajectory`*: int32
  `footPose`*: array[4,float64]
const Ros1Kuavo_msgsFootPoseWithVisionMaximumWireBytes* = 40
const Ros1Kuavo_msgsFootPoseWithVisionCodecIdentity* = "UWVMROS1_4432ebe58b93e7666e007984b4456abad8c425d6583b4b5d8618224e5098bdde"
const Ros1Kuavo_msgsFootPoseWithVisionNativeType* = "kuavo_msgs/footPoseWithVision"
const Ros1Kuavo_msgsFootPoseWithVisionNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPoseWithVision*(): Ros1Kuavo_msgsFootPoseWithVision =
  result.`footPoseId` = 0
  result.`footIndexTrajectory` = 0
  result.`footPose` = [0,0,0,0]
proc writeFields*(value: Ros1Kuavo_msgsFootPoseWithVision; w: var Writer) =
  putInteger(w,value.`footPoseId`)
  putInteger(w,value.`footIndexTrajectory`)
  for e in value.`footPose`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsFootPoseWithVision*(r: var Reader): Ros1Kuavo_msgsFootPoseWithVision =
  result = initRos1Kuavo_msgsFootPoseWithVision()
  result.`footPoseId` = getInteger(r,int32)
  result.`footIndexTrajectory` = getInteger(r,int32)
  let count2 = 4
  for i in 0..<count2:
    result.`footPose`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsFootPoseWithVision): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPoseWithVision*(b: seq[byte]): Ros1Kuavo_msgsFootPoseWithVision =
  var r = initReader(b,40)
  result = readRos1Kuavo_msgsFootPoseWithVision(r)
  finish(r)
type Ros1Kuavo_msgsFootPoseWithVisionArray* = object
  `header`*: Ros1Std_msgsHeader
  `foot_poses`*: seq[Ros1Kuavo_msgsFootPoseWithVision]
const Ros1Kuavo_msgsFootPoseWithVisionArrayMaximumWireBytes* = 596
const Ros1Kuavo_msgsFootPoseWithVisionArrayCodecIdentity* = "UWVMROS1_66daef8fffa20e968dbf2dfee706c75886a5b13cf70bd841998d2905ec755f55"
const Ros1Kuavo_msgsFootPoseWithVisionArrayNativeType* = "kuavo_msgs/footPoseWithVisionArray"
const Ros1Kuavo_msgsFootPoseWithVisionArrayNativeIdentity* = ""
proc initRos1Kuavo_msgsFootPoseWithVisionArray*(): Ros1Kuavo_msgsFootPoseWithVisionArray =
  result.`header` = initRos1Std_msgsHeader()
  result.`foot_poses` = @[]
proc writeFields*(value: Ros1Kuavo_msgsFootPoseWithVisionArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`foot_poses`.len > 8: fail(22)
  putInteger(w,uint32(value.`foot_poses`.len))
  for e in value.`foot_poses`:
    writeFields(e,w)
proc readRos1Kuavo_msgsFootPoseWithVisionArray*(r: var Reader): Ros1Kuavo_msgsFootPoseWithVisionArray =
  result = initRos1Kuavo_msgsFootPoseWithVisionArray()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`foot_poses` = newSeq[Ros1Kuavo_msgsFootPoseWithVision](count1)
  for i in 0..<count1:
    result.`foot_poses`[i] = readRos1Kuavo_msgsFootPoseWithVision(r)
proc encode*(value: Ros1Kuavo_msgsFootPoseWithVisionArray): seq[byte] =
  var w = initWriter(596)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFootPoseWithVisionArray*(b: seq[byte]): Ros1Kuavo_msgsFootPoseWithVisionArray =
  var r = initReader(b,596)
  result = readRos1Kuavo_msgsFootPoseWithVisionArray(r)
  finish(r)
type Ros1Kuavo_msgsQv* = object
  `value`*: seq[float64]
const Ros1Kuavo_msgsQvMaximumWireBytes* = 132
const Ros1Kuavo_msgsQvCodecIdentity* = "UWVMROS1_333522100ae5fd407bcd41b20b8062e9b0d45c2e9046b9bbfd8be2d896f40832"
const Ros1Kuavo_msgsQvNativeType* = "kuavo_msgs/qv"
const Ros1Kuavo_msgsQvNativeIdentity* = ""
proc initRos1Kuavo_msgsQv*(): Ros1Kuavo_msgsQv =
  result.`value` = @[]
proc writeFields*(value: Ros1Kuavo_msgsQv; w: var Writer) =
  if value.`value`.len > 16: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsQv*(r: var Reader): Ros1Kuavo_msgsQv =
  result = initRos1Kuavo_msgsQv()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`value` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`value`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsQv): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsQv*(b: seq[byte]): Ros1Kuavo_msgsQv =
  var r = initReader(b,132)
  result = readRos1Kuavo_msgsQv(r)
  finish(r)
type Ros1Kuavo_msgsFullBodyTargetTrajectories* = object
  `timeTrajectory`*: seq[float64]
  `footIndexTrajectory`*: seq[int32]
  `fullBodyQTrajectory`*: seq[Ros1Kuavo_msgsQv]
  `fullBodyVTrajectory`*: seq[Ros1Kuavo_msgsQv]
const Ros1Kuavo_msgsFullBodyTargetTrajectoriesMaximumWireBytes* = 2320
const Ros1Kuavo_msgsFullBodyTargetTrajectoriesCodecIdentity* = "UWVMROS1_b25544601584e8fcb8d4f86bfa88497ef92fda02556c95f4a00cfba95ef3733d"
const Ros1Kuavo_msgsFullBodyTargetTrajectoriesNativeType* = "kuavo_msgs/fullBodyTargetTrajectories"
const Ros1Kuavo_msgsFullBodyTargetTrajectoriesNativeIdentity* = ""
proc initRos1Kuavo_msgsFullBodyTargetTrajectories*(): Ros1Kuavo_msgsFullBodyTargetTrajectories =
  result.`timeTrajectory` = @[]
  result.`footIndexTrajectory` = @[]
  result.`fullBodyQTrajectory` = @[]
  result.`fullBodyVTrajectory` = @[]
proc writeFields*(value: Ros1Kuavo_msgsFullBodyTargetTrajectories; w: var Writer) =
  if value.`timeTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`timeTrajectory`.len))
  for e in value.`timeTrajectory`:
    putFloat64(w,e)
  if value.`footIndexTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`footIndexTrajectory`.len))
  for e in value.`footIndexTrajectory`:
    putInteger(w,e)
  if value.`fullBodyQTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`fullBodyQTrajectory`.len))
  for e in value.`fullBodyQTrajectory`:
    writeFields(e,w)
  if value.`fullBodyVTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`fullBodyVTrajectory`.len))
  for e in value.`fullBodyVTrajectory`:
    writeFields(e,w)
proc readRos1Kuavo_msgsFullBodyTargetTrajectories*(r: var Reader): Ros1Kuavo_msgsFullBodyTargetTrajectories =
  result = initRos1Kuavo_msgsFullBodyTargetTrajectories()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`timeTrajectory` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`timeTrajectory`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`footIndexTrajectory` = newSeq[int32](count1)
  for i in 0..<count1:
    result.`footIndexTrajectory`[i] = getInteger(r,int32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`fullBodyQTrajectory` = newSeq[Ros1Kuavo_msgsQv](count2)
  for i in 0..<count2:
    result.`fullBodyQTrajectory`[i] = readRos1Kuavo_msgsQv(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`fullBodyVTrajectory` = newSeq[Ros1Kuavo_msgsQv](count3)
  for i in 0..<count3:
    result.`fullBodyVTrajectory`[i] = readRos1Kuavo_msgsQv(r)
proc encode*(value: Ros1Kuavo_msgsFullBodyTargetTrajectories): seq[byte] =
  var w = initWriter(2320)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsFullBodyTargetTrajectories*(b: seq[byte]): Ros1Kuavo_msgsFullBodyTargetTrajectories =
  var r = initReader(b,2320)
  result = readRos1Kuavo_msgsFullBodyTargetTrajectories(r)
  finish(r)
type Ros1Kuavo_msgsGaitTimeName* = object
  `start_time`*: float32
  `gait_name`*: string
const Ros1Kuavo_msgsGaitTimeNameMaximumWireBytes* = 264
const Ros1Kuavo_msgsGaitTimeNameCodecIdentity* = "UWVMROS1_92e83b38d53d19dfe6c868ee4aec76f92cf1a6d05f22c67f3507b0db45cc9a20"
const Ros1Kuavo_msgsGaitTimeNameNativeType* = "kuavo_msgs/gaitTimeName"
const Ros1Kuavo_msgsGaitTimeNameNativeIdentity* = ""
proc initRos1Kuavo_msgsGaitTimeName*(): Ros1Kuavo_msgsGaitTimeName =
  result.`start_time` = 0
  result.`gait_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsGaitTimeName; w: var Writer) =
  putFloat32(w,value.`start_time`)
  putString(w,value.`gait_name`,256)
proc readRos1Kuavo_msgsGaitTimeName*(r: var Reader): Ros1Kuavo_msgsGaitTimeName =
  result = initRos1Kuavo_msgsGaitTimeName()
  result.`start_time` = getFloat32(r)
  result.`gait_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGaitTimeName): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGaitTimeName*(b: seq[byte]): Ros1Kuavo_msgsGaitTimeName =
  var r = initReader(b,264)
  result = readRos1Kuavo_msgsGaitTimeName(r)
  finish(r)
type Ros1Kuavo_msgsGestureTask* = object
  `gesture_name`*: string
  `hand_side`*: int8
const Ros1Kuavo_msgsGestureTaskMaximumWireBytes* = 261
const Ros1Kuavo_msgsGestureTaskCodecIdentity* = "UWVMROS1_22aea7a0452228df6e91828fedb88b27a7e029b8e876f022caa7e01f86bef21d"
const Ros1Kuavo_msgsGestureTaskNativeType* = "kuavo_msgs/gestureTask"
const Ros1Kuavo_msgsGestureTaskNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureTask*(): Ros1Kuavo_msgsGestureTask =
  result.`gesture_name` = ""
  result.`hand_side` = 0
proc writeFields*(value: Ros1Kuavo_msgsGestureTask; w: var Writer) =
  putString(w,value.`gesture_name`,256)
  putInteger(w,value.`hand_side`)
proc readRos1Kuavo_msgsGestureTask*(r: var Reader): Ros1Kuavo_msgsGestureTask =
  result = initRos1Kuavo_msgsGestureTask()
  result.`gesture_name` = getString(r,256)
  result.`hand_side` = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsGestureTask): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureTask*(b: seq[byte]): Ros1Kuavo_msgsGestureTask =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsGestureTask(r)
  finish(r)
type Ros1Kuavo_msgsGestureExecuteRequest* = object
  `gestures`*: seq[Ros1Kuavo_msgsGestureTask]
const Ros1Kuavo_msgsGestureExecuteRequestMaximumWireBytes* = 2092
const Ros1Kuavo_msgsGestureExecuteRequestCodecIdentity* = "UWVMROS1_4fbfe488b871889a565e7d2c2dfedfe7b03900306b4c3f12b650440e3ebc3161"
const Ros1Kuavo_msgsGestureExecuteRequestNativeType* = "kuavo_msgs/gestureExecuteRequest"
const Ros1Kuavo_msgsGestureExecuteRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureExecuteRequest*(): Ros1Kuavo_msgsGestureExecuteRequest =
  result.`gestures` = @[]
proc writeFields*(value: Ros1Kuavo_msgsGestureExecuteRequest; w: var Writer) =
  if value.`gestures`.len > 8: fail(22)
  putInteger(w,uint32(value.`gestures`.len))
  for e in value.`gestures`:
    writeFields(e,w)
proc readRos1Kuavo_msgsGestureExecuteRequest*(r: var Reader): Ros1Kuavo_msgsGestureExecuteRequest =
  result = initRos1Kuavo_msgsGestureExecuteRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`gestures` = newSeq[Ros1Kuavo_msgsGestureTask](count0)
  for i in 0..<count0:
    result.`gestures`[i] = readRos1Kuavo_msgsGestureTask(r)
proc encode*(value: Ros1Kuavo_msgsGestureExecuteRequest): seq[byte] =
  var w = initWriter(2092)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureExecuteRequest*(b: seq[byte]): Ros1Kuavo_msgsGestureExecuteRequest =
  var r = initReader(b,2092)
  result = readRos1Kuavo_msgsGestureExecuteRequest(r)
  finish(r)
type Ros1Kuavo_msgsGestureExecuteResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsGestureExecuteResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsGestureExecuteResponseCodecIdentity* = "UWVMROS1_5cb5f5ecc381aac940d267ba0c8db14e41f220c9f0e4332e2166bc8689e6353a"
const Ros1Kuavo_msgsGestureExecuteResponseNativeType* = "kuavo_msgs/gestureExecuteResponse"
const Ros1Kuavo_msgsGestureExecuteResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureExecuteResponse*(): Ros1Kuavo_msgsGestureExecuteResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsGestureExecuteResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsGestureExecuteResponse*(r: var Reader): Ros1Kuavo_msgsGestureExecuteResponse =
  result = initRos1Kuavo_msgsGestureExecuteResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGestureExecuteResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureExecuteResponse*(b: seq[byte]): Ros1Kuavo_msgsGestureExecuteResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsGestureExecuteResponse(r)
  finish(r)
type Ros1Kuavo_msgsGestureExecuteStateRequest* = object
const Ros1Kuavo_msgsGestureExecuteStateRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGestureExecuteStateRequestCodecIdentity* = "UWVMROS1_f4854bf91552e06f187d5360b274ca67b7f33e7c3a6bb32b1c1c3c3cdd94acc1"
const Ros1Kuavo_msgsGestureExecuteStateRequestNativeType* = "kuavo_msgs/gestureExecuteStateRequest"
const Ros1Kuavo_msgsGestureExecuteStateRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureExecuteStateRequest*(): Ros1Kuavo_msgsGestureExecuteStateRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGestureExecuteStateRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGestureExecuteStateRequest*(r: var Reader): Ros1Kuavo_msgsGestureExecuteStateRequest =
  result = initRos1Kuavo_msgsGestureExecuteStateRequest()
proc encode*(value: Ros1Kuavo_msgsGestureExecuteStateRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureExecuteStateRequest*(b: seq[byte]): Ros1Kuavo_msgsGestureExecuteStateRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGestureExecuteStateRequest(r)
  finish(r)
type Ros1Kuavo_msgsGestureExecuteStateResponse* = object
  `is_executing`*: bool
  `message`*: string
const Ros1Kuavo_msgsGestureExecuteStateResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsGestureExecuteStateResponseCodecIdentity* = "UWVMROS1_99a396bb215e1c881e9b48cc4f9b4faf0d27c4984c30a9d1a2812cf2cfed3129"
const Ros1Kuavo_msgsGestureExecuteStateResponseNativeType* = "kuavo_msgs/gestureExecuteStateResponse"
const Ros1Kuavo_msgsGestureExecuteStateResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureExecuteStateResponse*(): Ros1Kuavo_msgsGestureExecuteStateResponse =
  result.`is_executing` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsGestureExecuteStateResponse; w: var Writer) =
  putBool(w,value.`is_executing`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsGestureExecuteStateResponse*(r: var Reader): Ros1Kuavo_msgsGestureExecuteStateResponse =
  result = initRos1Kuavo_msgsGestureExecuteStateResponse()
  result.`is_executing` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGestureExecuteStateResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureExecuteStateResponse*(b: seq[byte]): Ros1Kuavo_msgsGestureExecuteStateResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsGestureExecuteStateResponse(r)
  finish(r)
type Ros1Kuavo_msgsGestureInfo* = object
  `gesture_name`*: string
  `alias`*: seq[string]
  `description`*: string
const Ros1Kuavo_msgsGestureInfoMaximumWireBytes* = 1612
const Ros1Kuavo_msgsGestureInfoCodecIdentity* = "UWVMROS1_cba208289035abede579134d09ac028f8c46af5ffb48a8de8d7e51923ff7e2cf"
const Ros1Kuavo_msgsGestureInfoNativeType* = "kuavo_msgs/gestureInfo"
const Ros1Kuavo_msgsGestureInfoNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureInfo*(): Ros1Kuavo_msgsGestureInfo =
  result.`gesture_name` = ""
  result.`alias` = @[]
  result.`description` = ""
proc writeFields*(value: Ros1Kuavo_msgsGestureInfo; w: var Writer) =
  putString(w,value.`gesture_name`,256)
  if value.`alias`.len > 16: fail(22)
  putInteger(w,uint32(value.`alias`.len))
  for e in value.`alias`:
    putString(w,e,64)
  putString(w,value.`description`,256)
proc readRos1Kuavo_msgsGestureInfo*(r: var Reader): Ros1Kuavo_msgsGestureInfo =
  result = initRos1Kuavo_msgsGestureInfo()
  result.`gesture_name` = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`alias` = newSeq[string](count1)
  for i in 0..<count1:
    result.`alias`[i] = getString(r,64)
  result.`description` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGestureInfo): seq[byte] =
  var w = initWriter(1612)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureInfo*(b: seq[byte]): Ros1Kuavo_msgsGestureInfo =
  var r = initReader(b,1612)
  result = readRos1Kuavo_msgsGestureInfo(r)
  finish(r)
type Ros1Kuavo_msgsGestureListRequest* = object
const Ros1Kuavo_msgsGestureListRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGestureListRequestCodecIdentity* = "UWVMROS1_06ed0bf9e126c09fe308c390e1fab2a44482d0e4e9ace631b23e5803edb4f64e"
const Ros1Kuavo_msgsGestureListRequestNativeType* = "kuavo_msgs/gestureListRequest"
const Ros1Kuavo_msgsGestureListRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureListRequest*(): Ros1Kuavo_msgsGestureListRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGestureListRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGestureListRequest*(r: var Reader): Ros1Kuavo_msgsGestureListRequest =
  result = initRos1Kuavo_msgsGestureListRequest()
proc encode*(value: Ros1Kuavo_msgsGestureListRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureListRequest*(b: seq[byte]): Ros1Kuavo_msgsGestureListRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGestureListRequest(r)
  finish(r)
type Ros1Kuavo_msgsGestureListResponse* = object
  `success`*: bool
  `gesture_count`*: int32
  `message`*: string
  `gesture_infos`*: seq[Ros1Kuavo_msgsGestureInfo]
const Ros1Kuavo_msgsGestureListResponseMaximumWireBytes* = 13165
const Ros1Kuavo_msgsGestureListResponseCodecIdentity* = "UWVMROS1_b6abc5725fe654f6016fbfcd1c879310435d0da67669a4d3c2e7c1dfbe570e78"
const Ros1Kuavo_msgsGestureListResponseNativeType* = "kuavo_msgs/gestureListResponse"
const Ros1Kuavo_msgsGestureListResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGestureListResponse*(): Ros1Kuavo_msgsGestureListResponse =
  result.`success` = false
  result.`gesture_count` = 0
  result.`message` = ""
  result.`gesture_infos` = @[]
proc writeFields*(value: Ros1Kuavo_msgsGestureListResponse; w: var Writer) =
  putBool(w,value.`success`)
  putInteger(w,value.`gesture_count`)
  putString(w,value.`message`,256)
  if value.`gesture_infos`.len > 8: fail(22)
  putInteger(w,uint32(value.`gesture_infos`.len))
  for e in value.`gesture_infos`:
    writeFields(e,w)
proc readRos1Kuavo_msgsGestureListResponse*(r: var Reader): Ros1Kuavo_msgsGestureListResponse =
  result = initRos1Kuavo_msgsGestureListResponse()
  result.`success` = getBool(r)
  result.`gesture_count` = getInteger(r,int32)
  result.`message` = getString(r,256)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`gesture_infos` = newSeq[Ros1Kuavo_msgsGestureInfo](count3)
  for i in 0..<count3:
    result.`gesture_infos`[i] = readRos1Kuavo_msgsGestureInfo(r)
proc encode*(value: Ros1Kuavo_msgsGestureListResponse): seq[byte] =
  var w = initWriter(13165)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGestureListResponse*(b: seq[byte]): Ros1Kuavo_msgsGestureListResponse =
  var r = initReader(b,13165)
  result = readRos1Kuavo_msgsGestureListResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetControllerListRequest* = object
const Ros1Kuavo_msgsGetControllerListRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetControllerListRequestCodecIdentity* = "UWVMROS1_3fe0e43ef20599c80ccd663069f573fcfd17f26f063dc43e7949f3d14f50175b"
const Ros1Kuavo_msgsGetControllerListRequestNativeType* = "kuavo_msgs/getControllerListRequest"
const Ros1Kuavo_msgsGetControllerListRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetControllerListRequest*(): Ros1Kuavo_msgsGetControllerListRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetControllerListRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetControllerListRequest*(r: var Reader): Ros1Kuavo_msgsGetControllerListRequest =
  result = initRos1Kuavo_msgsGetControllerListRequest()
proc encode*(value: Ros1Kuavo_msgsGetControllerListRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetControllerListRequest*(b: seq[byte]): Ros1Kuavo_msgsGetControllerListRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetControllerListRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetControllerListResponse* = object
  `controller_names`*: seq[string]
  `count`*: int32
  `current_index`*: int32
  `current_controller`*: string
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsGetControllerListResponseMaximumWireBytes* = 4693
const Ros1Kuavo_msgsGetControllerListResponseCodecIdentity* = "UWVMROS1_2ac6aa5380f13cd2fa02bfdf609cf1fc10b821c90c115e8c2a4d31db3959b7d2"
const Ros1Kuavo_msgsGetControllerListResponseNativeType* = "kuavo_msgs/getControllerListResponse"
const Ros1Kuavo_msgsGetControllerListResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetControllerListResponse*(): Ros1Kuavo_msgsGetControllerListResponse =
  result.`controller_names` = @[]
  result.`count` = 0
  result.`current_index` = 0
  result.`current_controller` = ""
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsGetControllerListResponse; w: var Writer) =
  if value.`controller_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`controller_names`.len))
  for e in value.`controller_names`:
    putString(w,e,256)
  putInteger(w,value.`count`)
  putInteger(w,value.`current_index`)
  putString(w,value.`current_controller`,256)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsGetControllerListResponse*(r: var Reader): Ros1Kuavo_msgsGetControllerListResponse =
  result = initRos1Kuavo_msgsGetControllerListResponse()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`controller_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`controller_names`[i] = getString(r,256)
  result.`count` = getInteger(r,int32)
  result.`current_index` = getInteger(r,int32)
  result.`current_controller` = getString(r,256)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGetControllerListResponse): seq[byte] =
  var w = initWriter(4693)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetControllerListResponse*(b: seq[byte]): Ros1Kuavo_msgsGetControllerListResponse =
  var r = initReader(b,4693)
  result = readRos1Kuavo_msgsGetControllerListResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetCurrentGaitNameRequest* = object
const Ros1Kuavo_msgsGetCurrentGaitNameRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetCurrentGaitNameRequestCodecIdentity* = "UWVMROS1_99c98cfd19410a4c98971ab6ec9309bc7791eb6a539506a82ad73cecca630099"
const Ros1Kuavo_msgsGetCurrentGaitNameRequestNativeType* = "kuavo_msgs/getCurrentGaitNameRequest"
const Ros1Kuavo_msgsGetCurrentGaitNameRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetCurrentGaitNameRequest*(): Ros1Kuavo_msgsGetCurrentGaitNameRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetCurrentGaitNameRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetCurrentGaitNameRequest*(r: var Reader): Ros1Kuavo_msgsGetCurrentGaitNameRequest =
  result = initRos1Kuavo_msgsGetCurrentGaitNameRequest()
proc encode*(value: Ros1Kuavo_msgsGetCurrentGaitNameRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetCurrentGaitNameRequest*(b: seq[byte]): Ros1Kuavo_msgsGetCurrentGaitNameRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetCurrentGaitNameRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetCurrentGaitNameResponse* = object
  `success`*: bool
  `gait_name`*: string
const Ros1Kuavo_msgsGetCurrentGaitNameResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsGetCurrentGaitNameResponseCodecIdentity* = "UWVMROS1_236aa41df3942d1866e3e4be54a4d76ef8eea5648a7f56a44cb970f46bd43d58"
const Ros1Kuavo_msgsGetCurrentGaitNameResponseNativeType* = "kuavo_msgs/getCurrentGaitNameResponse"
const Ros1Kuavo_msgsGetCurrentGaitNameResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetCurrentGaitNameResponse*(): Ros1Kuavo_msgsGetCurrentGaitNameResponse =
  result.`success` = false
  result.`gait_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsGetCurrentGaitNameResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`gait_name`,256)
proc readRos1Kuavo_msgsGetCurrentGaitNameResponse*(r: var Reader): Ros1Kuavo_msgsGetCurrentGaitNameResponse =
  result = initRos1Kuavo_msgsGetCurrentGaitNameResponse()
  result.`success` = getBool(r)
  result.`gait_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGetCurrentGaitNameResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetCurrentGaitNameResponse*(b: seq[byte]): Ros1Kuavo_msgsGetCurrentGaitNameResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsGetCurrentGaitNameResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest* = object
  `isNeed`*: bool
const Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestMaximumWireBytes* = 1
const Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodecIdentity* = "UWVMROS1_ac42d9ece2adbf0dcf74b65a00a7890fe67c1ad757ac236f7a35f055614c15f0"
const Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestNativeType* = "kuavo_msgs/getLbTorsoInitialPoseRequest"
const Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetLbTorsoInitialPoseRequest*(): Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest =
  result.`isNeed` = false
proc writeFields*(value: Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest; w: var Writer) =
  putBool(w,value.`isNeed`)
proc readRos1Kuavo_msgsGetLbTorsoInitialPoseRequest*(r: var Reader): Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest =
  result = initRos1Kuavo_msgsGetLbTorsoInitialPoseRequest()
  result.`isNeed` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetLbTorsoInitialPoseRequest*(b: seq[byte]): Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsGetLbTorsoInitialPoseRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse* = object
  `result`*: bool
  `message`*: string
  `linear`*: Ros1Geometry_msgsVector3
  `angular`*: Ros1Geometry_msgsVector3
const Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseMaximumWireBytes* = 309
const Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodecIdentity* = "UWVMROS1_ad14eef4f0317181b2d2477548a7aac0ce71ac12f76d824b8814e50c5de8daaa"
const Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseNativeType* = "kuavo_msgs/getLbTorsoInitialPoseResponse"
const Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetLbTorsoInitialPoseResponse*(): Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse =
  result.`result` = false
  result.`message` = ""
  result.`linear` = initRos1Geometry_msgsVector3()
  result.`angular` = initRos1Geometry_msgsVector3()
proc writeFields*(value: Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse; w: var Writer) =
  putBool(w,value.`result`)
  putString(w,value.`message`,256)
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
proc readRos1Kuavo_msgsGetLbTorsoInitialPoseResponse*(r: var Reader): Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse =
  result = initRos1Kuavo_msgsGetLbTorsoInitialPoseResponse()
  result.`result` = getBool(r)
  result.`message` = getString(r,256)
  result.`linear` = readRos1Geometry_msgsVector3(r)
  result.`angular` = readRos1Geometry_msgsVector3(r)
proc encode*(value: Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse): seq[byte] =
  var w = initWriter(309)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse*(b: seq[byte]): Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse =
  var r = initReader(b,309)
  result = readRos1Kuavo_msgsGetLbTorsoInitialPoseResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetMotorParamRequest* = object
const Ros1Kuavo_msgsGetMotorParamRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetMotorParamRequestCodecIdentity* = "UWVMROS1_2fcfb1ba499395e8f91e9e222ff3b967715be0d39846fa9a82fa640cbfc5705a"
const Ros1Kuavo_msgsGetMotorParamRequestNativeType* = "kuavo_msgs/getMotorParamRequest"
const Ros1Kuavo_msgsGetMotorParamRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetMotorParamRequest*(): Ros1Kuavo_msgsGetMotorParamRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetMotorParamRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetMotorParamRequest*(r: var Reader): Ros1Kuavo_msgsGetMotorParamRequest =
  result = initRos1Kuavo_msgsGetMotorParamRequest()
proc encode*(value: Ros1Kuavo_msgsGetMotorParamRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetMotorParamRequest*(b: seq[byte]): Ros1Kuavo_msgsGetMotorParamRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetMotorParamRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetMotorParamResponse* = object
  `success`*: bool
  `message`*: string
  `data`*: seq[Ros1Kuavo_msgsMotorParam]
const Ros1Kuavo_msgsGetMotorParamResponseMaximumWireBytes* = 345
const Ros1Kuavo_msgsGetMotorParamResponseCodecIdentity* = "UWVMROS1_63c79b06a964d504cf53db65481fd01ef568641075aaa5278af243fe5e50ae01"
const Ros1Kuavo_msgsGetMotorParamResponseNativeType* = "kuavo_msgs/getMotorParamResponse"
const Ros1Kuavo_msgsGetMotorParamResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetMotorParamResponse*(): Ros1Kuavo_msgsGetMotorParamResponse =
  result.`success` = false
  result.`message` = ""
  result.`data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsGetMotorParamResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  if value.`data`.len > 8: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos1Kuavo_msgsGetMotorParamResponse*(r: var Reader): Ros1Kuavo_msgsGetMotorParamResponse =
  result = initRos1Kuavo_msgsGetMotorParamResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`data` = newSeq[Ros1Kuavo_msgsMotorParam](count2)
  for i in 0..<count2:
    result.`data`[i] = readRos1Kuavo_msgsMotorParam(r)
proc encode*(value: Ros1Kuavo_msgsGetMotorParamResponse): seq[byte] =
  var w = initWriter(345)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetMotorParamResponse*(b: seq[byte]): Ros1Kuavo_msgsGetMotorParamResponse =
  var r = initReader(b,345)
  result = readRos1Kuavo_msgsGetMotorParamResponse(r)
  finish(r)
type Ros1Kuavo_msgsGetMotorZeroPointsRequest* = object
const Ros1Kuavo_msgsGetMotorZeroPointsRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsGetMotorZeroPointsRequestCodecIdentity* = "UWVMROS1_50c631bf3fe8bc8cad2438e235c57752fe8a041985fcd5a4a40b65b9cc847c6a"
const Ros1Kuavo_msgsGetMotorZeroPointsRequestNativeType* = "kuavo_msgs/getMotorZeroPointsRequest"
const Ros1Kuavo_msgsGetMotorZeroPointsRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGetMotorZeroPointsRequest*(): Ros1Kuavo_msgsGetMotorZeroPointsRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsGetMotorZeroPointsRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsGetMotorZeroPointsRequest*(r: var Reader): Ros1Kuavo_msgsGetMotorZeroPointsRequest =
  result = initRos1Kuavo_msgsGetMotorZeroPointsRequest()
proc encode*(value: Ros1Kuavo_msgsGetMotorZeroPointsRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetMotorZeroPointsRequest*(b: seq[byte]): Ros1Kuavo_msgsGetMotorZeroPointsRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsGetMotorZeroPointsRequest(r)
  finish(r)
type Ros1Kuavo_msgsGetMotorZeroPointsResponse* = object
  `success`*: bool
  `message`*: string
  `zero_points`*: seq[float64]
const Ros1Kuavo_msgsGetMotorZeroPointsResponseMaximumWireBytes* = 393
const Ros1Kuavo_msgsGetMotorZeroPointsResponseCodecIdentity* = "UWVMROS1_a8cd5aa6e83a994d12c82a811d2d98de575261b969b10a63161748f83f7cc8c3"
const Ros1Kuavo_msgsGetMotorZeroPointsResponseNativeType* = "kuavo_msgs/getMotorZeroPointsResponse"
const Ros1Kuavo_msgsGetMotorZeroPointsResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGetMotorZeroPointsResponse*(): Ros1Kuavo_msgsGetMotorZeroPointsResponse =
  result.`success` = false
  result.`message` = ""
  result.`zero_points` = @[]
proc writeFields*(value: Ros1Kuavo_msgsGetMotorZeroPointsResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  if value.`zero_points`.len > 16: fail(22)
  putInteger(w,uint32(value.`zero_points`.len))
  for e in value.`zero_points`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsGetMotorZeroPointsResponse*(r: var Reader): Ros1Kuavo_msgsGetMotorZeroPointsResponse =
  result = initRos1Kuavo_msgsGetMotorZeroPointsResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`zero_points` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`zero_points`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsGetMotorZeroPointsResponse): seq[byte] =
  var w = initWriter(393)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGetMotorZeroPointsResponse*(b: seq[byte]): Ros1Kuavo_msgsGetMotorZeroPointsResponse =
  var r = initReader(b,393)
  result = readRos1Kuavo_msgsGetMotorZeroPointsResponse(r)
  finish(r)
type Ros1Kuavo_msgsGoToZeroPointRequest* = object
  `offset`*: seq[float64]
const Ros1Kuavo_msgsGoToZeroPointRequestMaximumWireBytes* = 132
const Ros1Kuavo_msgsGoToZeroPointRequestCodecIdentity* = "UWVMROS1_297388368bf80461a3fa7ec24cb8c8612dc87c0d371c37a8c2c94f61ebd1f585"
const Ros1Kuavo_msgsGoToZeroPointRequestNativeType* = "kuavo_msgs/goToZeroPointRequest"
const Ros1Kuavo_msgsGoToZeroPointRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsGoToZeroPointRequest*(): Ros1Kuavo_msgsGoToZeroPointRequest =
  result.`offset` = @[]
proc writeFields*(value: Ros1Kuavo_msgsGoToZeroPointRequest; w: var Writer) =
  if value.`offset`.len > 16: fail(22)
  putInteger(w,uint32(value.`offset`.len))
  for e in value.`offset`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsGoToZeroPointRequest*(r: var Reader): Ros1Kuavo_msgsGoToZeroPointRequest =
  result = initRos1Kuavo_msgsGoToZeroPointRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`offset` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`offset`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsGoToZeroPointRequest): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGoToZeroPointRequest*(b: seq[byte]): Ros1Kuavo_msgsGoToZeroPointRequest =
  var r = initReader(b,132)
  result = readRos1Kuavo_msgsGoToZeroPointRequest(r)
  finish(r)
type Ros1Kuavo_msgsGoToZeroPointResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsGoToZeroPointResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsGoToZeroPointResponseCodecIdentity* = "UWVMROS1_c288008718185fce79b7f7e3b10a4ce464f0071dc3fcd172adf0b46867a4928a"
const Ros1Kuavo_msgsGoToZeroPointResponseNativeType* = "kuavo_msgs/goToZeroPointResponse"
const Ros1Kuavo_msgsGoToZeroPointResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsGoToZeroPointResponse*(): Ros1Kuavo_msgsGoToZeroPointResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsGoToZeroPointResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsGoToZeroPointResponse*(r: var Reader): Ros1Kuavo_msgsGoToZeroPointResponse =
  result = initRos1Kuavo_msgsGoToZeroPointResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsGoToZeroPointResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsGoToZeroPointResponse*(b: seq[byte]): Ros1Kuavo_msgsGoToZeroPointResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsGoToZeroPointResponse(r)
  finish(r)
type Ros1Kuavo_msgsHandForceLevelRequest* = object
  `force_level`*: int8
  `hand_side`*: int8
const Ros1Kuavo_msgsHandForceLevelRequestMaximumWireBytes* = 2
const Ros1Kuavo_msgsHandForceLevelRequestCodecIdentity* = "UWVMROS1_230b77fee2f8106d7474b3efd9519482be35ffb7cba8c6b0ea0efefe20cef79c"
const Ros1Kuavo_msgsHandForceLevelRequestNativeType* = "kuavo_msgs/handForceLevelRequest"
const Ros1Kuavo_msgsHandForceLevelRequestNativeIdentity* = ""
const Ros1Kuavo_msgsHandForceLevelRequest_SMALL*: int8 = 0'i8
const Ros1Kuavo_msgsHandForceLevelRequest_NORMAL*: int8 = 1'i8
const Ros1Kuavo_msgsHandForceLevelRequest_FULL*: int8 = 2'i8
const Ros1Kuavo_msgsHandForceLevelRequest_LEFT_HAND*: int8 = 0'i8
const Ros1Kuavo_msgsHandForceLevelRequest_RIGHT_HAND*: int8 = 1'i8
const Ros1Kuavo_msgsHandForceLevelRequest_BOTH_HANDS*: int8 = 2'i8
proc initRos1Kuavo_msgsHandForceLevelRequest*(): Ros1Kuavo_msgsHandForceLevelRequest =
  result.`force_level` = 0
  result.`hand_side` = 0
proc writeFields*(value: Ros1Kuavo_msgsHandForceLevelRequest; w: var Writer) =
  putInteger(w,value.`force_level`)
  putInteger(w,value.`hand_side`)
proc readRos1Kuavo_msgsHandForceLevelRequest*(r: var Reader): Ros1Kuavo_msgsHandForceLevelRequest =
  result = initRos1Kuavo_msgsHandForceLevelRequest()
  result.`force_level` = getInteger(r,int8)
  result.`hand_side` = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsHandForceLevelRequest): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsHandForceLevelRequest*(b: seq[byte]): Ros1Kuavo_msgsHandForceLevelRequest =
  var r = initReader(b,2)
  result = readRos1Kuavo_msgsHandForceLevelRequest(r)
  finish(r)
type Ros1Kuavo_msgsHandForceLevelResponse* = object
  `success`*: bool
  `message`*: string
  `force_level`*: seq[int8]
const Ros1Kuavo_msgsHandForceLevelResponseMaximumWireBytes* = 281
const Ros1Kuavo_msgsHandForceLevelResponseCodecIdentity* = "UWVMROS1_75742d57c45498fc5127874d3da0821c801b50825687d80089d5c25a58e5a8bd"
const Ros1Kuavo_msgsHandForceLevelResponseNativeType* = "kuavo_msgs/handForceLevelResponse"
const Ros1Kuavo_msgsHandForceLevelResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsHandForceLevelResponse*(): Ros1Kuavo_msgsHandForceLevelResponse =
  result.`success` = false
  result.`message` = ""
  result.`force_level` = @[]
proc writeFields*(value: Ros1Kuavo_msgsHandForceLevelResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  if value.`force_level`.len > 16: fail(22)
  putInteger(w,uint32(value.`force_level`.len))
  for e in value.`force_level`:
    putInteger(w,e)
proc readRos1Kuavo_msgsHandForceLevelResponse*(r: var Reader): Ros1Kuavo_msgsHandForceLevelResponse =
  result = initRos1Kuavo_msgsHandForceLevelResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`force_level` = newSeq[int8](count2)
  for i in 0..<count2:
    result.`force_level`[i] = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsHandForceLevelResponse): seq[byte] =
  var w = initWriter(281)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsHandForceLevelResponse*(b: seq[byte]): Ros1Kuavo_msgsHandForceLevelResponse =
  var r = initReader(b,281)
  result = readRos1Kuavo_msgsHandForceLevelResponse(r)
  finish(r)
type Ros1Kuavo_msgsHandPose* = object
  `x`*: float64
  `y`*: float64
  `z`*: float64
  `roll`*: float64
  `pitch`*: float64
  `yaw`*: float64
const Ros1Kuavo_msgsHandPoseMaximumWireBytes* = 48
const Ros1Kuavo_msgsHandPoseCodecIdentity* = "UWVMROS1_7242027b488c78f932598168cfaa50b9fa4f0782cbb7820121563a32456f11cc"
const Ros1Kuavo_msgsHandPoseNativeType* = "kuavo_msgs/handPose"
const Ros1Kuavo_msgsHandPoseNativeIdentity* = ""
proc initRos1Kuavo_msgsHandPose*(): Ros1Kuavo_msgsHandPose =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`roll` = 0
  result.`pitch` = 0
  result.`yaw` = 0
proc writeFields*(value: Ros1Kuavo_msgsHandPose; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`roll`)
  putFloat64(w,value.`pitch`)
  putFloat64(w,value.`yaw`)
proc readRos1Kuavo_msgsHandPose*(r: var Reader): Ros1Kuavo_msgsHandPose =
  result = initRos1Kuavo_msgsHandPose()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`roll` = getFloat64(r)
  result.`pitch` = getFloat64(r)
  result.`yaw` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsHandPose): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsHandPose*(b: seq[byte]): Ros1Kuavo_msgsHandPose =
  var r = initReader(b,48)
  result = readRos1Kuavo_msgsHandPose(r)
  finish(r)
type Ros1Kuavo_msgsHeadBodyPose* = object
  `head_pitch`*: float64
  `head_yaw`*: float64
  `body_roll`*: float64
  `body_pitch`*: float64
  `body_yaw`*: float64
  `body_x`*: float64
  `body_y`*: float64
  `body_height`*: float64
const Ros1Kuavo_msgsHeadBodyPoseMaximumWireBytes* = 64
const Ros1Kuavo_msgsHeadBodyPoseCodecIdentity* = "UWVMROS1_1cd38534a6dc7c226800759b1635db044c60a0976c31a00189a98da82562f639"
const Ros1Kuavo_msgsHeadBodyPoseNativeType* = "kuavo_msgs/headBodyPose"
const Ros1Kuavo_msgsHeadBodyPoseNativeIdentity* = ""
proc initRos1Kuavo_msgsHeadBodyPose*(): Ros1Kuavo_msgsHeadBodyPose =
  result.`head_pitch` = 0
  result.`head_yaw` = 0
  result.`body_roll` = 0
  result.`body_pitch` = 0
  result.`body_yaw` = 0
  result.`body_x` = 0
  result.`body_y` = 0
  result.`body_height` = 0
proc writeFields*(value: Ros1Kuavo_msgsHeadBodyPose; w: var Writer) =
  putFloat64(w,value.`head_pitch`)
  putFloat64(w,value.`head_yaw`)
  putFloat64(w,value.`body_roll`)
  putFloat64(w,value.`body_pitch`)
  putFloat64(w,value.`body_yaw`)
  putFloat64(w,value.`body_x`)
  putFloat64(w,value.`body_y`)
  putFloat64(w,value.`body_height`)
proc readRos1Kuavo_msgsHeadBodyPose*(r: var Reader): Ros1Kuavo_msgsHeadBodyPose =
  result = initRos1Kuavo_msgsHeadBodyPose()
  result.`head_pitch` = getFloat64(r)
  result.`head_yaw` = getFloat64(r)
  result.`body_roll` = getFloat64(r)
  result.`body_pitch` = getFloat64(r)
  result.`body_yaw` = getFloat64(r)
  result.`body_x` = getFloat64(r)
  result.`body_y` = getFloat64(r)
  result.`body_height` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsHeadBodyPose): seq[byte] =
  var w = initWriter(64)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsHeadBodyPose*(b: seq[byte]): Ros1Kuavo_msgsHeadBodyPose =
  var r = initReader(b,64)
  result = readRos1Kuavo_msgsHeadBodyPose(r)
  finish(r)
type Ros1Kuavo_msgsHeadCtrlMode* = object
  `mode`*: string
  `fixed_main_hand`*: string
const Ros1Kuavo_msgsHeadCtrlModeMaximumWireBytes* = 520
const Ros1Kuavo_msgsHeadCtrlModeCodecIdentity* = "UWVMROS1_b2de337b9b29045a488f97f3197ffc1e6dfb2a2219cb1c371d0ffec355a8d8a2"
const Ros1Kuavo_msgsHeadCtrlModeNativeType* = "kuavo_msgs/headCtrlMode"
const Ros1Kuavo_msgsHeadCtrlModeNativeIdentity* = ""
proc initRos1Kuavo_msgsHeadCtrlMode*(): Ros1Kuavo_msgsHeadCtrlMode =
  result.`mode` = ""
  result.`fixed_main_hand` = ""
proc writeFields*(value: Ros1Kuavo_msgsHeadCtrlMode; w: var Writer) =
  putString(w,value.`mode`,256)
  putString(w,value.`fixed_main_hand`,256)
proc readRos1Kuavo_msgsHeadCtrlMode*(r: var Reader): Ros1Kuavo_msgsHeadCtrlMode =
  result = initRos1Kuavo_msgsHeadCtrlMode()
  result.`mode` = getString(r,256)
  result.`fixed_main_hand` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsHeadCtrlMode): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsHeadCtrlMode*(b: seq[byte]): Ros1Kuavo_msgsHeadCtrlMode =
  var r = initReader(b,520)
  result = readRos1Kuavo_msgsHeadCtrlMode(r)
  finish(r)
type Ros1Kuavo_msgsIkSolveError* = object
  `ik_type`*: string
  `left_pose_error`*: Ros1Kuavo_msgsHandPose
  `right_pose_error`*: Ros1Kuavo_msgsHandPose
const Ros1Kuavo_msgsIkSolveErrorMaximumWireBytes* = 356
const Ros1Kuavo_msgsIkSolveErrorCodecIdentity* = "UWVMROS1_a54e6d099bee0f41556c4601c13a9e0df9d05953ee61f7f10178ca1e872057a4"
const Ros1Kuavo_msgsIkSolveErrorNativeType* = "kuavo_msgs/ikSolveError"
const Ros1Kuavo_msgsIkSolveErrorNativeIdentity* = ""
proc initRos1Kuavo_msgsIkSolveError*(): Ros1Kuavo_msgsIkSolveError =
  result.`ik_type` = ""
  result.`left_pose_error` = initRos1Kuavo_msgsHandPose()
  result.`right_pose_error` = initRos1Kuavo_msgsHandPose()
proc writeFields*(value: Ros1Kuavo_msgsIkSolveError; w: var Writer) =
  putString(w,value.`ik_type`,256)
  writeFields(value.`left_pose_error`,w)
  writeFields(value.`right_pose_error`,w)
proc readRos1Kuavo_msgsIkSolveError*(r: var Reader): Ros1Kuavo_msgsIkSolveError =
  result = initRos1Kuavo_msgsIkSolveError()
  result.`ik_type` = getString(r,256)
  result.`left_pose_error` = readRos1Kuavo_msgsHandPose(r)
  result.`right_pose_error` = readRos1Kuavo_msgsHandPose(r)
proc encode*(value: Ros1Kuavo_msgsIkSolveError): seq[byte] =
  var w = initWriter(356)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsIkSolveError*(b: seq[byte]): Ros1Kuavo_msgsIkSolveError =
  var r = initReader(b,356)
  result = readRos1Kuavo_msgsIkSolveError(r)
  finish(r)
type Ros1Kuavo_msgsIkSolveParam* = object
  `major_optimality_tol`*: float64
  `major_feasibility_tol`*: float64
  `minor_feasibility_tol`*: float64
  `major_iterations_limit`*: float64
  `oritation_constraint_tol`*: float64
  `pos_constraint_tol`*: float64
  `pos_cost_weight`*: float64
  `constraint_mode`*: uint8
  `elbow_cost_scale`*: float64
const Ros1Kuavo_msgsIkSolveParamMaximumWireBytes* = 65
const Ros1Kuavo_msgsIkSolveParamCodecIdentity* = "UWVMROS1_74ede5ee2da9047184617c9c592f40e5d434411769e0b6380983dbca95362627"
const Ros1Kuavo_msgsIkSolveParamNativeType* = "kuavo_msgs/ikSolveParam"
const Ros1Kuavo_msgsIkSolveParamNativeIdentity* = ""
proc initRos1Kuavo_msgsIkSolveParam*(): Ros1Kuavo_msgsIkSolveParam =
  result.`major_optimality_tol` = 0
  result.`major_feasibility_tol` = 0
  result.`minor_feasibility_tol` = 0
  result.`major_iterations_limit` = 0
  result.`oritation_constraint_tol` = 0
  result.`pos_constraint_tol` = 0
  result.`pos_cost_weight` = 0
  result.`constraint_mode` = 0
  result.`elbow_cost_scale` = 0
proc writeFields*(value: Ros1Kuavo_msgsIkSolveParam; w: var Writer) =
  putFloat64(w,value.`major_optimality_tol`)
  putFloat64(w,value.`major_feasibility_tol`)
  putFloat64(w,value.`minor_feasibility_tol`)
  putFloat64(w,value.`major_iterations_limit`)
  putFloat64(w,value.`oritation_constraint_tol`)
  putFloat64(w,value.`pos_constraint_tol`)
  putFloat64(w,value.`pos_cost_weight`)
  putInteger(w,value.`constraint_mode`)
  putFloat64(w,value.`elbow_cost_scale`)
proc readRos1Kuavo_msgsIkSolveParam*(r: var Reader): Ros1Kuavo_msgsIkSolveParam =
  result = initRos1Kuavo_msgsIkSolveParam()
  result.`major_optimality_tol` = getFloat64(r)
  result.`major_feasibility_tol` = getFloat64(r)
  result.`minor_feasibility_tol` = getFloat64(r)
  result.`major_iterations_limit` = getFloat64(r)
  result.`oritation_constraint_tol` = getFloat64(r)
  result.`pos_constraint_tol` = getFloat64(r)
  result.`pos_cost_weight` = getFloat64(r)
  result.`constraint_mode` = getInteger(r,uint8)
  result.`elbow_cost_scale` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsIkSolveParam): seq[byte] =
  var w = initWriter(65)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsIkSolveParam*(b: seq[byte]): Ros1Kuavo_msgsIkSolveParam =
  var r = initReader(b,65)
  result = readRos1Kuavo_msgsIkSolveParam(r)
  finish(r)
type Ros1Kuavo_msgsImuData* = object
  `gyro`*: Ros1Geometry_msgsVector3
  `acc`*: Ros1Geometry_msgsVector3
  `free_acc`*: Ros1Geometry_msgsVector3
  `quat`*: Ros1Geometry_msgsQuaternion
const Ros1Kuavo_msgsImuDataMaximumWireBytes* = 104
const Ros1Kuavo_msgsImuDataCodecIdentity* = "UWVMROS1_22e96f18cc9d0e1149698450d21a3eedf1b985ddd6f4fe2bbac38634a3c7749c"
const Ros1Kuavo_msgsImuDataNativeType* = "kuavo_msgs/imuData"
const Ros1Kuavo_msgsImuDataNativeIdentity* = ""
proc initRos1Kuavo_msgsImuData*(): Ros1Kuavo_msgsImuData =
  result.`gyro` = initRos1Geometry_msgsVector3()
  result.`acc` = initRos1Geometry_msgsVector3()
  result.`free_acc` = initRos1Geometry_msgsVector3()
  result.`quat` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Kuavo_msgsImuData; w: var Writer) =
  writeFields(value.`gyro`,w)
  writeFields(value.`acc`,w)
  writeFields(value.`free_acc`,w)
  writeFields(value.`quat`,w)
proc readRos1Kuavo_msgsImuData*(r: var Reader): Ros1Kuavo_msgsImuData =
  result = initRos1Kuavo_msgsImuData()
  result.`gyro` = readRos1Geometry_msgsVector3(r)
  result.`acc` = readRos1Geometry_msgsVector3(r)
  result.`free_acc` = readRos1Geometry_msgsVector3(r)
  result.`quat` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Kuavo_msgsImuData): seq[byte] =
  var w = initWriter(104)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsImuData*(b: seq[byte]): Ros1Kuavo_msgsImuData =
  var r = initReader(b,104)
  result = readRos1Kuavo_msgsImuData(r)
  finish(r)
type Ros1Kuavo_msgsJointBezierTrajectory* = object
  `bezier_curve_points`*: seq[Ros1Kuavo_msgsBezierCurveCubicPoint]
const Ros1Kuavo_msgsJointBezierTrajectoryMaximumWireBytes* = 3172
const Ros1Kuavo_msgsJointBezierTrajectoryCodecIdentity* = "UWVMROS1_3718dad77c1551244538575c1c16cd7c2fa1d1e78d1f3997940d5f229c819215"
const Ros1Kuavo_msgsJointBezierTrajectoryNativeType* = "kuavo_msgs/jointBezierTrajectory"
const Ros1Kuavo_msgsJointBezierTrajectoryNativeIdentity* = ""
proc initRos1Kuavo_msgsJointBezierTrajectory*(): Ros1Kuavo_msgsJointBezierTrajectory =
  result.`bezier_curve_points` = @[]
proc writeFields*(value: Ros1Kuavo_msgsJointBezierTrajectory; w: var Writer) =
  if value.`bezier_curve_points`.len > 8: fail(22)
  putInteger(w,uint32(value.`bezier_curve_points`.len))
  for e in value.`bezier_curve_points`:
    writeFields(e,w)
proc readRos1Kuavo_msgsJointBezierTrajectory*(r: var Reader): Ros1Kuavo_msgsJointBezierTrajectory =
  result = initRos1Kuavo_msgsJointBezierTrajectory()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`bezier_curve_points` = newSeq[Ros1Kuavo_msgsBezierCurveCubicPoint](count0)
  for i in 0..<count0:
    result.`bezier_curve_points`[i] = readRos1Kuavo_msgsBezierCurveCubicPoint(r)
proc encode*(value: Ros1Kuavo_msgsJointBezierTrajectory): seq[byte] =
  var w = initWriter(3172)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsJointBezierTrajectory*(b: seq[byte]): Ros1Kuavo_msgsJointBezierTrajectory =
  var r = initReader(b,3172)
  result = readRos1Kuavo_msgsJointBezierTrajectory(r)
  finish(r)
type Ros1Kuavo_msgsJointCmd* = object
  `header`*: Ros1Std_msgsHeader
  `joint_q`*: seq[float64]
  `joint_v`*: seq[float64]
  `tau`*: seq[float64]
  `tau_max`*: seq[float64]
  `tau_ratio`*: seq[float64]
  `joint_kp`*: seq[float64]
  `joint_kd`*: seq[float64]
  `control_modes`*: seq[int32]
const Ros1Kuavo_msgsJointCmdMaximumWireBytes* = 7984
const Ros1Kuavo_msgsJointCmdCodecIdentity* = "UWVMROS1_88d1fcc2e54ee9bb36f424ca63039670a96154659d3ae9bd4a2014314277b088"
const Ros1Kuavo_msgsJointCmdNativeType* = "kuavo_msgs/jointCmd"
const Ros1Kuavo_msgsJointCmdNativeIdentity* = ""
proc initRos1Kuavo_msgsJointCmd*(): Ros1Kuavo_msgsJointCmd =
  result.`header` = initRos1Std_msgsHeader()
  result.`joint_q` = @[]
  result.`joint_v` = @[]
  result.`tau` = @[]
  result.`tau_max` = @[]
  result.`tau_ratio` = @[]
  result.`joint_kp` = @[]
  result.`joint_kd` = @[]
  result.`control_modes` = @[]
proc writeFields*(value: Ros1Kuavo_msgsJointCmd; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_q`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_q`.len))
  for e in value.`joint_q`:
    putFloat64(w,e)
  if value.`joint_v`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_v`.len))
  for e in value.`joint_v`:
    putFloat64(w,e)
  if value.`tau`.len > 128: fail(22)
  putInteger(w,uint32(value.`tau`.len))
  for e in value.`tau`:
    putFloat64(w,e)
  if value.`tau_max`.len > 128: fail(22)
  putInteger(w,uint32(value.`tau_max`.len))
  for e in value.`tau_max`:
    putFloat64(w,e)
  if value.`tau_ratio`.len > 128: fail(22)
  putInteger(w,uint32(value.`tau_ratio`.len))
  for e in value.`tau_ratio`:
    putFloat64(w,e)
  if value.`joint_kp`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_kp`.len))
  for e in value.`joint_kp`:
    putFloat64(w,e)
  if value.`joint_kd`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_kd`.len))
  for e in value.`joint_kd`:
    putFloat64(w,e)
  if value.`control_modes`.len > 128: fail(22)
  putInteger(w,uint32(value.`control_modes`.len))
  for e in value.`control_modes`:
    putInteger(w,e)
proc readRos1Kuavo_msgsJointCmd*(r: var Reader): Ros1Kuavo_msgsJointCmd =
  result = initRos1Kuavo_msgsJointCmd()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 128: fail(22)
  let count1 = int(rawcount1)
  result.`joint_q` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`joint_q`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 128: fail(22)
  let count2 = int(rawcount2)
  result.`joint_v` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`joint_v`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 128: fail(22)
  let count3 = int(rawcount3)
  result.`tau` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`tau`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 128: fail(22)
  let count4 = int(rawcount4)
  result.`tau_max` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`tau_max`[i] = getFloat64(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 128: fail(22)
  let count5 = int(rawcount5)
  result.`tau_ratio` = newSeq[float64](count5)
  for i in 0..<count5:
    result.`tau_ratio`[i] = getFloat64(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 128: fail(22)
  let count6 = int(rawcount6)
  result.`joint_kp` = newSeq[float64](count6)
  for i in 0..<count6:
    result.`joint_kp`[i] = getFloat64(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 128: fail(22)
  let count7 = int(rawcount7)
  result.`joint_kd` = newSeq[float64](count7)
  for i in 0..<count7:
    result.`joint_kd`[i] = getFloat64(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 128: fail(22)
  let count8 = int(rawcount8)
  result.`control_modes` = newSeq[int32](count8)
  for i in 0..<count8:
    result.`control_modes`[i] = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsJointCmd): seq[byte] =
  var w = initWriter(7984)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsJointCmd*(b: seq[byte]): Ros1Kuavo_msgsJointCmd =
  var r = initReader(b,7984)
  result = readRos1Kuavo_msgsJointCmd(r)
  finish(r)
type Ros1Kuavo_msgsJointData* = object
  `joint_q`*: seq[float64]
  `joint_v`*: seq[float64]
  `joint_vd`*: seq[float64]
  `joint_torque`*: seq[float64]
const Ros1Kuavo_msgsJointDataMaximumWireBytes* = 4112
const Ros1Kuavo_msgsJointDataCodecIdentity* = "UWVMROS1_3377e37ae230363d24936f58d080088f5a5e58aa6706b48263dc67b8ada7349f"
const Ros1Kuavo_msgsJointDataNativeType* = "kuavo_msgs/jointData"
const Ros1Kuavo_msgsJointDataNativeIdentity* = ""
proc initRos1Kuavo_msgsJointData*(): Ros1Kuavo_msgsJointData =
  result.`joint_q` = @[]
  result.`joint_v` = @[]
  result.`joint_vd` = @[]
  result.`joint_torque` = @[]
proc writeFields*(value: Ros1Kuavo_msgsJointData; w: var Writer) =
  if value.`joint_q`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_q`.len))
  for e in value.`joint_q`:
    putFloat64(w,e)
  if value.`joint_v`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_v`.len))
  for e in value.`joint_v`:
    putFloat64(w,e)
  if value.`joint_vd`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_vd`.len))
  for e in value.`joint_vd`:
    putFloat64(w,e)
  if value.`joint_torque`.len > 128: fail(22)
  putInteger(w,uint32(value.`joint_torque`.len))
  for e in value.`joint_torque`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsJointData*(r: var Reader): Ros1Kuavo_msgsJointData =
  result = initRos1Kuavo_msgsJointData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 128: fail(22)
  let count0 = int(rawcount0)
  result.`joint_q` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`joint_q`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 128: fail(22)
  let count1 = int(rawcount1)
  result.`joint_v` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`joint_v`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 128: fail(22)
  let count2 = int(rawcount2)
  result.`joint_vd` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`joint_vd`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 128: fail(22)
  let count3 = int(rawcount3)
  result.`joint_torque` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`joint_torque`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsJointData): seq[byte] =
  var w = initWriter(4112)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsJointData*(b: seq[byte]): Ros1Kuavo_msgsJointData =
  var r = initReader(b,4112)
  result = readRos1Kuavo_msgsJointData(r)
  finish(r)
type Ros1Kuavo_msgsJointMoveToRequest* = object
  `goal_position`*: seq[float64]
  `speed`*: float64
  `dt`*: float64
const Ros1Kuavo_msgsJointMoveToRequestMaximumWireBytes* = 148
const Ros1Kuavo_msgsJointMoveToRequestCodecIdentity* = "UWVMROS1_a29a8269f7983673894013deeabe4ccfc84385abc85565d0bbdbfbeca3c583e8"
const Ros1Kuavo_msgsJointMoveToRequestNativeType* = "kuavo_msgs/jointMoveToRequest"
const Ros1Kuavo_msgsJointMoveToRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsJointMoveToRequest*(): Ros1Kuavo_msgsJointMoveToRequest =
  result.`goal_position` = @[]
  result.`speed` = 0
  result.`dt` = 0
proc writeFields*(value: Ros1Kuavo_msgsJointMoveToRequest; w: var Writer) =
  if value.`goal_position`.len > 16: fail(22)
  putInteger(w,uint32(value.`goal_position`.len))
  for e in value.`goal_position`:
    putFloat64(w,e)
  putFloat64(w,value.`speed`)
  putFloat64(w,value.`dt`)
proc readRos1Kuavo_msgsJointMoveToRequest*(r: var Reader): Ros1Kuavo_msgsJointMoveToRequest =
  result = initRos1Kuavo_msgsJointMoveToRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`goal_position` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`goal_position`[i] = getFloat64(r)
  result.`speed` = getFloat64(r)
  result.`dt` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsJointMoveToRequest): seq[byte] =
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsJointMoveToRequest*(b: seq[byte]): Ros1Kuavo_msgsJointMoveToRequest =
  var r = initReader(b,148)
  result = readRos1Kuavo_msgsJointMoveToRequest(r)
  finish(r)
type Ros1Kuavo_msgsJointMoveToResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsJointMoveToResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsJointMoveToResponseCodecIdentity* = "UWVMROS1_10b6f17523c01e6ef31fd347e204229d6c7e87c8319817f7b6e5b155de9de66f"
const Ros1Kuavo_msgsJointMoveToResponseNativeType* = "kuavo_msgs/jointMoveToResponse"
const Ros1Kuavo_msgsJointMoveToResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsJointMoveToResponse*(): Ros1Kuavo_msgsJointMoveToResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsJointMoveToResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsJointMoveToResponse*(r: var Reader): Ros1Kuavo_msgsJointMoveToResponse =
  result = initRos1Kuavo_msgsJointMoveToResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsJointMoveToResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsJointMoveToResponse*(b: seq[byte]): Ros1Kuavo_msgsJointMoveToResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsJointMoveToResponse(r)
  finish(r)
type Ros1Kuavo_msgsKuavoModeSchedule* = object
  `currentTime`*: float64
  `footPoseSequence`*: seq[Ros1Kuavo_msgsFootPose6D]
  `eventTimes`*: seq[float64]
  `modeSequence`*: seq[float64]
const Ros1Kuavo_msgsKuavoModeScheduleMaximumWireBytes* = 1044
const Ros1Kuavo_msgsKuavoModeScheduleCodecIdentity* = "UWVMROS1_a70cfec100b2a48ddc270bdf56a6d45dc749a582aa0e22b2aaf4eec0e070b9fa"
const Ros1Kuavo_msgsKuavoModeScheduleNativeType* = "kuavo_msgs/kuavoModeSchedule"
const Ros1Kuavo_msgsKuavoModeScheduleNativeIdentity* = ""
proc initRos1Kuavo_msgsKuavoModeSchedule*(): Ros1Kuavo_msgsKuavoModeSchedule =
  result.`currentTime` = 0
  result.`footPoseSequence` = @[]
  result.`eventTimes` = @[]
  result.`modeSequence` = @[]
proc writeFields*(value: Ros1Kuavo_msgsKuavoModeSchedule; w: var Writer) =
  putFloat64(w,value.`currentTime`)
  if value.`footPoseSequence`.len > 8: fail(22)
  putInteger(w,uint32(value.`footPoseSequence`.len))
  for e in value.`footPoseSequence`:
    writeFields(e,w)
  if value.`eventTimes`.len > 16: fail(22)
  putInteger(w,uint32(value.`eventTimes`.len))
  for e in value.`eventTimes`:
    putFloat64(w,e)
  if value.`modeSequence`.len > 16: fail(22)
  putInteger(w,uint32(value.`modeSequence`.len))
  for e in value.`modeSequence`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsKuavoModeSchedule*(r: var Reader): Ros1Kuavo_msgsKuavoModeSchedule =
  result = initRos1Kuavo_msgsKuavoModeSchedule()
  result.`currentTime` = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`footPoseSequence` = newSeq[Ros1Kuavo_msgsFootPose6D](count1)
  for i in 0..<count1:
    result.`footPoseSequence`[i] = readRos1Kuavo_msgsFootPose6D(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`eventTimes` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`eventTimes`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`modeSequence` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`modeSequence`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsKuavoModeSchedule): seq[byte] =
  var w = initWriter(1044)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsKuavoModeSchedule*(b: seq[byte]): Ros1Kuavo_msgsKuavoModeSchedule =
  var r = initReader(b,1044)
  result = readRos1Kuavo_msgsKuavoModeSchedule(r)
  finish(r)
type Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest* = object
  `with_chassis`*: bool
  `control_type`*: int8
  `chassis_info`*: array[3,float64]
  `q_lb`*: array[4,float64]
  `base_link`*: array[7,float64]
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestMaximumWireBytes* = 114
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodecIdentity* = "UWVMROS1_72672d25332ed3cd25766e0cd3e94abfde2d0abe95b18220fd2fde98e579201a"
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestNativeType* = "kuavo_msgs/lbBaseLinkPoseCmdSrvRequest"
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest*(): Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest =
  result.`with_chassis` = false
  result.`control_type` = 0
  result.`chassis_info` = [0,0,0]
  result.`q_lb` = [0,0,0,0]
  result.`base_link` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest; w: var Writer) =
  putBool(w,value.`with_chassis`)
  putInteger(w,value.`control_type`)
  for e in value.`chassis_info`:
    putFloat64(w,e)
  for e in value.`q_lb`:
    putFloat64(w,e)
  for e in value.`base_link`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest*(r: var Reader): Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest =
  result = initRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest()
  result.`with_chassis` = getBool(r)
  result.`control_type` = getInteger(r,int8)
  let count2 = 3
  for i in 0..<count2:
    result.`chassis_info`[i] = getFloat64(r)
  let count3 = 4
  for i in 0..<count3:
    result.`q_lb`[i] = getFloat64(r)
  let count4 = 7
  for i in 0..<count4:
    result.`base_link`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest): seq[byte] =
  var w = initWriter(114)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest =
  var r = initReader(b,114)
  result = readRos1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse* = object
  `success`*: bool
  `lb_leg`*: array[4,float64]
  `time_cost`*: float64
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseMaximumWireBytes* = 41
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodecIdentity* = "UWVMROS1_ec5e17c9390a042edc15be0b3bec564272decf513e7181c39e593b17fd3c8ccf"
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseNativeType* = "kuavo_msgs/lbBaseLinkPoseCmdSrvResponse"
const Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse*(): Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse =
  result.`success` = false
  result.`lb_leg` = [0,0,0,0]
  result.`time_cost` = 0
proc writeFields*(value: Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
  for e in value.`lb_leg`:
    putFloat64(w,e)
  putFloat64(w,value.`time_cost`)
proc readRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse*(r: var Reader): Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse =
  result = initRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse()
  result.`success` = getBool(r)
  let count1 = 4
  for i in 0..<count1:
    result.`lb_leg`[i] = getFloat64(r)
  result.`time_cost` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse): seq[byte] =
  var w = initWriter(41)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse =
  var r = initReader(b,41)
  result = readRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsLbLegControlSrvRequest* = object
  `target_joints`*: array[4,float64]
  `duration`*: float64
const Ros1Kuavo_msgsLbLegControlSrvRequestMaximumWireBytes* = 40
const Ros1Kuavo_msgsLbLegControlSrvRequestCodecIdentity* = "UWVMROS1_12cdc7d74b6bc9503c9ae24337eb8ab029eff2a93f88a0b859f731a5faf1a533"
const Ros1Kuavo_msgsLbLegControlSrvRequestNativeType* = "kuavo_msgs/lbLegControlSrvRequest"
const Ros1Kuavo_msgsLbLegControlSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsLbLegControlSrvRequest*(): Ros1Kuavo_msgsLbLegControlSrvRequest =
  result.`target_joints` = [0,0,0,0]
  result.`duration` = 0
proc writeFields*(value: Ros1Kuavo_msgsLbLegControlSrvRequest; w: var Writer) =
  for e in value.`target_joints`:
    putFloat64(w,e)
  putFloat64(w,value.`duration`)
proc readRos1Kuavo_msgsLbLegControlSrvRequest*(r: var Reader): Ros1Kuavo_msgsLbLegControlSrvRequest =
  result = initRos1Kuavo_msgsLbLegControlSrvRequest()
  let count0 = 4
  for i in 0..<count0:
    result.`target_joints`[i] = getFloat64(r)
  result.`duration` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsLbLegControlSrvRequest): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbLegControlSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsLbLegControlSrvRequest =
  var r = initReader(b,40)
  result = readRos1Kuavo_msgsLbLegControlSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsLbLegControlSrvResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsLbLegControlSrvResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsLbLegControlSrvResponseCodecIdentity* = "UWVMROS1_8a5e5e933260c3e6d086c0bd022b5019a5589b14aac83fa532cf2e6e0a085314"
const Ros1Kuavo_msgsLbLegControlSrvResponseNativeType* = "kuavo_msgs/lbLegControlSrvResponse"
const Ros1Kuavo_msgsLbLegControlSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsLbLegControlSrvResponse*(): Ros1Kuavo_msgsLbLegControlSrvResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsLbLegControlSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsLbLegControlSrvResponse*(r: var Reader): Ros1Kuavo_msgsLbLegControlSrvResponse =
  result = initRos1Kuavo_msgsLbLegControlSrvResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsLbLegControlSrvResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbLegControlSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsLbLegControlSrvResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsLbLegControlSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsTimedPoint* = object
  `desireTime`*: float32
  `cmdVec`*: seq[float64]
const Ros1Kuavo_msgsTimedPointMaximumWireBytes* = 136
const Ros1Kuavo_msgsTimedPointCodecIdentity* = "UWVMROS1_9abef61d3ddd167b34972416b5ce4899fe6adb720d2b44f46a2a1ec9e2020ac1"
const Ros1Kuavo_msgsTimedPointNativeType* = "kuavo_msgs/timedPoint"
const Ros1Kuavo_msgsTimedPointNativeIdentity* = ""
proc initRos1Kuavo_msgsTimedPoint*(): Ros1Kuavo_msgsTimedPoint =
  result.`desireTime` = 0
  result.`cmdVec` = @[]
proc writeFields*(value: Ros1Kuavo_msgsTimedPoint; w: var Writer) =
  putFloat32(w,value.`desireTime`)
  if value.`cmdVec`.len > 16: fail(22)
  putInteger(w,uint32(value.`cmdVec`.len))
  for e in value.`cmdVec`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsTimedPoint*(r: var Reader): Ros1Kuavo_msgsTimedPoint =
  result = initRos1Kuavo_msgsTimedPoint()
  result.`desireTime` = getFloat32(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`cmdVec` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`cmdVec`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsTimedPoint): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTimedPoint*(b: seq[byte]): Ros1Kuavo_msgsTimedPoint =
  var r = initReader(b,136)
  result = readRos1Kuavo_msgsTimedPoint(r)
  finish(r)
type Ros1Kuavo_msgsLbTimedOfflineTraj* = object
  `timedTraj`*: seq[Ros1Kuavo_msgsTimedPoint]
  `frame`*: int8
  `plannerIndex`*: int8
const Ros1Kuavo_msgsLbTimedOfflineTrajMaximumWireBytes* = 1094
const Ros1Kuavo_msgsLbTimedOfflineTrajCodecIdentity* = "UWVMROS1_af1a5fdbd4a1e23d33ae06c48f41a4b3f5cb3e390bfd8febcb8705939aeb2256"
const Ros1Kuavo_msgsLbTimedOfflineTrajNativeType* = "kuavo_msgs/lbTimedOfflineTraj"
const Ros1Kuavo_msgsLbTimedOfflineTrajNativeIdentity* = ""
proc initRos1Kuavo_msgsLbTimedOfflineTraj*(): Ros1Kuavo_msgsLbTimedOfflineTraj =
  result.`timedTraj` = @[]
  result.`frame` = 0
  result.`plannerIndex` = 0
proc writeFields*(value: Ros1Kuavo_msgsLbTimedOfflineTraj; w: var Writer) =
  if value.`timedTraj`.len > 8: fail(22)
  putInteger(w,uint32(value.`timedTraj`.len))
  for e in value.`timedTraj`:
    writeFields(e,w)
  putInteger(w,value.`frame`)
  putInteger(w,value.`plannerIndex`)
proc readRos1Kuavo_msgsLbTimedOfflineTraj*(r: var Reader): Ros1Kuavo_msgsLbTimedOfflineTraj =
  result = initRos1Kuavo_msgsLbTimedOfflineTraj()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`timedTraj` = newSeq[Ros1Kuavo_msgsTimedPoint](count0)
  for i in 0..<count0:
    result.`timedTraj`[i] = readRos1Kuavo_msgsTimedPoint(r)
  result.`frame` = getInteger(r,int8)
  result.`plannerIndex` = getInteger(r,int8)
proc encode*(value: Ros1Kuavo_msgsLbTimedOfflineTraj): seq[byte] =
  var w = initWriter(1094)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbTimedOfflineTraj*(b: seq[byte]): Ros1Kuavo_msgsLbTimedOfflineTraj =
  var r = initReader(b,1094)
  result = readRos1Kuavo_msgsLbTimedOfflineTraj(r)
  finish(r)
type Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest* = object
  `offlineTraj`*: seq[Ros1Kuavo_msgsLbTimedOfflineTraj]
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestMaximumWireBytes* = 8756
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodecIdentity* = "UWVMROS1_4f37be18deb3287feb1237d7d6dbc90b34a5d3d159c57c111c5991f9f3e09263"
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestNativeType* = "kuavo_msgs/lbMultiTimedOfflineTrajRequest"
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest*(): Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest =
  result.`offlineTraj` = @[]
proc writeFields*(value: Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest; w: var Writer) =
  if value.`offlineTraj`.len > 8: fail(22)
  putInteger(w,uint32(value.`offlineTraj`.len))
  for e in value.`offlineTraj`:
    writeFields(e,w)
proc readRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest*(r: var Reader): Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest =
  result = initRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`offlineTraj` = newSeq[Ros1Kuavo_msgsLbTimedOfflineTraj](count0)
  for i in 0..<count0:
    result.`offlineTraj`[i] = readRos1Kuavo_msgsLbTimedOfflineTraj(r)
proc encode*(value: Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest): seq[byte] =
  var w = initWriter(8756)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest*(b: seq[byte]): Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest =
  var r = initReader(b,8756)
  result = readRos1Kuavo_msgsLbMultiTimedOfflineTrajRequest(r)
  finish(r)
type Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse* = object
  `isSuccess`*: bool
  `message`*: string
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodecIdentity* = "UWVMROS1_602601ea8d7ef86e3a2c2bad5a2078a18c403522180513ccff501c68596f5d80"
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseNativeType* = "kuavo_msgs/lbMultiTimedOfflineTrajResponse"
const Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse*(): Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse =
  result.`isSuccess` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse; w: var Writer) =
  putBool(w,value.`isSuccess`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse*(r: var Reader): Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse =
  result = initRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse()
  result.`isSuccess` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse*(b: seq[byte]): Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse(r)
  finish(r)
type Ros1Kuavo_msgsTimedSingleCmd* = object
  `planner_index`*: int8
  `desireTime`*: float32
  `cmdVec`*: seq[float64]
const Ros1Kuavo_msgsTimedSingleCmdMaximumWireBytes* = 137
const Ros1Kuavo_msgsTimedSingleCmdCodecIdentity* = "UWVMROS1_c08c60ff04e6c14af1327b42f580079b00bd5b9d4722d15e52ebf54f62b5553a"
const Ros1Kuavo_msgsTimedSingleCmdNativeType* = "kuavo_msgs/timedSingleCmd"
const Ros1Kuavo_msgsTimedSingleCmdNativeIdentity* = ""
proc initRos1Kuavo_msgsTimedSingleCmd*(): Ros1Kuavo_msgsTimedSingleCmd =
  result.`planner_index` = 0
  result.`desireTime` = 0
  result.`cmdVec` = @[]
proc writeFields*(value: Ros1Kuavo_msgsTimedSingleCmd; w: var Writer) =
  putInteger(w,value.`planner_index`)
  putFloat32(w,value.`desireTime`)
  if value.`cmdVec`.len > 16: fail(22)
  putInteger(w,uint32(value.`cmdVec`.len))
  for e in value.`cmdVec`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsTimedSingleCmd*(r: var Reader): Ros1Kuavo_msgsTimedSingleCmd =
  result = initRos1Kuavo_msgsTimedSingleCmd()
  result.`planner_index` = getInteger(r,int8)
  result.`desireTime` = getFloat32(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`cmdVec` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`cmdVec`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsTimedSingleCmd): seq[byte] =
  var w = initWriter(137)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTimedSingleCmd*(b: seq[byte]): Ros1Kuavo_msgsTimedSingleCmd =
  var r = initReader(b,137)
  result = readRos1Kuavo_msgsTimedSingleCmd(r)
  finish(r)
type Ros1Kuavo_msgsLbMultiTimedPosCmdRequest* = object
  `timedCmdVec`*: seq[Ros1Kuavo_msgsTimedSingleCmd]
  `isSync`*: bool
const Ros1Kuavo_msgsLbMultiTimedPosCmdRequestMaximumWireBytes* = 1101
const Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodecIdentity* = "UWVMROS1_09ecf038251456ac6724d19cc51398b63c950eab8261651ccbe1b70082cac923"
const Ros1Kuavo_msgsLbMultiTimedPosCmdRequestNativeType* = "kuavo_msgs/lbMultiTimedPosCmdRequest"
const Ros1Kuavo_msgsLbMultiTimedPosCmdRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsLbMultiTimedPosCmdRequest*(): Ros1Kuavo_msgsLbMultiTimedPosCmdRequest =
  result.`timedCmdVec` = @[]
  result.`isSync` = false
proc writeFields*(value: Ros1Kuavo_msgsLbMultiTimedPosCmdRequest; w: var Writer) =
  if value.`timedCmdVec`.len > 8: fail(22)
  putInteger(w,uint32(value.`timedCmdVec`.len))
  for e in value.`timedCmdVec`:
    writeFields(e,w)
  putBool(w,value.`isSync`)
proc readRos1Kuavo_msgsLbMultiTimedPosCmdRequest*(r: var Reader): Ros1Kuavo_msgsLbMultiTimedPosCmdRequest =
  result = initRos1Kuavo_msgsLbMultiTimedPosCmdRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`timedCmdVec` = newSeq[Ros1Kuavo_msgsTimedSingleCmd](count0)
  for i in 0..<count0:
    result.`timedCmdVec`[i] = readRos1Kuavo_msgsTimedSingleCmd(r)
  result.`isSync` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsLbMultiTimedPosCmdRequest): seq[byte] =
  var w = initWriter(1101)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbMultiTimedPosCmdRequest*(b: seq[byte]): Ros1Kuavo_msgsLbMultiTimedPosCmdRequest =
  var r = initReader(b,1101)
  result = readRos1Kuavo_msgsLbMultiTimedPosCmdRequest(r)
  finish(r)
type Ros1Kuavo_msgsLbMultiTimedPosCmdResponse* = object
  `isSuccess`*: bool
  `actualTime`*: float32
  `message`*: string
const Ros1Kuavo_msgsLbMultiTimedPosCmdResponseMaximumWireBytes* = 265
const Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodecIdentity* = "UWVMROS1_5e69ff6ebf02c2241db5cca0a0f0749aa9242b1f12c2f5eb1095477f82ffebb7"
const Ros1Kuavo_msgsLbMultiTimedPosCmdResponseNativeType* = "kuavo_msgs/lbMultiTimedPosCmdResponse"
const Ros1Kuavo_msgsLbMultiTimedPosCmdResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsLbMultiTimedPosCmdResponse*(): Ros1Kuavo_msgsLbMultiTimedPosCmdResponse =
  result.`isSuccess` = false
  result.`actualTime` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsLbMultiTimedPosCmdResponse; w: var Writer) =
  putBool(w,value.`isSuccess`)
  putFloat32(w,value.`actualTime`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsLbMultiTimedPosCmdResponse*(r: var Reader): Ros1Kuavo_msgsLbMultiTimedPosCmdResponse =
  result = initRos1Kuavo_msgsLbMultiTimedPosCmdResponse()
  result.`isSuccess` = getBool(r)
  result.`actualTime` = getFloat32(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsLbMultiTimedPosCmdResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse*(b: seq[byte]): Ros1Kuavo_msgsLbMultiTimedPosCmdResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_msgsLbMultiTimedPosCmdResponse(r)
  finish(r)
type Ros1Kuavo_msgsLbTimedPosCmdRequest* = object
  `planner_index`*: int8
  `desireTime`*: float32
  `cmdVec`*: seq[float64]
const Ros1Kuavo_msgsLbTimedPosCmdRequestMaximumWireBytes* = 137
const Ros1Kuavo_msgsLbTimedPosCmdRequestCodecIdentity* = "UWVMROS1_16d5924a4eacf77e4170844eefd2d1bacfa447868f02bb57c39f90afdedeb17c"
const Ros1Kuavo_msgsLbTimedPosCmdRequestNativeType* = "kuavo_msgs/lbTimedPosCmdRequest"
const Ros1Kuavo_msgsLbTimedPosCmdRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsLbTimedPosCmdRequest*(): Ros1Kuavo_msgsLbTimedPosCmdRequest =
  result.`planner_index` = 0
  result.`desireTime` = 0
  result.`cmdVec` = @[]
proc writeFields*(value: Ros1Kuavo_msgsLbTimedPosCmdRequest; w: var Writer) =
  putInteger(w,value.`planner_index`)
  putFloat32(w,value.`desireTime`)
  if value.`cmdVec`.len > 16: fail(22)
  putInteger(w,uint32(value.`cmdVec`.len))
  for e in value.`cmdVec`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsLbTimedPosCmdRequest*(r: var Reader): Ros1Kuavo_msgsLbTimedPosCmdRequest =
  result = initRos1Kuavo_msgsLbTimedPosCmdRequest()
  result.`planner_index` = getInteger(r,int8)
  result.`desireTime` = getFloat32(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`cmdVec` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`cmdVec`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsLbTimedPosCmdRequest): seq[byte] =
  var w = initWriter(137)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbTimedPosCmdRequest*(b: seq[byte]): Ros1Kuavo_msgsLbTimedPosCmdRequest =
  var r = initReader(b,137)
  result = readRos1Kuavo_msgsLbTimedPosCmdRequest(r)
  finish(r)
type Ros1Kuavo_msgsLbTimedPosCmdResponse* = object
  `isSuccess`*: bool
  `actualTime`*: float32
  `message`*: string
const Ros1Kuavo_msgsLbTimedPosCmdResponseMaximumWireBytes* = 265
const Ros1Kuavo_msgsLbTimedPosCmdResponseCodecIdentity* = "UWVMROS1_fe098b1606240056ddc5d203d1740dcf684d767f9638c5328afa00787265822c"
const Ros1Kuavo_msgsLbTimedPosCmdResponseNativeType* = "kuavo_msgs/lbTimedPosCmdResponse"
const Ros1Kuavo_msgsLbTimedPosCmdResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsLbTimedPosCmdResponse*(): Ros1Kuavo_msgsLbTimedPosCmdResponse =
  result.`isSuccess` = false
  result.`actualTime` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsLbTimedPosCmdResponse; w: var Writer) =
  putBool(w,value.`isSuccess`)
  putFloat32(w,value.`actualTime`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsLbTimedPosCmdResponse*(r: var Reader): Ros1Kuavo_msgsLbTimedPosCmdResponse =
  result = initRos1Kuavo_msgsLbTimedPosCmdResponse()
  result.`isSuccess` = getBool(r)
  result.`actualTime` = getFloat32(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsLbTimedPosCmdResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLbTimedPosCmdResponse*(b: seq[byte]): Ros1Kuavo_msgsLbTimedPosCmdResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_msgsLbTimedPosCmdResponse(r)
  finish(r)
type Ros1Kuavo_msgsLejuClawCommand* = object
  `header`*: Ros1Std_msgsHeader
  `data`*: Ros1Kuavo_msgsEndEffectorData
const Ros1Kuavo_msgsLejuClawCommandMaximumWireBytes* = 4832
const Ros1Kuavo_msgsLejuClawCommandCodecIdentity* = "UWVMROS1_61cf224048fbeb23d63a1801ef3b973cde8ac31d09c0f5ea9db0924e12a80deb"
const Ros1Kuavo_msgsLejuClawCommandNativeType* = "kuavo_msgs/lejuClawCommand"
const Ros1Kuavo_msgsLejuClawCommandNativeIdentity* = ""
proc initRos1Kuavo_msgsLejuClawCommand*(): Ros1Kuavo_msgsLejuClawCommand =
  result.`header` = initRos1Std_msgsHeader()
  result.`data` = initRos1Kuavo_msgsEndEffectorData()
proc writeFields*(value: Ros1Kuavo_msgsLejuClawCommand; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`data`,w)
proc readRos1Kuavo_msgsLejuClawCommand*(r: var Reader): Ros1Kuavo_msgsLejuClawCommand =
  result = initRos1Kuavo_msgsLejuClawCommand()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`data` = readRos1Kuavo_msgsEndEffectorData(r)
proc encode*(value: Ros1Kuavo_msgsLejuClawCommand): seq[byte] =
  var w = initWriter(4832)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLejuClawCommand*(b: seq[byte]): Ros1Kuavo_msgsLejuClawCommand =
  var r = initReader(b,4832)
  result = readRos1Kuavo_msgsLejuClawCommand(r)
  finish(r)
type Ros1Kuavo_msgsLejuClawRecoveryRequest* = object
  `direction`*: string
  `current`*: float32
  `duration_ms`*: int32
  `repeat`*: int32
const Ros1Kuavo_msgsLejuClawRecoveryRequestMaximumWireBytes* = 272
const Ros1Kuavo_msgsLejuClawRecoveryRequestCodecIdentity* = "UWVMROS1_9f3fc9f6ef90c574075787ef7857d39b9a94807581dc088e828db7d2dd2ce74c"
const Ros1Kuavo_msgsLejuClawRecoveryRequestNativeType* = "kuavo_msgs/lejuClawRecoveryRequest"
const Ros1Kuavo_msgsLejuClawRecoveryRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsLejuClawRecoveryRequest*(): Ros1Kuavo_msgsLejuClawRecoveryRequest =
  result.`direction` = ""
  result.`current` = 0
  result.`duration_ms` = 0
  result.`repeat` = 0
proc writeFields*(value: Ros1Kuavo_msgsLejuClawRecoveryRequest; w: var Writer) =
  putString(w,value.`direction`,256)
  putFloat32(w,value.`current`)
  putInteger(w,value.`duration_ms`)
  putInteger(w,value.`repeat`)
proc readRos1Kuavo_msgsLejuClawRecoveryRequest*(r: var Reader): Ros1Kuavo_msgsLejuClawRecoveryRequest =
  result = initRos1Kuavo_msgsLejuClawRecoveryRequest()
  result.`direction` = getString(r,256)
  result.`current` = getFloat32(r)
  result.`duration_ms` = getInteger(r,int32)
  result.`repeat` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsLejuClawRecoveryRequest): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLejuClawRecoveryRequest*(b: seq[byte]): Ros1Kuavo_msgsLejuClawRecoveryRequest =
  var r = initReader(b,272)
  result = readRos1Kuavo_msgsLejuClawRecoveryRequest(r)
  finish(r)
type Ros1Kuavo_msgsLejuClawRecoveryResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsLejuClawRecoveryResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsLejuClawRecoveryResponseCodecIdentity* = "UWVMROS1_1c241829278fbff2ac2cbf8e656c6ea5fa6237a76dcbe0ab8662313f87ad116f"
const Ros1Kuavo_msgsLejuClawRecoveryResponseNativeType* = "kuavo_msgs/lejuClawRecoveryResponse"
const Ros1Kuavo_msgsLejuClawRecoveryResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsLejuClawRecoveryResponse*(): Ros1Kuavo_msgsLejuClawRecoveryResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsLejuClawRecoveryResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsLejuClawRecoveryResponse*(r: var Reader): Ros1Kuavo_msgsLejuClawRecoveryResponse =
  result = initRos1Kuavo_msgsLejuClawRecoveryResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsLejuClawRecoveryResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLejuClawRecoveryResponse*(b: seq[byte]): Ros1Kuavo_msgsLejuClawRecoveryResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsLejuClawRecoveryResponse(r)
  finish(r)
type Ros1Kuavo_msgsLejuClawState* = object
  `header`*: Ros1Std_msgsHeader
  `state`*: seq[int8]
  `data`*: Ros1Kuavo_msgsEndEffectorData
  `is_high_freq`*: bool
const Ros1Kuavo_msgsLejuClawStateMaximumWireBytes* = 4853
const Ros1Kuavo_msgsLejuClawStateCodecIdentity* = "UWVMROS1_873d5940af0c6f0fedc5ac43038682fb0b9f8fc9e7044d571d2a8968657ad087"
const Ros1Kuavo_msgsLejuClawStateNativeType* = "kuavo_msgs/lejuClawState"
const Ros1Kuavo_msgsLejuClawStateNativeIdentity* = ""
const Ros1Kuavo_msgsLejuClawState_kError*: int8 = -1'i8
const Ros1Kuavo_msgsLejuClawState_kUnknown*: int8 = 0'i8
const Ros1Kuavo_msgsLejuClawState_kMoving*: int8 = 1'i8
const Ros1Kuavo_msgsLejuClawState_kReached*: int8 = 2'i8
const Ros1Kuavo_msgsLejuClawState_kGrabbed*: int8 = 3'i8
proc initRos1Kuavo_msgsLejuClawState*(): Ros1Kuavo_msgsLejuClawState =
  result.`header` = initRos1Std_msgsHeader()
  result.`state` = @[]
  result.`data` = initRos1Kuavo_msgsEndEffectorData()
  result.`is_high_freq` = false
proc writeFields*(value: Ros1Kuavo_msgsLejuClawState; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`state`.len > 16: fail(22)
  putInteger(w,uint32(value.`state`.len))
  for e in value.`state`:
    putInteger(w,e)
  writeFields(value.`data`,w)
  putBool(w,value.`is_high_freq`)
proc readRos1Kuavo_msgsLejuClawState*(r: var Reader): Ros1Kuavo_msgsLejuClawState =
  result = initRos1Kuavo_msgsLejuClawState()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`state` = newSeq[int8](count1)
  for i in 0..<count1:
    result.`state`[i] = getInteger(r,int8)
  result.`data` = readRos1Kuavo_msgsEndEffectorData(r)
  result.`is_high_freq` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsLejuClawState): seq[byte] =
  var w = initWriter(4853)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLejuClawState*(b: seq[byte]): Ros1Kuavo_msgsLejuClawState =
  var r = initReader(b,4853)
  result = readRos1Kuavo_msgsLejuClawState(r)
  finish(r)
type Ros1Kuavo_msgsLejuClawTarget* = object
  `header`*: Ros1Std_msgsHeader
  `data`*: Ros1Kuavo_msgsEndEffectorData
  `kp`*: seq[int32]
  `kd`*: seq[int32]
  `zero_kp`*: bool
const Ros1Kuavo_msgsLejuClawTargetMaximumWireBytes* = 4969
const Ros1Kuavo_msgsLejuClawTargetCodecIdentity* = "UWVMROS1_486d61b61edf26e7f93fab2c996b6e2036b1aa9195c19ff9076eddc2dc1b13bb"
const Ros1Kuavo_msgsLejuClawTargetNativeType* = "kuavo_msgs/lejuClawTarget"
const Ros1Kuavo_msgsLejuClawTargetNativeIdentity* = ""
proc initRos1Kuavo_msgsLejuClawTarget*(): Ros1Kuavo_msgsLejuClawTarget =
  result.`header` = initRos1Std_msgsHeader()
  result.`data` = initRos1Kuavo_msgsEndEffectorData()
  result.`kp` = @[]
  result.`kd` = @[]
  result.`zero_kp` = false
proc writeFields*(value: Ros1Kuavo_msgsLejuClawTarget; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`data`,w)
  if value.`kp`.len > 16: fail(22)
  putInteger(w,uint32(value.`kp`.len))
  for e in value.`kp`:
    putInteger(w,e)
  if value.`kd`.len > 16: fail(22)
  putInteger(w,uint32(value.`kd`.len))
  for e in value.`kd`:
    putInteger(w,e)
  putBool(w,value.`zero_kp`)
proc readRos1Kuavo_msgsLejuClawTarget*(r: var Reader): Ros1Kuavo_msgsLejuClawTarget =
  result = initRos1Kuavo_msgsLejuClawTarget()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`data` = readRos1Kuavo_msgsEndEffectorData(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`kp` = newSeq[int32](count2)
  for i in 0..<count2:
    result.`kp`[i] = getInteger(r,int32)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`kd` = newSeq[int32](count3)
  for i in 0..<count3:
    result.`kd`[i] = getInteger(r,int32)
  result.`zero_kp` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsLejuClawTarget): seq[byte] =
  var w = initWriter(4969)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsLejuClawTarget*(b: seq[byte]): Ros1Kuavo_msgsLejuClawTarget =
  var r = initReader(b,4969)
  result = readRos1Kuavo_msgsLejuClawTarget(r)
  finish(r)
type Ros1Kuavo_msgsMpc_input* = object
  `value`*: seq[float32]
const Ros1Kuavo_msgsMpc_inputMaximumWireBytes* = 516
const Ros1Kuavo_msgsMpc_inputCodecIdentity* = "UWVMROS1_bd1388fba8e1ace866c53ba674fdc9d8b728619d282c22fa4963e0100b91dba6"
const Ros1Kuavo_msgsMpc_inputNativeType* = "kuavo_msgs/mpc_input"
const Ros1Kuavo_msgsMpc_inputNativeIdentity* = ""
proc initRos1Kuavo_msgsMpc_input*(): Ros1Kuavo_msgsMpc_input =
  result.`value` = @[]
proc writeFields*(value: Ros1Kuavo_msgsMpc_input; w: var Writer) =
  if value.`value`.len > 128: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putFloat32(w,e)
proc readRos1Kuavo_msgsMpc_input*(r: var Reader): Ros1Kuavo_msgsMpc_input =
  result = initRos1Kuavo_msgsMpc_input()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 128: fail(22)
  let count0 = int(rawcount0)
  result.`value` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`value`[i] = getFloat32(r)
proc encode*(value: Ros1Kuavo_msgsMpc_input): seq[byte] =
  var w = initWriter(516)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsMpc_input*(b: seq[byte]): Ros1Kuavo_msgsMpc_input =
  var r = initReader(b,516)
  result = readRos1Kuavo_msgsMpc_input(r)
  finish(r)
type Ros1Kuavo_msgsMpc_state* = object
  `value`*: seq[float32]
const Ros1Kuavo_msgsMpc_stateMaximumWireBytes* = 516
const Ros1Kuavo_msgsMpc_stateCodecIdentity* = "UWVMROS1_c2111b86d981faa073c2656691837639b1278da2cd82847e95176730147883c8"
const Ros1Kuavo_msgsMpc_stateNativeType* = "kuavo_msgs/mpc_state"
const Ros1Kuavo_msgsMpc_stateNativeIdentity* = ""
proc initRos1Kuavo_msgsMpc_state*(): Ros1Kuavo_msgsMpc_state =
  result.`value` = @[]
proc writeFields*(value: Ros1Kuavo_msgsMpc_state; w: var Writer) =
  if value.`value`.len > 128: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putFloat32(w,e)
proc readRos1Kuavo_msgsMpc_state*(r: var Reader): Ros1Kuavo_msgsMpc_state =
  result = initRos1Kuavo_msgsMpc_state()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 128: fail(22)
  let count0 = int(rawcount0)
  result.`value` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`value`[i] = getFloat32(r)
proc encode*(value: Ros1Kuavo_msgsMpc_state): seq[byte] =
  var w = initWriter(516)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsMpc_state*(b: seq[byte]): Ros1Kuavo_msgsMpc_state =
  var r = initReader(b,516)
  result = readRos1Kuavo_msgsMpc_state(r)
  finish(r)
type Ros1Kuavo_msgsMpc_target_trajectories* = object
  `timeTrajectory`*: seq[float64]
  `stateTrajectory`*: seq[Ros1Kuavo_msgsMpc_state]
  `inputTrajectory`*: seq[Ros1Kuavo_msgsMpc_input]
const Ros1Kuavo_msgsMpc_target_trajectoriesMaximumWireBytes* = 8396
const Ros1Kuavo_msgsMpc_target_trajectoriesCodecIdentity* = "UWVMROS1_ed56d3f768e6916760ebc26369c6f39535fc4451e446c2b7bff43f2755d9c446"
const Ros1Kuavo_msgsMpc_target_trajectoriesNativeType* = "kuavo_msgs/mpc_target_trajectories"
const Ros1Kuavo_msgsMpc_target_trajectoriesNativeIdentity* = ""
proc initRos1Kuavo_msgsMpc_target_trajectories*(): Ros1Kuavo_msgsMpc_target_trajectories =
  result.`timeTrajectory` = @[]
  result.`stateTrajectory` = @[]
  result.`inputTrajectory` = @[]
proc writeFields*(value: Ros1Kuavo_msgsMpc_target_trajectories; w: var Writer) =
  if value.`timeTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`timeTrajectory`.len))
  for e in value.`timeTrajectory`:
    putFloat64(w,e)
  if value.`stateTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`stateTrajectory`.len))
  for e in value.`stateTrajectory`:
    writeFields(e,w)
  if value.`inputTrajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`inputTrajectory`.len))
  for e in value.`inputTrajectory`:
    writeFields(e,w)
proc readRos1Kuavo_msgsMpc_target_trajectories*(r: var Reader): Ros1Kuavo_msgsMpc_target_trajectories =
  result = initRos1Kuavo_msgsMpc_target_trajectories()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`timeTrajectory` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`timeTrajectory`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`stateTrajectory` = newSeq[Ros1Kuavo_msgsMpc_state](count1)
  for i in 0..<count1:
    result.`stateTrajectory`[i] = readRos1Kuavo_msgsMpc_state(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`inputTrajectory` = newSeq[Ros1Kuavo_msgsMpc_input](count2)
  for i in 0..<count2:
    result.`inputTrajectory`[i] = readRos1Kuavo_msgsMpc_input(r)
proc encode*(value: Ros1Kuavo_msgsMpc_target_trajectories): seq[byte] =
  var w = initWriter(8396)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsMpc_target_trajectories*(b: seq[byte]): Ros1Kuavo_msgsMpc_target_trajectories =
  var r = initReader(b,8396)
  result = readRos1Kuavo_msgsMpc_target_trajectories(r)
  finish(r)
type Ros1Kuavo_msgsPicoPoseInfo* = object
  `position`*: Ros1Geometry_msgsPoint
  `orientation`*: Ros1Geometry_msgsQuaternion
const Ros1Kuavo_msgsPicoPoseInfoMaximumWireBytes* = 56
const Ros1Kuavo_msgsPicoPoseInfoCodecIdentity* = "UWVMROS1_389cc7dcc63b71073f207a5688ee803721fd94edd72b24e684008de0fb984166"
const Ros1Kuavo_msgsPicoPoseInfoNativeType* = "kuavo_msgs/picoPoseInfo"
const Ros1Kuavo_msgsPicoPoseInfoNativeIdentity* = ""
proc initRos1Kuavo_msgsPicoPoseInfo*(): Ros1Kuavo_msgsPicoPoseInfo =
  result.`position` = initRos1Geometry_msgsPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Kuavo_msgsPicoPoseInfo; w: var Writer) =
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos1Kuavo_msgsPicoPoseInfo*(r: var Reader): Ros1Kuavo_msgsPicoPoseInfo =
  result = initRos1Kuavo_msgsPicoPoseInfo()
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Kuavo_msgsPicoPoseInfo): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPicoPoseInfo*(b: seq[byte]): Ros1Kuavo_msgsPicoPoseInfo =
  var r = initReader(b,56)
  result = readRos1Kuavo_msgsPicoPoseInfo(r)
  finish(r)
type Ros1Kuavo_msgsPicoPoseInfoList* = object
  `timestamp_ms`*: int64
  `is_high_confidence`*: bool
  `is_hand_tracking`*: bool
  `poses`*: seq[Ros1Kuavo_msgsPicoPoseInfo]
const Ros1Kuavo_msgsPicoPoseInfoListMaximumWireBytes* = 462
const Ros1Kuavo_msgsPicoPoseInfoListCodecIdentity* = "UWVMROS1_777577a782cccf306706ce2b91f7713e81e67c71b413a959ccd548b16dc4af93"
const Ros1Kuavo_msgsPicoPoseInfoListNativeType* = "kuavo_msgs/picoPoseInfoList"
const Ros1Kuavo_msgsPicoPoseInfoListNativeIdentity* = ""
proc initRos1Kuavo_msgsPicoPoseInfoList*(): Ros1Kuavo_msgsPicoPoseInfoList =
  result.`timestamp_ms` = 0
  result.`is_high_confidence` = false
  result.`is_hand_tracking` = false
  result.`poses` = @[]
proc writeFields*(value: Ros1Kuavo_msgsPicoPoseInfoList; w: var Writer) =
  putInteger(w,value.`timestamp_ms`)
  putBool(w,value.`is_high_confidence`)
  putBool(w,value.`is_hand_tracking`)
  if value.`poses`.len > 8: fail(22)
  putInteger(w,uint32(value.`poses`.len))
  for e in value.`poses`:
    writeFields(e,w)
proc readRos1Kuavo_msgsPicoPoseInfoList*(r: var Reader): Ros1Kuavo_msgsPicoPoseInfoList =
  result = initRos1Kuavo_msgsPicoPoseInfoList()
  result.`timestamp_ms` = getInteger(r,int64)
  result.`is_high_confidence` = getBool(r)
  result.`is_hand_tracking` = getBool(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`poses` = newSeq[Ros1Kuavo_msgsPicoPoseInfo](count3)
  for i in 0..<count3:
    result.`poses`[i] = readRos1Kuavo_msgsPicoPoseInfo(r)
proc encode*(value: Ros1Kuavo_msgsPicoPoseInfoList): seq[byte] =
  var w = initWriter(462)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPicoPoseInfoList*(b: seq[byte]): Ros1Kuavo_msgsPicoPoseInfoList =
  var r = initReader(b,462)
  result = readRos1Kuavo_msgsPicoPoseInfoList(r)
  finish(r)
type Ros1Kuavo_msgsPicoPoseRetarget* = object
  `header`*: Ros1Std_msgsHeader
  `base_link_pose`*: Ros1Geometry_msgsPose
  `base_velocity`*: array[6,float64]
  `joint_position`*: array[27,float64]
  `joint_velocity`*: array[27,float64]
  `end_effector_poses`*: array[4,Ros1Geometry_msgsPoint]
const Ros1Kuavo_msgsPicoPoseRetargetMaximumWireBytes* = 904
const Ros1Kuavo_msgsPicoPoseRetargetCodecIdentity* = "UWVMROS1_c516c64d21d323894b86c39aec7093372adaad3ad24e0c1604d6ce6d60358323"
const Ros1Kuavo_msgsPicoPoseRetargetNativeType* = "kuavo_msgs/picoPoseRetarget"
const Ros1Kuavo_msgsPicoPoseRetargetNativeIdentity* = ""
proc initRos1Kuavo_msgsPicoPoseRetarget*(): Ros1Kuavo_msgsPicoPoseRetarget =
  result.`header` = initRos1Std_msgsHeader()
  result.`base_link_pose` = initRos1Geometry_msgsPose()
  result.`base_velocity` = [0,0,0,0,0,0]
  result.`joint_position` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`joint_velocity` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`end_effector_poses` = [initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint()]
proc writeFields*(value: Ros1Kuavo_msgsPicoPoseRetarget; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`base_link_pose`,w)
  for e in value.`base_velocity`:
    putFloat64(w,e)
  for e in value.`joint_position`:
    putFloat64(w,e)
  for e in value.`joint_velocity`:
    putFloat64(w,e)
  for e in value.`end_effector_poses`:
    writeFields(e,w)
proc readRos1Kuavo_msgsPicoPoseRetarget*(r: var Reader): Ros1Kuavo_msgsPicoPoseRetarget =
  result = initRos1Kuavo_msgsPicoPoseRetarget()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`base_link_pose` = readRos1Geometry_msgsPose(r)
  let count2 = 6
  for i in 0..<count2:
    result.`base_velocity`[i] = getFloat64(r)
  let count3 = 27
  for i in 0..<count3:
    result.`joint_position`[i] = getFloat64(r)
  let count4 = 27
  for i in 0..<count4:
    result.`joint_velocity`[i] = getFloat64(r)
  let count5 = 4
  for i in 0..<count5:
    result.`end_effector_poses`[i] = readRos1Geometry_msgsPoint(r)
proc encode*(value: Ros1Kuavo_msgsPicoPoseRetarget): seq[byte] =
  var w = initWriter(904)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPicoPoseRetarget*(b: seq[byte]): Ros1Kuavo_msgsPicoPoseRetarget =
  var r = initReader(b,904)
  result = readRos1Kuavo_msgsPicoPoseRetarget(r)
  finish(r)
type Ros1Kuavo_msgsPlanArmState* = object
  `progress`*: int32
  `is_finished`*: bool
const Ros1Kuavo_msgsPlanArmStateMaximumWireBytes* = 5
const Ros1Kuavo_msgsPlanArmStateCodecIdentity* = "UWVMROS1_f658938a7d2cab0cdb3714e1330594371711f106f7ff7c9542c1fc5804ed079b"
const Ros1Kuavo_msgsPlanArmStateNativeType* = "kuavo_msgs/planArmState"
const Ros1Kuavo_msgsPlanArmStateNativeIdentity* = ""
proc initRos1Kuavo_msgsPlanArmState*(): Ros1Kuavo_msgsPlanArmState =
  result.`progress` = 0
  result.`is_finished` = false
proc writeFields*(value: Ros1Kuavo_msgsPlanArmState; w: var Writer) =
  putInteger(w,value.`progress`)
  putBool(w,value.`is_finished`)
proc readRos1Kuavo_msgsPlanArmState*(r: var Reader): Ros1Kuavo_msgsPlanArmState =
  result = initRos1Kuavo_msgsPlanArmState()
  result.`progress` = getInteger(r,int32)
  result.`is_finished` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsPlanArmState): seq[byte] =
  var w = initWriter(5)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlanArmState*(b: seq[byte]): Ros1Kuavo_msgsPlanArmState =
  var r = initReader(b,5)
  result = readRos1Kuavo_msgsPlanArmState(r)
  finish(r)
type Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest* = object
  `multi_joint_bezier_trajectory`*: seq[Ros1Kuavo_msgsJointBezierTrajectory]
  `start_frame_time`*: float64
  `end_frame_time`*: float64
  `joint_names`*: seq[string]
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestMaximumWireBytes* = 29560
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodecIdentity* = "UWVMROS1_bd6f732aaa84ae6643d17e856993945498116ef4e7769e08c5b4855d8d5b4865"
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestNativeType* = "kuavo_msgs/planArmTrajectoryBezierCurveRequest"
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest*(): Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest =
  result.`multi_joint_bezier_trajectory` = @[]
  result.`start_frame_time` = 0
  result.`end_frame_time` = 0
  result.`joint_names` = @[]
proc writeFields*(value: Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest; w: var Writer) =
  if value.`multi_joint_bezier_trajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`multi_joint_bezier_trajectory`.len))
  for e in value.`multi_joint_bezier_trajectory`:
    writeFields(e,w)
  putFloat64(w,value.`start_frame_time`)
  putFloat64(w,value.`end_frame_time`)
  if value.`joint_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
proc readRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest*(r: var Reader): Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest =
  result = initRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`multi_joint_bezier_trajectory` = newSeq[Ros1Kuavo_msgsJointBezierTrajectory](count0)
  for i in 0..<count0:
    result.`multi_joint_bezier_trajectory`[i] = readRos1Kuavo_msgsJointBezierTrajectory(r)
  result.`start_frame_time` = getFloat64(r)
  result.`end_frame_time` = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`joint_names` = newSeq[string](count3)
  for i in 0..<count3:
    result.`joint_names`[i] = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest): seq[byte] =
  var w = initWriter(29560)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest*(b: seq[byte]): Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest =
  var r = initReader(b,29560)
  result = readRos1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest(r)
  finish(r)
type Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodecIdentity* = "UWVMROS1_00e6a99ebf6d4712e8ec2619535b3490b0d422580d8f1965e33f10543fc27b66"
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseNativeType* = "kuavo_msgs/planArmTrajectoryBezierCurveResponse"
const Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse*(): Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse*(r: var Reader): Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse =
  result = initRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse*(b: seq[byte]): Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse(r)
  finish(r)
type Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest* = object
  `joint_trajectory`*: Ros1Trajectory_msgsJointTrajectory
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestMaximumWireBytes* = 8728
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodecIdentity* = "UWVMROS1_afc4c22f3fe55c5ca5b63d0f79b292a92e0a55a2021fe4621a3fd22c91a25490"
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestNativeType* = "kuavo_msgs/planArmTrajectoryCubicSplineRequest"
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest*(): Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest =
  result.`joint_trajectory` = initRos1Trajectory_msgsJointTrajectory()
proc writeFields*(value: Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest; w: var Writer) =
  writeFields(value.`joint_trajectory`,w)
proc readRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest*(r: var Reader): Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest =
  result = initRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest()
  result.`joint_trajectory` = readRos1Trajectory_msgsJointTrajectory(r)
proc encode*(value: Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest): seq[byte] =
  var w = initWriter(8728)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest*(b: seq[byte]): Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest =
  var r = initReader(b,8728)
  result = readRos1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest(r)
  finish(r)
type Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse* = object
  `success`*: bool
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodecIdentity* = "UWVMROS1_774b62fb3350e85125ec570db082a036b108bc5f36483b35b98bd632fc31a6c2"
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseNativeType* = "kuavo_msgs/planArmTrajectoryCubicSplineResponse"
const Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse*(): Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse*(r: var Reader): Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse =
  result = initRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse*(b: seq[byte]): Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse(r)
  finish(r)
type Ros1Kuavo_msgsPlaymusicRequest* = object
  `music_number`*: string
  `volume`*: int64
const Ros1Kuavo_msgsPlaymusicRequestMaximumWireBytes* = 268
const Ros1Kuavo_msgsPlaymusicRequestCodecIdentity* = "UWVMROS1_2a349ee4a8190253d22453eb1a2455647ec65fbe0ae6461155288c874fcbe76c"
const Ros1Kuavo_msgsPlaymusicRequestNativeType* = "kuavo_msgs/playmusicRequest"
const Ros1Kuavo_msgsPlaymusicRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsPlaymusicRequest*(): Ros1Kuavo_msgsPlaymusicRequest =
  result.`music_number` = ""
  result.`volume` = 0
proc writeFields*(value: Ros1Kuavo_msgsPlaymusicRequest; w: var Writer) =
  putString(w,value.`music_number`,256)
  putInteger(w,value.`volume`)
proc readRos1Kuavo_msgsPlaymusicRequest*(r: var Reader): Ros1Kuavo_msgsPlaymusicRequest =
  result = initRos1Kuavo_msgsPlaymusicRequest()
  result.`music_number` = getString(r,256)
  result.`volume` = getInteger(r,int64)
proc encode*(value: Ros1Kuavo_msgsPlaymusicRequest): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlaymusicRequest*(b: seq[byte]): Ros1Kuavo_msgsPlaymusicRequest =
  var r = initReader(b,268)
  result = readRos1Kuavo_msgsPlaymusicRequest(r)
  finish(r)
type Ros1Kuavo_msgsPlaymusicResponse* = object
  `success_flag`*: bool
const Ros1Kuavo_msgsPlaymusicResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsPlaymusicResponseCodecIdentity* = "UWVMROS1_e072b42b1fe3c1f478b44656375fb9f1a246b24813126254e12c7a15eb770788"
const Ros1Kuavo_msgsPlaymusicResponseNativeType* = "kuavo_msgs/playmusicResponse"
const Ros1Kuavo_msgsPlaymusicResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsPlaymusicResponse*(): Ros1Kuavo_msgsPlaymusicResponse =
  result.`success_flag` = false
proc writeFields*(value: Ros1Kuavo_msgsPlaymusicResponse; w: var Writer) =
  putBool(w,value.`success_flag`)
proc readRos1Kuavo_msgsPlaymusicResponse*(r: var Reader): Ros1Kuavo_msgsPlaymusicResponse =
  result = initRos1Kuavo_msgsPlaymusicResponse()
  result.`success_flag` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsPlaymusicResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsPlaymusicResponse*(b: seq[byte]): Ros1Kuavo_msgsPlaymusicResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsPlaymusicResponse(r)
  finish(r)
type Ros1Kuavo_msgsRecordArmHandPose* = object
  `left_pose`*: Ros1Kuavo_msgsArmHandPose
  `right_pose`*: Ros1Kuavo_msgsArmHandPose
const Ros1Kuavo_msgsRecordArmHandPoseMaximumWireBytes* = 272
const Ros1Kuavo_msgsRecordArmHandPoseCodecIdentity* = "UWVMROS1_96c99a2bc1b6e6925510aeaed151da5676d3bbed7cc3a7b8505cda9a3fd6485f"
const Ros1Kuavo_msgsRecordArmHandPoseNativeType* = "kuavo_msgs/recordArmHandPose"
const Ros1Kuavo_msgsRecordArmHandPoseNativeIdentity* = ""
proc initRos1Kuavo_msgsRecordArmHandPose*(): Ros1Kuavo_msgsRecordArmHandPose =
  result.`left_pose` = initRos1Kuavo_msgsArmHandPose()
  result.`right_pose` = initRos1Kuavo_msgsArmHandPose()
proc writeFields*(value: Ros1Kuavo_msgsRecordArmHandPose; w: var Writer) =
  writeFields(value.`left_pose`,w)
  writeFields(value.`right_pose`,w)
proc readRos1Kuavo_msgsRecordArmHandPose*(r: var Reader): Ros1Kuavo_msgsRecordArmHandPose =
  result = initRos1Kuavo_msgsRecordArmHandPose()
  result.`left_pose` = readRos1Kuavo_msgsArmHandPose(r)
  result.`right_pose` = readRos1Kuavo_msgsArmHandPose(r)
proc encode*(value: Ros1Kuavo_msgsRecordArmHandPose): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRecordArmHandPose*(b: seq[byte]): Ros1Kuavo_msgsRecordArmHandPose =
  var r = initReader(b,272)
  result = readRos1Kuavo_msgsRecordArmHandPose(r)
  finish(r)
type Ros1Kuavo_msgsRecordmusicRequest* = object
  `music_number`*: string
  `time_out`*: int64
const Ros1Kuavo_msgsRecordmusicRequestMaximumWireBytes* = 268
const Ros1Kuavo_msgsRecordmusicRequestCodecIdentity* = "UWVMROS1_d076a9e4c8d1fa77a223bfa94e2cf561f611b6096f65b04204b86b2b8324e0bd"
const Ros1Kuavo_msgsRecordmusicRequestNativeType* = "kuavo_msgs/recordmusicRequest"
const Ros1Kuavo_msgsRecordmusicRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsRecordmusicRequest*(): Ros1Kuavo_msgsRecordmusicRequest =
  result.`music_number` = ""
  result.`time_out` = 0
proc writeFields*(value: Ros1Kuavo_msgsRecordmusicRequest; w: var Writer) =
  putString(w,value.`music_number`,256)
  putInteger(w,value.`time_out`)
proc readRos1Kuavo_msgsRecordmusicRequest*(r: var Reader): Ros1Kuavo_msgsRecordmusicRequest =
  result = initRos1Kuavo_msgsRecordmusicRequest()
  result.`music_number` = getString(r,256)
  result.`time_out` = getInteger(r,int64)
proc encode*(value: Ros1Kuavo_msgsRecordmusicRequest): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRecordmusicRequest*(b: seq[byte]): Ros1Kuavo_msgsRecordmusicRequest =
  var r = initReader(b,268)
  result = readRos1Kuavo_msgsRecordmusicRequest(r)
  finish(r)
type Ros1Kuavo_msgsRecordmusicResponse* = object
  `success_flag`*: bool
const Ros1Kuavo_msgsRecordmusicResponseMaximumWireBytes* = 1
const Ros1Kuavo_msgsRecordmusicResponseCodecIdentity* = "UWVMROS1_6c5e189aae3bc1f824a5025b6a4b00cf53c147a9d4a8c44850726e243ae83861"
const Ros1Kuavo_msgsRecordmusicResponseNativeType* = "kuavo_msgs/recordmusicResponse"
const Ros1Kuavo_msgsRecordmusicResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsRecordmusicResponse*(): Ros1Kuavo_msgsRecordmusicResponse =
  result.`success_flag` = false
proc writeFields*(value: Ros1Kuavo_msgsRecordmusicResponse; w: var Writer) =
  putBool(w,value.`success_flag`)
proc readRos1Kuavo_msgsRecordmusicResponse*(r: var Reader): Ros1Kuavo_msgsRecordmusicResponse =
  result = initRos1Kuavo_msgsRecordmusicResponse()
  result.`success_flag` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsRecordmusicResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRecordmusicResponse*(b: seq[byte]): Ros1Kuavo_msgsRecordmusicResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_msgsRecordmusicResponse(r)
  finish(r)
type Ros1Kuavo_msgsRobotArmQVVD* = object
  `q`*: seq[float64]
  `v`*: seq[float64]
  `vd`*: seq[float64]
const Ros1Kuavo_msgsRobotArmQVVDMaximumWireBytes* = 396
const Ros1Kuavo_msgsRobotArmQVVDCodecIdentity* = "UWVMROS1_1f364a0b8cdd5f9db4a5f83d4c677ad87680b0bbbd8e2f2b114522359dabf04c"
const Ros1Kuavo_msgsRobotArmQVVDNativeType* = "kuavo_msgs/robotArmQVVD"
const Ros1Kuavo_msgsRobotArmQVVDNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotArmQVVD*(): Ros1Kuavo_msgsRobotArmQVVD =
  result.`q` = @[]
  result.`v` = @[]
  result.`vd` = @[]
proc writeFields*(value: Ros1Kuavo_msgsRobotArmQVVD; w: var Writer) =
  if value.`q`.len > 16: fail(22)
  putInteger(w,uint32(value.`q`.len))
  for e in value.`q`:
    putFloat64(w,e)
  if value.`v`.len > 16: fail(22)
  putInteger(w,uint32(value.`v`.len))
  for e in value.`v`:
    putFloat64(w,e)
  if value.`vd`.len > 16: fail(22)
  putInteger(w,uint32(value.`vd`.len))
  for e in value.`vd`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsRobotArmQVVD*(r: var Reader): Ros1Kuavo_msgsRobotArmQVVD =
  result = initRos1Kuavo_msgsRobotArmQVVD()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`q` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`q`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`v` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`v`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`vd` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`vd`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsRobotArmQVVD): seq[byte] =
  var w = initWriter(396)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotArmQVVD*(b: seq[byte]): Ros1Kuavo_msgsRobotArmQVVD =
  var r = initReader(b,396)
  result = readRos1Kuavo_msgsRobotArmQVVD(r)
  finish(r)
type Ros1Kuavo_msgsRobotBodyMatrices* = object
  `header`*: Ros1Std_msgsHeader
  `timestamp`*: Ros1Time
  `matrices_data`*: seq[float64]
  `num_matrices`*: uint32
  `body_parts`*: seq[string]
  `data_source`*: string
const Ros1Kuavo_msgsRobotBodyMatricesMaximumWireBytes* = 4840
const Ros1Kuavo_msgsRobotBodyMatricesCodecIdentity* = "UWVMROS1_13513ef94b12b9fdbba594455112bb5943ead6664b50b3a64428beeed71c6f5d"
const Ros1Kuavo_msgsRobotBodyMatricesNativeType* = "kuavo_msgs/robotBodyMatrices"
const Ros1Kuavo_msgsRobotBodyMatricesNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotBodyMatrices*(): Ros1Kuavo_msgsRobotBodyMatrices =
  result.`header` = initRos1Std_msgsHeader()
  result.`timestamp` = initRos1Time()
  result.`matrices_data` = @[]
  result.`num_matrices` = 0
  result.`body_parts` = @[]
  result.`data_source` = ""
proc writeFields*(value: Ros1Kuavo_msgsRobotBodyMatrices; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`timestamp`,w)
  if value.`matrices_data`.len > 16: fail(22)
  putInteger(w,uint32(value.`matrices_data`.len))
  for e in value.`matrices_data`:
    putFloat64(w,e)
  putInteger(w,value.`num_matrices`)
  if value.`body_parts`.len > 16: fail(22)
  putInteger(w,uint32(value.`body_parts`.len))
  for e in value.`body_parts`:
    putString(w,e,256)
  putString(w,value.`data_source`,256)
proc readRos1Kuavo_msgsRobotBodyMatrices*(r: var Reader): Ros1Kuavo_msgsRobotBodyMatrices =
  result = initRos1Kuavo_msgsRobotBodyMatrices()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`timestamp` = readRos1Time(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`matrices_data` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`matrices_data`[i] = getFloat64(r)
  result.`num_matrices` = getInteger(r,uint32)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`body_parts` = newSeq[string](count4)
  for i in 0..<count4:
    result.`body_parts`[i] = getString(r,256)
  result.`data_source` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsRobotBodyMatrices): seq[byte] =
  var w = initWriter(4840)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotBodyMatrices*(b: seq[byte]): Ros1Kuavo_msgsRobotBodyMatrices =
  var r = initReader(b,4840)
  result = readRos1Kuavo_msgsRobotBodyMatrices(r)
  finish(r)
type Ros1Kuavo_msgsRobotHandPosition* = object
  `header`*: Ros1Std_msgsHeader
  `left_hand_position`*: seq[uint8]
  `right_hand_position`*: seq[uint8]
const Ros1Kuavo_msgsRobotHandPositionMaximumWireBytes* = 792
const Ros1Kuavo_msgsRobotHandPositionCodecIdentity* = "UWVMROS1_3dbded158dee1f75041282790dc3d776f604e03c0335d8e9dc6b38ad136c3575"
const Ros1Kuavo_msgsRobotHandPositionNativeType* = "kuavo_msgs/robotHandPosition"
const Ros1Kuavo_msgsRobotHandPositionNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotHandPosition*(): Ros1Kuavo_msgsRobotHandPosition =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_hand_position` = @[]
  result.`right_hand_position` = @[]
proc writeFields*(value: Ros1Kuavo_msgsRobotHandPosition; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`left_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`left_hand_position`.len))
  for e in value.`left_hand_position`:
    putInteger(w,e)
  if value.`right_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`right_hand_position`.len))
  for e in value.`right_hand_position`:
    putInteger(w,e)
proc readRos1Kuavo_msgsRobotHandPosition*(r: var Reader): Ros1Kuavo_msgsRobotHandPosition =
  result = initRos1Kuavo_msgsRobotHandPosition()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 256: fail(22)
  let count1 = int(rawcount1)
  result.`left_hand_position` = newSeq[uint8](count1)
  for i in 0..<count1:
    result.`left_hand_position`[i] = getInteger(r,uint8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 256: fail(22)
  let count2 = int(rawcount2)
  result.`right_hand_position` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`right_hand_position`[i] = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_msgsRobotHandPosition): seq[byte] =
  var w = initWriter(792)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotHandPosition*(b: seq[byte]): Ros1Kuavo_msgsRobotHandPosition =
  var r = initReader(b,792)
  result = readRos1Kuavo_msgsRobotHandPosition(r)
  finish(r)
type Ros1Kuavo_msgsRobotHeadMotionData* = object
  `joint_data`*: seq[float64]
const Ros1Kuavo_msgsRobotHeadMotionDataMaximumWireBytes* = 132
const Ros1Kuavo_msgsRobotHeadMotionDataCodecIdentity* = "UWVMROS1_e3e8d5f01513b9d351f628901cebeb01eb0852e51e91a6fe74da656fb5c751bd"
const Ros1Kuavo_msgsRobotHeadMotionDataNativeType* = "kuavo_msgs/robotHeadMotionData"
const Ros1Kuavo_msgsRobotHeadMotionDataNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotHeadMotionData*(): Ros1Kuavo_msgsRobotHeadMotionData =
  result.`joint_data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsRobotHeadMotionData; w: var Writer) =
  if value.`joint_data`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_data`.len))
  for e in value.`joint_data`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsRobotHeadMotionData*(r: var Reader): Ros1Kuavo_msgsRobotHeadMotionData =
  result = initRos1Kuavo_msgsRobotHeadMotionData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`joint_data` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`joint_data`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsRobotHeadMotionData): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotHeadMotionData*(b: seq[byte]): Ros1Kuavo_msgsRobotHeadMotionData =
  var r = initReader(b,132)
  result = readRos1Kuavo_msgsRobotHeadMotionData(r)
  finish(r)
type Ros1Kuavo_msgsRobotState* = object
  `header`*: Ros1Std_msgsHeader
  `q`*: seq[float64]
  `v`*: seq[float64]
const Ros1Kuavo_msgsRobotStateMaximumWireBytes* = 536
const Ros1Kuavo_msgsRobotStateCodecIdentity* = "UWVMROS1_3a52e2bf289af0445b3f53e85238efd5eb79788aaa5cf32eba0212266c141747"
const Ros1Kuavo_msgsRobotStateNativeType* = "kuavo_msgs/robotState"
const Ros1Kuavo_msgsRobotStateNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotState*(): Ros1Kuavo_msgsRobotState =
  result.`header` = initRos1Std_msgsHeader()
  result.`q` = @[]
  result.`v` = @[]
proc writeFields*(value: Ros1Kuavo_msgsRobotState; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`q`.len > 16: fail(22)
  putInteger(w,uint32(value.`q`.len))
  for e in value.`q`:
    putFloat64(w,e)
  if value.`v`.len > 16: fail(22)
  putInteger(w,uint32(value.`v`.len))
  for e in value.`v`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsRobotState*(r: var Reader): Ros1Kuavo_msgsRobotState =
  result = initRos1Kuavo_msgsRobotState()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`q` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`q`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`v` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`v`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsRobotState): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotState*(b: seq[byte]): Ros1Kuavo_msgsRobotState =
  var r = initReader(b,536)
  result = readRos1Kuavo_msgsRobotState(r)
  finish(r)
type Ros1Kuavo_msgsRobotSwitchPoseRequest* = object
  `status`*: string
const Ros1Kuavo_msgsRobotSwitchPoseRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsRobotSwitchPoseRequestCodecIdentity* = "UWVMROS1_140d6e179bf9c5d4ca2b2e42ea4438e5ff8dd59910345e5e46e20db075bc173c"
const Ros1Kuavo_msgsRobotSwitchPoseRequestNativeType* = "kuavo_msgs/robotSwitchPoseRequest"
const Ros1Kuavo_msgsRobotSwitchPoseRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotSwitchPoseRequest*(): Ros1Kuavo_msgsRobotSwitchPoseRequest =
  result.`status` = ""
proc writeFields*(value: Ros1Kuavo_msgsRobotSwitchPoseRequest; w: var Writer) =
  putString(w,value.`status`,256)
proc readRos1Kuavo_msgsRobotSwitchPoseRequest*(r: var Reader): Ros1Kuavo_msgsRobotSwitchPoseRequest =
  result = initRos1Kuavo_msgsRobotSwitchPoseRequest()
  result.`status` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsRobotSwitchPoseRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotSwitchPoseRequest*(b: seq[byte]): Ros1Kuavo_msgsRobotSwitchPoseRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsRobotSwitchPoseRequest(r)
  finish(r)
type Ros1Kuavo_msgsRobotSwitchPoseResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsRobotSwitchPoseResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsRobotSwitchPoseResponseCodecIdentity* = "UWVMROS1_d5095cdc52058e4525c2b7f367352d2cc6e817b0ba3e9b521b29993220b34b82"
const Ros1Kuavo_msgsRobotSwitchPoseResponseNativeType* = "kuavo_msgs/robotSwitchPoseResponse"
const Ros1Kuavo_msgsRobotSwitchPoseResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotSwitchPoseResponse*(): Ros1Kuavo_msgsRobotSwitchPoseResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsRobotSwitchPoseResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsRobotSwitchPoseResponse*(r: var Reader): Ros1Kuavo_msgsRobotSwitchPoseResponse =
  result = initRos1Kuavo_msgsRobotSwitchPoseResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsRobotSwitchPoseResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotSwitchPoseResponse*(b: seq[byte]): Ros1Kuavo_msgsRobotSwitchPoseResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsRobotSwitchPoseResponse(r)
  finish(r)
type Ros1Std_msgsFloat64MultiArray* = object
  `layout`*: Ros1Std_msgsMultiArrayLayout
  `data`*: seq[float64]
const Ros1Std_msgsFloat64MultiArrayMaximumWireBytes* = 1264
const Ros1Std_msgsFloat64MultiArrayCodecIdentity* = "UWVMROS1_505ab8c50603482c78cd75d2961b416f9c15ac5f4f33766ce0c6ddb8811952e0"
const Ros1Std_msgsFloat64MultiArrayNativeType* = "std_msgs/Float64MultiArray"
const Ros1Std_msgsFloat64MultiArrayNativeIdentity* = ""
proc initRos1Std_msgsFloat64MultiArray*(): Ros1Std_msgsFloat64MultiArray =
  result.`layout` = initRos1Std_msgsMultiArrayLayout()
  result.`data` = @[]
proc writeFields*(value: Ros1Std_msgsFloat64MultiArray; w: var Writer) =
  writeFields(value.`layout`,w)
  if value.`data`.len > 128: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putFloat64(w,e)
proc readRos1Std_msgsFloat64MultiArray*(r: var Reader): Ros1Std_msgsFloat64MultiArray =
  result = initRos1Std_msgsFloat64MultiArray()
  result.`layout` = readRos1Std_msgsMultiArrayLayout(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 128: fail(22)
  let count1 = int(rawcount1)
  result.`data` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`data`[i] = getFloat64(r)
proc encode*(value: Ros1Std_msgsFloat64MultiArray): seq[byte] =
  var w = initWriter(1264)
  writeFields(value,w)
  w.bytes
proc decodeRos1Std_msgsFloat64MultiArray*(b: seq[byte]): Ros1Std_msgsFloat64MultiArray =
  var r = initReader(b,1264)
  result = readRos1Std_msgsFloat64MultiArray(r)
  finish(r)
type Ros1Kuavo_msgsRobotWaistControl* = object
  `header`*: Ros1Std_msgsHeader
  `data`*: Ros1Std_msgsFloat64MultiArray
const Ros1Kuavo_msgsRobotWaistControlMaximumWireBytes* = 1536
const Ros1Kuavo_msgsRobotWaistControlCodecIdentity* = "UWVMROS1_3e71b95a60d90f00a56eefd1555101c1d0d898963968d1dcfc3d2a1057126b74"
const Ros1Kuavo_msgsRobotWaistControlNativeType* = "kuavo_msgs/robotWaistControl"
const Ros1Kuavo_msgsRobotWaistControlNativeIdentity* = ""
proc initRos1Kuavo_msgsRobotWaistControl*(): Ros1Kuavo_msgsRobotWaistControl =
  result.`header` = initRos1Std_msgsHeader()
  result.`data` = initRos1Std_msgsFloat64MultiArray()
proc writeFields*(value: Ros1Kuavo_msgsRobotWaistControl; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`data`,w)
proc readRos1Kuavo_msgsRobotWaistControl*(r: var Reader): Ros1Kuavo_msgsRobotWaistControl =
  result = initRos1Kuavo_msgsRobotWaistControl()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`data` = readRos1Std_msgsFloat64MultiArray(r)
proc encode*(value: Ros1Kuavo_msgsRobotWaistControl): seq[byte] =
  var w = initWriter(1536)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsRobotWaistControl*(b: seq[byte]): Ros1Kuavo_msgsRobotWaistControl =
  var r = initReader(b,1536)
  result = readRos1Kuavo_msgsRobotWaistControl(r)
  finish(r)
type Ros1Kuavo_msgsSensorsData* = object
  `header`*: Ros1Std_msgsHeader
  `sensor_time`*: Ros1Time
  `joint_data`*: Ros1Kuavo_msgsJointData
  `imu_data`*: Ros1Kuavo_msgsImuData
  `end_effector_data`*: Ros1Kuavo_msgsEndEffectorData
  `FTsensor_data`*: Ros1Kuavo_msgsFTsensorData
const Ros1Kuavo_msgsSensorsDataMaximumWireBytes* = 9848
const Ros1Kuavo_msgsSensorsDataCodecIdentity* = "UWVMROS1_23303add22b51fe745c3ba5986a823d979d2f0a548af4701237da30b135bfe22"
const Ros1Kuavo_msgsSensorsDataNativeType* = "kuavo_msgs/sensorsData"
const Ros1Kuavo_msgsSensorsDataNativeIdentity* = ""
proc initRos1Kuavo_msgsSensorsData*(): Ros1Kuavo_msgsSensorsData =
  result.`header` = initRos1Std_msgsHeader()
  result.`sensor_time` = initRos1Time()
  result.`joint_data` = initRos1Kuavo_msgsJointData()
  result.`imu_data` = initRos1Kuavo_msgsImuData()
  result.`end_effector_data` = initRos1Kuavo_msgsEndEffectorData()
  result.`FTsensor_data` = initRos1Kuavo_msgsFTsensorData()
proc writeFields*(value: Ros1Kuavo_msgsSensorsData; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`sensor_time`,w)
  writeFields(value.`joint_data`,w)
  writeFields(value.`imu_data`,w)
  writeFields(value.`end_effector_data`,w)
  writeFields(value.`FTsensor_data`,w)
proc readRos1Kuavo_msgsSensorsData*(r: var Reader): Ros1Kuavo_msgsSensorsData =
  result = initRos1Kuavo_msgsSensorsData()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`sensor_time` = readRos1Time(r)
  result.`joint_data` = readRos1Kuavo_msgsJointData(r)
  result.`imu_data` = readRos1Kuavo_msgsImuData(r)
  result.`end_effector_data` = readRos1Kuavo_msgsEndEffectorData(r)
  result.`FTsensor_data` = readRos1Kuavo_msgsFTsensorData(r)
proc encode*(value: Ros1Kuavo_msgsSensorsData): seq[byte] =
  var w = initWriter(9848)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSensorsData*(b: seq[byte]): Ros1Kuavo_msgsSensorsData =
  var r = initReader(b,9848)
  result = readRos1Kuavo_msgsSensorsData(r)
  finish(r)
type Ros1Kuavo_msgsSetContactForceInterpParamsRequest* = object
  `transition_time`*: float64
  `interpolation_speed`*: float64
const Ros1Kuavo_msgsSetContactForceInterpParamsRequestMaximumWireBytes* = 16
const Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodecIdentity* = "UWVMROS1_ea248485955eb6a12dd10962833e4dcbfab36ee4425cc07539567f03fb0e8421"
const Ros1Kuavo_msgsSetContactForceInterpParamsRequestNativeType* = "kuavo_msgs/setContactForceInterpParamsRequest"
const Ros1Kuavo_msgsSetContactForceInterpParamsRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetContactForceInterpParamsRequest*(): Ros1Kuavo_msgsSetContactForceInterpParamsRequest =
  result.`transition_time` = 0
  result.`interpolation_speed` = 0
proc writeFields*(value: Ros1Kuavo_msgsSetContactForceInterpParamsRequest; w: var Writer) =
  putFloat64(w,value.`transition_time`)
  putFloat64(w,value.`interpolation_speed`)
proc readRos1Kuavo_msgsSetContactForceInterpParamsRequest*(r: var Reader): Ros1Kuavo_msgsSetContactForceInterpParamsRequest =
  result = initRos1Kuavo_msgsSetContactForceInterpParamsRequest()
  result.`transition_time` = getFloat64(r)
  result.`interpolation_speed` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsSetContactForceInterpParamsRequest): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetContactForceInterpParamsRequest*(b: seq[byte]): Ros1Kuavo_msgsSetContactForceInterpParamsRequest =
  var r = initReader(b,16)
  result = readRos1Kuavo_msgsSetContactForceInterpParamsRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetContactForceInterpParamsResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetContactForceInterpParamsResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodecIdentity* = "UWVMROS1_cba26e18d897f5bc02217172486e3271bb36da79a1d57feb30507fbc3d393986"
const Ros1Kuavo_msgsSetContactForceInterpParamsResponseNativeType* = "kuavo_msgs/setContactForceInterpParamsResponse"
const Ros1Kuavo_msgsSetContactForceInterpParamsResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetContactForceInterpParamsResponse*(): Ros1Kuavo_msgsSetContactForceInterpParamsResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetContactForceInterpParamsResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetContactForceInterpParamsResponse*(r: var Reader): Ros1Kuavo_msgsSetContactForceInterpParamsResponse =
  result = initRos1Kuavo_msgsSetContactForceInterpParamsResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetContactForceInterpParamsResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetContactForceInterpParamsResponse*(b: seq[byte]): Ros1Kuavo_msgsSetContactForceInterpParamsResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetContactForceInterpParamsResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetHwIntialStateRequest* = object
  `q_intial`*: seq[float64]
  `v_intial`*: seq[float64]
const Ros1Kuavo_msgsSetHwIntialStateRequestMaximumWireBytes* = 264
const Ros1Kuavo_msgsSetHwIntialStateRequestCodecIdentity* = "UWVMROS1_625eb67a22347aafcc0ff12a04b1e7a6727a6edf1af25c6fbe756710b0b27389"
const Ros1Kuavo_msgsSetHwIntialStateRequestNativeType* = "kuavo_msgs/setHwIntialStateRequest"
const Ros1Kuavo_msgsSetHwIntialStateRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetHwIntialStateRequest*(): Ros1Kuavo_msgsSetHwIntialStateRequest =
  result.`q_intial` = @[]
  result.`v_intial` = @[]
proc writeFields*(value: Ros1Kuavo_msgsSetHwIntialStateRequest; w: var Writer) =
  if value.`q_intial`.len > 16: fail(22)
  putInteger(w,uint32(value.`q_intial`.len))
  for e in value.`q_intial`:
    putFloat64(w,e)
  if value.`v_intial`.len > 16: fail(22)
  putInteger(w,uint32(value.`v_intial`.len))
  for e in value.`v_intial`:
    putFloat64(w,e)
proc readRos1Kuavo_msgsSetHwIntialStateRequest*(r: var Reader): Ros1Kuavo_msgsSetHwIntialStateRequest =
  result = initRos1Kuavo_msgsSetHwIntialStateRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`q_intial` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`q_intial`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`v_intial` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`v_intial`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsSetHwIntialStateRequest): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetHwIntialStateRequest*(b: seq[byte]): Ros1Kuavo_msgsSetHwIntialStateRequest =
  var r = initReader(b,264)
  result = readRos1Kuavo_msgsSetHwIntialStateRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetHwIntialStateResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetHwIntialStateResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetHwIntialStateResponseCodecIdentity* = "UWVMROS1_317d7531d5126d5c2788e3fd2e8de7e4906d14f2972b5625f88c884ffcd6b4ed"
const Ros1Kuavo_msgsSetHwIntialStateResponseNativeType* = "kuavo_msgs/setHwIntialStateResponse"
const Ros1Kuavo_msgsSetHwIntialStateResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetHwIntialStateResponse*(): Ros1Kuavo_msgsSetHwIntialStateResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetHwIntialStateResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetHwIntialStateResponse*(r: var Reader): Ros1Kuavo_msgsSetHwIntialStateResponse =
  result = initRos1Kuavo_msgsSetHwIntialStateResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetHwIntialStateResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetHwIntialStateResponse*(b: seq[byte]): Ros1Kuavo_msgsSetHwIntialStateResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetHwIntialStateResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetMmCtrlFrameRequest* = object
  `frame`*: int32
const Ros1Kuavo_msgsSetMmCtrlFrameRequestMaximumWireBytes* = 4
const Ros1Kuavo_msgsSetMmCtrlFrameRequestCodecIdentity* = "UWVMROS1_e470a541d808efb7692cd9ca591f0390191b2e18c25931579c10d25a021c5cac"
const Ros1Kuavo_msgsSetMmCtrlFrameRequestNativeType* = "kuavo_msgs/setMmCtrlFrameRequest"
const Ros1Kuavo_msgsSetMmCtrlFrameRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetMmCtrlFrameRequest*(): Ros1Kuavo_msgsSetMmCtrlFrameRequest =
  result.`frame` = 0
proc writeFields*(value: Ros1Kuavo_msgsSetMmCtrlFrameRequest; w: var Writer) =
  putInteger(w,value.`frame`)
proc readRos1Kuavo_msgsSetMmCtrlFrameRequest*(r: var Reader): Ros1Kuavo_msgsSetMmCtrlFrameRequest =
  result = initRos1Kuavo_msgsSetMmCtrlFrameRequest()
  result.`frame` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsSetMmCtrlFrameRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetMmCtrlFrameRequest*(b: seq[byte]): Ros1Kuavo_msgsSetMmCtrlFrameRequest =
  var r = initReader(b,4)
  result = readRos1Kuavo_msgsSetMmCtrlFrameRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetMmCtrlFrameResponse* = object
  `result`*: bool
  `currentFrame`*: int32
  `message`*: string
const Ros1Kuavo_msgsSetMmCtrlFrameResponseMaximumWireBytes* = 265
const Ros1Kuavo_msgsSetMmCtrlFrameResponseCodecIdentity* = "UWVMROS1_207ff9a5522860a36f1e4157da5e97cc6adab58d388522c6f4038c7f7c249127"
const Ros1Kuavo_msgsSetMmCtrlFrameResponseNativeType* = "kuavo_msgs/setMmCtrlFrameResponse"
const Ros1Kuavo_msgsSetMmCtrlFrameResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetMmCtrlFrameResponse*(): Ros1Kuavo_msgsSetMmCtrlFrameResponse =
  result.`result` = false
  result.`currentFrame` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetMmCtrlFrameResponse; w: var Writer) =
  putBool(w,value.`result`)
  putInteger(w,value.`currentFrame`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetMmCtrlFrameResponse*(r: var Reader): Ros1Kuavo_msgsSetMmCtrlFrameResponse =
  result = initRos1Kuavo_msgsSetMmCtrlFrameResponse()
  result.`result` = getBool(r)
  result.`currentFrame` = getInteger(r,int32)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetMmCtrlFrameResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetMmCtrlFrameResponse*(b: seq[byte]): Ros1Kuavo_msgsSetMmCtrlFrameResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_msgsSetMmCtrlFrameResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest* = object
  `motor_id`*: int32
  `direction`*: int32
  `save_offset`*: bool
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestMaximumWireBytes* = 9
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodecIdentity* = "UWVMROS1_22ad54033813c5e23840d2a3ed11f76e22e22201e9d95fd0d4e7bc3f1cba5a14"
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestNativeType* = "kuavo_msgs/setMotorEncoderRoundServiceRequest"
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest*(): Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest =
  result.`motor_id` = 0
  result.`direction` = 0
  result.`save_offset` = false
proc writeFields*(value: Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest; w: var Writer) =
  putInteger(w,value.`motor_id`)
  putInteger(w,value.`direction`)
  putBool(w,value.`save_offset`)
proc readRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest*(r: var Reader): Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest =
  result = initRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest()
  result.`motor_id` = getInteger(r,int32)
  result.`direction` = getInteger(r,int32)
  result.`save_offset` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest*(b: seq[byte]): Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest =
  var r = initReader(b,9)
  result = readRos1Kuavo_msgsSetMotorEncoderRoundServiceRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodecIdentity* = "UWVMROS1_006f40ae705ec93b138b9fc1fad8f443a400b94b11d735025923587164221390"
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseNativeType* = "kuavo_msgs/setMotorEncoderRoundServiceResponse"
const Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse*(): Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse*(r: var Reader): Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse =
  result = initRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse*(b: seq[byte]): Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetRuckigPlannerParamsRequest* = object
  `planner_index`*: int8
  `velocity_max`*: seq[float64]
  `velocity_min`*: seq[float64]
  `acceleration_max`*: seq[float64]
  `acceleration_min`*: seq[float64]
  `jerk_max`*: seq[float64]
  `is_sync`*: bool
const Ros1Kuavo_msgsSetRuckigPlannerParamsRequestMaximumWireBytes* = 662
const Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodecIdentity* = "UWVMROS1_262e25da01761ab01bc4fbe8b73524553213097645bbb28bc672655e10e91205"
const Ros1Kuavo_msgsSetRuckigPlannerParamsRequestNativeType* = "kuavo_msgs/setRuckigPlannerParamsRequest"
const Ros1Kuavo_msgsSetRuckigPlannerParamsRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetRuckigPlannerParamsRequest*(): Ros1Kuavo_msgsSetRuckigPlannerParamsRequest =
  result.`planner_index` = 0
  result.`velocity_max` = @[]
  result.`velocity_min` = @[]
  result.`acceleration_max` = @[]
  result.`acceleration_min` = @[]
  result.`jerk_max` = @[]
  result.`is_sync` = false
proc writeFields*(value: Ros1Kuavo_msgsSetRuckigPlannerParamsRequest; w: var Writer) =
  putInteger(w,value.`planner_index`)
  if value.`velocity_max`.len > 16: fail(22)
  putInteger(w,uint32(value.`velocity_max`.len))
  for e in value.`velocity_max`:
    putFloat64(w,e)
  if value.`velocity_min`.len > 16: fail(22)
  putInteger(w,uint32(value.`velocity_min`.len))
  for e in value.`velocity_min`:
    putFloat64(w,e)
  if value.`acceleration_max`.len > 16: fail(22)
  putInteger(w,uint32(value.`acceleration_max`.len))
  for e in value.`acceleration_max`:
    putFloat64(w,e)
  if value.`acceleration_min`.len > 16: fail(22)
  putInteger(w,uint32(value.`acceleration_min`.len))
  for e in value.`acceleration_min`:
    putFloat64(w,e)
  if value.`jerk_max`.len > 16: fail(22)
  putInteger(w,uint32(value.`jerk_max`.len))
  for e in value.`jerk_max`:
    putFloat64(w,e)
  putBool(w,value.`is_sync`)
proc readRos1Kuavo_msgsSetRuckigPlannerParamsRequest*(r: var Reader): Ros1Kuavo_msgsSetRuckigPlannerParamsRequest =
  result = initRos1Kuavo_msgsSetRuckigPlannerParamsRequest()
  result.`planner_index` = getInteger(r,int8)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`velocity_max` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`velocity_max`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`velocity_min` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`velocity_min`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`acceleration_max` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`acceleration_max`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`acceleration_min` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`acceleration_min`[i] = getFloat64(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 16: fail(22)
  let count5 = int(rawcount5)
  result.`jerk_max` = newSeq[float64](count5)
  for i in 0..<count5:
    result.`jerk_max`[i] = getFloat64(r)
  result.`is_sync` = getBool(r)
proc encode*(value: Ros1Kuavo_msgsSetRuckigPlannerParamsRequest): seq[byte] =
  var w = initWriter(662)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetRuckigPlannerParamsRequest*(b: seq[byte]): Ros1Kuavo_msgsSetRuckigPlannerParamsRequest =
  var r = initReader(b,662)
  result = readRos1Kuavo_msgsSetRuckigPlannerParamsRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetRuckigPlannerParamsResponse* = object
  `result`*: bool
  `message`*: string
const Ros1Kuavo_msgsSetRuckigPlannerParamsResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodecIdentity* = "UWVMROS1_eb63f08d9a4e74bf0bb7f9282d89f72c2b92761929a9b0195ec60d59452f6bc7"
const Ros1Kuavo_msgsSetRuckigPlannerParamsResponseNativeType* = "kuavo_msgs/setRuckigPlannerParamsResponse"
const Ros1Kuavo_msgsSetRuckigPlannerParamsResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetRuckigPlannerParamsResponse*(): Ros1Kuavo_msgsSetRuckigPlannerParamsResponse =
  result.`result` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetRuckigPlannerParamsResponse; w: var Writer) =
  putBool(w,value.`result`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetRuckigPlannerParamsResponse*(r: var Reader): Ros1Kuavo_msgsSetRuckigPlannerParamsResponse =
  result = initRos1Kuavo_msgsSetRuckigPlannerParamsResponse()
  result.`result` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetRuckigPlannerParamsResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse*(b: seq[byte]): Ros1Kuavo_msgsSetRuckigPlannerParamsResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSetRuckigPlannerParamsResponse(r)
  finish(r)
type Ros1Kuavo_msgsSetTagIdRequest* = object
  `tag_id`*: int32
const Ros1Kuavo_msgsSetTagIdRequestMaximumWireBytes* = 4
const Ros1Kuavo_msgsSetTagIdRequestCodecIdentity* = "UWVMROS1_0ea1935dec369a91e662aedd2d6927e33662bab5e43298b824f1b7de11f1bd7b"
const Ros1Kuavo_msgsSetTagIdRequestNativeType* = "kuavo_msgs/setTagIdRequest"
const Ros1Kuavo_msgsSetTagIdRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSetTagIdRequest*(): Ros1Kuavo_msgsSetTagIdRequest =
  result.`tag_id` = 0
proc writeFields*(value: Ros1Kuavo_msgsSetTagIdRequest; w: var Writer) =
  putInteger(w,value.`tag_id`)
proc readRos1Kuavo_msgsSetTagIdRequest*(r: var Reader): Ros1Kuavo_msgsSetTagIdRequest =
  result = initRos1Kuavo_msgsSetTagIdRequest()
  result.`tag_id` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsSetTagIdRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetTagIdRequest*(b: seq[byte]): Ros1Kuavo_msgsSetTagIdRequest =
  var r = initReader(b,4)
  result = readRos1Kuavo_msgsSetTagIdRequest(r)
  finish(r)
type Ros1Kuavo_msgsSetTagIdResponse* = object
  `success`*: bool
  `tag_id`*: int32
  `message`*: string
const Ros1Kuavo_msgsSetTagIdResponseMaximumWireBytes* = 265
const Ros1Kuavo_msgsSetTagIdResponseCodecIdentity* = "UWVMROS1_72de7136b0a989ae4cb2c44c7571a66693729fba977030208b9a12361d1450b8"
const Ros1Kuavo_msgsSetTagIdResponseNativeType* = "kuavo_msgs/setTagIdResponse"
const Ros1Kuavo_msgsSetTagIdResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSetTagIdResponse*(): Ros1Kuavo_msgsSetTagIdResponse =
  result.`success` = false
  result.`tag_id` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSetTagIdResponse; w: var Writer) =
  putBool(w,value.`success`)
  putInteger(w,value.`tag_id`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSetTagIdResponse*(r: var Reader): Ros1Kuavo_msgsSetTagIdResponse =
  result = initRos1Kuavo_msgsSetTagIdResponse()
  result.`success` = getBool(r)
  result.`tag_id` = getInteger(r,int32)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSetTagIdResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSetTagIdResponse*(b: seq[byte]): Ros1Kuavo_msgsSetTagIdResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_msgsSetTagIdResponse(r)
  finish(r)
type Ros1Kuavo_msgsSingleStepControlRequest* = object
  `foot_pose_target_trajectories`*: Ros1Kuavo_msgsFootPoseTargetTrajectories
const Ros1Kuavo_msgsSingleStepControlRequestMaximumWireBytes* = 4980
const Ros1Kuavo_msgsSingleStepControlRequestCodecIdentity* = "UWVMROS1_6607efed62ff2f9c23cab328b64b7c35756962b0bbeb1af0977dcfbdbea2a73b"
const Ros1Kuavo_msgsSingleStepControlRequestNativeType* = "kuavo_msgs/singleStepControlRequest"
const Ros1Kuavo_msgsSingleStepControlRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSingleStepControlRequest*(): Ros1Kuavo_msgsSingleStepControlRequest =
  result.`foot_pose_target_trajectories` = initRos1Kuavo_msgsFootPoseTargetTrajectories()
proc writeFields*(value: Ros1Kuavo_msgsSingleStepControlRequest; w: var Writer) =
  writeFields(value.`foot_pose_target_trajectories`,w)
proc readRos1Kuavo_msgsSingleStepControlRequest*(r: var Reader): Ros1Kuavo_msgsSingleStepControlRequest =
  result = initRos1Kuavo_msgsSingleStepControlRequest()
  result.`foot_pose_target_trajectories` = readRos1Kuavo_msgsFootPoseTargetTrajectories(r)
proc encode*(value: Ros1Kuavo_msgsSingleStepControlRequest): seq[byte] =
  var w = initWriter(4980)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSingleStepControlRequest*(b: seq[byte]): Ros1Kuavo_msgsSingleStepControlRequest =
  var r = initReader(b,4980)
  result = readRos1Kuavo_msgsSingleStepControlRequest(r)
  finish(r)
type Ros1Kuavo_msgsSingleStepControlResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSingleStepControlResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSingleStepControlResponseCodecIdentity* = "UWVMROS1_b5c0a376b5738f83b1406e895c5db58d5bf81e20506c39beeaa331793d4b0ed0"
const Ros1Kuavo_msgsSingleStepControlResponseNativeType* = "kuavo_msgs/singleStepControlResponse"
const Ros1Kuavo_msgsSingleStepControlResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSingleStepControlResponse*(): Ros1Kuavo_msgsSingleStepControlResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSingleStepControlResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSingleStepControlResponse*(r: var Reader): Ros1Kuavo_msgsSingleStepControlResponse =
  result = initRos1Kuavo_msgsSingleStepControlResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSingleStepControlResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSingleStepControlResponse*(b: seq[byte]): Ros1Kuavo_msgsSingleStepControlResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSingleStepControlResponse(r)
  finish(r)
type Ros1Kuavo_msgsStairAlignmentSrvRequest* = object
  `tag_id`*: uint8
  `offset_x`*: float64
  `offset_y`*: float64
  `offset_yaw`*: float64
const Ros1Kuavo_msgsStairAlignmentSrvRequestMaximumWireBytes* = 25
const Ros1Kuavo_msgsStairAlignmentSrvRequestCodecIdentity* = "UWVMROS1_b62638d7e9ff883987a217605c039ac71f9bf9b248e42958e41c44518a4db6ba"
const Ros1Kuavo_msgsStairAlignmentSrvRequestNativeType* = "kuavo_msgs/stairAlignmentSrvRequest"
const Ros1Kuavo_msgsStairAlignmentSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsStairAlignmentSrvRequest*(): Ros1Kuavo_msgsStairAlignmentSrvRequest =
  result.`tag_id` = 0
  result.`offset_x` = 0
  result.`offset_y` = 0
  result.`offset_yaw` = 0
proc writeFields*(value: Ros1Kuavo_msgsStairAlignmentSrvRequest; w: var Writer) =
  putInteger(w,value.`tag_id`)
  putFloat64(w,value.`offset_x`)
  putFloat64(w,value.`offset_y`)
  putFloat64(w,value.`offset_yaw`)
proc readRos1Kuavo_msgsStairAlignmentSrvRequest*(r: var Reader): Ros1Kuavo_msgsStairAlignmentSrvRequest =
  result = initRos1Kuavo_msgsStairAlignmentSrvRequest()
  result.`tag_id` = getInteger(r,uint8)
  result.`offset_x` = getFloat64(r)
  result.`offset_y` = getFloat64(r)
  result.`offset_yaw` = getFloat64(r)
proc encode*(value: Ros1Kuavo_msgsStairAlignmentSrvRequest): seq[byte] =
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsStairAlignmentSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsStairAlignmentSrvRequest =
  var r = initReader(b,25)
  result = readRos1Kuavo_msgsStairAlignmentSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsStairAlignmentSrvResponse* = object
  `result`*: bool
  `message`*: string
const Ros1Kuavo_msgsStairAlignmentSrvResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsStairAlignmentSrvResponseCodecIdentity* = "UWVMROS1_66232d726f1351b04e09fefcfa983a97df0f1844f59b584bcc0130360df3648c"
const Ros1Kuavo_msgsStairAlignmentSrvResponseNativeType* = "kuavo_msgs/stairAlignmentSrvResponse"
const Ros1Kuavo_msgsStairAlignmentSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsStairAlignmentSrvResponse*(): Ros1Kuavo_msgsStairAlignmentSrvResponse =
  result.`result` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsStairAlignmentSrvResponse; w: var Writer) =
  putBool(w,value.`result`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsStairAlignmentSrvResponse*(r: var Reader): Ros1Kuavo_msgsStairAlignmentSrvResponse =
  result = initRos1Kuavo_msgsStairAlignmentSrvResponse()
  result.`result` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsStairAlignmentSrvResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsStairAlignmentSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsStairAlignmentSrvResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsStairAlignmentSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsSwitchControllerRequest* = object
  `controller_name`*: string
const Ros1Kuavo_msgsSwitchControllerRequestMaximumWireBytes* = 260
const Ros1Kuavo_msgsSwitchControllerRequestCodecIdentity* = "UWVMROS1_6aa7e95aa6baff80769d12dd04202b9b7ef3b2fcff53f7427601d387f5f52d7a"
const Ros1Kuavo_msgsSwitchControllerRequestNativeType* = "kuavo_msgs/switchControllerRequest"
const Ros1Kuavo_msgsSwitchControllerRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSwitchControllerRequest*(): Ros1Kuavo_msgsSwitchControllerRequest =
  result.`controller_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsSwitchControllerRequest; w: var Writer) =
  putString(w,value.`controller_name`,256)
proc readRos1Kuavo_msgsSwitchControllerRequest*(r: var Reader): Ros1Kuavo_msgsSwitchControllerRequest =
  result = initRos1Kuavo_msgsSwitchControllerRequest()
  result.`controller_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSwitchControllerRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSwitchControllerRequest*(b: seq[byte]): Ros1Kuavo_msgsSwitchControllerRequest =
  var r = initReader(b,260)
  result = readRos1Kuavo_msgsSwitchControllerRequest(r)
  finish(r)
type Ros1Kuavo_msgsSwitchControllerResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Kuavo_msgsSwitchControllerResponseMaximumWireBytes* = 261
const Ros1Kuavo_msgsSwitchControllerResponseCodecIdentity* = "UWVMROS1_f6ade06123cc21d53344151f9cd39e80ac7722d032b398f25432ba323bdfec69"
const Ros1Kuavo_msgsSwitchControllerResponseNativeType* = "kuavo_msgs/switchControllerResponse"
const Ros1Kuavo_msgsSwitchControllerResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSwitchControllerResponse*(): Ros1Kuavo_msgsSwitchControllerResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_msgsSwitchControllerResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_msgsSwitchControllerResponse*(r: var Reader): Ros1Kuavo_msgsSwitchControllerResponse =
  result = initRos1Kuavo_msgsSwitchControllerResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSwitchControllerResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSwitchControllerResponse*(b: seq[byte]): Ros1Kuavo_msgsSwitchControllerResponse =
  var r = initReader(b,261)
  result = readRos1Kuavo_msgsSwitchControllerResponse(r)
  finish(r)
type Ros1Kuavo_msgsSwitchGaitByName* = object
  `header`*: Ros1Std_msgsHeader
  `gait_name`*: string
const Ros1Kuavo_msgsSwitchGaitByNameMaximumWireBytes* = 532
const Ros1Kuavo_msgsSwitchGaitByNameCodecIdentity* = "UWVMROS1_7afbe1b0fa72af5ea4e9ac707669866c77e05e941c0491e17247b9a569c05944"
const Ros1Kuavo_msgsSwitchGaitByNameNativeType* = "kuavo_msgs/switchGaitByName"
const Ros1Kuavo_msgsSwitchGaitByNameNativeIdentity* = ""
proc initRos1Kuavo_msgsSwitchGaitByName*(): Ros1Kuavo_msgsSwitchGaitByName =
  result.`header` = initRos1Std_msgsHeader()
  result.`gait_name` = ""
proc writeFields*(value: Ros1Kuavo_msgsSwitchGaitByName; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`gait_name`,256)
proc readRos1Kuavo_msgsSwitchGaitByName*(r: var Reader): Ros1Kuavo_msgsSwitchGaitByName =
  result = initRos1Kuavo_msgsSwitchGaitByName()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`gait_name` = getString(r,256)
proc encode*(value: Ros1Kuavo_msgsSwitchGaitByName): seq[byte] =
  var w = initWriter(532)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSwitchGaitByName*(b: seq[byte]): Ros1Kuavo_msgsSwitchGaitByName =
  var r = initReader(b,532)
  result = readRos1Kuavo_msgsSwitchGaitByName(r)
  finish(r)
type Ros1Kuavo_msgsSwitchToNextControllerRequest* = object
const Ros1Kuavo_msgsSwitchToNextControllerRequestMaximumWireBytes* = 0
const Ros1Kuavo_msgsSwitchToNextControllerRequestCodecIdentity* = "UWVMROS1_73be6d8d17af6f6d92add04f8b7a5a2767e2639ddcb3d63b336320f35327950e"
const Ros1Kuavo_msgsSwitchToNextControllerRequestNativeType* = "kuavo_msgs/switchToNextControllerRequest"
const Ros1Kuavo_msgsSwitchToNextControllerRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsSwitchToNextControllerRequest*(): Ros1Kuavo_msgsSwitchToNextControllerRequest =
  discard
proc writeFields*(value: Ros1Kuavo_msgsSwitchToNextControllerRequest; w: var Writer) =
  discard
proc readRos1Kuavo_msgsSwitchToNextControllerRequest*(r: var Reader): Ros1Kuavo_msgsSwitchToNextControllerRequest =
  result = initRos1Kuavo_msgsSwitchToNextControllerRequest()
proc encode*(value: Ros1Kuavo_msgsSwitchToNextControllerRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSwitchToNextControllerRequest*(b: seq[byte]): Ros1Kuavo_msgsSwitchToNextControllerRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_msgsSwitchToNextControllerRequest(r)
  finish(r)
type Ros1Kuavo_msgsSwitchToNextControllerResponse* = object
  `success`*: bool
  `message`*: string
  `current_controller`*: string
  `next_controller`*: string
  `current_index`*: int32
  `next_index`*: int32
const Ros1Kuavo_msgsSwitchToNextControllerResponseMaximumWireBytes* = 789
const Ros1Kuavo_msgsSwitchToNextControllerResponseCodecIdentity* = "UWVMROS1_968c3f7bbfc784eb98ea0ea2dddf0ea4f80a71ffcc8d95f193c819b218e8702f"
const Ros1Kuavo_msgsSwitchToNextControllerResponseNativeType* = "kuavo_msgs/switchToNextControllerResponse"
const Ros1Kuavo_msgsSwitchToNextControllerResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsSwitchToNextControllerResponse*(): Ros1Kuavo_msgsSwitchToNextControllerResponse =
  result.`success` = false
  result.`message` = ""
  result.`current_controller` = ""
  result.`next_controller` = ""
  result.`current_index` = 0
  result.`next_index` = 0
proc writeFields*(value: Ros1Kuavo_msgsSwitchToNextControllerResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`current_controller`,256)
  putString(w,value.`next_controller`,256)
  putInteger(w,value.`current_index`)
  putInteger(w,value.`next_index`)
proc readRos1Kuavo_msgsSwitchToNextControllerResponse*(r: var Reader): Ros1Kuavo_msgsSwitchToNextControllerResponse =
  result = initRos1Kuavo_msgsSwitchToNextControllerResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`current_controller` = getString(r,256)
  result.`next_controller` = getString(r,256)
  result.`current_index` = getInteger(r,int32)
  result.`next_index` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsSwitchToNextControllerResponse): seq[byte] =
  var w = initWriter(789)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsSwitchToNextControllerResponse*(b: seq[byte]): Ros1Kuavo_msgsSwitchToNextControllerResponse =
  var r = initReader(b,789)
  result = readRos1Kuavo_msgsSwitchToNextControllerResponse(r)
  finish(r)
type Ros1Kuavo_msgsTagDataArray* = object
  `tag_ids`*: seq[int32]
  `tag_poses`*: seq[Ros1Geometry_msgsPose]
const Ros1Kuavo_msgsTagDataArrayMaximumWireBytes* = 520
const Ros1Kuavo_msgsTagDataArrayCodecIdentity* = "UWVMROS1_bd1ca7cda22d48d12ee69b784abdf507a8271e04e0555a9372cc5f5ea54fb486"
const Ros1Kuavo_msgsTagDataArrayNativeType* = "kuavo_msgs/tagDataArray"
const Ros1Kuavo_msgsTagDataArrayNativeIdentity* = ""
proc initRos1Kuavo_msgsTagDataArray*(): Ros1Kuavo_msgsTagDataArray =
  result.`tag_ids` = @[]
  result.`tag_poses` = @[]
proc writeFields*(value: Ros1Kuavo_msgsTagDataArray; w: var Writer) =
  if value.`tag_ids`.len > 16: fail(22)
  putInteger(w,uint32(value.`tag_ids`.len))
  for e in value.`tag_ids`:
    putInteger(w,e)
  if value.`tag_poses`.len > 8: fail(22)
  putInteger(w,uint32(value.`tag_poses`.len))
  for e in value.`tag_poses`:
    writeFields(e,w)
proc readRos1Kuavo_msgsTagDataArray*(r: var Reader): Ros1Kuavo_msgsTagDataArray =
  result = initRos1Kuavo_msgsTagDataArray()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`tag_ids` = newSeq[int32](count0)
  for i in 0..<count0:
    result.`tag_ids`[i] = getInteger(r,int32)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`tag_poses` = newSeq[Ros1Geometry_msgsPose](count1)
  for i in 0..<count1:
    result.`tag_poses`[i] = readRos1Geometry_msgsPose(r)
proc encode*(value: Ros1Kuavo_msgsTagDataArray): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTagDataArray*(b: seq[byte]): Ros1Kuavo_msgsTagDataArray =
  var r = initReader(b,520)
  result = readRos1Kuavo_msgsTagDataArray(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPoseCmd* = object
  `hand_poses`*: Ros1Kuavo_msgsTwoArmHandPose
  `use_custom_ik_param`*: bool
  `joint_angles_as_q0`*: bool
  `ik_param`*: Ros1Kuavo_msgsIkSolveParam
  `frame`*: int32
const Ros1Kuavo_msgsTwoArmHandPoseCmdMaximumWireBytes* = 615
const Ros1Kuavo_msgsTwoArmHandPoseCmdCodecIdentity* = "UWVMROS1_b2de00afe4c247abce8f642ee285e0944e35ea3cf4107b4dacb4b004c03dfbe6"
const Ros1Kuavo_msgsTwoArmHandPoseCmdNativeType* = "kuavo_msgs/twoArmHandPoseCmd"
const Ros1Kuavo_msgsTwoArmHandPoseCmdNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPoseCmd*(): Ros1Kuavo_msgsTwoArmHandPoseCmd =
  result.`hand_poses` = initRos1Kuavo_msgsTwoArmHandPose()
  result.`use_custom_ik_param` = false
  result.`joint_angles_as_q0` = false
  result.`ik_param` = initRos1Kuavo_msgsIkSolveParam()
  result.`frame` = 0
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPoseCmd; w: var Writer) =
  writeFields(value.`hand_poses`,w)
  putBool(w,value.`use_custom_ik_param`)
  putBool(w,value.`joint_angles_as_q0`)
  writeFields(value.`ik_param`,w)
  putInteger(w,value.`frame`)
proc readRos1Kuavo_msgsTwoArmHandPoseCmd*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPoseCmd =
  result = initRos1Kuavo_msgsTwoArmHandPoseCmd()
  result.`hand_poses` = readRos1Kuavo_msgsTwoArmHandPose(r)
  result.`use_custom_ik_param` = getBool(r)
  result.`joint_angles_as_q0` = getBool(r)
  result.`ik_param` = readRos1Kuavo_msgsIkSolveParam(r)
  result.`frame` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPoseCmd): seq[byte] =
  var w = initWriter(615)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPoseCmd*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPoseCmd =
  var r = initReader(b,615)
  result = readRos1Kuavo_msgsTwoArmHandPoseCmd(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPoseFree* = object
  `header`*: Ros1Std_msgsHeader
  `left_pose`*: Ros1Kuavo_msgsArmHandPoseFree
  `right_pose`*: Ros1Kuavo_msgsArmHandPoseFree
const Ros1Kuavo_msgsTwoArmHandPoseFreeMaximumWireBytes* = 696
const Ros1Kuavo_msgsTwoArmHandPoseFreeCodecIdentity* = "UWVMROS1_a4d9e75be28cdbbcf5b930ca7a117dcfb16dc413200391e2bb2dee903a05607d"
const Ros1Kuavo_msgsTwoArmHandPoseFreeNativeType* = "kuavo_msgs/twoArmHandPoseFree"
const Ros1Kuavo_msgsTwoArmHandPoseFreeNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPoseFree*(): Ros1Kuavo_msgsTwoArmHandPoseFree =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_pose` = initRos1Kuavo_msgsArmHandPoseFree()
  result.`right_pose` = initRos1Kuavo_msgsArmHandPoseFree()
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPoseFree; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_pose`,w)
  writeFields(value.`right_pose`,w)
proc readRos1Kuavo_msgsTwoArmHandPoseFree*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPoseFree =
  result = initRos1Kuavo_msgsTwoArmHandPoseFree()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`left_pose` = readRos1Kuavo_msgsArmHandPoseFree(r)
  result.`right_pose` = readRos1Kuavo_msgsArmHandPoseFree(r)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPoseFree): seq[byte] =
  var w = initWriter(696)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPoseFree*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPoseFree =
  var r = initReader(b,696)
  result = readRos1Kuavo_msgsTwoArmHandPoseFree(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPoseCmdFree* = object
  `hand_poses`*: Ros1Kuavo_msgsTwoArmHandPoseFree
  `use_custom_ik_param`*: bool
  `joint_angles_as_q0`*: bool
  `ik_param`*: Ros1Kuavo_msgsIkSolveParam
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeMaximumWireBytes* = 763
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeCodecIdentity* = "UWVMROS1_eaa74e02440a8bd43aa6d75eac26651041af7b84602b72cc17d2cd73c40b3d0d"
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeNativeType* = "kuavo_msgs/twoArmHandPoseCmdFree"
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPoseCmdFree*(): Ros1Kuavo_msgsTwoArmHandPoseCmdFree =
  result.`hand_poses` = initRos1Kuavo_msgsTwoArmHandPoseFree()
  result.`use_custom_ik_param` = false
  result.`joint_angles_as_q0` = false
  result.`ik_param` = initRos1Kuavo_msgsIkSolveParam()
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdFree; w: var Writer) =
  writeFields(value.`hand_poses`,w)
  putBool(w,value.`use_custom_ik_param`)
  putBool(w,value.`joint_angles_as_q0`)
  writeFields(value.`ik_param`,w)
proc readRos1Kuavo_msgsTwoArmHandPoseCmdFree*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPoseCmdFree =
  result = initRos1Kuavo_msgsTwoArmHandPoseCmdFree()
  result.`hand_poses` = readRos1Kuavo_msgsTwoArmHandPoseFree(r)
  result.`use_custom_ik_param` = getBool(r)
  result.`joint_angles_as_q0` = getBool(r)
  result.`ik_param` = readRos1Kuavo_msgsIkSolveParam(r)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdFree): seq[byte] =
  var w = initWriter(763)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPoseCmdFree*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPoseCmdFree =
  var r = initReader(b,763)
  result = readRos1Kuavo_msgsTwoArmHandPoseCmdFree(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest* = object
  `twoArmHandPoseCmdFreeRequest`*: Ros1Kuavo_msgsTwoArmHandPoseCmdFree
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestMaximumWireBytes* = 763
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodecIdentity* = "UWVMROS1_6e9adfdc52db0e35c32cf3bc87ca6a02f393833e750c8282b3a6f94ecbc4c144"
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestNativeType* = "kuavo_msgs/twoArmHandPoseCmdFreeSrvRequest"
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest*(): Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest =
  result.`twoArmHandPoseCmdFreeRequest` = initRos1Kuavo_msgsTwoArmHandPoseCmdFree()
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest; w: var Writer) =
  writeFields(value.`twoArmHandPoseCmdFreeRequest`,w)
proc readRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest =
  result = initRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest()
  result.`twoArmHandPoseCmdFreeRequest` = readRos1Kuavo_msgsTwoArmHandPoseCmdFree(r)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest): seq[byte] =
  var w = initWriter(763)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest =
  var r = initReader(b,763)
  result = readRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse* = object
  `success`*: bool
  `with_torso`*: bool
  `q_arm`*: seq[float64]
  `q_torso`*: seq[float64]
  `time_cost`*: float64
  `hand_poses`*: Ros1Kuavo_msgsTwoArmHandPoseFree
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseMaximumWireBytes* = 970
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodecIdentity* = "UWVMROS1_c8c8fe2a765c984ede1c8607cb907de1fa060c9e79ad920e0f495e7bd8c82a31"
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseNativeType* = "kuavo_msgs/twoArmHandPoseCmdFreeSrvResponse"
const Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse*(): Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse =
  result.`success` = false
  result.`with_torso` = false
  result.`q_arm` = @[]
  result.`q_torso` = @[]
  result.`time_cost` = 0
  result.`hand_poses` = initRos1Kuavo_msgsTwoArmHandPoseFree()
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
  putBool(w,value.`with_torso`)
  if value.`q_arm`.len > 16: fail(22)
  putInteger(w,uint32(value.`q_arm`.len))
  for e in value.`q_arm`:
    putFloat64(w,e)
  if value.`q_torso`.len > 16: fail(22)
  putInteger(w,uint32(value.`q_torso`.len))
  for e in value.`q_torso`:
    putFloat64(w,e)
  putFloat64(w,value.`time_cost`)
  writeFields(value.`hand_poses`,w)
proc readRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse =
  result = initRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse()
  result.`success` = getBool(r)
  result.`with_torso` = getBool(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`q_arm` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`q_arm`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`q_torso` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`q_torso`[i] = getFloat64(r)
  result.`time_cost` = getFloat64(r)
  result.`hand_poses` = readRos1Kuavo_msgsTwoArmHandPoseFree(r)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse): seq[byte] =
  var w = initWriter(970)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse =
  var r = initReader(b,970)
  result = readRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest* = object
  `twoArmHandPoseCmdRequest`*: Ros1Kuavo_msgsTwoArmHandPoseCmd
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestMaximumWireBytes* = 615
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodecIdentity* = "UWVMROS1_14d5004996c8ab84c1e5e9c1259bd1d201e2826be4a5dda14c240f7e02ac0bbd"
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestNativeType* = "kuavo_msgs/twoArmHandPoseCmdSrvRequest"
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest*(): Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest =
  result.`twoArmHandPoseCmdRequest` = initRos1Kuavo_msgsTwoArmHandPoseCmd()
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest; w: var Writer) =
  writeFields(value.`twoArmHandPoseCmdRequest`,w)
proc readRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest =
  result = initRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest()
  result.`twoArmHandPoseCmdRequest` = readRos1Kuavo_msgsTwoArmHandPoseCmd(r)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest): seq[byte] =
  var w = initWriter(615)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest =
  var r = initReader(b,615)
  result = readRos1Kuavo_msgsTwoArmHandPoseCmdSrvRequest(r)
  finish(r)
type Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse* = object
  `success`*: bool
  `with_torso`*: bool
  `q_arm`*: seq[float64]
  `q_torso`*: seq[float64]
  `time_cost`*: float64
  `error_reason`*: string
  `hand_poses`*: Ros1Kuavo_msgsTwoArmHandPose
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseMaximumWireBytes* = 1078
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodecIdentity* = "UWVMROS1_fab07467cba381d8e73b0c9c574fe029b01ea29a0673de186eddee01ed7057eb"
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseNativeType* = "kuavo_msgs/twoArmHandPoseCmdSrvResponse"
const Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseNativeIdentity* = ""
proc initRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse*(): Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse =
  result.`success` = false
  result.`with_torso` = false
  result.`q_arm` = @[]
  result.`q_torso` = @[]
  result.`time_cost` = 0
  result.`error_reason` = ""
  result.`hand_poses` = initRos1Kuavo_msgsTwoArmHandPose()
proc writeFields*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse; w: var Writer) =
  putBool(w,value.`success`)
  putBool(w,value.`with_torso`)
  if value.`q_arm`.len > 16: fail(22)
  putInteger(w,uint32(value.`q_arm`.len))
  for e in value.`q_arm`:
    putFloat64(w,e)
  if value.`q_torso`.len > 16: fail(22)
  putInteger(w,uint32(value.`q_torso`.len))
  for e in value.`q_torso`:
    putFloat64(w,e)
  putFloat64(w,value.`time_cost`)
  putString(w,value.`error_reason`,256)
  writeFields(value.`hand_poses`,w)
proc readRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse*(r: var Reader): Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse =
  result = initRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse()
  result.`success` = getBool(r)
  result.`with_torso` = getBool(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`q_arm` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`q_arm`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`q_torso` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`q_torso`[i] = getFloat64(r)
  result.`time_cost` = getFloat64(r)
  result.`error_reason` = getString(r,256)
  result.`hand_poses` = readRos1Kuavo_msgsTwoArmHandPose(r)
proc encode*(value: Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse): seq[byte] =
  var w = initWriter(1078)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse*(b: seq[byte]): Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse =
  var r = initReader(b,1078)
  result = readRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse(r)
  finish(r)
type Ros1Kuavo_msgsXsensePoseInfo* = object
  `name`*: string
  `segment_id`*: uint32
  `position`*: Ros1Geometry_msgsPoint
  `orientation`*: Ros1Geometry_msgsQuaternion
const Ros1Kuavo_msgsXsensePoseInfoMaximumWireBytes* = 320
const Ros1Kuavo_msgsXsensePoseInfoCodecIdentity* = "UWVMROS1_efeb05e63c1cca8ac28ee7c2fc9f1a2b12d95c3b96994626eb1bc2ff5e727c84"
const Ros1Kuavo_msgsXsensePoseInfoNativeType* = "kuavo_msgs/xsensePoseInfo"
const Ros1Kuavo_msgsXsensePoseInfoNativeIdentity* = ""
proc initRos1Kuavo_msgsXsensePoseInfo*(): Ros1Kuavo_msgsXsensePoseInfo =
  result.`name` = ""
  result.`segment_id` = 0
  result.`position` = initRos1Geometry_msgsPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Kuavo_msgsXsensePoseInfo; w: var Writer) =
  putString(w,value.`name`,256)
  putInteger(w,value.`segment_id`)
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos1Kuavo_msgsXsensePoseInfo*(r: var Reader): Ros1Kuavo_msgsXsensePoseInfo =
  result = initRos1Kuavo_msgsXsensePoseInfo()
  result.`name` = getString(r,256)
  result.`segment_id` = getInteger(r,uint32)
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Kuavo_msgsXsensePoseInfo): seq[byte] =
  var w = initWriter(320)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsXsensePoseInfo*(b: seq[byte]): Ros1Kuavo_msgsXsensePoseInfo =
  var r = initReader(b,320)
  result = readRos1Kuavo_msgsXsensePoseInfo(r)
  finish(r)
type Ros1Kuavo_msgsXsensePoseInfoList* = object
  `header`*: Ros1Std_msgsHeader
  `poses`*: seq[Ros1Kuavo_msgsXsensePoseInfo]
const Ros1Kuavo_msgsXsensePoseInfoListMaximumWireBytes* = 2836
const Ros1Kuavo_msgsXsensePoseInfoListCodecIdentity* = "UWVMROS1_738bca9fd4602bcc5a2b44b7b00405a07c89a8d056029f8afbf3b116165725f8"
const Ros1Kuavo_msgsXsensePoseInfoListNativeType* = "kuavo_msgs/xsensePoseInfoList"
const Ros1Kuavo_msgsXsensePoseInfoListNativeIdentity* = ""
proc initRos1Kuavo_msgsXsensePoseInfoList*(): Ros1Kuavo_msgsXsensePoseInfoList =
  result.`header` = initRos1Std_msgsHeader()
  result.`poses` = @[]
proc writeFields*(value: Ros1Kuavo_msgsXsensePoseInfoList; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`poses`.len > 8: fail(22)
  putInteger(w,uint32(value.`poses`.len))
  for e in value.`poses`:
    writeFields(e,w)
proc readRos1Kuavo_msgsXsensePoseInfoList*(r: var Reader): Ros1Kuavo_msgsXsensePoseInfoList =
  result = initRos1Kuavo_msgsXsensePoseInfoList()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`poses` = newSeq[Ros1Kuavo_msgsXsensePoseInfo](count1)
  for i in 0..<count1:
    result.`poses`[i] = readRos1Kuavo_msgsXsensePoseInfo(r)
proc encode*(value: Ros1Kuavo_msgsXsensePoseInfoList): seq[byte] =
  var w = initWriter(2836)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsXsensePoseInfoList*(b: seq[byte]): Ros1Kuavo_msgsXsensePoseInfoList =
  var r = initReader(b,2836)
  result = readRos1Kuavo_msgsXsensePoseInfoList(r)
  finish(r)
type Ros1Kuavo_msgsXsensePoseRetarget* = object
  `header`*: Ros1Std_msgsHeader
  `base_link_pose`*: Ros1Geometry_msgsPose
  `base_velocity`*: array[6,float64]
  `joint_position`*: array[27,float64]
  `joint_velocity`*: array[27,float64]
  `end_effector_poses`*: array[4,Ros1Geometry_msgsPoint]
const Ros1Kuavo_msgsXsensePoseRetargetMaximumWireBytes* = 904
const Ros1Kuavo_msgsXsensePoseRetargetCodecIdentity* = "UWVMROS1_1ba734c87905a6a83cfee0bb39f2e55267d51768be9ec64ae6ac652ebec559eb"
const Ros1Kuavo_msgsXsensePoseRetargetNativeType* = "kuavo_msgs/xsensePoseRetarget"
const Ros1Kuavo_msgsXsensePoseRetargetNativeIdentity* = ""
proc initRos1Kuavo_msgsXsensePoseRetarget*(): Ros1Kuavo_msgsXsensePoseRetarget =
  result.`header` = initRos1Std_msgsHeader()
  result.`base_link_pose` = initRos1Geometry_msgsPose()
  result.`base_velocity` = [0,0,0,0,0,0]
  result.`joint_position` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`joint_velocity` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`end_effector_poses` = [initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint(),initRos1Geometry_msgsPoint()]
proc writeFields*(value: Ros1Kuavo_msgsXsensePoseRetarget; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`base_link_pose`,w)
  for e in value.`base_velocity`:
    putFloat64(w,e)
  for e in value.`joint_position`:
    putFloat64(w,e)
  for e in value.`joint_velocity`:
    putFloat64(w,e)
  for e in value.`end_effector_poses`:
    writeFields(e,w)
proc readRos1Kuavo_msgsXsensePoseRetarget*(r: var Reader): Ros1Kuavo_msgsXsensePoseRetarget =
  result = initRos1Kuavo_msgsXsensePoseRetarget()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`base_link_pose` = readRos1Geometry_msgsPose(r)
  let count2 = 6
  for i in 0..<count2:
    result.`base_velocity`[i] = getFloat64(r)
  let count3 = 27
  for i in 0..<count3:
    result.`joint_position`[i] = getFloat64(r)
  let count4 = 27
  for i in 0..<count4:
    result.`joint_velocity`[i] = getFloat64(r)
  let count5 = 4
  for i in 0..<count5:
    result.`end_effector_poses`[i] = readRos1Geometry_msgsPoint(r)
proc encode*(value: Ros1Kuavo_msgsXsensePoseRetarget): seq[byte] =
  var w = initWriter(904)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsXsensePoseRetarget*(b: seq[byte]): Ros1Kuavo_msgsXsensePoseRetarget =
  var r = initReader(b,904)
  result = readRos1Kuavo_msgsXsensePoseRetarget(r)
  finish(r)
type Ros1Kuavo_msgsYoloOutputData* = object
  `class_name`*: string
  `class_id`*: int32
  `confidence`*: float32
  `x_pos`*: float32
  `y_pos`*: float32
  `height`*: float32
  `width`*: float32
  `area_ratio`*: float32
const Ros1Kuavo_msgsYoloOutputDataMaximumWireBytes* = 288
const Ros1Kuavo_msgsYoloOutputDataCodecIdentity* = "UWVMROS1_9ba281150bdac894cd7d0a603896f7b145be3519c05b2748884c884ab39abe05"
const Ros1Kuavo_msgsYoloOutputDataNativeType* = "kuavo_msgs/yoloOutputData"
const Ros1Kuavo_msgsYoloOutputDataNativeIdentity* = ""
proc initRos1Kuavo_msgsYoloOutputData*(): Ros1Kuavo_msgsYoloOutputData =
  result.`class_name` = ""
  result.`class_id` = 0
  result.`confidence` = 0
  result.`x_pos` = 0
  result.`y_pos` = 0
  result.`height` = 0
  result.`width` = 0
  result.`area_ratio` = 0
proc writeFields*(value: Ros1Kuavo_msgsYoloOutputData; w: var Writer) =
  putString(w,value.`class_name`,256)
  putInteger(w,value.`class_id`)
  putFloat32(w,value.`confidence`)
  putFloat32(w,value.`x_pos`)
  putFloat32(w,value.`y_pos`)
  putFloat32(w,value.`height`)
  putFloat32(w,value.`width`)
  putFloat32(w,value.`area_ratio`)
proc readRos1Kuavo_msgsYoloOutputData*(r: var Reader): Ros1Kuavo_msgsYoloOutputData =
  result = initRos1Kuavo_msgsYoloOutputData()
  result.`class_name` = getString(r,256)
  result.`class_id` = getInteger(r,int32)
  result.`confidence` = getFloat32(r)
  result.`x_pos` = getFloat32(r)
  result.`y_pos` = getFloat32(r)
  result.`height` = getFloat32(r)
  result.`width` = getFloat32(r)
  result.`area_ratio` = getFloat32(r)
proc encode*(value: Ros1Kuavo_msgsYoloOutputData): seq[byte] =
  var w = initWriter(288)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsYoloOutputData*(b: seq[byte]): Ros1Kuavo_msgsYoloOutputData =
  var r = initReader(b,288)
  result = readRos1Kuavo_msgsYoloOutputData(r)
  finish(r)
type Ros1Kuavo_msgsYoloDetection* = object
  `header`*: Ros1Std_msgsHeader
  `data`*: seq[Ros1Kuavo_msgsYoloOutputData]
const Ros1Kuavo_msgsYoloDetectionMaximumWireBytes* = 2580
const Ros1Kuavo_msgsYoloDetectionCodecIdentity* = "UWVMROS1_95ad858fbc422a7f9b3ef00b11c78e07e859a76983e69e57c7ce88c88626b3d6"
const Ros1Kuavo_msgsYoloDetectionNativeType* = "kuavo_msgs/yoloDetection"
const Ros1Kuavo_msgsYoloDetectionNativeIdentity* = ""
proc initRos1Kuavo_msgsYoloDetection*(): Ros1Kuavo_msgsYoloDetection =
  result.`header` = initRos1Std_msgsHeader()
  result.`data` = @[]
proc writeFields*(value: Ros1Kuavo_msgsYoloDetection; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`data`.len > 8: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos1Kuavo_msgsYoloDetection*(r: var Reader): Ros1Kuavo_msgsYoloDetection =
  result = initRos1Kuavo_msgsYoloDetection()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`data` = newSeq[Ros1Kuavo_msgsYoloOutputData](count1)
  for i in 0..<count1:
    result.`data`[i] = readRos1Kuavo_msgsYoloOutputData(r)
proc encode*(value: Ros1Kuavo_msgsYoloDetection): seq[byte] =
  var w = initWriter(2580)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_msgsYoloDetection*(b: seq[byte]): Ros1Kuavo_msgsYoloDetection =
  var r = initReader(b,2580)
  result = readRos1Kuavo_msgsYoloDetection(r)
  finish(r)
type Ros1Kuavo_pico_gmrAmpJoyRouteRequest* = object
  `action`*: uint8
  `manager_epoch`*: string
  `route_generation`*: uint64
  `reason`*: uint8
  `controller_event_revision`*: uint64
  `controller_event_stamp`*: Ros1Time
  `from_controller`*: string
  `to_controller`*: string
const Ros1Kuavo_pico_gmrAmpJoyRouteRequestMaximumWireBytes* = 806
const Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodecIdentity* = "UWVMROS1_b496e1da35802ea32c834576fa6d1565bf4aafebd82e2e953654e32614e19dbc"
const Ros1Kuavo_pico_gmrAmpJoyRouteRequestNativeType* = "kuavo_pico_gmr/AmpJoyRouteRequest"
const Ros1Kuavo_pico_gmrAmpJoyRouteRequestNativeIdentity* = ""
const Ros1Kuavo_pico_gmrAmpJoyRouteRequest_ACTION_PREPARE*: uint8 = 1'u8
const Ros1Kuavo_pico_gmrAmpJoyRouteRequest_ACTION_STATUS*: uint8 = 2'u8
const Ros1Kuavo_pico_gmrAmpJoyRouteRequest_ACTION_ABORT*: uint8 = 3'u8
const Ros1Kuavo_pico_gmrAmpJoyRouteRequest_REASON_CONTROLLER_EVENT*: uint8 = 1'u8
const Ros1Kuavo_pico_gmrAmpJoyRouteRequest_REASON_CONTROLLER_QUERY*: uint8 = 2'u8
const Ros1Kuavo_pico_gmrAmpJoyRouteRequest_REASON_SET_TOPIC_RECOVERY*: uint8 = 3'u8
const Ros1Kuavo_pico_gmrAmpJoyRouteRequest_REASON_CONVERTER_RECOVERY*: uint8 = 4'u8
proc initRos1Kuavo_pico_gmrAmpJoyRouteRequest*(): Ros1Kuavo_pico_gmrAmpJoyRouteRequest =
  result.`action` = 0
  result.`manager_epoch` = ""
  result.`route_generation` = 0
  result.`reason` = 0
  result.`controller_event_revision` = 0
  result.`controller_event_stamp` = initRos1Time()
  result.`from_controller` = ""
  result.`to_controller` = ""
proc writeFields*(value: Ros1Kuavo_pico_gmrAmpJoyRouteRequest; w: var Writer) =
  putInteger(w,value.`action`)
  putString(w,value.`manager_epoch`,256)
  putInteger(w,value.`route_generation`)
  putInteger(w,value.`reason`)
  putInteger(w,value.`controller_event_revision`)
  writeFields(value.`controller_event_stamp`,w)
  putString(w,value.`from_controller`,256)
  putString(w,value.`to_controller`,256)
proc readRos1Kuavo_pico_gmrAmpJoyRouteRequest*(r: var Reader): Ros1Kuavo_pico_gmrAmpJoyRouteRequest =
  result = initRos1Kuavo_pico_gmrAmpJoyRouteRequest()
  result.`action` = getInteger(r,uint8)
  result.`manager_epoch` = getString(r,256)
  result.`route_generation` = getInteger(r,uint64)
  result.`reason` = getInteger(r,uint8)
  result.`controller_event_revision` = getInteger(r,uint64)
  result.`controller_event_stamp` = readRos1Time(r)
  result.`from_controller` = getString(r,256)
  result.`to_controller` = getString(r,256)
proc encode*(value: Ros1Kuavo_pico_gmrAmpJoyRouteRequest): seq[byte] =
  var w = initWriter(806)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_pico_gmrAmpJoyRouteRequest*(b: seq[byte]): Ros1Kuavo_pico_gmrAmpJoyRouteRequest =
  var r = initReader(b,806)
  result = readRos1Kuavo_pico_gmrAmpJoyRouteRequest(r)
  finish(r)
type Ros1Kuavo_pico_gmrAmpJoyRouteResponse* = object
  `success`*: bool
  `ready`*: bool
  `target_connected`*: bool
  `local_barrier_established`*: bool
  `output_button_count`*: uint8
  `manager_epoch`*: string
  `route_generation`*: uint64
  `message`*: string
const Ros1Kuavo_pico_gmrAmpJoyRouteResponseMaximumWireBytes* = 533
const Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodecIdentity* = "UWVMROS1_8c5184c18056610e7b6bf1e6edd2a3faf33f7335df94bce91c04968ef3928014"
const Ros1Kuavo_pico_gmrAmpJoyRouteResponseNativeType* = "kuavo_pico_gmr/AmpJoyRouteResponse"
const Ros1Kuavo_pico_gmrAmpJoyRouteResponseNativeIdentity* = ""
proc initRos1Kuavo_pico_gmrAmpJoyRouteResponse*(): Ros1Kuavo_pico_gmrAmpJoyRouteResponse =
  result.`success` = false
  result.`ready` = false
  result.`target_connected` = false
  result.`local_barrier_established` = false
  result.`output_button_count` = 0
  result.`manager_epoch` = ""
  result.`route_generation` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_pico_gmrAmpJoyRouteResponse; w: var Writer) =
  putBool(w,value.`success`)
  putBool(w,value.`ready`)
  putBool(w,value.`target_connected`)
  putBool(w,value.`local_barrier_established`)
  putInteger(w,value.`output_button_count`)
  putString(w,value.`manager_epoch`,256)
  putInteger(w,value.`route_generation`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_pico_gmrAmpJoyRouteResponse*(r: var Reader): Ros1Kuavo_pico_gmrAmpJoyRouteResponse =
  result = initRos1Kuavo_pico_gmrAmpJoyRouteResponse()
  result.`success` = getBool(r)
  result.`ready` = getBool(r)
  result.`target_connected` = getBool(r)
  result.`local_barrier_established` = getBool(r)
  result.`output_button_count` = getInteger(r,uint8)
  result.`manager_epoch` = getString(r,256)
  result.`route_generation` = getInteger(r,uint64)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_pico_gmrAmpJoyRouteResponse): seq[byte] =
  var w = initWriter(533)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_pico_gmrAmpJoyRouteResponse*(b: seq[byte]): Ros1Kuavo_pico_gmrAmpJoyRouteResponse =
  var r = initReader(b,533)
  result = readRos1Kuavo_pico_gmrAmpJoyRouteResponse(r)
  finish(r)
type Ros1Kuavo_ros_interfacesArmTargetPoses* = object
  `times`*: seq[float64]
  `values`*: seq[float64]
const Ros1Kuavo_ros_interfacesArmTargetPosesMaximumWireBytes* = 264
const Ros1Kuavo_ros_interfacesArmTargetPosesCodecIdentity* = "UWVMROS1_97f845040396ade2f3e97ab69b22879b06ec1e14b199e8598f28a3be724ed2a2"
const Ros1Kuavo_ros_interfacesArmTargetPosesNativeType* = "kuavo_ros_interfaces/armTargetPoses"
const Ros1Kuavo_ros_interfacesArmTargetPosesNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesArmTargetPoses*(): Ros1Kuavo_ros_interfacesArmTargetPoses =
  result.`times` = @[]
  result.`values` = @[]
proc writeFields*(value: Ros1Kuavo_ros_interfacesArmTargetPoses; w: var Writer) =
  if value.`times`.len > 16: fail(22)
  putInteger(w,uint32(value.`times`.len))
  for e in value.`times`:
    putFloat64(w,e)
  if value.`values`.len > 16: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Kuavo_ros_interfacesArmTargetPoses*(r: var Reader): Ros1Kuavo_ros_interfacesArmTargetPoses =
  result = initRos1Kuavo_ros_interfacesArmTargetPoses()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`times` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`times`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`values` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_ros_interfacesArmTargetPoses): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesArmTargetPoses*(b: seq[byte]): Ros1Kuavo_ros_interfacesArmTargetPoses =
  var r = initReader(b,264)
  result = readRos1Kuavo_ros_interfacesArmTargetPoses(r)
  finish(r)
type Ros1Kuavo_ros_interfacesBezierCurveCubicPoint* = object
  `end_point`*: seq[float64]
  `left_control_point`*: seq[float64]
  `right_control_point`*: seq[float64]
const Ros1Kuavo_ros_interfacesBezierCurveCubicPointMaximumWireBytes* = 396
const Ros1Kuavo_ros_interfacesBezierCurveCubicPointCodecIdentity* = "UWVMROS1_833ae440e34747826f7d67a8152718b7d6066b8003dd190fe992863be7817764"
const Ros1Kuavo_ros_interfacesBezierCurveCubicPointNativeType* = "kuavo_ros_interfaces/bezierCurveCubicPoint"
const Ros1Kuavo_ros_interfacesBezierCurveCubicPointNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesBezierCurveCubicPoint*(): Ros1Kuavo_ros_interfacesBezierCurveCubicPoint =
  result.`end_point` = @[]
  result.`left_control_point` = @[]
  result.`right_control_point` = @[]
proc writeFields*(value: Ros1Kuavo_ros_interfacesBezierCurveCubicPoint; w: var Writer) =
  if value.`end_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`end_point`.len))
  for e in value.`end_point`:
    putFloat64(w,e)
  if value.`left_control_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`left_control_point`.len))
  for e in value.`left_control_point`:
    putFloat64(w,e)
  if value.`right_control_point`.len > 16: fail(22)
  putInteger(w,uint32(value.`right_control_point`.len))
  for e in value.`right_control_point`:
    putFloat64(w,e)
proc readRos1Kuavo_ros_interfacesBezierCurveCubicPoint*(r: var Reader): Ros1Kuavo_ros_interfacesBezierCurveCubicPoint =
  result = initRos1Kuavo_ros_interfacesBezierCurveCubicPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`end_point` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`end_point`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`left_control_point` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`left_control_point`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`right_control_point` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`right_control_point`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_ros_interfacesBezierCurveCubicPoint): seq[byte] =
  var w = initWriter(396)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint*(b: seq[byte]): Ros1Kuavo_ros_interfacesBezierCurveCubicPoint =
  var r = initReader(b,396)
  result = readRos1Kuavo_ros_interfacesBezierCurveCubicPoint(r)
  finish(r)
type Ros1Kuavo_ros_interfacesJointBezierTrajectory* = object
  `bezier_curve_points`*: seq[Ros1Kuavo_ros_interfacesBezierCurveCubicPoint]
const Ros1Kuavo_ros_interfacesJointBezierTrajectoryMaximumWireBytes* = 3172
const Ros1Kuavo_ros_interfacesJointBezierTrajectoryCodecIdentity* = "UWVMROS1_171cf2fb73e32d7a59b29ff4b94d1954c7b9b53a9d91820990419d27ed95fffb"
const Ros1Kuavo_ros_interfacesJointBezierTrajectoryNativeType* = "kuavo_ros_interfaces/jointBezierTrajectory"
const Ros1Kuavo_ros_interfacesJointBezierTrajectoryNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesJointBezierTrajectory*(): Ros1Kuavo_ros_interfacesJointBezierTrajectory =
  result.`bezier_curve_points` = @[]
proc writeFields*(value: Ros1Kuavo_ros_interfacesJointBezierTrajectory; w: var Writer) =
  if value.`bezier_curve_points`.len > 8: fail(22)
  putInteger(w,uint32(value.`bezier_curve_points`.len))
  for e in value.`bezier_curve_points`:
    writeFields(e,w)
proc readRos1Kuavo_ros_interfacesJointBezierTrajectory*(r: var Reader): Ros1Kuavo_ros_interfacesJointBezierTrajectory =
  result = initRos1Kuavo_ros_interfacesJointBezierTrajectory()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`bezier_curve_points` = newSeq[Ros1Kuavo_ros_interfacesBezierCurveCubicPoint](count0)
  for i in 0..<count0:
    result.`bezier_curve_points`[i] = readRos1Kuavo_ros_interfacesBezierCurveCubicPoint(r)
proc encode*(value: Ros1Kuavo_ros_interfacesJointBezierTrajectory): seq[byte] =
  var w = initWriter(3172)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesJointBezierTrajectory*(b: seq[byte]): Ros1Kuavo_ros_interfacesJointBezierTrajectory =
  var r = initReader(b,3172)
  result = readRos1Kuavo_ros_interfacesJointBezierTrajectory(r)
  finish(r)
type Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest* = object
  `control_mode`*: int32
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestMaximumWireBytes* = 4
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodecIdentity* = "UWVMROS1_1bfe2dbd86542e6066404e3c1973c1bfb284a8f65f5559cb8fb3d7718bd1e915"
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestNativeType* = "kuavo_ros_interfaces/ocs2ChangeArmCtrlModeRequest"
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest*(): Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest =
  result.`control_mode` = 0
proc writeFields*(value: Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest; w: var Writer) =
  putInteger(w,value.`control_mode`)
proc readRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest*(r: var Reader): Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest =
  result = initRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest()
  result.`control_mode` = getInteger(r,int32)
proc encode*(value: Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest*(b: seq[byte]): Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest =
  var r = initReader(b,4)
  result = readRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest(r)
  finish(r)
type Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse* = object
  `result`*: bool
  `mode`*: int32
  `message`*: string
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseMaximumWireBytes* = 265
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodecIdentity* = "UWVMROS1_fbcce1790258668da4aa99848601f7074ffa08539bc4ee9449447ab123387435"
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseNativeType* = "kuavo_ros_interfaces/ocs2ChangeArmCtrlModeResponse"
const Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse*(): Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse =
  result.`result` = false
  result.`mode` = 0
  result.`message` = ""
proc writeFields*(value: Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse; w: var Writer) =
  putBool(w,value.`result`)
  putInteger(w,value.`mode`)
  putString(w,value.`message`,256)
proc readRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse*(r: var Reader): Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse =
  result = initRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse()
  result.`result` = getBool(r)
  result.`mode` = getInteger(r,int32)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse*(b: seq[byte]): Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse =
  var r = initReader(b,265)
  result = readRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse(r)
  finish(r)
type Ros1Kuavo_ros_interfacesPlanArmState* = object
  `progress`*: int32
  `is_finished`*: bool
const Ros1Kuavo_ros_interfacesPlanArmStateMaximumWireBytes* = 5
const Ros1Kuavo_ros_interfacesPlanArmStateCodecIdentity* = "UWVMROS1_5a54f550181f3b855c88fbf7752b1bdd9c8e6ddc68ab877fedb343b0deca0eb9"
const Ros1Kuavo_ros_interfacesPlanArmStateNativeType* = "kuavo_ros_interfaces/planArmState"
const Ros1Kuavo_ros_interfacesPlanArmStateNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesPlanArmState*(): Ros1Kuavo_ros_interfacesPlanArmState =
  result.`progress` = 0
  result.`is_finished` = false
proc writeFields*(value: Ros1Kuavo_ros_interfacesPlanArmState; w: var Writer) =
  putInteger(w,value.`progress`)
  putBool(w,value.`is_finished`)
proc readRos1Kuavo_ros_interfacesPlanArmState*(r: var Reader): Ros1Kuavo_ros_interfacesPlanArmState =
  result = initRos1Kuavo_ros_interfacesPlanArmState()
  result.`progress` = getInteger(r,int32)
  result.`is_finished` = getBool(r)
proc encode*(value: Ros1Kuavo_ros_interfacesPlanArmState): seq[byte] =
  var w = initWriter(5)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesPlanArmState*(b: seq[byte]): Ros1Kuavo_ros_interfacesPlanArmState =
  var r = initReader(b,5)
  result = readRos1Kuavo_ros_interfacesPlanArmState(r)
  finish(r)
type Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest* = object
  `multi_joint_bezier_trajectory`*: seq[Ros1Kuavo_ros_interfacesJointBezierTrajectory]
  `start_frame_time`*: float64
  `end_frame_time`*: float64
  `joint_names`*: seq[string]
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestMaximumWireBytes* = 29560
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodecIdentity* = "UWVMROS1_0000b6a1ced744aa869707acd6f5ba6737d20c039a2b8507c408d6646d72d499"
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestNativeType* = "kuavo_ros_interfaces/planArmTrajectoryBezierCurveRequest"
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest*(): Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest =
  result.`multi_joint_bezier_trajectory` = @[]
  result.`start_frame_time` = 0
  result.`end_frame_time` = 0
  result.`joint_names` = @[]
proc writeFields*(value: Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest; w: var Writer) =
  if value.`multi_joint_bezier_trajectory`.len > 8: fail(22)
  putInteger(w,uint32(value.`multi_joint_bezier_trajectory`.len))
  for e in value.`multi_joint_bezier_trajectory`:
    writeFields(e,w)
  putFloat64(w,value.`start_frame_time`)
  putFloat64(w,value.`end_frame_time`)
  if value.`joint_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,256)
proc readRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest*(r: var Reader): Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest =
  result = initRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`multi_joint_bezier_trajectory` = newSeq[Ros1Kuavo_ros_interfacesJointBezierTrajectory](count0)
  for i in 0..<count0:
    result.`multi_joint_bezier_trajectory`[i] = readRos1Kuavo_ros_interfacesJointBezierTrajectory(r)
  result.`start_frame_time` = getFloat64(r)
  result.`end_frame_time` = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`joint_names` = newSeq[string](count3)
  for i in 0..<count3:
    result.`joint_names`[i] = getString(r,256)
proc encode*(value: Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest): seq[byte] =
  var w = initWriter(29560)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest*(b: seq[byte]): Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest =
  var r = initReader(b,29560)
  result = readRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest(r)
  finish(r)
type Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse* = object
  `success`*: bool
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseMaximumWireBytes* = 1
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodecIdentity* = "UWVMROS1_6ae21fa51f8999275503aa598339fa178a2a6b1921fad5cbc3006fdd3d6e4c8c"
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseNativeType* = "kuavo_ros_interfaces/planArmTrajectoryBezierCurveResponse"
const Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse*(): Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse =
  result.`success` = false
proc writeFields*(value: Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse*(r: var Reader): Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse =
  result = initRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse*(b: seq[byte]): Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse(r)
  finish(r)
type Ros1Kuavo_ros_interfacesRobotHandPosition* = object
  `header`*: Ros1Std_msgsHeader
  `left_hand_position`*: seq[uint8]
  `right_hand_position`*: seq[uint8]
const Ros1Kuavo_ros_interfacesRobotHandPositionMaximumWireBytes* = 792
const Ros1Kuavo_ros_interfacesRobotHandPositionCodecIdentity* = "UWVMROS1_dd50bba79b85c0a712865ed4a2cbb402d9f4904904658be85e36015a20da97c7"
const Ros1Kuavo_ros_interfacesRobotHandPositionNativeType* = "kuavo_ros_interfaces/robotHandPosition"
const Ros1Kuavo_ros_interfacesRobotHandPositionNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesRobotHandPosition*(): Ros1Kuavo_ros_interfacesRobotHandPosition =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_hand_position` = @[]
  result.`right_hand_position` = @[]
proc writeFields*(value: Ros1Kuavo_ros_interfacesRobotHandPosition; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`left_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`left_hand_position`.len))
  for e in value.`left_hand_position`:
    putInteger(w,e)
  if value.`right_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`right_hand_position`.len))
  for e in value.`right_hand_position`:
    putInteger(w,e)
proc readRos1Kuavo_ros_interfacesRobotHandPosition*(r: var Reader): Ros1Kuavo_ros_interfacesRobotHandPosition =
  result = initRos1Kuavo_ros_interfacesRobotHandPosition()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 256: fail(22)
  let count1 = int(rawcount1)
  result.`left_hand_position` = newSeq[uint8](count1)
  for i in 0..<count1:
    result.`left_hand_position`[i] = getInteger(r,uint8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 256: fail(22)
  let count2 = int(rawcount2)
  result.`right_hand_position` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`right_hand_position`[i] = getInteger(r,uint8)
proc encode*(value: Ros1Kuavo_ros_interfacesRobotHandPosition): seq[byte] =
  var w = initWriter(792)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesRobotHandPosition*(b: seq[byte]): Ros1Kuavo_ros_interfacesRobotHandPosition =
  var r = initReader(b,792)
  result = readRos1Kuavo_ros_interfacesRobotHandPosition(r)
  finish(r)
type Ros1Kuavo_ros_interfacesRobotHeadMotionData* = object
  `joint_data`*: seq[float64]
const Ros1Kuavo_ros_interfacesRobotHeadMotionDataMaximumWireBytes* = 132
const Ros1Kuavo_ros_interfacesRobotHeadMotionDataCodecIdentity* = "UWVMROS1_ad19b205bead81ac20090763bf2ab60fbfe85485b170f0813eb297077809248c"
const Ros1Kuavo_ros_interfacesRobotHeadMotionDataNativeType* = "kuavo_ros_interfaces/robotHeadMotionData"
const Ros1Kuavo_ros_interfacesRobotHeadMotionDataNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesRobotHeadMotionData*(): Ros1Kuavo_ros_interfacesRobotHeadMotionData =
  result.`joint_data` = @[]
proc writeFields*(value: Ros1Kuavo_ros_interfacesRobotHeadMotionData; w: var Writer) =
  if value.`joint_data`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_data`.len))
  for e in value.`joint_data`:
    putFloat64(w,e)
proc readRos1Kuavo_ros_interfacesRobotHeadMotionData*(r: var Reader): Ros1Kuavo_ros_interfacesRobotHeadMotionData =
  result = initRos1Kuavo_ros_interfacesRobotHeadMotionData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`joint_data` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`joint_data`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_ros_interfacesRobotHeadMotionData): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesRobotHeadMotionData*(b: seq[byte]): Ros1Kuavo_ros_interfacesRobotHeadMotionData =
  var r = initReader(b,132)
  result = readRos1Kuavo_ros_interfacesRobotHeadMotionData(r)
  finish(r)
type Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest* = object
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestMaximumWireBytes* = 0
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodecIdentity* = "UWVMROS1_aeedc378b282e01b603e63b5d7573e6fe348128c35d5812239c1876c871500ff"
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestNativeType* = "kuavo_ros_interfaces/stopPlanArmTrajectoryRequest"
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest*(): Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest =
  discard
proc writeFields*(value: Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest; w: var Writer) =
  discard
proc readRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest*(r: var Reader): Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest =
  result = initRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest()
proc encode*(value: Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest*(b: seq[byte]): Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest =
  var r = initReader(b,0)
  result = readRos1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest(r)
  finish(r)
type Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse* = object
  `result`*: bool
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseMaximumWireBytes* = 1
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodecIdentity* = "UWVMROS1_87c79c603a6c2b4c9d5c3994414a765a8a69539a6a0aeaaae95afe3dc4814e0f"
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseNativeType* = "kuavo_ros_interfaces/stopPlanArmTrajectoryResponse"
const Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseNativeIdentity* = ""
proc initRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse*(): Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse =
  result.`result` = false
proc writeFields*(value: Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse*(r: var Reader): Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse =
  result = initRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse*(b: seq[byte]): Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse =
  var r = initReader(b,1)
  result = readRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsBMS* = object
  `header`*: Ros1Std_msgsHeader
  `pack_voltage`*: float32
  `pack_current`*: float32
  `soc`*: float32
  `soh`*: float32
  `cell_count`*: uint8
  `cell_voltages`*: seq[float32]
  `cell_temperatures`*: seq[float32]
  `max_cell_voltage`*: float32
  `min_cell_voltage`*: float32
  `max_cell_temp`*: float32
  `min_cell_temp`*: float32
  `cycle_count`*: uint32
  `status_flags`*: uint32
  `error_code`*: uint32
const Ros1Leju_mobile_base_msgsBMSMaximumWireBytes* = 453
const Ros1Leju_mobile_base_msgsBMSCodecIdentity* = "UWVMROS1_5ecd5afcb63528e45be42a925160e9d64c11e19102354e52a79b064660351c4f"
const Ros1Leju_mobile_base_msgsBMSNativeType* = "leju_mobile_base_msgs/BMS"
const Ros1Leju_mobile_base_msgsBMSNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsBMS*(): Ros1Leju_mobile_base_msgsBMS =
  result.`header` = initRos1Std_msgsHeader()
  result.`pack_voltage` = 0
  result.`pack_current` = 0
  result.`soc` = 0
  result.`soh` = 0
  result.`cell_count` = 0
  result.`cell_voltages` = @[]
  result.`cell_temperatures` = @[]
  result.`max_cell_voltage` = 0
  result.`min_cell_voltage` = 0
  result.`max_cell_temp` = 0
  result.`min_cell_temp` = 0
  result.`cycle_count` = 0
  result.`status_flags` = 0
  result.`error_code` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsBMS; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`pack_voltage`)
  putFloat32(w,value.`pack_current`)
  putFloat32(w,value.`soc`)
  putFloat32(w,value.`soh`)
  putInteger(w,value.`cell_count`)
  if value.`cell_voltages`.len > 16: fail(22)
  putInteger(w,uint32(value.`cell_voltages`.len))
  for e in value.`cell_voltages`:
    putFloat32(w,e)
  if value.`cell_temperatures`.len > 16: fail(22)
  putInteger(w,uint32(value.`cell_temperatures`.len))
  for e in value.`cell_temperatures`:
    putFloat32(w,e)
  putFloat32(w,value.`max_cell_voltage`)
  putFloat32(w,value.`min_cell_voltage`)
  putFloat32(w,value.`max_cell_temp`)
  putFloat32(w,value.`min_cell_temp`)
  putInteger(w,value.`cycle_count`)
  putInteger(w,value.`status_flags`)
  putInteger(w,value.`error_code`)
proc readRos1Leju_mobile_base_msgsBMS*(r: var Reader): Ros1Leju_mobile_base_msgsBMS =
  result = initRos1Leju_mobile_base_msgsBMS()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`pack_voltage` = getFloat32(r)
  result.`pack_current` = getFloat32(r)
  result.`soc` = getFloat32(r)
  result.`soh` = getFloat32(r)
  result.`cell_count` = getInteger(r,uint8)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 16: fail(22)
  let count6 = int(rawcount6)
  result.`cell_voltages` = newSeq[float32](count6)
  for i in 0..<count6:
    result.`cell_voltages`[i] = getFloat32(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 16: fail(22)
  let count7 = int(rawcount7)
  result.`cell_temperatures` = newSeq[float32](count7)
  for i in 0..<count7:
    result.`cell_temperatures`[i] = getFloat32(r)
  result.`max_cell_voltage` = getFloat32(r)
  result.`min_cell_voltage` = getFloat32(r)
  result.`max_cell_temp` = getFloat32(r)
  result.`min_cell_temp` = getFloat32(r)
  result.`cycle_count` = getInteger(r,uint32)
  result.`status_flags` = getInteger(r,uint32)
  result.`error_code` = getInteger(r,uint32)
proc encode*(value: Ros1Leju_mobile_base_msgsBMS): seq[byte] =
  var w = initWriter(453)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsBMS*(b: seq[byte]): Ros1Leju_mobile_base_msgsBMS =
  var r = initReader(b,453)
  result = readRos1Leju_mobile_base_msgsBMS(r)
  finish(r)
type Ros1Leju_mobile_base_msgsBaseCmdVelStatus* = object
  `header`*: Ros1Std_msgsHeader
  `cmd_vel_effective`*: bool
  `reason`*: uint8
  `description`*: string
const Ros1Leju_mobile_base_msgsBaseCmdVelStatusMaximumWireBytes* = 534
const Ros1Leju_mobile_base_msgsBaseCmdVelStatusCodecIdentity* = "UWVMROS1_fc23abfcc2d6d08caedea4cbfa84ba8da572aab078682f888f378773ffe2df5f"
const Ros1Leju_mobile_base_msgsBaseCmdVelStatusNativeType* = "leju_mobile_base_msgs/BaseCmdVelStatus"
const Ros1Leju_mobile_base_msgsBaseCmdVelStatusNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsBaseCmdVelStatus_REASON_NONE*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsBaseCmdVelStatus_REASON_MANUAL_MODE*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsBaseCmdVelStatus_REASON_DISABLED*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsBaseCmdVelStatus_REASON_SOFT_ESTOP*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsBaseCmdVelStatus_REASON_OTHER*: uint8 = 255'u8
proc initRos1Leju_mobile_base_msgsBaseCmdVelStatus*(): Ros1Leju_mobile_base_msgsBaseCmdVelStatus =
  result.`header` = initRos1Std_msgsHeader()
  result.`cmd_vel_effective` = false
  result.`reason` = 0
  result.`description` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsBaseCmdVelStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`cmd_vel_effective`)
  putInteger(w,value.`reason`)
  putString(w,value.`description`,256)
proc readRos1Leju_mobile_base_msgsBaseCmdVelStatus*(r: var Reader): Ros1Leju_mobile_base_msgsBaseCmdVelStatus =
  result = initRos1Leju_mobile_base_msgsBaseCmdVelStatus()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`cmd_vel_effective` = getBool(r)
  result.`reason` = getInteger(r,uint8)
  result.`description` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsBaseCmdVelStatus): seq[byte] =
  var w = initWriter(534)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsBaseCmdVelStatus*(b: seq[byte]): Ros1Leju_mobile_base_msgsBaseCmdVelStatus =
  var r = initReader(b,534)
  result = readRos1Leju_mobile_base_msgsBaseCmdVelStatus(r)
  finish(r)
type Ros1Leju_mobile_base_msgsMoveToTargetOptions* = object
  `avoid_enabled`*: bool
  `avoid_distance`*: float32
  `linear_velocity`*: float32
  `angular_velocity`*: float32
  `position_threshold`*: float32
  `angle_threshold`*: float32
  `allow_rotation`*: bool
const Ros1Leju_mobile_base_msgsMoveToTargetOptionsMaximumWireBytes* = 22
const Ros1Leju_mobile_base_msgsMoveToTargetOptionsCodecIdentity* = "UWVMROS1_9663a92439424e065cc52dc2440eea928aa64228a21e3f05017d2209c53305bd"
const Ros1Leju_mobile_base_msgsMoveToTargetOptionsNativeType* = "leju_mobile_base_msgs/MoveToTargetOptions"
const Ros1Leju_mobile_base_msgsMoveToTargetOptionsNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsMoveToTargetOptions*(): Ros1Leju_mobile_base_msgsMoveToTargetOptions =
  result.`avoid_enabled` = false
  result.`avoid_distance` = 0
  result.`linear_velocity` = 0
  result.`angular_velocity` = 0
  result.`position_threshold` = 0
  result.`angle_threshold` = 0
  result.`allow_rotation` = false
proc writeFields*(value: Ros1Leju_mobile_base_msgsMoveToTargetOptions; w: var Writer) =
  putBool(w,value.`avoid_enabled`)
  putFloat32(w,value.`avoid_distance`)
  putFloat32(w,value.`linear_velocity`)
  putFloat32(w,value.`angular_velocity`)
  putFloat32(w,value.`position_threshold`)
  putFloat32(w,value.`angle_threshold`)
  putBool(w,value.`allow_rotation`)
proc readRos1Leju_mobile_base_msgsMoveToTargetOptions*(r: var Reader): Ros1Leju_mobile_base_msgsMoveToTargetOptions =
  result = initRos1Leju_mobile_base_msgsMoveToTargetOptions()
  result.`avoid_enabled` = getBool(r)
  result.`avoid_distance` = getFloat32(r)
  result.`linear_velocity` = getFloat32(r)
  result.`angular_velocity` = getFloat32(r)
  result.`position_threshold` = getFloat32(r)
  result.`angle_threshold` = getFloat32(r)
  result.`allow_rotation` = getBool(r)
proc encode*(value: Ros1Leju_mobile_base_msgsMoveToTargetOptions): seq[byte] =
  var w = initWriter(22)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsMoveToTargetOptions*(b: seq[byte]): Ros1Leju_mobile_base_msgsMoveToTargetOptions =
  var r = initReader(b,22)
  result = readRos1Leju_mobile_base_msgsMoveToTargetOptions(r)
  finish(r)
type Ros1Leju_mobile_base_msgsBaseMoveRequest* = object
  `x`*: float32
  `y`*: float32
  `theta`*: float32
  `options`*: Ros1Leju_mobile_base_msgsMoveToTargetOptions
const Ros1Leju_mobile_base_msgsBaseMoveRequestMaximumWireBytes* = 34
const Ros1Leju_mobile_base_msgsBaseMoveRequestCodecIdentity* = "UWVMROS1_6088af209211fe723a2ef9cc1aa5a584c9bd04b3f6c73839e059dc74bc08561f"
const Ros1Leju_mobile_base_msgsBaseMoveRequestNativeType* = "leju_mobile_base_msgs/BaseMoveRequest"
const Ros1Leju_mobile_base_msgsBaseMoveRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsBaseMoveRequest*(): Ros1Leju_mobile_base_msgsBaseMoveRequest =
  result.`x` = 0
  result.`y` = 0
  result.`theta` = 0
  result.`options` = initRos1Leju_mobile_base_msgsMoveToTargetOptions()
proc writeFields*(value: Ros1Leju_mobile_base_msgsBaseMoveRequest; w: var Writer) =
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`theta`)
  writeFields(value.`options`,w)
proc readRos1Leju_mobile_base_msgsBaseMoveRequest*(r: var Reader): Ros1Leju_mobile_base_msgsBaseMoveRequest =
  result = initRos1Leju_mobile_base_msgsBaseMoveRequest()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`theta` = getFloat32(r)
  result.`options` = readRos1Leju_mobile_base_msgsMoveToTargetOptions(r)
proc encode*(value: Ros1Leju_mobile_base_msgsBaseMoveRequest): seq[byte] =
  var w = initWriter(34)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsBaseMoveRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsBaseMoveRequest =
  var r = initReader(b,34)
  result = readRos1Leju_mobile_base_msgsBaseMoveRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsBaseMoveResponse* = object
  `success`*: bool
  `message`*: string
  `task_id`*: string
const Ros1Leju_mobile_base_msgsBaseMoveResponseMaximumWireBytes* = 521
const Ros1Leju_mobile_base_msgsBaseMoveResponseCodecIdentity* = "UWVMROS1_8ae9b3ad134546dd4446257c683a899c4809434795d1247707a64c0fd1298d96"
const Ros1Leju_mobile_base_msgsBaseMoveResponseNativeType* = "leju_mobile_base_msgs/BaseMoveResponse"
const Ros1Leju_mobile_base_msgsBaseMoveResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsBaseMoveResponse*(): Ros1Leju_mobile_base_msgsBaseMoveResponse =
  result.`success` = false
  result.`message` = ""
  result.`task_id` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsBaseMoveResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`task_id`,256)
proc readRos1Leju_mobile_base_msgsBaseMoveResponse*(r: var Reader): Ros1Leju_mobile_base_msgsBaseMoveResponse =
  result = initRos1Leju_mobile_base_msgsBaseMoveResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`task_id` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsBaseMoveResponse): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsBaseMoveResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsBaseMoveResponse =
  var r = initReader(b,521)
  result = readRos1Leju_mobile_base_msgsBaseMoveResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsBattery* = object
  `header`*: Ros1Std_msgsHeader
  `voltage`*: float32
  `current`*: float32
  `percentage`*: float32
  `temperature`*: float32
  `status`*: uint8
  `time_remaining`*: int32
  `health`*: uint8
const Ros1Leju_mobile_base_msgsBatteryMaximumWireBytes* = 294
const Ros1Leju_mobile_base_msgsBatteryCodecIdentity* = "UWVMROS1_0f2ac616c13c8c34286c9fb85888ee01a17afc29a47c9910a7d741f358231835"
const Ros1Leju_mobile_base_msgsBatteryNativeType* = "leju_mobile_base_msgs/Battery"
const Ros1Leju_mobile_base_msgsBatteryNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsBattery_STATUS_UNKNOWN*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsBattery_STATUS_CHARGING*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsBattery_STATUS_DISCHARGING*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsBattery_STATUS_NOT_CHARGING*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsBattery_STATUS_FULL*: uint8 = 4'u8
proc initRos1Leju_mobile_base_msgsBattery*(): Ros1Leju_mobile_base_msgsBattery =
  result.`header` = initRos1Std_msgsHeader()
  result.`voltage` = 0
  result.`current` = 0
  result.`percentage` = 0
  result.`temperature` = 0
  result.`status` = 0
  result.`time_remaining` = 0
  result.`health` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsBattery; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`voltage`)
  putFloat32(w,value.`current`)
  putFloat32(w,value.`percentage`)
  putFloat32(w,value.`temperature`)
  putInteger(w,value.`status`)
  putInteger(w,value.`time_remaining`)
  putInteger(w,value.`health`)
proc readRos1Leju_mobile_base_msgsBattery*(r: var Reader): Ros1Leju_mobile_base_msgsBattery =
  result = initRos1Leju_mobile_base_msgsBattery()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`voltage` = getFloat32(r)
  result.`current` = getFloat32(r)
  result.`percentage` = getFloat32(r)
  result.`temperature` = getFloat32(r)
  result.`status` = getInteger(r,uint8)
  result.`time_remaining` = getInteger(r,int32)
  result.`health` = getInteger(r,uint8)
proc encode*(value: Ros1Leju_mobile_base_msgsBattery): seq[byte] =
  var w = initWriter(294)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsBattery*(b: seq[byte]): Ros1Leju_mobile_base_msgsBattery =
  var r = initReader(b,294)
  result = readRos1Leju_mobile_base_msgsBattery(r)
  finish(r)
type Ros1Leju_mobile_base_msgsCheckArrivedRequest* = object
  `task_id`*: string
  `blocking`*: bool
  `timeout`*: float32
const Ros1Leju_mobile_base_msgsCheckArrivedRequestMaximumWireBytes* = 265
const Ros1Leju_mobile_base_msgsCheckArrivedRequestCodecIdentity* = "UWVMROS1_1f03497d14422de520ed720ec6a38e4e3ff33f737ca79367ecaaa9fe071a0b8e"
const Ros1Leju_mobile_base_msgsCheckArrivedRequestNativeType* = "leju_mobile_base_msgs/CheckArrivedRequest"
const Ros1Leju_mobile_base_msgsCheckArrivedRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsCheckArrivedRequest*(): Ros1Leju_mobile_base_msgsCheckArrivedRequest =
  result.`task_id` = ""
  result.`blocking` = false
  result.`timeout` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsCheckArrivedRequest; w: var Writer) =
  putString(w,value.`task_id`,256)
  putBool(w,value.`blocking`)
  putFloat32(w,value.`timeout`)
proc readRos1Leju_mobile_base_msgsCheckArrivedRequest*(r: var Reader): Ros1Leju_mobile_base_msgsCheckArrivedRequest =
  result = initRos1Leju_mobile_base_msgsCheckArrivedRequest()
  result.`task_id` = getString(r,256)
  result.`blocking` = getBool(r)
  result.`timeout` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsCheckArrivedRequest): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsCheckArrivedRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsCheckArrivedRequest =
  var r = initReader(b,265)
  result = readRos1Leju_mobile_base_msgsCheckArrivedRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsCheckArrivedResponse* = object
  `arrived`*: bool
  `success`*: bool
  `message`*: string
  `status`*: int32
const Ros1Leju_mobile_base_msgsCheckArrivedResponseMaximumWireBytes* = 266
const Ros1Leju_mobile_base_msgsCheckArrivedResponseCodecIdentity* = "UWVMROS1_1dacb94e8840976e80a070c6bd70a503df1e540954cfb58c1730e183e2a4dc72"
const Ros1Leju_mobile_base_msgsCheckArrivedResponseNativeType* = "leju_mobile_base_msgs/CheckArrivedResponse"
const Ros1Leju_mobile_base_msgsCheckArrivedResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsCheckArrivedResponse*(): Ros1Leju_mobile_base_msgsCheckArrivedResponse =
  result.`arrived` = false
  result.`success` = false
  result.`message` = ""
  result.`status` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsCheckArrivedResponse; w: var Writer) =
  putBool(w,value.`arrived`)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putInteger(w,value.`status`)
proc readRos1Leju_mobile_base_msgsCheckArrivedResponse*(r: var Reader): Ros1Leju_mobile_base_msgsCheckArrivedResponse =
  result = initRos1Leju_mobile_base_msgsCheckArrivedResponse()
  result.`arrived` = getBool(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`status` = getInteger(r,int32)
proc encode*(value: Ros1Leju_mobile_base_msgsCheckArrivedResponse): seq[byte] =
  var w = initWriter(266)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsCheckArrivedResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsCheckArrivedResponse =
  var r = initReader(b,266)
  result = readRos1Leju_mobile_base_msgsCheckArrivedResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsControlLaserScanRequest* = object
  `topic_names`*: seq[string]
  `enable_publishing`*: seq[bool]
  `control_mode`*: uint8
const Ros1Leju_mobile_base_msgsControlLaserScanRequestMaximumWireBytes* = 4185
const Ros1Leju_mobile_base_msgsControlLaserScanRequestCodecIdentity* = "UWVMROS1_4fde496fbac10f7bf33bfeee048ba4f3f65b5c7fd06a1f474b30548ef6f60cbb"
const Ros1Leju_mobile_base_msgsControlLaserScanRequestNativeType* = "leju_mobile_base_msgs/ControlLaserScanRequest"
const Ros1Leju_mobile_base_msgsControlLaserScanRequestNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsControlLaserScanRequest_MODE_SET*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsControlLaserScanRequest_MODE_ENABLE_ALL*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsControlLaserScanRequest_MODE_DISABLE_ALL*: uint8 = 2'u8
proc initRos1Leju_mobile_base_msgsControlLaserScanRequest*(): Ros1Leju_mobile_base_msgsControlLaserScanRequest =
  result.`topic_names` = @[]
  result.`enable_publishing` = @[]
  result.`control_mode` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsControlLaserScanRequest; w: var Writer) =
  if value.`topic_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`topic_names`.len))
  for e in value.`topic_names`:
    putString(w,e,256)
  if value.`enable_publishing`.len > 16: fail(22)
  putInteger(w,uint32(value.`enable_publishing`.len))
  for e in value.`enable_publishing`:
    putBool(w,e)
  putInteger(w,value.`control_mode`)
proc readRos1Leju_mobile_base_msgsControlLaserScanRequest*(r: var Reader): Ros1Leju_mobile_base_msgsControlLaserScanRequest =
  result = initRos1Leju_mobile_base_msgsControlLaserScanRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`topic_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`topic_names`[i] = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`enable_publishing` = newSeq[bool](count1)
  for i in 0..<count1:
    result.`enable_publishing`[i] = getBool(r)
  result.`control_mode` = getInteger(r,uint8)
proc encode*(value: Ros1Leju_mobile_base_msgsControlLaserScanRequest): seq[byte] =
  var w = initWriter(4185)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsControlLaserScanRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsControlLaserScanRequest =
  var r = initReader(b,4185)
  result = readRos1Leju_mobile_base_msgsControlLaserScanRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsControlLaserScanResponse* = object
  `success`*: bool
  `message`*: string
  `updated_topics`*: seq[string]
  `current_status`*: seq[bool]
  `error_code`*: uint32
const Ros1Leju_mobile_base_msgsControlLaserScanResponseMaximumWireBytes* = 4449
const Ros1Leju_mobile_base_msgsControlLaserScanResponseCodecIdentity* = "UWVMROS1_9e1d1e6334e86362d5d6b32d50ff36d5c919b9af2688c3edfe410bbb10feebf3"
const Ros1Leju_mobile_base_msgsControlLaserScanResponseNativeType* = "leju_mobile_base_msgs/ControlLaserScanResponse"
const Ros1Leju_mobile_base_msgsControlLaserScanResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsControlLaserScanResponse*(): Ros1Leju_mobile_base_msgsControlLaserScanResponse =
  result.`success` = false
  result.`message` = ""
  result.`updated_topics` = @[]
  result.`current_status` = @[]
  result.`error_code` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsControlLaserScanResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  if value.`updated_topics`.len > 16: fail(22)
  putInteger(w,uint32(value.`updated_topics`.len))
  for e in value.`updated_topics`:
    putString(w,e,256)
  if value.`current_status`.len > 16: fail(22)
  putInteger(w,uint32(value.`current_status`.len))
  for e in value.`current_status`:
    putBool(w,e)
  putInteger(w,value.`error_code`)
proc readRos1Leju_mobile_base_msgsControlLaserScanResponse*(r: var Reader): Ros1Leju_mobile_base_msgsControlLaserScanResponse =
  result = initRos1Leju_mobile_base_msgsControlLaserScanResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`updated_topics` = newSeq[string](count2)
  for i in 0..<count2:
    result.`updated_topics`[i] = getString(r,256)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`current_status` = newSeq[bool](count3)
  for i in 0..<count3:
    result.`current_status`[i] = getBool(r)
  result.`error_code` = getInteger(r,uint32)
proc encode*(value: Ros1Leju_mobile_base_msgsControlLaserScanResponse): seq[byte] =
  var w = initWriter(4449)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsControlLaserScanResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsControlLaserScanResponse =
  var r = initReader(b,4449)
  result = readRos1Leju_mobile_base_msgsControlLaserScanResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsDispatchMoveRequest* = object
  `target`*: string
  `options`*: Ros1Leju_mobile_base_msgsMoveToTargetOptions
const Ros1Leju_mobile_base_msgsDispatchMoveRequestMaximumWireBytes* = 282
const Ros1Leju_mobile_base_msgsDispatchMoveRequestCodecIdentity* = "UWVMROS1_a7bec9d55830bed3d26b2718571f30188dd2742c15a2fe3974524bc3e30ff794"
const Ros1Leju_mobile_base_msgsDispatchMoveRequestNativeType* = "leju_mobile_base_msgs/DispatchMoveRequest"
const Ros1Leju_mobile_base_msgsDispatchMoveRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsDispatchMoveRequest*(): Ros1Leju_mobile_base_msgsDispatchMoveRequest =
  result.`target` = ""
  result.`options` = initRos1Leju_mobile_base_msgsMoveToTargetOptions()
proc writeFields*(value: Ros1Leju_mobile_base_msgsDispatchMoveRequest; w: var Writer) =
  putString(w,value.`target`,256)
  writeFields(value.`options`,w)
proc readRos1Leju_mobile_base_msgsDispatchMoveRequest*(r: var Reader): Ros1Leju_mobile_base_msgsDispatchMoveRequest =
  result = initRos1Leju_mobile_base_msgsDispatchMoveRequest()
  result.`target` = getString(r,256)
  result.`options` = readRos1Leju_mobile_base_msgsMoveToTargetOptions(r)
proc encode*(value: Ros1Leju_mobile_base_msgsDispatchMoveRequest): seq[byte] =
  var w = initWriter(282)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsDispatchMoveRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsDispatchMoveRequest =
  var r = initReader(b,282)
  result = readRos1Leju_mobile_base_msgsDispatchMoveRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsDispatchMoveResponse* = object
  `success`*: bool
  `message`*: string
  `task_id`*: string
const Ros1Leju_mobile_base_msgsDispatchMoveResponseMaximumWireBytes* = 521
const Ros1Leju_mobile_base_msgsDispatchMoveResponseCodecIdentity* = "UWVMROS1_355d963be35564a519cfedac67a6a043385c6455fe382b7e34a8235e12e63799"
const Ros1Leju_mobile_base_msgsDispatchMoveResponseNativeType* = "leju_mobile_base_msgs/DispatchMoveResponse"
const Ros1Leju_mobile_base_msgsDispatchMoveResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsDispatchMoveResponse*(): Ros1Leju_mobile_base_msgsDispatchMoveResponse =
  result.`success` = false
  result.`message` = ""
  result.`task_id` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsDispatchMoveResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`task_id`,256)
proc readRos1Leju_mobile_base_msgsDispatchMoveResponse*(r: var Reader): Ros1Leju_mobile_base_msgsDispatchMoveResponse =
  result = initRos1Leju_mobile_base_msgsDispatchMoveResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`task_id` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsDispatchMoveResponse): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsDispatchMoveResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsDispatchMoveResponse =
  var r = initReader(b,521)
  result = readRos1Leju_mobile_base_msgsDispatchMoveResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsExecTaskRequest* = object
  `task_id`*: string
  `task_type`*: uint8
  `task_name`*: string
  `waypoints`*: seq[Ros1Geometry_msgsPoseStamped]
  `parameters`*: seq[string]
  `priority`*: float32
  `timeout`*: float32
const Ros1Leju_mobile_base_msgsExecTaskRequestMaximumWireBytes* = 7321
const Ros1Leju_mobile_base_msgsExecTaskRequestCodecIdentity* = "UWVMROS1_74776dd167950429fff4ec5baf8775412e4a7b1194a47f2907a49136af6d5d94"
const Ros1Leju_mobile_base_msgsExecTaskRequestNativeType* = "leju_mobile_base_msgs/ExecTaskRequest"
const Ros1Leju_mobile_base_msgsExecTaskRequestNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsExecTaskRequest_TASK_TYPE_NAVIGATION*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsExecTaskRequest_TASK_TYPE_DOCKING*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsExecTaskRequest_TASK_TYPE_CHARGING*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsExecTaskRequest_TASK_TYPE_DELIVERY*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsExecTaskRequest_TASK_TYPE_CUSTOM*: uint8 = 99'u8
proc initRos1Leju_mobile_base_msgsExecTaskRequest*(): Ros1Leju_mobile_base_msgsExecTaskRequest =
  result.`task_id` = ""
  result.`task_type` = 0
  result.`task_name` = ""
  result.`waypoints` = @[]
  result.`parameters` = @[]
  result.`priority` = 0
  result.`timeout` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsExecTaskRequest; w: var Writer) =
  putString(w,value.`task_id`,256)
  putInteger(w,value.`task_type`)
  putString(w,value.`task_name`,256)
  if value.`waypoints`.len > 8: fail(22)
  putInteger(w,uint32(value.`waypoints`.len))
  for e in value.`waypoints`:
    writeFields(e,w)
  if value.`parameters`.len > 16: fail(22)
  putInteger(w,uint32(value.`parameters`.len))
  for e in value.`parameters`:
    putString(w,e,256)
  putFloat32(w,value.`priority`)
  putFloat32(w,value.`timeout`)
proc readRos1Leju_mobile_base_msgsExecTaskRequest*(r: var Reader): Ros1Leju_mobile_base_msgsExecTaskRequest =
  result = initRos1Leju_mobile_base_msgsExecTaskRequest()
  result.`task_id` = getString(r,256)
  result.`task_type` = getInteger(r,uint8)
  result.`task_name` = getString(r,256)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`waypoints` = newSeq[Ros1Geometry_msgsPoseStamped](count3)
  for i in 0..<count3:
    result.`waypoints`[i] = readRos1Geometry_msgsPoseStamped(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`parameters` = newSeq[string](count4)
  for i in 0..<count4:
    result.`parameters`[i] = getString(r,256)
  result.`priority` = getFloat32(r)
  result.`timeout` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsExecTaskRequest): seq[byte] =
  var w = initWriter(7321)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsExecTaskRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsExecTaskRequest =
  var r = initReader(b,7321)
  result = readRos1Leju_mobile_base_msgsExecTaskRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsExecTaskResponse* = object
  `success`*: bool
  `message`*: string
  `error_code`*: uint32
  `assigned_task_id`*: string
const Ros1Leju_mobile_base_msgsExecTaskResponseMaximumWireBytes* = 525
const Ros1Leju_mobile_base_msgsExecTaskResponseCodecIdentity* = "UWVMROS1_f3ae4321df5893f9e99b3a2e258ab53986c671b94d93fb501f61eb80ce970b9e"
const Ros1Leju_mobile_base_msgsExecTaskResponseNativeType* = "leju_mobile_base_msgs/ExecTaskResponse"
const Ros1Leju_mobile_base_msgsExecTaskResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsExecTaskResponse*(): Ros1Leju_mobile_base_msgsExecTaskResponse =
  result.`success` = false
  result.`message` = ""
  result.`error_code` = 0
  result.`assigned_task_id` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsExecTaskResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putInteger(w,value.`error_code`)
  putString(w,value.`assigned_task_id`,256)
proc readRos1Leju_mobile_base_msgsExecTaskResponse*(r: var Reader): Ros1Leju_mobile_base_msgsExecTaskResponse =
  result = initRos1Leju_mobile_base_msgsExecTaskResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`error_code` = getInteger(r,uint32)
  result.`assigned_task_id` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsExecTaskResponse): seq[byte] =
  var w = initWriter(525)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsExecTaskResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsExecTaskResponse =
  var r = initReader(b,525)
  result = readRos1Leju_mobile_base_msgsExecTaskResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest* = object
const Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestMaximumWireBytes* = 0
const Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodecIdentity* = "UWVMROS1_99a04f38a22a48ec485be6c7184822492d2e0fb6ef5946d290c2af4b745f52d0"
const Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestNativeType* = "leju_mobile_base_msgs/GetGlobalOdometerRequest"
const Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsGetGlobalOdometerRequest*(): Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest =
  discard
proc writeFields*(value: Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest; w: var Writer) =
  discard
proc readRos1Leju_mobile_base_msgsGetGlobalOdometerRequest*(r: var Reader): Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest =
  result = initRos1Leju_mobile_base_msgsGetGlobalOdometerRequest()
proc encode*(value: Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsGetGlobalOdometerRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest =
  var r = initReader(b,0)
  result = readRos1Leju_mobile_base_msgsGetGlobalOdometerRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse* = object
  `total_distance_m`*: float64
  `total_distance_km`*: float64
  `measured_at`*: Ros1Time
const Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseMaximumWireBytes* = 24
const Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodecIdentity* = "UWVMROS1_50a45e288952dd4fe54ff708844ea1b049ae2980d1f3f89d46d0bf81336fda42"
const Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseNativeType* = "leju_mobile_base_msgs/GetGlobalOdometerResponse"
const Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsGetGlobalOdometerResponse*(): Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse =
  result.`total_distance_m` = 0
  result.`total_distance_km` = 0
  result.`measured_at` = initRos1Time()
proc writeFields*(value: Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse; w: var Writer) =
  putFloat64(w,value.`total_distance_m`)
  putFloat64(w,value.`total_distance_km`)
  writeFields(value.`measured_at`,w)
proc readRos1Leju_mobile_base_msgsGetGlobalOdometerResponse*(r: var Reader): Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse =
  result = initRos1Leju_mobile_base_msgsGetGlobalOdometerResponse()
  result.`total_distance_m` = getFloat64(r)
  result.`total_distance_km` = getFloat64(r)
  result.`measured_at` = readRos1Time(r)
proc encode*(value: Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse =
  var r = initReader(b,24)
  result = readRos1Leju_mobile_base_msgsGetGlobalOdometerResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsGetLaserScanListRequest* = object
const Ros1Leju_mobile_base_msgsGetLaserScanListRequestMaximumWireBytes* = 0
const Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodecIdentity* = "UWVMROS1_8760e4255a0e6393911e45d0fa9b381c53443247e378f4921361307a1393c818"
const Ros1Leju_mobile_base_msgsGetLaserScanListRequestNativeType* = "leju_mobile_base_msgs/GetLaserScanListRequest"
const Ros1Leju_mobile_base_msgsGetLaserScanListRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsGetLaserScanListRequest*(): Ros1Leju_mobile_base_msgsGetLaserScanListRequest =
  discard
proc writeFields*(value: Ros1Leju_mobile_base_msgsGetLaserScanListRequest; w: var Writer) =
  discard
proc readRos1Leju_mobile_base_msgsGetLaserScanListRequest*(r: var Reader): Ros1Leju_mobile_base_msgsGetLaserScanListRequest =
  result = initRos1Leju_mobile_base_msgsGetLaserScanListRequest()
proc encode*(value: Ros1Leju_mobile_base_msgsGetLaserScanListRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsGetLaserScanListRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsGetLaserScanListRequest =
  var r = initReader(b,0)
  result = readRos1Leju_mobile_base_msgsGetLaserScanListRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsGetLaserScanListResponse* = object
  `success`*: bool
  `message`*: string
  `topic_names`*: seq[string]
  `is_publishing`*: seq[bool]
  `error_code`*: uint32
const Ros1Leju_mobile_base_msgsGetLaserScanListResponseMaximumWireBytes* = 4449
const Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodecIdentity* = "UWVMROS1_bc059d5821821e0d7fbcc574685cb336b465ab0ef5eda52649e75cc6da8b7264"
const Ros1Leju_mobile_base_msgsGetLaserScanListResponseNativeType* = "leju_mobile_base_msgs/GetLaserScanListResponse"
const Ros1Leju_mobile_base_msgsGetLaserScanListResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsGetLaserScanListResponse*(): Ros1Leju_mobile_base_msgsGetLaserScanListResponse =
  result.`success` = false
  result.`message` = ""
  result.`topic_names` = @[]
  result.`is_publishing` = @[]
  result.`error_code` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsGetLaserScanListResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  if value.`topic_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`topic_names`.len))
  for e in value.`topic_names`:
    putString(w,e,256)
  if value.`is_publishing`.len > 16: fail(22)
  putInteger(w,uint32(value.`is_publishing`.len))
  for e in value.`is_publishing`:
    putBool(w,e)
  putInteger(w,value.`error_code`)
proc readRos1Leju_mobile_base_msgsGetLaserScanListResponse*(r: var Reader): Ros1Leju_mobile_base_msgsGetLaserScanListResponse =
  result = initRos1Leju_mobile_base_msgsGetLaserScanListResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`topic_names` = newSeq[string](count2)
  for i in 0..<count2:
    result.`topic_names`[i] = getString(r,256)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`is_publishing` = newSeq[bool](count3)
  for i in 0..<count3:
    result.`is_publishing`[i] = getBool(r)
  result.`error_code` = getInteger(r,uint32)
proc encode*(value: Ros1Leju_mobile_base_msgsGetLaserScanListResponse): seq[byte] =
  var w = initWriter(4449)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsGetLaserScanListResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsGetLaserScanListResponse =
  var r = initReader(b,4449)
  result = readRos1Leju_mobile_base_msgsGetLaserScanListResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsHardwareStatus* = object
  `header`*: Ros1Std_msgsHeader
  `battery_soc`*: float32
  `low_battery_alarm`*: bool
  `battery_temperature`*: float32
  `battery_health`*: float32
  `driver_status`*: uint8
  `driver_fault_code`*: seq[string]
  `driver_fault_message`*: seq[string]
  `imu_status`*: uint8
  `imu_fault_code`*: seq[string]
  `imu_fault_message`*: seq[string]
  `all_distance`*: float32
  `odom_status`*: uint8
  `odom_fault_code`*: seq[string]
  `odom_fault_message`*: seq[string]
  `laser_status`*: uint8
  `laser_fault_code`*: seq[string]
  `laser_fault_message`*: seq[string]
  `camera_status`*: uint8
  `camera_fault_code`*: seq[string]
  `camera_fault_message`*: seq[string]
  `robot_status`*: uint8
  `robot_fault_code`*: seq[string]
  `robot_fault_message`*: seq[string]
const Ros1Leju_mobile_base_msgsHardwareStatusMaximumWireBytes* = 19543
const Ros1Leju_mobile_base_msgsHardwareStatusCodecIdentity* = "UWVMROS1_893137c1cfd22ed3d4fb5db90dd6ad540a458602ba1d2e0748a3e387d1b29627"
const Ros1Leju_mobile_base_msgsHardwareStatusNativeType* = "leju_mobile_base_msgs/HardwareStatus"
const Ros1Leju_mobile_base_msgsHardwareStatusNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsHardwareStatus*(): Ros1Leju_mobile_base_msgsHardwareStatus =
  result.`header` = initRos1Std_msgsHeader()
  result.`battery_soc` = 0
  result.`low_battery_alarm` = false
  result.`battery_temperature` = 0
  result.`battery_health` = 0
  result.`driver_status` = 0
  result.`driver_fault_code` = @[]
  result.`driver_fault_message` = @[]
  result.`imu_status` = 0
  result.`imu_fault_code` = @[]
  result.`imu_fault_message` = @[]
  result.`all_distance` = 0
  result.`odom_status` = 0
  result.`odom_fault_code` = @[]
  result.`odom_fault_message` = @[]
  result.`laser_status` = 0
  result.`laser_fault_code` = @[]
  result.`laser_fault_message` = @[]
  result.`camera_status` = 0
  result.`camera_fault_code` = @[]
  result.`camera_fault_message` = @[]
  result.`robot_status` = 0
  result.`robot_fault_code` = @[]
  result.`robot_fault_message` = @[]
proc writeFields*(value: Ros1Leju_mobile_base_msgsHardwareStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`battery_soc`)
  putBool(w,value.`low_battery_alarm`)
  putFloat32(w,value.`battery_temperature`)
  putFloat32(w,value.`battery_health`)
  putInteger(w,value.`driver_status`)
  if value.`driver_fault_code`.len > 16: fail(22)
  putInteger(w,uint32(value.`driver_fault_code`.len))
  for e in value.`driver_fault_code`:
    putString(w,e,64)
  if value.`driver_fault_message`.len > 16: fail(22)
  putInteger(w,uint32(value.`driver_fault_message`.len))
  for e in value.`driver_fault_message`:
    putString(w,e,128)
  putInteger(w,value.`imu_status`)
  if value.`imu_fault_code`.len > 16: fail(22)
  putInteger(w,uint32(value.`imu_fault_code`.len))
  for e in value.`imu_fault_code`:
    putString(w,e,64)
  if value.`imu_fault_message`.len > 16: fail(22)
  putInteger(w,uint32(value.`imu_fault_message`.len))
  for e in value.`imu_fault_message`:
    putString(w,e,128)
  putFloat32(w,value.`all_distance`)
  putInteger(w,value.`odom_status`)
  if value.`odom_fault_code`.len > 16: fail(22)
  putInteger(w,uint32(value.`odom_fault_code`.len))
  for e in value.`odom_fault_code`:
    putString(w,e,64)
  if value.`odom_fault_message`.len > 16: fail(22)
  putInteger(w,uint32(value.`odom_fault_message`.len))
  for e in value.`odom_fault_message`:
    putString(w,e,128)
  putInteger(w,value.`laser_status`)
  if value.`laser_fault_code`.len > 16: fail(22)
  putInteger(w,uint32(value.`laser_fault_code`.len))
  for e in value.`laser_fault_code`:
    putString(w,e,64)
  if value.`laser_fault_message`.len > 16: fail(22)
  putInteger(w,uint32(value.`laser_fault_message`.len))
  for e in value.`laser_fault_message`:
    putString(w,e,128)
  putInteger(w,value.`camera_status`)
  if value.`camera_fault_code`.len > 16: fail(22)
  putInteger(w,uint32(value.`camera_fault_code`.len))
  for e in value.`camera_fault_code`:
    putString(w,e,64)
  if value.`camera_fault_message`.len > 16: fail(22)
  putInteger(w,uint32(value.`camera_fault_message`.len))
  for e in value.`camera_fault_message`:
    putString(w,e,128)
  putInteger(w,value.`robot_status`)
  if value.`robot_fault_code`.len > 16: fail(22)
  putInteger(w,uint32(value.`robot_fault_code`.len))
  for e in value.`robot_fault_code`:
    putString(w,e,64)
  if value.`robot_fault_message`.len > 16: fail(22)
  putInteger(w,uint32(value.`robot_fault_message`.len))
  for e in value.`robot_fault_message`:
    putString(w,e,128)
proc readRos1Leju_mobile_base_msgsHardwareStatus*(r: var Reader): Ros1Leju_mobile_base_msgsHardwareStatus =
  result = initRos1Leju_mobile_base_msgsHardwareStatus()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`battery_soc` = getFloat32(r)
  result.`low_battery_alarm` = getBool(r)
  result.`battery_temperature` = getFloat32(r)
  result.`battery_health` = getFloat32(r)
  result.`driver_status` = getInteger(r,uint8)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 16: fail(22)
  let count6 = int(rawcount6)
  result.`driver_fault_code` = newSeq[string](count6)
  for i in 0..<count6:
    result.`driver_fault_code`[i] = getString(r,64)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 16: fail(22)
  let count7 = int(rawcount7)
  result.`driver_fault_message` = newSeq[string](count7)
  for i in 0..<count7:
    result.`driver_fault_message`[i] = getString(r,128)
  result.`imu_status` = getInteger(r,uint8)
  let rawcount9 = getInteger(r,uint32)
  if rawcount9 > 16: fail(22)
  let count9 = int(rawcount9)
  result.`imu_fault_code` = newSeq[string](count9)
  for i in 0..<count9:
    result.`imu_fault_code`[i] = getString(r,64)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 16: fail(22)
  let count10 = int(rawcount10)
  result.`imu_fault_message` = newSeq[string](count10)
  for i in 0..<count10:
    result.`imu_fault_message`[i] = getString(r,128)
  result.`all_distance` = getFloat32(r)
  result.`odom_status` = getInteger(r,uint8)
  let rawcount13 = getInteger(r,uint32)
  if rawcount13 > 16: fail(22)
  let count13 = int(rawcount13)
  result.`odom_fault_code` = newSeq[string](count13)
  for i in 0..<count13:
    result.`odom_fault_code`[i] = getString(r,64)
  let rawcount14 = getInteger(r,uint32)
  if rawcount14 > 16: fail(22)
  let count14 = int(rawcount14)
  result.`odom_fault_message` = newSeq[string](count14)
  for i in 0..<count14:
    result.`odom_fault_message`[i] = getString(r,128)
  result.`laser_status` = getInteger(r,uint8)
  let rawcount16 = getInteger(r,uint32)
  if rawcount16 > 16: fail(22)
  let count16 = int(rawcount16)
  result.`laser_fault_code` = newSeq[string](count16)
  for i in 0..<count16:
    result.`laser_fault_code`[i] = getString(r,64)
  let rawcount17 = getInteger(r,uint32)
  if rawcount17 > 16: fail(22)
  let count17 = int(rawcount17)
  result.`laser_fault_message` = newSeq[string](count17)
  for i in 0..<count17:
    result.`laser_fault_message`[i] = getString(r,128)
  result.`camera_status` = getInteger(r,uint8)
  let rawcount19 = getInteger(r,uint32)
  if rawcount19 > 16: fail(22)
  let count19 = int(rawcount19)
  result.`camera_fault_code` = newSeq[string](count19)
  for i in 0..<count19:
    result.`camera_fault_code`[i] = getString(r,64)
  let rawcount20 = getInteger(r,uint32)
  if rawcount20 > 16: fail(22)
  let count20 = int(rawcount20)
  result.`camera_fault_message` = newSeq[string](count20)
  for i in 0..<count20:
    result.`camera_fault_message`[i] = getString(r,128)
  result.`robot_status` = getInteger(r,uint8)
  let rawcount22 = getInteger(r,uint32)
  if rawcount22 > 16: fail(22)
  let count22 = int(rawcount22)
  result.`robot_fault_code` = newSeq[string](count22)
  for i in 0..<count22:
    result.`robot_fault_code`[i] = getString(r,64)
  let rawcount23 = getInteger(r,uint32)
  if rawcount23 > 16: fail(22)
  let count23 = int(rawcount23)
  result.`robot_fault_message` = newSeq[string](count23)
  for i in 0..<count23:
    result.`robot_fault_message`[i] = getString(r,128)
proc encode*(value: Ros1Leju_mobile_base_msgsHardwareStatus): seq[byte] =
  var w = initWriter(19543)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsHardwareStatus*(b: seq[byte]): Ros1Leju_mobile_base_msgsHardwareStatus =
  var r = initReader(b,19543)
  result = readRos1Leju_mobile_base_msgsHardwareStatus(r)
  finish(r)
type Ros1Leju_mobile_base_msgsInformation* = object
  `header`*: Ros1Std_msgsHeader
  `firmware_version`*: string
  `hardware_version`*: string
  `controller_id`*: string
  `serial_number`*: string
  `build_date`*: string
  `param_names`*: seq[string]
  `param_values`*: seq[string]
const Ros1Leju_mobile_base_msgsInformationMaximumWireBytes* = 9900
const Ros1Leju_mobile_base_msgsInformationCodecIdentity* = "UWVMROS1_352be9fbc7a5e7dce370dccf518c0254956adba3531408d79cad669c18eaeab5"
const Ros1Leju_mobile_base_msgsInformationNativeType* = "leju_mobile_base_msgs/Information"
const Ros1Leju_mobile_base_msgsInformationNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsInformation*(): Ros1Leju_mobile_base_msgsInformation =
  result.`header` = initRos1Std_msgsHeader()
  result.`firmware_version` = ""
  result.`hardware_version` = ""
  result.`controller_id` = ""
  result.`serial_number` = ""
  result.`build_date` = ""
  result.`param_names` = @[]
  result.`param_values` = @[]
proc writeFields*(value: Ros1Leju_mobile_base_msgsInformation; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`firmware_version`,256)
  putString(w,value.`hardware_version`,256)
  putString(w,value.`controller_id`,256)
  putString(w,value.`serial_number`,256)
  putString(w,value.`build_date`,256)
  if value.`param_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`param_names`.len))
  for e in value.`param_names`:
    putString(w,e,256)
  if value.`param_values`.len > 16: fail(22)
  putInteger(w,uint32(value.`param_values`.len))
  for e in value.`param_values`:
    putString(w,e,256)
proc readRos1Leju_mobile_base_msgsInformation*(r: var Reader): Ros1Leju_mobile_base_msgsInformation =
  result = initRos1Leju_mobile_base_msgsInformation()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`firmware_version` = getString(r,256)
  result.`hardware_version` = getString(r,256)
  result.`controller_id` = getString(r,256)
  result.`serial_number` = getString(r,256)
  result.`build_date` = getString(r,256)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 16: fail(22)
  let count6 = int(rawcount6)
  result.`param_names` = newSeq[string](count6)
  for i in 0..<count6:
    result.`param_names`[i] = getString(r,256)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 16: fail(22)
  let count7 = int(rawcount7)
  result.`param_values` = newSeq[string](count7)
  for i in 0..<count7:
    result.`param_values`[i] = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsInformation): seq[byte] =
  var w = initWriter(9900)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsInformation*(b: seq[byte]): Ros1Leju_mobile_base_msgsInformation =
  var r = initReader(b,9900)
  result = readRos1Leju_mobile_base_msgsInformation(r)
  finish(r)
type Ros1Leju_mobile_base_msgsLED* = object
  `mode`*: uint8
  `red`*: uint8
  `green`*: uint8
  `blue`*: uint8
  `brightness`*: uint8
  `speed`*: uint8
  `frequency`*: float32
const Ros1Leju_mobile_base_msgsLEDMaximumWireBytes* = 10
const Ros1Leju_mobile_base_msgsLEDCodecIdentity* = "UWVMROS1_e9725b60f7c284e08d91be5176f55c403d1f390561a5df2e597d797e35cc6e9b"
const Ros1Leju_mobile_base_msgsLEDNativeType* = "leju_mobile_base_msgs/LED"
const Ros1Leju_mobile_base_msgsLEDNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsLED_MODE_OFF*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsLED_MODE_SOLID*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsLED_MODE_BLINK*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsLED_MODE_BREATH*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsLED_MODE_RAINBOW*: uint8 = 4'u8
const Ros1Leju_mobile_base_msgsLED_MODE_CHASE*: uint8 = 5'u8
proc initRos1Leju_mobile_base_msgsLED*(): Ros1Leju_mobile_base_msgsLED =
  result.`mode` = 0
  result.`red` = 0
  result.`green` = 0
  result.`blue` = 0
  result.`brightness` = 0
  result.`speed` = 0
  result.`frequency` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsLED; w: var Writer) =
  putInteger(w,value.`mode`)
  putInteger(w,value.`red`)
  putInteger(w,value.`green`)
  putInteger(w,value.`blue`)
  putInteger(w,value.`brightness`)
  putInteger(w,value.`speed`)
  putFloat32(w,value.`frequency`)
proc readRos1Leju_mobile_base_msgsLED*(r: var Reader): Ros1Leju_mobile_base_msgsLED =
  result = initRos1Leju_mobile_base_msgsLED()
  result.`mode` = getInteger(r,uint8)
  result.`red` = getInteger(r,uint8)
  result.`green` = getInteger(r,uint8)
  result.`blue` = getInteger(r,uint8)
  result.`brightness` = getInteger(r,uint8)
  result.`speed` = getInteger(r,uint8)
  result.`frequency` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsLED): seq[byte] =
  var w = initWriter(10)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsLED*(b: seq[byte]): Ros1Leju_mobile_base_msgsLED =
  var r = initReader(b,10)
  result = readRos1Leju_mobile_base_msgsLED(r)
  finish(r)
type Ros1Leju_mobile_base_msgsLiftControl3Feedback* = object
  `current_position`*: float32
  `target_position`*: float32
  `velocity`*: float32
  `status`*: uint8
  `progress`*: uint8
  `error_code`*: uint32
const Ros1Leju_mobile_base_msgsLiftControl3FeedbackMaximumWireBytes* = 18
const Ros1Leju_mobile_base_msgsLiftControl3FeedbackCodecIdentity* = "UWVMROS1_c330ee6d960ed2e4eb77758a3c1544bb323f8200782de9b079593efeee30d048"
const Ros1Leju_mobile_base_msgsLiftControl3FeedbackNativeType* = "leju_mobile_base_msgs/LiftControl3Feedback"
const Ros1Leju_mobile_base_msgsLiftControl3FeedbackNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsLiftControl3Feedback_STATUS_IDLE*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsLiftControl3Feedback_STATUS_MOVING_UP*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsLiftControl3Feedback_STATUS_MOVING_DOWN*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsLiftControl3Feedback_STATUS_HOLDING*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsLiftControl3Feedback_STATUS_ERROR*: uint8 = 4'u8
proc initRos1Leju_mobile_base_msgsLiftControl3Feedback*(): Ros1Leju_mobile_base_msgsLiftControl3Feedback =
  result.`current_position` = 0
  result.`target_position` = 0
  result.`velocity` = 0
  result.`status` = 0
  result.`progress` = 0
  result.`error_code` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsLiftControl3Feedback; w: var Writer) =
  putFloat32(w,value.`current_position`)
  putFloat32(w,value.`target_position`)
  putFloat32(w,value.`velocity`)
  putInteger(w,value.`status`)
  putInteger(w,value.`progress`)
  putInteger(w,value.`error_code`)
proc readRos1Leju_mobile_base_msgsLiftControl3Feedback*(r: var Reader): Ros1Leju_mobile_base_msgsLiftControl3Feedback =
  result = initRos1Leju_mobile_base_msgsLiftControl3Feedback()
  result.`current_position` = getFloat32(r)
  result.`target_position` = getFloat32(r)
  result.`velocity` = getFloat32(r)
  result.`status` = getInteger(r,uint8)
  result.`progress` = getInteger(r,uint8)
  result.`error_code` = getInteger(r,uint32)
proc encode*(value: Ros1Leju_mobile_base_msgsLiftControl3Feedback): seq[byte] =
  var w = initWriter(18)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsLiftControl3Feedback*(b: seq[byte]): Ros1Leju_mobile_base_msgsLiftControl3Feedback =
  var r = initReader(b,18)
  result = readRos1Leju_mobile_base_msgsLiftControl3Feedback(r)
  finish(r)
type Ros1Leju_mobile_base_msgsLiftControl3Goal* = object
  `target_position`*: float32
  `max_velocity`*: float32
  `max_acceleration`*: float32
  `position_tolerance`*: float32
  `control_mode`*: uint8
  `target_force`*: float32
  `timeout`*: float32
const Ros1Leju_mobile_base_msgsLiftControl3GoalMaximumWireBytes* = 25
const Ros1Leju_mobile_base_msgsLiftControl3GoalCodecIdentity* = "UWVMROS1_5010015d2dcbcfd757d916bc7e9ca3813ffd02ed9f9a57c7810dcd95db2473c7"
const Ros1Leju_mobile_base_msgsLiftControl3GoalNativeType* = "leju_mobile_base_msgs/LiftControl3Goal"
const Ros1Leju_mobile_base_msgsLiftControl3GoalNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsLiftControl3Goal_MODE_POSITION*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsLiftControl3Goal_MODE_VELOCITY*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsLiftControl3Goal_MODE_FORCE*: uint8 = 2'u8
proc initRos1Leju_mobile_base_msgsLiftControl3Goal*(): Ros1Leju_mobile_base_msgsLiftControl3Goal =
  result.`target_position` = 0
  result.`max_velocity` = 0
  result.`max_acceleration` = 0
  result.`position_tolerance` = 0
  result.`control_mode` = 0
  result.`target_force` = 0
  result.`timeout` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsLiftControl3Goal; w: var Writer) =
  putFloat32(w,value.`target_position`)
  putFloat32(w,value.`max_velocity`)
  putFloat32(w,value.`max_acceleration`)
  putFloat32(w,value.`position_tolerance`)
  putInteger(w,value.`control_mode`)
  putFloat32(w,value.`target_force`)
  putFloat32(w,value.`timeout`)
proc readRos1Leju_mobile_base_msgsLiftControl3Goal*(r: var Reader): Ros1Leju_mobile_base_msgsLiftControl3Goal =
  result = initRos1Leju_mobile_base_msgsLiftControl3Goal()
  result.`target_position` = getFloat32(r)
  result.`max_velocity` = getFloat32(r)
  result.`max_acceleration` = getFloat32(r)
  result.`position_tolerance` = getFloat32(r)
  result.`control_mode` = getInteger(r,uint8)
  result.`target_force` = getFloat32(r)
  result.`timeout` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsLiftControl3Goal): seq[byte] =
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsLiftControl3Goal*(b: seq[byte]): Ros1Leju_mobile_base_msgsLiftControl3Goal =
  var r = initReader(b,25)
  result = readRos1Leju_mobile_base_msgsLiftControl3Goal(r)
  finish(r)
type Ros1Leju_mobile_base_msgsLiftControl3Result* = object
  `final_position`*: float32
  `result`*: uint8
  `error_code`*: uint32
  `error_msg`*: string
  `execution_time`*: float32
const Ros1Leju_mobile_base_msgsLiftControl3ResultMaximumWireBytes* = 273
const Ros1Leju_mobile_base_msgsLiftControl3ResultCodecIdentity* = "UWVMROS1_b8ff817a12dee5de61fda25c5a381277463a6f99cdaac51af443a94710c6eb0c"
const Ros1Leju_mobile_base_msgsLiftControl3ResultNativeType* = "leju_mobile_base_msgs/LiftControl3Result"
const Ros1Leju_mobile_base_msgsLiftControl3ResultNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsLiftControl3Result_RESULT_SUCCESS*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsLiftControl3Result_RESULT_FAILED*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsLiftControl3Result_RESULT_TIMEOUT*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsLiftControl3Result_RESULT_CANCELLED*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsLiftControl3Result_RESULT_OUT_OF_RANGE*: uint8 = 4'u8
proc initRos1Leju_mobile_base_msgsLiftControl3Result*(): Ros1Leju_mobile_base_msgsLiftControl3Result =
  result.`final_position` = 0
  result.`result` = 0
  result.`error_code` = 0
  result.`error_msg` = ""
  result.`execution_time` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsLiftControl3Result; w: var Writer) =
  putFloat32(w,value.`final_position`)
  putInteger(w,value.`result`)
  putInteger(w,value.`error_code`)
  putString(w,value.`error_msg`,256)
  putFloat32(w,value.`execution_time`)
proc readRos1Leju_mobile_base_msgsLiftControl3Result*(r: var Reader): Ros1Leju_mobile_base_msgsLiftControl3Result =
  result = initRos1Leju_mobile_base_msgsLiftControl3Result()
  result.`final_position` = getFloat32(r)
  result.`result` = getInteger(r,uint8)
  result.`error_code` = getInteger(r,uint32)
  result.`error_msg` = getString(r,256)
  result.`execution_time` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsLiftControl3Result): seq[byte] =
  var w = initWriter(273)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsLiftControl3Result*(b: seq[byte]): Ros1Leju_mobile_base_msgsLiftControl3Result =
  var r = initReader(b,273)
  result = readRos1Leju_mobile_base_msgsLiftControl3Result(r)
  finish(r)
type Ros1Leju_mobile_base_msgsLiftStatus* = object
  `header`*: Ros1Std_msgsHeader
  `current_height`*: float32
  `target_height`*: float32
  `min_height`*: float32
  `max_height`*: float32
  `velocity`*: float32
  `is_enabled`*: bool
  `is_calibrated`*: bool
  `state`*: uint8
  `error_code`*: uint32
  `error_msg`*: string
const Ros1Leju_mobile_base_msgsLiftStatusMaximumWireBytes* = 559
const Ros1Leju_mobile_base_msgsLiftStatusCodecIdentity* = "UWVMROS1_c7e73731cc14f27209320edfe8d05d5d2582e4d65d414f45066bac67744244e8"
const Ros1Leju_mobile_base_msgsLiftStatusNativeType* = "leju_mobile_base_msgs/LiftStatus"
const Ros1Leju_mobile_base_msgsLiftStatusNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsLiftStatus_STATE_UNKNOWN*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsLiftStatus_STATE_IDLE*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsLiftStatus_STATE_MOVING_UP*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsLiftStatus_STATE_MOVING_DOWN*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsLiftStatus_STATE_HOLDING*: uint8 = 4'u8
const Ros1Leju_mobile_base_msgsLiftStatus_STATE_ERROR*: uint8 = 5'u8
proc initRos1Leju_mobile_base_msgsLiftStatus*(): Ros1Leju_mobile_base_msgsLiftStatus =
  result.`header` = initRos1Std_msgsHeader()
  result.`current_height` = 0
  result.`target_height` = 0
  result.`min_height` = 0
  result.`max_height` = 0
  result.`velocity` = 0
  result.`is_enabled` = false
  result.`is_calibrated` = false
  result.`state` = 0
  result.`error_code` = 0
  result.`error_msg` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsLiftStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`current_height`)
  putFloat32(w,value.`target_height`)
  putFloat32(w,value.`min_height`)
  putFloat32(w,value.`max_height`)
  putFloat32(w,value.`velocity`)
  putBool(w,value.`is_enabled`)
  putBool(w,value.`is_calibrated`)
  putInteger(w,value.`state`)
  putInteger(w,value.`error_code`)
  putString(w,value.`error_msg`,256)
proc readRos1Leju_mobile_base_msgsLiftStatus*(r: var Reader): Ros1Leju_mobile_base_msgsLiftStatus =
  result = initRos1Leju_mobile_base_msgsLiftStatus()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`current_height` = getFloat32(r)
  result.`target_height` = getFloat32(r)
  result.`min_height` = getFloat32(r)
  result.`max_height` = getFloat32(r)
  result.`velocity` = getFloat32(r)
  result.`is_enabled` = getBool(r)
  result.`is_calibrated` = getBool(r)
  result.`state` = getInteger(r,uint8)
  result.`error_code` = getInteger(r,uint32)
  result.`error_msg` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsLiftStatus): seq[byte] =
  var w = initWriter(559)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsLiftStatus*(b: seq[byte]): Ros1Leju_mobile_base_msgsLiftStatus =
  var r = initReader(b,559)
  result = readRos1Leju_mobile_base_msgsLiftStatus(r)
  finish(r)
type Ros1Leju_mobile_base_msgsMoveBaseActionGoal* = object
  `header`*: Ros1Std_msgsHeader
  `goal_id`*: string
  `target_pose`*: Ros1Geometry_msgsPoseStamped
  `max_linear_vel`*: float32
  `max_angular_vel`*: float32
  `position_tolerance`*: float32
  `orientation_tolerance`*: float32
  `navigation_mode`*: uint8
  `ignore_orientation`*: bool
  `timeout`*: float32
const Ros1Leju_mobile_base_msgsMoveBaseActionGoalMaximumWireBytes* = 882
const Ros1Leju_mobile_base_msgsMoveBaseActionGoalCodecIdentity* = "UWVMROS1_859abb2603e8bf9bc6b80737e781061f5f0f26f4572b4d389fcf7fd5a4eb83a4"
const Ros1Leju_mobile_base_msgsMoveBaseActionGoalNativeType* = "leju_mobile_base_msgs/MoveBaseActionGoal"
const Ros1Leju_mobile_base_msgsMoveBaseActionGoalNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsMoveBaseActionGoal_MODE_NORMAL*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsMoveBaseActionGoal_MODE_CAREFUL*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsMoveBaseActionGoal_MODE_FAST*: uint8 = 2'u8
proc initRos1Leju_mobile_base_msgsMoveBaseActionGoal*(): Ros1Leju_mobile_base_msgsMoveBaseActionGoal =
  result.`header` = initRos1Std_msgsHeader()
  result.`goal_id` = ""
  result.`target_pose` = initRos1Geometry_msgsPoseStamped()
  result.`max_linear_vel` = 0
  result.`max_angular_vel` = 0
  result.`position_tolerance` = 0
  result.`orientation_tolerance` = 0
  result.`navigation_mode` = 0
  result.`ignore_orientation` = false
  result.`timeout` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsMoveBaseActionGoal; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`goal_id`,256)
  writeFields(value.`target_pose`,w)
  putFloat32(w,value.`max_linear_vel`)
  putFloat32(w,value.`max_angular_vel`)
  putFloat32(w,value.`position_tolerance`)
  putFloat32(w,value.`orientation_tolerance`)
  putInteger(w,value.`navigation_mode`)
  putBool(w,value.`ignore_orientation`)
  putFloat32(w,value.`timeout`)
proc readRos1Leju_mobile_base_msgsMoveBaseActionGoal*(r: var Reader): Ros1Leju_mobile_base_msgsMoveBaseActionGoal =
  result = initRos1Leju_mobile_base_msgsMoveBaseActionGoal()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`goal_id` = getString(r,256)
  result.`target_pose` = readRos1Geometry_msgsPoseStamped(r)
  result.`max_linear_vel` = getFloat32(r)
  result.`max_angular_vel` = getFloat32(r)
  result.`position_tolerance` = getFloat32(r)
  result.`orientation_tolerance` = getFloat32(r)
  result.`navigation_mode` = getInteger(r,uint8)
  result.`ignore_orientation` = getBool(r)
  result.`timeout` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsMoveBaseActionGoal): seq[byte] =
  var w = initWriter(882)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsMoveBaseActionGoal*(b: seq[byte]): Ros1Leju_mobile_base_msgsMoveBaseActionGoal =
  var r = initReader(b,882)
  result = readRos1Leju_mobile_base_msgsMoveBaseActionGoal(r)
  finish(r)
type Ros1Leju_mobile_base_msgsMoveToTargetRequest* = object
  `x`*: float32
  `y`*: float32
  `theta`*: float32
  `options`*: Ros1Leju_mobile_base_msgsMoveToTargetOptions
const Ros1Leju_mobile_base_msgsMoveToTargetRequestMaximumWireBytes* = 34
const Ros1Leju_mobile_base_msgsMoveToTargetRequestCodecIdentity* = "UWVMROS1_295e988de4c4693ab477756bcc4a4d6448230de2ba62339a14e322950c65ed64"
const Ros1Leju_mobile_base_msgsMoveToTargetRequestNativeType* = "leju_mobile_base_msgs/MoveToTargetRequest"
const Ros1Leju_mobile_base_msgsMoveToTargetRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsMoveToTargetRequest*(): Ros1Leju_mobile_base_msgsMoveToTargetRequest =
  result.`x` = 0
  result.`y` = 0
  result.`theta` = 0
  result.`options` = initRos1Leju_mobile_base_msgsMoveToTargetOptions()
proc writeFields*(value: Ros1Leju_mobile_base_msgsMoveToTargetRequest; w: var Writer) =
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`theta`)
  writeFields(value.`options`,w)
proc readRos1Leju_mobile_base_msgsMoveToTargetRequest*(r: var Reader): Ros1Leju_mobile_base_msgsMoveToTargetRequest =
  result = initRos1Leju_mobile_base_msgsMoveToTargetRequest()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`theta` = getFloat32(r)
  result.`options` = readRos1Leju_mobile_base_msgsMoveToTargetOptions(r)
proc encode*(value: Ros1Leju_mobile_base_msgsMoveToTargetRequest): seq[byte] =
  var w = initWriter(34)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsMoveToTargetRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsMoveToTargetRequest =
  var r = initReader(b,34)
  result = readRos1Leju_mobile_base_msgsMoveToTargetRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsMoveToTargetResponse* = object
  `success`*: bool
  `message`*: string
  `task_id`*: string
const Ros1Leju_mobile_base_msgsMoveToTargetResponseMaximumWireBytes* = 521
const Ros1Leju_mobile_base_msgsMoveToTargetResponseCodecIdentity* = "UWVMROS1_3a03fe3eb268239605c030d29bff1cc7a67e7b6a27c065a05be4562619440757"
const Ros1Leju_mobile_base_msgsMoveToTargetResponseNativeType* = "leju_mobile_base_msgs/MoveToTargetResponse"
const Ros1Leju_mobile_base_msgsMoveToTargetResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsMoveToTargetResponse*(): Ros1Leju_mobile_base_msgsMoveToTargetResponse =
  result.`success` = false
  result.`message` = ""
  result.`task_id` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsMoveToTargetResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putString(w,value.`task_id`,256)
proc readRos1Leju_mobile_base_msgsMoveToTargetResponse*(r: var Reader): Ros1Leju_mobile_base_msgsMoveToTargetResponse =
  result = initRos1Leju_mobile_base_msgsMoveToTargetResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`task_id` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsMoveToTargetResponse): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsMoveToTargetResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsMoveToTargetResponse =
  var r = initReader(b,521)
  result = readRos1Leju_mobile_base_msgsMoveToTargetResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsNavigationModeGoal* = object
  `navigation_mode`*: uint8
  `mode_parameter`*: uint8
  `persist_mode`*: bool
const Ros1Leju_mobile_base_msgsNavigationModeGoalMaximumWireBytes* = 3
const Ros1Leju_mobile_base_msgsNavigationModeGoalCodecIdentity* = "UWVMROS1_8d0f6ac4a2ba103c3e4c454b22b50dbe39ea9e5163ab5138b3094f8c9fdcf1f9"
const Ros1Leju_mobile_base_msgsNavigationModeGoalNativeType* = "leju_mobile_base_msgs/NavigationModeGoal"
const Ros1Leju_mobile_base_msgsNavigationModeGoalNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsNavigationModeGoal_MODE_NORMAL*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsNavigationModeGoal_MODE_CAREFUL*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsNavigationModeGoal_MODE_FAST*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsNavigationModeGoal_MODE_TIGHT_SPACE*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsNavigationModeGoal_MODE_DOCK*: uint8 = 4'u8
proc initRos1Leju_mobile_base_msgsNavigationModeGoal*(): Ros1Leju_mobile_base_msgsNavigationModeGoal =
  result.`navigation_mode` = 0
  result.`mode_parameter` = 0
  result.`persist_mode` = false
proc writeFields*(value: Ros1Leju_mobile_base_msgsNavigationModeGoal; w: var Writer) =
  putInteger(w,value.`navigation_mode`)
  putInteger(w,value.`mode_parameter`)
  putBool(w,value.`persist_mode`)
proc readRos1Leju_mobile_base_msgsNavigationModeGoal*(r: var Reader): Ros1Leju_mobile_base_msgsNavigationModeGoal =
  result = initRos1Leju_mobile_base_msgsNavigationModeGoal()
  result.`navigation_mode` = getInteger(r,uint8)
  result.`mode_parameter` = getInteger(r,uint8)
  result.`persist_mode` = getBool(r)
proc encode*(value: Ros1Leju_mobile_base_msgsNavigationModeGoal): seq[byte] =
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsNavigationModeGoal*(b: seq[byte]): Ros1Leju_mobile_base_msgsNavigationModeGoal =
  var r = initReader(b,3)
  result = readRos1Leju_mobile_base_msgsNavigationModeGoal(r)
  finish(r)
type Ros1Leju_mobile_base_msgsParameter* = object
  `header`*: Ros1Std_msgsHeader
  `wheel_base`*: float32
  `track_width`*: float32
  `wheel_radius`*: float32
  `max_linear_vel`*: float32
  `max_angular_vel`*: float32
  `max_linear_acc`*: float32
  `max_angular_acc`*: float32
  `motor_count`*: uint8
  `motor_ratios`*: seq[float32]
  `pid_linear_p`*: float32
  `pid_linear_i`*: float32
  `pid_linear_d`*: float32
  `pid_angular_p`*: float32
  `pid_angular_i`*: float32
  `pid_angular_d`*: float32
  `safety_stop_distance`*: float32
  `slow_down_distance`*: float32
const Ros1Leju_mobile_base_msgsParameterMaximumWireBytes* = 401
const Ros1Leju_mobile_base_msgsParameterCodecIdentity* = "UWVMROS1_b09c75c56ca378dcc08c723ee5c911d03191ea58296ef214f7a44ff65fd2cf6c"
const Ros1Leju_mobile_base_msgsParameterNativeType* = "leju_mobile_base_msgs/Parameter"
const Ros1Leju_mobile_base_msgsParameterNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsParameter*(): Ros1Leju_mobile_base_msgsParameter =
  result.`header` = initRos1Std_msgsHeader()
  result.`wheel_base` = 0
  result.`track_width` = 0
  result.`wheel_radius` = 0
  result.`max_linear_vel` = 0
  result.`max_angular_vel` = 0
  result.`max_linear_acc` = 0
  result.`max_angular_acc` = 0
  result.`motor_count` = 0
  result.`motor_ratios` = @[]
  result.`pid_linear_p` = 0
  result.`pid_linear_i` = 0
  result.`pid_linear_d` = 0
  result.`pid_angular_p` = 0
  result.`pid_angular_i` = 0
  result.`pid_angular_d` = 0
  result.`safety_stop_distance` = 0
  result.`slow_down_distance` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsParameter; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`wheel_base`)
  putFloat32(w,value.`track_width`)
  putFloat32(w,value.`wheel_radius`)
  putFloat32(w,value.`max_linear_vel`)
  putFloat32(w,value.`max_angular_vel`)
  putFloat32(w,value.`max_linear_acc`)
  putFloat32(w,value.`max_angular_acc`)
  putInteger(w,value.`motor_count`)
  if value.`motor_ratios`.len > 16: fail(22)
  putInteger(w,uint32(value.`motor_ratios`.len))
  for e in value.`motor_ratios`:
    putFloat32(w,e)
  putFloat32(w,value.`pid_linear_p`)
  putFloat32(w,value.`pid_linear_i`)
  putFloat32(w,value.`pid_linear_d`)
  putFloat32(w,value.`pid_angular_p`)
  putFloat32(w,value.`pid_angular_i`)
  putFloat32(w,value.`pid_angular_d`)
  putFloat32(w,value.`safety_stop_distance`)
  putFloat32(w,value.`slow_down_distance`)
proc readRos1Leju_mobile_base_msgsParameter*(r: var Reader): Ros1Leju_mobile_base_msgsParameter =
  result = initRos1Leju_mobile_base_msgsParameter()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`wheel_base` = getFloat32(r)
  result.`track_width` = getFloat32(r)
  result.`wheel_radius` = getFloat32(r)
  result.`max_linear_vel` = getFloat32(r)
  result.`max_angular_vel` = getFloat32(r)
  result.`max_linear_acc` = getFloat32(r)
  result.`max_angular_acc` = getFloat32(r)
  result.`motor_count` = getInteger(r,uint8)
  let rawcount9 = getInteger(r,uint32)
  if rawcount9 > 16: fail(22)
  let count9 = int(rawcount9)
  result.`motor_ratios` = newSeq[float32](count9)
  for i in 0..<count9:
    result.`motor_ratios`[i] = getFloat32(r)
  result.`pid_linear_p` = getFloat32(r)
  result.`pid_linear_i` = getFloat32(r)
  result.`pid_linear_d` = getFloat32(r)
  result.`pid_angular_p` = getFloat32(r)
  result.`pid_angular_i` = getFloat32(r)
  result.`pid_angular_d` = getFloat32(r)
  result.`safety_stop_distance` = getFloat32(r)
  result.`slow_down_distance` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsParameter): seq[byte] =
  var w = initWriter(401)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsParameter*(b: seq[byte]): Ros1Leju_mobile_base_msgsParameter =
  var r = initReader(b,401)
  result = readRos1Leju_mobile_base_msgsParameter(r)
  finish(r)
type Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest* = object
  `task_id`*: string
  `requester`*: string
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestMaximumWireBytes* = 520
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodecIdentity* = "UWVMROS1_8bb35f59026ca6385da33a4c86f58042897083c9418825fcba097d8dee2d2a52"
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestNativeType* = "leju_mobile_base_msgs/ResetTemporaryOdometerRequest"
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest*(): Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest =
  result.`task_id` = ""
  result.`requester` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest; w: var Writer) =
  putString(w,value.`task_id`,256)
  putString(w,value.`requester`,256)
proc readRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest*(r: var Reader): Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest =
  result = initRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest()
  result.`task_id` = getString(r,256)
  result.`requester` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest): seq[byte] =
  var w = initWriter(520)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest =
  var r = initReader(b,520)
  result = readRos1Leju_mobile_base_msgsResetTemporaryOdometerRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse* = object
  `success`*: bool
  `message`*: string
  `distance_before_reset_m`*: float64
  `reset_time`*: Ros1Time
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseMaximumWireBytes* = 277
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodecIdentity* = "UWVMROS1_7360918f159601fcc66ffd1f9a46286ebea582b4b96cb0a361b086abd5ccc522"
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseNativeType* = "leju_mobile_base_msgs/ResetTemporaryOdometerResponse"
const Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse*(): Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse =
  result.`success` = false
  result.`message` = ""
  result.`distance_before_reset_m` = 0
  result.`reset_time` = initRos1Time()
proc writeFields*(value: Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putFloat64(w,value.`distance_before_reset_m`)
  writeFields(value.`reset_time`,w)
proc readRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse*(r: var Reader): Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse =
  result = initRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`distance_before_reset_m` = getFloat64(r)
  result.`reset_time` = readRos1Time(r)
proc encode*(value: Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse): seq[byte] =
  var w = initWriter(277)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse =
  var r = initReader(b,277)
  result = readRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsRobotStatus* = object
  `header`*: Ros1Std_msgsHeader
  `mode`*: uint8
  `task_status`*: uint8
  `task_id`*: string
  `progress`*: uint8
  `error_code`*: uint32
  `error_msg`*: string
const Ros1Leju_mobile_base_msgsRobotStatusMaximumWireBytes* = 799
const Ros1Leju_mobile_base_msgsRobotStatusCodecIdentity* = "UWVMROS1_e8585cf2e66624a2359e34f11cca3b811b388e46a54ed91102ee329327ea62ca"
const Ros1Leju_mobile_base_msgsRobotStatusNativeType* = "leju_mobile_base_msgs/RobotStatus"
const Ros1Leju_mobile_base_msgsRobotStatusNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsRobotStatus_MODE_IDLE*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsRobotStatus_MODE_MANUAL*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsRobotStatus_MODE_AUTO*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsRobotStatus_MODE_ERROR*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsRobotStatus_TASK_NONE*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsRobotStatus_TASK_RUNNING*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsRobotStatus_TASK_PAUSED*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsRobotStatus_TASK_COMPLETED*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsRobotStatus_TASK_FAILED*: uint8 = 4'u8
proc initRos1Leju_mobile_base_msgsRobotStatus*(): Ros1Leju_mobile_base_msgsRobotStatus =
  result.`header` = initRos1Std_msgsHeader()
  result.`mode` = 0
  result.`task_status` = 0
  result.`task_id` = ""
  result.`progress` = 0
  result.`error_code` = 0
  result.`error_msg` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsRobotStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`mode`)
  putInteger(w,value.`task_status`)
  putString(w,value.`task_id`,256)
  putInteger(w,value.`progress`)
  putInteger(w,value.`error_code`)
  putString(w,value.`error_msg`,256)
proc readRos1Leju_mobile_base_msgsRobotStatus*(r: var Reader): Ros1Leju_mobile_base_msgsRobotStatus =
  result = initRos1Leju_mobile_base_msgsRobotStatus()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`mode` = getInteger(r,uint8)
  result.`task_status` = getInteger(r,uint8)
  result.`task_id` = getString(r,256)
  result.`progress` = getInteger(r,uint8)
  result.`error_code` = getInteger(r,uint32)
  result.`error_msg` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsRobotStatus): seq[byte] =
  var w = initWriter(799)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsRobotStatus*(b: seq[byte]): Ros1Leju_mobile_base_msgsRobotStatus =
  var r = initReader(b,799)
  result = readRos1Leju_mobile_base_msgsRobotStatus(r)
  finish(r)
type Ros1Leju_mobile_base_msgsSetDispatchModeRequest* = object
  `control_mode`*: uint8
const Ros1Leju_mobile_base_msgsSetDispatchModeRequestMaximumWireBytes* = 1
const Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodecIdentity* = "UWVMROS1_8cd6f393f131ef1b32924a4eaa9a534b3ed45392589cfd42ab1ed3459d6663d5"
const Ros1Leju_mobile_base_msgsSetDispatchModeRequestNativeType* = "leju_mobile_base_msgs/SetDispatchModeRequest"
const Ros1Leju_mobile_base_msgsSetDispatchModeRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsSetDispatchModeRequest*(): Ros1Leju_mobile_base_msgsSetDispatchModeRequest =
  result.`control_mode` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsSetDispatchModeRequest; w: var Writer) =
  putInteger(w,value.`control_mode`)
proc readRos1Leju_mobile_base_msgsSetDispatchModeRequest*(r: var Reader): Ros1Leju_mobile_base_msgsSetDispatchModeRequest =
  result = initRos1Leju_mobile_base_msgsSetDispatchModeRequest()
  result.`control_mode` = getInteger(r,uint8)
proc encode*(value: Ros1Leju_mobile_base_msgsSetDispatchModeRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsSetDispatchModeRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsSetDispatchModeRequest =
  var r = initReader(b,1)
  result = readRos1Leju_mobile_base_msgsSetDispatchModeRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsSetDispatchModeResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Leju_mobile_base_msgsSetDispatchModeResponseMaximumWireBytes* = 261
const Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodecIdentity* = "UWVMROS1_d80977c78bcc3720cb22332a9699c6a9a0e7f867c88e540cf3978b0cc83553c0"
const Ros1Leju_mobile_base_msgsSetDispatchModeResponseNativeType* = "leju_mobile_base_msgs/SetDispatchModeResponse"
const Ros1Leju_mobile_base_msgsSetDispatchModeResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsSetDispatchModeResponse*(): Ros1Leju_mobile_base_msgsSetDispatchModeResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsSetDispatchModeResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Leju_mobile_base_msgsSetDispatchModeResponse*(r: var Reader): Ros1Leju_mobile_base_msgsSetDispatchModeResponse =
  result = initRos1Leju_mobile_base_msgsSetDispatchModeResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsSetDispatchModeResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsSetDispatchModeResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsSetDispatchModeResponse =
  var r = initReader(b,261)
  result = readRos1Leju_mobile_base_msgsSetDispatchModeResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsSetMapServerRequest* = object
  `map_name`*: string
  `map_path`*: string
  `load_immediately`*: bool
  `save_current_pose`*: bool
  `switching_mode`*: uint8
const Ros1Leju_mobile_base_msgsSetMapServerRequestMaximumWireBytes* = 523
const Ros1Leju_mobile_base_msgsSetMapServerRequestCodecIdentity* = "UWVMROS1_bd963aa394a550c16c364de75d1c27141171face3ee56de59acf1ec9e3acdc97"
const Ros1Leju_mobile_base_msgsSetMapServerRequestNativeType* = "leju_mobile_base_msgs/SetMapServerRequest"
const Ros1Leju_mobile_base_msgsSetMapServerRequestNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsSetMapServerRequest_MODE_REPLACE*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsSetMapServerRequest_MODE_MERGE*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsSetMapServerRequest_MODE_OVERLAY*: uint8 = 2'u8
proc initRos1Leju_mobile_base_msgsSetMapServerRequest*(): Ros1Leju_mobile_base_msgsSetMapServerRequest =
  result.`map_name` = ""
  result.`map_path` = ""
  result.`load_immediately` = false
  result.`save_current_pose` = false
  result.`switching_mode` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsSetMapServerRequest; w: var Writer) =
  putString(w,value.`map_name`,256)
  putString(w,value.`map_path`,256)
  putBool(w,value.`load_immediately`)
  putBool(w,value.`save_current_pose`)
  putInteger(w,value.`switching_mode`)
proc readRos1Leju_mobile_base_msgsSetMapServerRequest*(r: var Reader): Ros1Leju_mobile_base_msgsSetMapServerRequest =
  result = initRos1Leju_mobile_base_msgsSetMapServerRequest()
  result.`map_name` = getString(r,256)
  result.`map_path` = getString(r,256)
  result.`load_immediately` = getBool(r)
  result.`save_current_pose` = getBool(r)
  result.`switching_mode` = getInteger(r,uint8)
proc encode*(value: Ros1Leju_mobile_base_msgsSetMapServerRequest): seq[byte] =
  var w = initWriter(523)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsSetMapServerRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsSetMapServerRequest =
  var r = initReader(b,523)
  result = readRos1Leju_mobile_base_msgsSetMapServerRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsSetMapServerResponse* = object
  `success`*: bool
  `message`*: string
  `error_code`*: uint32
  `active_map_name`*: string
  `initial_pose`*: Ros1Geometry_msgsPoseStamped
const Ros1Leju_mobile_base_msgsSetMapServerResponseMaximumWireBytes* = 853
const Ros1Leju_mobile_base_msgsSetMapServerResponseCodecIdentity* = "UWVMROS1_07338cc9283fd0fab08b0ac371353e22077690eab7309a88c1ef9e3537f4dc5b"
const Ros1Leju_mobile_base_msgsSetMapServerResponseNativeType* = "leju_mobile_base_msgs/SetMapServerResponse"
const Ros1Leju_mobile_base_msgsSetMapServerResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsSetMapServerResponse*(): Ros1Leju_mobile_base_msgsSetMapServerResponse =
  result.`success` = false
  result.`message` = ""
  result.`error_code` = 0
  result.`active_map_name` = ""
  result.`initial_pose` = initRos1Geometry_msgsPoseStamped()
proc writeFields*(value: Ros1Leju_mobile_base_msgsSetMapServerResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
  putInteger(w,value.`error_code`)
  putString(w,value.`active_map_name`,256)
  writeFields(value.`initial_pose`,w)
proc readRos1Leju_mobile_base_msgsSetMapServerResponse*(r: var Reader): Ros1Leju_mobile_base_msgsSetMapServerResponse =
  result = initRos1Leju_mobile_base_msgsSetMapServerResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
  result.`error_code` = getInteger(r,uint32)
  result.`active_map_name` = getString(r,256)
  result.`initial_pose` = readRos1Geometry_msgsPoseStamped(r)
proc encode*(value: Ros1Leju_mobile_base_msgsSetMapServerResponse): seq[byte] =
  var w = initWriter(853)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsSetMapServerResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsSetMapServerResponse =
  var r = initReader(b,853)
  result = readRos1Leju_mobile_base_msgsSetMapServerResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsStartLocalizationRequest* = object
  `enable`*: bool
  `x`*: float64
  `y`*: float64
  `theta`*: float64
const Ros1Leju_mobile_base_msgsStartLocalizationRequestMaximumWireBytes* = 25
const Ros1Leju_mobile_base_msgsStartLocalizationRequestCodecIdentity* = "UWVMROS1_f31e881138598c8c487adf458a1d858fd73b21cd4716dd63bdda896b565c7116"
const Ros1Leju_mobile_base_msgsStartLocalizationRequestNativeType* = "leju_mobile_base_msgs/StartLocalizationRequest"
const Ros1Leju_mobile_base_msgsStartLocalizationRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsStartLocalizationRequest*(): Ros1Leju_mobile_base_msgsStartLocalizationRequest =
  result.`enable` = false
  result.`x` = 0
  result.`y` = 0
  result.`theta` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsStartLocalizationRequest; w: var Writer) =
  putBool(w,value.`enable`)
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`theta`)
proc readRos1Leju_mobile_base_msgsStartLocalizationRequest*(r: var Reader): Ros1Leju_mobile_base_msgsStartLocalizationRequest =
  result = initRos1Leju_mobile_base_msgsStartLocalizationRequest()
  result.`enable` = getBool(r)
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`theta` = getFloat64(r)
proc encode*(value: Ros1Leju_mobile_base_msgsStartLocalizationRequest): seq[byte] =
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsStartLocalizationRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsStartLocalizationRequest =
  var r = initReader(b,25)
  result = readRos1Leju_mobile_base_msgsStartLocalizationRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsStartLocalizationResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Leju_mobile_base_msgsStartLocalizationResponseMaximumWireBytes* = 261
const Ros1Leju_mobile_base_msgsStartLocalizationResponseCodecIdentity* = "UWVMROS1_544bd2a4f941512b0d278dba39f36066ad7e3b04da37acb535b2910efe7457d5"
const Ros1Leju_mobile_base_msgsStartLocalizationResponseNativeType* = "leju_mobile_base_msgs/StartLocalizationResponse"
const Ros1Leju_mobile_base_msgsStartLocalizationResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsStartLocalizationResponse*(): Ros1Leju_mobile_base_msgsStartLocalizationResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsStartLocalizationResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Leju_mobile_base_msgsStartLocalizationResponse*(r: var Reader): Ros1Leju_mobile_base_msgsStartLocalizationResponse =
  result = initRos1Leju_mobile_base_msgsStartLocalizationResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsStartLocalizationResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsStartLocalizationResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsStartLocalizationResponse =
  var r = initReader(b,261)
  result = readRos1Leju_mobile_base_msgsStartLocalizationResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsStepControlGoal* = object
  `command_type`*: uint8
  `velocity`*: Ros1Geometry_msgsTwist
  `target_distance`*: float32
  `max_velocity`*: float32
  `max_acceleration`*: float32
  `tolerance`*: float32
  `hold_position`*: bool
  `timeout`*: float32
const Ros1Leju_mobile_base_msgsStepControlGoalMaximumWireBytes* = 70
const Ros1Leju_mobile_base_msgsStepControlGoalCodecIdentity* = "UWVMROS1_3a8801fcedf6f173d35031ad4c4a681f608f250692c283698ba07e2a0d247a78"
const Ros1Leju_mobile_base_msgsStepControlGoalNativeType* = "leju_mobile_base_msgs/StepControlGoal"
const Ros1Leju_mobile_base_msgsStepControlGoalNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsStepControlGoal_CMD_STOP*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsStepControlGoal_CMD_FORWARD*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsStepControlGoal_CMD_BACKWARD*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsStepControlGoal_CMD_ROTATE_LEFT*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsStepControlGoal_CMD_ROTATE_RIGHT*: uint8 = 4'u8
const Ros1Leju_mobile_base_msgsStepControlGoal_CMD_CUSTOM*: uint8 = 5'u8
proc initRos1Leju_mobile_base_msgsStepControlGoal*(): Ros1Leju_mobile_base_msgsStepControlGoal =
  result.`command_type` = 0
  result.`velocity` = initRos1Geometry_msgsTwist()
  result.`target_distance` = 0
  result.`max_velocity` = 0
  result.`max_acceleration` = 0
  result.`tolerance` = 0
  result.`hold_position` = false
  result.`timeout` = 0
proc writeFields*(value: Ros1Leju_mobile_base_msgsStepControlGoal; w: var Writer) =
  putInteger(w,value.`command_type`)
  writeFields(value.`velocity`,w)
  putFloat32(w,value.`target_distance`)
  putFloat32(w,value.`max_velocity`)
  putFloat32(w,value.`max_acceleration`)
  putFloat32(w,value.`tolerance`)
  putBool(w,value.`hold_position`)
  putFloat32(w,value.`timeout`)
proc readRos1Leju_mobile_base_msgsStepControlGoal*(r: var Reader): Ros1Leju_mobile_base_msgsStepControlGoal =
  result = initRos1Leju_mobile_base_msgsStepControlGoal()
  result.`command_type` = getInteger(r,uint8)
  result.`velocity` = readRos1Geometry_msgsTwist(r)
  result.`target_distance` = getFloat32(r)
  result.`max_velocity` = getFloat32(r)
  result.`max_acceleration` = getFloat32(r)
  result.`tolerance` = getFloat32(r)
  result.`hold_position` = getBool(r)
  result.`timeout` = getFloat32(r)
proc encode*(value: Ros1Leju_mobile_base_msgsStepControlGoal): seq[byte] =
  var w = initWriter(70)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsStepControlGoal*(b: seq[byte]): Ros1Leju_mobile_base_msgsStepControlGoal =
  var r = initReader(b,70)
  result = readRos1Leju_mobile_base_msgsStepControlGoal(r)
  finish(r)
type Ros1Leju_mobile_base_msgsSyncCostmapRequest* = object
  `publish_global_costmap`*: bool
  `publish_local_costmap`*: bool
  `publish_incremental_updates`*: bool
const Ros1Leju_mobile_base_msgsSyncCostmapRequestMaximumWireBytes* = 3
const Ros1Leju_mobile_base_msgsSyncCostmapRequestCodecIdentity* = "UWVMROS1_847bda1b17d57f07bb26e3e8d6979bca8b3d063d98f9a9ccb5c9568d77d2465d"
const Ros1Leju_mobile_base_msgsSyncCostmapRequestNativeType* = "leju_mobile_base_msgs/SyncCostmapRequest"
const Ros1Leju_mobile_base_msgsSyncCostmapRequestNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsSyncCostmapRequest*(): Ros1Leju_mobile_base_msgsSyncCostmapRequest =
  result.`publish_global_costmap` = false
  result.`publish_local_costmap` = false
  result.`publish_incremental_updates` = false
proc writeFields*(value: Ros1Leju_mobile_base_msgsSyncCostmapRequest; w: var Writer) =
  putBool(w,value.`publish_global_costmap`)
  putBool(w,value.`publish_local_costmap`)
  putBool(w,value.`publish_incremental_updates`)
proc readRos1Leju_mobile_base_msgsSyncCostmapRequest*(r: var Reader): Ros1Leju_mobile_base_msgsSyncCostmapRequest =
  result = initRos1Leju_mobile_base_msgsSyncCostmapRequest()
  result.`publish_global_costmap` = getBool(r)
  result.`publish_local_costmap` = getBool(r)
  result.`publish_incremental_updates` = getBool(r)
proc encode*(value: Ros1Leju_mobile_base_msgsSyncCostmapRequest): seq[byte] =
  var w = initWriter(3)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsSyncCostmapRequest*(b: seq[byte]): Ros1Leju_mobile_base_msgsSyncCostmapRequest =
  var r = initReader(b,3)
  result = readRos1Leju_mobile_base_msgsSyncCostmapRequest(r)
  finish(r)
type Ros1Leju_mobile_base_msgsSyncCostmapResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Leju_mobile_base_msgsSyncCostmapResponseMaximumWireBytes* = 261
const Ros1Leju_mobile_base_msgsSyncCostmapResponseCodecIdentity* = "UWVMROS1_753a053dff8383274686de510ef920532ee3cbb6d4f5f346774b587d1ea77e94"
const Ros1Leju_mobile_base_msgsSyncCostmapResponseNativeType* = "leju_mobile_base_msgs/SyncCostmapResponse"
const Ros1Leju_mobile_base_msgsSyncCostmapResponseNativeIdentity* = ""
proc initRos1Leju_mobile_base_msgsSyncCostmapResponse*(): Ros1Leju_mobile_base_msgsSyncCostmapResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsSyncCostmapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Leju_mobile_base_msgsSyncCostmapResponse*(r: var Reader): Ros1Leju_mobile_base_msgsSyncCostmapResponse =
  result = initRos1Leju_mobile_base_msgsSyncCostmapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsSyncCostmapResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsSyncCostmapResponse*(b: seq[byte]): Ros1Leju_mobile_base_msgsSyncCostmapResponse =
  var r = initReader(b,261)
  result = readRos1Leju_mobile_base_msgsSyncCostmapResponse(r)
  finish(r)
type Ros1Leju_mobile_base_msgsTaskDetailStatus* = object
  `header`*: Ros1Std_msgsHeader
  `task_id`*: string
  `current_waypoint_index`*: uint32
  `passed_waypoints`*: seq[uint32]
  `total_waypoints`*: uint32
  `estimated_time_remaining`*: float32
  `distance_to_next_waypoint`*: float32
  `task_status`*: uint8
  `error_code`*: uint32
  `error_msg`*: string
const Ros1Leju_mobile_base_msgsTaskDetailStatusMaximumWireBytes* = 881
const Ros1Leju_mobile_base_msgsTaskDetailStatusCodecIdentity* = "UWVMROS1_3bcd8911bfbfa987dbd8a22a7e92546862215e9cb4bc5ae2f3e254381bc9f121"
const Ros1Leju_mobile_base_msgsTaskDetailStatusNativeType* = "leju_mobile_base_msgs/TaskDetailStatus"
const Ros1Leju_mobile_base_msgsTaskDetailStatusNativeIdentity* = ""
const Ros1Leju_mobile_base_msgsTaskDetailStatus_TASK_NONE*: uint8 = 0'u8
const Ros1Leju_mobile_base_msgsTaskDetailStatus_TASK_RUNNING*: uint8 = 1'u8
const Ros1Leju_mobile_base_msgsTaskDetailStatus_TASK_PAUSED*: uint8 = 2'u8
const Ros1Leju_mobile_base_msgsTaskDetailStatus_TASK_COMPLETED*: uint8 = 3'u8
const Ros1Leju_mobile_base_msgsTaskDetailStatus_TASK_FAILED*: uint8 = 4'u8
proc initRos1Leju_mobile_base_msgsTaskDetailStatus*(): Ros1Leju_mobile_base_msgsTaskDetailStatus =
  result.`header` = initRos1Std_msgsHeader()
  result.`task_id` = ""
  result.`current_waypoint_index` = 0
  result.`passed_waypoints` = @[]
  result.`total_waypoints` = 0
  result.`estimated_time_remaining` = 0
  result.`distance_to_next_waypoint` = 0
  result.`task_status` = 0
  result.`error_code` = 0
  result.`error_msg` = ""
proc writeFields*(value: Ros1Leju_mobile_base_msgsTaskDetailStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`task_id`,256)
  putInteger(w,value.`current_waypoint_index`)
  if value.`passed_waypoints`.len > 16: fail(22)
  putInteger(w,uint32(value.`passed_waypoints`.len))
  for e in value.`passed_waypoints`:
    putInteger(w,e)
  putInteger(w,value.`total_waypoints`)
  putFloat32(w,value.`estimated_time_remaining`)
  putFloat32(w,value.`distance_to_next_waypoint`)
  putInteger(w,value.`task_status`)
  putInteger(w,value.`error_code`)
  putString(w,value.`error_msg`,256)
proc readRos1Leju_mobile_base_msgsTaskDetailStatus*(r: var Reader): Ros1Leju_mobile_base_msgsTaskDetailStatus =
  result = initRos1Leju_mobile_base_msgsTaskDetailStatus()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`task_id` = getString(r,256)
  result.`current_waypoint_index` = getInteger(r,uint32)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`passed_waypoints` = newSeq[uint32](count3)
  for i in 0..<count3:
    result.`passed_waypoints`[i] = getInteger(r,uint32)
  result.`total_waypoints` = getInteger(r,uint32)
  result.`estimated_time_remaining` = getFloat32(r)
  result.`distance_to_next_waypoint` = getFloat32(r)
  result.`task_status` = getInteger(r,uint8)
  result.`error_code` = getInteger(r,uint32)
  result.`error_msg` = getString(r,256)
proc encode*(value: Ros1Leju_mobile_base_msgsTaskDetailStatus): seq[byte] =
  var w = initWriter(881)
  writeFields(value,w)
  w.bytes
proc decodeRos1Leju_mobile_base_msgsTaskDetailStatus*(b: seq[byte]): Ros1Leju_mobile_base_msgsTaskDetailStatus =
  var r = initReader(b,881)
  result = readRos1Leju_mobile_base_msgsTaskDetailStatus(r)
  finish(r)
type Ros1MotioncaptureForcePlateData* = object
  `frame`*: int32
  `plate_id`*: int32
  `Fxyz`*: seq[float64]
  `xyz`*: seq[float64]
  `Mfree`*: float64
const Ros1MotioncaptureForcePlateDataMaximumWireBytes* = 280
const Ros1MotioncaptureForcePlateDataCodecIdentity* = "UWVMROS1_e7ef4632661a80660bd892281e4f820842d293103892d82934522eb165089930"
const Ros1MotioncaptureForcePlateDataNativeType* = "motioncapture/ForcePlateData"
const Ros1MotioncaptureForcePlateDataNativeIdentity* = ""
proc initRos1MotioncaptureForcePlateData*(): Ros1MotioncaptureForcePlateData =
  result.`frame` = 0
  result.`plate_id` = 0
  result.`Fxyz` = @[]
  result.`xyz` = @[]
  result.`Mfree` = 0
proc writeFields*(value: Ros1MotioncaptureForcePlateData; w: var Writer) =
  putInteger(w,value.`frame`)
  putInteger(w,value.`plate_id`)
  if value.`Fxyz`.len > 16: fail(22)
  putInteger(w,uint32(value.`Fxyz`.len))
  for e in value.`Fxyz`:
    putFloat64(w,e)
  if value.`xyz`.len > 16: fail(22)
  putInteger(w,uint32(value.`xyz`.len))
  for e in value.`xyz`:
    putFloat64(w,e)
  putFloat64(w,value.`Mfree`)
proc readRos1MotioncaptureForcePlateData*(r: var Reader): Ros1MotioncaptureForcePlateData =
  result = initRos1MotioncaptureForcePlateData()
  result.`frame` = getInteger(r,int32)
  result.`plate_id` = getInteger(r,int32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`Fxyz` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`Fxyz`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`xyz` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`xyz`[i] = getFloat64(r)
  result.`Mfree` = getFloat64(r)
proc encode*(value: Ros1MotioncaptureForcePlateData): seq[byte] =
  var w = initWriter(280)
  writeFields(value,w)
  w.bytes
proc decodeRos1MotioncaptureForcePlateData*(b: seq[byte]): Ros1MotioncaptureForcePlateData =
  var r = initReader(b,280)
  result = readRos1MotioncaptureForcePlateData(r)
  finish(r)
type Ros1Network_monitorNetworkPingRequest* = object
  `timestamp`*: float64
const Ros1Network_monitorNetworkPingRequestMaximumWireBytes* = 8
const Ros1Network_monitorNetworkPingRequestCodecIdentity* = "UWVMROS1_c76fdf02624613021df1dde84435640759d522c9cbfef93377d65c4da68b6424"
const Ros1Network_monitorNetworkPingRequestNativeType* = "network_monitor/NetworkPingRequest"
const Ros1Network_monitorNetworkPingRequestNativeIdentity* = ""
proc initRos1Network_monitorNetworkPingRequest*(): Ros1Network_monitorNetworkPingRequest =
  result.`timestamp` = 0
proc writeFields*(value: Ros1Network_monitorNetworkPingRequest; w: var Writer) =
  putFloat64(w,value.`timestamp`)
proc readRos1Network_monitorNetworkPingRequest*(r: var Reader): Ros1Network_monitorNetworkPingRequest =
  result = initRos1Network_monitorNetworkPingRequest()
  result.`timestamp` = getFloat64(r)
proc encode*(value: Ros1Network_monitorNetworkPingRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Network_monitorNetworkPingRequest*(b: seq[byte]): Ros1Network_monitorNetworkPingRequest =
  var r = initReader(b,8)
  result = readRos1Network_monitorNetworkPingRequest(r)
  finish(r)
type Ros1Network_monitorNetworkPingResponse* = object
  `timestamp`*: float64
  `success`*: bool
  `message`*: string
const Ros1Network_monitorNetworkPingResponseMaximumWireBytes* = 269
const Ros1Network_monitorNetworkPingResponseCodecIdentity* = "UWVMROS1_9f818cf04a6515748cfda9f8f8ebd323500f1b4c69687c53388d9dc89b96695e"
const Ros1Network_monitorNetworkPingResponseNativeType* = "network_monitor/NetworkPingResponse"
const Ros1Network_monitorNetworkPingResponseNativeIdentity* = ""
proc initRos1Network_monitorNetworkPingResponse*(): Ros1Network_monitorNetworkPingResponse =
  result.`timestamp` = 0
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Network_monitorNetworkPingResponse; w: var Writer) =
  putFloat64(w,value.`timestamp`)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Network_monitorNetworkPingResponse*(r: var Reader): Ros1Network_monitorNetworkPingResponse =
  result = initRos1Network_monitorNetworkPingResponse()
  result.`timestamp` = getFloat64(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Network_monitorNetworkPingResponse): seq[byte] =
  var w = initWriter(269)
  writeFields(value,w)
  w.bytes
proc decodeRos1Network_monitorNetworkPingResponse*(b: seq[byte]): Ros1Network_monitorNetworkPingResponse =
  var r = initReader(b,269)
  result = readRos1Network_monitorNetworkPingResponse(r)
  finish(r)
type Ros1Network_monitorNetworkPingMsg* = object
  `request_id`*: int32
  `timestamp`*: float64
  `success`*: bool
  `message`*: string
const Ros1Network_monitorNetworkPingMsgMaximumWireBytes* = 273
const Ros1Network_monitorNetworkPingMsgCodecIdentity* = "UWVMROS1_fea34714c4490be02928a28270b020ce60e0e59c06e91017029e13a86c4f5885"
const Ros1Network_monitorNetworkPingMsgNativeType* = "network_monitor/NetworkPingMsg"
const Ros1Network_monitorNetworkPingMsgNativeIdentity* = ""
proc initRos1Network_monitorNetworkPingMsg*(): Ros1Network_monitorNetworkPingMsg =
  result.`request_id` = 0
  result.`timestamp` = 0
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Network_monitorNetworkPingMsg; w: var Writer) =
  putInteger(w,value.`request_id`)
  putFloat64(w,value.`timestamp`)
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Network_monitorNetworkPingMsg*(r: var Reader): Ros1Network_monitorNetworkPingMsg =
  result = initRos1Network_monitorNetworkPingMsg()
  result.`request_id` = getInteger(r,int32)
  result.`timestamp` = getFloat64(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Network_monitorNetworkPingMsg): seq[byte] =
  var w = initWriter(273)
  writeFields(value,w)
  w.bytes
proc decodeRos1Network_monitorNetworkPingMsg*(b: seq[byte]): Ros1Network_monitorNetworkPingMsg =
  var r = initReader(b,273)
  result = readRos1Network_monitorNetworkPingMsg(r)
  finish(r)
type Ros1Nimservos_controllerMotor_cmd* = object
  `linear_x`*: int64
  `linear_y`*: int64
const Ros1Nimservos_controllerMotor_cmdMaximumWireBytes* = 16
const Ros1Nimservos_controllerMotor_cmdCodecIdentity* = "UWVMROS1_0ba0f7cb1224af45f72675d5c50fef6885acf4da2052af836c4050cfaac42ade"
const Ros1Nimservos_controllerMotor_cmdNativeType* = "nimservos_controller/motor_cmd"
const Ros1Nimservos_controllerMotor_cmdNativeIdentity* = ""
proc initRos1Nimservos_controllerMotor_cmd*(): Ros1Nimservos_controllerMotor_cmd =
  result.`linear_x` = 0
  result.`linear_y` = 0
proc writeFields*(value: Ros1Nimservos_controllerMotor_cmd; w: var Writer) =
  putInteger(w,value.`linear_x`)
  putInteger(w,value.`linear_y`)
proc readRos1Nimservos_controllerMotor_cmd*(r: var Reader): Ros1Nimservos_controllerMotor_cmd =
  result = initRos1Nimservos_controllerMotor_cmd()
  result.`linear_x` = getInteger(r,int64)
  result.`linear_y` = getInteger(r,int64)
proc encode*(value: Ros1Nimservos_controllerMotor_cmd): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nimservos_controllerMotor_cmd*(b: seq[byte]): Ros1Nimservos_controllerMotor_cmd =
  var r = initReader(b,16)
  result = readRos1Nimservos_controllerMotor_cmd(r)
  finish(r)
type Ros1Nimservos_controllerMotor_state* = object
  `device_id`*: int32
  `control_mode`*: string
  `state`*: string
  `sensor_position`*: int64
  `sensor_velocity`*: int32
  `sensor_temp`*: int16
const Ros1Nimservos_controllerMotor_stateMaximumWireBytes* = 538
const Ros1Nimservos_controllerMotor_stateCodecIdentity* = "UWVMROS1_67369c975c98e8bf8c7a77c9c2d129ed14d9a5a4892cdaab0037a614ddc81a5b"
const Ros1Nimservos_controllerMotor_stateNativeType* = "nimservos_controller/motor_state"
const Ros1Nimservos_controllerMotor_stateNativeIdentity* = ""
proc initRos1Nimservos_controllerMotor_state*(): Ros1Nimservos_controllerMotor_state =
  result.`device_id` = 0
  result.`control_mode` = ""
  result.`state` = ""
  result.`sensor_position` = 0
  result.`sensor_velocity` = 0
  result.`sensor_temp` = 0
proc writeFields*(value: Ros1Nimservos_controllerMotor_state; w: var Writer) =
  putInteger(w,value.`device_id`)
  putString(w,value.`control_mode`,256)
  putString(w,value.`state`,256)
  putInteger(w,value.`sensor_position`)
  putInteger(w,value.`sensor_velocity`)
  putInteger(w,value.`sensor_temp`)
proc readRos1Nimservos_controllerMotor_state*(r: var Reader): Ros1Nimservos_controllerMotor_state =
  result = initRos1Nimservos_controllerMotor_state()
  result.`device_id` = getInteger(r,int32)
  result.`control_mode` = getString(r,256)
  result.`state` = getString(r,256)
  result.`sensor_position` = getInteger(r,int64)
  result.`sensor_velocity` = getInteger(r,int32)
  result.`sensor_temp` = getInteger(r,int16)
proc encode*(value: Ros1Nimservos_controllerMotor_state): seq[byte] =
  var w = initWriter(538)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nimservos_controllerMotor_state*(b: seq[byte]): Ros1Nimservos_controllerMotor_state =
  var r = initReader(b,538)
  result = readRos1Nimservos_controllerMotor_state(r)
  finish(r)
type Ros1Nlink_parserIotFrame0Node* = object
  `uid`*: uint32
  `dis`*: float32
  `aoa_angle_horizontal`*: float32
  `aoa_angle_vertical`*: float32
  `fp_rssi`*: float32
  `rx_rssi`*: float32
  `user_data`*: string
const Ros1Nlink_parserIotFrame0NodeMaximumWireBytes* = 284
const Ros1Nlink_parserIotFrame0NodeCodecIdentity* = "UWVMROS1_6c60ca30e0e00ce014fdf8e8103cdb58f17053d01d13c20b60db11db8fe31993"
const Ros1Nlink_parserIotFrame0NodeNativeType* = "nlink_parser/IotFrame0Node"
const Ros1Nlink_parserIotFrame0NodeNativeIdentity* = ""
proc initRos1Nlink_parserIotFrame0Node*(): Ros1Nlink_parserIotFrame0Node =
  result.`uid` = 0
  result.`dis` = 0
  result.`aoa_angle_horizontal` = 0
  result.`aoa_angle_vertical` = 0
  result.`fp_rssi` = 0
  result.`rx_rssi` = 0
  result.`user_data` = ""
proc writeFields*(value: Ros1Nlink_parserIotFrame0Node; w: var Writer) =
  putInteger(w,value.`uid`)
  putFloat32(w,value.`dis`)
  putFloat32(w,value.`aoa_angle_horizontal`)
  putFloat32(w,value.`aoa_angle_vertical`)
  putFloat32(w,value.`fp_rssi`)
  putFloat32(w,value.`rx_rssi`)
  putString(w,value.`user_data`,256)
proc readRos1Nlink_parserIotFrame0Node*(r: var Reader): Ros1Nlink_parserIotFrame0Node =
  result = initRos1Nlink_parserIotFrame0Node()
  result.`uid` = getInteger(r,uint32)
  result.`dis` = getFloat32(r)
  result.`aoa_angle_horizontal` = getFloat32(r)
  result.`aoa_angle_vertical` = getFloat32(r)
  result.`fp_rssi` = getFloat32(r)
  result.`rx_rssi` = getFloat32(r)
  result.`user_data` = getString(r,256)
proc encode*(value: Ros1Nlink_parserIotFrame0Node): seq[byte] =
  var w = initWriter(284)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserIotFrame0Node*(b: seq[byte]): Ros1Nlink_parserIotFrame0Node =
  var r = initReader(b,284)
  result = readRos1Nlink_parserIotFrame0Node(r)
  finish(r)
type Ros1Nlink_parserIotFrame0* = object
  `uid`*: uint32
  `system_time`*: uint32
  `io_status`*: uint8
  `nodes`*: seq[Ros1Nlink_parserIotFrame0Node]
const Ros1Nlink_parserIotFrame0MaximumWireBytes* = 2285
const Ros1Nlink_parserIotFrame0CodecIdentity* = "UWVMROS1_f9374a7b69be82e8ee93132d2be6132e4901f32863fb7938d2af17b21d43e0f3"
const Ros1Nlink_parserIotFrame0NativeType* = "nlink_parser/IotFrame0"
const Ros1Nlink_parserIotFrame0NativeIdentity* = ""
proc initRos1Nlink_parserIotFrame0*(): Ros1Nlink_parserIotFrame0 =
  result.`uid` = 0
  result.`system_time` = 0
  result.`io_status` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserIotFrame0; w: var Writer) =
  putInteger(w,value.`uid`)
  putInteger(w,value.`system_time`)
  putInteger(w,value.`io_status`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserIotFrame0*(r: var Reader): Ros1Nlink_parserIotFrame0 =
  result = initRos1Nlink_parserIotFrame0()
  result.`uid` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`io_status` = getInteger(r,uint8)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`nodes` = newSeq[Ros1Nlink_parserIotFrame0Node](count3)
  for i in 0..<count3:
    result.`nodes`[i] = readRos1Nlink_parserIotFrame0Node(r)
proc encode*(value: Ros1Nlink_parserIotFrame0): seq[byte] =
  var w = initWriter(2285)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserIotFrame0*(b: seq[byte]): Ros1Nlink_parserIotFrame0 =
  var r = initReader(b,2285)
  result = readRos1Nlink_parserIotFrame0(r)
  finish(r)
type Ros1Nlink_parserLinktrackTag* = object
  `role`*: uint8
  `id`*: uint8
  `pos_3d`*: array[3,float32]
  `dis_arr`*: array[8,float32]
const Ros1Nlink_parserLinktrackTagMaximumWireBytes* = 46
const Ros1Nlink_parserLinktrackTagCodecIdentity* = "UWVMROS1_1313c238498fc689cf9fdc603f7ac91062aca481bff5a7e4c282af0c3fc44694"
const Ros1Nlink_parserLinktrackTagNativeType* = "nlink_parser/LinktrackTag"
const Ros1Nlink_parserLinktrackTagNativeIdentity* = ""
proc initRos1Nlink_parserLinktrackTag*(): Ros1Nlink_parserLinktrackTag =
  result.`role` = 0
  result.`id` = 0
  result.`pos_3d` = [0,0,0]
  result.`dis_arr` = [0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Nlink_parserLinktrackTag; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  for e in value.`pos_3d`:
    putFloat32(w,e)
  for e in value.`dis_arr`:
    putFloat32(w,e)
proc readRos1Nlink_parserLinktrackTag*(r: var Reader): Ros1Nlink_parserLinktrackTag =
  result = initRos1Nlink_parserLinktrackTag()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  let count2 = 3
  for i in 0..<count2:
    result.`pos_3d`[i] = getFloat32(r)
  let count3 = 8
  for i in 0..<count3:
    result.`dis_arr`[i] = getFloat32(r)
proc encode*(value: Ros1Nlink_parserLinktrackTag): seq[byte] =
  var w = initWriter(46)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackTag*(b: seq[byte]): Ros1Nlink_parserLinktrackTag =
  var r = initReader(b,46)
  result = readRos1Nlink_parserLinktrackTag(r)
  finish(r)
type Ros1Nlink_parserLinktrackAnchorframe0* = object
  `role`*: uint8
  `id`*: uint8
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `nodes`*: seq[Ros1Nlink_parserLinktrackTag]
const Ros1Nlink_parserLinktrackAnchorframe0MaximumWireBytes* = 386
const Ros1Nlink_parserLinktrackAnchorframe0CodecIdentity* = "UWVMROS1_31b31e307fea711add727566eaa5791d4a3e4fb75e949af2890a1650260da7b0"
const Ros1Nlink_parserLinktrackAnchorframe0NativeType* = "nlink_parser/LinktrackAnchorframe0"
const Ros1Nlink_parserLinktrackAnchorframe0NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackAnchorframe0*(): Ros1Nlink_parserLinktrackAnchorframe0 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackAnchorframe0; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackAnchorframe0*(r: var Reader): Ros1Nlink_parserLinktrackAnchorframe0 =
  result = initRos1Nlink_parserLinktrackAnchorframe0()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 8: fail(22)
  let count5 = int(rawcount5)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackTag](count5)
  for i in 0..<count5:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackTag(r)
proc encode*(value: Ros1Nlink_parserLinktrackAnchorframe0): seq[byte] =
  var w = initWriter(386)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackAnchorframe0*(b: seq[byte]): Ros1Nlink_parserLinktrackAnchorframe0 =
  var r = initReader(b,386)
  result = readRos1Nlink_parserLinktrackAnchorframe0(r)
  finish(r)
type Ros1Nlink_parserLinktrackAoaNode0* = object
  `role`*: uint8
  `id`*: uint8
  `dis`*: float32
  `angle`*: float32
  `fp_rssi`*: float32
  `rx_rssi`*: float32
const Ros1Nlink_parserLinktrackAoaNode0MaximumWireBytes* = 18
const Ros1Nlink_parserLinktrackAoaNode0CodecIdentity* = "UWVMROS1_b019b95f03ec635e8319d6c3f2ea4d77bb9001ab054aea2f15afb2e55f6767b7"
const Ros1Nlink_parserLinktrackAoaNode0NativeType* = "nlink_parser/LinktrackAoaNode0"
const Ros1Nlink_parserLinktrackAoaNode0NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackAoaNode0*(): Ros1Nlink_parserLinktrackAoaNode0 =
  result.`role` = 0
  result.`id` = 0
  result.`dis` = 0
  result.`angle` = 0
  result.`fp_rssi` = 0
  result.`rx_rssi` = 0
proc writeFields*(value: Ros1Nlink_parserLinktrackAoaNode0; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putFloat32(w,value.`dis`)
  putFloat32(w,value.`angle`)
  putFloat32(w,value.`fp_rssi`)
  putFloat32(w,value.`rx_rssi`)
proc readRos1Nlink_parserLinktrackAoaNode0*(r: var Reader): Ros1Nlink_parserLinktrackAoaNode0 =
  result = initRos1Nlink_parserLinktrackAoaNode0()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`dis` = getFloat32(r)
  result.`angle` = getFloat32(r)
  result.`fp_rssi` = getFloat32(r)
  result.`rx_rssi` = getFloat32(r)
proc encode*(value: Ros1Nlink_parserLinktrackAoaNode0): seq[byte] =
  var w = initWriter(18)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackAoaNode0*(b: seq[byte]): Ros1Nlink_parserLinktrackAoaNode0 =
  var r = initReader(b,18)
  result = readRos1Nlink_parserLinktrackAoaNode0(r)
  finish(r)
type Ros1Nlink_parserLinktrackAoaNodeframe0* = object
  `role`*: uint8
  `id`*: uint8
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `nodes`*: seq[Ros1Nlink_parserLinktrackAoaNode0]
const Ros1Nlink_parserLinktrackAoaNodeframe0MaximumWireBytes* = 162
const Ros1Nlink_parserLinktrackAoaNodeframe0CodecIdentity* = "UWVMROS1_c7ae90d747b6ee44750a53ebb3c982293179a1b0815c924b3abb5864953e6fa6"
const Ros1Nlink_parserLinktrackAoaNodeframe0NativeType* = "nlink_parser/LinktrackAoaNodeframe0"
const Ros1Nlink_parserLinktrackAoaNodeframe0NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackAoaNodeframe0*(): Ros1Nlink_parserLinktrackAoaNodeframe0 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackAoaNodeframe0; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackAoaNodeframe0*(r: var Reader): Ros1Nlink_parserLinktrackAoaNodeframe0 =
  result = initRos1Nlink_parserLinktrackAoaNodeframe0()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 8: fail(22)
  let count5 = int(rawcount5)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackAoaNode0](count5)
  for i in 0..<count5:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackAoaNode0(r)
proc encode*(value: Ros1Nlink_parserLinktrackAoaNodeframe0): seq[byte] =
  var w = initWriter(162)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackAoaNodeframe0*(b: seq[byte]): Ros1Nlink_parserLinktrackAoaNodeframe0 =
  var r = initReader(b,162)
  result = readRos1Nlink_parserLinktrackAoaNodeframe0(r)
  finish(r)
type Ros1Nlink_parserLinktrackNode0* = object
  `role`*: uint8
  `id`*: uint8
  `data`*: seq[uint8]
const Ros1Nlink_parserLinktrackNode0MaximumWireBytes* = 262
const Ros1Nlink_parserLinktrackNode0CodecIdentity* = "UWVMROS1_d82f50e1b623d4b24ebbc5985d03314cc0e7eff4756cce5ce2271112cdfcebce"
const Ros1Nlink_parserLinktrackNode0NativeType* = "nlink_parser/LinktrackNode0"
const Ros1Nlink_parserLinktrackNode0NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNode0*(): Ros1Nlink_parserLinktrackNode0 =
  result.`role` = 0
  result.`id` = 0
  result.`data` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNode0; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  if value.`data`.len > 256: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
proc readRos1Nlink_parserLinktrackNode0*(r: var Reader): Ros1Nlink_parserLinktrackNode0 =
  result = initRos1Nlink_parserLinktrackNode0()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 256: fail(22)
  let count2 = int(rawcount2)
  result.`data` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`data`[i] = getInteger(r,uint8)
proc encode*(value: Ros1Nlink_parserLinktrackNode0): seq[byte] =
  var w = initWriter(262)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNode0*(b: seq[byte]): Ros1Nlink_parserLinktrackNode0 =
  var r = initReader(b,262)
  result = readRos1Nlink_parserLinktrackNode0(r)
  finish(r)
type Ros1Nlink_parserLinktrackNode1* = object
  `role`*: uint8
  `id`*: uint8
  `pos_3d`*: array[3,float32]
const Ros1Nlink_parserLinktrackNode1MaximumWireBytes* = 14
const Ros1Nlink_parserLinktrackNode1CodecIdentity* = "UWVMROS1_9789b48575ab6ef9713ee56a2bfd05a5a3079ec6fbcf9d3ce7bd3e2b991d5bef"
const Ros1Nlink_parserLinktrackNode1NativeType* = "nlink_parser/LinktrackNode1"
const Ros1Nlink_parserLinktrackNode1NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNode1*(): Ros1Nlink_parserLinktrackNode1 =
  result.`role` = 0
  result.`id` = 0
  result.`pos_3d` = [0,0,0]
proc writeFields*(value: Ros1Nlink_parserLinktrackNode1; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  for e in value.`pos_3d`:
    putFloat32(w,e)
proc readRos1Nlink_parserLinktrackNode1*(r: var Reader): Ros1Nlink_parserLinktrackNode1 =
  result = initRos1Nlink_parserLinktrackNode1()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  let count2 = 3
  for i in 0..<count2:
    result.`pos_3d`[i] = getFloat32(r)
proc encode*(value: Ros1Nlink_parserLinktrackNode1): seq[byte] =
  var w = initWriter(14)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNode1*(b: seq[byte]): Ros1Nlink_parserLinktrackNode1 =
  var r = initReader(b,14)
  result = readRos1Nlink_parserLinktrackNode1(r)
  finish(r)
type Ros1Nlink_parserLinktrackNode2* = object
  `role`*: uint8
  `id`*: uint8
  `dis`*: float32
  `fp_rssi`*: float32
  `rx_rssi`*: float32
const Ros1Nlink_parserLinktrackNode2MaximumWireBytes* = 14
const Ros1Nlink_parserLinktrackNode2CodecIdentity* = "UWVMROS1_c0e124f1ab05da79f895f76e4a3aa047b588b136c50ab023cdaaa34b246f9076"
const Ros1Nlink_parserLinktrackNode2NativeType* = "nlink_parser/LinktrackNode2"
const Ros1Nlink_parserLinktrackNode2NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNode2*(): Ros1Nlink_parserLinktrackNode2 =
  result.`role` = 0
  result.`id` = 0
  result.`dis` = 0
  result.`fp_rssi` = 0
  result.`rx_rssi` = 0
proc writeFields*(value: Ros1Nlink_parserLinktrackNode2; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putFloat32(w,value.`dis`)
  putFloat32(w,value.`fp_rssi`)
  putFloat32(w,value.`rx_rssi`)
proc readRos1Nlink_parserLinktrackNode2*(r: var Reader): Ros1Nlink_parserLinktrackNode2 =
  result = initRos1Nlink_parserLinktrackNode2()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`dis` = getFloat32(r)
  result.`fp_rssi` = getFloat32(r)
  result.`rx_rssi` = getFloat32(r)
proc encode*(value: Ros1Nlink_parserLinktrackNode2): seq[byte] =
  var w = initWriter(14)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNode2*(b: seq[byte]): Ros1Nlink_parserLinktrackNode2 =
  var r = initReader(b,14)
  result = readRos1Nlink_parserLinktrackNode2(r)
  finish(r)
type Ros1Nlink_parserLinktrackNode4Anchor* = object
  `id`*: uint8
  `dis`*: float32
const Ros1Nlink_parserLinktrackNode4AnchorMaximumWireBytes* = 5
const Ros1Nlink_parserLinktrackNode4AnchorCodecIdentity* = "UWVMROS1_e38f8c5c5eeb964ee53b95ba23457586c9bbe8cbb40806c6b7e11cbe085e4a91"
const Ros1Nlink_parserLinktrackNode4AnchorNativeType* = "nlink_parser/LinktrackNode4Anchor"
const Ros1Nlink_parserLinktrackNode4AnchorNativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNode4Anchor*(): Ros1Nlink_parserLinktrackNode4Anchor =
  result.`id` = 0
  result.`dis` = 0
proc writeFields*(value: Ros1Nlink_parserLinktrackNode4Anchor; w: var Writer) =
  putInteger(w,value.`id`)
  putFloat32(w,value.`dis`)
proc readRos1Nlink_parserLinktrackNode4Anchor*(r: var Reader): Ros1Nlink_parserLinktrackNode4Anchor =
  result = initRos1Nlink_parserLinktrackNode4Anchor()
  result.`id` = getInteger(r,uint8)
  result.`dis` = getFloat32(r)
proc encode*(value: Ros1Nlink_parserLinktrackNode4Anchor): seq[byte] =
  var w = initWriter(5)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNode4Anchor*(b: seq[byte]): Ros1Nlink_parserLinktrackNode4Anchor =
  var r = initReader(b,5)
  result = readRos1Nlink_parserLinktrackNode4Anchor(r)
  finish(r)
type Ros1Nlink_parserLinktrackNode4Tag* = object
  `id`*: uint8
  `voltage`*: float32
  `anchors`*: seq[Ros1Nlink_parserLinktrackNode4Anchor]
const Ros1Nlink_parserLinktrackNode4TagMaximumWireBytes* = 49
const Ros1Nlink_parserLinktrackNode4TagCodecIdentity* = "UWVMROS1_88e4a347b1f7d898e76a7e4a38cd87b296d501bc62619fef532f077c1a5e5b71"
const Ros1Nlink_parserLinktrackNode4TagNativeType* = "nlink_parser/LinktrackNode4Tag"
const Ros1Nlink_parserLinktrackNode4TagNativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNode4Tag*(): Ros1Nlink_parserLinktrackNode4Tag =
  result.`id` = 0
  result.`voltage` = 0
  result.`anchors` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNode4Tag; w: var Writer) =
  putInteger(w,value.`id`)
  putFloat32(w,value.`voltage`)
  if value.`anchors`.len > 8: fail(22)
  putInteger(w,uint32(value.`anchors`.len))
  for e in value.`anchors`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNode4Tag*(r: var Reader): Ros1Nlink_parserLinktrackNode4Tag =
  result = initRos1Nlink_parserLinktrackNode4Tag()
  result.`id` = getInteger(r,uint8)
  result.`voltage` = getFloat32(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`anchors` = newSeq[Ros1Nlink_parserLinktrackNode4Anchor](count2)
  for i in 0..<count2:
    result.`anchors`[i] = readRos1Nlink_parserLinktrackNode4Anchor(r)
proc encode*(value: Ros1Nlink_parserLinktrackNode4Tag): seq[byte] =
  var w = initWriter(49)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNode4Tag*(b: seq[byte]): Ros1Nlink_parserLinktrackNode4Tag =
  var r = initReader(b,49)
  result = readRos1Nlink_parserLinktrackNode4Tag(r)
  finish(r)
type Ros1Nlink_parserLinktrackNode5* = object
  `role`*: uint8
  `id`*: uint32
  `dis`*: float32
  `fp_rssi`*: float32
  `rx_rssi`*: float32
const Ros1Nlink_parserLinktrackNode5MaximumWireBytes* = 17
const Ros1Nlink_parserLinktrackNode5CodecIdentity* = "UWVMROS1_2b540f35cfc48b799e4c0ec371352fe14a666e4712d6525aa9159790ffa9ad2f"
const Ros1Nlink_parserLinktrackNode5NativeType* = "nlink_parser/LinktrackNode5"
const Ros1Nlink_parserLinktrackNode5NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNode5*(): Ros1Nlink_parserLinktrackNode5 =
  result.`role` = 0
  result.`id` = 0
  result.`dis` = 0
  result.`fp_rssi` = 0
  result.`rx_rssi` = 0
proc writeFields*(value: Ros1Nlink_parserLinktrackNode5; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putFloat32(w,value.`dis`)
  putFloat32(w,value.`fp_rssi`)
  putFloat32(w,value.`rx_rssi`)
proc readRos1Nlink_parserLinktrackNode5*(r: var Reader): Ros1Nlink_parserLinktrackNode5 =
  result = initRos1Nlink_parserLinktrackNode5()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint32)
  result.`dis` = getFloat32(r)
  result.`fp_rssi` = getFloat32(r)
  result.`rx_rssi` = getFloat32(r)
proc encode*(value: Ros1Nlink_parserLinktrackNode5): seq[byte] =
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNode5*(b: seq[byte]): Ros1Nlink_parserLinktrackNode5 =
  var r = initReader(b,17)
  result = readRos1Nlink_parserLinktrackNode5(r)
  finish(r)
type Ros1Nlink_parserLinktrackNode6* = object
  `role`*: uint8
  `id`*: uint32
  `data`*: seq[uint8]
const Ros1Nlink_parserLinktrackNode6MaximumWireBytes* = 265
const Ros1Nlink_parserLinktrackNode6CodecIdentity* = "UWVMROS1_e628121146b5539270c84e7f2d9d2febd2d016c77ecbb6b683e8568ffebf9dd4"
const Ros1Nlink_parserLinktrackNode6NativeType* = "nlink_parser/LinktrackNode6"
const Ros1Nlink_parserLinktrackNode6NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNode6*(): Ros1Nlink_parserLinktrackNode6 =
  result.`role` = 0
  result.`id` = 0
  result.`data` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNode6; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  if value.`data`.len > 256: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
proc readRos1Nlink_parserLinktrackNode6*(r: var Reader): Ros1Nlink_parserLinktrackNode6 =
  result = initRos1Nlink_parserLinktrackNode6()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 256: fail(22)
  let count2 = int(rawcount2)
  result.`data` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`data`[i] = getInteger(r,uint8)
proc encode*(value: Ros1Nlink_parserLinktrackNode6): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNode6*(b: seq[byte]): Ros1Nlink_parserLinktrackNode6 =
  var r = initReader(b,265)
  result = readRos1Nlink_parserLinktrackNode6(r)
  finish(r)
type Ros1Nlink_parserLinktrackNodeframe0* = object
  `role`*: uint8
  `id`*: uint8
  `nodes`*: seq[Ros1Nlink_parserLinktrackNode0]
const Ros1Nlink_parserLinktrackNodeframe0MaximumWireBytes* = 2102
const Ros1Nlink_parserLinktrackNodeframe0CodecIdentity* = "UWVMROS1_d52f67f7a97929fcc86b851b928cd78fb661b8399ef7a01cc7961d6db16b8c2a"
const Ros1Nlink_parserLinktrackNodeframe0NativeType* = "nlink_parser/LinktrackNodeframe0"
const Ros1Nlink_parserLinktrackNodeframe0NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNodeframe0*(): Ros1Nlink_parserLinktrackNodeframe0 =
  result.`role` = 0
  result.`id` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNodeframe0; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNodeframe0*(r: var Reader): Ros1Nlink_parserLinktrackNodeframe0 =
  result = initRos1Nlink_parserLinktrackNodeframe0()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackNode0](count2)
  for i in 0..<count2:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackNode0(r)
proc encode*(value: Ros1Nlink_parserLinktrackNodeframe0): seq[byte] =
  var w = initWriter(2102)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNodeframe0*(b: seq[byte]): Ros1Nlink_parserLinktrackNodeframe0 =
  var r = initReader(b,2102)
  result = readRos1Nlink_parserLinktrackNodeframe0(r)
  finish(r)
type Ros1Nlink_parserLinktrackNodeframe1* = object
  `role`*: uint8
  `id`*: uint8
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `nodes`*: seq[Ros1Nlink_parserLinktrackNode1]
const Ros1Nlink_parserLinktrackNodeframe1MaximumWireBytes* = 130
const Ros1Nlink_parserLinktrackNodeframe1CodecIdentity* = "UWVMROS1_932012b6f61f02afc460cdfd988d1cbeeff2259eaef0c6028c514ddfb2110e37"
const Ros1Nlink_parserLinktrackNodeframe1NativeType* = "nlink_parser/LinktrackNodeframe1"
const Ros1Nlink_parserLinktrackNodeframe1NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNodeframe1*(): Ros1Nlink_parserLinktrackNodeframe1 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNodeframe1; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNodeframe1*(r: var Reader): Ros1Nlink_parserLinktrackNodeframe1 =
  result = initRos1Nlink_parserLinktrackNodeframe1()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 8: fail(22)
  let count5 = int(rawcount5)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackNode1](count5)
  for i in 0..<count5:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackNode1(r)
proc encode*(value: Ros1Nlink_parserLinktrackNodeframe1): seq[byte] =
  var w = initWriter(130)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNodeframe1*(b: seq[byte]): Ros1Nlink_parserLinktrackNodeframe1 =
  var r = initReader(b,130)
  result = readRos1Nlink_parserLinktrackNodeframe1(r)
  finish(r)
type Ros1Nlink_parserLinktrackNodeframe2* = object
  `role`*: uint8
  `id`*: uint8
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `pos_3d`*: array[3,float32]
  `eop_3d`*: array[3,float32]
  `vel_3d`*: array[3,float32]
  `angle_3d`*: array[3,float32]
  `quaternion`*: array[4,float32]
  `imu_gyro_3d`*: array[3,float32]
  `imu_acc_3d`*: array[3,float32]
  `nodes`*: seq[Ros1Nlink_parserLinktrackNode2]
const Ros1Nlink_parserLinktrackNodeframe2MaximumWireBytes* = 218
const Ros1Nlink_parserLinktrackNodeframe2CodecIdentity* = "UWVMROS1_8a42ec243ba2f497b7ba5a48854f63f5da2141f8ebd8661577e02dc2d6bc7440"
const Ros1Nlink_parserLinktrackNodeframe2NativeType* = "nlink_parser/LinktrackNodeframe2"
const Ros1Nlink_parserLinktrackNodeframe2NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNodeframe2*(): Ros1Nlink_parserLinktrackNodeframe2 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`pos_3d` = [0,0,0]
  result.`eop_3d` = [0,0,0]
  result.`vel_3d` = [0,0,0]
  result.`angle_3d` = [0,0,0]
  result.`quaternion` = [0,0,0,0]
  result.`imu_gyro_3d` = [0,0,0]
  result.`imu_acc_3d` = [0,0,0]
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNodeframe2; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  for e in value.`pos_3d`:
    putFloat32(w,e)
  for e in value.`eop_3d`:
    putFloat32(w,e)
  for e in value.`vel_3d`:
    putFloat32(w,e)
  for e in value.`angle_3d`:
    putFloat32(w,e)
  for e in value.`quaternion`:
    putFloat32(w,e)
  for e in value.`imu_gyro_3d`:
    putFloat32(w,e)
  for e in value.`imu_acc_3d`:
    putFloat32(w,e)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNodeframe2*(r: var Reader): Ros1Nlink_parserLinktrackNodeframe2 =
  result = initRos1Nlink_parserLinktrackNodeframe2()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let count5 = 3
  for i in 0..<count5:
    result.`pos_3d`[i] = getFloat32(r)
  let count6 = 3
  for i in 0..<count6:
    result.`eop_3d`[i] = getFloat32(r)
  let count7 = 3
  for i in 0..<count7:
    result.`vel_3d`[i] = getFloat32(r)
  let count8 = 3
  for i in 0..<count8:
    result.`angle_3d`[i] = getFloat32(r)
  let count9 = 4
  for i in 0..<count9:
    result.`quaternion`[i] = getFloat32(r)
  let count10 = 3
  for i in 0..<count10:
    result.`imu_gyro_3d`[i] = getFloat32(r)
  let count11 = 3
  for i in 0..<count11:
    result.`imu_acc_3d`[i] = getFloat32(r)
  let rawcount12 = getInteger(r,uint32)
  if rawcount12 > 8: fail(22)
  let count12 = int(rawcount12)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackNode2](count12)
  for i in 0..<count12:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackNode2(r)
proc encode*(value: Ros1Nlink_parserLinktrackNodeframe2): seq[byte] =
  var w = initWriter(218)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNodeframe2*(b: seq[byte]): Ros1Nlink_parserLinktrackNodeframe2 =
  var r = initReader(b,218)
  result = readRos1Nlink_parserLinktrackNodeframe2(r)
  finish(r)
type Ros1Nlink_parserLinktrackNodeframe3* = object
  `role`*: uint8
  `id`*: uint8
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `nodes`*: seq[Ros1Nlink_parserLinktrackNode2]
const Ros1Nlink_parserLinktrackNodeframe3MaximumWireBytes* = 130
const Ros1Nlink_parserLinktrackNodeframe3CodecIdentity* = "UWVMROS1_ab2f6e3b7a0c3f0461e70459ac96f9b96d54eaf9db6c6261670d3d9a95138c7c"
const Ros1Nlink_parserLinktrackNodeframe3NativeType* = "nlink_parser/LinktrackNodeframe3"
const Ros1Nlink_parserLinktrackNodeframe3NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNodeframe3*(): Ros1Nlink_parserLinktrackNodeframe3 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNodeframe3; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNodeframe3*(r: var Reader): Ros1Nlink_parserLinktrackNodeframe3 =
  result = initRos1Nlink_parserLinktrackNodeframe3()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 8: fail(22)
  let count5 = int(rawcount5)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackNode2](count5)
  for i in 0..<count5:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackNode2(r)
proc encode*(value: Ros1Nlink_parserLinktrackNodeframe3): seq[byte] =
  var w = initWriter(130)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNodeframe3*(b: seq[byte]): Ros1Nlink_parserLinktrackNodeframe3 =
  var r = initReader(b,130)
  result = readRos1Nlink_parserLinktrackNodeframe3(r)
  finish(r)
type Ros1Nlink_parserLinktrackNodeframe4* = object
  `role`*: uint8
  `id`*: uint8
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `tags`*: seq[Ros1Nlink_parserLinktrackNode4Tag]
const Ros1Nlink_parserLinktrackNodeframe4MaximumWireBytes* = 410
const Ros1Nlink_parserLinktrackNodeframe4CodecIdentity* = "UWVMROS1_efbf3229eec7a96bf3e8f2fa39930e1a967e244f7a00578a9862bee4bf8d9e29"
const Ros1Nlink_parserLinktrackNodeframe4NativeType* = "nlink_parser/LinktrackNodeframe4"
const Ros1Nlink_parserLinktrackNodeframe4NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNodeframe4*(): Ros1Nlink_parserLinktrackNodeframe4 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`tags` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNodeframe4; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  if value.`tags`.len > 8: fail(22)
  putInteger(w,uint32(value.`tags`.len))
  for e in value.`tags`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNodeframe4*(r: var Reader): Ros1Nlink_parserLinktrackNodeframe4 =
  result = initRos1Nlink_parserLinktrackNodeframe4()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 8: fail(22)
  let count5 = int(rawcount5)
  result.`tags` = newSeq[Ros1Nlink_parserLinktrackNode4Tag](count5)
  for i in 0..<count5:
    result.`tags`[i] = readRos1Nlink_parserLinktrackNode4Tag(r)
proc encode*(value: Ros1Nlink_parserLinktrackNodeframe4): seq[byte] =
  var w = initWriter(410)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNodeframe4*(b: seq[byte]): Ros1Nlink_parserLinktrackNodeframe4 =
  var r = initReader(b,410)
  result = readRos1Nlink_parserLinktrackNodeframe4(r)
  finish(r)
type Ros1Nlink_parserLinktrackNodeframe5* = object
  `role`*: uint8
  `id`*: uint32
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `nodes`*: seq[Ros1Nlink_parserLinktrackNode5]
const Ros1Nlink_parserLinktrackNodeframe5MaximumWireBytes* = 157
const Ros1Nlink_parserLinktrackNodeframe5CodecIdentity* = "UWVMROS1_cda6c090504cb171ea69e6913386ac6b9cbdf5e64a07296f1e3d3686b39cb5ae"
const Ros1Nlink_parserLinktrackNodeframe5NativeType* = "nlink_parser/LinktrackNodeframe5"
const Ros1Nlink_parserLinktrackNodeframe5NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNodeframe5*(): Ros1Nlink_parserLinktrackNodeframe5 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNodeframe5; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNodeframe5*(r: var Reader): Ros1Nlink_parserLinktrackNodeframe5 =
  result = initRos1Nlink_parserLinktrackNodeframe5()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint32)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 8: fail(22)
  let count5 = int(rawcount5)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackNode5](count5)
  for i in 0..<count5:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackNode5(r)
proc encode*(value: Ros1Nlink_parserLinktrackNodeframe5): seq[byte] =
  var w = initWriter(157)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNodeframe5*(b: seq[byte]): Ros1Nlink_parserLinktrackNodeframe5 =
  var r = initReader(b,157)
  result = readRos1Nlink_parserLinktrackNodeframe5(r)
  finish(r)
type Ros1Nlink_parserLinktrackNodeframe6* = object
  `role`*: uint8
  `id`*: uint32
  `nodes`*: seq[Ros1Nlink_parserLinktrackNode6]
const Ros1Nlink_parserLinktrackNodeframe6MaximumWireBytes* = 2129
const Ros1Nlink_parserLinktrackNodeframe6CodecIdentity* = "UWVMROS1_e438b25ee7cc6b79857819e51aefaef704b99fc0e7a6bc7f37a4e43dbd321211"
const Ros1Nlink_parserLinktrackNodeframe6NativeType* = "nlink_parser/LinktrackNodeframe6"
const Ros1Nlink_parserLinktrackNodeframe6NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackNodeframe6*(): Ros1Nlink_parserLinktrackNodeframe6 =
  result.`role` = 0
  result.`id` = 0
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserLinktrackNodeframe6; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserLinktrackNodeframe6*(r: var Reader): Ros1Nlink_parserLinktrackNodeframe6 =
  result = initRos1Nlink_parserLinktrackNodeframe6()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`nodes` = newSeq[Ros1Nlink_parserLinktrackNode6](count2)
  for i in 0..<count2:
    result.`nodes`[i] = readRos1Nlink_parserLinktrackNode6(r)
proc encode*(value: Ros1Nlink_parserLinktrackNodeframe6): seq[byte] =
  var w = initWriter(2129)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackNodeframe6*(b: seq[byte]): Ros1Nlink_parserLinktrackNodeframe6 =
  var r = initReader(b,2129)
  result = readRos1Nlink_parserLinktrackNodeframe6(r)
  finish(r)
type Ros1Nlink_parserLinktrackTagframe0* = object
  `role`*: uint8
  `id`*: uint8
  `local_time`*: uint32
  `system_time`*: uint32
  `voltage`*: float32
  `pos_3d`*: array[3,float32]
  `eop_3d`*: array[3,float32]
  `vel_3d`*: array[3,float32]
  `dis_arr`*: array[8,float32]
  `angle_3d`*: array[3,float32]
  `quaternion`*: array[4,float32]
  `imu_gyro_3d`*: array[3,float32]
  `imu_acc_3d`*: array[3,float32]
const Ros1Nlink_parserLinktrackTagframe0MaximumWireBytes* = 134
const Ros1Nlink_parserLinktrackTagframe0CodecIdentity* = "UWVMROS1_bca695ff6973552184fe842d7e6c1c3881b981ca7681bc2758458bbf5f89b7bd"
const Ros1Nlink_parserLinktrackTagframe0NativeType* = "nlink_parser/LinktrackTagframe0"
const Ros1Nlink_parserLinktrackTagframe0NativeIdentity* = ""
proc initRos1Nlink_parserLinktrackTagframe0*(): Ros1Nlink_parserLinktrackTagframe0 =
  result.`role` = 0
  result.`id` = 0
  result.`local_time` = 0
  result.`system_time` = 0
  result.`voltage` = 0
  result.`pos_3d` = [0,0,0]
  result.`eop_3d` = [0,0,0]
  result.`vel_3d` = [0,0,0]
  result.`dis_arr` = [0,0,0,0,0,0,0,0]
  result.`angle_3d` = [0,0,0]
  result.`quaternion` = [0,0,0,0]
  result.`imu_gyro_3d` = [0,0,0]
  result.`imu_acc_3d` = [0,0,0]
proc writeFields*(value: Ros1Nlink_parserLinktrackTagframe0; w: var Writer) =
  putInteger(w,value.`role`)
  putInteger(w,value.`id`)
  putInteger(w,value.`local_time`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`voltage`)
  for e in value.`pos_3d`:
    putFloat32(w,e)
  for e in value.`eop_3d`:
    putFloat32(w,e)
  for e in value.`vel_3d`:
    putFloat32(w,e)
  for e in value.`dis_arr`:
    putFloat32(w,e)
  for e in value.`angle_3d`:
    putFloat32(w,e)
  for e in value.`quaternion`:
    putFloat32(w,e)
  for e in value.`imu_gyro_3d`:
    putFloat32(w,e)
  for e in value.`imu_acc_3d`:
    putFloat32(w,e)
proc readRos1Nlink_parserLinktrackTagframe0*(r: var Reader): Ros1Nlink_parserLinktrackTagframe0 =
  result = initRos1Nlink_parserLinktrackTagframe0()
  result.`role` = getInteger(r,uint8)
  result.`id` = getInteger(r,uint8)
  result.`local_time` = getInteger(r,uint32)
  result.`system_time` = getInteger(r,uint32)
  result.`voltage` = getFloat32(r)
  let count5 = 3
  for i in 0..<count5:
    result.`pos_3d`[i] = getFloat32(r)
  let count6 = 3
  for i in 0..<count6:
    result.`eop_3d`[i] = getFloat32(r)
  let count7 = 3
  for i in 0..<count7:
    result.`vel_3d`[i] = getFloat32(r)
  let count8 = 8
  for i in 0..<count8:
    result.`dis_arr`[i] = getFloat32(r)
  let count9 = 3
  for i in 0..<count9:
    result.`angle_3d`[i] = getFloat32(r)
  let count10 = 4
  for i in 0..<count10:
    result.`quaternion`[i] = getFloat32(r)
  let count11 = 3
  for i in 0..<count11:
    result.`imu_gyro_3d`[i] = getFloat32(r)
  let count12 = 3
  for i in 0..<count12:
    result.`imu_acc_3d`[i] = getFloat32(r)
proc encode*(value: Ros1Nlink_parserLinktrackTagframe0): seq[byte] =
  var w = initWriter(134)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserLinktrackTagframe0*(b: seq[byte]): Ros1Nlink_parserLinktrackTagframe0 =
  var r = initReader(b,134)
  result = readRos1Nlink_parserLinktrackTagframe0(r)
  finish(r)
type Ros1Nlink_parserTofsenseFrame0* = object
  `id`*: uint8
  `system_time`*: uint32
  `dis`*: float32
  `dis_status`*: uint8
  `signal_strength`*: uint16
  `range_precision`*: uint8
const Ros1Nlink_parserTofsenseFrame0MaximumWireBytes* = 13
const Ros1Nlink_parserTofsenseFrame0CodecIdentity* = "UWVMROS1_7055915ce923839d76e5eded20b40e1aa7d95c9cdbf23973c6a522a7ae1826a1"
const Ros1Nlink_parserTofsenseFrame0NativeType* = "nlink_parser/TofsenseFrame0"
const Ros1Nlink_parserTofsenseFrame0NativeIdentity* = ""
proc initRos1Nlink_parserTofsenseFrame0*(): Ros1Nlink_parserTofsenseFrame0 =
  result.`id` = 0
  result.`system_time` = 0
  result.`dis` = 0
  result.`dis_status` = 0
  result.`signal_strength` = 0
  result.`range_precision` = 0
proc writeFields*(value: Ros1Nlink_parserTofsenseFrame0; w: var Writer) =
  putInteger(w,value.`id`)
  putInteger(w,value.`system_time`)
  putFloat32(w,value.`dis`)
  putInteger(w,value.`dis_status`)
  putInteger(w,value.`signal_strength`)
  putInteger(w,value.`range_precision`)
proc readRos1Nlink_parserTofsenseFrame0*(r: var Reader): Ros1Nlink_parserTofsenseFrame0 =
  result = initRos1Nlink_parserTofsenseFrame0()
  result.`id` = getInteger(r,uint8)
  result.`system_time` = getInteger(r,uint32)
  result.`dis` = getFloat32(r)
  result.`dis_status` = getInteger(r,uint8)
  result.`signal_strength` = getInteger(r,uint16)
  result.`range_precision` = getInteger(r,uint8)
proc encode*(value: Ros1Nlink_parserTofsenseFrame0): seq[byte] =
  var w = initWriter(13)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserTofsenseFrame0*(b: seq[byte]): Ros1Nlink_parserTofsenseFrame0 =
  var r = initReader(b,13)
  result = readRos1Nlink_parserTofsenseFrame0(r)
  finish(r)
type Ros1Nlink_parserTofsenseCascade* = object
  `nodes`*: seq[Ros1Nlink_parserTofsenseFrame0]
const Ros1Nlink_parserTofsenseCascadeMaximumWireBytes* = 108
const Ros1Nlink_parserTofsenseCascadeCodecIdentity* = "UWVMROS1_8deb19890056e86ef4f670c0e8ccccf0b60e50d8c1c84436c693790f9e3c78ec"
const Ros1Nlink_parserTofsenseCascadeNativeType* = "nlink_parser/TofsenseCascade"
const Ros1Nlink_parserTofsenseCascadeNativeIdentity* = ""
proc initRos1Nlink_parserTofsenseCascade*(): Ros1Nlink_parserTofsenseCascade =
  result.`nodes` = @[]
proc writeFields*(value: Ros1Nlink_parserTofsenseCascade; w: var Writer) =
  if value.`nodes`.len > 8: fail(22)
  putInteger(w,uint32(value.`nodes`.len))
  for e in value.`nodes`:
    writeFields(e,w)
proc readRos1Nlink_parserTofsenseCascade*(r: var Reader): Ros1Nlink_parserTofsenseCascade =
  result = initRos1Nlink_parserTofsenseCascade()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`nodes` = newSeq[Ros1Nlink_parserTofsenseFrame0](count0)
  for i in 0..<count0:
    result.`nodes`[i] = readRos1Nlink_parserTofsenseFrame0(r)
proc encode*(value: Ros1Nlink_parserTofsenseCascade): seq[byte] =
  var w = initWriter(108)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserTofsenseCascade*(b: seq[byte]): Ros1Nlink_parserTofsenseCascade =
  var r = initReader(b,108)
  result = readRos1Nlink_parserTofsenseCascade(r)
  finish(r)
type Ros1Nlink_parserTofsenseMFrame0Pixel* = object
  `dis`*: float32
  `dis_status`*: uint8
  `signal_strength`*: uint16
const Ros1Nlink_parserTofsenseMFrame0PixelMaximumWireBytes* = 7
const Ros1Nlink_parserTofsenseMFrame0PixelCodecIdentity* = "UWVMROS1_3dd391c2d1057d91a06a585c6be40bc733ed97cd27d7c1c79d6b90c0ec432eb4"
const Ros1Nlink_parserTofsenseMFrame0PixelNativeType* = "nlink_parser/TofsenseMFrame0Pixel"
const Ros1Nlink_parserTofsenseMFrame0PixelNativeIdentity* = ""
proc initRos1Nlink_parserTofsenseMFrame0Pixel*(): Ros1Nlink_parserTofsenseMFrame0Pixel =
  result.`dis` = 0
  result.`dis_status` = 0
  result.`signal_strength` = 0
proc writeFields*(value: Ros1Nlink_parserTofsenseMFrame0Pixel; w: var Writer) =
  putFloat32(w,value.`dis`)
  putInteger(w,value.`dis_status`)
  putInteger(w,value.`signal_strength`)
proc readRos1Nlink_parserTofsenseMFrame0Pixel*(r: var Reader): Ros1Nlink_parserTofsenseMFrame0Pixel =
  result = initRos1Nlink_parserTofsenseMFrame0Pixel()
  result.`dis` = getFloat32(r)
  result.`dis_status` = getInteger(r,uint8)
  result.`signal_strength` = getInteger(r,uint16)
proc encode*(value: Ros1Nlink_parserTofsenseMFrame0Pixel): seq[byte] =
  var w = initWriter(7)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserTofsenseMFrame0Pixel*(b: seq[byte]): Ros1Nlink_parserTofsenseMFrame0Pixel =
  var r = initReader(b,7)
  result = readRos1Nlink_parserTofsenseMFrame0Pixel(r)
  finish(r)
type Ros1Nlink_parserTofsenseMFrame0* = object
  `id`*: uint8
  `system_time`*: uint32
  `pixel_count`*: uint8
  `pixels`*: seq[Ros1Nlink_parserTofsenseMFrame0Pixel]
const Ros1Nlink_parserTofsenseMFrame0MaximumWireBytes* = 66
const Ros1Nlink_parserTofsenseMFrame0CodecIdentity* = "UWVMROS1_2cceeaeda033d4c522163c3f8191c086012c4adf9cc65560c7ed8cbd0edcc95c"
const Ros1Nlink_parserTofsenseMFrame0NativeType* = "nlink_parser/TofsenseMFrame0"
const Ros1Nlink_parserTofsenseMFrame0NativeIdentity* = ""
proc initRos1Nlink_parserTofsenseMFrame0*(): Ros1Nlink_parserTofsenseMFrame0 =
  result.`id` = 0
  result.`system_time` = 0
  result.`pixel_count` = 0
  result.`pixels` = @[]
proc writeFields*(value: Ros1Nlink_parserTofsenseMFrame0; w: var Writer) =
  putInteger(w,value.`id`)
  putInteger(w,value.`system_time`)
  putInteger(w,value.`pixel_count`)
  if value.`pixels`.len > 8: fail(22)
  putInteger(w,uint32(value.`pixels`.len))
  for e in value.`pixels`:
    writeFields(e,w)
proc readRos1Nlink_parserTofsenseMFrame0*(r: var Reader): Ros1Nlink_parserTofsenseMFrame0 =
  result = initRos1Nlink_parserTofsenseMFrame0()
  result.`id` = getInteger(r,uint8)
  result.`system_time` = getInteger(r,uint32)
  result.`pixel_count` = getInteger(r,uint8)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`pixels` = newSeq[Ros1Nlink_parserTofsenseMFrame0Pixel](count3)
  for i in 0..<count3:
    result.`pixels`[i] = readRos1Nlink_parserTofsenseMFrame0Pixel(r)
proc encode*(value: Ros1Nlink_parserTofsenseMFrame0): seq[byte] =
  var w = initWriter(66)
  writeFields(value,w)
  w.bytes
proc decodeRos1Nlink_parserTofsenseMFrame0*(b: seq[byte]): Ros1Nlink_parserTofsenseMFrame0 =
  var r = initReader(b,66)
  result = readRos1Nlink_parserTofsenseMFrame0(r)
  finish(r)
type Ros1Noitom_hi5_hand_udp_pythonJoySticks* = object
  `left_x`*: float32
  `left_y`*: float32
  `left_trigger`*: float32
  `left_grip`*: float32
  `left_first_button_pressed`*: bool
  `left_second_button_pressed`*: bool
  `left_first_button_touched`*: bool
  `left_second_button_touched`*: bool
  `right_x`*: float32
  `right_y`*: float32
  `right_trigger`*: float32
  `right_grip`*: float32
  `right_first_button_pressed`*: bool
  `right_second_button_pressed`*: bool
  `right_first_button_touched`*: bool
  `right_second_button_touched`*: bool
const Ros1Noitom_hi5_hand_udp_pythonJoySticksMaximumWireBytes* = 40
const Ros1Noitom_hi5_hand_udp_pythonJoySticksCodecIdentity* = "UWVMROS1_9cf32e8d4a21b3a46bc3bc82f07cc9c109aa1471bb8ceb3c409f1596e910aaea"
const Ros1Noitom_hi5_hand_udp_pythonJoySticksNativeType* = "noitom_hi5_hand_udp_python/JoySticks"
const Ros1Noitom_hi5_hand_udp_pythonJoySticksNativeIdentity* = ""
proc initRos1Noitom_hi5_hand_udp_pythonJoySticks*(): Ros1Noitom_hi5_hand_udp_pythonJoySticks =
  result.`left_x` = 0
  result.`left_y` = 0
  result.`left_trigger` = 0
  result.`left_grip` = 0
  result.`left_first_button_pressed` = false
  result.`left_second_button_pressed` = false
  result.`left_first_button_touched` = false
  result.`left_second_button_touched` = false
  result.`right_x` = 0
  result.`right_y` = 0
  result.`right_trigger` = 0
  result.`right_grip` = 0
  result.`right_first_button_pressed` = false
  result.`right_second_button_pressed` = false
  result.`right_first_button_touched` = false
  result.`right_second_button_touched` = false
proc writeFields*(value: Ros1Noitom_hi5_hand_udp_pythonJoySticks; w: var Writer) =
  putFloat32(w,value.`left_x`)
  putFloat32(w,value.`left_y`)
  putFloat32(w,value.`left_trigger`)
  putFloat32(w,value.`left_grip`)
  putBool(w,value.`left_first_button_pressed`)
  putBool(w,value.`left_second_button_pressed`)
  putBool(w,value.`left_first_button_touched`)
  putBool(w,value.`left_second_button_touched`)
  putFloat32(w,value.`right_x`)
  putFloat32(w,value.`right_y`)
  putFloat32(w,value.`right_trigger`)
  putFloat32(w,value.`right_grip`)
  putBool(w,value.`right_first_button_pressed`)
  putBool(w,value.`right_second_button_pressed`)
  putBool(w,value.`right_first_button_touched`)
  putBool(w,value.`right_second_button_touched`)
proc readRos1Noitom_hi5_hand_udp_pythonJoySticks*(r: var Reader): Ros1Noitom_hi5_hand_udp_pythonJoySticks =
  result = initRos1Noitom_hi5_hand_udp_pythonJoySticks()
  result.`left_x` = getFloat32(r)
  result.`left_y` = getFloat32(r)
  result.`left_trigger` = getFloat32(r)
  result.`left_grip` = getFloat32(r)
  result.`left_first_button_pressed` = getBool(r)
  result.`left_second_button_pressed` = getBool(r)
  result.`left_first_button_touched` = getBool(r)
  result.`left_second_button_touched` = getBool(r)
  result.`right_x` = getFloat32(r)
  result.`right_y` = getFloat32(r)
  result.`right_trigger` = getFloat32(r)
  result.`right_grip` = getFloat32(r)
  result.`right_first_button_pressed` = getBool(r)
  result.`right_second_button_pressed` = getBool(r)
  result.`right_first_button_touched` = getBool(r)
  result.`right_second_button_touched` = getBool(r)
proc encode*(value: Ros1Noitom_hi5_hand_udp_pythonJoySticks): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos1Noitom_hi5_hand_udp_pythonJoySticks*(b: seq[byte]): Ros1Noitom_hi5_hand_udp_pythonJoySticks =
  var r = initReader(b,40)
  result = readRos1Noitom_hi5_hand_udp_pythonJoySticks(r)
  finish(r)
type Ros1Noitom_hi5_hand_udp_pythonPoseInfo* = object
  `position`*: Ros1Geometry_msgsPoint
  `orientation`*: Ros1Geometry_msgsQuaternion
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoMaximumWireBytes* = 56
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoCodecIdentity* = "UWVMROS1_57591e1ee89a8e3850cb474e4f4bb7c0b9bb4d7a855294f9764a3d2662366776"
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoNativeType* = "noitom_hi5_hand_udp_python/PoseInfo"
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoNativeIdentity* = ""
proc initRos1Noitom_hi5_hand_udp_pythonPoseInfo*(): Ros1Noitom_hi5_hand_udp_pythonPoseInfo =
  result.`position` = initRos1Geometry_msgsPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
proc writeFields*(value: Ros1Noitom_hi5_hand_udp_pythonPoseInfo; w: var Writer) =
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos1Noitom_hi5_hand_udp_pythonPoseInfo*(r: var Reader): Ros1Noitom_hi5_hand_udp_pythonPoseInfo =
  result = initRos1Noitom_hi5_hand_udp_pythonPoseInfo()
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Noitom_hi5_hand_udp_pythonPoseInfo): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Noitom_hi5_hand_udp_pythonPoseInfo*(b: seq[byte]): Ros1Noitom_hi5_hand_udp_pythonPoseInfo =
  var r = initReader(b,56)
  result = readRos1Noitom_hi5_hand_udp_pythonPoseInfo(r)
  finish(r)
type Ros1Noitom_hi5_hand_udp_pythonPoseInfoList* = object
  `timestamp_ms`*: int64
  `is_high_confidence`*: bool
  `is_hand_tracking`*: bool
  `poses`*: seq[Ros1Noitom_hi5_hand_udp_pythonPoseInfo]
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoListMaximumWireBytes* = 462
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoListCodecIdentity* = "UWVMROS1_e81ff54c597bbe2d4e7d8089b6d52fc34b01870a63ec5bbea579a6614c095a6f"
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoListNativeType* = "noitom_hi5_hand_udp_python/PoseInfoList"
const Ros1Noitom_hi5_hand_udp_pythonPoseInfoListNativeIdentity* = ""
proc initRos1Noitom_hi5_hand_udp_pythonPoseInfoList*(): Ros1Noitom_hi5_hand_udp_pythonPoseInfoList =
  result.`timestamp_ms` = 0
  result.`is_high_confidence` = false
  result.`is_hand_tracking` = false
  result.`poses` = @[]
proc writeFields*(value: Ros1Noitom_hi5_hand_udp_pythonPoseInfoList; w: var Writer) =
  putInteger(w,value.`timestamp_ms`)
  putBool(w,value.`is_high_confidence`)
  putBool(w,value.`is_hand_tracking`)
  if value.`poses`.len > 8: fail(22)
  putInteger(w,uint32(value.`poses`.len))
  for e in value.`poses`:
    writeFields(e,w)
proc readRos1Noitom_hi5_hand_udp_pythonPoseInfoList*(r: var Reader): Ros1Noitom_hi5_hand_udp_pythonPoseInfoList =
  result = initRos1Noitom_hi5_hand_udp_pythonPoseInfoList()
  result.`timestamp_ms` = getInteger(r,int64)
  result.`is_high_confidence` = getBool(r)
  result.`is_hand_tracking` = getBool(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`poses` = newSeq[Ros1Noitom_hi5_hand_udp_pythonPoseInfo](count3)
  for i in 0..<count3:
    result.`poses`[i] = readRos1Noitom_hi5_hand_udp_pythonPoseInfo(r)
proc encode*(value: Ros1Noitom_hi5_hand_udp_pythonPoseInfoList): seq[byte] =
  var w = initWriter(462)
  writeFields(value,w)
  w.bytes
proc decodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList*(b: seq[byte]): Ros1Noitom_hi5_hand_udp_pythonPoseInfoList =
  var r = initReader(b,462)
  result = readRos1Noitom_hi5_hand_udp_pythonPoseInfoList(r)
  finish(r)
type Ros1Noitom_hi5_hand_udp_pythonQuaternionArray* = object
  `quaternions`*: seq[Ros1Geometry_msgsQuaternion]
const Ros1Noitom_hi5_hand_udp_pythonQuaternionArrayMaximumWireBytes* = 260
const Ros1Noitom_hi5_hand_udp_pythonQuaternionArrayCodecIdentity* = "UWVMROS1_f775507277ae2b1a141a81b587f8043969398fd05d3acb9fc000d15fa9733354"
const Ros1Noitom_hi5_hand_udp_pythonQuaternionArrayNativeType* = "noitom_hi5_hand_udp_python/QuaternionArray"
const Ros1Noitom_hi5_hand_udp_pythonQuaternionArrayNativeIdentity* = ""
proc initRos1Noitom_hi5_hand_udp_pythonQuaternionArray*(): Ros1Noitom_hi5_hand_udp_pythonQuaternionArray =
  result.`quaternions` = @[]
proc writeFields*(value: Ros1Noitom_hi5_hand_udp_pythonQuaternionArray; w: var Writer) =
  if value.`quaternions`.len > 8: fail(22)
  putInteger(w,uint32(value.`quaternions`.len))
  for e in value.`quaternions`:
    writeFields(e,w)
proc readRos1Noitom_hi5_hand_udp_pythonQuaternionArray*(r: var Reader): Ros1Noitom_hi5_hand_udp_pythonQuaternionArray =
  result = initRos1Noitom_hi5_hand_udp_pythonQuaternionArray()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`quaternions` = newSeq[Ros1Geometry_msgsQuaternion](count0)
  for i in 0..<count0:
    result.`quaternions`[i] = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Noitom_hi5_hand_udp_pythonQuaternionArray): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray*(b: seq[byte]): Ros1Noitom_hi5_hand_udp_pythonQuaternionArray =
  var r = initReader(b,260)
  result = readRos1Noitom_hi5_hand_udp_pythonQuaternionArray(r)
  finish(r)
type Ros1Noitom_hi5_hand_udp_pythonVector4* = object
  `x`*: float32
  `y`*: float32
  `z`*: float32
  `w`*: float32
const Ros1Noitom_hi5_hand_udp_pythonVector4MaximumWireBytes* = 16
const Ros1Noitom_hi5_hand_udp_pythonVector4CodecIdentity* = "UWVMROS1_59d75e32f1d014dbf662f9847ed07e0e867a9dee9a2afdbb931e0528fdd615e0"
const Ros1Noitom_hi5_hand_udp_pythonVector4NativeType* = "noitom_hi5_hand_udp_python/Vector4"
const Ros1Noitom_hi5_hand_udp_pythonVector4NativeIdentity* = ""
proc initRos1Noitom_hi5_hand_udp_pythonVector4*(): Ros1Noitom_hi5_hand_udp_pythonVector4 =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`w` = 0
proc writeFields*(value: Ros1Noitom_hi5_hand_udp_pythonVector4; w: var Writer) =
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
  putFloat32(w,value.`w`)
proc readRos1Noitom_hi5_hand_udp_pythonVector4*(r: var Reader): Ros1Noitom_hi5_hand_udp_pythonVector4 =
  result = initRos1Noitom_hi5_hand_udp_pythonVector4()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
  result.`w` = getFloat32(r)
proc encode*(value: Ros1Noitom_hi5_hand_udp_pythonVector4): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos1Noitom_hi5_hand_udp_pythonVector4*(b: seq[byte]): Ros1Noitom_hi5_hand_udp_pythonVector4 =
  var r = initReader(b,16)
  result = readRos1Noitom_hi5_hand_udp_pythonVector4(r)
  finish(r)
type Ros1Noitom_hi5_hand_udp_pythonHandRotation* = object
  `quaternions`*: seq[Ros1Geometry_msgsQuaternion]
const Ros1Noitom_hi5_hand_udp_pythonHandRotationMaximumWireBytes* = 260
const Ros1Noitom_hi5_hand_udp_pythonHandRotationCodecIdentity* = "UWVMROS1_f05ca89e8e5dfd73346ee7f14b27ccc0c06a6540ca21548e06caafbbae791714"
const Ros1Noitom_hi5_hand_udp_pythonHandRotationNativeType* = "noitom_hi5_hand_udp_python/handRotation"
const Ros1Noitom_hi5_hand_udp_pythonHandRotationNativeIdentity* = ""
proc initRos1Noitom_hi5_hand_udp_pythonHandRotation*(): Ros1Noitom_hi5_hand_udp_pythonHandRotation =
  result.`quaternions` = @[]
proc writeFields*(value: Ros1Noitom_hi5_hand_udp_pythonHandRotation; w: var Writer) =
  if value.`quaternions`.len > 8: fail(22)
  putInteger(w,uint32(value.`quaternions`.len))
  for e in value.`quaternions`:
    writeFields(e,w)
proc readRos1Noitom_hi5_hand_udp_pythonHandRotation*(r: var Reader): Ros1Noitom_hi5_hand_udp_pythonHandRotation =
  result = initRos1Noitom_hi5_hand_udp_pythonHandRotation()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`quaternions` = newSeq[Ros1Geometry_msgsQuaternion](count0)
  for i in 0..<count0:
    result.`quaternions`[i] = readRos1Geometry_msgsQuaternion(r)
proc encode*(value: Ros1Noitom_hi5_hand_udp_pythonHandRotation): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Noitom_hi5_hand_udp_pythonHandRotation*(b: seq[byte]): Ros1Noitom_hi5_hand_udp_pythonHandRotation =
  var r = initReader(b,260)
  result = readRos1Noitom_hi5_hand_udp_pythonHandRotation(r)
  finish(r)
type Ros1Noitom_hi5_hand_udp_pythonHandRotationEular* = object
  `eulerAngles`*: seq[Ros1Noitom_hi5_hand_udp_pythonVector4]
const Ros1Noitom_hi5_hand_udp_pythonHandRotationEularMaximumWireBytes* = 132
const Ros1Noitom_hi5_hand_udp_pythonHandRotationEularCodecIdentity* = "UWVMROS1_3f9488442c2eaab4082975c08f1c530625f911e56a05b24d941e5abfd8ca31c2"
const Ros1Noitom_hi5_hand_udp_pythonHandRotationEularNativeType* = "noitom_hi5_hand_udp_python/handRotationEular"
const Ros1Noitom_hi5_hand_udp_pythonHandRotationEularNativeIdentity* = ""
proc initRos1Noitom_hi5_hand_udp_pythonHandRotationEular*(): Ros1Noitom_hi5_hand_udp_pythonHandRotationEular =
  result.`eulerAngles` = @[]
proc writeFields*(value: Ros1Noitom_hi5_hand_udp_pythonHandRotationEular; w: var Writer) =
  if value.`eulerAngles`.len > 8: fail(22)
  putInteger(w,uint32(value.`eulerAngles`.len))
  for e in value.`eulerAngles`:
    writeFields(e,w)
proc readRos1Noitom_hi5_hand_udp_pythonHandRotationEular*(r: var Reader): Ros1Noitom_hi5_hand_udp_pythonHandRotationEular =
  result = initRos1Noitom_hi5_hand_udp_pythonHandRotationEular()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`eulerAngles` = newSeq[Ros1Noitom_hi5_hand_udp_pythonVector4](count0)
  for i in 0..<count0:
    result.`eulerAngles`[i] = readRos1Noitom_hi5_hand_udp_pythonVector4(r)
proc encode*(value: Ros1Noitom_hi5_hand_udp_pythonHandRotationEular): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular*(b: seq[byte]): Ros1Noitom_hi5_hand_udp_pythonHandRotationEular =
  var r = initReader(b,132)
  result = readRos1Noitom_hi5_hand_udp_pythonHandRotationEular(r)
  finish(r)
type Ros1Ocs2_msgsConstraint* = object
  `time`*: float32
  `value`*: seq[float32]
const Ros1Ocs2_msgsConstraintMaximumWireBytes* = 72
const Ros1Ocs2_msgsConstraintCodecIdentity* = "UWVMROS1_5ed57216e90358bfcc530ac80a88c0af3d867bafaebca58bbc61ff1ed7b875f4"
const Ros1Ocs2_msgsConstraintNativeType* = "ocs2_msgs/constraint"
const Ros1Ocs2_msgsConstraintNativeIdentity* = ""
proc initRos1Ocs2_msgsConstraint*(): Ros1Ocs2_msgsConstraint =
  result.`time` = 0
  result.`value` = @[]
proc writeFields*(value: Ros1Ocs2_msgsConstraint; w: var Writer) =
  putFloat32(w,value.`time`)
  if value.`value`.len > 16: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putFloat32(w,e)
proc readRos1Ocs2_msgsConstraint*(r: var Reader): Ros1Ocs2_msgsConstraint =
  result = initRos1Ocs2_msgsConstraint()
  result.`time` = getFloat32(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`value` = newSeq[float32](count1)
  for i in 0..<count1:
    result.`value`[i] = getFloat32(r)
proc encode*(value: Ros1Ocs2_msgsConstraint): seq[byte] =
  var w = initWriter(72)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsConstraint*(b: seq[byte]): Ros1Ocs2_msgsConstraint =
  var r = initReader(b,72)
  result = readRos1Ocs2_msgsConstraint(r)
  finish(r)
type Ros1Ocs2_msgsController_data* = object
  `data`*: seq[float32]
const Ros1Ocs2_msgsController_dataMaximumWireBytes* = 68
const Ros1Ocs2_msgsController_dataCodecIdentity* = "UWVMROS1_e78a3ab284c7d3a89b8246dafbe2f4b111186df637124d9f37a0e29e36c56fe9"
const Ros1Ocs2_msgsController_dataNativeType* = "ocs2_msgs/controller_data"
const Ros1Ocs2_msgsController_dataNativeIdentity* = ""
proc initRos1Ocs2_msgsController_data*(): Ros1Ocs2_msgsController_data =
  result.`data` = @[]
proc writeFields*(value: Ros1Ocs2_msgsController_data; w: var Writer) =
  if value.`data`.len > 16: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putFloat32(w,e)
proc readRos1Ocs2_msgsController_data*(r: var Reader): Ros1Ocs2_msgsController_data =
  result = initRos1Ocs2_msgsController_data()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`data`[i] = getFloat32(r)
proc encode*(value: Ros1Ocs2_msgsController_data): seq[byte] =
  var w = initWriter(68)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsController_data*(b: seq[byte]): Ros1Ocs2_msgsController_data =
  var r = initReader(b,68)
  result = readRos1Ocs2_msgsController_data(r)
  finish(r)
type Ros1Ocs2_msgsLagrangian_metrics* = object
  `time`*: float32
  `penalty`*: float32
  `constraint`*: seq[float32]
const Ros1Ocs2_msgsLagrangian_metricsMaximumWireBytes* = 76
const Ros1Ocs2_msgsLagrangian_metricsCodecIdentity* = "UWVMROS1_231ec27a2d55a6e336615abf806942d83122b344374089161bd0a32e2b9be240"
const Ros1Ocs2_msgsLagrangian_metricsNativeType* = "ocs2_msgs/lagrangian_metrics"
const Ros1Ocs2_msgsLagrangian_metricsNativeIdentity* = ""
proc initRos1Ocs2_msgsLagrangian_metrics*(): Ros1Ocs2_msgsLagrangian_metrics =
  result.`time` = 0
  result.`penalty` = 0
  result.`constraint` = @[]
proc writeFields*(value: Ros1Ocs2_msgsLagrangian_metrics; w: var Writer) =
  putFloat32(w,value.`time`)
  putFloat32(w,value.`penalty`)
  if value.`constraint`.len > 16: fail(22)
  putInteger(w,uint32(value.`constraint`.len))
  for e in value.`constraint`:
    putFloat32(w,e)
proc readRos1Ocs2_msgsLagrangian_metrics*(r: var Reader): Ros1Ocs2_msgsLagrangian_metrics =
  result = initRos1Ocs2_msgsLagrangian_metrics()
  result.`time` = getFloat32(r)
  result.`penalty` = getFloat32(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`constraint` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`constraint`[i] = getFloat32(r)
proc encode*(value: Ros1Ocs2_msgsLagrangian_metrics): seq[byte] =
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsLagrangian_metrics*(b: seq[byte]): Ros1Ocs2_msgsLagrangian_metrics =
  var r = initReader(b,76)
  result = readRos1Ocs2_msgsLagrangian_metrics(r)
  finish(r)
type Ros1Ocs2_msgsMode_schedule* = object
  `eventTimes`*: seq[float64]
  `modeSequence`*: seq[int8]
const Ros1Ocs2_msgsMode_scheduleMaximumWireBytes* = 152
const Ros1Ocs2_msgsMode_scheduleCodecIdentity* = "UWVMROS1_3947a55981647683f9345b7e9d169fd72c50d38e343d64b4681598359b9f1643"
const Ros1Ocs2_msgsMode_scheduleNativeType* = "ocs2_msgs/mode_schedule"
const Ros1Ocs2_msgsMode_scheduleNativeIdentity* = ""
proc initRos1Ocs2_msgsMode_schedule*(): Ros1Ocs2_msgsMode_schedule =
  result.`eventTimes` = @[]
  result.`modeSequence` = @[]
proc writeFields*(value: Ros1Ocs2_msgsMode_schedule; w: var Writer) =
  if value.`eventTimes`.len > 16: fail(22)
  putInteger(w,uint32(value.`eventTimes`.len))
  for e in value.`eventTimes`:
    putFloat64(w,e)
  if value.`modeSequence`.len > 16: fail(22)
  putInteger(w,uint32(value.`modeSequence`.len))
  for e in value.`modeSequence`:
    putInteger(w,e)
proc readRos1Ocs2_msgsMode_schedule*(r: var Reader): Ros1Ocs2_msgsMode_schedule =
  result = initRos1Ocs2_msgsMode_schedule()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`eventTimes` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`eventTimes`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`modeSequence` = newSeq[int8](count1)
  for i in 0..<count1:
    result.`modeSequence`[i] = getInteger(r,int8)
proc encode*(value: Ros1Ocs2_msgsMode_schedule): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMode_schedule*(b: seq[byte]): Ros1Ocs2_msgsMode_schedule =
  var r = initReader(b,152)
  result = readRos1Ocs2_msgsMode_schedule(r)
  finish(r)
type Ros1Ocs2_msgsMpc_state* = object
  `value`*: seq[float32]
const Ros1Ocs2_msgsMpc_stateMaximumWireBytes* = 516
const Ros1Ocs2_msgsMpc_stateCodecIdentity* = "UWVMROS1_3c9644ad4773e490b934d0307b09b1dad08631ecb5f7aae5d786595402119492"
const Ros1Ocs2_msgsMpc_stateNativeType* = "ocs2_msgs/mpc_state"
const Ros1Ocs2_msgsMpc_stateNativeIdentity* = ""
proc initRos1Ocs2_msgsMpc_state*(): Ros1Ocs2_msgsMpc_state =
  result.`value` = @[]
proc writeFields*(value: Ros1Ocs2_msgsMpc_state; w: var Writer) =
  if value.`value`.len > 128: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putFloat32(w,e)
proc readRos1Ocs2_msgsMpc_state*(r: var Reader): Ros1Ocs2_msgsMpc_state =
  result = initRos1Ocs2_msgsMpc_state()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 128: fail(22)
  let count0 = int(rawcount0)
  result.`value` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`value`[i] = getFloat32(r)
proc encode*(value: Ros1Ocs2_msgsMpc_state): seq[byte] =
  var w = initWriter(516)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMpc_state*(b: seq[byte]): Ros1Ocs2_msgsMpc_state =
  var r = initReader(b,516)
  result = readRos1Ocs2_msgsMpc_state(r)
  finish(r)
type Ros1Ocs2_msgsMpc_input* = object
  `value`*: seq[float32]
const Ros1Ocs2_msgsMpc_inputMaximumWireBytes* = 516
const Ros1Ocs2_msgsMpc_inputCodecIdentity* = "UWVMROS1_2591643ee7dfe9762a73f543c7bf7dea0fc384abcf2a9e8305153011de43b3f8"
const Ros1Ocs2_msgsMpc_inputNativeType* = "ocs2_msgs/mpc_input"
const Ros1Ocs2_msgsMpc_inputNativeIdentity* = ""
proc initRos1Ocs2_msgsMpc_input*(): Ros1Ocs2_msgsMpc_input =
  result.`value` = @[]
proc writeFields*(value: Ros1Ocs2_msgsMpc_input; w: var Writer) =
  if value.`value`.len > 128: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putFloat32(w,e)
proc readRos1Ocs2_msgsMpc_input*(r: var Reader): Ros1Ocs2_msgsMpc_input =
  result = initRos1Ocs2_msgsMpc_input()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 128: fail(22)
  let count0 = int(rawcount0)
  result.`value` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`value`[i] = getFloat32(r)
proc encode*(value: Ros1Ocs2_msgsMpc_input): seq[byte] =
  var w = initWriter(516)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMpc_input*(b: seq[byte]): Ros1Ocs2_msgsMpc_input =
  var r = initReader(b,516)
  result = readRos1Ocs2_msgsMpc_input(r)
  finish(r)
type Ros1Ocs2_msgsMpc_observation* = object
  `time`*: float64
  `state`*: Ros1Ocs2_msgsMpc_state
  `input`*: Ros1Ocs2_msgsMpc_input
  `mode`*: int8
const Ros1Ocs2_msgsMpc_observationMaximumWireBytes* = 1041
const Ros1Ocs2_msgsMpc_observationCodecIdentity* = "UWVMROS1_ba910059c5be1476eec8dbad8d745afaba40c89885adb202d2a35aa37f9f075e"
const Ros1Ocs2_msgsMpc_observationNativeType* = "ocs2_msgs/mpc_observation"
const Ros1Ocs2_msgsMpc_observationNativeIdentity* = ""
proc initRos1Ocs2_msgsMpc_observation*(): Ros1Ocs2_msgsMpc_observation =
  result.`time` = 0
  result.`state` = initRos1Ocs2_msgsMpc_state()
  result.`input` = initRos1Ocs2_msgsMpc_input()
  result.`mode` = 0
proc writeFields*(value: Ros1Ocs2_msgsMpc_observation; w: var Writer) =
  putFloat64(w,value.`time`)
  writeFields(value.`state`,w)
  writeFields(value.`input`,w)
  putInteger(w,value.`mode`)
proc readRos1Ocs2_msgsMpc_observation*(r: var Reader): Ros1Ocs2_msgsMpc_observation =
  result = initRos1Ocs2_msgsMpc_observation()
  result.`time` = getFloat64(r)
  result.`state` = readRos1Ocs2_msgsMpc_state(r)
  result.`input` = readRos1Ocs2_msgsMpc_input(r)
  result.`mode` = getInteger(r,int8)
proc encode*(value: Ros1Ocs2_msgsMpc_observation): seq[byte] =
  var w = initWriter(1041)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMpc_observation*(b: seq[byte]): Ros1Ocs2_msgsMpc_observation =
  var r = initReader(b,1041)
  result = readRos1Ocs2_msgsMpc_observation(r)
  finish(r)
type Ros1Ocs2_msgsMpc_target_trajectories* = object
  `timeTrajectory`*: seq[float64]
  `stateTrajectory`*: seq[Ros1Ocs2_msgsMpc_state]
  `inputTrajectory`*: seq[Ros1Ocs2_msgsMpc_input]
const Ros1Ocs2_msgsMpc_target_trajectoriesMaximumWireBytes* = 4268
const Ros1Ocs2_msgsMpc_target_trajectoriesCodecIdentity* = "UWVMROS1_6e349264eb44f2b5b41a1b569bdcc8782b18b2631a5534e6d3a165eecbc2930c"
const Ros1Ocs2_msgsMpc_target_trajectoriesNativeType* = "ocs2_msgs/mpc_target_trajectories"
const Ros1Ocs2_msgsMpc_target_trajectoriesNativeIdentity* = ""
proc initRos1Ocs2_msgsMpc_target_trajectories*(): Ros1Ocs2_msgsMpc_target_trajectories =
  result.`timeTrajectory` = @[]
  result.`stateTrajectory` = @[]
  result.`inputTrajectory` = @[]
proc writeFields*(value: Ros1Ocs2_msgsMpc_target_trajectories; w: var Writer) =
  if value.`timeTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`timeTrajectory`.len))
  for e in value.`timeTrajectory`:
    putFloat64(w,e)
  if value.`stateTrajectory`.len > 4: fail(22)
  putInteger(w,uint32(value.`stateTrajectory`.len))
  for e in value.`stateTrajectory`:
    writeFields(e,w)
  if value.`inputTrajectory`.len > 4: fail(22)
  putInteger(w,uint32(value.`inputTrajectory`.len))
  for e in value.`inputTrajectory`:
    writeFields(e,w)
proc readRos1Ocs2_msgsMpc_target_trajectories*(r: var Reader): Ros1Ocs2_msgsMpc_target_trajectories =
  result = initRos1Ocs2_msgsMpc_target_trajectories()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`timeTrajectory` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`timeTrajectory`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`stateTrajectory` = newSeq[Ros1Ocs2_msgsMpc_state](count1)
  for i in 0..<count1:
    result.`stateTrajectory`[i] = readRos1Ocs2_msgsMpc_state(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`inputTrajectory` = newSeq[Ros1Ocs2_msgsMpc_input](count2)
  for i in 0..<count2:
    result.`inputTrajectory`[i] = readRos1Ocs2_msgsMpc_input(r)
proc encode*(value: Ros1Ocs2_msgsMpc_target_trajectories): seq[byte] =
  var w = initWriter(4268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMpc_target_trajectories*(b: seq[byte]): Ros1Ocs2_msgsMpc_target_trajectories =
  var r = initReader(b,4268)
  result = readRos1Ocs2_msgsMpc_target_trajectories(r)
  finish(r)
type Ros1Ocs2_msgsMpc_performance_indices* = object
  `initTime`*: float32
  `merit`*: float32
  `cost`*: float32
  `dynamicsViolationSSE`*: float32
  `equalityConstraintsSSE`*: float32
  `equalityLagrangian`*: float32
  `inequalityLagrangian`*: float32
const Ros1Ocs2_msgsMpc_performance_indicesMaximumWireBytes* = 28
const Ros1Ocs2_msgsMpc_performance_indicesCodecIdentity* = "UWVMROS1_273d68282cf27631b424f01d8ec4adc53b2af16477b4419a1e9bf259413b4c15"
const Ros1Ocs2_msgsMpc_performance_indicesNativeType* = "ocs2_msgs/mpc_performance_indices"
const Ros1Ocs2_msgsMpc_performance_indicesNativeIdentity* = ""
proc initRos1Ocs2_msgsMpc_performance_indices*(): Ros1Ocs2_msgsMpc_performance_indices =
  result.`initTime` = 0
  result.`merit` = 0
  result.`cost` = 0
  result.`dynamicsViolationSSE` = 0
  result.`equalityConstraintsSSE` = 0
  result.`equalityLagrangian` = 0
  result.`inequalityLagrangian` = 0
proc writeFields*(value: Ros1Ocs2_msgsMpc_performance_indices; w: var Writer) =
  putFloat32(w,value.`initTime`)
  putFloat32(w,value.`merit`)
  putFloat32(w,value.`cost`)
  putFloat32(w,value.`dynamicsViolationSSE`)
  putFloat32(w,value.`equalityConstraintsSSE`)
  putFloat32(w,value.`equalityLagrangian`)
  putFloat32(w,value.`inequalityLagrangian`)
proc readRos1Ocs2_msgsMpc_performance_indices*(r: var Reader): Ros1Ocs2_msgsMpc_performance_indices =
  result = initRos1Ocs2_msgsMpc_performance_indices()
  result.`initTime` = getFloat32(r)
  result.`merit` = getFloat32(r)
  result.`cost` = getFloat32(r)
  result.`dynamicsViolationSSE` = getFloat32(r)
  result.`equalityConstraintsSSE` = getFloat32(r)
  result.`equalityLagrangian` = getFloat32(r)
  result.`inequalityLagrangian` = getFloat32(r)
proc encode*(value: Ros1Ocs2_msgsMpc_performance_indices): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMpc_performance_indices*(b: seq[byte]): Ros1Ocs2_msgsMpc_performance_indices =
  var r = initReader(b,28)
  result = readRos1Ocs2_msgsMpc_performance_indices(r)
  finish(r)
type Ros1Ocs2_msgsMpc_flattened_controller* = object
  `controllerType`*: uint8
  `initObservation`*: Ros1Ocs2_msgsMpc_observation
  `planTargetTrajectories`*: Ros1Ocs2_msgsMpc_target_trajectories
  `stateTrajectory`*: seq[Ros1Ocs2_msgsMpc_state]
  `inputTrajectory`*: seq[Ros1Ocs2_msgsMpc_input]
  `timeTrajectory`*: seq[float64]
  `postEventIndices`*: seq[uint16]
  `modeSchedule`*: Ros1Ocs2_msgsMode_schedule
  `data`*: seq[Ros1Ocs2_msgsController_data]
  `performanceIndices`*: Ros1Ocs2_msgsMpc_performance_indices
const Ros1Ocs2_msgsMpc_flattened_controllerMaximumWireBytes* = 10070
const Ros1Ocs2_msgsMpc_flattened_controllerCodecIdentity* = "UWVMROS1_9814d2381d31bbf813f4abdfea131df7dfa0b5628f1cb1f039d6a3d2237dbb8f"
const Ros1Ocs2_msgsMpc_flattened_controllerNativeType* = "ocs2_msgs/mpc_flattened_controller"
const Ros1Ocs2_msgsMpc_flattened_controllerNativeIdentity* = ""
const Ros1Ocs2_msgsMpc_flattened_controller_CONTROLLER_UNKNOWN*: uint8 = 0'u8
const Ros1Ocs2_msgsMpc_flattened_controller_CONTROLLER_FEEDFORWARD*: uint8 = 1'u8
const Ros1Ocs2_msgsMpc_flattened_controller_CONTROLLER_LINEAR*: uint8 = 2'u8
proc initRos1Ocs2_msgsMpc_flattened_controller*(): Ros1Ocs2_msgsMpc_flattened_controller =
  result.`controllerType` = 0
  result.`initObservation` = initRos1Ocs2_msgsMpc_observation()
  result.`planTargetTrajectories` = initRos1Ocs2_msgsMpc_target_trajectories()
  result.`stateTrajectory` = @[]
  result.`inputTrajectory` = @[]
  result.`timeTrajectory` = @[]
  result.`postEventIndices` = @[]
  result.`modeSchedule` = initRos1Ocs2_msgsMode_schedule()
  result.`data` = @[]
  result.`performanceIndices` = initRos1Ocs2_msgsMpc_performance_indices()
proc writeFields*(value: Ros1Ocs2_msgsMpc_flattened_controller; w: var Writer) =
  putInteger(w,value.`controllerType`)
  writeFields(value.`initObservation`,w)
  writeFields(value.`planTargetTrajectories`,w)
  if value.`stateTrajectory`.len > 4: fail(22)
  putInteger(w,uint32(value.`stateTrajectory`.len))
  for e in value.`stateTrajectory`:
    writeFields(e,w)
  if value.`inputTrajectory`.len > 4: fail(22)
  putInteger(w,uint32(value.`inputTrajectory`.len))
  for e in value.`inputTrajectory`:
    writeFields(e,w)
  if value.`timeTrajectory`.len > 16: fail(22)
  putInteger(w,uint32(value.`timeTrajectory`.len))
  for e in value.`timeTrajectory`:
    putFloat64(w,e)
  if value.`postEventIndices`.len > 16: fail(22)
  putInteger(w,uint32(value.`postEventIndices`.len))
  for e in value.`postEventIndices`:
    putInteger(w,e)
  writeFields(value.`modeSchedule`,w)
  if value.`data`.len > 4: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
  writeFields(value.`performanceIndices`,w)
proc readRos1Ocs2_msgsMpc_flattened_controller*(r: var Reader): Ros1Ocs2_msgsMpc_flattened_controller =
  result = initRos1Ocs2_msgsMpc_flattened_controller()
  result.`controllerType` = getInteger(r,uint8)
  result.`initObservation` = readRos1Ocs2_msgsMpc_observation(r)
  result.`planTargetTrajectories` = readRos1Ocs2_msgsMpc_target_trajectories(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`stateTrajectory` = newSeq[Ros1Ocs2_msgsMpc_state](count3)
  for i in 0..<count3:
    result.`stateTrajectory`[i] = readRos1Ocs2_msgsMpc_state(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`inputTrajectory` = newSeq[Ros1Ocs2_msgsMpc_input](count4)
  for i in 0..<count4:
    result.`inputTrajectory`[i] = readRos1Ocs2_msgsMpc_input(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 16: fail(22)
  let count5 = int(rawcount5)
  result.`timeTrajectory` = newSeq[float64](count5)
  for i in 0..<count5:
    result.`timeTrajectory`[i] = getFloat64(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 16: fail(22)
  let count6 = int(rawcount6)
  result.`postEventIndices` = newSeq[uint16](count6)
  for i in 0..<count6:
    result.`postEventIndices`[i] = getInteger(r,uint16)
  result.`modeSchedule` = readRos1Ocs2_msgsMode_schedule(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 4: fail(22)
  let count8 = int(rawcount8)
  result.`data` = newSeq[Ros1Ocs2_msgsController_data](count8)
  for i in 0..<count8:
    result.`data`[i] = readRos1Ocs2_msgsController_data(r)
  result.`performanceIndices` = readRos1Ocs2_msgsMpc_performance_indices(r)
proc encode*(value: Ros1Ocs2_msgsMpc_flattened_controller): seq[byte] =
  var w = initWriter(10070)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMpc_flattened_controller*(b: seq[byte]): Ros1Ocs2_msgsMpc_flattened_controller =
  var r = initReader(b,10070)
  result = readRos1Ocs2_msgsMpc_flattened_controller(r)
  finish(r)
type Ros1Ocs2_msgsMpc_solver_data* = object
  `initTime`*: float64
  `initState`*: seq[float64]
  `finalTime`*: float64
  `modeSchedule`*: Ros1Ocs2_msgsMode_schedule
  `targetTrajectories`*: Ros1Ocs2_msgsMpc_target_trajectories
  `mpc_flattened_controller`*: Ros1Ocs2_msgsMpc_flattened_controller
  `swingPlannerMultipliers`*: seq[float64]
const Ros1Ocs2_msgsMpc_solver_dataMaximumWireBytes* = 14770
const Ros1Ocs2_msgsMpc_solver_dataCodecIdentity* = "UWVMROS1_215c558c1d4953793770d6655259d39ec13bac7969d5763a308756feb581c021"
const Ros1Ocs2_msgsMpc_solver_dataNativeType* = "ocs2_msgs/mpc_solver_data"
const Ros1Ocs2_msgsMpc_solver_dataNativeIdentity* = ""
proc initRos1Ocs2_msgsMpc_solver_data*(): Ros1Ocs2_msgsMpc_solver_data =
  result.`initTime` = 0
  result.`initState` = @[]
  result.`finalTime` = 0
  result.`modeSchedule` = initRos1Ocs2_msgsMode_schedule()
  result.`targetTrajectories` = initRos1Ocs2_msgsMpc_target_trajectories()
  result.`mpc_flattened_controller` = initRos1Ocs2_msgsMpc_flattened_controller()
  result.`swingPlannerMultipliers` = @[]
proc writeFields*(value: Ros1Ocs2_msgsMpc_solver_data; w: var Writer) =
  putFloat64(w,value.`initTime`)
  if value.`initState`.len > 16: fail(22)
  putInteger(w,uint32(value.`initState`.len))
  for e in value.`initState`:
    putFloat64(w,e)
  putFloat64(w,value.`finalTime`)
  writeFields(value.`modeSchedule`,w)
  writeFields(value.`targetTrajectories`,w)
  writeFields(value.`mpc_flattened_controller`,w)
  if value.`swingPlannerMultipliers`.len > 16: fail(22)
  putInteger(w,uint32(value.`swingPlannerMultipliers`.len))
  for e in value.`swingPlannerMultipliers`:
    putFloat64(w,e)
proc readRos1Ocs2_msgsMpc_solver_data*(r: var Reader): Ros1Ocs2_msgsMpc_solver_data =
  result = initRos1Ocs2_msgsMpc_solver_data()
  result.`initTime` = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`initState` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`initState`[i] = getFloat64(r)
  result.`finalTime` = getFloat64(r)
  result.`modeSchedule` = readRos1Ocs2_msgsMode_schedule(r)
  result.`targetTrajectories` = readRos1Ocs2_msgsMpc_target_trajectories(r)
  result.`mpc_flattened_controller` = readRos1Ocs2_msgsMpc_flattened_controller(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 16: fail(22)
  let count6 = int(rawcount6)
  result.`swingPlannerMultipliers` = newSeq[float64](count6)
  for i in 0..<count6:
    result.`swingPlannerMultipliers`[i] = getFloat64(r)
proc encode*(value: Ros1Ocs2_msgsMpc_solver_data): seq[byte] =
  var w = initWriter(14770)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMpc_solver_data*(b: seq[byte]): Ros1Ocs2_msgsMpc_solver_data =
  var r = initReader(b,14770)
  result = readRos1Ocs2_msgsMpc_solver_data(r)
  finish(r)
type Ros1Ocs2_msgsMultiplier* = object
  `time`*: float32
  `penalty`*: float32
  `lagrangian`*: seq[float32]
const Ros1Ocs2_msgsMultiplierMaximumWireBytes* = 76
const Ros1Ocs2_msgsMultiplierCodecIdentity* = "UWVMROS1_09b02ac02ad1579fa38f2c632880b7d87dacecc30bc419ff29276fe223cc1c59"
const Ros1Ocs2_msgsMultiplierNativeType* = "ocs2_msgs/multiplier"
const Ros1Ocs2_msgsMultiplierNativeIdentity* = ""
proc initRos1Ocs2_msgsMultiplier*(): Ros1Ocs2_msgsMultiplier =
  result.`time` = 0
  result.`penalty` = 0
  result.`lagrangian` = @[]
proc writeFields*(value: Ros1Ocs2_msgsMultiplier; w: var Writer) =
  putFloat32(w,value.`time`)
  putFloat32(w,value.`penalty`)
  if value.`lagrangian`.len > 16: fail(22)
  putInteger(w,uint32(value.`lagrangian`.len))
  for e in value.`lagrangian`:
    putFloat32(w,e)
proc readRos1Ocs2_msgsMultiplier*(r: var Reader): Ros1Ocs2_msgsMultiplier =
  result = initRos1Ocs2_msgsMultiplier()
  result.`time` = getFloat32(r)
  result.`penalty` = getFloat32(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`lagrangian` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`lagrangian`[i] = getFloat32(r)
proc encode*(value: Ros1Ocs2_msgsMultiplier): seq[byte] =
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsMultiplier*(b: seq[byte]): Ros1Ocs2_msgsMultiplier =
  var r = initReader(b,76)
  result = readRos1Ocs2_msgsMultiplier(r)
  finish(r)
type Ros1Ocs2_msgsPause_resumeRequest* = object
  `pause`*: bool
const Ros1Ocs2_msgsPause_resumeRequestMaximumWireBytes* = 1
const Ros1Ocs2_msgsPause_resumeRequestCodecIdentity* = "UWVMROS1_aea8b69dcf340e3ebac58734089fab37c60f8c37c52b13f8b7426e8234dc2c92"
const Ros1Ocs2_msgsPause_resumeRequestNativeType* = "ocs2_msgs/pause_resumeRequest"
const Ros1Ocs2_msgsPause_resumeRequestNativeIdentity* = ""
proc initRos1Ocs2_msgsPause_resumeRequest*(): Ros1Ocs2_msgsPause_resumeRequest =
  result.`pause` = false
proc writeFields*(value: Ros1Ocs2_msgsPause_resumeRequest; w: var Writer) =
  putBool(w,value.`pause`)
proc readRos1Ocs2_msgsPause_resumeRequest*(r: var Reader): Ros1Ocs2_msgsPause_resumeRequest =
  result = initRos1Ocs2_msgsPause_resumeRequest()
  result.`pause` = getBool(r)
proc encode*(value: Ros1Ocs2_msgsPause_resumeRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsPause_resumeRequest*(b: seq[byte]): Ros1Ocs2_msgsPause_resumeRequest =
  var r = initReader(b,1)
  result = readRos1Ocs2_msgsPause_resumeRequest(r)
  finish(r)
type Ros1Ocs2_msgsPause_resumeResponse* = object
  `done`*: bool
const Ros1Ocs2_msgsPause_resumeResponseMaximumWireBytes* = 1
const Ros1Ocs2_msgsPause_resumeResponseCodecIdentity* = "UWVMROS1_ef86b829dafc3a418545b92173fc8e9d6d756f7a712e7073716d3346fe3479fa"
const Ros1Ocs2_msgsPause_resumeResponseNativeType* = "ocs2_msgs/pause_resumeResponse"
const Ros1Ocs2_msgsPause_resumeResponseNativeIdentity* = ""
proc initRos1Ocs2_msgsPause_resumeResponse*(): Ros1Ocs2_msgsPause_resumeResponse =
  result.`done` = false
proc writeFields*(value: Ros1Ocs2_msgsPause_resumeResponse; w: var Writer) =
  putBool(w,value.`done`)
proc readRos1Ocs2_msgsPause_resumeResponse*(r: var Reader): Ros1Ocs2_msgsPause_resumeResponse =
  result = initRos1Ocs2_msgsPause_resumeResponse()
  result.`done` = getBool(r)
proc encode*(value: Ros1Ocs2_msgsPause_resumeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsPause_resumeResponse*(b: seq[byte]): Ros1Ocs2_msgsPause_resumeResponse =
  var r = initReader(b,1)
  result = readRos1Ocs2_msgsPause_resumeResponse(r)
  finish(r)
type Ros1Ocs2_msgsResetRequest* = object
  `reset`*: bool
  `targetTrajectories`*: Ros1Ocs2_msgsMpc_target_trajectories
const Ros1Ocs2_msgsResetRequestMaximumWireBytes* = 4269
const Ros1Ocs2_msgsResetRequestCodecIdentity* = "UWVMROS1_582fd1dbd9ce6f6fb3fb4e274da248a3e8af20a751b56258fc74d3e4b30376d6"
const Ros1Ocs2_msgsResetRequestNativeType* = "ocs2_msgs/resetRequest"
const Ros1Ocs2_msgsResetRequestNativeIdentity* = ""
proc initRos1Ocs2_msgsResetRequest*(): Ros1Ocs2_msgsResetRequest =
  result.`reset` = false
  result.`targetTrajectories` = initRos1Ocs2_msgsMpc_target_trajectories()
proc writeFields*(value: Ros1Ocs2_msgsResetRequest; w: var Writer) =
  putBool(w,value.`reset`)
  writeFields(value.`targetTrajectories`,w)
proc readRos1Ocs2_msgsResetRequest*(r: var Reader): Ros1Ocs2_msgsResetRequest =
  result = initRos1Ocs2_msgsResetRequest()
  result.`reset` = getBool(r)
  result.`targetTrajectories` = readRos1Ocs2_msgsMpc_target_trajectories(r)
proc encode*(value: Ros1Ocs2_msgsResetRequest): seq[byte] =
  var w = initWriter(4269)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsResetRequest*(b: seq[byte]): Ros1Ocs2_msgsResetRequest =
  var r = initReader(b,4269)
  result = readRos1Ocs2_msgsResetRequest(r)
  finish(r)
type Ros1Ocs2_msgsResetResponse* = object
  `done`*: bool
const Ros1Ocs2_msgsResetResponseMaximumWireBytes* = 1
const Ros1Ocs2_msgsResetResponseCodecIdentity* = "UWVMROS1_f6458a9efb26965fec00e8c0b26180f56e687a70517dd55c71c9e4f31aca8d33"
const Ros1Ocs2_msgsResetResponseNativeType* = "ocs2_msgs/resetResponse"
const Ros1Ocs2_msgsResetResponseNativeIdentity* = ""
proc initRos1Ocs2_msgsResetResponse*(): Ros1Ocs2_msgsResetResponse =
  result.`done` = false
proc writeFields*(value: Ros1Ocs2_msgsResetResponse; w: var Writer) =
  putBool(w,value.`done`)
proc readRos1Ocs2_msgsResetResponse*(r: var Reader): Ros1Ocs2_msgsResetResponse =
  result = initRos1Ocs2_msgsResetResponse()
  result.`done` = getBool(r)
proc encode*(value: Ros1Ocs2_msgsResetResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_msgsResetResponse*(b: seq[byte]): Ros1Ocs2_msgsResetResponse =
  var r = initReader(b,1)
  result = readRos1Ocs2_msgsResetResponse(r)
  finish(r)
type Ros1Ocs2_switched_model_msgsGait* = object
  `eventPhases`*: seq[float32]
  `modeSequence`*: seq[int8]
  `duration`*: float32
const Ros1Ocs2_switched_model_msgsGaitMaximumWireBytes* = 92
const Ros1Ocs2_switched_model_msgsGaitCodecIdentity* = "UWVMROS1_860276a1a3b3b9e8ec71a6abbc7f1f77bc4005350cea0bf7a08b7760fceae30b"
const Ros1Ocs2_switched_model_msgsGaitNativeType* = "ocs2_switched_model_msgs/gait"
const Ros1Ocs2_switched_model_msgsGaitNativeIdentity* = ""
proc initRos1Ocs2_switched_model_msgsGait*(): Ros1Ocs2_switched_model_msgsGait =
  result.`eventPhases` = @[]
  result.`modeSequence` = @[]
  result.`duration` = 0
proc writeFields*(value: Ros1Ocs2_switched_model_msgsGait; w: var Writer) =
  if value.`eventPhases`.len > 16: fail(22)
  putInteger(w,uint32(value.`eventPhases`.len))
  for e in value.`eventPhases`:
    putFloat32(w,e)
  if value.`modeSequence`.len > 16: fail(22)
  putInteger(w,uint32(value.`modeSequence`.len))
  for e in value.`modeSequence`:
    putInteger(w,e)
  putFloat32(w,value.`duration`)
proc readRos1Ocs2_switched_model_msgsGait*(r: var Reader): Ros1Ocs2_switched_model_msgsGait =
  result = initRos1Ocs2_switched_model_msgsGait()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`eventPhases` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`eventPhases`[i] = getFloat32(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`modeSequence` = newSeq[int8](count1)
  for i in 0..<count1:
    result.`modeSequence`[i] = getInteger(r,int8)
  result.`duration` = getFloat32(r)
proc encode*(value: Ros1Ocs2_switched_model_msgsGait): seq[byte] =
  var w = initWriter(92)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_switched_model_msgsGait*(b: seq[byte]): Ros1Ocs2_switched_model_msgsGait =
  var r = initReader(b,92)
  result = readRos1Ocs2_switched_model_msgsGait(r)
  finish(r)
type Ros1Ocs2_switched_model_msgsGait_sequence* = object
  `gaits`*: seq[Ros1Ocs2_switched_model_msgsGait]
const Ros1Ocs2_switched_model_msgsGait_sequenceMaximumWireBytes* = 740
const Ros1Ocs2_switched_model_msgsGait_sequenceCodecIdentity* = "UWVMROS1_46ff0778bfad36d83d3b0dd27787b493e48856d8bbedc259f11e67fc41875933"
const Ros1Ocs2_switched_model_msgsGait_sequenceNativeType* = "ocs2_switched_model_msgs/gait_sequence"
const Ros1Ocs2_switched_model_msgsGait_sequenceNativeIdentity* = ""
proc initRos1Ocs2_switched_model_msgsGait_sequence*(): Ros1Ocs2_switched_model_msgsGait_sequence =
  result.`gaits` = @[]
proc writeFields*(value: Ros1Ocs2_switched_model_msgsGait_sequence; w: var Writer) =
  if value.`gaits`.len > 8: fail(22)
  putInteger(w,uint32(value.`gaits`.len))
  for e in value.`gaits`:
    writeFields(e,w)
proc readRos1Ocs2_switched_model_msgsGait_sequence*(r: var Reader): Ros1Ocs2_switched_model_msgsGait_sequence =
  result = initRos1Ocs2_switched_model_msgsGait_sequence()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`gaits` = newSeq[Ros1Ocs2_switched_model_msgsGait](count0)
  for i in 0..<count0:
    result.`gaits`[i] = readRos1Ocs2_switched_model_msgsGait(r)
proc encode*(value: Ros1Ocs2_switched_model_msgsGait_sequence): seq[byte] =
  var w = initWriter(740)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_switched_model_msgsGait_sequence*(b: seq[byte]): Ros1Ocs2_switched_model_msgsGait_sequence =
  var r = initReader(b,740)
  result = readRos1Ocs2_switched_model_msgsGait_sequence(r)
  finish(r)
type Ros1Ocs2_switched_model_msgsScheduled_gait_sequence* = object
  `startTime`*: float32
  `gaitSequence`*: Ros1Ocs2_switched_model_msgsGait_sequence
const Ros1Ocs2_switched_model_msgsScheduled_gait_sequenceMaximumWireBytes* = 744
const Ros1Ocs2_switched_model_msgsScheduled_gait_sequenceCodecIdentity* = "UWVMROS1_3868414a699777b55702b9e7c99841c3f7ff08ffe95f27737c9540a597f991dc"
const Ros1Ocs2_switched_model_msgsScheduled_gait_sequenceNativeType* = "ocs2_switched_model_msgs/scheduled_gait_sequence"
const Ros1Ocs2_switched_model_msgsScheduled_gait_sequenceNativeIdentity* = ""
proc initRos1Ocs2_switched_model_msgsScheduled_gait_sequence*(): Ros1Ocs2_switched_model_msgsScheduled_gait_sequence =
  result.`startTime` = 0
  result.`gaitSequence` = initRos1Ocs2_switched_model_msgsGait_sequence()
proc writeFields*(value: Ros1Ocs2_switched_model_msgsScheduled_gait_sequence; w: var Writer) =
  putFloat32(w,value.`startTime`)
  writeFields(value.`gaitSequence`,w)
proc readRos1Ocs2_switched_model_msgsScheduled_gait_sequence*(r: var Reader): Ros1Ocs2_switched_model_msgsScheduled_gait_sequence =
  result = initRos1Ocs2_switched_model_msgsScheduled_gait_sequence()
  result.`startTime` = getFloat32(r)
  result.`gaitSequence` = readRos1Ocs2_switched_model_msgsGait_sequence(r)
proc encode*(value: Ros1Ocs2_switched_model_msgsScheduled_gait_sequence): seq[byte] =
  var w = initWriter(744)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence*(b: seq[byte]): Ros1Ocs2_switched_model_msgsScheduled_gait_sequence =
  var r = initReader(b,744)
  result = readRos1Ocs2_switched_model_msgsScheduled_gait_sequence(r)
  finish(r)
type Ros1Ocs2_switched_model_msgsTrajectory_requestRequest* = object
  `trajectory`*: Ros1Ocs2_msgsMpc_target_trajectories
  `gaitSequence`*: Ros1Ocs2_switched_model_msgsGait_sequence
const Ros1Ocs2_switched_model_msgsTrajectory_requestRequestMaximumWireBytes* = 5008
const Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodecIdentity* = "UWVMROS1_932982f63bf8a4ba861e35524546fa2bc940aad2eae21e5d521ae0764d216caa"
const Ros1Ocs2_switched_model_msgsTrajectory_requestRequestNativeType* = "ocs2_switched_model_msgs/trajectory_requestRequest"
const Ros1Ocs2_switched_model_msgsTrajectory_requestRequestNativeIdentity* = ""
proc initRos1Ocs2_switched_model_msgsTrajectory_requestRequest*(): Ros1Ocs2_switched_model_msgsTrajectory_requestRequest =
  result.`trajectory` = initRos1Ocs2_msgsMpc_target_trajectories()
  result.`gaitSequence` = initRos1Ocs2_switched_model_msgsGait_sequence()
proc writeFields*(value: Ros1Ocs2_switched_model_msgsTrajectory_requestRequest; w: var Writer) =
  writeFields(value.`trajectory`,w)
  writeFields(value.`gaitSequence`,w)
proc readRos1Ocs2_switched_model_msgsTrajectory_requestRequest*(r: var Reader): Ros1Ocs2_switched_model_msgsTrajectory_requestRequest =
  result = initRos1Ocs2_switched_model_msgsTrajectory_requestRequest()
  result.`trajectory` = readRos1Ocs2_msgsMpc_target_trajectories(r)
  result.`gaitSequence` = readRos1Ocs2_switched_model_msgsGait_sequence(r)
proc encode*(value: Ros1Ocs2_switched_model_msgsTrajectory_requestRequest): seq[byte] =
  var w = initWriter(5008)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_switched_model_msgsTrajectory_requestRequest*(b: seq[byte]): Ros1Ocs2_switched_model_msgsTrajectory_requestRequest =
  var r = initReader(b,5008)
  result = readRos1Ocs2_switched_model_msgsTrajectory_requestRequest(r)
  finish(r)
type Ros1Ocs2_switched_model_msgsTrajectory_requestResponse* = object
  `success`*: bool
const Ros1Ocs2_switched_model_msgsTrajectory_requestResponseMaximumWireBytes* = 1
const Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodecIdentity* = "UWVMROS1_40df5f3715594613ebf45148957427587f4d0dbfa45d27a327e10cb296bbe073"
const Ros1Ocs2_switched_model_msgsTrajectory_requestResponseNativeType* = "ocs2_switched_model_msgs/trajectory_requestResponse"
const Ros1Ocs2_switched_model_msgsTrajectory_requestResponseNativeIdentity* = ""
proc initRos1Ocs2_switched_model_msgsTrajectory_requestResponse*(): Ros1Ocs2_switched_model_msgsTrajectory_requestResponse =
  result.`success` = false
proc writeFields*(value: Ros1Ocs2_switched_model_msgsTrajectory_requestResponse; w: var Writer) =
  putBool(w,value.`success`)
proc readRos1Ocs2_switched_model_msgsTrajectory_requestResponse*(r: var Reader): Ros1Ocs2_switched_model_msgsTrajectory_requestResponse =
  result = initRos1Ocs2_switched_model_msgsTrajectory_requestResponse()
  result.`success` = getBool(r)
proc encode*(value: Ros1Ocs2_switched_model_msgsTrajectory_requestResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse*(b: seq[byte]): Ros1Ocs2_switched_model_msgsTrajectory_requestResponse =
  var r = initReader(b,1)
  result = readRos1Ocs2_switched_model_msgsTrajectory_requestResponse(r)
  finish(r)
type Ros1Sensor_msgsRegionOfInterest* = object
  `x_offset`*: uint32
  `y_offset`*: uint32
  `height`*: uint32
  `width`*: uint32
  `do_rectify`*: bool
const Ros1Sensor_msgsRegionOfInterestMaximumWireBytes* = 17
const Ros1Sensor_msgsRegionOfInterestCodecIdentity* = "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86"
const Ros1Sensor_msgsRegionOfInterestNativeType* = "sensor_msgs/RegionOfInterest"
const Ros1Sensor_msgsRegionOfInterestNativeIdentity* = ""
proc initRos1Sensor_msgsRegionOfInterest*(): Ros1Sensor_msgsRegionOfInterest =
  result.`x_offset` = 0
  result.`y_offset` = 0
  result.`height` = 0
  result.`width` = 0
  result.`do_rectify` = false
proc writeFields*(value: Ros1Sensor_msgsRegionOfInterest; w: var Writer) =
  putInteger(w,value.`x_offset`)
  putInteger(w,value.`y_offset`)
  putInteger(w,value.`height`)
  putInteger(w,value.`width`)
  putBool(w,value.`do_rectify`)
proc readRos1Sensor_msgsRegionOfInterest*(r: var Reader): Ros1Sensor_msgsRegionOfInterest =
  result = initRos1Sensor_msgsRegionOfInterest()
  result.`x_offset` = getInteger(r,uint32)
  result.`y_offset` = getInteger(r,uint32)
  result.`height` = getInteger(r,uint32)
  result.`width` = getInteger(r,uint32)
  result.`do_rectify` = getBool(r)
proc encode*(value: Ros1Sensor_msgsRegionOfInterest): seq[byte] =
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
proc decodeRos1Sensor_msgsRegionOfInterest*(b: seq[byte]): Ros1Sensor_msgsRegionOfInterest =
  var r = initReader(b,17)
  result = readRos1Sensor_msgsRegionOfInterest(r)
  finish(r)
type Ros1Sensor_msgsCameraInfo* = object
  `header`*: Ros1Std_msgsHeader
  `height`*: uint32
  `width`*: uint32
  `distortion_model`*: string
  `D`*: seq[float64]
  `K`*: array[9,float64]
  `R`*: array[9,float64]
  `P`*: array[12,float64]
  `binning_x`*: uint32
  `binning_y`*: uint32
  `roi`*: Ros1Sensor_msgsRegionOfInterest
const Ros1Sensor_msgsCameraInfoMaximumWireBytes* = 937
const Ros1Sensor_msgsCameraInfoCodecIdentity* = "UWVMROS1_7ccae6e3c6f5cf4e148906604e099b8a5f7331d631b3b154472d3f1c625c0158"
const Ros1Sensor_msgsCameraInfoNativeType* = "sensor_msgs/CameraInfo"
const Ros1Sensor_msgsCameraInfoNativeIdentity* = ""
proc initRos1Sensor_msgsCameraInfo*(): Ros1Sensor_msgsCameraInfo =
  result.`header` = initRos1Std_msgsHeader()
  result.`height` = 0
  result.`width` = 0
  result.`distortion_model` = ""
  result.`D` = @[]
  result.`K` = [0,0,0,0,0,0,0,0,0]
  result.`R` = [0,0,0,0,0,0,0,0,0]
  result.`P` = [0,0,0,0,0,0,0,0,0,0,0,0]
  result.`binning_x` = 0
  result.`binning_y` = 0
  result.`roi` = initRos1Sensor_msgsRegionOfInterest()
proc writeFields*(value: Ros1Sensor_msgsCameraInfo; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`height`)
  putInteger(w,value.`width`)
  putString(w,value.`distortion_model`,256)
  if value.`D`.len > 16: fail(22)
  putInteger(w,uint32(value.`D`.len))
  for e in value.`D`:
    putFloat64(w,e)
  for e in value.`K`:
    putFloat64(w,e)
  for e in value.`R`:
    putFloat64(w,e)
  for e in value.`P`:
    putFloat64(w,e)
  putInteger(w,value.`binning_x`)
  putInteger(w,value.`binning_y`)
  writeFields(value.`roi`,w)
proc readRos1Sensor_msgsCameraInfo*(r: var Reader): Ros1Sensor_msgsCameraInfo =
  result = initRos1Sensor_msgsCameraInfo()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`height` = getInteger(r,uint32)
  result.`width` = getInteger(r,uint32)
  result.`distortion_model` = getString(r,256)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`D` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`D`[i] = getFloat64(r)
  let count5 = 9
  for i in 0..<count5:
    result.`K`[i] = getFloat64(r)
  let count6 = 9
  for i in 0..<count6:
    result.`R`[i] = getFloat64(r)
  let count7 = 12
  for i in 0..<count7:
    result.`P`[i] = getFloat64(r)
  result.`binning_x` = getInteger(r,uint32)
  result.`binning_y` = getInteger(r,uint32)
  result.`roi` = readRos1Sensor_msgsRegionOfInterest(r)
proc encode*(value: Ros1Sensor_msgsCameraInfo): seq[byte] =
  var w = initWriter(937)
  writeFields(value,w)
  w.bytes
proc decodeRos1Sensor_msgsCameraInfo*(b: seq[byte]): Ros1Sensor_msgsCameraInfo =
  var r = initReader(b,937)
  result = readRos1Sensor_msgsCameraInfo(r)
  finish(r)
type Ros1Robot_calibration_msgsCameraParameter* = object
  `name`*: string
  `value`*: float64
const Ros1Robot_calibration_msgsCameraParameterMaximumWireBytes* = 268
const Ros1Robot_calibration_msgsCameraParameterCodecIdentity* = "UWVMROS1_29ee37fe6ff49ed9a5bbff52cceafa7f4afc87d09d6a181c5b6e53e372f5982a"
const Ros1Robot_calibration_msgsCameraParameterNativeType* = "robot_calibration_msgs/CameraParameter"
const Ros1Robot_calibration_msgsCameraParameterNativeIdentity* = ""
proc initRos1Robot_calibration_msgsCameraParameter*(): Ros1Robot_calibration_msgsCameraParameter =
  result.`name` = ""
  result.`value` = 0
proc writeFields*(value: Ros1Robot_calibration_msgsCameraParameter; w: var Writer) =
  putString(w,value.`name`,256)
  putFloat64(w,value.`value`)
proc readRos1Robot_calibration_msgsCameraParameter*(r: var Reader): Ros1Robot_calibration_msgsCameraParameter =
  result = initRos1Robot_calibration_msgsCameraParameter()
  result.`name` = getString(r,256)
  result.`value` = getFloat64(r)
proc encode*(value: Ros1Robot_calibration_msgsCameraParameter): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsCameraParameter*(b: seq[byte]): Ros1Robot_calibration_msgsCameraParameter =
  var r = initReader(b,268)
  result = readRos1Robot_calibration_msgsCameraParameter(r)
  finish(r)
type Ros1Robot_calibration_msgsExtendedCameraInfo* = object
  `camera_info`*: Ros1Sensor_msgsCameraInfo
  `parameters`*: seq[Ros1Robot_calibration_msgsCameraParameter]
const Ros1Robot_calibration_msgsExtendedCameraInfoMaximumWireBytes* = 3085
const Ros1Robot_calibration_msgsExtendedCameraInfoCodecIdentity* = "UWVMROS1_701f271d8f32b7f92c8d145e053fc013fbd4e9664534fc249b3dd635b5282e41"
const Ros1Robot_calibration_msgsExtendedCameraInfoNativeType* = "robot_calibration_msgs/ExtendedCameraInfo"
const Ros1Robot_calibration_msgsExtendedCameraInfoNativeIdentity* = ""
proc initRos1Robot_calibration_msgsExtendedCameraInfo*(): Ros1Robot_calibration_msgsExtendedCameraInfo =
  result.`camera_info` = initRos1Sensor_msgsCameraInfo()
  result.`parameters` = @[]
proc writeFields*(value: Ros1Robot_calibration_msgsExtendedCameraInfo; w: var Writer) =
  writeFields(value.`camera_info`,w)
  if value.`parameters`.len > 8: fail(22)
  putInteger(w,uint32(value.`parameters`.len))
  for e in value.`parameters`:
    writeFields(e,w)
proc readRos1Robot_calibration_msgsExtendedCameraInfo*(r: var Reader): Ros1Robot_calibration_msgsExtendedCameraInfo =
  result = initRos1Robot_calibration_msgsExtendedCameraInfo()
  result.`camera_info` = readRos1Sensor_msgsCameraInfo(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`parameters` = newSeq[Ros1Robot_calibration_msgsCameraParameter](count1)
  for i in 0..<count1:
    result.`parameters`[i] = readRos1Robot_calibration_msgsCameraParameter(r)
proc encode*(value: Ros1Robot_calibration_msgsExtendedCameraInfo): seq[byte] =
  var w = initWriter(3085)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsExtendedCameraInfo*(b: seq[byte]): Ros1Robot_calibration_msgsExtendedCameraInfo =
  var r = initReader(b,3085)
  result = readRos1Robot_calibration_msgsExtendedCameraInfo(r)
  finish(r)
type Ros1Sensor_msgsPointField* = object
  `name`*: string
  `offset`*: uint32
  `datatype`*: uint8
  `count`*: uint32
const Ros1Sensor_msgsPointFieldMaximumWireBytes* = 269
const Ros1Sensor_msgsPointFieldCodecIdentity* = "UWVMROS1_0031797fe1be959add869c9a0ff556867aa051f16dc230e1d6fc6fb7e2903429"
const Ros1Sensor_msgsPointFieldNativeType* = "sensor_msgs/PointField"
const Ros1Sensor_msgsPointFieldNativeIdentity* = ""
const Ros1Sensor_msgsPointField_INT8*: uint8 = 1'u8
const Ros1Sensor_msgsPointField_UINT8*: uint8 = 2'u8
const Ros1Sensor_msgsPointField_INT16*: uint8 = 3'u8
const Ros1Sensor_msgsPointField_UINT16*: uint8 = 4'u8
const Ros1Sensor_msgsPointField_INT32*: uint8 = 5'u8
const Ros1Sensor_msgsPointField_UINT32*: uint8 = 6'u8
const Ros1Sensor_msgsPointField_FLOAT32*: uint8 = 7'u8
const Ros1Sensor_msgsPointField_FLOAT64*: uint8 = 8'u8
proc initRos1Sensor_msgsPointField*(): Ros1Sensor_msgsPointField =
  result.`name` = ""
  result.`offset` = 0
  result.`datatype` = 0
  result.`count` = 0
proc writeFields*(value: Ros1Sensor_msgsPointField; w: var Writer) =
  putString(w,value.`name`,256)
  putInteger(w,value.`offset`)
  putInteger(w,value.`datatype`)
  putInteger(w,value.`count`)
proc readRos1Sensor_msgsPointField*(r: var Reader): Ros1Sensor_msgsPointField =
  result = initRos1Sensor_msgsPointField()
  result.`name` = getString(r,256)
  result.`offset` = getInteger(r,uint32)
  result.`datatype` = getInteger(r,uint8)
  result.`count` = getInteger(r,uint32)
proc encode*(value: Ros1Sensor_msgsPointField): seq[byte] =
  var w = initWriter(269)
  writeFields(value,w)
  w.bytes
proc decodeRos1Sensor_msgsPointField*(b: seq[byte]): Ros1Sensor_msgsPointField =
  var r = initReader(b,269)
  result = readRos1Sensor_msgsPointField(r)
  finish(r)
type Ros1Sensor_msgsPointCloud2* = object
  `header`*: Ros1Std_msgsHeader
  `height`*: uint32
  `width`*: uint32
  `fields`*: seq[Ros1Sensor_msgsPointField]
  `is_bigendian`*: bool
  `point_step`*: uint32
  `row_step`*: uint32
  `data`*: seq[uint8]
  `is_dense`*: bool
const Ros1Sensor_msgsPointCloud2MaximumWireBytes* = 6546
const Ros1Sensor_msgsPointCloud2CodecIdentity* = "UWVMROS1_e75c3063a5cd856597f4e11e40c02360c4f22396a511e72ac102457f480268c1"
const Ros1Sensor_msgsPointCloud2NativeType* = "sensor_msgs/PointCloud2"
const Ros1Sensor_msgsPointCloud2NativeIdentity* = ""
proc initRos1Sensor_msgsPointCloud2*(): Ros1Sensor_msgsPointCloud2 =
  result.`header` = initRos1Std_msgsHeader()
  result.`height` = 0
  result.`width` = 0
  result.`fields` = @[]
  result.`is_bigendian` = false
  result.`point_step` = 0
  result.`row_step` = 0
  result.`data` = @[]
  result.`is_dense` = false
proc writeFields*(value: Ros1Sensor_msgsPointCloud2; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`height`)
  putInteger(w,value.`width`)
  if value.`fields`.len > 8: fail(22)
  putInteger(w,uint32(value.`fields`.len))
  for e in value.`fields`:
    writeFields(e,w)
  putBool(w,value.`is_bigendian`)
  putInteger(w,value.`point_step`)
  putInteger(w,value.`row_step`)
  if value.`data`.len > 4096: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
  putBool(w,value.`is_dense`)
proc readRos1Sensor_msgsPointCloud2*(r: var Reader): Ros1Sensor_msgsPointCloud2 =
  result = initRos1Sensor_msgsPointCloud2()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`height` = getInteger(r,uint32)
  result.`width` = getInteger(r,uint32)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`fields` = newSeq[Ros1Sensor_msgsPointField](count3)
  for i in 0..<count3:
    result.`fields`[i] = readRos1Sensor_msgsPointField(r)
  result.`is_bigendian` = getBool(r)
  result.`point_step` = getInteger(r,uint32)
  result.`row_step` = getInteger(r,uint32)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 4096: fail(22)
  let count7 = int(rawcount7)
  result.`data` = newSeq[uint8](count7)
  for i in 0..<count7:
    result.`data`[i] = getInteger(r,uint8)
  result.`is_dense` = getBool(r)
proc encode*(value: Ros1Sensor_msgsPointCloud2): seq[byte] =
  var w = initWriter(6546)
  writeFields(value,w)
  w.bytes
proc decodeRos1Sensor_msgsPointCloud2*(b: seq[byte]): Ros1Sensor_msgsPointCloud2 =
  var r = initReader(b,6546)
  result = readRos1Sensor_msgsPointCloud2(r)
  finish(r)
type Ros1Sensor_msgsImage* = object
  `header`*: Ros1Std_msgsHeader
  `height`*: uint32
  `width`*: uint32
  `encoding`*: string
  `is_bigendian`*: uint8
  `step`*: uint32
  `data`*: seq[uint8]
const Ros1Sensor_msgsImageMaximumWireBytes* = 4645
const Ros1Sensor_msgsImageCodecIdentity* = "UWVMROS1_c6f7399cb45ed39f35d4f215eec6474c64f271dafc71d537c7a7e7a7ff27cb89"
const Ros1Sensor_msgsImageNativeType* = "sensor_msgs/Image"
const Ros1Sensor_msgsImageNativeIdentity* = ""
proc initRos1Sensor_msgsImage*(): Ros1Sensor_msgsImage =
  result.`header` = initRos1Std_msgsHeader()
  result.`height` = 0
  result.`width` = 0
  result.`encoding` = ""
  result.`is_bigendian` = 0
  result.`step` = 0
  result.`data` = @[]
proc writeFields*(value: Ros1Sensor_msgsImage; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`height`)
  putInteger(w,value.`width`)
  putString(w,value.`encoding`,256)
  putInteger(w,value.`is_bigendian`)
  putInteger(w,value.`step`)
  if value.`data`.len > 4096: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
proc readRos1Sensor_msgsImage*(r: var Reader): Ros1Sensor_msgsImage =
  result = initRos1Sensor_msgsImage()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`height` = getInteger(r,uint32)
  result.`width` = getInteger(r,uint32)
  result.`encoding` = getString(r,256)
  result.`is_bigendian` = getInteger(r,uint8)
  result.`step` = getInteger(r,uint32)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 4096: fail(22)
  let count6 = int(rawcount6)
  result.`data` = newSeq[uint8](count6)
  for i in 0..<count6:
    result.`data`[i] = getInteger(r,uint8)
proc encode*(value: Ros1Sensor_msgsImage): seq[byte] =
  var w = initWriter(4645)
  writeFields(value,w)
  w.bytes
proc decodeRos1Sensor_msgsImage*(b: seq[byte]): Ros1Sensor_msgsImage =
  var r = initReader(b,4645)
  result = readRos1Sensor_msgsImage(r)
  finish(r)
type Ros1Robot_calibration_msgsObservation* = object
  `sensor_name`*: string
  `features`*: seq[Ros1Geometry_msgsPointStamped]
  `ext_camera_info`*: Ros1Robot_calibration_msgsExtendedCameraInfo
  `cloud`*: Ros1Sensor_msgsPointCloud2
  `image`*: Ros1Sensor_msgsImage
const Ros1Robot_calibration_msgsObservationMaximumWireBytes* = 16908
const Ros1Robot_calibration_msgsObservationCodecIdentity* = "UWVMROS1_63a95c8451f7d9e4c7611256fdcbc476552d5ee8d12372a934e4b9d06ecc7998"
const Ros1Robot_calibration_msgsObservationNativeType* = "robot_calibration_msgs/Observation"
const Ros1Robot_calibration_msgsObservationNativeIdentity* = ""
proc initRos1Robot_calibration_msgsObservation*(): Ros1Robot_calibration_msgsObservation =
  result.`sensor_name` = ""
  result.`features` = @[]
  result.`ext_camera_info` = initRos1Robot_calibration_msgsExtendedCameraInfo()
  result.`cloud` = initRos1Sensor_msgsPointCloud2()
  result.`image` = initRos1Sensor_msgsImage()
proc writeFields*(value: Ros1Robot_calibration_msgsObservation; w: var Writer) =
  putString(w,value.`sensor_name`,256)
  if value.`features`.len > 8: fail(22)
  putInteger(w,uint32(value.`features`.len))
  for e in value.`features`:
    writeFields(e,w)
  writeFields(value.`ext_camera_info`,w)
  writeFields(value.`cloud`,w)
  writeFields(value.`image`,w)
proc readRos1Robot_calibration_msgsObservation*(r: var Reader): Ros1Robot_calibration_msgsObservation =
  result = initRos1Robot_calibration_msgsObservation()
  result.`sensor_name` = getString(r,256)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`features` = newSeq[Ros1Geometry_msgsPointStamped](count1)
  for i in 0..<count1:
    result.`features`[i] = readRos1Geometry_msgsPointStamped(r)
  result.`ext_camera_info` = readRos1Robot_calibration_msgsExtendedCameraInfo(r)
  result.`cloud` = readRos1Sensor_msgsPointCloud2(r)
  result.`image` = readRos1Sensor_msgsImage(r)
proc encode*(value: Ros1Robot_calibration_msgsObservation): seq[byte] =
  var w = initWriter(16908)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsObservation*(b: seq[byte]): Ros1Robot_calibration_msgsObservation =
  var r = initReader(b,16908)
  result = readRos1Robot_calibration_msgsObservation(r)
  finish(r)
type Ros1Robot_calibration_msgsCalibrationData* = object
  `joint_states`*: Ros1Sensor_msgsJointState
  `observations`*: seq[Ros1Robot_calibration_msgsObservation]
const Ros1Robot_calibration_msgsCalibrationDataMaximumWireBytes* = 28976
const Ros1Robot_calibration_msgsCalibrationDataCodecIdentity* = "UWVMROS1_24f8eaa5c74a339a011bed56dbb43877cbcea02b7d6fe70242649743b831c41d"
const Ros1Robot_calibration_msgsCalibrationDataNativeType* = "robot_calibration_msgs/CalibrationData"
const Ros1Robot_calibration_msgsCalibrationDataNativeIdentity* = ""
proc initRos1Robot_calibration_msgsCalibrationData*(): Ros1Robot_calibration_msgsCalibrationData =
  result.`joint_states` = initRos1Sensor_msgsJointState()
  result.`observations` = @[]
proc writeFields*(value: Ros1Robot_calibration_msgsCalibrationData; w: var Writer) =
  writeFields(value.`joint_states`,w)
  if value.`observations`.len > 1: fail(22)
  putInteger(w,uint32(value.`observations`.len))
  for e in value.`observations`:
    writeFields(e,w)
proc readRos1Robot_calibration_msgsCalibrationData*(r: var Reader): Ros1Robot_calibration_msgsCalibrationData =
  result = initRos1Robot_calibration_msgsCalibrationData()
  result.`joint_states` = readRos1Sensor_msgsJointState(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 1: fail(22)
  let count1 = int(rawcount1)
  result.`observations` = newSeq[Ros1Robot_calibration_msgsObservation](count1)
  for i in 0..<count1:
    result.`observations`[i] = readRos1Robot_calibration_msgsObservation(r)
proc encode*(value: Ros1Robot_calibration_msgsCalibrationData): seq[byte] =
  var w = initWriter(28976)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsCalibrationData*(b: seq[byte]): Ros1Robot_calibration_msgsCalibrationData =
  var r = initReader(b,28976)
  result = readRos1Robot_calibration_msgsCalibrationData(r)
  finish(r)
type Ros1Robot_calibration_msgsCaptureConfig* = object
  `joint_states`*: Ros1Sensor_msgsJointState
  `features`*: seq[string]
const Ros1Robot_calibration_msgsCaptureConfigMaximumWireBytes* = 16228
const Ros1Robot_calibration_msgsCaptureConfigCodecIdentity* = "UWVMROS1_eee3518da52625ab26a357e64248cda854e13b36dfc0c1dd22008c9b0778ac61"
const Ros1Robot_calibration_msgsCaptureConfigNativeType* = "robot_calibration_msgs/CaptureConfig"
const Ros1Robot_calibration_msgsCaptureConfigNativeIdentity* = ""
proc initRos1Robot_calibration_msgsCaptureConfig*(): Ros1Robot_calibration_msgsCaptureConfig =
  result.`joint_states` = initRos1Sensor_msgsJointState()
  result.`features` = @[]
proc writeFields*(value: Ros1Robot_calibration_msgsCaptureConfig; w: var Writer) =
  writeFields(value.`joint_states`,w)
  if value.`features`.len > 16: fail(22)
  putInteger(w,uint32(value.`features`.len))
  for e in value.`features`:
    putString(w,e,256)
proc readRos1Robot_calibration_msgsCaptureConfig*(r: var Reader): Ros1Robot_calibration_msgsCaptureConfig =
  result = initRos1Robot_calibration_msgsCaptureConfig()
  result.`joint_states` = readRos1Sensor_msgsJointState(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`features` = newSeq[string](count1)
  for i in 0..<count1:
    result.`features`[i] = getString(r,256)
proc encode*(value: Ros1Robot_calibration_msgsCaptureConfig): seq[byte] =
  var w = initWriter(16228)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsCaptureConfig*(b: seq[byte]): Ros1Robot_calibration_msgsCaptureConfig =
  var r = initReader(b,16228)
  result = readRos1Robot_calibration_msgsCaptureConfig(r)
  finish(r)
type Ros1Robot_calibration_msgsGripperLedCommandGoal* = object
  `led_code`*: uint8
const Ros1Robot_calibration_msgsGripperLedCommandGoalMaximumWireBytes* = 1
const Ros1Robot_calibration_msgsGripperLedCommandGoalCodecIdentity* = "UWVMROS1_371f563493ad71e6a15256142dca36976d9660f050d045f5ea85238c1142cf3e"
const Ros1Robot_calibration_msgsGripperLedCommandGoalNativeType* = "robot_calibration_msgs/GripperLedCommandGoal"
const Ros1Robot_calibration_msgsGripperLedCommandGoalNativeIdentity* = ""
proc initRos1Robot_calibration_msgsGripperLedCommandGoal*(): Ros1Robot_calibration_msgsGripperLedCommandGoal =
  result.`led_code` = 0
proc writeFields*(value: Ros1Robot_calibration_msgsGripperLedCommandGoal; w: var Writer) =
  putInteger(w,value.`led_code`)
proc readRos1Robot_calibration_msgsGripperLedCommandGoal*(r: var Reader): Ros1Robot_calibration_msgsGripperLedCommandGoal =
  result = initRos1Robot_calibration_msgsGripperLedCommandGoal()
  result.`led_code` = getInteger(r,uint8)
proc encode*(value: Ros1Robot_calibration_msgsGripperLedCommandGoal): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsGripperLedCommandGoal*(b: seq[byte]): Ros1Robot_calibration_msgsGripperLedCommandGoal =
  var r = initReader(b,1)
  result = readRos1Robot_calibration_msgsGripperLedCommandGoal(r)
  finish(r)
type Ros1Robot_calibration_msgsGripperLedCommandResult* = object
const Ros1Robot_calibration_msgsGripperLedCommandResultMaximumWireBytes* = 0
const Ros1Robot_calibration_msgsGripperLedCommandResultCodecIdentity* = "UWVMROS1_479da8e82a937fe61ca0c9ac8fba50033364085add1047e90748ec000b0dc42a"
const Ros1Robot_calibration_msgsGripperLedCommandResultNativeType* = "robot_calibration_msgs/GripperLedCommandResult"
const Ros1Robot_calibration_msgsGripperLedCommandResultNativeIdentity* = ""
proc initRos1Robot_calibration_msgsGripperLedCommandResult*(): Ros1Robot_calibration_msgsGripperLedCommandResult =
  discard
proc writeFields*(value: Ros1Robot_calibration_msgsGripperLedCommandResult; w: var Writer) =
  discard
proc readRos1Robot_calibration_msgsGripperLedCommandResult*(r: var Reader): Ros1Robot_calibration_msgsGripperLedCommandResult =
  result = initRos1Robot_calibration_msgsGripperLedCommandResult()
proc encode*(value: Ros1Robot_calibration_msgsGripperLedCommandResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsGripperLedCommandResult*(b: seq[byte]): Ros1Robot_calibration_msgsGripperLedCommandResult =
  var r = initReader(b,0)
  result = readRos1Robot_calibration_msgsGripperLedCommandResult(r)
  finish(r)
type Ros1Robot_calibration_msgsGripperLedCommandFeedback* = object
const Ros1Robot_calibration_msgsGripperLedCommandFeedbackMaximumWireBytes* = 0
const Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodecIdentity* = "UWVMROS1_eb8f29dde9d3f6b050623a4181a187942d4b0cbc136a53a39958bb697a7ba7eb"
const Ros1Robot_calibration_msgsGripperLedCommandFeedbackNativeType* = "robot_calibration_msgs/GripperLedCommandFeedback"
const Ros1Robot_calibration_msgsGripperLedCommandFeedbackNativeIdentity* = ""
proc initRos1Robot_calibration_msgsGripperLedCommandFeedback*(): Ros1Robot_calibration_msgsGripperLedCommandFeedback =
  discard
proc writeFields*(value: Ros1Robot_calibration_msgsGripperLedCommandFeedback; w: var Writer) =
  discard
proc readRos1Robot_calibration_msgsGripperLedCommandFeedback*(r: var Reader): Ros1Robot_calibration_msgsGripperLedCommandFeedback =
  result = initRos1Robot_calibration_msgsGripperLedCommandFeedback()
proc encode*(value: Ros1Robot_calibration_msgsGripperLedCommandFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_calibration_msgsGripperLedCommandFeedback*(b: seq[byte]): Ros1Robot_calibration_msgsGripperLedCommandFeedback =
  var r = initReader(b,0)
  result = readRos1Robot_calibration_msgsGripperLedCommandFeedback(r)
  finish(r)
type Ros1Robot_localizationFromLLRequest* = object
  `ll_point`*: Ros1Geographic_msgsGeoPoint
const Ros1Robot_localizationFromLLRequestMaximumWireBytes* = 24
const Ros1Robot_localizationFromLLRequestCodecIdentity* = "UWVMROS1_9e77b9f029ba663823d30c8a6afafb4d68ed4909f755f3271c53be87b242c454"
const Ros1Robot_localizationFromLLRequestNativeType* = "robot_localization/FromLLRequest"
const Ros1Robot_localizationFromLLRequestNativeIdentity* = ""
proc initRos1Robot_localizationFromLLRequest*(): Ros1Robot_localizationFromLLRequest =
  result.`ll_point` = initRos1Geographic_msgsGeoPoint()
proc writeFields*(value: Ros1Robot_localizationFromLLRequest; w: var Writer) =
  writeFields(value.`ll_point`,w)
proc readRos1Robot_localizationFromLLRequest*(r: var Reader): Ros1Robot_localizationFromLLRequest =
  result = initRos1Robot_localizationFromLLRequest()
  result.`ll_point` = readRos1Geographic_msgsGeoPoint(r)
proc encode*(value: Ros1Robot_localizationFromLLRequest): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationFromLLRequest*(b: seq[byte]): Ros1Robot_localizationFromLLRequest =
  var r = initReader(b,24)
  result = readRos1Robot_localizationFromLLRequest(r)
  finish(r)
type Ros1Robot_localizationFromLLResponse* = object
  `map_point`*: Ros1Geometry_msgsPoint
const Ros1Robot_localizationFromLLResponseMaximumWireBytes* = 24
const Ros1Robot_localizationFromLLResponseCodecIdentity* = "UWVMROS1_c4f794ec772b6d500ac2bcb9f12e884715269c1f8f49417cd32eab5463a62f3e"
const Ros1Robot_localizationFromLLResponseNativeType* = "robot_localization/FromLLResponse"
const Ros1Robot_localizationFromLLResponseNativeIdentity* = ""
proc initRos1Robot_localizationFromLLResponse*(): Ros1Robot_localizationFromLLResponse =
  result.`map_point` = initRos1Geometry_msgsPoint()
proc writeFields*(value: Ros1Robot_localizationFromLLResponse; w: var Writer) =
  writeFields(value.`map_point`,w)
proc readRos1Robot_localizationFromLLResponse*(r: var Reader): Ros1Robot_localizationFromLLResponse =
  result = initRos1Robot_localizationFromLLResponse()
  result.`map_point` = readRos1Geometry_msgsPoint(r)
proc encode*(value: Ros1Robot_localizationFromLLResponse): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationFromLLResponse*(b: seq[byte]): Ros1Robot_localizationFromLLResponse =
  var r = initReader(b,24)
  result = readRos1Robot_localizationFromLLResponse(r)
  finish(r)
type Ros1Robot_localizationGetStateRequest* = object
  `time_stamp`*: Ros1Time
  `frame_id`*: string
const Ros1Robot_localizationGetStateRequestMaximumWireBytes* = 268
const Ros1Robot_localizationGetStateRequestCodecIdentity* = "UWVMROS1_06d35fc2336498f13973744c5160a79d26689f2a02ab0c8136087fbb12461c5a"
const Ros1Robot_localizationGetStateRequestNativeType* = "robot_localization/GetStateRequest"
const Ros1Robot_localizationGetStateRequestNativeIdentity* = ""
proc initRos1Robot_localizationGetStateRequest*(): Ros1Robot_localizationGetStateRequest =
  result.`time_stamp` = initRos1Time()
  result.`frame_id` = ""
proc writeFields*(value: Ros1Robot_localizationGetStateRequest; w: var Writer) =
  writeFields(value.`time_stamp`,w)
  putString(w,value.`frame_id`,256)
proc readRos1Robot_localizationGetStateRequest*(r: var Reader): Ros1Robot_localizationGetStateRequest =
  result = initRos1Robot_localizationGetStateRequest()
  result.`time_stamp` = readRos1Time(r)
  result.`frame_id` = getString(r,256)
proc encode*(value: Ros1Robot_localizationGetStateRequest): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationGetStateRequest*(b: seq[byte]): Ros1Robot_localizationGetStateRequest =
  var r = initReader(b,268)
  result = readRos1Robot_localizationGetStateRequest(r)
  finish(r)
type Ros1Robot_localizationGetStateResponse* = object
  `state`*: array[15,float64]
  `covariance`*: array[225,float64]
const Ros1Robot_localizationGetStateResponseMaximumWireBytes* = 1920
const Ros1Robot_localizationGetStateResponseCodecIdentity* = "UWVMROS1_e85760e64e045ea9a1bb904391deb0f87c3fb89527e57ed1f7c7e91554eab6ec"
const Ros1Robot_localizationGetStateResponseNativeType* = "robot_localization/GetStateResponse"
const Ros1Robot_localizationGetStateResponseNativeIdentity* = ""
proc initRos1Robot_localizationGetStateResponse*(): Ros1Robot_localizationGetStateResponse =
  result.`state` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`covariance` = [
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0
  ]
proc writeFields*(value: Ros1Robot_localizationGetStateResponse; w: var Writer) =
  for e in value.`state`:
    putFloat64(w,e)
  for e in value.`covariance`:
    putFloat64(w,e)
proc readRos1Robot_localizationGetStateResponse*(r: var Reader): Ros1Robot_localizationGetStateResponse =
  result = initRos1Robot_localizationGetStateResponse()
  let count0 = 15
  for i in 0..<count0:
    result.`state`[i] = getFloat64(r)
  let count1 = 225
  for i in 0..<count1:
    result.`covariance`[i] = getFloat64(r)
proc encode*(value: Ros1Robot_localizationGetStateResponse): seq[byte] =
  var w = initWriter(1920)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationGetStateResponse*(b: seq[byte]): Ros1Robot_localizationGetStateResponse =
  var r = initReader(b,1920)
  result = readRos1Robot_localizationGetStateResponse(r)
  finish(r)
type Ros1Robot_localizationSetDatumRequest* = object
  `geo_pose`*: Ros1Geographic_msgsGeoPose
const Ros1Robot_localizationSetDatumRequestMaximumWireBytes* = 56
const Ros1Robot_localizationSetDatumRequestCodecIdentity* = "UWVMROS1_13b1cdaaac621681ce3ec1d1b7c85c89acd1f63285309d1ff47573c9f74be6e4"
const Ros1Robot_localizationSetDatumRequestNativeType* = "robot_localization/SetDatumRequest"
const Ros1Robot_localizationSetDatumRequestNativeIdentity* = ""
proc initRos1Robot_localizationSetDatumRequest*(): Ros1Robot_localizationSetDatumRequest =
  result.`geo_pose` = initRos1Geographic_msgsGeoPose()
proc writeFields*(value: Ros1Robot_localizationSetDatumRequest; w: var Writer) =
  writeFields(value.`geo_pose`,w)
proc readRos1Robot_localizationSetDatumRequest*(r: var Reader): Ros1Robot_localizationSetDatumRequest =
  result = initRos1Robot_localizationSetDatumRequest()
  result.`geo_pose` = readRos1Geographic_msgsGeoPose(r)
proc encode*(value: Ros1Robot_localizationSetDatumRequest): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationSetDatumRequest*(b: seq[byte]): Ros1Robot_localizationSetDatumRequest =
  var r = initReader(b,56)
  result = readRos1Robot_localizationSetDatumRequest(r)
  finish(r)
type Ros1Robot_localizationSetDatumResponse* = object
const Ros1Robot_localizationSetDatumResponseMaximumWireBytes* = 0
const Ros1Robot_localizationSetDatumResponseCodecIdentity* = "UWVMROS1_932d56dd53078582e985c2ac36c8df78fc0e83393d5d5bbe3c34b8e7b73fa252"
const Ros1Robot_localizationSetDatumResponseNativeType* = "robot_localization/SetDatumResponse"
const Ros1Robot_localizationSetDatumResponseNativeIdentity* = ""
proc initRos1Robot_localizationSetDatumResponse*(): Ros1Robot_localizationSetDatumResponse =
  discard
proc writeFields*(value: Ros1Robot_localizationSetDatumResponse; w: var Writer) =
  discard
proc readRos1Robot_localizationSetDatumResponse*(r: var Reader): Ros1Robot_localizationSetDatumResponse =
  result = initRos1Robot_localizationSetDatumResponse()
proc encode*(value: Ros1Robot_localizationSetDatumResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationSetDatumResponse*(b: seq[byte]): Ros1Robot_localizationSetDatumResponse =
  var r = initReader(b,0)
  result = readRos1Robot_localizationSetDatumResponse(r)
  finish(r)
type Ros1Robot_localizationSetPoseRequest* = object
  `pose`*: Ros1Geometry_msgsPoseWithCovarianceStamped
const Ros1Robot_localizationSetPoseRequestMaximumWireBytes* = 616
const Ros1Robot_localizationSetPoseRequestCodecIdentity* = "UWVMROS1_90e5a19a72177dd0be0782616c680df214823da6a7127457b3378d2fbf6523c3"
const Ros1Robot_localizationSetPoseRequestNativeType* = "robot_localization/SetPoseRequest"
const Ros1Robot_localizationSetPoseRequestNativeIdentity* = ""
proc initRos1Robot_localizationSetPoseRequest*(): Ros1Robot_localizationSetPoseRequest =
  result.`pose` = initRos1Geometry_msgsPoseWithCovarianceStamped()
proc writeFields*(value: Ros1Robot_localizationSetPoseRequest; w: var Writer) =
  writeFields(value.`pose`,w)
proc readRos1Robot_localizationSetPoseRequest*(r: var Reader): Ros1Robot_localizationSetPoseRequest =
  result = initRos1Robot_localizationSetPoseRequest()
  result.`pose` = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
proc encode*(value: Ros1Robot_localizationSetPoseRequest): seq[byte] =
  var w = initWriter(616)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationSetPoseRequest*(b: seq[byte]): Ros1Robot_localizationSetPoseRequest =
  var r = initReader(b,616)
  result = readRos1Robot_localizationSetPoseRequest(r)
  finish(r)
type Ros1Robot_localizationSetPoseResponse* = object
const Ros1Robot_localizationSetPoseResponseMaximumWireBytes* = 0
const Ros1Robot_localizationSetPoseResponseCodecIdentity* = "UWVMROS1_d231093ba84e32fbfc93423f45486709e53155778a342b634b170cf17af7b84e"
const Ros1Robot_localizationSetPoseResponseNativeType* = "robot_localization/SetPoseResponse"
const Ros1Robot_localizationSetPoseResponseNativeIdentity* = ""
proc initRos1Robot_localizationSetPoseResponse*(): Ros1Robot_localizationSetPoseResponse =
  discard
proc writeFields*(value: Ros1Robot_localizationSetPoseResponse; w: var Writer) =
  discard
proc readRos1Robot_localizationSetPoseResponse*(r: var Reader): Ros1Robot_localizationSetPoseResponse =
  result = initRos1Robot_localizationSetPoseResponse()
proc encode*(value: Ros1Robot_localizationSetPoseResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationSetPoseResponse*(b: seq[byte]): Ros1Robot_localizationSetPoseResponse =
  var r = initReader(b,0)
  result = readRos1Robot_localizationSetPoseResponse(r)
  finish(r)
type Ros1Robot_localizationSetUTMZoneRequest* = object
  `utm_zone`*: string
const Ros1Robot_localizationSetUTMZoneRequestMaximumWireBytes* = 260
const Ros1Robot_localizationSetUTMZoneRequestCodecIdentity* = "UWVMROS1_73c094a5ac20c246961784301494e71d83b0f66b91e077b1ec617b2d4c2357f8"
const Ros1Robot_localizationSetUTMZoneRequestNativeType* = "robot_localization/SetUTMZoneRequest"
const Ros1Robot_localizationSetUTMZoneRequestNativeIdentity* = ""
proc initRos1Robot_localizationSetUTMZoneRequest*(): Ros1Robot_localizationSetUTMZoneRequest =
  result.`utm_zone` = ""
proc writeFields*(value: Ros1Robot_localizationSetUTMZoneRequest; w: var Writer) =
  putString(w,value.`utm_zone`,256)
proc readRos1Robot_localizationSetUTMZoneRequest*(r: var Reader): Ros1Robot_localizationSetUTMZoneRequest =
  result = initRos1Robot_localizationSetUTMZoneRequest()
  result.`utm_zone` = getString(r,256)
proc encode*(value: Ros1Robot_localizationSetUTMZoneRequest): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationSetUTMZoneRequest*(b: seq[byte]): Ros1Robot_localizationSetUTMZoneRequest =
  var r = initReader(b,260)
  result = readRos1Robot_localizationSetUTMZoneRequest(r)
  finish(r)
type Ros1Robot_localizationSetUTMZoneResponse* = object
const Ros1Robot_localizationSetUTMZoneResponseMaximumWireBytes* = 0
const Ros1Robot_localizationSetUTMZoneResponseCodecIdentity* = "UWVMROS1_39ce31583dcf9c587ba9bf6970759ba7419107e64c5def0937801514d70e912c"
const Ros1Robot_localizationSetUTMZoneResponseNativeType* = "robot_localization/SetUTMZoneResponse"
const Ros1Robot_localizationSetUTMZoneResponseNativeIdentity* = ""
proc initRos1Robot_localizationSetUTMZoneResponse*(): Ros1Robot_localizationSetUTMZoneResponse =
  discard
proc writeFields*(value: Ros1Robot_localizationSetUTMZoneResponse; w: var Writer) =
  discard
proc readRos1Robot_localizationSetUTMZoneResponse*(r: var Reader): Ros1Robot_localizationSetUTMZoneResponse =
  result = initRos1Robot_localizationSetUTMZoneResponse()
proc encode*(value: Ros1Robot_localizationSetUTMZoneResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationSetUTMZoneResponse*(b: seq[byte]): Ros1Robot_localizationSetUTMZoneResponse =
  var r = initReader(b,0)
  result = readRos1Robot_localizationSetUTMZoneResponse(r)
  finish(r)
type Ros1Robot_localizationToLLRequest* = object
  `map_point`*: Ros1Geometry_msgsPoint
const Ros1Robot_localizationToLLRequestMaximumWireBytes* = 24
const Ros1Robot_localizationToLLRequestCodecIdentity* = "UWVMROS1_d11c2506ec2d6fdbe8ce9031be5fc6833df60ebcae576e576afa1c797c15d30b"
const Ros1Robot_localizationToLLRequestNativeType* = "robot_localization/ToLLRequest"
const Ros1Robot_localizationToLLRequestNativeIdentity* = ""
proc initRos1Robot_localizationToLLRequest*(): Ros1Robot_localizationToLLRequest =
  result.`map_point` = initRos1Geometry_msgsPoint()
proc writeFields*(value: Ros1Robot_localizationToLLRequest; w: var Writer) =
  writeFields(value.`map_point`,w)
proc readRos1Robot_localizationToLLRequest*(r: var Reader): Ros1Robot_localizationToLLRequest =
  result = initRos1Robot_localizationToLLRequest()
  result.`map_point` = readRos1Geometry_msgsPoint(r)
proc encode*(value: Ros1Robot_localizationToLLRequest): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationToLLRequest*(b: seq[byte]): Ros1Robot_localizationToLLRequest =
  var r = initReader(b,24)
  result = readRos1Robot_localizationToLLRequest(r)
  finish(r)
type Ros1Robot_localizationToLLResponse* = object
  `ll_point`*: Ros1Geographic_msgsGeoPoint
const Ros1Robot_localizationToLLResponseMaximumWireBytes* = 24
const Ros1Robot_localizationToLLResponseCodecIdentity* = "UWVMROS1_1a04fb295d071bf442b3d9d44c22862436aa35f04176385616e1547e0cb9857e"
const Ros1Robot_localizationToLLResponseNativeType* = "robot_localization/ToLLResponse"
const Ros1Robot_localizationToLLResponseNativeIdentity* = ""
proc initRos1Robot_localizationToLLResponse*(): Ros1Robot_localizationToLLResponse =
  result.`ll_point` = initRos1Geographic_msgsGeoPoint()
proc writeFields*(value: Ros1Robot_localizationToLLResponse; w: var Writer) =
  writeFields(value.`ll_point`,w)
proc readRos1Robot_localizationToLLResponse*(r: var Reader): Ros1Robot_localizationToLLResponse =
  result = initRos1Robot_localizationToLLResponse()
  result.`ll_point` = readRos1Geographic_msgsGeoPoint(r)
proc encode*(value: Ros1Robot_localizationToLLResponse): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationToLLResponse*(b: seq[byte]): Ros1Robot_localizationToLLResponse =
  var r = initReader(b,24)
  result = readRos1Robot_localizationToLLResponse(r)
  finish(r)
type Ros1Robot_localizationToggleFilterProcessingRequest* = object
  `on`*: bool
const Ros1Robot_localizationToggleFilterProcessingRequestMaximumWireBytes* = 1
const Ros1Robot_localizationToggleFilterProcessingRequestCodecIdentity* = "UWVMROS1_22c0c52cdfde8a85e9aed492d0e5d33f3d76c80b8a4be92953effe28396fff64"
const Ros1Robot_localizationToggleFilterProcessingRequestNativeType* = "robot_localization/ToggleFilterProcessingRequest"
const Ros1Robot_localizationToggleFilterProcessingRequestNativeIdentity* = ""
proc initRos1Robot_localizationToggleFilterProcessingRequest*(): Ros1Robot_localizationToggleFilterProcessingRequest =
  result.`on` = false
proc writeFields*(value: Ros1Robot_localizationToggleFilterProcessingRequest; w: var Writer) =
  putBool(w,value.`on`)
proc readRos1Robot_localizationToggleFilterProcessingRequest*(r: var Reader): Ros1Robot_localizationToggleFilterProcessingRequest =
  result = initRos1Robot_localizationToggleFilterProcessingRequest()
  result.`on` = getBool(r)
proc encode*(value: Ros1Robot_localizationToggleFilterProcessingRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationToggleFilterProcessingRequest*(b: seq[byte]): Ros1Robot_localizationToggleFilterProcessingRequest =
  var r = initReader(b,1)
  result = readRos1Robot_localizationToggleFilterProcessingRequest(r)
  finish(r)
type Ros1Robot_localizationToggleFilterProcessingResponse* = object
  `status`*: bool
const Ros1Robot_localizationToggleFilterProcessingResponseMaximumWireBytes* = 1
const Ros1Robot_localizationToggleFilterProcessingResponseCodecIdentity* = "UWVMROS1_3edee8aff6b86026545e9559c98a33a4165ac90f7fe1ba86430c6396041d5176"
const Ros1Robot_localizationToggleFilterProcessingResponseNativeType* = "robot_localization/ToggleFilterProcessingResponse"
const Ros1Robot_localizationToggleFilterProcessingResponseNativeIdentity* = ""
proc initRos1Robot_localizationToggleFilterProcessingResponse*(): Ros1Robot_localizationToggleFilterProcessingResponse =
  result.`status` = false
proc writeFields*(value: Ros1Robot_localizationToggleFilterProcessingResponse; w: var Writer) =
  putBool(w,value.`status`)
proc readRos1Robot_localizationToggleFilterProcessingResponse*(r: var Reader): Ros1Robot_localizationToggleFilterProcessingResponse =
  result = initRos1Robot_localizationToggleFilterProcessingResponse()
  result.`status` = getBool(r)
proc encode*(value: Ros1Robot_localizationToggleFilterProcessingResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Robot_localizationToggleFilterProcessingResponse*(b: seq[byte]): Ros1Robot_localizationToggleFilterProcessingResponse =
  var r = initReader(b,1)
  result = readRos1Robot_localizationToggleFilterProcessingResponse(r)
  finish(r)
type Ros1Taiji_trigger_nodePerformTaijiRequest* = object
const Ros1Taiji_trigger_nodePerformTaijiRequestMaximumWireBytes* = 0
const Ros1Taiji_trigger_nodePerformTaijiRequestCodecIdentity* = "UWVMROS1_e0ae7222bc4566adbed2186f8783152734739dd0a8d2b066eee2812f143337bc"
const Ros1Taiji_trigger_nodePerformTaijiRequestNativeType* = "taiji_trigger_node/PerformTaijiRequest"
const Ros1Taiji_trigger_nodePerformTaijiRequestNativeIdentity* = ""
proc initRos1Taiji_trigger_nodePerformTaijiRequest*(): Ros1Taiji_trigger_nodePerformTaijiRequest =
  discard
proc writeFields*(value: Ros1Taiji_trigger_nodePerformTaijiRequest; w: var Writer) =
  discard
proc readRos1Taiji_trigger_nodePerformTaijiRequest*(r: var Reader): Ros1Taiji_trigger_nodePerformTaijiRequest =
  result = initRos1Taiji_trigger_nodePerformTaijiRequest()
proc encode*(value: Ros1Taiji_trigger_nodePerformTaijiRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos1Taiji_trigger_nodePerformTaijiRequest*(b: seq[byte]): Ros1Taiji_trigger_nodePerformTaijiRequest =
  var r = initReader(b,0)
  result = readRos1Taiji_trigger_nodePerformTaijiRequest(r)
  finish(r)
type Ros1Taiji_trigger_nodePerformTaijiResponse* = object
  `success`*: bool
  `message`*: string
const Ros1Taiji_trigger_nodePerformTaijiResponseMaximumWireBytes* = 261
const Ros1Taiji_trigger_nodePerformTaijiResponseCodecIdentity* = "UWVMROS1_eb2adcb68164ed8ff3b34c6ab4678631cb551f27040ae11e5b4d0d0ccde4b4af"
const Ros1Taiji_trigger_nodePerformTaijiResponseNativeType* = "taiji_trigger_node/PerformTaijiResponse"
const Ros1Taiji_trigger_nodePerformTaijiResponseNativeIdentity* = ""
proc initRos1Taiji_trigger_nodePerformTaijiResponse*(): Ros1Taiji_trigger_nodePerformTaijiResponse =
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros1Taiji_trigger_nodePerformTaijiResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos1Taiji_trigger_nodePerformTaijiResponse*(r: var Reader): Ros1Taiji_trigger_nodePerformTaijiResponse =
  result = initRos1Taiji_trigger_nodePerformTaijiResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros1Taiji_trigger_nodePerformTaijiResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos1Taiji_trigger_nodePerformTaijiResponse*(b: seq[byte]): Ros1Taiji_trigger_nodePerformTaijiResponse =
  var r = initReader(b,261)
  result = readRos1Taiji_trigger_nodePerformTaijiResponse(r)
  finish(r)
type Ros1User_pkgPiddebug* = object
  `objectname`*: string
  `target`*: float32
  `rev`*: float32
  `kp`*: float32
  `ki`*: float32
  `kd`*: float32
  `p_out`*: float32
  `i_out`*: float32
  `d_out`*: float32
  `pid_out`*: float32
const Ros1User_pkgPiddebugMaximumWireBytes* = 296
const Ros1User_pkgPiddebugCodecIdentity* = "UWVMROS1_d368e7fdd2139f74059ee2231d0b6d51f49521b8eec569e1f96f1d5696028eb2"
const Ros1User_pkgPiddebugNativeType* = "user_pkg/piddebug"
const Ros1User_pkgPiddebugNativeIdentity* = ""
proc initRos1User_pkgPiddebug*(): Ros1User_pkgPiddebug =
  result.`objectname` = ""
  result.`target` = 0
  result.`rev` = 0
  result.`kp` = 0
  result.`ki` = 0
  result.`kd` = 0
  result.`p_out` = 0
  result.`i_out` = 0
  result.`d_out` = 0
  result.`pid_out` = 0
proc writeFields*(value: Ros1User_pkgPiddebug; w: var Writer) =
  putString(w,value.`objectname`,256)
  putFloat32(w,value.`target`)
  putFloat32(w,value.`rev`)
  putFloat32(w,value.`kp`)
  putFloat32(w,value.`ki`)
  putFloat32(w,value.`kd`)
  putFloat32(w,value.`p_out`)
  putFloat32(w,value.`i_out`)
  putFloat32(w,value.`d_out`)
  putFloat32(w,value.`pid_out`)
proc readRos1User_pkgPiddebug*(r: var Reader): Ros1User_pkgPiddebug =
  result = initRos1User_pkgPiddebug()
  result.`objectname` = getString(r,256)
  result.`target` = getFloat32(r)
  result.`rev` = getFloat32(r)
  result.`kp` = getFloat32(r)
  result.`ki` = getFloat32(r)
  result.`kd` = getFloat32(r)
  result.`p_out` = getFloat32(r)
  result.`i_out` = getFloat32(r)
  result.`d_out` = getFloat32(r)
  result.`pid_out` = getFloat32(r)
proc encode*(value: Ros1User_pkgPiddebug): seq[byte] =
  var w = initWriter(296)
  writeFields(value,w)
  w.bytes
proc decodeRos1User_pkgPiddebug*(b: seq[byte]): Ros1User_pkgPiddebug =
  var r = initReader(b,296)
  result = readRos1User_pkgPiddebug(r)
  finish(r)
type Ros1User_pkgUwbdebug* = object
  `car_cur_x`*: float32
  `car_cur_y`*: float32
  `car_cur_z`*: float32
  `car_yaw`*: float32
  `car_pitch`*: float32
  `car_roll`*: float32
  `robot_cur_x`*: float32
  `robot_cur_y`*: float32
  `robot_cur_z`*: float32
  `robot_yaw`*: float32
  `robot_pitch`*: float32
  `robot_roll`*: float32
const Ros1User_pkgUwbdebugMaximumWireBytes* = 48
const Ros1User_pkgUwbdebugCodecIdentity* = "UWVMROS1_eafe60a2ce61f84398ce53d8a19e190c053fe63f8d9ca9818e22f44e69ffc769"
const Ros1User_pkgUwbdebugNativeType* = "user_pkg/uwbdebug"
const Ros1User_pkgUwbdebugNativeIdentity* = ""
proc initRos1User_pkgUwbdebug*(): Ros1User_pkgUwbdebug =
  result.`car_cur_x` = 0
  result.`car_cur_y` = 0
  result.`car_cur_z` = 0
  result.`car_yaw` = 0
  result.`car_pitch` = 0
  result.`car_roll` = 0
  result.`robot_cur_x` = 0
  result.`robot_cur_y` = 0
  result.`robot_cur_z` = 0
  result.`robot_yaw` = 0
  result.`robot_pitch` = 0
  result.`robot_roll` = 0
proc writeFields*(value: Ros1User_pkgUwbdebug; w: var Writer) =
  putFloat32(w,value.`car_cur_x`)
  putFloat32(w,value.`car_cur_y`)
  putFloat32(w,value.`car_cur_z`)
  putFloat32(w,value.`car_yaw`)
  putFloat32(w,value.`car_pitch`)
  putFloat32(w,value.`car_roll`)
  putFloat32(w,value.`robot_cur_x`)
  putFloat32(w,value.`robot_cur_y`)
  putFloat32(w,value.`robot_cur_z`)
  putFloat32(w,value.`robot_yaw`)
  putFloat32(w,value.`robot_pitch`)
  putFloat32(w,value.`robot_roll`)
proc readRos1User_pkgUwbdebug*(r: var Reader): Ros1User_pkgUwbdebug =
  result = initRos1User_pkgUwbdebug()
  result.`car_cur_x` = getFloat32(r)
  result.`car_cur_y` = getFloat32(r)
  result.`car_cur_z` = getFloat32(r)
  result.`car_yaw` = getFloat32(r)
  result.`car_pitch` = getFloat32(r)
  result.`car_roll` = getFloat32(r)
  result.`robot_cur_x` = getFloat32(r)
  result.`robot_cur_y` = getFloat32(r)
  result.`robot_cur_z` = getFloat32(r)
  result.`robot_yaw` = getFloat32(r)
  result.`robot_pitch` = getFloat32(r)
  result.`robot_roll` = getFloat32(r)
proc encode*(value: Ros1User_pkgUwbdebug): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1User_pkgUwbdebug*(b: seq[byte]): Ros1User_pkgUwbdebug =
  var r = initReader(b,48)
  result = readRos1User_pkgUwbdebug(r)
  finish(r)
type Ros1WiimoteIrSourceInfo* = object
  `x`*: float64
  `y`*: float64
  `ir_size`*: int64
const Ros1WiimoteIrSourceInfoMaximumWireBytes* = 24
const Ros1WiimoteIrSourceInfoCodecIdentity* = "UWVMROS1_8e0a43ec17814d2b9d5bffdb629b87dcb244a85364bda3bf8871aeec7e47d2e7"
const Ros1WiimoteIrSourceInfoNativeType* = "wiimote/IrSourceInfo"
const Ros1WiimoteIrSourceInfoNativeIdentity* = ""
proc initRos1WiimoteIrSourceInfo*(): Ros1WiimoteIrSourceInfo =
  result.`x` = 0
  result.`y` = 0
  result.`ir_size` = 0
proc writeFields*(value: Ros1WiimoteIrSourceInfo; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putInteger(w,value.`ir_size`)
proc readRos1WiimoteIrSourceInfo*(r: var Reader): Ros1WiimoteIrSourceInfo =
  result = initRos1WiimoteIrSourceInfo()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`ir_size` = getInteger(r,int64)
proc encode*(value: Ros1WiimoteIrSourceInfo): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos1WiimoteIrSourceInfo*(b: seq[byte]): Ros1WiimoteIrSourceInfo =
  var r = initReader(b,24)
  result = readRos1WiimoteIrSourceInfo(r)
  finish(r)
type Ros1WiimoteState* = object
  `header`*: Ros1Std_msgsHeader
  `angular_velocity_zeroed`*: Ros1Geometry_msgsVector3
  `angular_velocity_raw`*: Ros1Geometry_msgsVector3
  `angular_velocity_covariance`*: array[9,float64]
  `linear_acceleration_zeroed`*: Ros1Geometry_msgsVector3
  `linear_acceleration_raw`*: Ros1Geometry_msgsVector3
  `linear_acceleration_covariance`*: array[9,float64]
  `nunchuk_acceleration_zeroed`*: Ros1Geometry_msgsVector3
  `nunchuk_acceleration_raw`*: Ros1Geometry_msgsVector3
  `nunchuk_joystick_zeroed`*: array[2,float32]
  `nunchuk_joystick_raw`*: array[2,float32]
  `buttons`*: array[11,bool]
  `nunchuk_buttons`*: array[2,bool]
  `LEDs`*: array[4,bool]
  `rumble`*: bool
  `ir_tracking`*: seq[Ros1WiimoteIrSourceInfo]
  `raw_battery`*: float32
  `percent_battery`*: float32
  `zeroing_time`*: Ros1Time
  `errors`*: uint64
const Ros1WiimoteStateMaximumWireBytes* = 814
const Ros1WiimoteStateCodecIdentity* = "UWVMROS1_1e0c93579a6bd2ad94af0fe6baf513582042341980e89527eb79739ec4267b42"
const Ros1WiimoteStateNativeType* = "wiimote/State"
const Ros1WiimoteStateNativeIdentity* = ""
const Ros1WiimoteState_INVALID*: int8 = -1'i8
const Ros1WiimoteState_INVALID_FLOAT*: float32 = cast[float32](0xbf800000'u32)
const Ros1WiimoteState_MSG_BTN_1*: int8 = 0'i8
const Ros1WiimoteState_MSG_BTN_2*: int8 = 1'i8
const Ros1WiimoteState_MSG_BTN_A*: int8 = 2'i8
const Ros1WiimoteState_MSG_BTN_B*: int8 = 3'i8
const Ros1WiimoteState_MSG_BTN_PLUS*: int8 = 4'i8
const Ros1WiimoteState_MSG_BTN_MINUS*: int8 = 5'i8
const Ros1WiimoteState_MSG_BTN_LEFT*: int8 = 6'i8
const Ros1WiimoteState_MSG_BTN_RIGHT*: int8 = 7'i8
const Ros1WiimoteState_MSG_BTN_UP*: int8 = 8'i8
const Ros1WiimoteState_MSG_BTN_DOWN*: int8 = 9'i8
const Ros1WiimoteState_MSG_BTN_HOME*: int8 = 10'i8
const Ros1WiimoteState_MSG_BTN_Z*: int8 = 0'i8
const Ros1WiimoteState_MSG_BTN_C*: int8 = 1'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_X*: int8 = 0'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_Y*: int8 = 1'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_A*: int8 = 2'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_B*: int8 = 3'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_PLUS*: int8 = 4'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_MINUS*: int8 = 5'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_LEFT*: int8 = 6'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_RIGHT*: int8 = 7'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_UP*: int8 = 8'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_DOWN*: int8 = 9'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_HOME*: int8 = 10'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_L*: int8 = 11'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_R*: int8 = 12'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_ZL*: int8 = 13'i8
const Ros1WiimoteState_MSG_CLASSIC_BTN_ZR*: int8 = 14'i8
proc initRos1WiimoteState*(): Ros1WiimoteState =
  result.`header` = initRos1Std_msgsHeader()
  result.`angular_velocity_zeroed` = initRos1Geometry_msgsVector3()
  result.`angular_velocity_raw` = initRos1Geometry_msgsVector3()
  result.`angular_velocity_covariance` = [0,0,0,0,0,0,0,0,0]
  result.`linear_acceleration_zeroed` = initRos1Geometry_msgsVector3()
  result.`linear_acceleration_raw` = initRos1Geometry_msgsVector3()
  result.`linear_acceleration_covariance` = [0,0,0,0,0,0,0,0,0]
  result.`nunchuk_acceleration_zeroed` = initRos1Geometry_msgsVector3()
  result.`nunchuk_acceleration_raw` = initRos1Geometry_msgsVector3()
  result.`nunchuk_joystick_zeroed` = [0,0]
  result.`nunchuk_joystick_raw` = [0,0]
  result.`buttons` = [false,false,false,false,false,false,false,false,false,false,false]
  result.`nunchuk_buttons` = [false,false]
  result.`LEDs` = [false,false,false,false]
  result.`rumble` = false
  result.`ir_tracking` = @[]
  result.`raw_battery` = 0
  result.`percent_battery` = 0
  result.`zeroing_time` = initRos1Time()
  result.`errors` = 0
proc writeFields*(value: Ros1WiimoteState; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`angular_velocity_zeroed`,w)
  writeFields(value.`angular_velocity_raw`,w)
  for e in value.`angular_velocity_covariance`:
    putFloat64(w,e)
  writeFields(value.`linear_acceleration_zeroed`,w)
  writeFields(value.`linear_acceleration_raw`,w)
  for e in value.`linear_acceleration_covariance`:
    putFloat64(w,e)
  writeFields(value.`nunchuk_acceleration_zeroed`,w)
  writeFields(value.`nunchuk_acceleration_raw`,w)
  for e in value.`nunchuk_joystick_zeroed`:
    putFloat32(w,e)
  for e in value.`nunchuk_joystick_raw`:
    putFloat32(w,e)
  for e in value.`buttons`:
    putBool(w,e)
  for e in value.`nunchuk_buttons`:
    putBool(w,e)
  for e in value.`LEDs`:
    putBool(w,e)
  putBool(w,value.`rumble`)
  if value.`ir_tracking`.len > 8: fail(22)
  putInteger(w,uint32(value.`ir_tracking`.len))
  for e in value.`ir_tracking`:
    writeFields(e,w)
  putFloat32(w,value.`raw_battery`)
  putFloat32(w,value.`percent_battery`)
  writeFields(value.`zeroing_time`,w)
  putInteger(w,value.`errors`)
proc readRos1WiimoteState*(r: var Reader): Ros1WiimoteState =
  result = initRos1WiimoteState()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`angular_velocity_zeroed` = readRos1Geometry_msgsVector3(r)
  result.`angular_velocity_raw` = readRos1Geometry_msgsVector3(r)
  let count3 = 9
  for i in 0..<count3:
    result.`angular_velocity_covariance`[i] = getFloat64(r)
  result.`linear_acceleration_zeroed` = readRos1Geometry_msgsVector3(r)
  result.`linear_acceleration_raw` = readRos1Geometry_msgsVector3(r)
  let count6 = 9
  for i in 0..<count6:
    result.`linear_acceleration_covariance`[i] = getFloat64(r)
  result.`nunchuk_acceleration_zeroed` = readRos1Geometry_msgsVector3(r)
  result.`nunchuk_acceleration_raw` = readRos1Geometry_msgsVector3(r)
  let count9 = 2
  for i in 0..<count9:
    result.`nunchuk_joystick_zeroed`[i] = getFloat32(r)
  let count10 = 2
  for i in 0..<count10:
    result.`nunchuk_joystick_raw`[i] = getFloat32(r)
  let count11 = 11
  for i in 0..<count11:
    result.`buttons`[i] = getBool(r)
  let count12 = 2
  for i in 0..<count12:
    result.`nunchuk_buttons`[i] = getBool(r)
  let count13 = 4
  for i in 0..<count13:
    result.`LEDs`[i] = getBool(r)
  result.`rumble` = getBool(r)
  let rawcount15 = getInteger(r,uint32)
  if rawcount15 > 8: fail(22)
  let count15 = int(rawcount15)
  result.`ir_tracking` = newSeq[Ros1WiimoteIrSourceInfo](count15)
  for i in 0..<count15:
    result.`ir_tracking`[i] = readRos1WiimoteIrSourceInfo(r)
  result.`raw_battery` = getFloat32(r)
  result.`percent_battery` = getFloat32(r)
  result.`zeroing_time` = readRos1Time(r)
  result.`errors` = getInteger(r,uint64)
proc encode*(value: Ros1WiimoteState): seq[byte] =
  var w = initWriter(814)
  writeFields(value,w)
  w.bytes
proc decodeRos1WiimoteState*(b: seq[byte]): Ros1WiimoteState =
  var r = initReader(b,814)
  result = readRos1WiimoteState(r)
  finish(r)
type Ros1WiimoteTimedSwitch* = object
  `switch_mode`*: int8
  `num_cycles`*: int32
  `pulse_pattern`*: seq[float32]
const Ros1WiimoteTimedSwitchMaximumWireBytes* = 73
const Ros1WiimoteTimedSwitchCodecIdentity* = "UWVMROS1_5d845b91d364c06eb8f38a03ad0319cfc48a2c49c0b5b7263580b8e5b24ffcb6"
const Ros1WiimoteTimedSwitchNativeType* = "wiimote/TimedSwitch"
const Ros1WiimoteTimedSwitchNativeIdentity* = ""
const Ros1WiimoteTimedSwitch_ON*: int8 = 1'i8
const Ros1WiimoteTimedSwitch_OFF*: int8 = 0'i8
const Ros1WiimoteTimedSwitch_NO_CHANGE*: int8 = -2'i8
const Ros1WiimoteTimedSwitch_REPEAT*: int8 = -1'i8
const Ros1WiimoteTimedSwitch_FOREVER*: int8 = -1'i8
proc initRos1WiimoteTimedSwitch*(): Ros1WiimoteTimedSwitch =
  result.`switch_mode` = 0
  result.`num_cycles` = 0
  result.`pulse_pattern` = @[]
proc writeFields*(value: Ros1WiimoteTimedSwitch; w: var Writer) =
  putInteger(w,value.`switch_mode`)
  putInteger(w,value.`num_cycles`)
  if value.`pulse_pattern`.len > 16: fail(22)
  putInteger(w,uint32(value.`pulse_pattern`.len))
  for e in value.`pulse_pattern`:
    putFloat32(w,e)
proc readRos1WiimoteTimedSwitch*(r: var Reader): Ros1WiimoteTimedSwitch =
  result = initRos1WiimoteTimedSwitch()
  result.`switch_mode` = getInteger(r,int8)
  result.`num_cycles` = getInteger(r,int32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`pulse_pattern` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`pulse_pattern`[i] = getFloat32(r)
proc encode*(value: Ros1WiimoteTimedSwitch): seq[byte] =
  var w = initWriter(73)
  writeFields(value,w)
  w.bytes
proc decodeRos1WiimoteTimedSwitch*(b: seq[byte]): Ros1WiimoteTimedSwitch =
  var r = initReader(b,73)
  result = readRos1WiimoteTimedSwitch(r)
  finish(r)
