# @file records.nim
# @brief Full agibot nim codecs and original record metadata.
# @details Complete agibot ros2_sdk_v1_1_0_main values in nim. 166 original records retain 552 fields and 133
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/agibot/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Aimdk_msgsMsgAgentPropertyIdType* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodecIdentity* = "UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c"
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeNativeType* = "aimdk_msgs/msg/AgentPropertyIdType"
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_UNDEFINED*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_RUN_MODE*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_GREET*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_HEAD_FOLLOW*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_DUPLEX_TIMEOUT*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_ENVIRONMENT_SWITCH*: uint8 = 6'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_WELCOME_STATUS*: uint8 = 7'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_SITE_SWITCH*: uint8 = 8'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE_LIST*: uint8 = 9'u8
proc initRos2Aimdk_msgsMsgAgentPropertyIdType*(): Ros2Aimdk_msgsMsgAgentPropertyIdType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgAgentPropertyIdType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgAgentPropertyIdType*(r: var Reader): Ros2Aimdk_msgsMsgAgentPropertyIdType =
  result = initRos2Aimdk_msgsMsgAgentPropertyIdType()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgAgentPropertyIdType): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAgentPropertyIdType*(b: seq[byte]): Ros2Aimdk_msgsMsgAgentPropertyIdType =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgAgentPropertyIdType(r)
  finish(r)
type Ros2Aimdk_msgsMsgAgentPropertiesValue* = object
  `key`*: Ros2Aimdk_msgsMsgAgentPropertyIdType
  `value`*: string
const Ros2Aimdk_msgsMsgAgentPropertiesValueMaximumWireBytes* = 133
const Ros2Aimdk_msgsMsgAgentPropertiesValueCodecIdentity* = "UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb"
const Ros2Aimdk_msgsMsgAgentPropertiesValueNativeType* = "aimdk_msgs/msg/AgentPropertiesValue"
const Ros2Aimdk_msgsMsgAgentPropertiesValueNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAgentPropertiesValue*(): Ros2Aimdk_msgsMsgAgentPropertiesValue =
  result.`key` = initRos2Aimdk_msgsMsgAgentPropertyIdType()
  result.`value` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgAgentPropertiesValue; w: var Writer) =
  writeFields(value.`key`,w)
  putString(w,value.`value`,128)
proc readRos2Aimdk_msgsMsgAgentPropertiesValue*(r: var Reader): Ros2Aimdk_msgsMsgAgentPropertiesValue =
  result = initRos2Aimdk_msgsMsgAgentPropertiesValue()
  result.`key` = readRos2Aimdk_msgsMsgAgentPropertyIdType(r)
  result.`value` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgAgentPropertiesValue): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAgentPropertiesValue*(b: seq[byte]): Ros2Aimdk_msgsMsgAgentPropertiesValue =
  var r = initReader(b,133)
  result = readRos2Aimdk_msgsMsgAgentPropertiesValue(r)
  finish(r)
type Ros2Aimdk_msgsMsgAgentProperties* = object
  `properties`*: seq[Ros2Aimdk_msgsMsgAgentPropertiesValue]
const Ros2Aimdk_msgsMsgAgentPropertiesMaximumWireBytes* = 536
const Ros2Aimdk_msgsMsgAgentPropertiesCodecIdentity* = "UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa"
const Ros2Aimdk_msgsMsgAgentPropertiesNativeType* = "aimdk_msgs/msg/AgentProperties"
const Ros2Aimdk_msgsMsgAgentPropertiesNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAgentProperties*(): Ros2Aimdk_msgsMsgAgentProperties =
  result.`properties` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgAgentProperties; w: var Writer) =
  if value.`properties`.len > 4: fail(22)
  putInteger(w,uint32(value.`properties`.len))
  for e in value.`properties`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgAgentProperties*(r: var Reader): Ros2Aimdk_msgsMsgAgentProperties =
  result = initRos2Aimdk_msgsMsgAgentProperties()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`properties` = newSeq[Ros2Aimdk_msgsMsgAgentPropertiesValue](count0)
  for i in 0..<count0:
    result.`properties`[i] = readRos2Aimdk_msgsMsgAgentPropertiesValue(r)
proc encode*(value: Ros2Aimdk_msgsMsgAgentProperties): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAgentProperties*(b: seq[byte]): Ros2Aimdk_msgsMsgAgentProperties =
  var r = initReader(b,536)
  result = readRos2Aimdk_msgsMsgAgentProperties(r)
  finish(r)
type Ros2Aimdk_msgsMsgAlertCode* = object
  `timestamp`*: uint64
  `first_timestamp`*: uint64
  `code`*: string
const Ros2Aimdk_msgsMsgAlertCodeMaximumWireBytes* = 148
const Ros2Aimdk_msgsMsgAlertCodeCodecIdentity* = "UWVMROS1_16e0ffe103d1d7761ff440bebfd6aa42c9471006f636c50fcd6acda8c32bc7e5"
const Ros2Aimdk_msgsMsgAlertCodeNativeType* = "aimdk_msgs/msg/AlertCode"
const Ros2Aimdk_msgsMsgAlertCodeNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAlertCode*(): Ros2Aimdk_msgsMsgAlertCode =
  result.`timestamp` = 0
  result.`first_timestamp` = 0
  result.`code` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgAlertCode; w: var Writer) =
  putInteger(w,value.`timestamp`)
  putInteger(w,value.`first_timestamp`)
  putString(w,value.`code`,128)
proc readRos2Aimdk_msgsMsgAlertCode*(r: var Reader): Ros2Aimdk_msgsMsgAlertCode =
  result = initRos2Aimdk_msgsMsgAlertCode()
  result.`timestamp` = getInteger(r,uint64)
  result.`first_timestamp` = getInteger(r,uint64)
  result.`code` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgAlertCode): seq[byte] =
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAlertCode*(b: seq[byte]): Ros2Aimdk_msgsMsgAlertCode =
  var r = initReader(b,148)
  result = readRos2Aimdk_msgsMsgAlertCode(r)
  finish(r)
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
type Ros2Aimdk_msgsMsgMessageHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
  `frame_id`*: string
  `sequence`*: uint32
  `meas_stamp`*: Ros2Builtin_interfacesMsgTime
const Ros2Aimdk_msgsMsgMessageHeaderMaximumWireBytes* = 152
const Ros2Aimdk_msgsMsgMessageHeaderCodecIdentity* = "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496"
const Ros2Aimdk_msgsMsgMessageHeaderNativeType* = "aimdk_msgs/msg/MessageHeader"
const Ros2Aimdk_msgsMsgMessageHeaderNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMessageHeader*(): Ros2Aimdk_msgsMsgMessageHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
  result.`sequence` = 0
  result.`meas_stamp` = initRos2Builtin_interfacesMsgTime()
proc writeFields*(value: Ros2Aimdk_msgsMsgMessageHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
  putInteger(w,value.`sequence`)
  writeFields(value.`meas_stamp`,w)
proc readRos2Aimdk_msgsMsgMessageHeader*(r: var Reader): Ros2Aimdk_msgsMsgMessageHeader =
  result = initRos2Aimdk_msgsMsgMessageHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,128)
  result.`sequence` = getInteger(r,uint32)
  result.`meas_stamp` = readRos2Builtin_interfacesMsgTime(r)
proc encode*(value: Ros2Aimdk_msgsMsgMessageHeader): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMessageHeader*(b: seq[byte]): Ros2Aimdk_msgsMsgMessageHeader =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsMsgMessageHeader(r)
  finish(r)
type Ros2Aimdk_msgsMsgAlertCodeArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `list`*: seq[Ros2Aimdk_msgsMsgAlertCode]
const Ros2Aimdk_msgsMsgAlertCodeArrayMaximumWireBytes* = 748
const Ros2Aimdk_msgsMsgAlertCodeArrayCodecIdentity* = "UWVMROS1_1b63520082b1874bb85d84c6be60d4464a3ce7063422d6db5597c907e70fe261"
const Ros2Aimdk_msgsMsgAlertCodeArrayNativeType* = "aimdk_msgs/msg/AlertCodeArray"
const Ros2Aimdk_msgsMsgAlertCodeArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAlertCodeArray*(): Ros2Aimdk_msgsMsgAlertCodeArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`list` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgAlertCodeArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`list`.len > 4: fail(22)
  putInteger(w,uint32(value.`list`.len))
  for e in value.`list`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgAlertCodeArray*(r: var Reader): Ros2Aimdk_msgsMsgAlertCodeArray =
  result = initRos2Aimdk_msgsMsgAlertCodeArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`list` = newSeq[Ros2Aimdk_msgsMsgAlertCode](count1)
  for i in 0..<count1:
    result.`list`[i] = readRos2Aimdk_msgsMsgAlertCode(r)
proc encode*(value: Ros2Aimdk_msgsMsgAlertCodeArray): seq[byte] =
  var w = initWriter(748)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAlertCodeArray*(b: seq[byte]): Ros2Aimdk_msgsMsgAlertCodeArray =
  var r = initReader(b,748)
  result = readRos2Aimdk_msgsMsgAlertCodeArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgAudioInfo* = object
  `channels`*: uint8
  `sample_rate`*: uint32
  `size`*: uint32
  `sample_format`*: string
  `coding_format`*: string
const Ros2Aimdk_msgsMsgAudioInfoMaximumWireBytes* = 273
const Ros2Aimdk_msgsMsgAudioInfoCodecIdentity* = "UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be"
const Ros2Aimdk_msgsMsgAudioInfoNativeType* = "aimdk_msgs/msg/AudioInfo"
const Ros2Aimdk_msgsMsgAudioInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAudioInfo*(): Ros2Aimdk_msgsMsgAudioInfo =
  result.`channels` = 0
  result.`sample_rate` = 0
  result.`size` = 0
  result.`sample_format` = ""
  result.`coding_format` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgAudioInfo; w: var Writer) =
  putInteger(w,value.`channels`)
  putInteger(w,value.`sample_rate`)
  putInteger(w,value.`size`)
  putString(w,value.`sample_format`,128)
  putString(w,value.`coding_format`,128)
proc readRos2Aimdk_msgsMsgAudioInfo*(r: var Reader): Ros2Aimdk_msgsMsgAudioInfo =
  result = initRos2Aimdk_msgsMsgAudioInfo()
  result.`channels` = getInteger(r,uint8)
  result.`sample_rate` = getInteger(r,uint32)
  result.`size` = getInteger(r,uint32)
  result.`sample_format` = getString(r,128)
  result.`coding_format` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgAudioInfo): seq[byte] =
  var w = initWriter(273)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAudioInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgAudioInfo =
  var r = initReader(b,273)
  result = readRos2Aimdk_msgsMsgAudioInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgAudioData* = object
  `data`*: seq[uint8]
const Ros2Aimdk_msgsMsgAudioDataMaximumWireBytes* = 260
const Ros2Aimdk_msgsMsgAudioDataCodecIdentity* = "UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8"
const Ros2Aimdk_msgsMsgAudioDataNativeType* = "aimdk_msgs/msg/AudioData"
const Ros2Aimdk_msgsMsgAudioDataNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAudioData*(): Ros2Aimdk_msgsMsgAudioData =
  result.`data` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgAudioData; w: var Writer) =
  if value.`data`.len > 256: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
proc readRos2Aimdk_msgsMsgAudioData*(r: var Reader): Ros2Aimdk_msgsMsgAudioData =
  result = initRos2Aimdk_msgsMsgAudioData()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 256: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[uint8](count0)
  for i in 0..<count0:
    result.`data`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgAudioData): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAudioData*(b: seq[byte]): Ros2Aimdk_msgsMsgAudioData =
  var r = initReader(b,260)
  result = readRos2Aimdk_msgsMsgAudioData(r)
  finish(r)
type Ros2Aimdk_msgsMsgAudioCapture* = object
  `stamps`*: Ros2Builtin_interfacesMsgTime
  `mic_channels`*: uint8
  `ref_channels`*: uint8
  `info`*: Ros2Aimdk_msgsMsgAudioInfo
  `data`*: Ros2Aimdk_msgsMsgAudioData
  `pkg_name`*: string
const Ros2Aimdk_msgsMsgAudioCaptureMaximumWireBytes* = 675
const Ros2Aimdk_msgsMsgAudioCaptureCodecIdentity* = "UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c"
const Ros2Aimdk_msgsMsgAudioCaptureNativeType* = "aimdk_msgs/msg/AudioCapture"
const Ros2Aimdk_msgsMsgAudioCaptureNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAudioCapture*(): Ros2Aimdk_msgsMsgAudioCapture =
  result.`stamps` = initRos2Builtin_interfacesMsgTime()
  result.`mic_channels` = 0
  result.`ref_channels` = 0
  result.`info` = initRos2Aimdk_msgsMsgAudioInfo()
  result.`data` = initRos2Aimdk_msgsMsgAudioData()
  result.`pkg_name` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgAudioCapture; w: var Writer) =
  writeFields(value.`stamps`,w)
  putInteger(w,value.`mic_channels`)
  putInteger(w,value.`ref_channels`)
  writeFields(value.`info`,w)
  writeFields(value.`data`,w)
  putString(w,value.`pkg_name`,128)
proc readRos2Aimdk_msgsMsgAudioCapture*(r: var Reader): Ros2Aimdk_msgsMsgAudioCapture =
  result = initRos2Aimdk_msgsMsgAudioCapture()
  result.`stamps` = readRos2Builtin_interfacesMsgTime(r)
  result.`mic_channels` = getInteger(r,uint8)
  result.`ref_channels` = getInteger(r,uint8)
  result.`info` = readRos2Aimdk_msgsMsgAudioInfo(r)
  result.`data` = readRos2Aimdk_msgsMsgAudioData(r)
  result.`pkg_name` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgAudioCapture): seq[byte] =
  var w = initWriter(675)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAudioCapture*(b: seq[byte]): Ros2Aimdk_msgsMsgAudioCapture =
  var r = initReader(b,675)
  result = readRos2Aimdk_msgsMsgAudioCapture(r)
  finish(r)
type Ros2Aimdk_msgsMsgAudioFile* = object
  `pkg_name`*: string
  `file_name`*: string
  `file_path`*: string
  `info`*: Ros2Aimdk_msgsMsgAudioInfo
  `priority`*: uint32
  `priority_weight`*: uint32
const Ros2Aimdk_msgsMsgAudioFileMaximumWireBytes* = 677
const Ros2Aimdk_msgsMsgAudioFileCodecIdentity* = "UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d"
const Ros2Aimdk_msgsMsgAudioFileNativeType* = "aimdk_msgs/msg/AudioFile"
const Ros2Aimdk_msgsMsgAudioFileNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAudioFile*(): Ros2Aimdk_msgsMsgAudioFile =
  result.`pkg_name` = ""
  result.`file_name` = ""
  result.`file_path` = ""
  result.`info` = initRos2Aimdk_msgsMsgAudioInfo()
  result.`priority` = 0
  result.`priority_weight` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgAudioFile; w: var Writer) =
  putString(w,value.`pkg_name`,128)
  putString(w,value.`file_name`,128)
  putString(w,value.`file_path`,128)
  writeFields(value.`info`,w)
  putInteger(w,value.`priority`)
  putInteger(w,value.`priority_weight`)
proc readRos2Aimdk_msgsMsgAudioFile*(r: var Reader): Ros2Aimdk_msgsMsgAudioFile =
  result = initRos2Aimdk_msgsMsgAudioFile()
  result.`pkg_name` = getString(r,128)
  result.`file_name` = getString(r,128)
  result.`file_path` = getString(r,128)
  result.`info` = readRos2Aimdk_msgsMsgAudioInfo(r)
  result.`priority` = getInteger(r,uint32)
  result.`priority_weight` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgAudioFile): seq[byte] =
  var w = initWriter(677)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAudioFile*(b: seq[byte]): Ros2Aimdk_msgsMsgAudioFile =
  var r = initReader(b,677)
  result = readRos2Aimdk_msgsMsgAudioFile(r)
  finish(r)
type Ros2Aimdk_msgsMsgAudioPlayback* = object
  `stamps`*: Ros2Builtin_interfacesMsgTime
  `info`*: Ros2Aimdk_msgsMsgAudioInfo
  `data`*: Ros2Aimdk_msgsMsgAudioData
  `pkg_name`*: string
  `token_id`*: string
const Ros2Aimdk_msgsMsgAudioPlaybackMaximumWireBytes* = 805
const Ros2Aimdk_msgsMsgAudioPlaybackCodecIdentity* = "UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499"
const Ros2Aimdk_msgsMsgAudioPlaybackNativeType* = "aimdk_msgs/msg/AudioPlayback"
const Ros2Aimdk_msgsMsgAudioPlaybackNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAudioPlayback*(): Ros2Aimdk_msgsMsgAudioPlayback =
  result.`stamps` = initRos2Builtin_interfacesMsgTime()
  result.`info` = initRos2Aimdk_msgsMsgAudioInfo()
  result.`data` = initRos2Aimdk_msgsMsgAudioData()
  result.`pkg_name` = ""
  result.`token_id` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgAudioPlayback; w: var Writer) =
  writeFields(value.`stamps`,w)
  writeFields(value.`info`,w)
  writeFields(value.`data`,w)
  putString(w,value.`pkg_name`,128)
  putString(w,value.`token_id`,128)
proc readRos2Aimdk_msgsMsgAudioPlayback*(r: var Reader): Ros2Aimdk_msgsMsgAudioPlayback =
  result = initRos2Aimdk_msgsMsgAudioPlayback()
  result.`stamps` = readRos2Builtin_interfacesMsgTime(r)
  result.`info` = readRos2Aimdk_msgsMsgAudioInfo(r)
  result.`data` = readRos2Aimdk_msgsMsgAudioData(r)
  result.`pkg_name` = getString(r,128)
  result.`token_id` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgAudioPlayback): seq[byte] =
  var w = initWriter(805)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAudioPlayback*(b: seq[byte]): Ros2Aimdk_msgsMsgAudioPlayback =
  var r = initReader(b,805)
  result = readRos2Aimdk_msgsMsgAudioPlayback(r)
  finish(r)
type Ros2Aimdk_msgsMsgAudioVadStateType* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgAudioVadStateTypeMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgAudioVadStateTypeCodecIdentity* = "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526"
const Ros2Aimdk_msgsMsgAudioVadStateTypeNativeType* = "aimdk_msgs/msg/AudioVadStateType"
const Ros2Aimdk_msgsMsgAudioVadStateTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_BEGIN*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_PROCESSING*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_END*: uint8 = 3'u8
proc initRos2Aimdk_msgsMsgAudioVadStateType*(): Ros2Aimdk_msgsMsgAudioVadStateType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgAudioVadStateType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgAudioVadStateType*(r: var Reader): Ros2Aimdk_msgsMsgAudioVadStateType =
  result = initRos2Aimdk_msgsMsgAudioVadStateType()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgAudioVadStateType): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAudioVadStateType*(b: seq[byte]): Ros2Aimdk_msgsMsgAudioVadStateType =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgAudioVadStateType(r)
  finish(r)
type Ros2Aimdk_msgsMsgRequestHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
const Ros2Aimdk_msgsMsgRequestHeaderMaximumWireBytes* = 8
const Ros2Aimdk_msgsMsgRequestHeaderCodecIdentity* = "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000"
const Ros2Aimdk_msgsMsgRequestHeaderNativeType* = "aimdk_msgs/msg/RequestHeader"
const Ros2Aimdk_msgsMsgRequestHeaderNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgRequestHeader*(): Ros2Aimdk_msgsMsgRequestHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
proc writeFields*(value: Ros2Aimdk_msgsMsgRequestHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
proc readRos2Aimdk_msgsMsgRequestHeader*(r: var Reader): Ros2Aimdk_msgsMsgRequestHeader =
  result = initRos2Aimdk_msgsMsgRequestHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
proc encode*(value: Ros2Aimdk_msgsMsgRequestHeader): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgRequestHeader*(b: seq[byte]): Ros2Aimdk_msgsMsgRequestHeader =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsMsgRequestHeader(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonRequest* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
const Ros2Aimdk_msgsMsgCommonRequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsMsgCommonRequestCodecIdentity* = "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7"
const Ros2Aimdk_msgsMsgCommonRequestNativeType* = "aimdk_msgs/msg/CommonRequest"
const Ros2Aimdk_msgsMsgCommonRequestNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCommonRequest*(): Ros2Aimdk_msgsMsgCommonRequest =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonRequest; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsMsgCommonRequest*(r: var Reader): Ros2Aimdk_msgsMsgCommonRequest =
  result = initRos2Aimdk_msgsMsgCommonRequest()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
proc encode*(value: Ros2Aimdk_msgsMsgCommonRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonRequest*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonRequest =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsMsgCommonRequest(r)
  finish(r)
type Ros2Aimdk_msgsMsgResponseHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
  `code`*: int64
const Ros2Aimdk_msgsMsgResponseHeaderMaximumWireBytes* = 16
const Ros2Aimdk_msgsMsgResponseHeaderCodecIdentity* = "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90"
const Ros2Aimdk_msgsMsgResponseHeaderNativeType* = "aimdk_msgs/msg/ResponseHeader"
const Ros2Aimdk_msgsMsgResponseHeaderNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgResponseHeader*(): Ros2Aimdk_msgsMsgResponseHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`code` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgResponseHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putInteger(w,value.`code`)
proc readRos2Aimdk_msgsMsgResponseHeader*(r: var Reader): Ros2Aimdk_msgsMsgResponseHeader =
  result = initRos2Aimdk_msgsMsgResponseHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`code` = getInteger(r,int64)
proc encode*(value: Ros2Aimdk_msgsMsgResponseHeader): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgResponseHeader*(b: seq[byte]): Ros2Aimdk_msgsMsgResponseHeader =
  var r = initReader(b,16)
  result = readRos2Aimdk_msgsMsgResponseHeader(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonState* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgCommonStateMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgCommonStateCodecIdentity* = "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e"
const Ros2Aimdk_msgsMsgCommonStateNativeType* = "aimdk_msgs/msg/CommonState"
const Ros2Aimdk_msgsMsgCommonStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgCommonState_UNKNOWN*: int32 = 0'i32
const Ros2Aimdk_msgsMsgCommonState_SUCCESS*: int32 = 1'i32
const Ros2Aimdk_msgsMsgCommonState_FAILURE*: int32 = 2'i32
const Ros2Aimdk_msgsMsgCommonState_ABORTED*: int32 = 3'i32
const Ros2Aimdk_msgsMsgCommonState_TIMEOUT*: int32 = 4'i32
const Ros2Aimdk_msgsMsgCommonState_INVALID*: int32 = 5'i32
const Ros2Aimdk_msgsMsgCommonState_IN_MANUAL*: int32 = 6'i32
const Ros2Aimdk_msgsMsgCommonState_NOT_READY*: int32 = 100'i32
const Ros2Aimdk_msgsMsgCommonState_PENDING*: int32 = 200'i32
const Ros2Aimdk_msgsMsgCommonState_CREATED*: int32 = 300'i32
const Ros2Aimdk_msgsMsgCommonState_RUNNING*: int32 = 400'i32
proc initRos2Aimdk_msgsMsgCommonState*(): Ros2Aimdk_msgsMsgCommonState =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonState; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgCommonState*(r: var Reader): Ros2Aimdk_msgsMsgCommonState =
  result = initRos2Aimdk_msgsMsgCommonState()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgCommonState): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonState*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonState =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgCommonState(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonResponse* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `status`*: Ros2Aimdk_msgsMsgCommonState
  `message`*: string
const Ros2Aimdk_msgsMsgCommonResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsMsgCommonResponseCodecIdentity* = "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6"
const Ros2Aimdk_msgsMsgCommonResponseNativeType* = "aimdk_msgs/msg/CommonResponse"
const Ros2Aimdk_msgsMsgCommonResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCommonResponse*(): Ros2Aimdk_msgsMsgCommonResponse =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`status` = initRos2Aimdk_msgsMsgCommonState()
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonResponse; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`status`,w)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsMsgCommonResponse*(r: var Reader): Ros2Aimdk_msgsMsgCommonResponse =
  result = initRos2Aimdk_msgsMsgCommonResponse()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`status` = readRos2Aimdk_msgsMsgCommonState(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgCommonResponse): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonResponse =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsMsgCommonResponse(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonTaskRequest* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
  `task_id`*: uint64
const Ros2Aimdk_msgsMsgCommonTaskRequestMaximumWireBytes* = 16
const Ros2Aimdk_msgsMsgCommonTaskRequestCodecIdentity* = "UWVMROS1_0324951171581259cf0c1bfed23887bdbc0f7328659e5efdfde046612f3d5de5"
const Ros2Aimdk_msgsMsgCommonTaskRequestNativeType* = "aimdk_msgs/msg/CommonTaskRequest"
const Ros2Aimdk_msgsMsgCommonTaskRequestNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCommonTaskRequest*(): Ros2Aimdk_msgsMsgCommonTaskRequest =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
  result.`task_id` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonTaskRequest; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`task_id`)
proc readRos2Aimdk_msgsMsgCommonTaskRequest*(r: var Reader): Ros2Aimdk_msgsMsgCommonTaskRequest =
  result = initRos2Aimdk_msgsMsgCommonTaskRequest()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
  result.`task_id` = getInteger(r,uint64)
proc encode*(value: Ros2Aimdk_msgsMsgCommonTaskRequest): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonTaskRequest*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonTaskRequest =
  var r = initReader(b,16)
  result = readRos2Aimdk_msgsMsgCommonTaskRequest(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonTaskResponse* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `task_id`*: uint64
  `state`*: Ros2Aimdk_msgsMsgCommonState
const Ros2Aimdk_msgsMsgCommonTaskResponseMaximumWireBytes* = 28
const Ros2Aimdk_msgsMsgCommonTaskResponseCodecIdentity* = "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2"
const Ros2Aimdk_msgsMsgCommonTaskResponseNativeType* = "aimdk_msgs/msg/CommonTaskResponse"
const Ros2Aimdk_msgsMsgCommonTaskResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCommonTaskResponse*(): Ros2Aimdk_msgsMsgCommonTaskResponse =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`task_id` = 0
  result.`state` = initRos2Aimdk_msgsMsgCommonState()
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonTaskResponse; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`task_id`)
  writeFields(value.`state`,w)
proc readRos2Aimdk_msgsMsgCommonTaskResponse*(r: var Reader): Ros2Aimdk_msgsMsgCommonTaskResponse =
  result = initRos2Aimdk_msgsMsgCommonTaskResponse()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`task_id` = getInteger(r,uint64)
  result.`state` = readRos2Aimdk_msgsMsgCommonState(r)
proc encode*(value: Ros2Aimdk_msgsMsgCommonTaskResponse): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonTaskResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonTaskResponse =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
  finish(r)
type Ros2Aimdk_msgsMsgCurrentVersion* = object
  `version`*: string
  `name`*: string
  `files`*: seq[string]
  `download_timestamp_seconds`*: uint64
const Ros2Aimdk_msgsMsgCurrentVersionMaximumWireBytes* = 2388
const Ros2Aimdk_msgsMsgCurrentVersionCodecIdentity* = "UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd"
const Ros2Aimdk_msgsMsgCurrentVersionNativeType* = "aimdk_msgs/msg/CurrentVersion"
const Ros2Aimdk_msgsMsgCurrentVersionNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCurrentVersion*(): Ros2Aimdk_msgsMsgCurrentVersion =
  result.`version` = ""
  result.`name` = ""
  result.`files` = @[]
  result.`download_timestamp_seconds` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgCurrentVersion; w: var Writer) =
  putString(w,value.`version`,128)
  putString(w,value.`name`,128)
  if value.`files`.len > 16: fail(22)
  putInteger(w,uint32(value.`files`.len))
  for e in value.`files`:
    putString(w,e,128)
  putInteger(w,value.`download_timestamp_seconds`)
proc readRos2Aimdk_msgsMsgCurrentVersion*(r: var Reader): Ros2Aimdk_msgsMsgCurrentVersion =
  result = initRos2Aimdk_msgsMsgCurrentVersion()
  result.`version` = getString(r,128)
  result.`name` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`files` = newSeq[string](count2)
  for i in 0..<count2:
    result.`files`[i] = getString(r,128)
  result.`download_timestamp_seconds` = getInteger(r,uint64)
proc encode*(value: Ros2Aimdk_msgsMsgCurrentVersion): seq[byte] =
  var w = initWriter(2388)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCurrentVersion*(b: seq[byte]): Ros2Aimdk_msgsMsgCurrentVersion =
  var r = initReader(b,2388)
  result = readRos2Aimdk_msgsMsgCurrentVersion(r)
  finish(r)
type Ros2Aimdk_msgsMsgDiagnosticType* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgDiagnosticTypeMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgDiagnosticTypeCodecIdentity* = "UWVMROS1_41bcce9c343c12c64f0d2c28282926a734361f5eb02d39be0aae5c98ae926d92"
const Ros2Aimdk_msgsMsgDiagnosticTypeNativeType* = "aimdk_msgs/msg/DiagnosticType"
const Ros2Aimdk_msgsMsgDiagnosticTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgDiagnosticType_NORMAL*: int32 = 0'i32
const Ros2Aimdk_msgsMsgDiagnosticType_TRIGGER_APPEAR*: int32 = 1'i32
const Ros2Aimdk_msgsMsgDiagnosticType_TRIGGER_DISAPPEAR*: int32 = 2'i32
proc initRos2Aimdk_msgsMsgDiagnosticType*(): Ros2Aimdk_msgsMsgDiagnosticType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgDiagnosticType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgDiagnosticType*(r: var Reader): Ros2Aimdk_msgsMsgDiagnosticType =
  result = initRos2Aimdk_msgsMsgDiagnosticType()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgDiagnosticType): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgDiagnosticType*(b: seq[byte]): Ros2Aimdk_msgsMsgDiagnosticType =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgDiagnosticType(r)
  finish(r)
type Ros2Aimdk_msgsMsgDiagnosticInfo* = object
  `timestamp`*: uint64
  `first_timestamp`*: uint64
  `type`*: Ros2Aimdk_msgsMsgDiagnosticType
  `module_id`*: uint8
  `code`*: uint32
  `diag_code`*: uint64
  `info`*: string
const Ros2Aimdk_msgsMsgDiagnosticInfoMaximumWireBytes* = 165
const Ros2Aimdk_msgsMsgDiagnosticInfoCodecIdentity* = "UWVMROS1_989641e2dd8ef2e5e77f3455355ca8c1f08d1671874f1b920b0ae28352e20afa"
const Ros2Aimdk_msgsMsgDiagnosticInfoNativeType* = "aimdk_msgs/msg/DiagnosticInfo"
const Ros2Aimdk_msgsMsgDiagnosticInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgDiagnosticInfo*(): Ros2Aimdk_msgsMsgDiagnosticInfo =
  result.`timestamp` = 0
  result.`first_timestamp` = 0
  result.`type` = initRos2Aimdk_msgsMsgDiagnosticType()
  result.`module_id` = 0
  result.`code` = 0
  result.`diag_code` = 0
  result.`info` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgDiagnosticInfo; w: var Writer) =
  putInteger(w,value.`timestamp`)
  putInteger(w,value.`first_timestamp`)
  writeFields(value.`type`,w)
  putInteger(w,value.`module_id`)
  putInteger(w,value.`code`)
  putInteger(w,value.`diag_code`)
  putString(w,value.`info`,128)
proc readRos2Aimdk_msgsMsgDiagnosticInfo*(r: var Reader): Ros2Aimdk_msgsMsgDiagnosticInfo =
  result = initRos2Aimdk_msgsMsgDiagnosticInfo()
  result.`timestamp` = getInteger(r,uint64)
  result.`first_timestamp` = getInteger(r,uint64)
  result.`type` = readRos2Aimdk_msgsMsgDiagnosticType(r)
  result.`module_id` = getInteger(r,uint8)
  result.`code` = getInteger(r,uint32)
  result.`diag_code` = getInteger(r,uint64)
  result.`info` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgDiagnosticInfo): seq[byte] =
  var w = initWriter(165)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgDiagnosticInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgDiagnosticInfo =
  var r = initReader(b,165)
  result = readRos2Aimdk_msgsMsgDiagnosticInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgDiagnosticInfoArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `diagnostics`*: seq[Ros2Aimdk_msgsMsgDiagnosticInfo]
const Ros2Aimdk_msgsMsgDiagnosticInfoArrayMaximumWireBytes* = 816
const Ros2Aimdk_msgsMsgDiagnosticInfoArrayCodecIdentity* = "UWVMROS1_ea9c3022e38d875c94431babc75f890382089d9e2fb1a15573421d475d2d280b"
const Ros2Aimdk_msgsMsgDiagnosticInfoArrayNativeType* = "aimdk_msgs/msg/DiagnosticInfoArray"
const Ros2Aimdk_msgsMsgDiagnosticInfoArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgDiagnosticInfoArray*(): Ros2Aimdk_msgsMsgDiagnosticInfoArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`diagnostics` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgDiagnosticInfoArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`diagnostics`.len > 4: fail(22)
  putInteger(w,uint32(value.`diagnostics`.len))
  for e in value.`diagnostics`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgDiagnosticInfoArray*(r: var Reader): Ros2Aimdk_msgsMsgDiagnosticInfoArray =
  result = initRos2Aimdk_msgsMsgDiagnosticInfoArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`diagnostics` = newSeq[Ros2Aimdk_msgsMsgDiagnosticInfo](count1)
  for i in 0..<count1:
    result.`diagnostics`[i] = readRos2Aimdk_msgsMsgDiagnosticInfo(r)
proc encode*(value: Ros2Aimdk_msgsMsgDiagnosticInfoArray): seq[byte] =
  var w = initWriter(816)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgDiagnosticInfoArray*(b: seq[byte]): Ros2Aimdk_msgsMsgDiagnosticInfoArray =
  var r = initReader(b,816)
  result = readRos2Aimdk_msgsMsgDiagnosticInfoArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgDomainErrorState* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgDomainErrorStateMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgDomainErrorStateCodecIdentity* = "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231"
const Ros2Aimdk_msgsMsgDomainErrorStateNativeType* = "aimdk_msgs/msg/DomainErrorState"
const Ros2Aimdk_msgsMsgDomainErrorStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgDomainErrorState_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgDomainErrorState_DAMPING*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgDomainErrorState_POWERDOWN*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgDomainErrorState_DISABLE*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgDomainErrorState_DISCONNECT*: uint8 = 4'u8
proc initRos2Aimdk_msgsMsgDomainErrorState*(): Ros2Aimdk_msgsMsgDomainErrorState =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgDomainErrorState; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgDomainErrorState*(r: var Reader): Ros2Aimdk_msgsMsgDomainErrorState =
  result = initRos2Aimdk_msgsMsgDomainErrorState()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgDomainErrorState): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgDomainErrorState*(b: seq[byte]): Ros2Aimdk_msgsMsgDomainErrorState =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgDomainErrorState(r)
  finish(r)
type Ros2Aimdk_msgsMsgFaceEmojiStatus* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `e_path`*: string
  `e_path_list`*: seq[string]
  `e_id`*: uint8
  `mode`*: uint8
  `priority`*: int32
  `status`*: uint8
  `time_to_end_ms`*: float64
  `display_type`*: uint8
  `trace_id`*: string
  `error_code`*: int32
const Ros2Aimdk_msgsMsgFaceEmojiStatusMaximumWireBytes* = 2552
const Ros2Aimdk_msgsMsgFaceEmojiStatusCodecIdentity* = "UWVMROS1_a2a3346bea421c1c0756e8e74dd05564f2281d15762dd300189563e5bd0d3df4"
const Ros2Aimdk_msgsMsgFaceEmojiStatusNativeType* = "aimdk_msgs/msg/FaceEmojiStatus"
const Ros2Aimdk_msgsMsgFaceEmojiStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_IDLE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_START*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_RUNNING*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_FINISHED*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_STOPPED*: uint8 = 4'u8
proc initRos2Aimdk_msgsMsgFaceEmojiStatus*(): Ros2Aimdk_msgsMsgFaceEmojiStatus =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`e_path` = ""
  result.`e_path_list` = @[]
  result.`e_id` = 0
  result.`mode` = 0
  result.`priority` = 0
  result.`status` = 0
  result.`time_to_end_ms` = 0
  result.`display_type` = 0
  result.`trace_id` = ""
  result.`error_code` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgFaceEmojiStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`e_path`,128)
  if value.`e_path_list`.len > 16: fail(22)
  putInteger(w,uint32(value.`e_path_list`.len))
  for e in value.`e_path_list`:
    putString(w,e,128)
  putInteger(w,value.`e_id`)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
  putInteger(w,value.`status`)
  putFloat64(w,value.`time_to_end_ms`)
  putInteger(w,value.`display_type`)
  putString(w,value.`trace_id`,128)
  putInteger(w,value.`error_code`)
proc readRos2Aimdk_msgsMsgFaceEmojiStatus*(r: var Reader): Ros2Aimdk_msgsMsgFaceEmojiStatus =
  result = initRos2Aimdk_msgsMsgFaceEmojiStatus()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`e_path` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`e_path_list` = newSeq[string](count2)
  for i in 0..<count2:
    result.`e_path_list`[i] = getString(r,128)
  result.`e_id` = getInteger(r,uint8)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
  result.`status` = getInteger(r,uint8)
  result.`time_to_end_ms` = getFloat64(r)
  result.`display_type` = getInteger(r,uint8)
  result.`trace_id` = getString(r,128)
  result.`error_code` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgFaceEmojiStatus): seq[byte] =
  var w = initWriter(2552)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgFaceEmojiStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgFaceEmojiStatus =
  var r = initReader(b,2552)
  result = readRos2Aimdk_msgsMsgFaceEmojiStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgFixLineIntroState* = object
  `set_task_id`*: uint64
  `set_task_name`*: string
  `task_name`*: string
  `task_id`*: uint64
  `map_name`*: string
  `map_id`*: uint64
  `rest_site_number`*: uint32
  `fix_line_intro_state`*: uint8
  `cur_target_id`*: uint64
const Ros2Aimdk_msgsMsgFixLineIntroStateMaximumWireBytes* = 433
const Ros2Aimdk_msgsMsgFixLineIntroStateCodecIdentity* = "UWVMROS1_f7c7b38331d9b5f0e8268f8373e254d9e9f2becd5388d0efd30927e5c4916384"
const Ros2Aimdk_msgsMsgFixLineIntroStateNativeType* = "aimdk_msgs/msg/FixLineIntroState"
const Ros2Aimdk_msgsMsgFixLineIntroStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgFixLineIntroState_TM_FIX_LINE_INTRO_STATE_NAVI_TO_NEXT_SITE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgFixLineIntroState_TM_FIX_LINE_INTRO_STATE_SITE_ACTIONS*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgFixLineIntroState_TM_FIX_LINE_INTRO_STATE_NAVI_RETURN*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgFixLineIntroState_TM_FIX_LINE_INTRO_STATE_NAVI_TO_TARGET_POI*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgFixLineIntroState_TM_FIX_LINE_INTRO_STATE_POI_ACTIONS*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgFixLineIntroState_TM_FIX_LINE_INTRO_STATE_STANDBY_ACTIONS*: uint8 = 5'u8
proc initRos2Aimdk_msgsMsgFixLineIntroState*(): Ros2Aimdk_msgsMsgFixLineIntroState =
  result.`set_task_id` = 0
  result.`set_task_name` = ""
  result.`task_name` = ""
  result.`task_id` = 0
  result.`map_name` = ""
  result.`map_id` = 0
  result.`rest_site_number` = 0
  result.`fix_line_intro_state` = 0
  result.`cur_target_id` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgFixLineIntroState; w: var Writer) =
  putInteger(w,value.`set_task_id`)
  putString(w,value.`set_task_name`,128)
  putString(w,value.`task_name`,128)
  putInteger(w,value.`task_id`)
  putString(w,value.`map_name`,128)
  putInteger(w,value.`map_id`)
  putInteger(w,value.`rest_site_number`)
  putInteger(w,value.`fix_line_intro_state`)
  putInteger(w,value.`cur_target_id`)
proc readRos2Aimdk_msgsMsgFixLineIntroState*(r: var Reader): Ros2Aimdk_msgsMsgFixLineIntroState =
  result = initRos2Aimdk_msgsMsgFixLineIntroState()
  result.`set_task_id` = getInteger(r,uint64)
  result.`set_task_name` = getString(r,128)
  result.`task_name` = getString(r,128)
  result.`task_id` = getInteger(r,uint64)
  result.`map_name` = getString(r,128)
  result.`map_id` = getInteger(r,uint64)
  result.`rest_site_number` = getInteger(r,uint32)
  result.`fix_line_intro_state` = getInteger(r,uint8)
  result.`cur_target_id` = getInteger(r,uint64)
proc encode*(value: Ros2Aimdk_msgsMsgFixLineIntroState): seq[byte] =
  var w = initWriter(433)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgFixLineIntroState*(b: seq[byte]): Ros2Aimdk_msgsMsgFixLineIntroState =
  var r = initReader(b,433)
  result = readRos2Aimdk_msgsMsgFixLineIntroState(r)
  finish(r)
type Ros2Aimdk_msgsMsgFocusRequester* = object
  `pkg_name`*: string
  `priority`*: uint32
  `priority_weight`*: uint32
const Ros2Aimdk_msgsMsgFocusRequesterMaximumWireBytes* = 140
const Ros2Aimdk_msgsMsgFocusRequesterCodecIdentity* = "UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186"
const Ros2Aimdk_msgsMsgFocusRequesterNativeType* = "aimdk_msgs/msg/FocusRequester"
const Ros2Aimdk_msgsMsgFocusRequesterNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgFocusRequester*(): Ros2Aimdk_msgsMsgFocusRequester =
  result.`pkg_name` = ""
  result.`priority` = 0
  result.`priority_weight` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgFocusRequester; w: var Writer) =
  putString(w,value.`pkg_name`,128)
  putInteger(w,value.`priority`)
  putInteger(w,value.`priority_weight`)
proc readRos2Aimdk_msgsMsgFocusRequester*(r: var Reader): Ros2Aimdk_msgsMsgFocusRequester =
  result = initRos2Aimdk_msgsMsgFocusRequester()
  result.`pkg_name` = getString(r,128)
  result.`priority` = getInteger(r,uint32)
  result.`priority_weight` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgFocusRequester): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgFocusRequester*(b: seq[byte]): Ros2Aimdk_msgsMsgFocusRequester =
  var r = initReader(b,140)
  result = readRos2Aimdk_msgsMsgFocusRequester(r)
  finish(r)
type Ros2Aimdk_msgsMsgFocusResponse* = object
  `pkg_name`*: string
  `focus_gain`*: bool
const Ros2Aimdk_msgsMsgFocusResponseMaximumWireBytes* = 133
const Ros2Aimdk_msgsMsgFocusResponseCodecIdentity* = "UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c"
const Ros2Aimdk_msgsMsgFocusResponseNativeType* = "aimdk_msgs/msg/FocusResponse"
const Ros2Aimdk_msgsMsgFocusResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgFocusResponse*(): Ros2Aimdk_msgsMsgFocusResponse =
  result.`pkg_name` = ""
  result.`focus_gain` = false
proc writeFields*(value: Ros2Aimdk_msgsMsgFocusResponse; w: var Writer) =
  putString(w,value.`pkg_name`,128)
  putBool(w,value.`focus_gain`)
proc readRos2Aimdk_msgsMsgFocusResponse*(r: var Reader): Ros2Aimdk_msgsMsgFocusResponse =
  result = initRos2Aimdk_msgsMsgFocusResponse()
  result.`pkg_name` = getString(r,128)
  result.`focus_gain` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgFocusResponse): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgFocusResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgFocusResponse =
  var r = initReader(b,133)
  result = readRos2Aimdk_msgsMsgFocusResponse(r)
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
type Ros2Aimdk_msgsMsgQRCode* = object
  `code`*: int32
  `pose`*: Ros2Geometry_msgsMsgPose
const Ros2Aimdk_msgsMsgQRCodeMaximumWireBytes* = 60
const Ros2Aimdk_msgsMsgQRCodeCodecIdentity* = "UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd"
const Ros2Aimdk_msgsMsgQRCodeNativeType* = "aimdk_msgs/msg/QRCode"
const Ros2Aimdk_msgsMsgQRCodeNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgQRCode*(): Ros2Aimdk_msgsMsgQRCode =
  result.`code` = 0
  result.`pose` = initRos2Geometry_msgsMsgPose()
proc writeFields*(value: Ros2Aimdk_msgsMsgQRCode; w: var Writer) =
  putInteger(w,value.`code`)
  writeFields(value.`pose`,w)
proc readRos2Aimdk_msgsMsgQRCode*(r: var Reader): Ros2Aimdk_msgsMsgQRCode =
  result = initRos2Aimdk_msgsMsgQRCode()
  result.`code` = getInteger(r,int32)
  result.`pose` = readRos2Geometry_msgsMsgPose(r)
proc encode*(value: Ros2Aimdk_msgsMsgQRCode): seq[byte] =
  var w = initWriter(60)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgQRCode*(b: seq[byte]): Ros2Aimdk_msgsMsgQRCode =
  var r = initReader(b,60)
  result = readRos2Aimdk_msgsMsgQRCode(r)
  finish(r)
type Ros2Aimdk_msgsMsgHRPoint* = object
  `point_id`*: int32
  `pose`*: Ros2Geometry_msgsMsgPose
  `qr_list`*: seq[Ros2Aimdk_msgsMsgQRCode]
  `use_head`*: bool
const Ros2Aimdk_msgsMsgHRPointMaximumWireBytes* = 305
const Ros2Aimdk_msgsMsgHRPointCodecIdentity* = "UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645"
const Ros2Aimdk_msgsMsgHRPointNativeType* = "aimdk_msgs/msg/HRPoint"
const Ros2Aimdk_msgsMsgHRPointNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHRPoint*(): Ros2Aimdk_msgsMsgHRPoint =
  result.`point_id` = 0
  result.`pose` = initRos2Geometry_msgsMsgPose()
  result.`qr_list` = @[]
  result.`use_head` = false
proc writeFields*(value: Ros2Aimdk_msgsMsgHRPoint; w: var Writer) =
  putInteger(w,value.`point_id`)
  writeFields(value.`pose`,w)
  if value.`qr_list`.len > 4: fail(22)
  putInteger(w,uint32(value.`qr_list`.len))
  for e in value.`qr_list`:
    writeFields(e,w)
  putBool(w,value.`use_head`)
proc readRos2Aimdk_msgsMsgHRPoint*(r: var Reader): Ros2Aimdk_msgsMsgHRPoint =
  result = initRos2Aimdk_msgsMsgHRPoint()
  result.`point_id` = getInteger(r,int32)
  result.`pose` = readRos2Geometry_msgsMsgPose(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`qr_list` = newSeq[Ros2Aimdk_msgsMsgQRCode](count2)
  for i in 0..<count2:
    result.`qr_list`[i] = readRos2Aimdk_msgsMsgQRCode(r)
  result.`use_head` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgHRPoint): seq[byte] =
  var w = initWriter(305)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHRPoint*(b: seq[byte]): Ros2Aimdk_msgsMsgHRPoint =
  var r = initReader(b,305)
  result = readRos2Aimdk_msgsMsgHRPoint(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandCommand* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `acceleration`*: float64
  `deceleration`*: float64
  `effort`*: float64
const Ros2Aimdk_msgsMsgHandCommandMaximumWireBytes* = 172
const Ros2Aimdk_msgsMsgHandCommandCodecIdentity* = "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8"
const Ros2Aimdk_msgsMsgHandCommandNativeType* = "aimdk_msgs/msg/HandCommand"
const Ros2Aimdk_msgsMsgHandCommandNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandCommand*(): Ros2Aimdk_msgsMsgHandCommand =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
  result.`deceleration` = 0
  result.`effort` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgHandCommand; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
  putFloat64(w,value.`deceleration`)
  putFloat64(w,value.`effort`)
proc readRos2Aimdk_msgsMsgHandCommand*(r: var Reader): Ros2Aimdk_msgsMsgHandCommand =
  result = initRos2Aimdk_msgsMsgHandCommand()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
  result.`deceleration` = getFloat64(r)
  result.`effort` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgHandCommand): seq[byte] =
  var w = initWriter(172)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandCommand*(b: seq[byte]): Ros2Aimdk_msgsMsgHandCommand =
  var r = initReader(b,172)
  result = readRos2Aimdk_msgsMsgHandCommand(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandType* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgHandTypeMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgHandTypeCodecIdentity* = "UWVMROS1_07c4fd4188be6fccafc5808eb58094c528c1c7219f70850d2d77b05e1466daff"
const Ros2Aimdk_msgsMsgHandTypeNativeType* = "aimdk_msgs/msg/HandType"
const Ros2Aimdk_msgsMsgHandTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgHandType_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgHandType_NIMBLE_HANDS*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgHandType_CLAW*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgHandType_LEISAI_NIMBLE_HANDS*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgHandType_LITE_S_HANDS*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgHandType_ERROR*: uint8 = 255'u8
proc initRos2Aimdk_msgsMsgHandType*(): Ros2Aimdk_msgsMsgHandType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgHandType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgHandType*(r: var Reader): Ros2Aimdk_msgsMsgHandType =
  result = initRos2Aimdk_msgsMsgHandType()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgHandType): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandType*(b: seq[byte]): Ros2Aimdk_msgsMsgHandType =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgHandType(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandCommandArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `left_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `left_hands`*: seq[Ros2Aimdk_msgsMsgHandCommand]
  `right_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `right_hands`*: seq[Ros2Aimdk_msgsMsgHandCommand]
const Ros2Aimdk_msgsMsgHandCommandArrayMaximumWireBytes* = 1538
const Ros2Aimdk_msgsMsgHandCommandArrayCodecIdentity* = "UWVMROS1_a120a6c2b4a364c358f2f76227954c9cf5a81345ad812683eea78dfe3e3c29ec"
const Ros2Aimdk_msgsMsgHandCommandArrayNativeType* = "aimdk_msgs/msg/HandCommandArray"
const Ros2Aimdk_msgsMsgHandCommandArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandCommandArray*(): Ros2Aimdk_msgsMsgHandCommandArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`left_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`left_hands` = @[]
  result.`right_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`right_hands` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgHandCommandArray; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_hand_type`,w)
  if value.`left_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`left_hands`.len))
  for e in value.`left_hands`:
    writeFields(e,w)
  writeFields(value.`right_hand_type`,w)
  if value.`right_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`right_hands`.len))
  for e in value.`right_hands`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgHandCommandArray*(r: var Reader): Ros2Aimdk_msgsMsgHandCommandArray =
  result = initRos2Aimdk_msgsMsgHandCommandArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`left_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`left_hands` = newSeq[Ros2Aimdk_msgsMsgHandCommand](count2)
  for i in 0..<count2:
    result.`left_hands`[i] = readRos2Aimdk_msgsMsgHandCommand(r)
  result.`right_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`right_hands` = newSeq[Ros2Aimdk_msgsMsgHandCommand](count4)
  for i in 0..<count4:
    result.`right_hands`[i] = readRos2Aimdk_msgsMsgHandCommand(r)
proc encode*(value: Ros2Aimdk_msgsMsgHandCommandArray): seq[byte] =
  var w = initWriter(1538)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandCommandArray*(b: seq[byte]): Ros2Aimdk_msgsMsgHandCommandArray =
  var r = initReader(b,1538)
  result = readRos2Aimdk_msgsMsgHandCommandArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandState* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `effort`*: float64
  `state`*: int32
  `faultcode`*: int32
const Ros2Aimdk_msgsMsgHandStateMaximumWireBytes* = 164
const Ros2Aimdk_msgsMsgHandStateCodecIdentity* = "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c"
const Ros2Aimdk_msgsMsgHandStateNativeType* = "aimdk_msgs/msg/HandState"
const Ros2Aimdk_msgsMsgHandStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandState*(): Ros2Aimdk_msgsMsgHandState =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`effort` = 0
  result.`state` = 0
  result.`faultcode` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgHandState; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`effort`)
  putInteger(w,value.`state`)
  putInteger(w,value.`faultcode`)
proc readRos2Aimdk_msgsMsgHandState*(r: var Reader): Ros2Aimdk_msgsMsgHandState =
  result = initRos2Aimdk_msgsMsgHandState()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`effort` = getFloat64(r)
  result.`state` = getInteger(r,int32)
  result.`faultcode` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgHandState): seq[byte] =
  var w = initWriter(164)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandState*(b: seq[byte]): Ros2Aimdk_msgsMsgHandState =
  var r = initReader(b,164)
  result = readRos2Aimdk_msgsMsgHandState(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandTouchSensorData* = object
  `palm_touch_data`*: array[36,uint8]
  `back_of_hand_touch_data`*: array[36,uint8]
  `thumb_touch_data`*: array[16,uint8]
  `index_finger_touch_data`*: array[16,uint8]
  `middle_finger_touch_data`*: array[16,uint8]
  `ring_finger_touch_data`*: array[16,uint8]
  `little_finger_touch_data`*: array[16,uint8]
const Ros2Aimdk_msgsMsgHandTouchSensorDataMaximumWireBytes* = 152
const Ros2Aimdk_msgsMsgHandTouchSensorDataCodecIdentity* = "UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0"
const Ros2Aimdk_msgsMsgHandTouchSensorDataNativeType* = "aimdk_msgs/msg/HandTouchSensorData"
const Ros2Aimdk_msgsMsgHandTouchSensorDataNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandTouchSensorData*(): Ros2Aimdk_msgsMsgHandTouchSensorData =
  result.`palm_touch_data` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`back_of_hand_touch_data` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`thumb_touch_data` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`index_finger_touch_data` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`middle_finger_touch_data` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`ring_finger_touch_data` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`little_finger_touch_data` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Aimdk_msgsMsgHandTouchSensorData; w: var Writer) =
  for e in value.`palm_touch_data`:
    putInteger(w,e)
  for e in value.`back_of_hand_touch_data`:
    putInteger(w,e)
  for e in value.`thumb_touch_data`:
    putInteger(w,e)
  for e in value.`index_finger_touch_data`:
    putInteger(w,e)
  for e in value.`middle_finger_touch_data`:
    putInteger(w,e)
  for e in value.`ring_finger_touch_data`:
    putInteger(w,e)
  for e in value.`little_finger_touch_data`:
    putInteger(w,e)
proc readRos2Aimdk_msgsMsgHandTouchSensorData*(r: var Reader): Ros2Aimdk_msgsMsgHandTouchSensorData =
  result = initRos2Aimdk_msgsMsgHandTouchSensorData()
  let count0 = 36
  for i in 0..<count0:
    result.`palm_touch_data`[i] = getInteger(r,uint8)
  let count1 = 36
  for i in 0..<count1:
    result.`back_of_hand_touch_data`[i] = getInteger(r,uint8)
  let count2 = 16
  for i in 0..<count2:
    result.`thumb_touch_data`[i] = getInteger(r,uint8)
  let count3 = 16
  for i in 0..<count3:
    result.`index_finger_touch_data`[i] = getInteger(r,uint8)
  let count4 = 16
  for i in 0..<count4:
    result.`middle_finger_touch_data`[i] = getInteger(r,uint8)
  let count5 = 16
  for i in 0..<count5:
    result.`ring_finger_touch_data`[i] = getInteger(r,uint8)
  let count6 = 16
  for i in 0..<count6:
    result.`little_finger_touch_data`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgHandTouchSensorData): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandTouchSensorData*(b: seq[byte]): Ros2Aimdk_msgsMsgHandTouchSensorData =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsMsgHandTouchSensorData(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandStateArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `left_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `left_hands`*: seq[Ros2Aimdk_msgsMsgHandState]
  `left_touch_sensors`*: Ros2Aimdk_msgsMsgHandTouchSensorData
  `right_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `right_hands`*: seq[Ros2Aimdk_msgsMsgHandState]
  `right_touch_sensors`*: Ros2Aimdk_msgsMsgHandTouchSensorData
const Ros2Aimdk_msgsMsgHandStateArrayMaximumWireBytes* = 1778
const Ros2Aimdk_msgsMsgHandStateArrayCodecIdentity* = "UWVMROS1_c577a4f240ca6f9f26d82d8c8ba056b2877af96ab7dd774262637286c0302944"
const Ros2Aimdk_msgsMsgHandStateArrayNativeType* = "aimdk_msgs/msg/HandStateArray"
const Ros2Aimdk_msgsMsgHandStateArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandStateArray*(): Ros2Aimdk_msgsMsgHandStateArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`left_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`left_hands` = @[]
  result.`left_touch_sensors` = initRos2Aimdk_msgsMsgHandTouchSensorData()
  result.`right_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`right_hands` = @[]
  result.`right_touch_sensors` = initRos2Aimdk_msgsMsgHandTouchSensorData()
proc writeFields*(value: Ros2Aimdk_msgsMsgHandStateArray; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_hand_type`,w)
  if value.`left_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`left_hands`.len))
  for e in value.`left_hands`:
    writeFields(e,w)
  writeFields(value.`left_touch_sensors`,w)
  writeFields(value.`right_hand_type`,w)
  if value.`right_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`right_hands`.len))
  for e in value.`right_hands`:
    writeFields(e,w)
  writeFields(value.`right_touch_sensors`,w)
proc readRos2Aimdk_msgsMsgHandStateArray*(r: var Reader): Ros2Aimdk_msgsMsgHandStateArray =
  result = initRos2Aimdk_msgsMsgHandStateArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`left_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`left_hands` = newSeq[Ros2Aimdk_msgsMsgHandState](count2)
  for i in 0..<count2:
    result.`left_hands`[i] = readRos2Aimdk_msgsMsgHandState(r)
  result.`left_touch_sensors` = readRos2Aimdk_msgsMsgHandTouchSensorData(r)
  result.`right_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 4: fail(22)
  let count5 = int(rawcount5)
  result.`right_hands` = newSeq[Ros2Aimdk_msgsMsgHandState](count5)
  for i in 0..<count5:
    result.`right_hands`[i] = readRos2Aimdk_msgsMsgHandState(r)
  result.`right_touch_sensors` = readRos2Aimdk_msgsMsgHandTouchSensorData(r)
proc encode*(value: Ros2Aimdk_msgsMsgHandStateArray): seq[byte] =
  var w = initWriter(1778)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandStateArray*(b: seq[byte]): Ros2Aimdk_msgsMsgHandStateArray =
  var r = initReader(b,1778)
  result = readRos2Aimdk_msgsMsgHandStateArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgHdsEventQuery* = object
  `start_time`*: uint64
  `end_time`*: uint64
  `diag_codes`*: seq[uint64]
  `alert_codes`*: seq[string]
  `alert_locations`*: seq[string]
  `state`*: uint8
  `order_desc`*: bool
  `offset`*: uint32
  `limit`*: uint32
const Ros2Aimdk_msgsMsgHdsEventQueryMaximumWireBytes* = 4390
const Ros2Aimdk_msgsMsgHdsEventQueryCodecIdentity* = "UWVMROS1_bb210b5a804272bcf8eab7b9bd2217471997a8a4446032ddc0f0f0aca2734d29"
const Ros2Aimdk_msgsMsgHdsEventQueryNativeType* = "aimdk_msgs/msg/HdsEventQuery"
const Ros2Aimdk_msgsMsgHdsEventQueryNativeIdentity* = ""
const Ros2Aimdk_msgsMsgHdsEventQuery_STATE_ALL*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgHdsEventQuery_STATE_ACTIVE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgHdsEventQuery_STATE_RECOVERED*: uint8 = 2'u8
proc initRos2Aimdk_msgsMsgHdsEventQuery*(): Ros2Aimdk_msgsMsgHdsEventQuery =
  result.`start_time` = 0
  result.`end_time` = 0
  result.`diag_codes` = @[]
  result.`alert_codes` = @[]
  result.`alert_locations` = @[]
  result.`state` = 0
  result.`order_desc` = false
  result.`offset` = 0
  result.`limit` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgHdsEventQuery; w: var Writer) =
  putInteger(w,value.`start_time`)
  putInteger(w,value.`end_time`)
  if value.`diag_codes`.len > 16: fail(22)
  putInteger(w,uint32(value.`diag_codes`.len))
  for e in value.`diag_codes`:
    putInteger(w,e)
  if value.`alert_codes`.len > 16: fail(22)
  putInteger(w,uint32(value.`alert_codes`.len))
  for e in value.`alert_codes`:
    putString(w,e,128)
  if value.`alert_locations`.len > 16: fail(22)
  putInteger(w,uint32(value.`alert_locations`.len))
  for e in value.`alert_locations`:
    putString(w,e,128)
  putInteger(w,value.`state`)
  putBool(w,value.`order_desc`)
  putInteger(w,value.`offset`)
  putInteger(w,value.`limit`)
proc readRos2Aimdk_msgsMsgHdsEventQuery*(r: var Reader): Ros2Aimdk_msgsMsgHdsEventQuery =
  result = initRos2Aimdk_msgsMsgHdsEventQuery()
  result.`start_time` = getInteger(r,uint64)
  result.`end_time` = getInteger(r,uint64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`diag_codes` = newSeq[uint64](count2)
  for i in 0..<count2:
    result.`diag_codes`[i] = getInteger(r,uint64)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`alert_codes` = newSeq[string](count3)
  for i in 0..<count3:
    result.`alert_codes`[i] = getString(r,128)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 16: fail(22)
  let count4 = int(rawcount4)
  result.`alert_locations` = newSeq[string](count4)
  for i in 0..<count4:
    result.`alert_locations`[i] = getString(r,128)
  result.`state` = getInteger(r,uint8)
  result.`order_desc` = getBool(r)
  result.`offset` = getInteger(r,uint32)
  result.`limit` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgHdsEventQuery): seq[byte] =
  var w = initWriter(4390)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHdsEventQuery*(b: seq[byte]): Ros2Aimdk_msgsMsgHdsEventQuery =
  var r = initReader(b,4390)
  result = readRos2Aimdk_msgsMsgHdsEventQuery(r)
  finish(r)
type Ros2Aimdk_msgsMsgHdsEventRecord* = object
  `id`*: uint64
  `diag_code`*: uint64
  `alert_code`*: string
  `alert_location`*: string
  `first_timestamp`*: uint64
  `last_timestamp`*: uint64
  `recover_timestamp`*: uint64
  `duration_ns`*: uint64
  `recovered`*: bool
const Ros2Aimdk_msgsMsgHdsEventRecordMaximumWireBytes* = 313
const Ros2Aimdk_msgsMsgHdsEventRecordCodecIdentity* = "UWVMROS1_7fe68df37f67144d462e2c9e1a126dc539d5f7156c923a879d36215145445de4"
const Ros2Aimdk_msgsMsgHdsEventRecordNativeType* = "aimdk_msgs/msg/HdsEventRecord"
const Ros2Aimdk_msgsMsgHdsEventRecordNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHdsEventRecord*(): Ros2Aimdk_msgsMsgHdsEventRecord =
  result.`id` = 0
  result.`diag_code` = 0
  result.`alert_code` = ""
  result.`alert_location` = ""
  result.`first_timestamp` = 0
  result.`last_timestamp` = 0
  result.`recover_timestamp` = 0
  result.`duration_ns` = 0
  result.`recovered` = false
proc writeFields*(value: Ros2Aimdk_msgsMsgHdsEventRecord; w: var Writer) =
  putInteger(w,value.`id`)
  putInteger(w,value.`diag_code`)
  putString(w,value.`alert_code`,128)
  putString(w,value.`alert_location`,128)
  putInteger(w,value.`first_timestamp`)
  putInteger(w,value.`last_timestamp`)
  putInteger(w,value.`recover_timestamp`)
  putInteger(w,value.`duration_ns`)
  putBool(w,value.`recovered`)
proc readRos2Aimdk_msgsMsgHdsEventRecord*(r: var Reader): Ros2Aimdk_msgsMsgHdsEventRecord =
  result = initRos2Aimdk_msgsMsgHdsEventRecord()
  result.`id` = getInteger(r,uint64)
  result.`diag_code` = getInteger(r,uint64)
  result.`alert_code` = getString(r,128)
  result.`alert_location` = getString(r,128)
  result.`first_timestamp` = getInteger(r,uint64)
  result.`last_timestamp` = getInteger(r,uint64)
  result.`recover_timestamp` = getInteger(r,uint64)
  result.`duration_ns` = getInteger(r,uint64)
  result.`recovered` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgHdsEventRecord): seq[byte] =
  var w = initWriter(313)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHdsEventRecord*(b: seq[byte]): Ros2Aimdk_msgsMsgHdsEventRecord =
  var r = initReader(b,313)
  result = readRos2Aimdk_msgsMsgHdsEventRecord(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointCommand* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `effort`*: float64
  `stiffness`*: float64
  `damping`*: float64
const Ros2Aimdk_msgsMsgJointCommandMaximumWireBytes* = 172
const Ros2Aimdk_msgsMsgJointCommandCodecIdentity* = "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f"
const Ros2Aimdk_msgsMsgJointCommandNativeType* = "aimdk_msgs/msg/JointCommand"
const Ros2Aimdk_msgsMsgJointCommandNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointCommand*(): Ros2Aimdk_msgsMsgJointCommand =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`effort` = 0
  result.`stiffness` = 0
  result.`damping` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgJointCommand; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`effort`)
  putFloat64(w,value.`stiffness`)
  putFloat64(w,value.`damping`)
proc readRos2Aimdk_msgsMsgJointCommand*(r: var Reader): Ros2Aimdk_msgsMsgJointCommand =
  result = initRos2Aimdk_msgsMsgJointCommand()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`effort` = getFloat64(r)
  result.`stiffness` = getFloat64(r)
  result.`damping` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgJointCommand): seq[byte] =
  var w = initWriter(172)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointCommand*(b: seq[byte]): Ros2Aimdk_msgsMsgJointCommand =
  var r = initReader(b,172)
  result = readRos2Aimdk_msgsMsgJointCommand(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointCommandArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `joints`*: seq[Ros2Aimdk_msgsMsgJointCommand]
const Ros2Aimdk_msgsMsgJointCommandArrayMaximumWireBytes* = 11164
const Ros2Aimdk_msgsMsgJointCommandArrayCodecIdentity* = "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6"
const Ros2Aimdk_msgsMsgJointCommandArrayNativeType* = "aimdk_msgs/msg/JointCommandArray"
const Ros2Aimdk_msgsMsgJointCommandArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointCommandArray*(): Ros2Aimdk_msgsMsgJointCommandArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`joints` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgJointCommandArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joints`.len > 64: fail(22)
  putInteger(w,uint32(value.`joints`.len))
  for e in value.`joints`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgJointCommandArray*(r: var Reader): Ros2Aimdk_msgsMsgJointCommandArray =
  result = initRos2Aimdk_msgsMsgJointCommandArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`joints` = newSeq[Ros2Aimdk_msgsMsgJointCommand](count1)
  for i in 0..<count1:
    result.`joints`[i] = readRos2Aimdk_msgsMsgJointCommand(r)
proc encode*(value: Ros2Aimdk_msgsMsgJointCommandArray): seq[byte] =
  var w = initWriter(11164)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointCommandArray*(b: seq[byte]): Ros2Aimdk_msgsMsgJointCommandArray =
  var r = initReader(b,11164)
  result = readRos2Aimdk_msgsMsgJointCommandArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointState* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `effort`*: float64
  `error_code`*: uint16
const Ros2Aimdk_msgsMsgJointStateMaximumWireBytes* = 158
const Ros2Aimdk_msgsMsgJointStateCodecIdentity* = "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53"
const Ros2Aimdk_msgsMsgJointStateNativeType* = "aimdk_msgs/msg/JointState"
const Ros2Aimdk_msgsMsgJointStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointState*(): Ros2Aimdk_msgsMsgJointState =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`effort` = 0
  result.`error_code` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgJointState; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`effort`)
  putInteger(w,value.`error_code`)
proc readRos2Aimdk_msgsMsgJointState*(r: var Reader): Ros2Aimdk_msgsMsgJointState =
  result = initRos2Aimdk_msgsMsgJointState()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`effort` = getFloat64(r)
  result.`error_code` = getInteger(r,uint16)
proc encode*(value: Ros2Aimdk_msgsMsgJointState): seq[byte] =
  var w = initWriter(158)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointState*(b: seq[byte]): Ros2Aimdk_msgsMsgJointState =
  var r = initReader(b,158)
  result = readRos2Aimdk_msgsMsgJointState(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointStateArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `state`*: Ros2Aimdk_msgsMsgDomainErrorState
  `joints`*: seq[Ros2Aimdk_msgsMsgJointState]
const Ros2Aimdk_msgsMsgJointStateArrayMaximumWireBytes* = 10269
const Ros2Aimdk_msgsMsgJointStateArrayCodecIdentity* = "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e"
const Ros2Aimdk_msgsMsgJointStateArrayNativeType* = "aimdk_msgs/msg/JointStateArray"
const Ros2Aimdk_msgsMsgJointStateArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointStateArray*(): Ros2Aimdk_msgsMsgJointStateArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`state` = initRos2Aimdk_msgsMsgDomainErrorState()
  result.`joints` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgJointStateArray; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`state`,w)
  if value.`joints`.len > 64: fail(22)
  putInteger(w,uint32(value.`joints`.len))
  for e in value.`joints`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgJointStateArray*(r: var Reader): Ros2Aimdk_msgsMsgJointStateArray =
  result = initRos2Aimdk_msgsMsgJointStateArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`state` = readRos2Aimdk_msgsMsgDomainErrorState(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count2)
  for i in 0..<count2:
    result.`joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
proc encode*(value: Ros2Aimdk_msgsMsgJointStateArray): seq[byte] =
  var w = initWriter(10269)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointStateArray*(b: seq[byte]): Ros2Aimdk_msgsMsgJointStateArray =
  var r = initReader(b,10269)
  result = readRos2Aimdk_msgsMsgJointStateArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcAction* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcActionMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcActionCodecIdentity* = "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b"
const Ros2Aimdk_msgsMsgMcActionNativeType* = "aimdk_msgs/msg/McAction"
const Ros2Aimdk_msgsMsgMcActionNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcAction_PASSIVE_DEFAULT*: int32 = 1'i32
const Ros2Aimdk_msgsMsgMcAction_SOFT_EMERGENCY_STOP*: int32 = 2'i32
const Ros2Aimdk_msgsMsgMcAction_DAMPING_DEFAULT*: int32 = 3'i32
const Ros2Aimdk_msgsMsgMcAction_ZERO_TORQUE_DEFAULT*: int32 = 4'i32
const Ros2Aimdk_msgsMsgMcAction_JOINT_DEFAULT*: int32 = 100'i32
const Ros2Aimdk_msgsMsgMcAction_JOINT_FREEZE*: int32 = 101'i32
const Ros2Aimdk_msgsMsgMcAction_STAND_DEFAULT*: int32 = 200'i32
const Ros2Aimdk_msgsMsgMcAction_STAND_BODY_CONTROL*: int32 = 201'i32
const Ros2Aimdk_msgsMsgMcAction_LOCOMOTION_DEFAULT*: int32 = 300'i32
const Ros2Aimdk_msgsMsgMcAction_RUN_DEFAULT*: int32 = 301'i32
const Ros2Aimdk_msgsMsgMcAction_LOCOMOTION_STEP*: int32 = 302'i32
const Ros2Aimdk_msgsMsgMcAction_VR_REMOTE_CONTROLLER*: int32 = 400'i32
const Ros2Aimdk_msgsMsgMcAction_SIT_DOWN_DEFAULT*: int32 = 2000'i32
const Ros2Aimdk_msgsMsgMcAction_CROUCH_DOWN_DEFAULT*: int32 = 2002'i32
const Ros2Aimdk_msgsMsgMcAction_LIE_DOWN_DEFAULT*: int32 = 2004'i32
const Ros2Aimdk_msgsMsgMcAction_STAND_UP_DEFAULT*: int32 = 2005'i32
const Ros2Aimdk_msgsMsgMcAction_ASCEND_STAIRS*: int32 = 2006'i32
const Ros2Aimdk_msgsMsgMcAction_DESCEND_STAIRS*: int32 = 2008'i32
proc initRos2Aimdk_msgsMsgMcAction*(): Ros2Aimdk_msgsMsgMcAction =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcAction; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcAction*(r: var Reader): Ros2Aimdk_msgsMsgMcAction =
  result = initRos2Aimdk_msgsMsgMcAction()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcAction): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcAction*(b: seq[byte]): Ros2Aimdk_msgsMsgMcAction =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcAction(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcActionCommand* = object
  `action`*: Ros2Aimdk_msgsMsgMcAction
  `action_desc`*: string
const Ros2Aimdk_msgsMsgMcActionCommandMaximumWireBytes* = 136
const Ros2Aimdk_msgsMsgMcActionCommandCodecIdentity* = "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648"
const Ros2Aimdk_msgsMsgMcActionCommandNativeType* = "aimdk_msgs/msg/McActionCommand"
const Ros2Aimdk_msgsMsgMcActionCommandNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcActionCommand*(): Ros2Aimdk_msgsMsgMcActionCommand =
  result.`action` = initRos2Aimdk_msgsMsgMcAction()
  result.`action_desc` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgMcActionCommand; w: var Writer) =
  writeFields(value.`action`,w)
  putString(w,value.`action_desc`,128)
proc readRos2Aimdk_msgsMsgMcActionCommand*(r: var Reader): Ros2Aimdk_msgsMsgMcActionCommand =
  result = initRos2Aimdk_msgsMsgMcActionCommand()
  result.`action` = readRos2Aimdk_msgsMsgMcAction(r)
  result.`action_desc` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgMcActionCommand): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcActionCommand*(b: seq[byte]): Ros2Aimdk_msgsMsgMcActionCommand =
  var r = initReader(b,136)
  result = readRos2Aimdk_msgsMsgMcActionCommand(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcActionStatus* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcActionStatusMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcActionStatusCodecIdentity* = "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48"
const Ros2Aimdk_msgsMsgMcActionStatusNativeType* = "aimdk_msgs/msg/McActionStatus"
const Ros2Aimdk_msgsMsgMcActionStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcActionStatus_IDLE*: int32 = 0'i32
const Ros2Aimdk_msgsMsgMcActionStatus_RUNNING*: int32 = 100'i32
const Ros2Aimdk_msgsMsgMcActionStatus_TRANSITION*: int32 = 200'i32
proc initRos2Aimdk_msgsMsgMcActionStatus*(): Ros2Aimdk_msgsMsgMcActionStatus =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcActionStatus; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcActionStatus*(r: var Reader): Ros2Aimdk_msgsMsgMcActionStatus =
  result = initRos2Aimdk_msgsMsgMcActionStatus()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcActionStatus): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcActionStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgMcActionStatus =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcActionStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcActionInfo* = object
  `current_action`*: Ros2Aimdk_msgsMsgMcAction
  `action_desc`*: string
  `status`*: Ros2Aimdk_msgsMsgMcActionStatus
const Ros2Aimdk_msgsMsgMcActionInfoMaximumWireBytes* = 140
const Ros2Aimdk_msgsMsgMcActionInfoCodecIdentity* = "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9"
const Ros2Aimdk_msgsMsgMcActionInfoNativeType* = "aimdk_msgs/msg/McActionInfo"
const Ros2Aimdk_msgsMsgMcActionInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcActionInfo*(): Ros2Aimdk_msgsMsgMcActionInfo =
  result.`current_action` = initRos2Aimdk_msgsMsgMcAction()
  result.`action_desc` = ""
  result.`status` = initRos2Aimdk_msgsMsgMcActionStatus()
proc writeFields*(value: Ros2Aimdk_msgsMsgMcActionInfo; w: var Writer) =
  writeFields(value.`current_action`,w)
  putString(w,value.`action_desc`,128)
  writeFields(value.`status`,w)
proc readRos2Aimdk_msgsMsgMcActionInfo*(r: var Reader): Ros2Aimdk_msgsMsgMcActionInfo =
  result = initRos2Aimdk_msgsMsgMcActionInfo()
  result.`current_action` = readRos2Aimdk_msgsMsgMcAction(r)
  result.`action_desc` = getString(r,128)
  result.`status` = readRos2Aimdk_msgsMsgMcActionStatus(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcActionInfo): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcActionInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgMcActionInfo =
  var r = initReader(b,140)
  result = readRos2Aimdk_msgsMsgMcActionInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcBodyPoseStatus* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcBodyPoseStatusMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcBodyPoseStatusCodecIdentity* = "UWVMROS1_380976855f8c965a5c79a3688a1a2ce654dff9869441d061b464bda582fc7538"
const Ros2Aimdk_msgsMsgMcBodyPoseStatusNativeType* = "aimdk_msgs/msg/McBodyPoseStatus"
const Ros2Aimdk_msgsMsgMcBodyPoseStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcBodyPoseStatus_MC_BODY_POSE_UNKOWN*: int32 = 0'i32
const Ros2Aimdk_msgsMsgMcBodyPoseStatus_MC_BODY_POSE_STAND*: int32 = 1'i32
const Ros2Aimdk_msgsMsgMcBodyPoseStatus_MC_BODY_POSE_LIE_FACE_UP*: int32 = 2'i32
const Ros2Aimdk_msgsMsgMcBodyPoseStatus_MC_BODY_POSE_LIE_FACE_DOWN*: int32 = 3'i32
const Ros2Aimdk_msgsMsgMcBodyPoseStatus_MC_BODY_POSE_SIT*: int32 = 4'i32
const Ros2Aimdk_msgsMsgMcBodyPoseStatus_MC_BODY_POSE_SQUAT*: int32 = 5'i32
proc initRos2Aimdk_msgsMsgMcBodyPoseStatus*(): Ros2Aimdk_msgsMsgMcBodyPoseStatus =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcBodyPoseStatus; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcBodyPoseStatus*(r: var Reader): Ros2Aimdk_msgsMsgMcBodyPoseStatus =
  result = initRos2Aimdk_msgsMsgMcBodyPoseStatus()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcBodyPoseStatus): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcBodyPoseStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgMcBodyPoseStatus =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcBodyPoseStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcInputSource* = object
  `name`*: string
  `priority`*: int32
  `timeout`*: int32
const Ros2Aimdk_msgsMsgMcInputSourceMaximumWireBytes* = 140
const Ros2Aimdk_msgsMsgMcInputSourceCodecIdentity* = "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd"
const Ros2Aimdk_msgsMsgMcInputSourceNativeType* = "aimdk_msgs/msg/McInputSource"
const Ros2Aimdk_msgsMsgMcInputSourceNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcInputSource*(): Ros2Aimdk_msgsMsgMcInputSource =
  result.`name` = ""
  result.`priority` = 0
  result.`timeout` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcInputSource; w: var Writer) =
  putString(w,value.`name`,128)
  putInteger(w,value.`priority`)
  putInteger(w,value.`timeout`)
proc readRos2Aimdk_msgsMsgMcInputSource*(r: var Reader): Ros2Aimdk_msgsMsgMcInputSource =
  result = initRos2Aimdk_msgsMsgMcInputSource()
  result.`name` = getString(r,128)
  result.`priority` = getInteger(r,int32)
  result.`timeout` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcInputSource): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcInputSource*(b: seq[byte]): Ros2Aimdk_msgsMsgMcInputSource =
  var r = initReader(b,140)
  result = readRos2Aimdk_msgsMsgMcInputSource(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcHandStatus* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcHandStatusMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcHandStatusCodecIdentity* = "UWVMROS1_7be307301e74f7c3db44fa94093233d8ac8f7f463f1904bee8748bb6fe29c462"
const Ros2Aimdk_msgsMsgMcHandStatusNativeType* = "aimdk_msgs/msg/McHandStatus"
const Ros2Aimdk_msgsMsgMcHandStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcHandStatus_OMNI_HAND*: int32 = 1000'i32
const Ros2Aimdk_msgsMsgMcHandStatus_OMNI_PICKER*: int32 = 2000'i32
proc initRos2Aimdk_msgsMsgMcHandStatus*(): Ros2Aimdk_msgsMsgMcHandStatus =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcHandStatus; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcHandStatus*(r: var Reader): Ros2Aimdk_msgsMsgMcHandStatus =
  result = initRos2Aimdk_msgsMsgMcHandStatus()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcHandStatus): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcHandStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgMcHandStatus =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcHandStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcRuntimeModel* = object
  `waist_status`*: bool
  `left_hand_status`*: Ros2Aimdk_msgsMsgMcHandStatus
  `right_hand_status`*: Ros2Aimdk_msgsMsgMcHandStatus
const Ros2Aimdk_msgsMsgMcRuntimeModelMaximumWireBytes* = 9
const Ros2Aimdk_msgsMsgMcRuntimeModelCodecIdentity* = "UWVMROS1_6a9196eaf82e74b282dfde8e9d7bf2f21712aeb537b0a6c8783445e5941254b4"
const Ros2Aimdk_msgsMsgMcRuntimeModelNativeType* = "aimdk_msgs/msg/McRuntimeModel"
const Ros2Aimdk_msgsMsgMcRuntimeModelNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcRuntimeModel*(): Ros2Aimdk_msgsMsgMcRuntimeModel =
  result.`waist_status` = false
  result.`left_hand_status` = initRos2Aimdk_msgsMsgMcHandStatus()
  result.`right_hand_status` = initRos2Aimdk_msgsMsgMcHandStatus()
proc writeFields*(value: Ros2Aimdk_msgsMsgMcRuntimeModel; w: var Writer) =
  putBool(w,value.`waist_status`)
  writeFields(value.`left_hand_status`,w)
  writeFields(value.`right_hand_status`,w)
proc readRos2Aimdk_msgsMsgMcRuntimeModel*(r: var Reader): Ros2Aimdk_msgsMsgMcRuntimeModel =
  result = initRos2Aimdk_msgsMsgMcRuntimeModel()
  result.`waist_status` = getBool(r)
  result.`left_hand_status` = readRos2Aimdk_msgsMsgMcHandStatus(r)
  result.`right_hand_status` = readRos2Aimdk_msgsMsgMcHandStatus(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcRuntimeModel): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcRuntimeModel*(b: seq[byte]): Ros2Aimdk_msgsMsgMcRuntimeModel =
  var r = initReader(b,9)
  result = readRos2Aimdk_msgsMsgMcRuntimeModel(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcPlayerState* = object
  `value`*: uint32
const Ros2Aimdk_msgsMsgMcPlayerStateMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcPlayerStateCodecIdentity* = "UWVMROS1_a56c1b72e364a1b70243f6280dfea28a63f8533118b491ea67e968c27614a412"
const Ros2Aimdk_msgsMsgMcPlayerStateNativeType* = "aimdk_msgs/msg/McPlayerState"
const Ros2Aimdk_msgsMsgMcPlayerStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcPlayerState_IDLE*: uint32 = 0'u32
const Ros2Aimdk_msgsMsgMcPlayerState_PRE_PLAYING*: uint32 = 1'u32
const Ros2Aimdk_msgsMsgMcPlayerState_PLAYING*: uint32 = 2'u32
const Ros2Aimdk_msgsMsgMcPlayerState_INTERRUPTING*: uint32 = 3'u32
const Ros2Aimdk_msgsMsgMcPlayerState_ERROR*: uint32 = 4'u32
proc initRos2Aimdk_msgsMsgMcPlayerState*(): Ros2Aimdk_msgsMsgMcPlayerState =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcPlayerState; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcPlayerState*(r: var Reader): Ros2Aimdk_msgsMsgMcPlayerState =
  result = initRos2Aimdk_msgsMsgMcPlayerState()
  result.`value` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgMcPlayerState): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcPlayerState*(b: seq[byte]): Ros2Aimdk_msgsMsgMcPlayerState =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcPlayerState(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcControlArea* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcControlAreaMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcControlAreaCodecIdentity* = "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9"
const Ros2Aimdk_msgsMsgMcControlAreaNativeType* = "aimdk_msgs/msg/McControlArea"
const Ros2Aimdk_msgsMsgMcControlAreaNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcControlArea_NONE*: int32 = 0'i32
const Ros2Aimdk_msgsMsgMcControlArea_LEFT_HAND*: int32 = 1'i32
const Ros2Aimdk_msgsMsgMcControlArea_RIGHT_HAND*: int32 = 2'i32
const Ros2Aimdk_msgsMsgMcControlArea_HEAD*: int32 = 4'i32
const Ros2Aimdk_msgsMsgMcControlArea_WAIST*: int32 = 8'i32
proc initRos2Aimdk_msgsMsgMcControlArea*(): Ros2Aimdk_msgsMsgMcControlArea =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcControlArea; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcControlArea*(r: var Reader): Ros2Aimdk_msgsMsgMcControlArea =
  result = initRos2Aimdk_msgsMsgMcControlArea()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcControlArea): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcControlArea*(b: seq[byte]): Ros2Aimdk_msgsMsgMcControlArea =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcControlArea(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcMotionType* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcMotionTypeMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcMotionTypeCodecIdentity* = "UWVMROS1_85a53e7c11c40212c3a2972b1c36ac4bfe9cc7861985b5966459c71fbc80a9da"
const Ros2Aimdk_msgsMsgMcMotionTypeNativeType* = "aimdk_msgs/msg/McMotionType"
const Ros2Aimdk_msgsMsgMcMotionTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcMotionType_NONE*: int32 = 0'i32
const Ros2Aimdk_msgsMsgMcMotionType_ANIMATION*: int32 = 1'i32
const Ros2Aimdk_msgsMsgMcMotionType_MIMIC*: int32 = 2'i32
const Ros2Aimdk_msgsMsgMcMotionType_FOUNDATION*: int32 = 3'i32
proc initRos2Aimdk_msgsMsgMcMotionType*(): Ros2Aimdk_msgsMsgMcMotionType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcMotionType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcMotionType*(r: var Reader): Ros2Aimdk_msgsMsgMcMotionType =
  result = initRos2Aimdk_msgsMsgMcMotionType()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcMotionType): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcMotionType*(b: seq[byte]): Ros2Aimdk_msgsMsgMcMotionType =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcMotionType(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcMotionStatus* = object
  `player_state`*: Ros2Aimdk_msgsMsgMcPlayerState
  `control_area`*: Ros2Aimdk_msgsMsgMcControlArea
  `motion`*: string
  `type`*: Ros2Aimdk_msgsMsgMcMotionType
const Ros2Aimdk_msgsMsgMcMotionStatusMaximumWireBytes* = 144
const Ros2Aimdk_msgsMsgMcMotionStatusCodecIdentity* = "UWVMROS1_4f80c178589dc4068c65c3243dbb4bd954bbcd81f1a2f0f8f844c910dea531ea"
const Ros2Aimdk_msgsMsgMcMotionStatusNativeType* = "aimdk_msgs/msg/McMotionStatus"
const Ros2Aimdk_msgsMsgMcMotionStatusNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcMotionStatus*(): Ros2Aimdk_msgsMsgMcMotionStatus =
  result.`player_state` = initRos2Aimdk_msgsMsgMcPlayerState()
  result.`control_area` = initRos2Aimdk_msgsMsgMcControlArea()
  result.`motion` = ""
  result.`type` = initRos2Aimdk_msgsMsgMcMotionType()
proc writeFields*(value: Ros2Aimdk_msgsMsgMcMotionStatus; w: var Writer) =
  writeFields(value.`player_state`,w)
  writeFields(value.`control_area`,w)
  putString(w,value.`motion`,128)
  writeFields(value.`type`,w)
proc readRos2Aimdk_msgsMsgMcMotionStatus*(r: var Reader): Ros2Aimdk_msgsMsgMcMotionStatus =
  result = initRos2Aimdk_msgsMsgMcMotionStatus()
  result.`player_state` = readRos2Aimdk_msgsMsgMcPlayerState(r)
  result.`control_area` = readRos2Aimdk_msgsMsgMcControlArea(r)
  result.`motion` = getString(r,128)
  result.`type` = readRos2Aimdk_msgsMsgMcMotionType(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcMotionStatus): seq[byte] =
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcMotionStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgMcMotionStatus =
  var r = initReader(b,144)
  result = readRos2Aimdk_msgsMsgMcMotionStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcServoStatus* = object
  `squat_enable`*: bool
  `squat_offset`*: float64
  `squat_limit`*: uint32
  `head_yaw_offset`*: float64
  `head_pitch_offset`*: float64
  `waist_yaw_offset`*: float64
  `waist_pitch_offset`*: float64
  `waist_roll_offset`*: float64
const Ros2Aimdk_msgsMsgMcServoStatusMaximumWireBytes* = 53
const Ros2Aimdk_msgsMsgMcServoStatusCodecIdentity* = "UWVMROS1_824f5944e9dce34f459ad368cfc37e78e39a0589ff5f278417064773720b1ffa"
const Ros2Aimdk_msgsMsgMcServoStatusNativeType* = "aimdk_msgs/msg/McServoStatus"
const Ros2Aimdk_msgsMsgMcServoStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcServoStatus_BEFORE_LIMIT*: uint32 = 0'u32
const Ros2Aimdk_msgsMsgMcServoStatus_LOWER_LIMIT*: uint32 = 1'u32
const Ros2Aimdk_msgsMsgMcServoStatus_UPPER_LIMIT*: uint32 = 2'u32
proc initRos2Aimdk_msgsMsgMcServoStatus*(): Ros2Aimdk_msgsMsgMcServoStatus =
  result.`squat_enable` = false
  result.`squat_offset` = 0
  result.`squat_limit` = 0
  result.`head_yaw_offset` = 0
  result.`head_pitch_offset` = 0
  result.`waist_yaw_offset` = 0
  result.`waist_pitch_offset` = 0
  result.`waist_roll_offset` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcServoStatus; w: var Writer) =
  putBool(w,value.`squat_enable`)
  putFloat64(w,value.`squat_offset`)
  putInteger(w,value.`squat_limit`)
  putFloat64(w,value.`head_yaw_offset`)
  putFloat64(w,value.`head_pitch_offset`)
  putFloat64(w,value.`waist_yaw_offset`)
  putFloat64(w,value.`waist_pitch_offset`)
  putFloat64(w,value.`waist_roll_offset`)
proc readRos2Aimdk_msgsMsgMcServoStatus*(r: var Reader): Ros2Aimdk_msgsMsgMcServoStatus =
  result = initRos2Aimdk_msgsMsgMcServoStatus()
  result.`squat_enable` = getBool(r)
  result.`squat_offset` = getFloat64(r)
  result.`squat_limit` = getInteger(r,uint32)
  result.`head_yaw_offset` = getFloat64(r)
  result.`head_pitch_offset` = getFloat64(r)
  result.`waist_yaw_offset` = getFloat64(r)
  result.`waist_pitch_offset` = getFloat64(r)
  result.`waist_roll_offset` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcServoStatus): seq[byte] =
  var w = initWriter(53)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcServoStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgMcServoStatus =
  var r = initReader(b,53)
  result = readRos2Aimdk_msgsMsgMcServoStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcFsmState* = object
  `current_state`*: uint32
const Ros2Aimdk_msgsMsgMcFsmStateMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcFsmStateCodecIdentity* = "UWVMROS1_2a3f0e37d5f835c8f80adc07e09bc9a162e869f662dc3ce440946b9e0ca9b047"
const Ros2Aimdk_msgsMsgMcFsmStateNativeType* = "aimdk_msgs/msg/McFsmState"
const Ros2Aimdk_msgsMsgMcFsmStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcFsmState_UNKNOWN*: uint32 = 0'u32
const Ros2Aimdk_msgsMsgMcFsmState_STARTING*: uint32 = 1'u32
const Ros2Aimdk_msgsMsgMcFsmState_STABLE*: uint32 = 2'u32
const Ros2Aimdk_msgsMsgMcFsmState_MOVING*: uint32 = 3'u32
const Ros2Aimdk_msgsMsgMcFsmState_SAFE*: uint32 = 4'u32
const Ros2Aimdk_msgsMsgMcFsmState_SPECIAL*: uint32 = 5'u32
const Ros2Aimdk_msgsMsgMcFsmState_TEST*: uint32 = 6'u32
proc initRos2Aimdk_msgsMsgMcFsmState*(): Ros2Aimdk_msgsMsgMcFsmState =
  result.`current_state` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcFsmState; w: var Writer) =
  putInteger(w,value.`current_state`)
proc readRos2Aimdk_msgsMsgMcFsmState*(r: var Reader): Ros2Aimdk_msgsMsgMcFsmState =
  result = initRos2Aimdk_msgsMsgMcFsmState()
  result.`current_state` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgMcFsmState): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcFsmState*(b: seq[byte]): Ros2Aimdk_msgsMsgMcFsmState =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcFsmState(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcLocomotionSpeedMode* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcLocomotionSpeedModeMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcLocomotionSpeedModeCodecIdentity* = "UWVMROS1_52cf8b8e1e9a931076f9ed719deaf02d4b0c15647ff2ab8109579fb29d5fc6d6"
const Ros2Aimdk_msgsMsgMcLocomotionSpeedModeNativeType* = "aimdk_msgs/msg/McLocomotionSpeedMode"
const Ros2Aimdk_msgsMsgMcLocomotionSpeedModeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcLocomotionSpeedMode_MC_LOCOMOTION_NONE_SPEED*: int32 = 0'i32
const Ros2Aimdk_msgsMsgMcLocomotionSpeedMode_MC_LOCOMOTION_LOW_SPEED*: int32 = 1'i32
const Ros2Aimdk_msgsMsgMcLocomotionSpeedMode_MC_LOCOMOTION_MEIDUM_SPEED*: int32 = 2'i32
const Ros2Aimdk_msgsMsgMcLocomotionSpeedMode_MC_LOCOMOTION_HIGH_SPEED*: int32 = 3'i32
proc initRos2Aimdk_msgsMsgMcLocomotionSpeedMode*(): Ros2Aimdk_msgsMsgMcLocomotionSpeedMode =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcLocomotionSpeedMode*(r: var Reader): Ros2Aimdk_msgsMsgMcLocomotionSpeedMode =
  result = initRos2Aimdk_msgsMsgMcLocomotionSpeedMode()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcLocomotionSpeedMode*(b: seq[byte]): Ros2Aimdk_msgsMsgMcLocomotionSpeedMode =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcLocomotionSpeedMode(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds* = object
  `min_value`*: float64
  `max_value`*: float64
const Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsMaximumWireBytes* = 16
const Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsCodecIdentity* = "UWVMROS1_9ba7b1992f315906d05b9f3850d31cdf1d5c422cbc3224a45b93c76c9368804d"
const Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsNativeType* = "aimdk_msgs/msg/McLocomotionSpeedBounds"
const Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcLocomotionSpeedBounds*(): Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds =
  result.`min_value` = 0
  result.`max_value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds; w: var Writer) =
  putFloat64(w,value.`min_value`)
  putFloat64(w,value.`max_value`)
proc readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds*(r: var Reader): Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds =
  result = initRos2Aimdk_msgsMsgMcLocomotionSpeedBounds()
  result.`min_value` = getFloat64(r)
  result.`max_value` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds*(b: seq[byte]): Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds =
  var r = initReader(b,16)
  result = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus* = object
  `speed_mode`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode
  `forward_bounds`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
  `lateral_bounds`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
  `angular_bounds`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds
const Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusMaximumWireBytes* = 52
const Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusCodecIdentity* = "UWVMROS1_91837c9a2783f2f2cdc09c1efc8d96a5be0bca7e43bf513a3d47162222fc8e79"
const Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusNativeType* = "aimdk_msgs/msg/McLocomotionSpeedStatus"
const Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus*(): Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus =
  result.`speed_mode` = initRos2Aimdk_msgsMsgMcLocomotionSpeedMode()
  result.`forward_bounds` = initRos2Aimdk_msgsMsgMcLocomotionSpeedBounds()
  result.`lateral_bounds` = initRos2Aimdk_msgsMsgMcLocomotionSpeedBounds()
  result.`angular_bounds` = initRos2Aimdk_msgsMsgMcLocomotionSpeedBounds()
proc writeFields*(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus; w: var Writer) =
  writeFields(value.`speed_mode`,w)
  writeFields(value.`forward_bounds`,w)
  writeFields(value.`lateral_bounds`,w)
  writeFields(value.`angular_bounds`,w)
proc readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus*(r: var Reader): Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus =
  result = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
  result.`speed_mode` = readRos2Aimdk_msgsMsgMcLocomotionSpeedMode(r)
  result.`forward_bounds` = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(r)
  result.`lateral_bounds` = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(r)
  result.`angular_bounds` = readRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus): seq[byte] =
  var w = initWriter(52)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus =
  var r = initReader(b,52)
  result = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcCommonState* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `input_source`*: Ros2Aimdk_msgsMsgMcInputSource
  `action_info`*: Ros2Aimdk_msgsMsgMcActionInfo
  `runtime_model`*: Ros2Aimdk_msgsMsgMcRuntimeModel
  `motion_status`*: Ros2Aimdk_msgsMsgMcMotionStatus
  `servo_status`*: Ros2Aimdk_msgsMsgMcServoStatus
  `fsm_state`*: Ros2Aimdk_msgsMsgMcFsmState
  `body_status`*: Ros2Aimdk_msgsMsgMcBodyPoseStatus
  `speed_status`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
const Ros2Aimdk_msgsMsgMcCommonStateMaximumWireBytes* = 698
const Ros2Aimdk_msgsMsgMcCommonStateCodecIdentity* = "UWVMROS1_ae0a72b7040926755e1b0542d34b6e928bedc20643ad5af9704ce86648c25558"
const Ros2Aimdk_msgsMsgMcCommonStateNativeType* = "aimdk_msgs/msg/McCommonState"
const Ros2Aimdk_msgsMsgMcCommonStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcCommonState*(): Ros2Aimdk_msgsMsgMcCommonState =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`input_source` = initRos2Aimdk_msgsMsgMcInputSource()
  result.`action_info` = initRos2Aimdk_msgsMsgMcActionInfo()
  result.`runtime_model` = initRos2Aimdk_msgsMsgMcRuntimeModel()
  result.`motion_status` = initRos2Aimdk_msgsMsgMcMotionStatus()
  result.`servo_status` = initRos2Aimdk_msgsMsgMcServoStatus()
  result.`fsm_state` = initRos2Aimdk_msgsMsgMcFsmState()
  result.`body_status` = initRos2Aimdk_msgsMsgMcBodyPoseStatus()
  result.`speed_status` = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
proc writeFields*(value: Ros2Aimdk_msgsMsgMcCommonState; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`input_source`,w)
  writeFields(value.`action_info`,w)
  writeFields(value.`runtime_model`,w)
  writeFields(value.`motion_status`,w)
  writeFields(value.`servo_status`,w)
  writeFields(value.`fsm_state`,w)
  writeFields(value.`body_status`,w)
  writeFields(value.`speed_status`,w)
proc readRos2Aimdk_msgsMsgMcCommonState*(r: var Reader): Ros2Aimdk_msgsMsgMcCommonState =
  result = initRos2Aimdk_msgsMsgMcCommonState()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`input_source` = readRos2Aimdk_msgsMsgMcInputSource(r)
  result.`action_info` = readRos2Aimdk_msgsMsgMcActionInfo(r)
  result.`runtime_model` = readRos2Aimdk_msgsMsgMcRuntimeModel(r)
  result.`motion_status` = readRos2Aimdk_msgsMsgMcMotionStatus(r)
  result.`servo_status` = readRos2Aimdk_msgsMsgMcServoStatus(r)
  result.`fsm_state` = readRos2Aimdk_msgsMsgMcFsmState(r)
  result.`body_status` = readRos2Aimdk_msgsMsgMcBodyPoseStatus(r)
  result.`speed_status` = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcCommonState): seq[byte] =
  var w = initWriter(698)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcCommonState*(b: seq[byte]): Ros2Aimdk_msgsMsgMcCommonState =
  var r = initReader(b,698)
  result = readRos2Aimdk_msgsMsgMcCommonState(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcInputAction* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcInputActionMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcInputActionCodecIdentity* = "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9"
const Ros2Aimdk_msgsMsgMcInputActionNativeType* = "aimdk_msgs/msg/McInputAction"
const Ros2Aimdk_msgsMsgMcInputActionNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ADD*: int32 = 1001'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_MODIFY*: int32 = 1002'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DELETE*: int32 = 1003'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ENABLE*: int32 = 2001'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DISABLE*: int32 = 2002'i32
proc initRos2Aimdk_msgsMsgMcInputAction*(): Ros2Aimdk_msgsMsgMcInputAction =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcInputAction; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcInputAction*(r: var Reader): Ros2Aimdk_msgsMsgMcInputAction =
  result = initRos2Aimdk_msgsMsgMcInputAction()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcInputAction): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcInputAction*(b: seq[byte]): Ros2Aimdk_msgsMsgMcInputAction =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcInputAction(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcLocomotionVelocity* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `source`*: string
  `forward_velocity`*: float64
  `lateral_velocity`*: float64
  `angular_velocity`*: float64
const Ros2Aimdk_msgsMsgMcLocomotionVelocityMaximumWireBytes* = 308
const Ros2Aimdk_msgsMsgMcLocomotionVelocityCodecIdentity* = "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00"
const Ros2Aimdk_msgsMsgMcLocomotionVelocityNativeType* = "aimdk_msgs/msg/McLocomotionVelocity"
const Ros2Aimdk_msgsMsgMcLocomotionVelocityNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcLocomotionVelocity*(): Ros2Aimdk_msgsMsgMcLocomotionVelocity =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`source` = ""
  result.`forward_velocity` = 0
  result.`lateral_velocity` = 0
  result.`angular_velocity` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcLocomotionVelocity; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`source`,128)
  putFloat64(w,value.`forward_velocity`)
  putFloat64(w,value.`lateral_velocity`)
  putFloat64(w,value.`angular_velocity`)
proc readRos2Aimdk_msgsMsgMcLocomotionVelocity*(r: var Reader): Ros2Aimdk_msgsMsgMcLocomotionVelocity =
  result = initRos2Aimdk_msgsMsgMcLocomotionVelocity()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`source` = getString(r,128)
  result.`forward_velocity` = getFloat64(r)
  result.`lateral_velocity` = getFloat64(r)
  result.`angular_velocity` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcLocomotionVelocity): seq[byte] =
  var w = initWriter(308)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcLocomotionVelocity*(b: seq[byte]): Ros2Aimdk_msgsMsgMcLocomotionVelocity =
  var r = initReader(b,308)
  result = readRos2Aimdk_msgsMsgMcLocomotionVelocity(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcPresetMotion* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcPresetMotionMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcPresetMotionCodecIdentity* = "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153"
const Ros2Aimdk_msgsMsgMcPresetMotionNativeType* = "aimdk_msgs/msg/McPresetMotion"
const Ros2Aimdk_msgsMsgMcPresetMotionNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcPresetMotion_RAISE_HAND*: int32 = 1001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_WAVE_HAND*: int32 = 1002'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HAND*: int32 = 1003'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_FLYING_KISS_HAND*: int32 = 1004'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_CLAP_HAND*: int32 = 1008'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_TURN_WAVE_HAND*: int32 = 2001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BOW*: int32 = 3001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIKE*: int32 = 3002'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_YE*: int32 = 3003'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SWEATHEART*: int32 = 3004'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_SALUTE*: int32 = 1013'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SAD*: int32 = 3006'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIGHTWAVE*: int32 = 3007'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HUG*: int32 = 3008'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HANDX*: int32 = 3009'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHESTWAVE*: int32 = 3010'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHEER*: int32 = 3011'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BLOWKISS*: int32 = 3012'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE1*: int32 = 3013'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE2*: int32 = 3014'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_HITCLAP*: int32 = 3015'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SPEAK*: int32 = 3016'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_CLIPFIST*: int32 = 1009'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOPOSTURE*: int32 = 3018'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOTRIPPLEPOSTURE*: int32 = 3019'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_POINT_HEAD*: int32 = 4001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HEAD*: int32 = 4002'i32
proc initRos2Aimdk_msgsMsgMcPresetMotion*(): Ros2Aimdk_msgsMsgMcPresetMotion =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcPresetMotion; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcPresetMotion*(r: var Reader): Ros2Aimdk_msgsMsgMcPresetMotion =
  result = initRos2Aimdk_msgsMsgMcPresetMotion()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcPresetMotion): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcPresetMotion*(b: seq[byte]): Ros2Aimdk_msgsMsgMcPresetMotion =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcPresetMotion(r)
  finish(r)
type Ros2Geometry_msgsMsgPose2D* = object
  `x`*: float64
  `y`*: float64
  `theta`*: float64
const Ros2Geometry_msgsMsgPose2DMaximumWireBytes* = 24
const Ros2Geometry_msgsMsgPose2DCodecIdentity* = "UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce"
const Ros2Geometry_msgsMsgPose2DNativeType* = "geometry_msgs/msg/Pose2D"
const Ros2Geometry_msgsMsgPose2DNativeIdentity* = ""
proc initRos2Geometry_msgsMsgPose2D*(): Ros2Geometry_msgsMsgPose2D =
  result.`x` = 0
  result.`y` = 0
  result.`theta` = 0
proc writeFields*(value: Ros2Geometry_msgsMsgPose2D; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`theta`)
proc readRos2Geometry_msgsMsgPose2D*(r: var Reader): Ros2Geometry_msgsMsgPose2D =
  result = initRos2Geometry_msgsMsgPose2D()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`theta` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgPose2D): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPose2D*(b: seq[byte]): Ros2Geometry_msgsMsgPose2D =
  var r = initReader(b,24)
  result = readRos2Geometry_msgsMsgPose2D(r)
  finish(r)
type Ros2Aimdk_msgsMsgNaviPoint* = object
  `point_id`*: int32
  `navi_point`*: Ros2Geometry_msgsMsgPose2D
const Ros2Aimdk_msgsMsgNaviPointMaximumWireBytes* = 28
const Ros2Aimdk_msgsMsgNaviPointCodecIdentity* = "UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e"
const Ros2Aimdk_msgsMsgNaviPointNativeType* = "aimdk_msgs/msg/NaviPoint"
const Ros2Aimdk_msgsMsgNaviPointNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgNaviPoint*(): Ros2Aimdk_msgsMsgNaviPoint =
  result.`point_id` = 0
  result.`navi_point` = initRos2Geometry_msgsMsgPose2D()
proc writeFields*(value: Ros2Aimdk_msgsMsgNaviPoint; w: var Writer) =
  putInteger(w,value.`point_id`)
  writeFields(value.`navi_point`,w)
proc readRos2Aimdk_msgsMsgNaviPoint*(r: var Reader): Ros2Aimdk_msgsMsgNaviPoint =
  result = initRos2Aimdk_msgsMsgNaviPoint()
  result.`point_id` = getInteger(r,int32)
  result.`navi_point` = readRos2Geometry_msgsMsgPose2D(r)
proc encode*(value: Ros2Aimdk_msgsMsgNaviPoint): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgNaviPoint*(b: seq[byte]): Ros2Aimdk_msgsMsgNaviPoint =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsMsgNaviPoint(r)
  finish(r)
type Ros2Aimdk_msgsMsgPath* = object
  `path_id`*: int32
  `points`*: seq[Ros2Geometry_msgsMsgPose2D]
const Ros2Aimdk_msgsMsgPathMaximumWireBytes* = 104
const Ros2Aimdk_msgsMsgPathCodecIdentity* = "UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d"
const Ros2Aimdk_msgsMsgPathNativeType* = "aimdk_msgs/msg/Path"
const Ros2Aimdk_msgsMsgPathNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPath*(): Ros2Aimdk_msgsMsgPath =
  result.`path_id` = 0
  result.`points` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgPath; w: var Writer) =
  putInteger(w,value.`path_id`)
  if value.`points`.len > 4: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgPath*(r: var Reader): Ros2Aimdk_msgsMsgPath =
  result = initRos2Aimdk_msgsMsgPath()
  result.`path_id` = getInteger(r,int32)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`points` = newSeq[Ros2Geometry_msgsMsgPose2D](count1)
  for i in 0..<count1:
    result.`points`[i] = readRos2Geometry_msgsMsgPose2D(r)
proc encode*(value: Ros2Aimdk_msgsMsgPath): seq[byte] =
  var w = initWriter(104)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPath*(b: seq[byte]): Ros2Aimdk_msgsMsgPath =
  var r = initReader(b,104)
  result = readRos2Aimdk_msgsMsgPath(r)
  finish(r)
type Ros2Aimdk_msgsMsgPilotState* = object
  `target_name`*: string
  `target_id`*: uint64
  `intro_task_name`*: string
  `intro_task_id`*: uint64
  `map_name`*: string
  `map_id`*: uint64
  `pilot_state`*: uint8
const Ros2Aimdk_msgsMsgPilotStateMaximumWireBytes* = 421
const Ros2Aimdk_msgsMsgPilotStateCodecIdentity* = "UWVMROS1_8d2421a2a13d52ea4ab7af2a6a9e57c145c4b7fb10e59701fcb2f58c421fe31a"
const Ros2Aimdk_msgsMsgPilotStateNativeType* = "aimdk_msgs/msg/PilotState"
const Ros2Aimdk_msgsMsgPilotStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgPilotState_TM_PILOT_STATE_NAVI_TO_TARGET*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPilotState_TM_PILOT_STATE_TARGET_ACTIONS*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPilotState_TM_PILOT_STATE_NAVI_RETURN*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgPilotState_TM_PILOT_STATE_STANDBY_ACTIONS*: uint8 = 3'u8
proc initRos2Aimdk_msgsMsgPilotState*(): Ros2Aimdk_msgsMsgPilotState =
  result.`target_name` = ""
  result.`target_id` = 0
  result.`intro_task_name` = ""
  result.`intro_task_id` = 0
  result.`map_name` = ""
  result.`map_id` = 0
  result.`pilot_state` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgPilotState; w: var Writer) =
  putString(w,value.`target_name`,128)
  putInteger(w,value.`target_id`)
  putString(w,value.`intro_task_name`,128)
  putInteger(w,value.`intro_task_id`)
  putString(w,value.`map_name`,128)
  putInteger(w,value.`map_id`)
  putInteger(w,value.`pilot_state`)
proc readRos2Aimdk_msgsMsgPilotState*(r: var Reader): Ros2Aimdk_msgsMsgPilotState =
  result = initRos2Aimdk_msgsMsgPilotState()
  result.`target_name` = getString(r,128)
  result.`target_id` = getInteger(r,uint64)
  result.`intro_task_name` = getString(r,128)
  result.`intro_task_id` = getInteger(r,uint64)
  result.`map_name` = getString(r,128)
  result.`map_id` = getInteger(r,uint64)
  result.`pilot_state` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgPilotState): seq[byte] =
  var w = initWriter(421)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPilotState*(b: seq[byte]): Ros2Aimdk_msgsMsgPilotState =
  var r = initReader(b,421)
  result = readRos2Aimdk_msgsMsgPilotState(r)
  finish(r)
type Ros2Aimdk_msgsMsgPlayStateType* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgPlayStateTypeMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgPlayStateTypeCodecIdentity* = "UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946"
const Ros2Aimdk_msgsMsgPlayStateTypeNativeType* = "aimdk_msgs/msg/PlayStateType"
const Ros2Aimdk_msgsMsgPlayStateTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_CLOSED*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_PLAYING*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPlayStateType_PLAYER_STATE_STOPED*: uint8 = 2'u8
proc initRos2Aimdk_msgsMsgPlayStateType*(): Ros2Aimdk_msgsMsgPlayStateType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgPlayStateType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgPlayStateType*(r: var Reader): Ros2Aimdk_msgsMsgPlayStateType =
  result = initRos2Aimdk_msgsMsgPlayStateType()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgPlayStateType): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPlayStateType*(b: seq[byte]): Ros2Aimdk_msgsMsgPlayStateType =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgPlayStateType(r)
  finish(r)
type Ros2Aimdk_msgsMsgPlayStateChange* = object
  `pkg_name`*: string
  `state`*: Ros2Aimdk_msgsMsgPlayStateType
const Ros2Aimdk_msgsMsgPlayStateChangeMaximumWireBytes* = 133
const Ros2Aimdk_msgsMsgPlayStateChangeCodecIdentity* = "UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c"
const Ros2Aimdk_msgsMsgPlayStateChangeNativeType* = "aimdk_msgs/msg/PlayStateChange"
const Ros2Aimdk_msgsMsgPlayStateChangeNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPlayStateChange*(): Ros2Aimdk_msgsMsgPlayStateChange =
  result.`pkg_name` = ""
  result.`state` = initRos2Aimdk_msgsMsgPlayStateType()
proc writeFields*(value: Ros2Aimdk_msgsMsgPlayStateChange; w: var Writer) =
  putString(w,value.`pkg_name`,128)
  writeFields(value.`state`,w)
proc readRos2Aimdk_msgsMsgPlayStateChange*(r: var Reader): Ros2Aimdk_msgsMsgPlayStateChange =
  result = initRos2Aimdk_msgsMsgPlayStateChange()
  result.`pkg_name` = getString(r,128)
  result.`state` = readRos2Aimdk_msgsMsgPlayStateType(r)
proc encode*(value: Ros2Aimdk_msgsMsgPlayStateChange): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPlayStateChange*(b: seq[byte]): Ros2Aimdk_msgsMsgPlayStateChange =
  var r = initReader(b,133)
  result = readRos2Aimdk_msgsMsgPlayStateChange(r)
  finish(r)
type Ros2Aimdk_msgsMsgTtsPriorityLevel* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgTtsPriorityLevelMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgTtsPriorityLevelCodecIdentity* = "UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507"
const Ros2Aimdk_msgsMsgTtsPriorityLevelNativeType* = "aimdk_msgs/msg/TtsPriorityLevel"
const Ros2Aimdk_msgsMsgTtsPriorityLevelNativeIdentity* = ""
const Ros2Aimdk_msgsMsgTtsPriorityLevel_UNKNOWN*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_BACKGROUND_L1*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_SERVICE_L2*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_MISSION_L4*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_INTERACTION_L6*: uint8 = 6'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_SYSTEM_L7*: uint8 = 7'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_WARNING_L8*: uint8 = 8'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_SAFETY_L10*: uint8 = 10'u8
proc initRos2Aimdk_msgsMsgTtsPriorityLevel*(): Ros2Aimdk_msgsMsgTtsPriorityLevel =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgTtsPriorityLevel; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgTtsPriorityLevel*(r: var Reader): Ros2Aimdk_msgsMsgTtsPriorityLevel =
  result = initRos2Aimdk_msgsMsgTtsPriorityLevel()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgTtsPriorityLevel): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgTtsPriorityLevel*(b: seq[byte]): Ros2Aimdk_msgsMsgTtsPriorityLevel =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgTtsPriorityLevel(r)
  finish(r)
type Ros2Aimdk_msgsMsgPlayTtsRequest* = object
  `text`*: string
  `priority_level`*: Ros2Aimdk_msgsMsgTtsPriorityLevel
  `priority_weight`*: uint32
  `domain`*: string
  `trace_id`*: string
  `is_interrupted`*: bool
const Ros2Aimdk_msgsMsgPlayTtsRequestMaximumWireBytes* = 402
const Ros2Aimdk_msgsMsgPlayTtsRequestCodecIdentity* = "UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72"
const Ros2Aimdk_msgsMsgPlayTtsRequestNativeType* = "aimdk_msgs/msg/PlayTtsRequest"
const Ros2Aimdk_msgsMsgPlayTtsRequestNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPlayTtsRequest*(): Ros2Aimdk_msgsMsgPlayTtsRequest =
  result.`text` = ""
  result.`priority_level` = initRos2Aimdk_msgsMsgTtsPriorityLevel()
  result.`priority_weight` = 0
  result.`domain` = ""
  result.`trace_id` = ""
  result.`is_interrupted` = false
proc writeFields*(value: Ros2Aimdk_msgsMsgPlayTtsRequest; w: var Writer) =
  putString(w,value.`text`,128)
  writeFields(value.`priority_level`,w)
  putInteger(w,value.`priority_weight`)
  putString(w,value.`domain`,128)
  putString(w,value.`trace_id`,128)
  putBool(w,value.`is_interrupted`)
proc readRos2Aimdk_msgsMsgPlayTtsRequest*(r: var Reader): Ros2Aimdk_msgsMsgPlayTtsRequest =
  result = initRos2Aimdk_msgsMsgPlayTtsRequest()
  result.`text` = getString(r,128)
  result.`priority_level` = readRos2Aimdk_msgsMsgTtsPriorityLevel(r)
  result.`priority_weight` = getInteger(r,uint32)
  result.`domain` = getString(r,128)
  result.`trace_id` = getString(r,128)
  result.`is_interrupted` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgPlayTtsRequest): seq[byte] =
  var w = initWriter(402)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPlayTtsRequest*(b: seq[byte]): Ros2Aimdk_msgsMsgPlayTtsRequest =
  var r = initReader(b,402)
  result = readRos2Aimdk_msgsMsgPlayTtsRequest(r)
  finish(r)
type Ros2Aimdk_msgsMsgPlayTtsResponse* = object
  `text`*: string
  `priority_level`*: Ros2Aimdk_msgsMsgTtsPriorityLevel
  `priority_weight`*: uint32
  `domain`*: string
  `trace_id`*: string
  `is_success`*: bool
  `error_message`*: string
  `estimated_duration`*: uint32
  `error_code`*: uint8
const Ros2Aimdk_msgsMsgPlayTtsResponseMaximumWireBytes* = 539
const Ros2Aimdk_msgsMsgPlayTtsResponseCodecIdentity* = "UWVMROS1_859aaa26ebee477f028cd7836e64aeaaabdafbd8ea67fc4b563bc145e4a55dc8"
const Ros2Aimdk_msgsMsgPlayTtsResponseNativeType* = "aimdk_msgs/msg/PlayTtsResponse"
const Ros2Aimdk_msgsMsgPlayTtsResponseNativeIdentity* = ""
const Ros2Aimdk_msgsMsgPlayTtsResponse_ERROR_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPlayTtsResponse_ERROR_HIGHER_PRIORITY_BUSY*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPlayTtsResponse_ERROR_NETWORK_DISCONNECTED*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgPlayTtsResponse_ERROR_UNKNOWN*: uint8 = 3'u8
proc initRos2Aimdk_msgsMsgPlayTtsResponse*(): Ros2Aimdk_msgsMsgPlayTtsResponse =
  result.`text` = ""
  result.`priority_level` = initRos2Aimdk_msgsMsgTtsPriorityLevel()
  result.`priority_weight` = 0
  result.`domain` = ""
  result.`trace_id` = ""
  result.`is_success` = false
  result.`error_message` = ""
  result.`estimated_duration` = 0
  result.`error_code` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgPlayTtsResponse; w: var Writer) =
  putString(w,value.`text`,128)
  writeFields(value.`priority_level`,w)
  putInteger(w,value.`priority_weight`)
  putString(w,value.`domain`,128)
  putString(w,value.`trace_id`,128)
  putBool(w,value.`is_success`)
  putString(w,value.`error_message`,128)
  putInteger(w,value.`estimated_duration`)
  putInteger(w,value.`error_code`)
proc readRos2Aimdk_msgsMsgPlayTtsResponse*(r: var Reader): Ros2Aimdk_msgsMsgPlayTtsResponse =
  result = initRos2Aimdk_msgsMsgPlayTtsResponse()
  result.`text` = getString(r,128)
  result.`priority_level` = readRos2Aimdk_msgsMsgTtsPriorityLevel(r)
  result.`priority_weight` = getInteger(r,uint32)
  result.`domain` = getString(r,128)
  result.`trace_id` = getString(r,128)
  result.`is_success` = getBool(r)
  result.`error_message` = getString(r,128)
  result.`estimated_duration` = getInteger(r,uint32)
  result.`error_code` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgPlayTtsResponse): seq[byte] =
  var w = initWriter(539)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPlayTtsResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgPlayTtsResponse =
  var r = initReader(b,539)
  result = readRos2Aimdk_msgsMsgPlayTtsResponse(r)
  finish(r)
type Ros2Aimdk_msgsMsgPmuLedState* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `trace_id`*: string
  `led_strip_mode`*: uint8
  `r`*: uint8
  `g`*: uint8
  `b`*: uint8
  `priority`*: int32
const Ros2Aimdk_msgsMsgPmuLedStateMaximumWireBytes* = 292
const Ros2Aimdk_msgsMsgPmuLedStateCodecIdentity* = "UWVMROS1_ffd9da2c79f63f9a61a4dfcefde97cb58676f61598b76c0435f33ab23e9002dc"
const Ros2Aimdk_msgsMsgPmuLedStateNativeType* = "aimdk_msgs/msg/PmuLedState"
const Ros2Aimdk_msgsMsgPmuLedStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgPmuLedState_LED_STRIP_MODE_CONSTANT*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPmuLedState_LED_STRIP_MODE_BREATH*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPmuLedState_LED_STRIP_MODE_FLASH*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgPmuLedState_LED_STRIP_MODE_FLOW*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgPmuLedState_LED_STRIP_MODE_MAX*: uint8 = 4'u8
proc initRos2Aimdk_msgsMsgPmuLedState*(): Ros2Aimdk_msgsMsgPmuLedState =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`trace_id` = ""
  result.`led_strip_mode` = 0
  result.`r` = 0
  result.`g` = 0
  result.`b` = 0
  result.`priority` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgPmuLedState; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`trace_id`,128)
  putInteger(w,value.`led_strip_mode`)
  putInteger(w,value.`r`)
  putInteger(w,value.`g`)
  putInteger(w,value.`b`)
  putInteger(w,value.`priority`)
proc readRos2Aimdk_msgsMsgPmuLedState*(r: var Reader): Ros2Aimdk_msgsMsgPmuLedState =
  result = initRos2Aimdk_msgsMsgPmuLedState()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`trace_id` = getString(r,128)
  result.`led_strip_mode` = getInteger(r,uint8)
  result.`r` = getInteger(r,uint8)
  result.`g` = getInteger(r,uint8)
  result.`b` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgPmuLedState): seq[byte] =
  var w = initWriter(292)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPmuLedState*(b: seq[byte]): Ros2Aimdk_msgsMsgPmuLedState =
  var r = initReader(b,292)
  result = readRos2Aimdk_msgsMsgPmuLedState(r)
  finish(r)
type Ros2Aimdk_msgsMsgPmuState* = object
  `pmu_software_version`*: string
  `pmu_hardware_version`*: string
  `pmu_protocol_version`*: string
  `pmu_bool_status`*: uint32
  `head_power_current`*: float64
  `output_48v_current`*: float64
  `rk3588_current`*: float64
  `output_12v_current`*: float64
  `bus_48v_current`*: float64
  `orin_current`*: float64
  `bus_48v_pmos_voltage`*: float64
  `battery_voltage`*: float64
  `fan_voltage`*: float64
  `output_12v_voltage`*: float64
  `output_48v_voltage`*: float64
  `bus_48v_voltage`*: float64
  `head_power_voltage`*: float64
  `orin_voltage`*: float64
  `rk3588_voltage`*: float64
  `fan_speed`*: float64
  `fan_pecentage`*: uint8
  `pmu_temperature`*: float64
  `bms_manufacturer`*: string
  `bms_serial_number`*: string
  `bms_hardware_version`*: string
  `bms_software_version`*: string
  `bms_status_bits`*: uint32
  `battery_balance_line_resistance`*: uint16
  `battery_pack_voltage`*: float64
  `battery_current`*: float64
  `battery_output_power`*: float64
  `battery_temperature`*: float64
  `battery_remaining_capacity`*: uint32
  `battery_remaining_capacity_percentage`*: uint8
  `battery_cycle_count`*: uint16
  `battery_cycle_total_capacity`*: uint32
const Ros2Aimdk_msgsMsgPmuStateMaximumWireBytes* = 1114
const Ros2Aimdk_msgsMsgPmuStateCodecIdentity* = "UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd"
const Ros2Aimdk_msgsMsgPmuStateNativeType* = "aimdk_msgs/msg/PmuState"
const Ros2Aimdk_msgsMsgPmuStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPmuState*(): Ros2Aimdk_msgsMsgPmuState =
  result.`pmu_software_version` = ""
  result.`pmu_hardware_version` = ""
  result.`pmu_protocol_version` = ""
  result.`pmu_bool_status` = 0
  result.`head_power_current` = 0
  result.`output_48v_current` = 0
  result.`rk3588_current` = 0
  result.`output_12v_current` = 0
  result.`bus_48v_current` = 0
  result.`orin_current` = 0
  result.`bus_48v_pmos_voltage` = 0
  result.`battery_voltage` = 0
  result.`fan_voltage` = 0
  result.`output_12v_voltage` = 0
  result.`output_48v_voltage` = 0
  result.`bus_48v_voltage` = 0
  result.`head_power_voltage` = 0
  result.`orin_voltage` = 0
  result.`rk3588_voltage` = 0
  result.`fan_speed` = 0
  result.`fan_pecentage` = 0
  result.`pmu_temperature` = 0
  result.`bms_manufacturer` = ""
  result.`bms_serial_number` = ""
  result.`bms_hardware_version` = ""
  result.`bms_software_version` = ""
  result.`bms_status_bits` = 0
  result.`battery_balance_line_resistance` = 0
  result.`battery_pack_voltage` = 0
  result.`battery_current` = 0
  result.`battery_output_power` = 0
  result.`battery_temperature` = 0
  result.`battery_remaining_capacity` = 0
  result.`battery_remaining_capacity_percentage` = 0
  result.`battery_cycle_count` = 0
  result.`battery_cycle_total_capacity` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgPmuState; w: var Writer) =
  putString(w,value.`pmu_software_version`,128)
  putString(w,value.`pmu_hardware_version`,128)
  putString(w,value.`pmu_protocol_version`,128)
  putInteger(w,value.`pmu_bool_status`)
  putFloat64(w,value.`head_power_current`)
  putFloat64(w,value.`output_48v_current`)
  putFloat64(w,value.`rk3588_current`)
  putFloat64(w,value.`output_12v_current`)
  putFloat64(w,value.`bus_48v_current`)
  putFloat64(w,value.`orin_current`)
  putFloat64(w,value.`bus_48v_pmos_voltage`)
  putFloat64(w,value.`battery_voltage`)
  putFloat64(w,value.`fan_voltage`)
  putFloat64(w,value.`output_12v_voltage`)
  putFloat64(w,value.`output_48v_voltage`)
  putFloat64(w,value.`bus_48v_voltage`)
  putFloat64(w,value.`head_power_voltage`)
  putFloat64(w,value.`orin_voltage`)
  putFloat64(w,value.`rk3588_voltage`)
  putFloat64(w,value.`fan_speed`)
  putInteger(w,value.`fan_pecentage`)
  putFloat64(w,value.`pmu_temperature`)
  putString(w,value.`bms_manufacturer`,128)
  putString(w,value.`bms_serial_number`,128)
  putString(w,value.`bms_hardware_version`,128)
  putString(w,value.`bms_software_version`,128)
  putInteger(w,value.`bms_status_bits`)
  putInteger(w,value.`battery_balance_line_resistance`)
  putFloat64(w,value.`battery_pack_voltage`)
  putFloat64(w,value.`battery_current`)
  putFloat64(w,value.`battery_output_power`)
  putFloat64(w,value.`battery_temperature`)
  putInteger(w,value.`battery_remaining_capacity`)
  putInteger(w,value.`battery_remaining_capacity_percentage`)
  putInteger(w,value.`battery_cycle_count`)
  putInteger(w,value.`battery_cycle_total_capacity`)
proc readRos2Aimdk_msgsMsgPmuState*(r: var Reader): Ros2Aimdk_msgsMsgPmuState =
  result = initRos2Aimdk_msgsMsgPmuState()
  result.`pmu_software_version` = getString(r,128)
  result.`pmu_hardware_version` = getString(r,128)
  result.`pmu_protocol_version` = getString(r,128)
  result.`pmu_bool_status` = getInteger(r,uint32)
  result.`head_power_current` = getFloat64(r)
  result.`output_48v_current` = getFloat64(r)
  result.`rk3588_current` = getFloat64(r)
  result.`output_12v_current` = getFloat64(r)
  result.`bus_48v_current` = getFloat64(r)
  result.`orin_current` = getFloat64(r)
  result.`bus_48v_pmos_voltage` = getFloat64(r)
  result.`battery_voltage` = getFloat64(r)
  result.`fan_voltage` = getFloat64(r)
  result.`output_12v_voltage` = getFloat64(r)
  result.`output_48v_voltage` = getFloat64(r)
  result.`bus_48v_voltage` = getFloat64(r)
  result.`head_power_voltage` = getFloat64(r)
  result.`orin_voltage` = getFloat64(r)
  result.`rk3588_voltage` = getFloat64(r)
  result.`fan_speed` = getFloat64(r)
  result.`fan_pecentage` = getInteger(r,uint8)
  result.`pmu_temperature` = getFloat64(r)
  result.`bms_manufacturer` = getString(r,128)
  result.`bms_serial_number` = getString(r,128)
  result.`bms_hardware_version` = getString(r,128)
  result.`bms_software_version` = getString(r,128)
  result.`bms_status_bits` = getInteger(r,uint32)
  result.`battery_balance_line_resistance` = getInteger(r,uint16)
  result.`battery_pack_voltage` = getFloat64(r)
  result.`battery_current` = getFloat64(r)
  result.`battery_output_power` = getFloat64(r)
  result.`battery_temperature` = getFloat64(r)
  result.`battery_remaining_capacity` = getInteger(r,uint32)
  result.`battery_remaining_capacity_percentage` = getInteger(r,uint8)
  result.`battery_cycle_count` = getInteger(r,uint16)
  result.`battery_cycle_total_capacity` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgPmuState): seq[byte] =
  var w = initWriter(1114)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPmuState*(b: seq[byte]): Ros2Aimdk_msgsMsgPmuState =
  var r = initReader(b,1114)
  result = readRos2Aimdk_msgsMsgPmuState(r)
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
type Ros2Geometry_msgsMsgVector3* = object
  `x`*: float64
  `y`*: float64
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
type Ros2Geometry_msgsMsgTwist* = object
  `linear`*: Ros2Geometry_msgsMsgVector3
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
type Ros2Aimdk_msgsMsgPncTaskRequest* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `task_type`*: uint8
  `task_request`*: uint8
  `pnc_mode`*: uint8
  `task_id`*: uint64
  `map_id`*: uint64
  `target_pose`*: Ros2Geometry_msgsMsgPoseStamped
  `reference_line`*: seq[Ros2Geometry_msgsMsgPose2D]
  `target_pose_radius`*: float64
  `max_forward_speed`*: float32
  `trajectory_pos`*: seq[Ros2Geometry_msgsMsgPose2D]
  `trajectory_vel`*: seq[Ros2Geometry_msgsMsgTwist]
  `play_timestamp`*: uint64
  `time_duration`*: uint64
  `reserve_info`*: array[64,uint8]
const Ros2Aimdk_msgsMsgPncTaskRequestMaximumWireBytes* = 855
const Ros2Aimdk_msgsMsgPncTaskRequestCodecIdentity* = "UWVMROS1_70b6f57408c6a09cc52d3ce4aeaab20322737a6c4cfddbd380e87d673050469c"
const Ros2Aimdk_msgsMsgPncTaskRequestNativeType* = "aimdk_msgs/msg/PncTaskRequest"
const Ros2Aimdk_msgsMsgPncTaskRequestNativeIdentity* = ""
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_PLANNING_NAVI_TO_GOAL*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_PLANNING_NAVI_TO_POSE_2D*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_LINEAR_NAVI_TO_RELATIVE*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_LINEAR_NAVI_TO_GOAL*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_LINEAR_NAVI_TO_POSE_2D*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_DIRECT_NAVI_TO_RELATIVE_GOAL*: uint8 = 6'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_DIRECT_NAVI_TO_RELATIVE*: uint8 = 7'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_SPIN_TURN_AND_MOVE_FORWARD*: uint8 = 8'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_SPIN_TURN*: uint8 = 9'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_MOVE_FORWARD*: uint8 = 10'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_PRECISE_NAVI_TO_GOAL*: uint8 = 11'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_NO_MAP_FOLLOW*: uint8 = 12'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_AUTO_EXPLORE*: uint8 = 13'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_VOICE_CONTROL*: uint8 = 14'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_RELATIVE_TARGET_TRACKING*: uint8 = 15'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_PLANNING_NAVI_WITH_RL*: uint8 = 16'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_TYPE_SWARM_CONTROL_NAVI_MODE*: uint8 = 17'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_REQUEST_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_REQUEST_START*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_REQUEST_STOP*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_REQUEST_PAUSE*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_REQUEST_RESUME*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_TASK_REQUEST_STATUS_INQUIRY*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_NORMAL*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPncTaskRequest_NO_PERCEPTION*: uint8 = 1'u8
proc initRos2Aimdk_msgsMsgPncTaskRequest*(): Ros2Aimdk_msgsMsgPncTaskRequest =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`task_type` = 0
  result.`task_request` = 0
  result.`pnc_mode` = 0
  result.`task_id` = 0
  result.`map_id` = 0
  result.`target_pose` = initRos2Geometry_msgsMsgPoseStamped()
  result.`reference_line` = @[]
  result.`target_pose_radius` = 0
  result.`max_forward_speed` = 0
  result.`trajectory_pos` = @[]
  result.`trajectory_vel` = @[]
  result.`play_timestamp` = 0
  result.`time_duration` = 0
  result.`reserve_info` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Aimdk_msgsMsgPncTaskRequest; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`task_type`)
  putInteger(w,value.`task_request`)
  putInteger(w,value.`pnc_mode`)
  putInteger(w,value.`task_id`)
  putInteger(w,value.`map_id`)
  writeFields(value.`target_pose`,w)
  if value.`reference_line`.len > 4: fail(22)
  putInteger(w,uint32(value.`reference_line`.len))
  for e in value.`reference_line`:
    writeFields(e,w)
  putFloat64(w,value.`target_pose_radius`)
  putFloat32(w,value.`max_forward_speed`)
  if value.`trajectory_pos`.len > 4: fail(22)
  putInteger(w,uint32(value.`trajectory_pos`.len))
  for e in value.`trajectory_pos`:
    writeFields(e,w)
  if value.`trajectory_vel`.len > 4: fail(22)
  putInteger(w,uint32(value.`trajectory_vel`.len))
  for e in value.`trajectory_vel`:
    writeFields(e,w)
  putInteger(w,value.`play_timestamp`)
  putInteger(w,value.`time_duration`)
  for e in value.`reserve_info`:
    putInteger(w,e)
proc readRos2Aimdk_msgsMsgPncTaskRequest*(r: var Reader): Ros2Aimdk_msgsMsgPncTaskRequest =
  result = initRos2Aimdk_msgsMsgPncTaskRequest()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`task_type` = getInteger(r,uint8)
  result.`task_request` = getInteger(r,uint8)
  result.`pnc_mode` = getInteger(r,uint8)
  result.`task_id` = getInteger(r,uint64)
  result.`map_id` = getInteger(r,uint64)
  result.`target_pose` = readRos2Geometry_msgsMsgPoseStamped(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 4: fail(22)
  let count7 = int(rawcount7)
  result.`reference_line` = newSeq[Ros2Geometry_msgsMsgPose2D](count7)
  for i in 0..<count7:
    result.`reference_line`[i] = readRos2Geometry_msgsMsgPose2D(r)
  result.`target_pose_radius` = getFloat64(r)
  result.`max_forward_speed` = getFloat32(r)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 4: fail(22)
  let count10 = int(rawcount10)
  result.`trajectory_pos` = newSeq[Ros2Geometry_msgsMsgPose2D](count10)
  for i in 0..<count10:
    result.`trajectory_pos`[i] = readRos2Geometry_msgsMsgPose2D(r)
  let rawcount11 = getInteger(r,uint32)
  if rawcount11 > 4: fail(22)
  let count11 = int(rawcount11)
  result.`trajectory_vel` = newSeq[Ros2Geometry_msgsMsgTwist](count11)
  for i in 0..<count11:
    result.`trajectory_vel`[i] = readRos2Geometry_msgsMsgTwist(r)
  result.`play_timestamp` = getInteger(r,uint64)
  result.`time_duration` = getInteger(r,uint64)
  let count14 = 64
  for i in 0..<count14:
    result.`reserve_info`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgPncTaskRequest): seq[byte] =
  var w = initWriter(855)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPncTaskRequest*(b: seq[byte]): Ros2Aimdk_msgsMsgPncTaskRequest =
  var r = initReader(b,855)
  result = readRos2Aimdk_msgsMsgPncTaskRequest(r)
  finish(r)
type Ros2Aimdk_msgsMsgPncTaskResponse* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `task_type`*: uint8
  `task_id`*: uint64
  `map_id`*: uint64
  `task_status`*: uint8
  `reserve_info`*: array[64,uint8]
const Ros2Aimdk_msgsMsgPncTaskResponseMaximumWireBytes* = 234
const Ros2Aimdk_msgsMsgPncTaskResponseCodecIdentity* = "UWVMROS1_b79712144fee059d6b2d3fc74a86a33ca577734d8445b446a4b80db01e87243e"
const Ros2Aimdk_msgsMsgPncTaskResponseNativeType* = "aimdk_msgs/msg/PncTaskResponse"
const Ros2Aimdk_msgsMsgPncTaskResponseNativeIdentity* = ""
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_PLANNING_NAVI_TO_GOAL*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_PLANNING_NAVI_TO_POSE_2D*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_LINEAR_NAVI_TO_RELATIVE*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_LINEAR_NAVI_TO_GOAL*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_LINEAR_NAVI_TO_POSE_2D*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_DIRECT_NAVI_TO_RELATIVE_GOAL*: uint8 = 6'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_DIRECT_NAVI_TO_RELATIVE*: uint8 = 7'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_SPIN_TURN_AND_MOVE_FORWARD*: uint8 = 8'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_SPIN_TURN*: uint8 = 9'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_MOVE_FORWARD*: uint8 = 10'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_PRECISE_NAVI_TO_GOAL*: uint8 = 11'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_NO_MAP_FOLLOW*: uint8 = 12'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_AUTO_EXPLORE*: uint8 = 13'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_VOICE_CONTROL*: uint8 = 14'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_RELATIVE_TARGET_TRACKING*: uint8 = 15'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_TYPE_PLANNING_NAVI_WITH_RL*: uint8 = 16'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_UNKONW*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_RUNNING*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_FAILED*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_PAUSED*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_FINISHED*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_UNKNOW_BLOCK*: uint8 = 10'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_SPIN_BLOCK*: uint8 = 11'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_TRAJ_COLLISION_BLOCK*: uint8 = 12'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_CONTOLLER_COLLISION_BLOCK*: uint8 = 13'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_SPIN_BLOCK_WITH_HUMAN*: uint8 = 14'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_TRAJ_COLLISION_BLOCK_WITH_HUMAN*: uint8 = 15'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_CONTOLLER_COLLISION_BLOCK_WITH_HUMAN*: uint8 = 16'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_LOCAL_OPTIMAL_FAILED*: uint8 = 17'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_GOBAL_PATH_BLOCK*: uint8 = 18'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_RECOVERY_GLOBAL*: uint8 = 20'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_RECOVERY_LOCAL*: uint8 = 21'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_RECOVERY_TIMEOUT*: uint8 = 22'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_EXPLORE_TO_RECOVERY*: uint8 = 23'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_EXPLORE_SUCCESS*: uint8 = 24'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_EXPLORE_FAILED*: uint8 = 25'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_GOAL_BLOCK_CONTINUE*: uint8 = 30'u8
const Ros2Aimdk_msgsMsgPncTaskResponse_TASK_STATUS_GOAL_BLOCK_ABORT*: uint8 = 31'u8
proc initRos2Aimdk_msgsMsgPncTaskResponse*(): Ros2Aimdk_msgsMsgPncTaskResponse =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`task_type` = 0
  result.`task_id` = 0
  result.`map_id` = 0
  result.`task_status` = 0
  result.`reserve_info` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
proc writeFields*(value: Ros2Aimdk_msgsMsgPncTaskResponse; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`task_type`)
  putInteger(w,value.`task_id`)
  putInteger(w,value.`map_id`)
  putInteger(w,value.`task_status`)
  for e in value.`reserve_info`:
    putInteger(w,e)
proc readRos2Aimdk_msgsMsgPncTaskResponse*(r: var Reader): Ros2Aimdk_msgsMsgPncTaskResponse =
  result = initRos2Aimdk_msgsMsgPncTaskResponse()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`task_type` = getInteger(r,uint8)
  result.`task_id` = getInteger(r,uint64)
  result.`map_id` = getInteger(r,uint64)
  result.`task_status` = getInteger(r,uint8)
  let count5 = 64
  for i in 0..<count5:
    result.`reserve_info`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgPncTaskResponse): seq[byte] =
  var w = initWriter(234)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPncTaskResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgPncTaskResponse =
  var r = initReader(b,234)
  result = readRos2Aimdk_msgsMsgPncTaskResponse(r)
  finish(r)
type Ros2Aimdk_msgsMsgSigSet* = object
  `robot_sig`*: int32
  `motion_sig`*: uint8
  `sound_sig`*: uint8
  `led_sig`*: uint8
  `facial_sig`*: uint8
  `reserve`*: uint32
  `funcdisable_sig`*: uint64
const Ros2Aimdk_msgsMsgSigSetMaximumWireBytes* = 20
const Ros2Aimdk_msgsMsgSigSetCodecIdentity* = "UWVMROS1_24fc701bfd984160280c2b150c2b6accee18cead254009fb4f781341efb5b8ae"
const Ros2Aimdk_msgsMsgSigSetNativeType* = "aimdk_msgs/msg/SigSet"
const Ros2Aimdk_msgsMsgSigSetNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgSigSet*(): Ros2Aimdk_msgsMsgSigSet =
  result.`robot_sig` = 0
  result.`motion_sig` = 0
  result.`sound_sig` = 0
  result.`led_sig` = 0
  result.`facial_sig` = 0
  result.`reserve` = 0
  result.`funcdisable_sig` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgSigSet; w: var Writer) =
  putInteger(w,value.`robot_sig`)
  putInteger(w,value.`motion_sig`)
  putInteger(w,value.`sound_sig`)
  putInteger(w,value.`led_sig`)
  putInteger(w,value.`facial_sig`)
  putInteger(w,value.`reserve`)
  putInteger(w,value.`funcdisable_sig`)
proc readRos2Aimdk_msgsMsgSigSet*(r: var Reader): Ros2Aimdk_msgsMsgSigSet =
  result = initRos2Aimdk_msgsMsgSigSet()
  result.`robot_sig` = getInteger(r,int32)
  result.`motion_sig` = getInteger(r,uint8)
  result.`sound_sig` = getInteger(r,uint8)
  result.`led_sig` = getInteger(r,uint8)
  result.`facial_sig` = getInteger(r,uint8)
  result.`reserve` = getInteger(r,uint32)
  result.`funcdisable_sig` = getInteger(r,uint64)
proc encode*(value: Ros2Aimdk_msgsMsgSigSet): seq[byte] =
  var w = initWriter(20)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgSigSet*(b: seq[byte]): Ros2Aimdk_msgsMsgSigSet =
  var r = initReader(b,20)
  result = readRos2Aimdk_msgsMsgSigSet(r)
  finish(r)
type Ros2Aimdk_msgsMsgPostProcSig* = object
  `timestamp`*: uint64
  `diag_code`*: uint64
  `sig_set`*: Ros2Aimdk_msgsMsgSigSet
const Ros2Aimdk_msgsMsgPostProcSigMaximumWireBytes* = 36
const Ros2Aimdk_msgsMsgPostProcSigCodecIdentity* = "UWVMROS1_f6eceb5eb1e64d0b68e1cfac297cec324fc4aa42ea709e1c721aefe4d4feda8b"
const Ros2Aimdk_msgsMsgPostProcSigNativeType* = "aimdk_msgs/msg/PostProcSig"
const Ros2Aimdk_msgsMsgPostProcSigNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPostProcSig*(): Ros2Aimdk_msgsMsgPostProcSig =
  result.`timestamp` = 0
  result.`diag_code` = 0
  result.`sig_set` = initRos2Aimdk_msgsMsgSigSet()
proc writeFields*(value: Ros2Aimdk_msgsMsgPostProcSig; w: var Writer) =
  putInteger(w,value.`timestamp`)
  putInteger(w,value.`diag_code`)
  writeFields(value.`sig_set`,w)
proc readRos2Aimdk_msgsMsgPostProcSig*(r: var Reader): Ros2Aimdk_msgsMsgPostProcSig =
  result = initRos2Aimdk_msgsMsgPostProcSig()
  result.`timestamp` = getInteger(r,uint64)
  result.`diag_code` = getInteger(r,uint64)
  result.`sig_set` = readRos2Aimdk_msgsMsgSigSet(r)
proc encode*(value: Ros2Aimdk_msgsMsgPostProcSig): seq[byte] =
  var w = initWriter(36)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPostProcSig*(b: seq[byte]): Ros2Aimdk_msgsMsgPostProcSig =
  var r = initReader(b,36)
  result = readRos2Aimdk_msgsMsgPostProcSig(r)
  finish(r)
type Ros2Aimdk_msgsMsgPostProcSigArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `post_proc_sig`*: seq[Ros2Aimdk_msgsMsgPostProcSig]
const Ros2Aimdk_msgsMsgPostProcSigArrayMaximumWireBytes* = 300
const Ros2Aimdk_msgsMsgPostProcSigArrayCodecIdentity* = "UWVMROS1_5a2202eb697688ee1fe7530df21d462d4a0f1a4e62e986e610e970bf04f64824"
const Ros2Aimdk_msgsMsgPostProcSigArrayNativeType* = "aimdk_msgs/msg/PostProcSigArray"
const Ros2Aimdk_msgsMsgPostProcSigArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPostProcSigArray*(): Ros2Aimdk_msgsMsgPostProcSigArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`post_proc_sig` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgPostProcSigArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`post_proc_sig`.len > 4: fail(22)
  putInteger(w,uint32(value.`post_proc_sig`.len))
  for e in value.`post_proc_sig`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgPostProcSigArray*(r: var Reader): Ros2Aimdk_msgsMsgPostProcSigArray =
  result = initRos2Aimdk_msgsMsgPostProcSigArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`post_proc_sig` = newSeq[Ros2Aimdk_msgsMsgPostProcSig](count1)
  for i in 0..<count1:
    result.`post_proc_sig`[i] = readRos2Aimdk_msgsMsgPostProcSig(r)
proc encode*(value: Ros2Aimdk_msgsMsgPostProcSigArray): seq[byte] =
  var w = initWriter(300)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPostProcSigArray*(b: seq[byte]): Ros2Aimdk_msgsMsgPostProcSigArray =
  var r = initReader(b,300)
  result = readRos2Aimdk_msgsMsgPostProcSigArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgProcessedAudioOutput* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `stream_id`*: uint32
  `audio_vad_state`*: Ros2Aimdk_msgsMsgAudioVadStateType
  `audio_data`*: seq[uint8]
const Ros2Aimdk_msgsMsgProcessedAudioOutputMaximumWireBytes* = 417
const Ros2Aimdk_msgsMsgProcessedAudioOutputCodecIdentity* = "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30"
const Ros2Aimdk_msgsMsgProcessedAudioOutputNativeType* = "aimdk_msgs/msg/ProcessedAudioOutput"
const Ros2Aimdk_msgsMsgProcessedAudioOutputNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgProcessedAudioOutput*(): Ros2Aimdk_msgsMsgProcessedAudioOutput =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`stream_id` = 0
  result.`audio_vad_state` = initRos2Aimdk_msgsMsgAudioVadStateType()
  result.`audio_data` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgProcessedAudioOutput; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`stream_id`)
  writeFields(value.`audio_vad_state`,w)
  if value.`audio_data`.len > 256: fail(22)
  putInteger(w,uint32(value.`audio_data`.len))
  for e in value.`audio_data`:
    putInteger(w,e)
proc readRos2Aimdk_msgsMsgProcessedAudioOutput*(r: var Reader): Ros2Aimdk_msgsMsgProcessedAudioOutput =
  result = initRos2Aimdk_msgsMsgProcessedAudioOutput()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`stream_id` = getInteger(r,uint32)
  result.`audio_vad_state` = readRos2Aimdk_msgsMsgAudioVadStateType(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 256: fail(22)
  let count3 = int(rawcount3)
  result.`audio_data` = newSeq[uint8](count3)
  for i in 0..<count3:
    result.`audio_data`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgProcessedAudioOutput): seq[byte] =
  var w = initWriter(417)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgProcessedAudioOutput*(b: seq[byte]): Ros2Aimdk_msgsMsgProcessedAudioOutput =
  var r = initReader(b,417)
  result = readRos2Aimdk_msgsMsgProcessedAudioOutput(r)
  finish(r)
type Ros2Aimdk_msgsMsgQRPoint* = object
  `point_id`*: int32
  `qr_code`*: Ros2Aimdk_msgsMsgQRCode
const Ros2Aimdk_msgsMsgQRPointMaximumWireBytes* = 64
const Ros2Aimdk_msgsMsgQRPointCodecIdentity* = "UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e"
const Ros2Aimdk_msgsMsgQRPointNativeType* = "aimdk_msgs/msg/QRPoint"
const Ros2Aimdk_msgsMsgQRPointNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgQRPoint*(): Ros2Aimdk_msgsMsgQRPoint =
  result.`point_id` = 0
  result.`qr_code` = initRos2Aimdk_msgsMsgQRCode()
proc writeFields*(value: Ros2Aimdk_msgsMsgQRPoint; w: var Writer) =
  putInteger(w,value.`point_id`)
  writeFields(value.`qr_code`,w)
proc readRos2Aimdk_msgsMsgQRPoint*(r: var Reader): Ros2Aimdk_msgsMsgQRPoint =
  result = initRos2Aimdk_msgsMsgQRPoint()
  result.`point_id` = getInteger(r,int32)
  result.`qr_code` = readRos2Aimdk_msgsMsgQRCode(r)
proc encode*(value: Ros2Aimdk_msgsMsgQRPoint): seq[byte] =
  var w = initWriter(64)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgQRPoint*(b: seq[byte]): Ros2Aimdk_msgsMsgQRPoint =
  var r = initReader(b,64)
  result = readRos2Aimdk_msgsMsgQRPoint(r)
  finish(r)
type Ros2Geometry_msgsMsgPoint32* = object
  `x`*: float32
  `y`*: float32
  `z`*: float32
const Ros2Geometry_msgsMsgPoint32MaximumWireBytes* = 12
const Ros2Geometry_msgsMsgPoint32CodecIdentity* = "UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9"
const Ros2Geometry_msgsMsgPoint32NativeType* = "geometry_msgs/msg/Point32"
const Ros2Geometry_msgsMsgPoint32NativeIdentity* = ""
proc initRos2Geometry_msgsMsgPoint32*(): Ros2Geometry_msgsMsgPoint32 =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros2Geometry_msgsMsgPoint32; w: var Writer) =
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
proc readRos2Geometry_msgsMsgPoint32*(r: var Reader): Ros2Geometry_msgsMsgPoint32 =
  result = initRos2Geometry_msgsMsgPoint32()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
proc encode*(value: Ros2Geometry_msgsMsgPoint32): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPoint32*(b: seq[byte]): Ros2Geometry_msgsMsgPoint32 =
  var r = initReader(b,12)
  result = readRos2Geometry_msgsMsgPoint32(r)
  finish(r)
type Ros2Geometry_msgsMsgPolygon* = object
  `points`*: seq[Ros2Geometry_msgsMsgPoint32]
const Ros2Geometry_msgsMsgPolygonMaximumWireBytes* = 52
const Ros2Geometry_msgsMsgPolygonCodecIdentity* = "UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8"
const Ros2Geometry_msgsMsgPolygonNativeType* = "geometry_msgs/msg/Polygon"
const Ros2Geometry_msgsMsgPolygonNativeIdentity* = ""
proc initRos2Geometry_msgsMsgPolygon*(): Ros2Geometry_msgsMsgPolygon =
  result.`points` = @[]
proc writeFields*(value: Ros2Geometry_msgsMsgPolygon; w: var Writer) =
  if value.`points`.len > 4: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
proc readRos2Geometry_msgsMsgPolygon*(r: var Reader): Ros2Geometry_msgsMsgPolygon =
  result = initRos2Geometry_msgsMsgPolygon()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`points` = newSeq[Ros2Geometry_msgsMsgPoint32](count0)
  for i in 0..<count0:
    result.`points`[i] = readRos2Geometry_msgsMsgPoint32(r)
proc encode*(value: Ros2Geometry_msgsMsgPolygon): seq[byte] =
  var w = initWriter(52)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPolygon*(b: seq[byte]): Ros2Geometry_msgsMsgPolygon =
  var r = initReader(b,52)
  result = readRos2Geometry_msgsMsgPolygon(r)
  finish(r)
type Ros2Aimdk_msgsMsgRegion* = object
  `type`*: uint8
  `drawing_type`*: uint8
  `name`*: string
  `polygon`*: Ros2Geometry_msgsMsgPolygon
const Ros2Aimdk_msgsMsgRegionMaximumWireBytes* = 186
const Ros2Aimdk_msgsMsgRegionCodecIdentity* = "UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce"
const Ros2Aimdk_msgsMsgRegionNativeType* = "aimdk_msgs/msg/Region"
const Ros2Aimdk_msgsMsgRegionNativeIdentity* = ""
const Ros2Aimdk_msgsMsgRegion_REGION_UNDEFINED*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgRegion_REGION_WORKING_SPACE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgRegion_REGION_VIRTUAL_WALL*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgRegion_REGION_DRAWING_UNDEFINED*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgRegion_REGION_DRAWING_CLOSURE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgRegion_REGION_DRAWING_LINES*: uint8 = 2'u8
proc initRos2Aimdk_msgsMsgRegion*(): Ros2Aimdk_msgsMsgRegion =
  result.`type` = 0
  result.`drawing_type` = 0
  result.`name` = ""
  result.`polygon` = initRos2Geometry_msgsMsgPolygon()
proc writeFields*(value: Ros2Aimdk_msgsMsgRegion; w: var Writer) =
  putInteger(w,value.`type`)
  putInteger(w,value.`drawing_type`)
  putString(w,value.`name`,128)
  writeFields(value.`polygon`,w)
proc readRos2Aimdk_msgsMsgRegion*(r: var Reader): Ros2Aimdk_msgsMsgRegion =
  result = initRos2Aimdk_msgsMsgRegion()
  result.`type` = getInteger(r,uint8)
  result.`drawing_type` = getInteger(r,uint8)
  result.`name` = getString(r,128)
  result.`polygon` = readRos2Geometry_msgsMsgPolygon(r)
proc encode*(value: Ros2Aimdk_msgsMsgRegion): seq[byte] =
  var w = initWriter(186)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgRegion*(b: seq[byte]): Ros2Aimdk_msgsMsgRegion =
  var r = initReader(b,186)
  result = readRos2Aimdk_msgsMsgRegion(r)
  finish(r)
type Ros2Aimdk_msgsMsgRobotResource* = object
  `resource_key`*: string
  `current_version`*: Ros2Aimdk_msgsMsgCurrentVersion
const Ros2Aimdk_msgsMsgRobotResourceMaximumWireBytes* = 2520
const Ros2Aimdk_msgsMsgRobotResourceCodecIdentity* = "UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d"
const Ros2Aimdk_msgsMsgRobotResourceNativeType* = "aimdk_msgs/msg/RobotResource"
const Ros2Aimdk_msgsMsgRobotResourceNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgRobotResource*(): Ros2Aimdk_msgsMsgRobotResource =
  result.`resource_key` = ""
  result.`current_version` = initRos2Aimdk_msgsMsgCurrentVersion()
proc writeFields*(value: Ros2Aimdk_msgsMsgRobotResource; w: var Writer) =
  putString(w,value.`resource_key`,128)
  writeFields(value.`current_version`,w)
proc readRos2Aimdk_msgsMsgRobotResource*(r: var Reader): Ros2Aimdk_msgsMsgRobotResource =
  result = initRos2Aimdk_msgsMsgRobotResource()
  result.`resource_key` = getString(r,128)
  result.`current_version` = readRos2Aimdk_msgsMsgCurrentVersion(r)
proc encode*(value: Ros2Aimdk_msgsMsgRobotResource): seq[byte] =
  var w = initWriter(2520)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgRobotResource*(b: seq[byte]): Ros2Aimdk_msgsMsgRobotResource =
  var r = initReader(b,2520)
  result = readRos2Aimdk_msgsMsgRobotResource(r)
  finish(r)
type Ros2Aimdk_msgsMsgSlaveDevice* = object
  `ip`*: string
const Ros2Aimdk_msgsMsgSlaveDeviceMaximumWireBytes* = 132
const Ros2Aimdk_msgsMsgSlaveDeviceCodecIdentity* = "UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255"
const Ros2Aimdk_msgsMsgSlaveDeviceNativeType* = "aimdk_msgs/msg/SlaveDevice"
const Ros2Aimdk_msgsMsgSlaveDeviceNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgSlaveDevice*(): Ros2Aimdk_msgsMsgSlaveDevice =
  result.`ip` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgSlaveDevice; w: var Writer) =
  putString(w,value.`ip`,128)
proc readRos2Aimdk_msgsMsgSlaveDevice*(r: var Reader): Ros2Aimdk_msgsMsgSlaveDevice =
  result = initRos2Aimdk_msgsMsgSlaveDevice()
  result.`ip` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgSlaveDevice): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgSlaveDevice*(b: seq[byte]): Ros2Aimdk_msgsMsgSlaveDevice =
  var r = initReader(b,132)
  result = readRos2Aimdk_msgsMsgSlaveDevice(r)
  finish(r)
type Ros2Aimdk_msgsMsgSystemStatus* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgSystemStatusMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgSystemStatusCodecIdentity* = "UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1"
const Ros2Aimdk_msgsMsgSystemStatusNativeType* = "aimdk_msgs/msg/SystemStatus"
const Ros2Aimdk_msgsMsgSystemStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgSystemStatus_IN_INITIAL*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgSystemStatus_IN_READY*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgSystemStatus_IN_MOVE*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgSystemStatus_IN_ROLLBACK*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgSystemStatus_IN_FALLBACK*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgSystemStatus_IN_FALLBACK_MOVE*: uint8 = 5'u8
proc initRos2Aimdk_msgsMsgSystemStatus*(): Ros2Aimdk_msgsMsgSystemStatus =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgSystemStatus; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgSystemStatus*(r: var Reader): Ros2Aimdk_msgsMsgSystemStatus =
  result = initRos2Aimdk_msgsMsgSystemStatus()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgSystemStatus): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgSystemStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgSystemStatus =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgSystemStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgSmSystemState* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `cur_state`*: string
  `cur_status`*: Ros2Aimdk_msgsMsgSystemStatus
const Ros2Aimdk_msgsMsgSmSystemStateMaximumWireBytes* = 285
const Ros2Aimdk_msgsMsgSmSystemStateCodecIdentity* = "UWVMROS1_32df2f2ac235992629e4fd98257feaac52917482d1065071a4513eaf611980ce"
const Ros2Aimdk_msgsMsgSmSystemStateNativeType* = "aimdk_msgs/msg/SmSystemState"
const Ros2Aimdk_msgsMsgSmSystemStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgSmSystemState*(): Ros2Aimdk_msgsMsgSmSystemState =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`cur_state` = ""
  result.`cur_status` = initRos2Aimdk_msgsMsgSystemStatus()
proc writeFields*(value: Ros2Aimdk_msgsMsgSmSystemState; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`cur_state`,128)
  writeFields(value.`cur_status`,w)
proc readRos2Aimdk_msgsMsgSmSystemState*(r: var Reader): Ros2Aimdk_msgsMsgSmSystemState =
  result = initRos2Aimdk_msgsMsgSmSystemState()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`cur_state` = getString(r,128)
  result.`cur_status` = readRos2Aimdk_msgsMsgSystemStatus(r)
proc encode*(value: Ros2Aimdk_msgsMsgSmSystemState): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgSmSystemState*(b: seq[byte]): Ros2Aimdk_msgsMsgSmSystemState =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsMsgSmSystemState(r)
  finish(r)
type Ros2Aimdk_msgsMsgTaskMasterState* = object
  `main_state`*: uint8
  `sub_state`*: uint8
  `slam_state`*: uint8
  `loc_map_id`*: uint64
  `loc_map_name`*: string
  `fix_line_intro_state`*: Ros2Aimdk_msgsMsgFixLineIntroState
  `pilot_state`*: Ros2Aimdk_msgsMsgPilotState
  `reserve_info`*: string
const Ros2Aimdk_msgsMsgTaskMasterStateMaximumWireBytes* = 1129
const Ros2Aimdk_msgsMsgTaskMasterStateCodecIdentity* = "UWVMROS1_90307681af8de801b0fac5e757fb89f1d23e33efdbdf939666b884b8d260a7a4"
const Ros2Aimdk_msgsMsgTaskMasterStateNativeType* = "aimdk_msgs/msg/TaskMasterState"
const Ros2Aimdk_msgsMsgTaskMasterStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgTaskMasterState_TM_MAIN_STATE_IDLE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_MAIN_STATE_RELOCALIZATION*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_MAIN_STATE_MAPPING*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_MAIN_STATE_FIX_LINE_INTRO*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_MAIN_STATE_RECORDING_PATH*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_MAIN_STATE_PILOT*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_SUB_STATE_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_SUB_STATE_RESUME*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgTaskMasterState_TM_SUB_STATE_PAUSE*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgTaskMasterState_SLAM_STATE_IDLE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgTaskMasterState_SLAM_STATE_RELOCALIZATION*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgTaskMasterState_SLAM_STATE_MAPPING*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgTaskMasterState_SLAM_STATE_LOCALIZATION*: uint8 = 3'u8
proc initRos2Aimdk_msgsMsgTaskMasterState*(): Ros2Aimdk_msgsMsgTaskMasterState =
  result.`main_state` = 0
  result.`sub_state` = 0
  result.`slam_state` = 0
  result.`loc_map_id` = 0
  result.`loc_map_name` = ""
  result.`fix_line_intro_state` = initRos2Aimdk_msgsMsgFixLineIntroState()
  result.`pilot_state` = initRos2Aimdk_msgsMsgPilotState()
  result.`reserve_info` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgTaskMasterState; w: var Writer) =
  putInteger(w,value.`main_state`)
  putInteger(w,value.`sub_state`)
  putInteger(w,value.`slam_state`)
  putInteger(w,value.`loc_map_id`)
  putString(w,value.`loc_map_name`,128)
  writeFields(value.`fix_line_intro_state`,w)
  writeFields(value.`pilot_state`,w)
  putString(w,value.`reserve_info`,128)
proc readRos2Aimdk_msgsMsgTaskMasterState*(r: var Reader): Ros2Aimdk_msgsMsgTaskMasterState =
  result = initRos2Aimdk_msgsMsgTaskMasterState()
  result.`main_state` = getInteger(r,uint8)
  result.`sub_state` = getInteger(r,uint8)
  result.`slam_state` = getInteger(r,uint8)
  result.`loc_map_id` = getInteger(r,uint64)
  result.`loc_map_name` = getString(r,128)
  result.`fix_line_intro_state` = readRos2Aimdk_msgsMsgFixLineIntroState(r)
  result.`pilot_state` = readRos2Aimdk_msgsMsgPilotState(r)
  result.`reserve_info` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgTaskMasterState): seq[byte] =
  var w = initWriter(1129)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgTaskMasterState*(b: seq[byte]): Ros2Aimdk_msgsMsgTaskMasterState =
  var r = initReader(b,1129)
  result = readRos2Aimdk_msgsMsgTaskMasterState(r)
  finish(r)
type Ros2Aimdk_msgsMsgTouchState* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `event_type`*: uint8
  `data`*: array[8,uint32]
  `threshold`*: array[8,uint32]
  `is_touched`*: array[8,bool]
const Ros2Aimdk_msgsMsgTouchStateMaximumWireBytes* = 225
const Ros2Aimdk_msgsMsgTouchStateCodecIdentity* = "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564"
const Ros2Aimdk_msgsMsgTouchStateNativeType* = "aimdk_msgs/msg/TouchState"
const Ros2Aimdk_msgsMsgTouchStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgTouchState_UNKNOWN*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgTouchState_IDLE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgTouchState_TOUCH*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgTouchState_SLIDE*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgTouchState_PAT_ONCE*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgTouchState_PAT_TWICE*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgTouchState_PAT_TRIPLE*: uint8 = 6'u8
proc initRos2Aimdk_msgsMsgTouchState*(): Ros2Aimdk_msgsMsgTouchState =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`event_type` = 0
  result.`data` = [0,0,0,0,0,0,0,0]
  result.`threshold` = [0,0,0,0,0,0,0,0]
  result.`is_touched` = [false,false,false,false,false,false,false,false]
proc writeFields*(value: Ros2Aimdk_msgsMsgTouchState; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`event_type`)
  for e in value.`data`:
    putInteger(w,e)
  for e in value.`threshold`:
    putInteger(w,e)
  for e in value.`is_touched`:
    putBool(w,e)
proc readRos2Aimdk_msgsMsgTouchState*(r: var Reader): Ros2Aimdk_msgsMsgTouchState =
  result = initRos2Aimdk_msgsMsgTouchState()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`event_type` = getInteger(r,uint8)
  let count2 = 8
  for i in 0..<count2:
    result.`data`[i] = getInteger(r,uint32)
  let count3 = 8
  for i in 0..<count3:
    result.`threshold`[i] = getInteger(r,uint32)
  let count4 = 8
  for i in 0..<count4:
    result.`is_touched`[i] = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgTouchState): seq[byte] =
  var w = initWriter(225)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgTouchState*(b: seq[byte]): Ros2Aimdk_msgsMsgTouchState =
  var r = initReader(b,225)
  result = readRos2Aimdk_msgsMsgTouchState(r)
  finish(r)
type Ros2Aimdk_msgsMsgUpperBodyCommandArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `source`*: string
  `hand_sub_mode`*: uint8
  `head_pos`*: array[2,float64]
  `arm_pos`*: array[14,float64]
  `hand_pos`*: seq[float64]
const Ros2Aimdk_msgsMsgUpperBodyCommandArrayMaximumWireBytes* = 545
const Ros2Aimdk_msgsMsgUpperBodyCommandArrayCodecIdentity* = "UWVMROS1_7f283521eed5b5febcba3cd0b19e1948749c2898c753e8b57983ec966a4ccbe0"
const Ros2Aimdk_msgsMsgUpperBodyCommandArrayNativeType* = "aimdk_msgs/msg/UpperBodyCommandArray"
const Ros2Aimdk_msgsMsgUpperBodyCommandArrayNativeIdentity* = ""
const Ros2Aimdk_msgsMsgUpperBodyCommandArray_HAND_CLAW_OPEN_CLOSE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgUpperBodyCommandArray_HAND_DEXTEROUS_JOINT*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgUpperBodyCommandArray_HAND_DEXTEROUS_GESTURE*: uint8 = 3'u8
proc initRos2Aimdk_msgsMsgUpperBodyCommandArray*(): Ros2Aimdk_msgsMsgUpperBodyCommandArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`source` = ""
  result.`hand_sub_mode` = 0
  result.`head_pos` = [0,0]
  result.`arm_pos` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  result.`hand_pos` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgUpperBodyCommandArray; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`source`,128)
  putInteger(w,value.`hand_sub_mode`)
  for e in value.`head_pos`:
    putFloat64(w,e)
  for e in value.`arm_pos`:
    putFloat64(w,e)
  if value.`hand_pos`.len > 16: fail(22)
  putInteger(w,uint32(value.`hand_pos`.len))
  for e in value.`hand_pos`:
    putFloat64(w,e)
proc readRos2Aimdk_msgsMsgUpperBodyCommandArray*(r: var Reader): Ros2Aimdk_msgsMsgUpperBodyCommandArray =
  result = initRos2Aimdk_msgsMsgUpperBodyCommandArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`source` = getString(r,128)
  result.`hand_sub_mode` = getInteger(r,uint8)
  let count3 = 2
  for i in 0..<count3:
    result.`head_pos`[i] = getFloat64(r)
  let count4 = 14
  for i in 0..<count4:
    result.`arm_pos`[i] = getFloat64(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 16: fail(22)
  let count5 = int(rawcount5)
  result.`hand_pos` = newSeq[float64](count5)
  for i in 0..<count5:
    result.`hand_pos`[i] = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgUpperBodyCommandArray): seq[byte] =
  var w = initWriter(545)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgUpperBodyCommandArray*(b: seq[byte]): Ros2Aimdk_msgsMsgUpperBodyCommandArray =
  var r = initReader(b,545)
  result = readRos2Aimdk_msgsMsgUpperBodyCommandArray(r)
  finish(r)
type Ros2Aimdk_msgsSrvAbandonAudioFocus_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `focus_requester`*: Ros2Aimdk_msgsMsgFocusRequester
const Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestMaximumWireBytes* = 148
const Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestCodecIdentity* = "UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5"
const Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestNativeType* = "aimdk_msgs/srv/AbandonAudioFocus_Request"
const Ros2Aimdk_msgsSrvAbandonAudioFocus_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvAbandonAudioFocus_Request*(): Ros2Aimdk_msgsSrvAbandonAudioFocus_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`focus_requester` = initRos2Aimdk_msgsMsgFocusRequester()
proc writeFields*(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request; w: var Writer) =
  writeFields(value.`request`,w)
  writeFields(value.`focus_requester`,w)
proc readRos2Aimdk_msgsSrvAbandonAudioFocus_Request*(r: var Reader): Ros2Aimdk_msgsSrvAbandonAudioFocus_Request =
  result = initRos2Aimdk_msgsSrvAbandonAudioFocus_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`focus_requester` = readRos2Aimdk_msgsMsgFocusRequester(r)
proc encode*(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request): seq[byte] =
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvAbandonAudioFocus_Request =
  var r = initReader(b,148)
  result = readRos2Aimdk_msgsSrvAbandonAudioFocus_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvAbandonAudioFocus_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `focus_response`*: Ros2Aimdk_msgsMsgFocusResponse
const Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseCodecIdentity* = "UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376"
const Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseNativeType* = "aimdk_msgs/srv/AbandonAudioFocus_Response"
const Ros2Aimdk_msgsSrvAbandonAudioFocus_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvAbandonAudioFocus_Response*(): Ros2Aimdk_msgsSrvAbandonAudioFocus_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`focus_response` = initRos2Aimdk_msgsMsgFocusResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  writeFields(value.`focus_response`,w)
proc readRos2Aimdk_msgsSrvAbandonAudioFocus_Response*(r: var Reader): Ros2Aimdk_msgsSrvAbandonAudioFocus_Response =
  result = initRos2Aimdk_msgsSrvAbandonAudioFocus_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`focus_response` = readRos2Aimdk_msgsMsgFocusResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvAbandonAudioFocus_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvAbandonAudioFocus_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvExecuteActionResource_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `resource_key`*: string
  `resource_version`*: string
  `slaves`*: seq[Ros2Aimdk_msgsMsgSlaveDevice]
  `meta`*: string
const Ros2Aimdk_msgsSrvExecuteActionResource_RequestMaximumWireBytes* = 936
const Ros2Aimdk_msgsSrvExecuteActionResource_RequestCodecIdentity* = "UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56"
const Ros2Aimdk_msgsSrvExecuteActionResource_RequestNativeType* = "aimdk_msgs/srv/ExecuteActionResource_Request"
const Ros2Aimdk_msgsSrvExecuteActionResource_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvExecuteActionResource_Request*(): Ros2Aimdk_msgsSrvExecuteActionResource_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`resource_key` = ""
  result.`resource_version` = ""
  result.`slaves` = @[]
  result.`meta` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvExecuteActionResource_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`resource_key`,128)
  putString(w,value.`resource_version`,128)
  if value.`slaves`.len > 4: fail(22)
  putInteger(w,uint32(value.`slaves`.len))
  for e in value.`slaves`:
    writeFields(e,w)
  putString(w,value.`meta`,128)
proc readRos2Aimdk_msgsSrvExecuteActionResource_Request*(r: var Reader): Ros2Aimdk_msgsSrvExecuteActionResource_Request =
  result = initRos2Aimdk_msgsSrvExecuteActionResource_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`resource_key` = getString(r,128)
  result.`resource_version` = getString(r,128)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`slaves` = newSeq[Ros2Aimdk_msgsMsgSlaveDevice](count3)
  for i in 0..<count3:
    result.`slaves`[i] = readRos2Aimdk_msgsMsgSlaveDevice(r)
  result.`meta` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvExecuteActionResource_Request): seq[byte] =
  var w = initWriter(936)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvExecuteActionResource_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvExecuteActionResource_Request =
  var r = initReader(b,936)
  result = readRos2Aimdk_msgsSrvExecuteActionResource_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvExecuteActionResource_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvExecuteActionResource_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvExecuteActionResource_ResponseCodecIdentity* = "UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011"
const Ros2Aimdk_msgsSrvExecuteActionResource_ResponseNativeType* = "aimdk_msgs/srv/ExecuteActionResource_Response"
const Ros2Aimdk_msgsSrvExecuteActionResource_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvExecuteActionResource_Response*(): Ros2Aimdk_msgsSrvExecuteActionResource_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvExecuteActionResource_Response; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvExecuteActionResource_Response*(r: var Reader): Ros2Aimdk_msgsSrvExecuteActionResource_Response =
  result = initRos2Aimdk_msgsSrvExecuteActionResource_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvExecuteActionResource_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvExecuteActionResource_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvExecuteActionResource_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvExecuteActionResource_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetAllJointState_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetAllJointState_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetAllJointState_RequestCodecIdentity* = "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260"
const Ros2Aimdk_msgsSrvGetAllJointState_RequestNativeType* = "aimdk_msgs/srv/GetAllJointState_Request"
const Ros2Aimdk_msgsSrvGetAllJointState_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetAllJointState_Request*(): Ros2Aimdk_msgsSrvGetAllJointState_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetAllJointState_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetAllJointState_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetAllJointState_Request =
  result = initRos2Aimdk_msgsSrvGetAllJointState_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetAllJointState_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetAllJointState_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetAllJointState_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetAllJointState_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetAllJointState_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `head_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
  `arm_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
  `waist_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
  `leg_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseMaximumWireBytes* = 2696
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodecIdentity* = "UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2"
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseNativeType* = "aimdk_msgs/srv/GetAllJointState_Response"
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetAllJointState_Response*(): Ros2Aimdk_msgsSrvGetAllJointState_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`head_joints` = @[]
  result.`arm_joints` = @[]
  result.`waist_joints` = @[]
  result.`leg_joints` = @[]
proc writeFields*(value: Ros2Aimdk_msgsSrvGetAllJointState_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  if value.`head_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`head_joints`.len))
  for e in value.`head_joints`:
    writeFields(e,w)
  if value.`arm_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`arm_joints`.len))
  for e in value.`arm_joints`:
    writeFields(e,w)
  if value.`waist_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`waist_joints`.len))
  for e in value.`waist_joints`:
    writeFields(e,w)
  if value.`leg_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`leg_joints`.len))
  for e in value.`leg_joints`:
    writeFields(e,w)
proc readRos2Aimdk_msgsSrvGetAllJointState_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetAllJointState_Response =
  result = initRos2Aimdk_msgsSrvGetAllJointState_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`head_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count1)
  for i in 0..<count1:
    result.`head_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`arm_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count2)
  for i in 0..<count2:
    result.`arm_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`waist_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count3)
  for i in 0..<count3:
    result.`waist_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`leg_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count4)
  for i in 0..<count4:
    result.`leg_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetAllJointState_Response): seq[byte] =
  var w = initWriter(2696)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetAllJointState_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetAllJointState_Response =
  var r = initReader(b,2696)
  result = readRos2Aimdk_msgsSrvGetAllJointState_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetCurrentInputSource_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodecIdentity* = "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestNativeType* = "aimdk_msgs/srv/GetCurrentInputSource_Request"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetCurrentInputSource_Request*(): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetCurrentInputSource_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request =
  result = initRos2Aimdk_msgsSrvGetCurrentInputSource_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetCurrentInputSource_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetCurrentInputSource_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonTaskResponse
  `input_source`*: Ros2Aimdk_msgsMsgMcInputSource
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseMaximumWireBytes* = 168
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodecIdentity* = "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseNativeType* = "aimdk_msgs/srv/GetCurrentInputSource_Response"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetCurrentInputSource_Response*(): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonTaskResponse()
  result.`input_source` = initRos2Aimdk_msgsMsgMcInputSource()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; w: var Writer) =
  writeFields(value.`response`,w)
  writeFields(value.`input_source`,w)
proc readRos2Aimdk_msgsSrvGetCurrentInputSource_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response =
  result = initRos2Aimdk_msgsSrvGetCurrentInputSource_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
  result.`input_source` = readRos2Aimdk_msgsMsgMcInputSource(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response): seq[byte] =
  var w = initWriter(168)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response =
  var r = initReader(b,168)
  result = readRos2Aimdk_msgsSrvGetCurrentInputSource_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetHandType_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetHandType_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetHandType_RequestCodecIdentity* = "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470"
const Ros2Aimdk_msgsSrvGetHandType_RequestNativeType* = "aimdk_msgs/srv/GetHandType_Request"
const Ros2Aimdk_msgsSrvGetHandType_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetHandType_Request*(): Ros2Aimdk_msgsSrvGetHandType_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetHandType_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetHandType_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetHandType_Request =
  result = initRos2Aimdk_msgsSrvGetHandType_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetHandType_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetHandType_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetHandType_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetHandType_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetHandType_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `left_hands_type`*: Ros2Aimdk_msgsMsgHandType
  `right_hands_type`*: Ros2Aimdk_msgsMsgHandType
const Ros2Aimdk_msgsSrvGetHandType_ResponseMaximumWireBytes* = 154
const Ros2Aimdk_msgsSrvGetHandType_ResponseCodecIdentity* = "UWVMROS1_a4911dedef84b0d6702905f580cf911b4cde7b14b5beac3b516d3faca3b39726"
const Ros2Aimdk_msgsSrvGetHandType_ResponseNativeType* = "aimdk_msgs/srv/GetHandType_Response"
const Ros2Aimdk_msgsSrvGetHandType_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetHandType_Response*(): Ros2Aimdk_msgsSrvGetHandType_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`left_hands_type` = initRos2Aimdk_msgsMsgHandType()
  result.`right_hands_type` = initRos2Aimdk_msgsMsgHandType()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetHandType_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  writeFields(value.`left_hands_type`,w)
  writeFields(value.`right_hands_type`,w)
proc readRos2Aimdk_msgsSrvGetHandType_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetHandType_Response =
  result = initRos2Aimdk_msgsSrvGetHandType_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`left_hands_type` = readRos2Aimdk_msgsMsgHandType(r)
  result.`right_hands_type` = readRos2Aimdk_msgsMsgHandType(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetHandType_Response): seq[byte] =
  var w = initWriter(154)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetHandType_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetHandType_Response =
  var r = initReader(b,154)
  result = readRos2Aimdk_msgsSrvGetHandType_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetHdsEventHistory_Request* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
  `query`*: Ros2Aimdk_msgsMsgHdsEventQuery
const Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestMaximumWireBytes* = 4398
const Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestCodecIdentity* = "UWVMROS1_9a2916041770f7392e93bdb21736c5b3b218cbbd65b9533451db64efc670e7da"
const Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestNativeType* = "aimdk_msgs/srv/GetHdsEventHistory_Request"
const Ros2Aimdk_msgsSrvGetHdsEventHistory_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetHdsEventHistory_Request*(): Ros2Aimdk_msgsSrvGetHdsEventHistory_Request =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
  result.`query` = initRos2Aimdk_msgsMsgHdsEventQuery()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`query`,w)
proc readRos2Aimdk_msgsSrvGetHdsEventHistory_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetHdsEventHistory_Request =
  result = initRos2Aimdk_msgsSrvGetHdsEventHistory_Request()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
  result.`query` = readRos2Aimdk_msgsMsgHdsEventQuery(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Request): seq[byte] =
  var w = initWriter(4398)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetHdsEventHistory_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetHdsEventHistory_Request =
  var r = initReader(b,4398)
  result = readRos2Aimdk_msgsSrvGetHdsEventHistory_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetHdsEventHistory_Response* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `records`*: seq[Ros2Aimdk_msgsMsgHdsEventRecord]
  `total_count`*: uint32
  `has_more`*: bool
const Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseMaximumWireBytes* = 1277
const Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseCodecIdentity* = "UWVMROS1_ce2d51d64e2f318ef7e8cfb294969e3e9267f9355780fd3a45acc7a001783bea"
const Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseNativeType* = "aimdk_msgs/srv/GetHdsEventHistory_Response"
const Ros2Aimdk_msgsSrvGetHdsEventHistory_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetHdsEventHistory_Response*(): Ros2Aimdk_msgsSrvGetHdsEventHistory_Response =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`records` = @[]
  result.`total_count` = 0
  result.`has_more` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Response; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`records`.len > 4: fail(22)
  putInteger(w,uint32(value.`records`.len))
  for e in value.`records`:
    writeFields(e,w)
  putInteger(w,value.`total_count`)
  putBool(w,value.`has_more`)
proc readRos2Aimdk_msgsSrvGetHdsEventHistory_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetHdsEventHistory_Response =
  result = initRos2Aimdk_msgsSrvGetHdsEventHistory_Response()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`records` = newSeq[Ros2Aimdk_msgsMsgHdsEventRecord](count1)
  for i in 0..<count1:
    result.`records`[i] = readRos2Aimdk_msgsMsgHdsEventRecord(r)
  result.`total_count` = getInteger(r,uint32)
  result.`has_more` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Response): seq[byte] =
  var w = initWriter(1277)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetHdsEventHistory_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetHdsEventHistory_Response =
  var r = initReader(b,1277)
  result = readRos2Aimdk_msgsSrvGetHdsEventHistory_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcAction_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetMcAction_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetMcAction_RequestCodecIdentity* = "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe"
const Ros2Aimdk_msgsSrvGetMcAction_RequestNativeType* = "aimdk_msgs/srv/GetMcAction_Request"
const Ros2Aimdk_msgsSrvGetMcAction_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcAction_Request*(): Ros2Aimdk_msgsSrvGetMcAction_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcAction_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetMcAction_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetMcAction_Request =
  result = initRos2Aimdk_msgsSrvGetMcAction_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcAction_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcAction_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcAction_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetMcAction_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcAction_Response* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `info`*: Ros2Aimdk_msgsMsgMcActionInfo
const Ros2Aimdk_msgsSrvGetMcAction_ResponseMaximumWireBytes* = 156
const Ros2Aimdk_msgsSrvGetMcAction_ResponseCodecIdentity* = "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f"
const Ros2Aimdk_msgsSrvGetMcAction_ResponseNativeType* = "aimdk_msgs/srv/GetMcAction_Response"
const Ros2Aimdk_msgsSrvGetMcAction_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcAction_Response*(): Ros2Aimdk_msgsSrvGetMcAction_Response =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`info` = initRos2Aimdk_msgsMsgMcActionInfo()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcAction_Response; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`info`,w)
proc readRos2Aimdk_msgsSrvGetMcAction_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetMcAction_Response =
  result = initRos2Aimdk_msgsSrvGetMcAction_Response()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`info` = readRos2Aimdk_msgsMsgMcActionInfo(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcAction_Response): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcAction_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcAction_Response =
  var r = initReader(b,156)
  result = readRos2Aimdk_msgsSrvGetMcAction_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestCodecIdentity* = "UWVMROS1_3ba1d0408e9a60f37a17a790d89bb7f7da0ba8618fc5da56a8d92122989a8b3b"
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestNativeType* = "aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Request"
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request*(): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request =
  result = initRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `current_speed_status`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
  `none_speed_status`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
  `low_speed_status`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
  `medium_speed_status`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
  `high_speed_status`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
  `step_speed_status`*: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseMaximumWireBytes* = 328
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseCodecIdentity* = "UWVMROS1_6b27a64e371638dc12d2a469f6dbac32d09d2ecd9d5348b96782d94204056d54"
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseNativeType* = "aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Response"
const Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response*(): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`current_speed_status` = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
  result.`none_speed_status` = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
  result.`low_speed_status` = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
  result.`medium_speed_status` = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
  result.`high_speed_status` = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
  result.`step_speed_status` = initRos2Aimdk_msgsMsgMcLocomotionSpeedStatus()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`current_speed_status`,w)
  writeFields(value.`none_speed_status`,w)
  writeFields(value.`low_speed_status`,w)
  writeFields(value.`medium_speed_status`,w)
  writeFields(value.`high_speed_status`,w)
  writeFields(value.`step_speed_status`,w)
proc readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response =
  result = initRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`current_speed_status` = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
  result.`none_speed_status` = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
  result.`low_speed_status` = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
  result.`medium_speed_status` = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
  result.`high_speed_status` = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
  result.`step_speed_status` = readRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response): seq[byte] =
  var w = initWriter(328)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response =
  var r = initReader(b,328)
  result = readRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonTaskRequest
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestMaximumWireBytes* = 16
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestCodecIdentity* = "UWVMROS1_7faee35b0b5a2494d668743b5f21e59bb167c553c5f4b61be97eabb8f044e095"
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestNativeType* = "aimdk_msgs/srv/GetMcPresetMotionState_Request"
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcPresetMotionState_Request*(): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonTaskRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetMcPresetMotionState_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request =
  result = initRos2Aimdk_msgsSrvGetMcPresetMotionState_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonTaskRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request =
  var r = initReader(b,16)
  result = readRos2Aimdk_msgsSrvGetMcPresetMotionState_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonTaskResponse
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseMaximumWireBytes* = 28
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseCodecIdentity* = "UWVMROS1_490aef5363792dc0f0148fe1fbb3e6036238341c41de104445d9d35191e76e30"
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseNativeType* = "aimdk_msgs/srv/GetMcPresetMotionState_Response"
const Ros2Aimdk_msgsSrvGetMcPresetMotionState_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcPresetMotionState_Response*(): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonTaskResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response; w: var Writer) =
  writeFields(value.`response`,w)
proc readRos2Aimdk_msgsSrvGetMcPresetMotionState_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response =
  result = initRos2Aimdk_msgsSrvGetMcPresetMotionState_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMicSourceRequest_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestCodecIdentity* = "UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc"
const Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestNativeType* = "aimdk_msgs/srv/GetMicSourceRequest_Request"
const Ros2Aimdk_msgsSrvGetMicSourceRequest_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMicSourceRequest_Request*(): Ros2Aimdk_msgsSrvGetMicSourceRequest_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvGetMicSourceRequest_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetMicSourceRequest_Request =
  result = initRos2Aimdk_msgsSrvGetMicSourceRequest_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMicSourceRequest_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetMicSourceRequest_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMicSourceRequest_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `mic_source`*: uint32
const Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseMaximumWireBytes* = 156
const Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseCodecIdentity* = "UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6"
const Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseNativeType* = "aimdk_msgs/srv/GetMicSourceRequest_Response"
const Ros2Aimdk_msgsSrvGetMicSourceRequest_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMicSourceRequest_Response*(): Ros2Aimdk_msgsSrvGetMicSourceRequest_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`mic_source` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`mic_source`)
proc readRos2Aimdk_msgsSrvGetMicSourceRequest_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetMicSourceRequest_Response =
  result = initRos2Aimdk_msgsSrvGetMicSourceRequest_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`mic_source` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMicSourceRequest_Response =
  var r = initReader(b,156)
  result = readRos2Aimdk_msgsSrvGetMicSourceRequest_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMute_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetMute_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetMute_RequestCodecIdentity* = "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5"
const Ros2Aimdk_msgsSrvGetMute_RequestNativeType* = "aimdk_msgs/srv/GetMute_Request"
const Ros2Aimdk_msgsSrvGetMute_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMute_Request*(): Ros2Aimdk_msgsSrvGetMute_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMute_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetMute_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetMute_Request =
  result = initRos2Aimdk_msgsSrvGetMute_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMute_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMute_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMute_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetMute_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMute_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `is_mute`*: bool
const Ros2Aimdk_msgsSrvGetMute_ResponseMaximumWireBytes* = 153
const Ros2Aimdk_msgsSrvGetMute_ResponseCodecIdentity* = "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42"
const Ros2Aimdk_msgsSrvGetMute_ResponseNativeType* = "aimdk_msgs/srv/GetMute_Response"
const Ros2Aimdk_msgsSrvGetMute_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMute_Response*(): Ros2Aimdk_msgsSrvGetMute_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`is_mute` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMute_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putBool(w,value.`is_mute`)
proc readRos2Aimdk_msgsSrvGetMute_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetMute_Response =
  result = initRos2Aimdk_msgsSrvGetMute_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`is_mute` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMute_Response): seq[byte] =
  var w = initWriter(153)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMute_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMute_Response =
  var r = initReader(b,153)
  result = readRos2Aimdk_msgsSrvGetMute_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetRobotResources_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetRobotResources_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetRobotResources_RequestCodecIdentity* = "UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b"
const Ros2Aimdk_msgsSrvGetRobotResources_RequestNativeType* = "aimdk_msgs/srv/GetRobotResources_Request"
const Ros2Aimdk_msgsSrvGetRobotResources_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetRobotResources_Request*(): Ros2Aimdk_msgsSrvGetRobotResources_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetRobotResources_Request; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvGetRobotResources_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetRobotResources_Request =
  result = initRos2Aimdk_msgsSrvGetRobotResources_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetRobotResources_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetRobotResources_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetRobotResources_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetRobotResources_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetRobotResources_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `robot_resources`*: seq[Ros2Aimdk_msgsMsgRobotResource]
const Ros2Aimdk_msgsSrvGetRobotResources_ResponseMaximumWireBytes* = 10236
const Ros2Aimdk_msgsSrvGetRobotResources_ResponseCodecIdentity* = "UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91"
const Ros2Aimdk_msgsSrvGetRobotResources_ResponseNativeType* = "aimdk_msgs/srv/GetRobotResources_Response"
const Ros2Aimdk_msgsSrvGetRobotResources_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetRobotResources_Response*(): Ros2Aimdk_msgsSrvGetRobotResources_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`robot_resources` = @[]
proc writeFields*(value: Ros2Aimdk_msgsSrvGetRobotResources_Response; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`robot_resources`.len > 4: fail(22)
  putInteger(w,uint32(value.`robot_resources`.len))
  for e in value.`robot_resources`:
    writeFields(e,w)
proc readRos2Aimdk_msgsSrvGetRobotResources_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetRobotResources_Response =
  result = initRos2Aimdk_msgsSrvGetRobotResources_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`robot_resources` = newSeq[Ros2Aimdk_msgsMsgRobotResource](count1)
  for i in 0..<count1:
    result.`robot_resources`[i] = readRos2Aimdk_msgsMsgRobotResource(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetRobotResources_Response): seq[byte] =
  var w = initWriter(10236)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetRobotResources_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetRobotResources_Response =
  var r = initReader(b,10236)
  result = readRos2Aimdk_msgsSrvGetRobotResources_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetStoredMapByName_Request* = object
  `header`*: Ros2Std_msgsMsgHeader
  `map_name`*: string
const Ros2Aimdk_msgsSrvGetStoredMapByName_RequestMaximumWireBytes* = 272
const Ros2Aimdk_msgsSrvGetStoredMapByName_RequestCodecIdentity* = "UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3"
const Ros2Aimdk_msgsSrvGetStoredMapByName_RequestNativeType* = "aimdk_msgs/srv/GetStoredMapByName_Request"
const Ros2Aimdk_msgsSrvGetStoredMapByName_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetStoredMapByName_Request*(): Ros2Aimdk_msgsSrvGetStoredMapByName_Request =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`map_name` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`map_name`,128)
proc readRos2Aimdk_msgsSrvGetStoredMapByName_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetStoredMapByName_Request =
  result = initRos2Aimdk_msgsSrvGetStoredMapByName_Request()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`map_name` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Request): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetStoredMapByName_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetStoredMapByName_Request =
  var r = initReader(b,272)
  result = readRos2Aimdk_msgsSrvGetStoredMapByName_Request(r)
  finish(r)
type Ros2Nav_msgsMsgMapMetaData* = object
  `map_load_time`*: Ros2Builtin_interfacesMsgTime
  `resolution`*: float32
  `width`*: uint32
  `height`*: uint32
  `origin`*: Ros2Geometry_msgsMsgPose
const Ros2Nav_msgsMsgMapMetaDataMaximumWireBytes* = 76
const Ros2Nav_msgsMsgMapMetaDataCodecIdentity* = "UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009"
const Ros2Nav_msgsMsgMapMetaDataNativeType* = "nav_msgs/msg/MapMetaData"
const Ros2Nav_msgsMsgMapMetaDataNativeIdentity* = ""
proc initRos2Nav_msgsMsgMapMetaData*(): Ros2Nav_msgsMsgMapMetaData =
  result.`map_load_time` = initRos2Builtin_interfacesMsgTime()
  result.`resolution` = 0
  result.`width` = 0
  result.`height` = 0
  result.`origin` = initRos2Geometry_msgsMsgPose()
proc writeFields*(value: Ros2Nav_msgsMsgMapMetaData; w: var Writer) =
  writeFields(value.`map_load_time`,w)
  putFloat32(w,value.`resolution`)
  putInteger(w,value.`width`)
  putInteger(w,value.`height`)
  writeFields(value.`origin`,w)
proc readRos2Nav_msgsMsgMapMetaData*(r: var Reader): Ros2Nav_msgsMsgMapMetaData =
  result = initRos2Nav_msgsMsgMapMetaData()
  result.`map_load_time` = readRos2Builtin_interfacesMsgTime(r)
  result.`resolution` = getFloat32(r)
  result.`width` = getInteger(r,uint32)
  result.`height` = getInteger(r,uint32)
  result.`origin` = readRos2Geometry_msgsMsgPose(r)
proc encode*(value: Ros2Nav_msgsMsgMapMetaData): seq[byte] =
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
proc decodeRos2Nav_msgsMsgMapMetaData*(b: seq[byte]): Ros2Nav_msgsMsgMapMetaData =
  var r = initReader(b,76)
  result = readRos2Nav_msgsMsgMapMetaData(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetStoredMapByName_Response* = object
  `code`*: uint64
  `header`*: Ros2Std_msgsMsgHeader
  `map_info`*: Ros2Nav_msgsMsgMapMetaData
  `map_version`*: uint64
  `map_path`*: string
  `data`*: seq[int8]
  `navi_points`*: seq[Ros2Aimdk_msgsMsgNaviPoint]
  `qr_points`*: seq[Ros2Aimdk_msgsMsgQRPoint]
  `hr_points`*: seq[Ros2Aimdk_msgsMsgHRPoint]
  `paths`*: seq[Ros2Aimdk_msgsMsgPath]
  `regions`*: seq[Ros2Aimdk_msgsMsgRegion]
  `map_id`*: uint64
const Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseMaximumWireBytes* = 3400
const Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseCodecIdentity* = "UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb"
const Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseNativeType* = "aimdk_msgs/srv/GetStoredMapByName_Response"
const Ros2Aimdk_msgsSrvGetStoredMapByName_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetStoredMapByName_Response*(): Ros2Aimdk_msgsSrvGetStoredMapByName_Response =
  result.`code` = 0
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`map_info` = initRos2Nav_msgsMsgMapMetaData()
  result.`map_version` = 0
  result.`map_path` = ""
  result.`data` = @[]
  result.`navi_points` = @[]
  result.`qr_points` = @[]
  result.`hr_points` = @[]
  result.`paths` = @[]
  result.`regions` = @[]
  result.`map_id` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Response; w: var Writer) =
  putInteger(w,value.`code`)
  writeFields(value.`header`,w)
  writeFields(value.`map_info`,w)
  putInteger(w,value.`map_version`)
  putString(w,value.`map_path`,128)
  if value.`data`.len > 256: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
  if value.`navi_points`.len > 4: fail(22)
  putInteger(w,uint32(value.`navi_points`.len))
  for e in value.`navi_points`:
    writeFields(e,w)
  if value.`qr_points`.len > 4: fail(22)
  putInteger(w,uint32(value.`qr_points`.len))
  for e in value.`qr_points`:
    writeFields(e,w)
  if value.`hr_points`.len > 4: fail(22)
  putInteger(w,uint32(value.`hr_points`.len))
  for e in value.`hr_points`:
    writeFields(e,w)
  if value.`paths`.len > 4: fail(22)
  putInteger(w,uint32(value.`paths`.len))
  for e in value.`paths`:
    writeFields(e,w)
  if value.`regions`.len > 4: fail(22)
  putInteger(w,uint32(value.`regions`.len))
  for e in value.`regions`:
    writeFields(e,w)
  putInteger(w,value.`map_id`)
proc readRos2Aimdk_msgsSrvGetStoredMapByName_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetStoredMapByName_Response =
  result = initRos2Aimdk_msgsSrvGetStoredMapByName_Response()
  result.`code` = getInteger(r,uint64)
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`map_info` = readRos2Nav_msgsMsgMapMetaData(r)
  result.`map_version` = getInteger(r,uint64)
  result.`map_path` = getString(r,128)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 256: fail(22)
  let count5 = int(rawcount5)
  result.`data` = newSeq[int8](count5)
  for i in 0..<count5:
    result.`data`[i] = getInteger(r,int8)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 4: fail(22)
  let count6 = int(rawcount6)
  result.`navi_points` = newSeq[Ros2Aimdk_msgsMsgNaviPoint](count6)
  for i in 0..<count6:
    result.`navi_points`[i] = readRos2Aimdk_msgsMsgNaviPoint(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 4: fail(22)
  let count7 = int(rawcount7)
  result.`qr_points` = newSeq[Ros2Aimdk_msgsMsgQRPoint](count7)
  for i in 0..<count7:
    result.`qr_points`[i] = readRos2Aimdk_msgsMsgQRPoint(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 4: fail(22)
  let count8 = int(rawcount8)
  result.`hr_points` = newSeq[Ros2Aimdk_msgsMsgHRPoint](count8)
  for i in 0..<count8:
    result.`hr_points`[i] = readRos2Aimdk_msgsMsgHRPoint(r)
  let rawcount9 = getInteger(r,uint32)
  if rawcount9 > 4: fail(22)
  let count9 = int(rawcount9)
  result.`paths` = newSeq[Ros2Aimdk_msgsMsgPath](count9)
  for i in 0..<count9:
    result.`paths`[i] = readRos2Aimdk_msgsMsgPath(r)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 4: fail(22)
  let count10 = int(rawcount10)
  result.`regions` = newSeq[Ros2Aimdk_msgsMsgRegion](count10)
  for i in 0..<count10:
    result.`regions`[i] = readRos2Aimdk_msgsMsgRegion(r)
  result.`map_id` = getInteger(r,uint64)
proc encode*(value: Ros2Aimdk_msgsSrvGetStoredMapByName_Response): seq[byte] =
  var w = initWriter(3400)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetStoredMapByName_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetStoredMapByName_Response =
  var r = initReader(b,3400)
  result = readRos2Aimdk_msgsSrvGetStoredMapByName_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetSystemState_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetSystemState_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetSystemState_RequestCodecIdentity* = "UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f"
const Ros2Aimdk_msgsSrvGetSystemState_RequestNativeType* = "aimdk_msgs/srv/GetSystemState_Request"
const Ros2Aimdk_msgsSrvGetSystemState_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetSystemState_Request*(): Ros2Aimdk_msgsSrvGetSystemState_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetSystemState_Request; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvGetSystemState_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetSystemState_Request =
  result = initRos2Aimdk_msgsSrvGetSystemState_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetSystemState_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetSystemState_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetSystemState_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetSystemState_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetSystemState_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `cur_state`*: string
  `curr_status`*: Ros2Aimdk_msgsMsgSystemStatus
const Ros2Aimdk_msgsSrvGetSystemState_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvGetSystemState_ResponseCodecIdentity* = "UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039"
const Ros2Aimdk_msgsSrvGetSystemState_ResponseNativeType* = "aimdk_msgs/srv/GetSystemState_Response"
const Ros2Aimdk_msgsSrvGetSystemState_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetSystemState_Response*(): Ros2Aimdk_msgsSrvGetSystemState_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`cur_state` = ""
  result.`curr_status` = initRos2Aimdk_msgsMsgSystemStatus()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetSystemState_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`cur_state`,128)
  writeFields(value.`curr_status`,w)
proc readRos2Aimdk_msgsSrvGetSystemState_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetSystemState_Response =
  result = initRos2Aimdk_msgsSrvGetSystemState_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`cur_state` = getString(r,128)
  result.`curr_status` = readRos2Aimdk_msgsMsgSystemStatus(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetSystemState_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetSystemState_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetSystemState_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvGetSystemState_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetVolume_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetVolume_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetVolume_RequestCodecIdentity* = "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b"
const Ros2Aimdk_msgsSrvGetVolume_RequestNativeType* = "aimdk_msgs/srv/GetVolume_Request"
const Ros2Aimdk_msgsSrvGetVolume_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetVolume_Request*(): Ros2Aimdk_msgsSrvGetVolume_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetVolume_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetVolume_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetVolume_Request =
  result = initRos2Aimdk_msgsSrvGetVolume_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetVolume_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetVolume_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetVolume_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetVolume_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetVolume_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `audio_volume`*: uint32
const Ros2Aimdk_msgsSrvGetVolume_ResponseMaximumWireBytes* = 156
const Ros2Aimdk_msgsSrvGetVolume_ResponseCodecIdentity* = "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266"
const Ros2Aimdk_msgsSrvGetVolume_ResponseNativeType* = "aimdk_msgs/srv/GetVolume_Response"
const Ros2Aimdk_msgsSrvGetVolume_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetVolume_Response*(): Ros2Aimdk_msgsSrvGetVolume_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`audio_volume` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvGetVolume_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putInteger(w,value.`audio_volume`)
proc readRos2Aimdk_msgsSrvGetVolume_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetVolume_Response =
  result = initRos2Aimdk_msgsSrvGetVolume_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`audio_volume` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvGetVolume_Response): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetVolume_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetVolume_Response =
  var r = initReader(b,156)
  result = readRos2Aimdk_msgsSrvGetVolume_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGroupControlTimeSync_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `slaves`*: seq[Ros2Aimdk_msgsMsgSlaveDevice]
const Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestMaximumWireBytes* = 540
const Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestCodecIdentity* = "UWVMROS1_00f371868d2cf78c68a9824a418f7e3376c959b1f600ee1906b75ea7c6eafedd"
const Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestNativeType* = "aimdk_msgs/srv/GroupControlTimeSync_Request"
const Ros2Aimdk_msgsSrvGroupControlTimeSync_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGroupControlTimeSync_Request*(): Ros2Aimdk_msgsSrvGroupControlTimeSync_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`slaves` = @[]
proc writeFields*(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Request; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`slaves`.len > 4: fail(22)
  putInteger(w,uint32(value.`slaves`.len))
  for e in value.`slaves`:
    writeFields(e,w)
proc readRos2Aimdk_msgsSrvGroupControlTimeSync_Request*(r: var Reader): Ros2Aimdk_msgsSrvGroupControlTimeSync_Request =
  result = initRos2Aimdk_msgsSrvGroupControlTimeSync_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`slaves` = newSeq[Ros2Aimdk_msgsMsgSlaveDevice](count1)
  for i in 0..<count1:
    result.`slaves`[i] = readRos2Aimdk_msgsMsgSlaveDevice(r)
proc encode*(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Request): seq[byte] =
  var w = initWriter(540)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGroupControlTimeSync_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGroupControlTimeSync_Request =
  var r = initReader(b,540)
  result = readRos2Aimdk_msgsSrvGroupControlTimeSync_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGroupControlTimeSync_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `error_code`*: int32
  `error_msg`*: string
const Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseMaximumWireBytes* = 288
const Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseCodecIdentity* = "UWVMROS1_16bf8f1d44dcecd1263dcd1b48385fe079fa29893a03e5778797d24e361695ec"
const Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseNativeType* = "aimdk_msgs/srv/GroupControlTimeSync_Response"
const Ros2Aimdk_msgsSrvGroupControlTimeSync_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGroupControlTimeSync_Response*(): Ros2Aimdk_msgsSrvGroupControlTimeSync_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`error_code` = 0
  result.`error_msg` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`error_code`)
  putString(w,value.`error_msg`,128)
proc readRos2Aimdk_msgsSrvGroupControlTimeSync_Response*(r: var Reader): Ros2Aimdk_msgsSrvGroupControlTimeSync_Response =
  result = initRos2Aimdk_msgsSrvGroupControlTimeSync_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`error_code` = getInteger(r,int32)
  result.`error_msg` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Response): seq[byte] =
  var w = initWriter(288)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGroupControlTimeSync_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGroupControlTimeSync_Response =
  var r = initReader(b,288)
  result = readRos2Aimdk_msgsSrvGroupControlTimeSync_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvMigrateSystemState_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `state`*: string
const Ros2Aimdk_msgsSrvMigrateSystemState_RequestMaximumWireBytes* = 140
const Ros2Aimdk_msgsSrvMigrateSystemState_RequestCodecIdentity* = "UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b"
const Ros2Aimdk_msgsSrvMigrateSystemState_RequestNativeType* = "aimdk_msgs/srv/MigrateSystemState_Request"
const Ros2Aimdk_msgsSrvMigrateSystemState_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvMigrateSystemState_Request*(): Ros2Aimdk_msgsSrvMigrateSystemState_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`state` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvMigrateSystemState_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`state`,128)
proc readRos2Aimdk_msgsSrvMigrateSystemState_Request*(r: var Reader): Ros2Aimdk_msgsSrvMigrateSystemState_Request =
  result = initRos2Aimdk_msgsSrvMigrateSystemState_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`state` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvMigrateSystemState_Request): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvMigrateSystemState_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvMigrateSystemState_Request =
  var r = initReader(b,140)
  result = readRos2Aimdk_msgsSrvMigrateSystemState_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvMigrateSystemState_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvMigrateSystemState_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvMigrateSystemState_ResponseCodecIdentity* = "UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802"
const Ros2Aimdk_msgsSrvMigrateSystemState_ResponseNativeType* = "aimdk_msgs/srv/MigrateSystemState_Response"
const Ros2Aimdk_msgsSrvMigrateSystemState_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvMigrateSystemState_Response*(): Ros2Aimdk_msgsSrvMigrateSystemState_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvMigrateSystemState_Response; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvMigrateSystemState_Response*(r: var Reader): Ros2Aimdk_msgsSrvMigrateSystemState_Response =
  result = initRos2Aimdk_msgsSrvMigrateSystemState_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvMigrateSystemState_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvMigrateSystemState_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvMigrateSystemState_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvMigrateSystemState_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayAudioFile_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `file`*: Ros2Aimdk_msgsMsgAudioFile
  `play_stamps`*: Ros2Builtin_interfacesMsgTime
const Ros2Aimdk_msgsSrvPlayAudioFile_RequestMaximumWireBytes* = 693
const Ros2Aimdk_msgsSrvPlayAudioFile_RequestCodecIdentity* = "UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1"
const Ros2Aimdk_msgsSrvPlayAudioFile_RequestNativeType* = "aimdk_msgs/srv/PlayAudioFile_Request"
const Ros2Aimdk_msgsSrvPlayAudioFile_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayAudioFile_Request*(): Ros2Aimdk_msgsSrvPlayAudioFile_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`file` = initRos2Aimdk_msgsMsgAudioFile()
  result.`play_stamps` = initRos2Builtin_interfacesMsgTime()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayAudioFile_Request; w: var Writer) =
  writeFields(value.`request`,w)
  writeFields(value.`file`,w)
  writeFields(value.`play_stamps`,w)
proc readRos2Aimdk_msgsSrvPlayAudioFile_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayAudioFile_Request =
  result = initRos2Aimdk_msgsSrvPlayAudioFile_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`file` = readRos2Aimdk_msgsMsgAudioFile(r)
  result.`play_stamps` = readRos2Builtin_interfacesMsgTime(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayAudioFile_Request): seq[byte] =
  var w = initWriter(693)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayAudioFile_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayAudioFile_Request =
  var r = initReader(b,693)
  result = readRos2Aimdk_msgsSrvPlayAudioFile_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayAudioFile_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvPlayAudioFile_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvPlayAudioFile_ResponseCodecIdentity* = "UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85"
const Ros2Aimdk_msgsSrvPlayAudioFile_ResponseNativeType* = "aimdk_msgs/srv/PlayAudioFile_Response"
const Ros2Aimdk_msgsSrvPlayAudioFile_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayAudioFile_Response*(): Ros2Aimdk_msgsSrvPlayAudioFile_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayAudioFile_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
proc readRos2Aimdk_msgsSrvPlayAudioFile_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayAudioFile_Response =
  result = initRos2Aimdk_msgsSrvPlayAudioFile_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayAudioFile_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayAudioFile_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayAudioFile_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvPlayAudioFile_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayEmoji_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `emotion_id`*: uint8
  `mode`*: uint8
  `priority`*: int32
const Ros2Aimdk_msgsSrvPlayEmoji_RequestMaximumWireBytes* = 14
const Ros2Aimdk_msgsSrvPlayEmoji_RequestCodecIdentity* = "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43"
const Ros2Aimdk_msgsSrvPlayEmoji_RequestNativeType* = "aimdk_msgs/srv/PlayEmoji_Request"
const Ros2Aimdk_msgsSrvPlayEmoji_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_UNKNOWN*: uint8 = 0'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_BLINK*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_1*: uint8 = 10'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_2*: uint8 = 11'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_GAME*: uint8 = 20'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_1*: uint8 = 30'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_2*: uint8 = 31'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_3*: uint8 = 32'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_4*: uint8 = 33'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CLOSE*: uint8 = 40'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_OPEN*: uint8 = 50'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_BORING_1*: uint8 = 60'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ABNORMAL*: uint8 = 70'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SLEEPY*: uint8 = 80'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_HAPPY*: uint8 = 90'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_1*: uint8 = 100'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_2*: uint8 = 101'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SAD*: uint8 = 110'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SYMPATHY*: uint8 = 120'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CONFUSE*: uint8 = 130'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SHOCK*: uint8 = 140'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ACTCUTE*: uint8 = 150'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SERIOUS*: uint8 = 160'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_THINKING*: uint8 = 170'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ANGRY*: uint8 = 180'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEANGRY*: uint8 = 190'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ADORE*: uint8 = 200'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEADORE*: uint8 = 210'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CHARGE*: uint8 = 220'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_ONCE*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_LOOP*: uint8 = 2'u8
proc initRos2Aimdk_msgsSrvPlayEmoji_Request*(): Ros2Aimdk_msgsSrvPlayEmoji_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`emotion_id` = 0
  result.`mode` = 0
  result.`priority` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayEmoji_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`emotion_id`)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
proc readRos2Aimdk_msgsSrvPlayEmoji_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayEmoji_Request =
  result = initRos2Aimdk_msgsSrvPlayEmoji_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`emotion_id` = getInteger(r,uint8)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsSrvPlayEmoji_Request): seq[byte] =
  var w = initWriter(14)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayEmoji_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayEmoji_Request =
  var r = initReader(b,14)
  result = readRos2Aimdk_msgsSrvPlayEmoji_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayEmoji_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `success`*: bool
  `message`*: string
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodecIdentity* = "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9"
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseNativeType* = "aimdk_msgs/srv/PlayEmoji_Response"
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayEmoji_Response*(): Ros2Aimdk_msgsSrvPlayEmoji_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayEmoji_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsSrvPlayEmoji_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayEmoji_Response =
  result = initRos2Aimdk_msgsSrvPlayEmoji_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvPlayEmoji_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayEmoji_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayEmoji_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvPlayEmoji_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayEmojiGroup_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `emotion_ids`*: seq[uint8]
  `mode`*: uint8
  `priority`*: int32
const Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestMaximumWireBytes* = 273
const Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestCodecIdentity* = "UWVMROS1_c696b5327d31945737301b57784797762832e143c4ccb89fba9228bc47402223"
const Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestNativeType* = "aimdk_msgs/srv/PlayEmojiGroup_Request"
const Ros2Aimdk_msgsSrvPlayEmojiGroup_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_UNKNOWN*: uint8 = 0'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_BLINK*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_CALM_1*: uint8 = 10'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_CALM_2*: uint8 = 11'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_GAME*: uint8 = 20'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_CUTE_1*: uint8 = 30'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_CUTE_2*: uint8 = 31'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_CUTE_3*: uint8 = 32'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_IDLE_CUTE_4*: uint8 = 33'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_CLOSE*: uint8 = 40'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_OPEN*: uint8 = 50'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_BORING_1*: uint8 = 60'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_ABNORMAL*: uint8 = 70'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_SLEEPY*: uint8 = 80'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_HAPPY*: uint8 = 90'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_EXTREMEHAPPY_1*: uint8 = 100'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_EXTREMEHAPPY_2*: uint8 = 101'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_SAD*: uint8 = 110'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_SYMPATHY*: uint8 = 120'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_CONFUSE*: uint8 = 130'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_SHOCK*: uint8 = 140'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_ACTCUTE*: uint8 = 150'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_SERIOUS*: uint8 = 160'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_THINKING*: uint8 = 170'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_ANGRY*: uint8 = 180'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_EXTREMEANGRY*: uint8 = 190'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_ADORE*: uint8 = 200'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_EXTREMEADORE*: uint8 = 210'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_EYE_CHARGE*: uint8 = 220'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_MODE_ONCE*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayEmojiGroup_Request_EMOTION_MODE_LOOP*: uint8 = 2'u8
proc initRos2Aimdk_msgsSrvPlayEmojiGroup_Request*(): Ros2Aimdk_msgsSrvPlayEmojiGroup_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`emotion_ids` = @[]
  result.`mode` = 0
  result.`priority` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Request; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`emotion_ids`.len > 256: fail(22)
  putInteger(w,uint32(value.`emotion_ids`.len))
  for e in value.`emotion_ids`:
    putInteger(w,e)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
proc readRos2Aimdk_msgsSrvPlayEmojiGroup_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayEmojiGroup_Request =
  result = initRos2Aimdk_msgsSrvPlayEmojiGroup_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 256: fail(22)
  let count1 = int(rawcount1)
  result.`emotion_ids` = newSeq[uint8](count1)
  for i in 0..<count1:
    result.`emotion_ids`[i] = getInteger(r,uint8)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Request): seq[byte] =
  var w = initWriter(273)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayEmojiGroup_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayEmojiGroup_Request =
  var r = initReader(b,273)
  result = readRos2Aimdk_msgsSrvPlayEmojiGroup_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayEmojiGroup_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `success`*: bool
  `message`*: string
const Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseCodecIdentity* = "UWVMROS1_e12fb46d3a4912ee89cedafc27fffd1b984d68407e3ae45aef0f8c1e47a4d94d"
const Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseNativeType* = "aimdk_msgs/srv/PlayEmojiGroup_Response"
const Ros2Aimdk_msgsSrvPlayEmojiGroup_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayEmojiGroup_Response*(): Ros2Aimdk_msgsSrvPlayEmojiGroup_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsSrvPlayEmojiGroup_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayEmojiGroup_Response =
  result = initRos2Aimdk_msgsSrvPlayEmojiGroup_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayEmojiGroup_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayEmojiGroup_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvPlayEmojiGroup_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayTts_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `tts_req`*: Ros2Aimdk_msgsMsgPlayTtsRequest
const Ros2Aimdk_msgsSrvPlayTts_RequestMaximumWireBytes* = 410
const Ros2Aimdk_msgsSrvPlayTts_RequestCodecIdentity* = "UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989"
const Ros2Aimdk_msgsSrvPlayTts_RequestNativeType* = "aimdk_msgs/srv/PlayTts_Request"
const Ros2Aimdk_msgsSrvPlayTts_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayTts_Request*(): Ros2Aimdk_msgsSrvPlayTts_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`tts_req` = initRos2Aimdk_msgsMsgPlayTtsRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayTts_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`tts_req`,w)
proc readRos2Aimdk_msgsSrvPlayTts_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayTts_Request =
  result = initRos2Aimdk_msgsSrvPlayTts_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`tts_req` = readRos2Aimdk_msgsMsgPlayTtsRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayTts_Request): seq[byte] =
  var w = initWriter(410)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayTts_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayTts_Request =
  var r = initReader(b,410)
  result = readRos2Aimdk_msgsSrvPlayTts_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayTts_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `tts_resp`*: Ros2Aimdk_msgsMsgPlayTtsResponse
const Ros2Aimdk_msgsSrvPlayTts_ResponseMaximumWireBytes* = 691
const Ros2Aimdk_msgsSrvPlayTts_ResponseCodecIdentity* = "UWVMROS1_1d77e2009a7a486e392cec8aa4a045257140839b22ba4001c1c06d0deffab57d"
const Ros2Aimdk_msgsSrvPlayTts_ResponseNativeType* = "aimdk_msgs/srv/PlayTts_Response"
const Ros2Aimdk_msgsSrvPlayTts_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayTts_Response*(): Ros2Aimdk_msgsSrvPlayTts_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`tts_resp` = initRos2Aimdk_msgsMsgPlayTtsResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayTts_Response; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`tts_resp`,w)
proc readRos2Aimdk_msgsSrvPlayTts_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayTts_Response =
  result = initRos2Aimdk_msgsSrvPlayTts_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`tts_resp` = readRos2Aimdk_msgsMsgPlayTtsResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayTts_Response): seq[byte] =
  var w = initWriter(691)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayTts_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayTts_Response =
  var r = initReader(b,691)
  result = readRos2Aimdk_msgsSrvPlayTts_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayVideo_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `video_path`*: string
  `mode`*: uint8
  `priority`*: int32
const Ros2Aimdk_msgsSrvPlayVideo_RequestMaximumWireBytes* = 145
const Ros2Aimdk_msgsSrvPlayVideo_RequestCodecIdentity* = "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878"
const Ros2Aimdk_msgsSrvPlayVideo_RequestNativeType* = "aimdk_msgs/srv/PlayVideo_Request"
const Ros2Aimdk_msgsSrvPlayVideo_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_ONCE*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_LOOP*: uint8 = 2'u8
proc initRos2Aimdk_msgsSrvPlayVideo_Request*(): Ros2Aimdk_msgsSrvPlayVideo_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`video_path` = ""
  result.`mode` = 0
  result.`priority` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayVideo_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`video_path`,128)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
proc readRos2Aimdk_msgsSrvPlayVideo_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayVideo_Request =
  result = initRos2Aimdk_msgsSrvPlayVideo_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`video_path` = getString(r,128)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsSrvPlayVideo_Request): seq[byte] =
  var w = initWriter(145)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayVideo_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayVideo_Request =
  var r = initReader(b,145)
  result = readRos2Aimdk_msgsSrvPlayVideo_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayVideo_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `success`*: bool
  `message`*: string
const Ros2Aimdk_msgsSrvPlayVideo_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvPlayVideo_ResponseCodecIdentity* = "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627"
const Ros2Aimdk_msgsSrvPlayVideo_ResponseNativeType* = "aimdk_msgs/srv/PlayVideo_Response"
const Ros2Aimdk_msgsSrvPlayVideo_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayVideo_Response*(): Ros2Aimdk_msgsSrvPlayVideo_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayVideo_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsSrvPlayVideo_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayVideo_Response =
  result = initRos2Aimdk_msgsSrvPlayVideo_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvPlayVideo_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayVideo_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayVideo_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvPlayVideo_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayVideoGroup_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `video_path_list`*: seq[string]
  `mode`*: uint8
  `priority`*: int32
const Ros2Aimdk_msgsSrvPlayVideoGroup_RequestMaximumWireBytes* = 2129
const Ros2Aimdk_msgsSrvPlayVideoGroup_RequestCodecIdentity* = "UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473"
const Ros2Aimdk_msgsSrvPlayVideoGroup_RequestNativeType* = "aimdk_msgs/srv/PlayVideoGroup_Request"
const Ros2Aimdk_msgsSrvPlayVideoGroup_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvPlayVideoGroup_Request_EMOTION_MODE_ONCE*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayVideoGroup_Request_EMOTION_MODE_LOOP*: uint8 = 2'u8
proc initRos2Aimdk_msgsSrvPlayVideoGroup_Request*(): Ros2Aimdk_msgsSrvPlayVideoGroup_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`video_path_list` = @[]
  result.`mode` = 0
  result.`priority` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Request; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`video_path_list`.len > 16: fail(22)
  putInteger(w,uint32(value.`video_path_list`.len))
  for e in value.`video_path_list`:
    putString(w,e,128)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
proc readRos2Aimdk_msgsSrvPlayVideoGroup_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayVideoGroup_Request =
  result = initRos2Aimdk_msgsSrvPlayVideoGroup_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`video_path_list` = newSeq[string](count1)
  for i in 0..<count1:
    result.`video_path_list`[i] = getString(r,128)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Request): seq[byte] =
  var w = initWriter(2129)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayVideoGroup_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayVideoGroup_Request =
  var r = initReader(b,2129)
  result = readRos2Aimdk_msgsSrvPlayVideoGroup_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayVideoGroup_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `success`*: bool
  `message`*: string
const Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseCodecIdentity* = "UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19"
const Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseNativeType* = "aimdk_msgs/srv/PlayVideoGroup_Response"
const Ros2Aimdk_msgsSrvPlayVideoGroup_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayVideoGroup_Response*(): Ros2Aimdk_msgsSrvPlayVideoGroup_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsSrvPlayVideoGroup_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayVideoGroup_Response =
  result = initRos2Aimdk_msgsSrvPlayVideoGroup_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvPlayVideoGroup_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayVideoGroup_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayVideoGroup_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvPlayVideoGroup_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvRequestAudioFocus_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `focus_requester`*: Ros2Aimdk_msgsMsgFocusRequester
const Ros2Aimdk_msgsSrvRequestAudioFocus_RequestMaximumWireBytes* = 148
const Ros2Aimdk_msgsSrvRequestAudioFocus_RequestCodecIdentity* = "UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a"
const Ros2Aimdk_msgsSrvRequestAudioFocus_RequestNativeType* = "aimdk_msgs/srv/RequestAudioFocus_Request"
const Ros2Aimdk_msgsSrvRequestAudioFocus_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvRequestAudioFocus_Request*(): Ros2Aimdk_msgsSrvRequestAudioFocus_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`focus_requester` = initRos2Aimdk_msgsMsgFocusRequester()
proc writeFields*(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Request; w: var Writer) =
  writeFields(value.`request`,w)
  writeFields(value.`focus_requester`,w)
proc readRos2Aimdk_msgsSrvRequestAudioFocus_Request*(r: var Reader): Ros2Aimdk_msgsSrvRequestAudioFocus_Request =
  result = initRos2Aimdk_msgsSrvRequestAudioFocus_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`focus_requester` = readRos2Aimdk_msgsMsgFocusRequester(r)
proc encode*(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Request): seq[byte] =
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvRequestAudioFocus_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvRequestAudioFocus_Request =
  var r = initReader(b,148)
  result = readRos2Aimdk_msgsSrvRequestAudioFocus_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvRequestAudioFocus_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `focus_response`*: Ros2Aimdk_msgsMsgFocusResponse
const Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseCodecIdentity* = "UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180"
const Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseNativeType* = "aimdk_msgs/srv/RequestAudioFocus_Response"
const Ros2Aimdk_msgsSrvRequestAudioFocus_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvRequestAudioFocus_Response*(): Ros2Aimdk_msgsSrvRequestAudioFocus_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`focus_response` = initRos2Aimdk_msgsMsgFocusResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  writeFields(value.`focus_response`,w)
proc readRos2Aimdk_msgsSrvRequestAudioFocus_Response*(r: var Reader): Ros2Aimdk_msgsSrvRequestAudioFocus_Response =
  result = initRos2Aimdk_msgsSrvRequestAudioFocus_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`focus_response` = readRos2Aimdk_msgsMsgFocusResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvRequestAudioFocus_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvRequestAudioFocus_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvRequestAudioFocus_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvRequestAudioFocus_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `contents`*: Ros2Aimdk_msgsMsgAgentProperties
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestMaximumWireBytes* = 544
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodecIdentity* = "UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestNativeType* = "aimdk_msgs/srv/SetAgentPropertiesRequest_Request"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request*(): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`contents` = initRos2Aimdk_msgsMsgAgentProperties()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`contents`,w)
proc readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request =
  result = initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`contents` = readRos2Aimdk_msgsMsgAgentProperties(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request): seq[byte] =
  var w = initWriter(544)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request =
  var r = initReader(b,544)
  result = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodecIdentity* = "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseNativeType* = "aimdk_msgs/srv/SetAgentPropertiesRequest_Response"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response*(): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response =
  result = initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcAction_Request* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
  `source`*: string
  `command`*: Ros2Aimdk_msgsMsgMcActionCommand
const Ros2Aimdk_msgsSrvSetMcAction_RequestMaximumWireBytes* = 276
const Ros2Aimdk_msgsSrvSetMcAction_RequestCodecIdentity* = "UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246"
const Ros2Aimdk_msgsSrvSetMcAction_RequestNativeType* = "aimdk_msgs/srv/SetMcAction_Request"
const Ros2Aimdk_msgsSrvSetMcAction_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcAction_Request*(): Ros2Aimdk_msgsSrvSetMcAction_Request =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
  result.`source` = ""
  result.`command` = initRos2Aimdk_msgsMsgMcActionCommand()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcAction_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`source`,128)
  writeFields(value.`command`,w)
proc readRos2Aimdk_msgsSrvSetMcAction_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMcAction_Request =
  result = initRos2Aimdk_msgsSrvSetMcAction_Request()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
  result.`source` = getString(r,128)
  result.`command` = readRos2Aimdk_msgsMsgMcActionCommand(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcAction_Request): seq[byte] =
  var w = initWriter(276)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcAction_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcAction_Request =
  var r = initReader(b,276)
  result = readRos2Aimdk_msgsSrvSetMcAction_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcAction_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvSetMcAction_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvSetMcAction_ResponseCodecIdentity* = "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f"
const Ros2Aimdk_msgsSrvSetMcAction_ResponseNativeType* = "aimdk_msgs/srv/SetMcAction_Response"
const Ros2Aimdk_msgsSrvSetMcAction_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcAction_Response*(): Ros2Aimdk_msgsSrvSetMcAction_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcAction_Response; w: var Writer) =
  writeFields(value.`response`,w)
proc readRos2Aimdk_msgsSrvSetMcAction_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMcAction_Response =
  result = initRos2Aimdk_msgsSrvSetMcAction_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcAction_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcAction_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcAction_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvSetMcAction_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcInputSource_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `action`*: Ros2Aimdk_msgsMsgMcInputAction
  `input_source`*: Ros2Aimdk_msgsMsgMcInputSource
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodecIdentity* = "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021"
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestNativeType* = "aimdk_msgs/srv/SetMcInputSource_Request"
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcInputSource_Request*(): Ros2Aimdk_msgsSrvSetMcInputSource_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`action` = initRos2Aimdk_msgsMsgMcInputAction()
  result.`input_source` = initRos2Aimdk_msgsMsgMcInputSource()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Request; w: var Writer) =
  writeFields(value.`request`,w)
  writeFields(value.`action`,w)
  writeFields(value.`input_source`,w)
proc readRos2Aimdk_msgsSrvSetMcInputSource_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMcInputSource_Request =
  result = initRos2Aimdk_msgsSrvSetMcInputSource_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`action` = readRos2Aimdk_msgsMsgMcInputAction(r)
  result.`input_source` = readRos2Aimdk_msgsMsgMcInputSource(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Request): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcInputSource_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcInputSource_Request =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvSetMcInputSource_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcInputSource_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonTaskResponse
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseMaximumWireBytes* = 28
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodecIdentity* = "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb"
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseNativeType* = "aimdk_msgs/srv/SetMcInputSource_Response"
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcInputSource_Response*(): Ros2Aimdk_msgsSrvSetMcInputSource_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonTaskResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Response; w: var Writer) =
  writeFields(value.`response`,w)
proc readRos2Aimdk_msgsSrvSetMcInputSource_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMcInputSource_Response =
  result = initRos2Aimdk_msgsSrvSetMcInputSource_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Response): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcInputSource_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcInputSource_Response =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsSrvSetMcInputSource_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcPresetMotion_Request* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
  `input_source`*: Ros2Aimdk_msgsMsgMcInputSource
  `area`*: Ros2Aimdk_msgsMsgMcControlArea
  `motion`*: Ros2Aimdk_msgsMsgMcPresetMotion
  `interrupt`*: bool
  `ani_path`*: string
  `play_timestamp`*: uint64
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestMaximumWireBytes* = 297
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodecIdentity* = "UWVMROS1_1bc0bdea042012300548f5d9845b37dfc192d9680bb3beda186a69a11870ca96"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestNativeType* = "aimdk_msgs/srv/SetMcPresetMotion_Request"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcPresetMotion_Request*(): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
  result.`input_source` = initRos2Aimdk_msgsMsgMcInputSource()
  result.`area` = initRos2Aimdk_msgsMsgMcControlArea()
  result.`motion` = initRos2Aimdk_msgsMsgMcPresetMotion()
  result.`interrupt` = false
  result.`ani_path` = ""
  result.`play_timestamp` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`input_source`,w)
  writeFields(value.`area`,w)
  writeFields(value.`motion`,w)
  putBool(w,value.`interrupt`)
  putString(w,value.`ani_path`,128)
  putInteger(w,value.`play_timestamp`)
proc readRos2Aimdk_msgsSrvSetMcPresetMotion_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request =
  result = initRos2Aimdk_msgsSrvSetMcPresetMotion_Request()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
  result.`input_source` = readRos2Aimdk_msgsMsgMcInputSource(r)
  result.`area` = readRos2Aimdk_msgsMsgMcControlArea(r)
  result.`motion` = readRos2Aimdk_msgsMsgMcPresetMotion(r)
  result.`interrupt` = getBool(r)
  result.`ani_path` = getString(r,128)
  result.`play_timestamp` = getInteger(r,uint64)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request): seq[byte] =
  var w = initWriter(297)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request =
  var r = initReader(b,297)
  result = readRos2Aimdk_msgsSrvSetMcPresetMotion_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcPresetMotion_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonTaskResponse
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseMaximumWireBytes* = 28
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodecIdentity* = "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseNativeType* = "aimdk_msgs/srv/SetMcPresetMotion_Response"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcPresetMotion_Response*(): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonTaskResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; w: var Writer) =
  writeFields(value.`response`,w)
proc readRos2Aimdk_msgsSrvSetMcPresetMotion_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response =
  result = initRos2Aimdk_msgsSrvSetMcPresetMotion_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsSrvSetMcPresetMotion_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMicSourceRequest_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `mic_source`*: uint32
const Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestMaximumWireBytes* = 12
const Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestCodecIdentity* = "UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5"
const Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestNativeType* = "aimdk_msgs/srv/SetMicSourceRequest_Request"
const Ros2Aimdk_msgsSrvSetMicSourceRequest_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMicSourceRequest_Request*(): Ros2Aimdk_msgsSrvSetMicSourceRequest_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`mic_source` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`mic_source`)
proc readRos2Aimdk_msgsSrvSetMicSourceRequest_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMicSourceRequest_Request =
  result = initRos2Aimdk_msgsSrvSetMicSourceRequest_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`mic_source` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMicSourceRequest_Request =
  var r = initReader(b,12)
  result = readRos2Aimdk_msgsSrvSetMicSourceRequest_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMicSourceRequest_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseCodecIdentity* = "UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02"
const Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseNativeType* = "aimdk_msgs/srv/SetMicSourceRequest_Response"
const Ros2Aimdk_msgsSrvSetMicSourceRequest_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMicSourceRequest_Response*(): Ros2Aimdk_msgsSrvSetMicSourceRequest_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvSetMicSourceRequest_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMicSourceRequest_Response =
  result = initRos2Aimdk_msgsSrvSetMicSourceRequest_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMicSourceRequest_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvSetMicSourceRequest_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMute_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `is_mute`*: bool
const Ros2Aimdk_msgsSrvSetMute_RequestMaximumWireBytes* = 9
const Ros2Aimdk_msgsSrvSetMute_RequestCodecIdentity* = "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3"
const Ros2Aimdk_msgsSrvSetMute_RequestNativeType* = "aimdk_msgs/srv/SetMute_Request"
const Ros2Aimdk_msgsSrvSetMute_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMute_Request*(): Ros2Aimdk_msgsSrvSetMute_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`is_mute` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMute_Request; w: var Writer) =
  writeFields(value.`request`,w)
  putBool(w,value.`is_mute`)
proc readRos2Aimdk_msgsSrvSetMute_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMute_Request =
  result = initRos2Aimdk_msgsSrvSetMute_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`is_mute` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMute_Request): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMute_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMute_Request =
  var r = initReader(b,9)
  result = readRos2Aimdk_msgsSrvSetMute_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMute_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `is_mute`*: bool
const Ros2Aimdk_msgsSrvSetMute_ResponseMaximumWireBytes* = 153
const Ros2Aimdk_msgsSrvSetMute_ResponseCodecIdentity* = "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50"
const Ros2Aimdk_msgsSrvSetMute_ResponseNativeType* = "aimdk_msgs/srv/SetMute_Response"
const Ros2Aimdk_msgsSrvSetMute_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMute_Response*(): Ros2Aimdk_msgsSrvSetMute_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`is_mute` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMute_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putBool(w,value.`is_mute`)
proc readRos2Aimdk_msgsSrvSetMute_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMute_Response =
  result = initRos2Aimdk_msgsSrvSetMute_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`is_mute` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMute_Response): seq[byte] =
  var w = initWriter(153)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMute_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMute_Response =
  var r = initReader(b,153)
  result = readRos2Aimdk_msgsSrvSetMute_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetPmuLed_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `trace_id`*: string
  `led_strip_mode`*: uint8
  `r`*: uint8
  `g`*: uint8
  `b`*: uint8
  `priority`*: int32
  `reset_priority`*: bool
const Ros2Aimdk_msgsSrvSetPmuLed_RequestMaximumWireBytes* = 149
const Ros2Aimdk_msgsSrvSetPmuLed_RequestCodecIdentity* = "UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e"
const Ros2Aimdk_msgsSrvSetPmuLed_RequestNativeType* = "aimdk_msgs/srv/SetPmuLed_Request"
const Ros2Aimdk_msgsSrvSetPmuLed_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_CONSTANT*: uint8 = 0'u8
const Ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_BREATH*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_FLASH*: uint8 = 2'u8
const Ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_FLOW*: uint8 = 3'u8
const Ros2Aimdk_msgsSrvSetPmuLed_Request_LED_STRIP_MODE_MAX*: uint8 = 4'u8
proc initRos2Aimdk_msgsSrvSetPmuLed_Request*(): Ros2Aimdk_msgsSrvSetPmuLed_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`trace_id` = ""
  result.`led_strip_mode` = 0
  result.`r` = 0
  result.`g` = 0
  result.`b` = 0
  result.`priority` = 0
  result.`reset_priority` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvSetPmuLed_Request; w: var Writer) =
  writeFields(value.`request`,w)
  putString(w,value.`trace_id`,128)
  putInteger(w,value.`led_strip_mode`)
  putInteger(w,value.`r`)
  putInteger(w,value.`g`)
  putInteger(w,value.`b`)
  putInteger(w,value.`priority`)
  putBool(w,value.`reset_priority`)
proc readRos2Aimdk_msgsSrvSetPmuLed_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetPmuLed_Request =
  result = initRos2Aimdk_msgsSrvSetPmuLed_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`trace_id` = getString(r,128)
  result.`led_strip_mode` = getInteger(r,uint8)
  result.`r` = getInteger(r,uint8)
  result.`g` = getInteger(r,uint8)
  result.`b` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
  result.`reset_priority` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetPmuLed_Request): seq[byte] =
  var w = initWriter(149)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetPmuLed_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetPmuLed_Request =
  var r = initReader(b,149)
  result = readRos2Aimdk_msgsSrvSetPmuLed_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetPmuLed_Response* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `status_code`*: uint16
const Ros2Aimdk_msgsSrvSetPmuLed_ResponseMaximumWireBytes* = 18
const Ros2Aimdk_msgsSrvSetPmuLed_ResponseCodecIdentity* = "UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28"
const Ros2Aimdk_msgsSrvSetPmuLed_ResponseNativeType* = "aimdk_msgs/srv/SetPmuLed_Response"
const Ros2Aimdk_msgsSrvSetPmuLed_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetPmuLed_Response*(): Ros2Aimdk_msgsSrvSetPmuLed_Response =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`status_code` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvSetPmuLed_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`status_code`)
proc readRos2Aimdk_msgsSrvSetPmuLed_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetPmuLed_Response =
  result = initRos2Aimdk_msgsSrvSetPmuLed_Response()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`status_code` = getInteger(r,uint16)
proc encode*(value: Ros2Aimdk_msgsSrvSetPmuLed_Response): seq[byte] =
  var w = initWriter(18)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetPmuLed_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetPmuLed_Response =
  var r = initReader(b,18)
  result = readRos2Aimdk_msgsSrvSetPmuLed_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetVolume_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `audio_volume`*: uint32
const Ros2Aimdk_msgsSrvSetVolume_RequestMaximumWireBytes* = 12
const Ros2Aimdk_msgsSrvSetVolume_RequestCodecIdentity* = "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad"
const Ros2Aimdk_msgsSrvSetVolume_RequestNativeType* = "aimdk_msgs/srv/SetVolume_Request"
const Ros2Aimdk_msgsSrvSetVolume_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetVolume_Request*(): Ros2Aimdk_msgsSrvSetVolume_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`audio_volume` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvSetVolume_Request; w: var Writer) =
  writeFields(value.`request`,w)
  putInteger(w,value.`audio_volume`)
proc readRos2Aimdk_msgsSrvSetVolume_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetVolume_Request =
  result = initRos2Aimdk_msgsSrvSetVolume_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`audio_volume` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvSetVolume_Request): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetVolume_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetVolume_Request =
  var r = initReader(b,12)
  result = readRos2Aimdk_msgsSrvSetVolume_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetVolume_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `audio_volume`*: uint32
const Ros2Aimdk_msgsSrvSetVolume_ResponseMaximumWireBytes* = 156
const Ros2Aimdk_msgsSrvSetVolume_ResponseCodecIdentity* = "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e"
const Ros2Aimdk_msgsSrvSetVolume_ResponseNativeType* = "aimdk_msgs/srv/SetVolume_Response"
const Ros2Aimdk_msgsSrvSetVolume_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetVolume_Response*(): Ros2Aimdk_msgsSrvSetVolume_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`audio_volume` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvSetVolume_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putInteger(w,value.`audio_volume`)
proc readRos2Aimdk_msgsSrvSetVolume_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetVolume_Response =
  result = initRos2Aimdk_msgsSrvSetVolume_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`audio_volume` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvSetVolume_Response): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetVolume_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetVolume_Response =
  var r = initReader(b,156)
  result = readRos2Aimdk_msgsSrvSetVolume_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvStopAudioPlay_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvStopAudioPlay_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvStopAudioPlay_RequestCodecIdentity* = "UWVMROS1_477159e3e8f462376693e7d0051c4b49cf5170520a056be2a2bd5a72d83e24b9"
const Ros2Aimdk_msgsSrvStopAudioPlay_RequestNativeType* = "aimdk_msgs/srv/StopAudioPlay_Request"
const Ros2Aimdk_msgsSrvStopAudioPlay_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvStopAudioPlay_Request*(): Ros2Aimdk_msgsSrvStopAudioPlay_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvStopAudioPlay_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvStopAudioPlay_Request*(r: var Reader): Ros2Aimdk_msgsSrvStopAudioPlay_Request =
  result = initRos2Aimdk_msgsSrvStopAudioPlay_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvStopAudioPlay_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvStopAudioPlay_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvStopAudioPlay_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvStopAudioPlay_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvStopAudioPlay_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvStopAudioPlay_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvStopAudioPlay_ResponseCodecIdentity* = "UWVMROS1_9a21b16e6eb5642e5bf5e0e64b15999a661142a65d2cc8ea68d8c62a2a1fbcb4"
const Ros2Aimdk_msgsSrvStopAudioPlay_ResponseNativeType* = "aimdk_msgs/srv/StopAudioPlay_Response"
const Ros2Aimdk_msgsSrvStopAudioPlay_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvStopAudioPlay_Response*(): Ros2Aimdk_msgsSrvStopAudioPlay_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvStopAudioPlay_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
proc readRos2Aimdk_msgsSrvStopAudioPlay_Response*(r: var Reader): Ros2Aimdk_msgsSrvStopAudioPlay_Response =
  result = initRos2Aimdk_msgsSrvStopAudioPlay_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvStopAudioPlay_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvStopAudioPlay_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvStopAudioPlay_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvStopAudioPlay_Response(r)
  finish(r)
