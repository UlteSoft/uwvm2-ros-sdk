# @file records.nim
# @brief Full leju nim codecs and original record metadata.
# @details Complete leju ros1_master_unregistered_dtos values in nim. 2 original records retain 5 fields and 2
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/leju/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros1Kuavo_sdkQv* = object
  `value`*: seq[float64]
const Ros1Kuavo_sdkQvMaximumWireBytes* = 132
const Ros1Kuavo_sdkQvCodecIdentity* = "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32"
const Ros1Kuavo_sdkQvNativeType* = "kuavo_sdk/qv"
const Ros1Kuavo_sdkQvNativeIdentity* = ""
proc initRos1Kuavo_sdkQv*(): Ros1Kuavo_sdkQv =
  result.`value` = @[]
proc writeFields*(value: Ros1Kuavo_sdkQv; w: var Writer) =
  if value.`value`.len > 16: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putFloat64(w,e)
proc readRos1Kuavo_sdkQv*(r: var Reader): Ros1Kuavo_sdkQv =
  result = initRos1Kuavo_sdkQv()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`value` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`value`[i] = getFloat64(r)
proc encode*(value: Ros1Kuavo_sdkQv): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_sdkQv*(b: seq[byte]): Ros1Kuavo_sdkQv =
  var r = initReader(b,132)
  result = readRos1Kuavo_sdkQv(r)
  finish(r)
type Ros1Kuavo_sdkFullBodyTargetTrajectories* = object
  `timeTrajectory`*: seq[float64]
  `footIndexTrajectory`*: seq[int32]
  `fullBodyQTrajectory`*: seq[Ros1Kuavo_sdkQv]
  `fullBodyVTrajectory`*: seq[Ros1Kuavo_sdkQv]
const Ros1Kuavo_sdkFullBodyTargetTrajectoriesMaximumWireBytes* = 2320
const Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodecIdentity* = "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32"
const Ros1Kuavo_sdkFullBodyTargetTrajectoriesNativeType* = "kuavo_sdk/fullBodyTargetTrajectories"
const Ros1Kuavo_sdkFullBodyTargetTrajectoriesNativeIdentity* = ""
proc initRos1Kuavo_sdkFullBodyTargetTrajectories*(): Ros1Kuavo_sdkFullBodyTargetTrajectories =
  result.`timeTrajectory` = @[]
  result.`footIndexTrajectory` = @[]
  result.`fullBodyQTrajectory` = @[]
  result.`fullBodyVTrajectory` = @[]
proc writeFields*(value: Ros1Kuavo_sdkFullBodyTargetTrajectories; w: var Writer) =
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
proc readRos1Kuavo_sdkFullBodyTargetTrajectories*(r: var Reader): Ros1Kuavo_sdkFullBodyTargetTrajectories =
  result = initRos1Kuavo_sdkFullBodyTargetTrajectories()
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
  result.`fullBodyQTrajectory` = newSeq[Ros1Kuavo_sdkQv](count2)
  for i in 0..<count2:
    result.`fullBodyQTrajectory`[i] = readRos1Kuavo_sdkQv(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`fullBodyVTrajectory` = newSeq[Ros1Kuavo_sdkQv](count3)
  for i in 0..<count3:
    result.`fullBodyVTrajectory`[i] = readRos1Kuavo_sdkQv(r)
proc encode*(value: Ros1Kuavo_sdkFullBodyTargetTrajectories): seq[byte] =
  var w = initWriter(2320)
  writeFields(value,w)
  w.bytes
proc decodeRos1Kuavo_sdkFullBodyTargetTrajectories*(b: seq[byte]): Ros1Kuavo_sdkFullBodyTargetTrajectories =
  var r = initReader(b,2320)
  result = readRos1Kuavo_sdkFullBodyTargetTrajectories(r)
  finish(r)
