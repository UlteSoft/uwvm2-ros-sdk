## @file native_command.nim
## @brief Genuine Nim finite records, complete codecs and native ROS owner lifecycle.
## @details Nim generates C with its own frontend. LLVM 23 compiles that generated
## C into Wasm; the independent ABI adapter decodes no records and owns no handle.
## All records own fixed arrays; this binding performs no managed allocation.

## @brief Read the selected original ROS transport ABI version.
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
## @return Original version value, independently from operation errors.
proc nlVersion(): uint32 {.importc: "nl_version", cdecl.}

## @brief Open one exact granted alias without retry.
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
## @param handle Caller-owned exact opaque capability identifier.
## @return Original independent unsigned close status.
proc nlClose(
    handle: uint64
  ): uint32 {.importc: "nl_close", cdecl.}

## @brief Activate one exact already granted topic subscription.
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
## @param handle Caller-owned exact opaque capability identifier.
## @return Original unsigned ABI operation status.
proc nlSubscribe(
    handle: uint64
  ): uint32 {.importc: "nl_subscribe", cdecl.}

## @brief Poll exactly one event without implicit retry or decoding.
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
## @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
## @return Zero, local argument error 22 or original local pause error.
proc nlPause(
    milliseconds: uint32
  ): uint32 {.importc: "nl_pause", cdecl.}

## @brief Emit complete already owned facts and lossless canonical bytes.
## @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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

import ros/nim/wire as wire
## @brief Publish complete language-owned canonical bytes without replay.
## @param owner Acquired exact handle. @param bytes Borrowed initialized bytes.
## @param size Complete extent. @return Original unsigned ROS ABI error.
proc nlPublish(owner: uint64; bytes: pointer; size: uint32): uint32 {.importc: "nl_publish", cdecl.}

type
  StringValue* = object
    ## @brief Complete original String data within the explicit 252-byte UTF-8 SDK quota.
    data*: wire.NativeText[252, false]
  TriggerResponse* = object
    ## @brief Original success flag, retained even for an explicit service refusal.
    success*: bool
    ## @brief Complete original diagnostic within the explicit 251-byte UTF-8 SDK quota.
    message*: wire.NativeText[251, false]
  Outcome* = object
    ## @brief Independent first operation, original once-only close, and last RPC codes.
    primary*, cleanup*, rpc*: uint32
    ## @brief Distinguish an observed close, RPC, and complete original response.
    cleanupPresent*, rpcPresent*, responsePresent*: bool
    ## @brief Original full-width byte slot; high(uint64) preserves unwritten state.
    length*: uint64
    ## @brief Entire independently owned original String value.
    stringValue*: StringValue
    ## @brief Both independently owned original Trigger response fields.
    trigger*: TriggerResponse
    ## @brief Owned complete encoded bytes; only size bytes are active.
    bytes*: array[256, byte]
    ## @brief Initialized whole canonical extent within the backing array.
    size*: int

proc run*(operation: uint32; capabilityAlias: openArray[byte]): Outcome =
  ## @brief Execute one complete original publish, subscribe, or Trigger operation.
  ## @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
  ## @param capabilityAlias Existing exact policy alias, borrowed through return.
  ## @return Owned complete fields and independent original operation/cleanup facts.
  ## @details Two planned publications are separated by one second for discovery.
  ## Only idle subscription status 11 repeats, with at most 250 finite polls.
  ## Every normally acquired owner closes once; no failed effect or service replays.
  result.length = high(uint64)
  if operation < 1 or operation > 3 or capabilityAlias.len == 0 or capabilityAlias.len > 255 or not wire.utf8(capabilityAlias):
    result.primary = 22
    return
  if operation == 1:
    const sample = "hello native ROS"
    for index, character in sample:
      result.stringValue.data.textBytes[index] = byte(character)
    result.stringValue.data.textSize = uint32(sample.len)
    result.primary = wire.encode(result.stringValue, result.bytes, 256, result.size)
    if result.primary != 0:
      return
  if nlVersion() != 1:
    result.primary = 95
    return
  var owner: uint64
  result.primary = nlOpen(unsafeAddr capabilityAlias[0], uint32(capabilityAlias.len), addr owner)
  if result.primary != 0:
    return
  if owner == 0:
    result.primary = 5
    return
  if operation == 1:
    result.rpcPresent = true
    result.rpc = nlPublish(owner, addr result.bytes[0], uint32(result.size))
    result.primary = result.rpc
    if result.primary == 0:
      result.primary = nlPause(1000)
    if result.primary == 0:
      result.rpc = nlPublish(owner, addr result.bytes[0], uint32(result.size))
      result.primary = result.rpc
    if result.primary == 0:
      result.primary = nlPause(200)
  else:
    if operation == 2:
      result.primary = nlSubscribe(owner)
    if result.primary == 0:
      for attempt in 0 ..< 250:
        result.length = high(uint64)
        result.rpcPresent = true
        result.rpc = if operation == 2:
          nlPoll(owner, addr result.bytes[0], 256, addr result.length)
        else:
          nlCall(owner, nil, 0, addr result.bytes[0], 256, addr result.length)
        result.primary = result.rpc
        if operation != 2 or result.rpc != 11 or attempt == 249:
          break
        result.primary = nlPause(20)
        if result.primary != 0:
          break
    if result.primary == 0:
      let minimum = if operation == 2: 4 else: 5
      if result.length < uint64(minimum) or result.length > 256:
        result.primary = 22
      elif operation == 2:
        result.primary = wire.decode(result.bytes.toOpenArray(0, int(result.length) - 1), 4, 256, result.stringValue)
        if result.primary == 0:
          result.responsePresent = true
          result.primary = wire.encode(result.stringValue, result.bytes, 256, result.size)
      else:
        result.primary = wire.decode(result.bytes.toOpenArray(0, int(result.length) - 1), 5, 256, result.trigger)
        if result.primary == 0:
          result.responsePresent = true
          result.primary = wire.encode(result.trigger, result.bytes, 256, result.size)
        if result.primary == 0 and not result.trigger.success:
          result.primary = 5
  result.cleanupPresent = true
  result.cleanup = nlClose(owner)

proc report*(facts: var Outcome): uint32 =
  ## @brief Emit every complete accepted byte after once-only native retirement.
  ## @param facts Borrowed owned complete result. @return Primary, close, or stdout error.
  nlReport(facts.primary, facts.cleanup, uint32(ord(facts.cleanupPresent)), facts.rpc, uint32(ord(facts.rpcPresent)), facts.length, uint32(ord(facts.responsePresent)), addr facts.bytes[0], uint32(facts.size))
