## @file observation.nim
## @brief Genuine Nim finite records, complete codecs and ABB owner lifecycle.
## @details Nim generates C with its own frontend. LLVM 23 compiles that generated
## C into Wasm; the independent ABI adapter decodes no records and owns no handle.
## All records own fixed arrays; this binding performs no managed allocation.

## @brief Read the selected original ROS transport ABI version.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @return Original version value, independently from operation errors.
proc nlVersion(): uint32 {.importc: "nl_version", cdecl.}

## @brief Open one exact granted alias without retry.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param alias Complete immutable strict UTF-8 capability alias.
## @param size Complete initialized byte extent.
## @param owner Exclusive writable full-width acquired-owner slot.
## @return Original unsigned ABI error; owner is acquired only on zero.
proc nlOpen(
    alias: pointer;
    size: uint32;
    owner: ptr uint64
  ): uint32 {.importc: "nl_open", cdecl.}

## @brief Retire one caller-owned acquired capability once.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param handle Caller-owned exact opaque capability identifier.
## @return Original independent unsigned close status.
proc nlClose(
    handle: uint64
  ): uint32 {.importc: "nl_close", cdecl.}

## @brief Activate one exact already granted topic subscription.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param handle Caller-owned exact opaque capability identifier.
## @return Original unsigned ABI operation status.
proc nlSubscribe(
    handle: uint64
  ): uint32 {.importc: "nl_subscribe", cdecl.}

## @brief Poll exactly one event without implicit retry or decoding.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param handle Caller-owned exact opaque capability identifier.
## @param output Exclusive writable canonical response storage.
## @param capacity Complete available response byte extent.
## @param length Exclusive sentinel-initialized full-width original length slot.
## @return Original unsigned transport status and unchanged original length facts.
proc nlPoll(
    handle: uint64;
    output: pointer;
    capacity: uint32;
    length: ptr uint64
  ): uint32 {.importc: "nl_poll", cdecl.}

## @brief Perform one admitted service call without replay or interpretation.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param handle Caller-owned exact opaque capability identifier.
## @param input Complete immutable original canonical request bytes.
## @param size Complete initialized byte extent.
## @param output Exclusive writable canonical response storage.
## @param capacity Complete available response byte extent.
## @param length Exclusive sentinel-initialized full-width original length slot.
## @return Original unsigned transport status and unchanged original length facts.
proc nlCall(
    handle: uint64;
    input: pointer;
    size: uint32;
    output: pointer;
    capacity: uint32;
    length: ptr uint64
  ): uint32 {.importc: "nl_call", cdecl.}

## @brief Delay only after an explicitly observed idle poll.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
## @return Zero, local argument error 22 or original local pause error.
proc nlPause(
    milliseconds: uint32
  ): uint32 {.importc: "nl_pause", cdecl.}

## @brief Borrow one complete original WASI command argument.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param index Original zero-based WASI command argument index.
## @param extent Exclusive writable original argument byte count.
## @return Immutable process-lifetime bytes, or absent/empty when unavailable.
proc nlArgument(
    index: uint32;
    extent: ptr uint32
  ): pointer {.importc: "nl_argument", cdecl.}

## @brief Emit complete already owned facts and lossless canonical bytes.
## @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
## @param primary First original operation, canonical-codec or controller error.
## @param cleanup Independent original acquired-owner close status.
## @param cleanup_present Exactly one only after an acquired-owner close attempt.
## @param rpc Original full unsigned transport status without narrowing.
## @param rpc_present Exactly one only after an admitted service call or event poll.
## @param length_value Original full-width length slot; maximum preserves unwritten state.
## @param present Exactly one only after whole-record canonical validation.
## @param wire Complete immutable source-language re-encoded canonical bytes.
## @param size Complete initialized byte extent.
## @return Primary, independent cleanup or output error; no numeric narrowing.
proc nlReport(
    primary: uint32;
    cleanup: uint32;
    cleanup_present: uint32;
    rpc: uint32;
    rpc_present: uint32;
    length_value: uint64;
    present: uint32;
    wire: pointer;
    size: uint32
  ): uint32 {.importc: "nl_report", cdecl.}

type
  ## @brief Own finite strict Unicode string bytes without a trailing NUL.
  ## @details Backing storage belongs to this value; no native ROS owner is created.
  ## @param N Inclusive original byte bound.
  Text*[N: static[int]] = object
    ## @brief Independently owned finite string backing bytes; only size bytes are active.
    data*: array[N, byte]
    ## @brief Initialized original byte extent, constrained to this string capacity.
    size*: uint32

  ## @brief Complete original speed response and controller diagnostic.
  ## @details Every field is an ordinary owned value; construction grants no capability.
  Speed* = object
    ## @brief Original unscaled controller speed percentage byte.
    speedRatio*: byte
    ## @brief Original full unsigned controller result code, including refusals.
    resultCode*: uint16
    ## @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    message*: Text[512]

  ## @brief Complete original IO response and controller diagnostic.
  ## @details Every field is an ordinary owned value; construction grants no capability.
  IO* = object
    ## @brief Owned complete strict UTF-8 IO signal value, at most 512 bytes.
    value*: Text[512]
    ## @brief Original full unsigned controller result code, including refusals.
    resultCode*: uint16
    ## @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    message*: Text[512]

  ## @brief Complete original RAPIDTaskState without field projection.
  ## @details Every field is an ordinary owned value; construction grants no capability.
  Task* = object
    ## @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    name*: Text[64]
    ## @brief Original activation flag, encoded as exactly zero or one.
    activated*: bool
    ## @brief Original unscaled RAPID execution_state byte.
    executionState*: byte
    ## @brief Original motion_task flag, encoded as exactly zero or one.
    motionTask*: bool

  ## @brief Complete original MechanicalUnitState without field projection.
  ## @details Every field is an ordinary owned value; construction grants no capability.
  Unit* = object
    ## @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    name*: Text[64]
    ## @brief Original activation flag, encoded as exactly zero or one.
    activated*: bool

  ## @brief Complete original ROS 2 Header, flags, RAPID tasks and mechanical units.
  ## @details Every field is an ordinary owned value; construction grants no capability.
  SystemState* = object
    ## @brief Original signed ROS 2 timestamp seconds without unit conversion.
    seconds*: int32
    ## @brief Original normalized timestamp nanoseconds in 0..999999999.
    nanoseconds*: uint32
    ## @brief Owned complete original frame identifier, at most 64 UTF-8 bytes.
    frameId*: Text[64]
    ## @brief Original motors_on flag, encoded as exactly zero or one.
    motorsOn*: bool
    ## @brief Original auto_mode flag, encoded as exactly zero or one.
    autoMode*: bool
    ## @brief Original rapid_running flag, encoded as exactly zero or one.
    rapidRunning*: bool
    ## @brief Independent backing storage for at most 16 complete original RAPID tasks.
    tasks*: array[16, Task]
    ## @brief Active original RAPID task count, constrained to 0..16.
    taskCount*: uint32
    ## @brief Independent backing storage for at most 16 complete mechanical units.
    units*: array[16, Unit]
    ## @brief Active original mechanical-unit count, constrained to 0..16.
    unitCount*: uint32

  ## @brief Complete owned records and independent operation, transport and close facts.
  ## @details Every field is an ordinary owned value; construction grants no capability.
  Observation* = object
    ## @brief First original operation, canonical-codec or controller failure.
    primary*: uint32
    ## @brief Independent original close status for the once-retired acquired owner.
    cleanup*: uint32
    ## @brief Original last full unsigned transport status without narrowing.
    rpc*: uint32
    ## @brief True only after a close attempt on an actually acquired owner.
    cleanupPresent*: bool
    ## @brief True only after an admitted service call or explicit event poll.
    rpcPresent*: bool
    ## @brief Original full-width length slot; the maximum value preserves an unwritten slot.
    length*: uint64
    ## @brief True only after the whole original response passed canonical validation.
    responsePresent*: bool
    ## @brief Complete independently owned speed reply; valid only for a present speed response.
    speed*: Speed
    ## @brief Complete independently owned IO reply; valid only for a present IO response.
    io*: IO
    ## @brief Complete independently owned state; valid only for a present state response.
    state*: SystemState
    ## @brief Owned complete source-language canonical storage, including every response field.
    wire*: array[2327, byte]
    ## @brief Initialized complete canonical byte extent, constrained to the backing capacity.
    wireSize*: uint32

  ## @brief Borrow one exclusive bounded canonical span.
  ## @details No host action occurs; failed composite values and prefixes remain unusable.
  Cursor = object
    ## @brief Exclusive borrowed canonical storage; no decoded field retains its pointer.
    bytes: ptr UncheckedArray[byte]
    ## @brief Complete available canonical byte extent.
    size: int
    ## @brief Consumed or initialized prefix, constrained to size.
    at: int
    ## @brief First canonical refusal; all partial values become unusable.
    failed: bool
    ## @brief True encodes; false decodes into independently owned fields.
    writing: bool

proc utf8*(bytes: openArray[byte]): bool =
  ## @brief Validate strict scalar UTF-8 without NUL. @param bytes Borrowed bytes.
  ## @return True for canonical Unicode scalar encodings, including empty text.
  var remaining, scalar, minimum: uint32
  for value in bytes:
    if remaining == 0:
      if value == 0:
        return false
      if value < 128:
        continue
      if value >= 194 and value <= 223:
        remaining = 1
        scalar = uint32(value and 31)
        minimum = 128
      elif value >= 224 and value <= 239:
        remaining = 2
        scalar = uint32(value and 15)
        minimum = 2048
      elif value >= 240 and value <= 244:
        remaining = 3
        scalar = uint32(value and 7)
        minimum = 65536
      else:
        return false
    else:
      if (value and 192) != 128:
        return false
      scalar = (scalar shl 6) or uint32(value and 63)
      dec remaining
      if remaining == 0 and (scalar < minimum or scalar > 0x10ffff or (scalar >= 0xd800 and scalar <= 0xdfff)):
        return false
  remaining == 0

## @brief Traverse one exact-width original scalar bit pattern.
## @details No host action occurs; failed composite values and prefixes remain unusable.
## @param T Exact original scalar type.
## @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
## @param value Complete independently owned original value; usable only after whole-record success.
proc integer[T: SomeInteger](cursor: var Cursor; value: var T) =
  if cursor.failed or sizeof(T) > cursor.size - cursor.at:
    cursor.failed = true
    return
  var bits: uint64
  if cursor.writing:
    bits = cast[uint64](value)
  for index in 0 ..< sizeof(T):
    if cursor.writing:
      cursor.bytes[cursor.at] = byte((bits shr (index * 8)) and 255)
    else:
      bits = bits or (uint64(cursor.bytes[cursor.at]) shl (index * 8))
    inc cursor.at
  if not cursor.writing:
    value = cast[T](bits)

## @brief Traverse one exact canonical zero/one flag.
## @details No host action occurs; failed composite values and prefixes remain unusable.
## @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
## @param value Complete independently owned original value; usable only after whole-record success.
proc boolean(cursor: var Cursor; value: var bool) =
  var raw = byte(ord(value))
  integer(cursor, raw)
  if raw > 1:
    cursor.failed = true
  value = raw != 0

## @brief Traverse one finite independently owned Unicode string.
## @details No host action occurs; failed composite values and prefixes remain unusable.
## @param N Inclusive original byte bound.
## @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
## @param value Complete independently owned original value; usable only after whole-record success.
proc text[N: static[int]](cursor: var Cursor; value: var Text[N]) =
  integer(cursor, value.size)
  if cursor.failed or value.size > uint32(N) or int(value.size) > cursor.size - cursor.at:
    cursor.failed = true
    return
  if value.size != 0:
    let count = int(value.size)
    if cursor.writing:
      if not utf8(value.data.toOpenArray(0, count - 1)):
        cursor.failed = true
        return
      for index in 0 ..< count:
        cursor.bytes[cursor.at + index] = value.data[index]
    else:
      if not utf8(cursor.bytes.toOpenArray(cursor.at, cursor.at + count - 1)):
        cursor.failed = true
        return
      for index in 0 ..< count:
        value.data[index] = cursor.bytes[cursor.at + index]
    cursor.at += count

## @brief Traverse every selected original field in declaration order.
## @details No host action occurs; failed composite values and prefixes remain unusable.
## @param operation Exact complete speed, IO or SystemState response selector.
## @param value Complete independently owned original value; usable only after whole-record success.
## @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
proc fields(operation: uint32; value: var Observation; cursor: var Cursor) =
  if operation == 1:
    integer(cursor, value.speed.speedRatio)
    integer(cursor, value.speed.resultCode)
    text(cursor, value.speed.message)
  elif operation == 2:
    text(cursor, value.io.value)
    integer(cursor, value.io.resultCode)
    text(cursor, value.io.message)
  elif operation == 3:
    integer(cursor, value.state.seconds)
    integer(cursor, value.state.nanoseconds)
    text(cursor, value.state.frameId)
    if value.state.nanoseconds >= 1000000000:
      cursor.failed = true
      return
    boolean(cursor, value.state.motorsOn)
    boolean(cursor, value.state.autoMode)
    boolean(cursor, value.state.rapidRunning)
    integer(cursor, value.state.taskCount)
    if value.state.taskCount > 16:
      cursor.failed = true
      return
    for index in 0 ..< int(value.state.taskCount):
      text(cursor, value.state.tasks[index].name)
      boolean(cursor, value.state.tasks[index].activated)
      integer(cursor, value.state.tasks[index].executionState)
      boolean(cursor, value.state.tasks[index].motionTask)
    integer(cursor, value.state.unitCount)
    if value.state.unitCount > 16:
      cursor.failed = true
      return
    for index in 0 ..< int(value.state.unitCount):
      text(cursor, value.state.units[index].name)
      boolean(cursor, value.state.units[index].activated)
  else:
    cursor.failed = true

proc encode*(operation: uint32; value: var Observation): uint32 =
  ## @brief Encode every original selected field into owned canonical storage.
  ## @param operation 1=speed, 2=IO, 3=SystemState. @param value Complete records/output.
  ## @return Zero on success or 22 for field, UTF-8, bound or capacity rejection.
  var cursor = Cursor(bytes: cast[ptr UncheckedArray[byte]](addr value.wire[0]), size: value.wire.len, writing: true)
  fields(operation, value, cursor)
  if cursor.failed:
    return 22
  value.wireSize = uint32(cursor.at)

proc decode*(operation: uint32; value: var Observation): uint32 =
  ## @brief Decode a whole reply and re-encode every field with no projection.
  ## @param operation Exact selected record. @param value Owned wire and records.
  ## @return Zero only after complete canonical validation; ignore records on error.
  if value.wireSize > uint32(value.wire.len):
    return 22
  var cursor = Cursor(bytes: cast[ptr UncheckedArray[byte]](addr value.wire[0]), size: int(value.wireSize))
  fields(operation, value, cursor)
  if cursor.failed or cursor.at != cursor.size:
    return 22
  encode(operation, value)

proc observe*(operation: uint32; alias, signal: openArray[byte]; attempts: uint32 = 1): Observation =
  ## @brief Own one exact capability from successful open through one checked close.
  ## @param operation 1=speed, 2=IO, 3=state. @param alias Existing exact UTF-8 grant.
  ## @param signal Complete IO name, unused otherwise. @param attempts Budget 1..1000.
  ## @return Complete records plus separate transport, codec, controller and close facts.
  ## @details Only idle 11 permits another poll. Service requests never replay.
  result.length = high(uint64)
  if operation < 1 or operation > 3 or alias.len == 0 or alias.len > 255 or not utf8(alias) or attempts == 0 or
      attempts > 1000:
    result.primary = 22
    return
  var request: array[516, byte]
  var requestSize: uint32
  if operation == 2:
    if signal.len == 0 or signal.len > 512 or not utf8(signal):
      result.primary = 22
      return
    let size = uint32(signal.len)
    for index in 0 ..< 4:
      request[index] = byte((size shr (index * 8)) and 255)
    for index in 0 ..< signal.len:
      request[index + 4] = signal[index]
    requestSize = size + 4
  if nlVersion() != 1:
    result.primary = 95
    return
  var handle: uint64
  result.primary = nlOpen(unsafeAddr alias[0], uint32(alias.len), addr handle)
  if result.primary != 0:
    return
  if operation == 3:
    result.primary = nlSubscribe(handle)
    if result.primary == 0:
      for index in 0 ..< attempts:
        result.length = high(uint64)
        result.rpc = nlPoll(handle, addr result.wire[0], uint32(result.wire.len), addr result.length)
        result.rpcPresent = true
        result.primary = result.rpc
        if result.rpc != 11 or index + 1 == attempts:
          break
        result.primary = nlPause(10)
        if result.primary != 0:
          break
  else:
    result.rpc = nlCall(handle, addr request[0], requestSize, addr result.wire[0], uint32(result.wire.len),
        addr result.length)
    result.rpcPresent = true
    result.primary = result.rpc
  if result.primary == 0:
    if result.length > uint64(result.wire.len):
      result.primary = 22
    else:
      result.wireSize = uint32(result.length)
      result.primary = decode(operation, result)
      result.responsePresent = result.primary == 0
      if result.responsePresent and ((operation == 1 and (result.speed.resultCode != 1 or result.speed.speedRatio >
          100)) or (operation == 2 and result.io.resultCode != 1)):
        result.primary = 5
  result.cleanup = nlClose(handle)
  result.cleanupPresent = true

proc argument*(index: uint32): seq[byte] =
  ## @brief Copy one original WASI argument. @param index Argument index.
  ## @return Independently owned bytes; empty when absent. Nim allocator owns the copy.
  var size: uint32
  let source = cast[ptr UncheckedArray[byte]](nlArgument(index, addr size))
  result = newSeq[byte](int(size))
  for index in 0 ..< int(size):
    result[index] = source[index]

proc report*(value: var Observation): uint32 =
  ## @brief Emit complete owned facts and canonical bytes. @param value Result.
  ## @return Original unsigned status; process exit alone applies the 125 clamp.
  nlReport(value.primary, value.cleanup, uint32(ord(value.cleanupPresent)), value.rpc, uint32(ord(value.rpcPresent)),
      value.length, uint32(ord(value.responsePresent)), addr value.wire[0], value.wireSize)
