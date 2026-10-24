# @file records.nim
# @brief Full leju nim codecs and original record metadata.
# @details Complete leju ros1_master_packaged_ik values in nim. 17 original records retain 55 fields and 15
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/leju/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros1Motion_capture_ikArmHandPose* = object
  `pos_xyz`*: array[3,float64]
  `quat_xyzw`*: array[4,float64]
  `elbow_pos_xyz`*: array[3,float64]
  `joint_angles`*: array[7,float64]
const Ros1Motion_capture_ikArmHandPoseMaximumWireBytes* = 136
const Ros1Motion_capture_ikArmHandPoseCodecIdentity* = "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08"
const Ros1Motion_capture_ikArmHandPoseNativeType* = "motion_capture_ik/armHandPose"
const Ros1Motion_capture_ikArmHandPoseNativeIdentity* = ""
proc initRos1Motion_capture_ikArmHandPose*(): Ros1Motion_capture_ikArmHandPose =
  result.`pos_xyz` = [0,0,0]
  result.`quat_xyzw` = [0,0,0,0]
  result.`elbow_pos_xyz` = [0,0,0]
  result.`joint_angles` = [0,0,0,0,0,0,0]
proc writeFields*(value: Ros1Motion_capture_ikArmHandPose; w: var Writer) =
  for e in value.`pos_xyz`:
    putFloat64(w,e)
  for e in value.`quat_xyzw`:
    putFloat64(w,e)
  for e in value.`elbow_pos_xyz`:
    putFloat64(w,e)
  for e in value.`joint_angles`:
    putFloat64(w,e)
proc readRos1Motion_capture_ikArmHandPose*(r: var Reader): Ros1Motion_capture_ikArmHandPose =
  result = initRos1Motion_capture_ikArmHandPose()
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
proc encode*(value: Ros1Motion_capture_ikArmHandPose): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikArmHandPose*(b: seq[byte]): Ros1Motion_capture_ikArmHandPose =
  var r = initReader(b,136)
  result = readRos1Motion_capture_ikArmHandPose(r)
  finish(r)
type Ros1Motion_capture_ikArmHandPoseFree* = object
  `pos_xyz`*: array[3,float64]
  `quat_xyzw`*: array[4,float64]
  `elbow_pos_xyz`*: array[3,float64]
  `joint_angles`*: seq[float64]
const Ros1Motion_capture_ikArmHandPoseFreeMaximumWireBytes* = 212
const Ros1Motion_capture_ikArmHandPoseFreeCodecIdentity* = "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf"
const Ros1Motion_capture_ikArmHandPoseFreeNativeType* = "motion_capture_ik/armHandPoseFree"
const Ros1Motion_capture_ikArmHandPoseFreeNativeIdentity* = ""
proc initRos1Motion_capture_ikArmHandPoseFree*(): Ros1Motion_capture_ikArmHandPoseFree =
  result.`pos_xyz` = [0,0,0]
  result.`quat_xyzw` = [0,0,0,0]
  result.`elbow_pos_xyz` = [0,0,0]
  result.`joint_angles` = @[]
proc writeFields*(value: Ros1Motion_capture_ikArmHandPoseFree; w: var Writer) =
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
proc readRos1Motion_capture_ikArmHandPoseFree*(r: var Reader): Ros1Motion_capture_ikArmHandPoseFree =
  result = initRos1Motion_capture_ikArmHandPoseFree()
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
proc encode*(value: Ros1Motion_capture_ikArmHandPoseFree): seq[byte] =
  var w = initWriter(212)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikArmHandPoseFree*(b: seq[byte]): Ros1Motion_capture_ikArmHandPoseFree =
  var r = initReader(b,212)
  result = readRos1Motion_capture_ikArmHandPoseFree(r)
  finish(r)
type Ros1Motion_capture_ikChangeArmCtrlModeRequest* = object
  `control_mode`*: bool
const Ros1Motion_capture_ikChangeArmCtrlModeRequestMaximumWireBytes* = 1
const Ros1Motion_capture_ikChangeArmCtrlModeRequestCodecIdentity* = "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd"
const Ros1Motion_capture_ikChangeArmCtrlModeRequestNativeType* = "motion_capture_ik/changeArmCtrlModeRequest"
const Ros1Motion_capture_ikChangeArmCtrlModeRequestNativeIdentity* = ""
proc initRos1Motion_capture_ikChangeArmCtrlModeRequest*(): Ros1Motion_capture_ikChangeArmCtrlModeRequest =
  result.`control_mode` = false
proc writeFields*(value: Ros1Motion_capture_ikChangeArmCtrlModeRequest; w: var Writer) =
  putBool(w,value.`control_mode`)
proc readRos1Motion_capture_ikChangeArmCtrlModeRequest*(r: var Reader): Ros1Motion_capture_ikChangeArmCtrlModeRequest =
  result = initRos1Motion_capture_ikChangeArmCtrlModeRequest()
  result.`control_mode` = getBool(r)
proc encode*(value: Ros1Motion_capture_ikChangeArmCtrlModeRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikChangeArmCtrlModeRequest*(b: seq[byte]): Ros1Motion_capture_ikChangeArmCtrlModeRequest =
  var r = initReader(b,1)
  result = readRos1Motion_capture_ikChangeArmCtrlModeRequest(r)
  finish(r)
type Ros1Motion_capture_ikChangeArmCtrlModeResponse* = object
  `result`*: bool
const Ros1Motion_capture_ikChangeArmCtrlModeResponseMaximumWireBytes* = 1
const Ros1Motion_capture_ikChangeArmCtrlModeResponseCodecIdentity* = "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac"
const Ros1Motion_capture_ikChangeArmCtrlModeResponseNativeType* = "motion_capture_ik/changeArmCtrlModeResponse"
const Ros1Motion_capture_ikChangeArmCtrlModeResponseNativeIdentity* = ""
proc initRos1Motion_capture_ikChangeArmCtrlModeResponse*(): Ros1Motion_capture_ikChangeArmCtrlModeResponse =
  result.`result` = false
proc writeFields*(value: Ros1Motion_capture_ikChangeArmCtrlModeResponse; w: var Writer) =
  putBool(w,value.`result`)
proc readRos1Motion_capture_ikChangeArmCtrlModeResponse*(r: var Reader): Ros1Motion_capture_ikChangeArmCtrlModeResponse =
  result = initRos1Motion_capture_ikChangeArmCtrlModeResponse()
  result.`result` = getBool(r)
proc encode*(value: Ros1Motion_capture_ikChangeArmCtrlModeResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikChangeArmCtrlModeResponse*(b: seq[byte]): Ros1Motion_capture_ikChangeArmCtrlModeResponse =
  var r = initReader(b,1)
  result = readRos1Motion_capture_ikChangeArmCtrlModeResponse(r)
  finish(r)
type Ros1Motion_capture_ikHandPose* = object
  `x`*: float64
  `y`*: float64
  `z`*: float64
  `roll`*: float64
  `pitch`*: float64
  `yaw`*: float64
const Ros1Motion_capture_ikHandPoseMaximumWireBytes* = 48
const Ros1Motion_capture_ikHandPoseCodecIdentity* = "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f"
const Ros1Motion_capture_ikHandPoseNativeType* = "motion_capture_ik/handPose"
const Ros1Motion_capture_ikHandPoseNativeIdentity* = ""
proc initRos1Motion_capture_ikHandPose*(): Ros1Motion_capture_ikHandPose =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`roll` = 0
  result.`pitch` = 0
  result.`yaw` = 0
proc writeFields*(value: Ros1Motion_capture_ikHandPose; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`roll`)
  putFloat64(w,value.`pitch`)
  putFloat64(w,value.`yaw`)
proc readRos1Motion_capture_ikHandPose*(r: var Reader): Ros1Motion_capture_ikHandPose =
  result = initRos1Motion_capture_ikHandPose()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`roll` = getFloat64(r)
  result.`pitch` = getFloat64(r)
  result.`yaw` = getFloat64(r)
proc encode*(value: Ros1Motion_capture_ikHandPose): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikHandPose*(b: seq[byte]): Ros1Motion_capture_ikHandPose =
  var r = initReader(b,48)
  result = readRos1Motion_capture_ikHandPose(r)
  finish(r)
type Ros1Motion_capture_ikIkSolveError* = object
  `ik_type`*: string
  `left_pose_error`*: Ros1Motion_capture_ikHandPose
  `right_pose_error`*: Ros1Motion_capture_ikHandPose
const Ros1Motion_capture_ikIkSolveErrorMaximumWireBytes* = 356
const Ros1Motion_capture_ikIkSolveErrorCodecIdentity* = "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94"
const Ros1Motion_capture_ikIkSolveErrorNativeType* = "motion_capture_ik/ikSolveError"
const Ros1Motion_capture_ikIkSolveErrorNativeIdentity* = ""
proc initRos1Motion_capture_ikIkSolveError*(): Ros1Motion_capture_ikIkSolveError =
  result.`ik_type` = ""
  result.`left_pose_error` = initRos1Motion_capture_ikHandPose()
  result.`right_pose_error` = initRos1Motion_capture_ikHandPose()
proc writeFields*(value: Ros1Motion_capture_ikIkSolveError; w: var Writer) =
  putString(w,value.`ik_type`,256)
  writeFields(value.`left_pose_error`,w)
  writeFields(value.`right_pose_error`,w)
proc readRos1Motion_capture_ikIkSolveError*(r: var Reader): Ros1Motion_capture_ikIkSolveError =
  result = initRos1Motion_capture_ikIkSolveError()
  result.`ik_type` = getString(r,256)
  result.`left_pose_error` = readRos1Motion_capture_ikHandPose(r)
  result.`right_pose_error` = readRos1Motion_capture_ikHandPose(r)
proc encode*(value: Ros1Motion_capture_ikIkSolveError): seq[byte] =
  var w = initWriter(356)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikIkSolveError*(b: seq[byte]): Ros1Motion_capture_ikIkSolveError =
  var r = initReader(b,356)
  result = readRos1Motion_capture_ikIkSolveError(r)
  finish(r)
type Ros1Motion_capture_ikIkSolveParam* = object
  `major_optimality_tol`*: float64
  `major_feasibility_tol`*: float64
  `minor_feasibility_tol`*: float64
  `major_iterations_limit`*: float64
  `oritation_constraint_tol`*: float64
  `pos_constraint_tol`*: float64
  `pos_cost_weight`*: float64
const Ros1Motion_capture_ikIkSolveParamMaximumWireBytes* = 56
const Ros1Motion_capture_ikIkSolveParamCodecIdentity* = "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981"
const Ros1Motion_capture_ikIkSolveParamNativeType* = "motion_capture_ik/ikSolveParam"
const Ros1Motion_capture_ikIkSolveParamNativeIdentity* = ""
proc initRos1Motion_capture_ikIkSolveParam*(): Ros1Motion_capture_ikIkSolveParam =
  result.`major_optimality_tol` = 0
  result.`major_feasibility_tol` = 0
  result.`minor_feasibility_tol` = 0
  result.`major_iterations_limit` = 0
  result.`oritation_constraint_tol` = 0
  result.`pos_constraint_tol` = 0
  result.`pos_cost_weight` = 0
proc writeFields*(value: Ros1Motion_capture_ikIkSolveParam; w: var Writer) =
  putFloat64(w,value.`major_optimality_tol`)
  putFloat64(w,value.`major_feasibility_tol`)
  putFloat64(w,value.`minor_feasibility_tol`)
  putFloat64(w,value.`major_iterations_limit`)
  putFloat64(w,value.`oritation_constraint_tol`)
  putFloat64(w,value.`pos_constraint_tol`)
  putFloat64(w,value.`pos_cost_weight`)
proc readRos1Motion_capture_ikIkSolveParam*(r: var Reader): Ros1Motion_capture_ikIkSolveParam =
  result = initRos1Motion_capture_ikIkSolveParam()
  result.`major_optimality_tol` = getFloat64(r)
  result.`major_feasibility_tol` = getFloat64(r)
  result.`minor_feasibility_tol` = getFloat64(r)
  result.`major_iterations_limit` = getFloat64(r)
  result.`oritation_constraint_tol` = getFloat64(r)
  result.`pos_constraint_tol` = getFloat64(r)
  result.`pos_cost_weight` = getFloat64(r)
proc encode*(value: Ros1Motion_capture_ikIkSolveParam): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikIkSolveParam*(b: seq[byte]): Ros1Motion_capture_ikIkSolveParam =
  var r = initReader(b,56)
  result = readRos1Motion_capture_ikIkSolveParam(r)
  finish(r)
type Ros1Motion_capture_ikRecordArmHandPose* = object
  `left_pose`*: Ros1Motion_capture_ikArmHandPose
  `right_pose`*: Ros1Motion_capture_ikArmHandPose
const Ros1Motion_capture_ikRecordArmHandPoseMaximumWireBytes* = 272
const Ros1Motion_capture_ikRecordArmHandPoseCodecIdentity* = "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a"
const Ros1Motion_capture_ikRecordArmHandPoseNativeType* = "motion_capture_ik/recordArmHandPose"
const Ros1Motion_capture_ikRecordArmHandPoseNativeIdentity* = ""
proc initRos1Motion_capture_ikRecordArmHandPose*(): Ros1Motion_capture_ikRecordArmHandPose =
  result.`left_pose` = initRos1Motion_capture_ikArmHandPose()
  result.`right_pose` = initRos1Motion_capture_ikArmHandPose()
proc writeFields*(value: Ros1Motion_capture_ikRecordArmHandPose; w: var Writer) =
  writeFields(value.`left_pose`,w)
  writeFields(value.`right_pose`,w)
proc readRos1Motion_capture_ikRecordArmHandPose*(r: var Reader): Ros1Motion_capture_ikRecordArmHandPose =
  result = initRos1Motion_capture_ikRecordArmHandPose()
  result.`left_pose` = readRos1Motion_capture_ikArmHandPose(r)
  result.`right_pose` = readRos1Motion_capture_ikArmHandPose(r)
proc encode*(value: Ros1Motion_capture_ikRecordArmHandPose): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikRecordArmHandPose*(b: seq[byte]): Ros1Motion_capture_ikRecordArmHandPose =
  var r = initReader(b,272)
  result = readRos1Motion_capture_ikRecordArmHandPose(r)
  finish(r)
type Ros1Motion_capture_ikRecordArmHandPoseFree* = object
  `left_pose`*: Ros1Motion_capture_ikArmHandPoseFree
  `right_pose`*: Ros1Motion_capture_ikArmHandPoseFree
const Ros1Motion_capture_ikRecordArmHandPoseFreeMaximumWireBytes* = 424
const Ros1Motion_capture_ikRecordArmHandPoseFreeCodecIdentity* = "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811"
const Ros1Motion_capture_ikRecordArmHandPoseFreeNativeType* = "motion_capture_ik/recordArmHandPoseFree"
const Ros1Motion_capture_ikRecordArmHandPoseFreeNativeIdentity* = ""
proc initRos1Motion_capture_ikRecordArmHandPoseFree*(): Ros1Motion_capture_ikRecordArmHandPoseFree =
  result.`left_pose` = initRos1Motion_capture_ikArmHandPoseFree()
  result.`right_pose` = initRos1Motion_capture_ikArmHandPoseFree()
proc writeFields*(value: Ros1Motion_capture_ikRecordArmHandPoseFree; w: var Writer) =
  writeFields(value.`left_pose`,w)
  writeFields(value.`right_pose`,w)
proc readRos1Motion_capture_ikRecordArmHandPoseFree*(r: var Reader): Ros1Motion_capture_ikRecordArmHandPoseFree =
  result = initRos1Motion_capture_ikRecordArmHandPoseFree()
  result.`left_pose` = readRos1Motion_capture_ikArmHandPoseFree(r)
  result.`right_pose` = readRos1Motion_capture_ikArmHandPoseFree(r)
proc encode*(value: Ros1Motion_capture_ikRecordArmHandPoseFree): seq[byte] =
  var w = initWriter(424)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikRecordArmHandPoseFree*(b: seq[byte]): Ros1Motion_capture_ikRecordArmHandPoseFree =
  var r = initReader(b,424)
  result = readRos1Motion_capture_ikRecordArmHandPoseFree(r)
  finish(r)
type Ros1Motion_capture_ikRobotArmQVVD* = object
  `q`*: seq[float64]
  `v`*: seq[float64]
  `vd`*: seq[float64]
const Ros1Motion_capture_ikRobotArmQVVDMaximumWireBytes* = 396
const Ros1Motion_capture_ikRobotArmQVVDCodecIdentity* = "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb"
const Ros1Motion_capture_ikRobotArmQVVDNativeType* = "motion_capture_ik/robotArmQVVD"
const Ros1Motion_capture_ikRobotArmQVVDNativeIdentity* = ""
proc initRos1Motion_capture_ikRobotArmQVVD*(): Ros1Motion_capture_ikRobotArmQVVD =
  result.`q` = @[]
  result.`v` = @[]
  result.`vd` = @[]
proc writeFields*(value: Ros1Motion_capture_ikRobotArmQVVD; w: var Writer) =
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
proc readRos1Motion_capture_ikRobotArmQVVD*(r: var Reader): Ros1Motion_capture_ikRobotArmQVVD =
  result = initRos1Motion_capture_ikRobotArmQVVD()
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
proc encode*(value: Ros1Motion_capture_ikRobotArmQVVD): seq[byte] =
  var w = initWriter(396)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikRobotArmQVVD*(b: seq[byte]): Ros1Motion_capture_ikRobotArmQVVD =
  var r = initReader(b,396)
  result = readRos1Motion_capture_ikRobotArmQVVD(r)
  finish(r)
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
type Ros1Motion_capture_ikRobotHandPosition* = object
  `header`*: Ros1Std_msgsHeader
  `left_hand_position`*: seq[uint8]
  `right_hand_position`*: seq[uint8]
const Ros1Motion_capture_ikRobotHandPositionMaximumWireBytes* = 792
const Ros1Motion_capture_ikRobotHandPositionCodecIdentity* = "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa"
const Ros1Motion_capture_ikRobotHandPositionNativeType* = "motion_capture_ik/robotHandPosition"
const Ros1Motion_capture_ikRobotHandPositionNativeIdentity* = ""
proc initRos1Motion_capture_ikRobotHandPosition*(): Ros1Motion_capture_ikRobotHandPosition =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_hand_position` = @[]
  result.`right_hand_position` = @[]
proc writeFields*(value: Ros1Motion_capture_ikRobotHandPosition; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`left_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`left_hand_position`.len))
  for e in value.`left_hand_position`:
    putInteger(w,e)
  if value.`right_hand_position`.len > 256: fail(22)
  putInteger(w,uint32(value.`right_hand_position`.len))
  for e in value.`right_hand_position`:
    putInteger(w,e)
proc readRos1Motion_capture_ikRobotHandPosition*(r: var Reader): Ros1Motion_capture_ikRobotHandPosition =
  result = initRos1Motion_capture_ikRobotHandPosition()
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
proc encode*(value: Ros1Motion_capture_ikRobotHandPosition): seq[byte] =
  var w = initWriter(792)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikRobotHandPosition*(b: seq[byte]): Ros1Motion_capture_ikRobotHandPosition =
  var r = initReader(b,792)
  result = readRos1Motion_capture_ikRobotHandPosition(r)
  finish(r)
type Ros1Motion_capture_ikTwoArmHandPose* = object
  `header`*: Ros1Std_msgsHeader
  `left_pose`*: Ros1Motion_capture_ikArmHandPose
  `right_pose`*: Ros1Motion_capture_ikArmHandPose
const Ros1Motion_capture_ikTwoArmHandPoseMaximumWireBytes* = 544
const Ros1Motion_capture_ikTwoArmHandPoseCodecIdentity* = "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181"
const Ros1Motion_capture_ikTwoArmHandPoseNativeType* = "motion_capture_ik/twoArmHandPose"
const Ros1Motion_capture_ikTwoArmHandPoseNativeIdentity* = ""
proc initRos1Motion_capture_ikTwoArmHandPose*(): Ros1Motion_capture_ikTwoArmHandPose =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_pose` = initRos1Motion_capture_ikArmHandPose()
  result.`right_pose` = initRos1Motion_capture_ikArmHandPose()
proc writeFields*(value: Ros1Motion_capture_ikTwoArmHandPose; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_pose`,w)
  writeFields(value.`right_pose`,w)
proc readRos1Motion_capture_ikTwoArmHandPose*(r: var Reader): Ros1Motion_capture_ikTwoArmHandPose =
  result = initRos1Motion_capture_ikTwoArmHandPose()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`left_pose` = readRos1Motion_capture_ikArmHandPose(r)
  result.`right_pose` = readRos1Motion_capture_ikArmHandPose(r)
proc encode*(value: Ros1Motion_capture_ikTwoArmHandPose): seq[byte] =
  var w = initWriter(544)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikTwoArmHandPose*(b: seq[byte]): Ros1Motion_capture_ikTwoArmHandPose =
  var r = initReader(b,544)
  result = readRos1Motion_capture_ikTwoArmHandPose(r)
  finish(r)
type Ros1Motion_capture_ikTwoArmHandPoseCmd* = object
  `hand_poses`*: Ros1Motion_capture_ikTwoArmHandPose
  `use_custom_ik_param`*: bool
  `joint_angles_as_q0`*: bool
  `ik_param`*: Ros1Motion_capture_ikIkSolveParam
const Ros1Motion_capture_ikTwoArmHandPoseCmdMaximumWireBytes* = 602
const Ros1Motion_capture_ikTwoArmHandPoseCmdCodecIdentity* = "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc"
const Ros1Motion_capture_ikTwoArmHandPoseCmdNativeType* = "motion_capture_ik/twoArmHandPoseCmd"
const Ros1Motion_capture_ikTwoArmHandPoseCmdNativeIdentity* = ""
proc initRos1Motion_capture_ikTwoArmHandPoseCmd*(): Ros1Motion_capture_ikTwoArmHandPoseCmd =
  result.`hand_poses` = initRos1Motion_capture_ikTwoArmHandPose()
  result.`use_custom_ik_param` = false
  result.`joint_angles_as_q0` = false
  result.`ik_param` = initRos1Motion_capture_ikIkSolveParam()
proc writeFields*(value: Ros1Motion_capture_ikTwoArmHandPoseCmd; w: var Writer) =
  writeFields(value.`hand_poses`,w)
  putBool(w,value.`use_custom_ik_param`)
  putBool(w,value.`joint_angles_as_q0`)
  writeFields(value.`ik_param`,w)
proc readRos1Motion_capture_ikTwoArmHandPoseCmd*(r: var Reader): Ros1Motion_capture_ikTwoArmHandPoseCmd =
  result = initRos1Motion_capture_ikTwoArmHandPoseCmd()
  result.`hand_poses` = readRos1Motion_capture_ikTwoArmHandPose(r)
  result.`use_custom_ik_param` = getBool(r)
  result.`joint_angles_as_q0` = getBool(r)
  result.`ik_param` = readRos1Motion_capture_ikIkSolveParam(r)
proc encode*(value: Ros1Motion_capture_ikTwoArmHandPoseCmd): seq[byte] =
  var w = initWriter(602)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikTwoArmHandPoseCmd*(b: seq[byte]): Ros1Motion_capture_ikTwoArmHandPoseCmd =
  var r = initReader(b,602)
  result = readRos1Motion_capture_ikTwoArmHandPoseCmd(r)
  finish(r)
type Ros1Motion_capture_ikTwoArmHandPoseFree* = object
  `header`*: Ros1Std_msgsHeader
  `left_pose`*: Ros1Motion_capture_ikArmHandPoseFree
  `right_pose`*: Ros1Motion_capture_ikArmHandPoseFree
const Ros1Motion_capture_ikTwoArmHandPoseFreeMaximumWireBytes* = 696
const Ros1Motion_capture_ikTwoArmHandPoseFreeCodecIdentity* = "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c"
const Ros1Motion_capture_ikTwoArmHandPoseFreeNativeType* = "motion_capture_ik/twoArmHandPoseFree"
const Ros1Motion_capture_ikTwoArmHandPoseFreeNativeIdentity* = ""
proc initRos1Motion_capture_ikTwoArmHandPoseFree*(): Ros1Motion_capture_ikTwoArmHandPoseFree =
  result.`header` = initRos1Std_msgsHeader()
  result.`left_pose` = initRos1Motion_capture_ikArmHandPoseFree()
  result.`right_pose` = initRos1Motion_capture_ikArmHandPoseFree()
proc writeFields*(value: Ros1Motion_capture_ikTwoArmHandPoseFree; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_pose`,w)
  writeFields(value.`right_pose`,w)
proc readRos1Motion_capture_ikTwoArmHandPoseFree*(r: var Reader): Ros1Motion_capture_ikTwoArmHandPoseFree =
  result = initRos1Motion_capture_ikTwoArmHandPoseFree()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`left_pose` = readRos1Motion_capture_ikArmHandPoseFree(r)
  result.`right_pose` = readRos1Motion_capture_ikArmHandPoseFree(r)
proc encode*(value: Ros1Motion_capture_ikTwoArmHandPoseFree): seq[byte] =
  var w = initWriter(696)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikTwoArmHandPoseFree*(b: seq[byte]): Ros1Motion_capture_ikTwoArmHandPoseFree =
  var r = initReader(b,696)
  result = readRos1Motion_capture_ikTwoArmHandPoseFree(r)
  finish(r)
type Ros1Motion_capture_ikTwoArmHandPoseCmdFree* = object
  `hand_poses`*: Ros1Motion_capture_ikTwoArmHandPoseFree
  `use_custom_ik_param`*: bool
  `joint_angles_as_q0`*: bool
  `ik_param`*: Ros1Motion_capture_ikIkSolveParam
const Ros1Motion_capture_ikTwoArmHandPoseCmdFreeMaximumWireBytes* = 754
const Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodecIdentity* = "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773"
const Ros1Motion_capture_ikTwoArmHandPoseCmdFreeNativeType* = "motion_capture_ik/twoArmHandPoseCmdFree"
const Ros1Motion_capture_ikTwoArmHandPoseCmdFreeNativeIdentity* = ""
proc initRos1Motion_capture_ikTwoArmHandPoseCmdFree*(): Ros1Motion_capture_ikTwoArmHandPoseCmdFree =
  result.`hand_poses` = initRos1Motion_capture_ikTwoArmHandPoseFree()
  result.`use_custom_ik_param` = false
  result.`joint_angles_as_q0` = false
  result.`ik_param` = initRos1Motion_capture_ikIkSolveParam()
proc writeFields*(value: Ros1Motion_capture_ikTwoArmHandPoseCmdFree; w: var Writer) =
  writeFields(value.`hand_poses`,w)
  putBool(w,value.`use_custom_ik_param`)
  putBool(w,value.`joint_angles_as_q0`)
  writeFields(value.`ik_param`,w)
proc readRos1Motion_capture_ikTwoArmHandPoseCmdFree*(r: var Reader): Ros1Motion_capture_ikTwoArmHandPoseCmdFree =
  result = initRos1Motion_capture_ikTwoArmHandPoseCmdFree()
  result.`hand_poses` = readRos1Motion_capture_ikTwoArmHandPoseFree(r)
  result.`use_custom_ik_param` = getBool(r)
  result.`joint_angles_as_q0` = getBool(r)
  result.`ik_param` = readRos1Motion_capture_ikIkSolveParam(r)
proc encode*(value: Ros1Motion_capture_ikTwoArmHandPoseCmdFree): seq[byte] =
  var w = initWriter(754)
  writeFields(value,w)
  w.bytes
proc decodeRos1Motion_capture_ikTwoArmHandPoseCmdFree*(b: seq[byte]): Ros1Motion_capture_ikTwoArmHandPoseCmdFree =
  var r = initReader(b,754)
  result = readRos1Motion_capture_ikTwoArmHandPoseCmdFree(r)
  finish(r)
