## @file observation.nim
## @brief Own complete Unitree native observations in a genuine Nim guest.
## @details Values own finite arrays. Nim makes every handle, poll, codec and
## close decision. The scalar adapter owns no capability and interprets no field.
## Fatal traps or allocation failure cannot promise ordinary acquired-owner cleanup.
import unitree/nim/wire

## @brief Borrow exact scalar infrastructure from language/unitree-native/abi.h.
## @details All pointers reference live guest storage and are borrowed until return.
proc nlVersion(): uint32 {.importc: "nl_version", cdecl.}
proc nlOpen(aliasBytes: pointer; size: uint32; owner: ptr uint64): uint32 {.importc: "nl_open", cdecl.}
proc nlClose(owner: uint64): uint32 {.importc: "nl_close", cdecl.}
proc nlSubscribe(owner: uint64): uint32 {.importc: "nl_subscribe", cdecl.}
proc nlPoll(owner: uint64; output: pointer; capacity: uint32; length: ptr uint64): uint32
    {.importc: "nl_poll", cdecl.}
proc nlPause(milliseconds: uint32): uint32 {.importc: "nl_pause", cdecl.}
proc nlArgumentCount(): uint32 {.importc: "nl_argument_count", cdecl.}
proc nlArgument(index: uint32; size: ptr uint32): pointer {.importc: "nl_argument", cdecl.}
proc nlReport(primary, cleanup, cleanupPresent, rpc, rpcPresent: uint32; length: uint64;
              present, polls: uint32; bytes: pointer; size: uint32): uint32 {.importc: "nl_report", cdecl.}

type Observation*[Record] = object
    ## @brief Own the entire original record and independent operation/close facts.
    ## @details Value and bytes require responsePresent; copying grants no authority.
    ## @brief First original validation, transport or complete-codec failure.
    primary*: uint32
    ## @brief Independent original acquired-owner close status.
    cleanup*: uint32
    ## @brief True only after one acquired-owner close attempt.
    cleanupPresent*: bool
    ## @brief Original final event-poll status before complete decoding.
    rpc*: uint32
    ## @brief True only after an actual event poll returned.
    rpcPresent*: bool
    ## @brief Original full-width length slot, including its unwritten sentinel.
    length*: uint64
    ## @brief Actual event-poll count, including idle results.
    polls*: uint32
    ## @brief True only after complete decoding and complete re-encoding.
    responsePresent*: bool
    ## @brief Entire independently owned original record; require responsePresent.
    value*: Record
    ## @brief Independently owned finite canonical storage.
    bytes*: array[32768, byte]
    ## @brief Complete initialized canonical extent; require responsePresent.
    size*: uint32

proc receive*[Record](aliasBytes: openArray[byte]; minimum, maximum: int;
                      attempts: uint32): Observation[Record] =
    ## @brief Retain one native subscription and decode one entire original record.
    ## @param aliasBytes Borrowed strict UTF-8 alias, 1..255 bytes, stable until return.
    ## @param minimum Original complete record's inclusive minimum canonical extent.
    ## @param maximum Original complete record's exact finite canonical byte ceiling.
    ## @param attempts Finite total event-poll budget in 1..250.
    ## @return Owned complete value and independent primary, poll, length and close facts.
    ## @details Only idle 11 permits another poll, after a real twenty-millisecond
    ## WASI wait. Every ordinary successful acquisition closes once before return.
    result.length = high(uint64)
    if aliasBytes.len == 0 or aliasBytes.len > 255 or not utf8(aliasBytes) or attempts == 0 or attempts > 250 or
            minimum < 0 or maximum < minimum or maximum > result.bytes.len:
        result.primary = 22
        return
    if nlVersion() != 1:
        result.primary = 95
        return
    var owner: uint64
    result.primary = nlOpen(unsafeAddr aliasBytes[0], uint32(aliasBytes.len), addr owner)
    if result.primary != 0:
        return
    result.primary = nlSubscribe(owner)
    if result.primary == 0:
        for index in 0 ..< attempts:
            result.length = high(uint64)
            result.rpc = nlPoll(owner, addr result.bytes[0], uint32(maximum), addr result.length)
            result.rpcPresent = true
            inc result.polls
            result.primary = result.rpc
            if result.rpc != 11 or index + 1 == attempts:
                break
            result.primary = nlPause(20)
            if result.primary != 0:
                break
        if result.primary == 0:
            if result.length > uint64(maximum) or result.length < uint64(minimum):
                result.primary = 22
            else:
                result.primary = wire.decode(result.bytes.toOpenArray(0, int(result.length) - 1),
                                             minimum, maximum, result.value)
                if result.primary == 0:
                    var encoded: array[32768, byte]
                    var written: int
                    result.primary = wire.encode(result.value, encoded, maximum, written)
                    if result.primary == 0:
                        result.bytes = encoded
                        result.size = uint32(written)
                        result.responsePresent = true
    result.cleanupPresent = true
    result.cleanup = nlClose(owner)

proc argumentCount*(): uint32 =
    ## @brief Count original WASI command arguments, including the executable name.
    ## @return Original count; this local operation creates no native owner.
    nlArgumentCount()

proc argument*(index: uint32): seq[byte] =
    ## @brief Copy one original WASI argument into independent Nim-owned bytes.
    ## @param index Original zero-based argument index.
    ## @return Complete owned bytes, or an empty sequence when absent.
    ## @details The admitted mm:none command allocates this finite argument copy;
    ## its storage lives until the compiled command is retired.
    var size: uint32
    let source = cast[ptr UncheckedArray[byte]](nlArgument(index, addr size))
    result = newSeq[byte](int(size))
    for offset in 0 ..< int(size):
        result[offset] = source[offset]

proc report*[Record](value: var Observation[Record]): uint32 =
    ## @brief Emit all accepted canonical bytes and independent observation facts.
    ## @param value Borrowed complete observation, stable through stdout flush.
    ## @return Primary, independent close, then stdout error; no numeric narrowing.
    nlReport(value.primary, value.cleanup, uint32(ord(value.cleanupPresent)), value.rpc,
             uint32(ord(value.rpcPresent)), value.length, uint32(ord(value.responsePresent)),
             value.polls, addr value.bytes[0], value.size)
