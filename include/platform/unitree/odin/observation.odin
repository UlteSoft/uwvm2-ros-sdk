// @file observation.odin
// @brief Own complete Unitree native observations in a genuine Odin command.
// @details Odin owns all finite values, canonical bytes and handle decisions.
// The scalar adapter owns no capability and interprets no vendor field. Fatal
// traps or allocation failure cannot promise ordinary acquired-owner cleanup.
package unitree_core

import wire "unitree:odin/wire"
foreign import scalar "native:abi.o"

// @brief Borrow exact scalar infrastructure from language/unitree-native/abi.h.
// @details All pointers reference live guest-owned storage borrowed until return.
foreign scalar {
    nl_version :: proc "c"() -> u32 ---
    nl_open :: proc "c"(alias_bytes: rawptr, size: u32, owner: ^u64) -> u32 ---
    nl_close :: proc "c"(owner: u64) -> u32 ---
    nl_subscribe :: proc "c"(owner: u64) -> u32 ---
    nl_poll :: proc "c"(owner: u64, output: rawptr, capacity: u32, length: ^u64) -> u32 ---
    nl_pause :: proc "c"(milliseconds: u32) -> u32 ---
    nl_argument_count :: proc "c"() -> u32 ---
    nl_argument :: proc "c"(index: u32, size: ^u32) -> rawptr ---
    nl_report :: proc "c"(primary, cleanup, cleanup_present, rpc, rpc_present: u32,
                         length: u64, present, polls: u32, bytes: rawptr, size: u32) -> u32 ---
}

// @brief Own an entire original record and independent operation/close facts.
// @param Record Exact complete generated original record type.
// @details Value and bytes require response_present. Copying grants no authority.
Observation :: struct($Record: typeid) {
    // @brief First original validation, transport or complete-codec failure.
    primary: u32,
    // @brief Independent original acquired-owner close result.
    cleanup: u32,
    // @brief True only after one acquired-owner close attempt.
    cleanup_present: bool,
    // @brief Original final poll status before complete decoding.
    rpc: u32,
    // @brief True only after an actual event poll returned.
    rpc_present: bool,
    // @brief Original full-width length slot, including the unwritten sentinel.
    length: u64,
    // @brief Actual event polls, including idle results.
    polls: u32,
    // @brief True only after complete decoding and complete re-encoding.
    response_present: bool,
    // @brief Entire independently owned record; require response_present.
    value: Record,
    // @brief Independently owned finite canonical storage.
    bytes: [32768]u8,
    // @brief Complete initialized canonical extent; require response_present.
    size: u32,
}

// @brief Receive one whole original record through one retained subscription.
// @param Record Exact complete generated original schema.
// @param alias_bytes Borrowed strict UTF-8 alias, 1..255 bytes, stable until return.
// @param capacity Original complete record's exact finite canonical byte ceiling.
// @param decode Exact complete original source-language decoder.
// @param encode Exact complete original source-language encoder.
// @param attempts Finite total event-poll budget in 1..250.
// @return Entire owned value and independent primary, poll, length and close facts.
// @details Only idle 11 permits another poll, after a real twenty-millisecond
// WASI wait. Every ordinary successful acquisition closes once before return.
receive :: proc "contextless"(
    $Record: typeid,
    alias_bytes: []u8,
    capacity: int,
    decode: proc "contextless"([]u8) -> (Record, u32),
    encode: proc "contextless"(^Record, []u8) -> (int, u32),
    attempts: u32,
) -> Observation(Record) {
    result: Observation(Record)
    result.length = max(u64)
    if len(alias_bytes) == 0 || len(alias_bytes) > 255 || !wire.utf8(alias_bytes) ||
        attempts == 0 || attempts > 250 || capacity < 0 || capacity > len(result.bytes) {
        result.primary = 22
        return result
    }
    if nl_version() != 1 {
        result.primary = 95
        return result
    }
    owner: u64
    result.primary = nl_open(raw_data(alias_bytes), u32(len(alias_bytes)), &owner)
    if result.primary != 0 {
        return result
    }
    result.primary = nl_subscribe(owner)
    if result.primary == 0 {
        for index in 0..<attempts {
            result.length = max(u64)
            result.rpc = nl_poll(owner, &result.bytes[0], u32(capacity), &result.length)
            result.rpc_present = true
            result.polls += 1
            result.primary = result.rpc
            if result.rpc != 11 || index + 1 == attempts {
                break
            }
            result.primary = nl_pause(20)
            if result.primary != 0 {
                break
            }
        }
        if result.primary == 0 {
            if result.length > u64(capacity) {
                result.primary = 22
            } else {
                value, code := decode(result.bytes[:int(result.length)])
                result.primary = code
                if result.primary == 0 {
                    encoded: [32768]u8
                    size, encoding := encode(&value, encoded[:capacity])
                    result.primary = encoding
                    if result.primary == 0 {
                        result.value = value
                        result.bytes = encoded
                        result.size = u32(size)
                        result.response_present = true
                    }
                }
            }
        }
    }
    result.cleanup_present = true
    result.cleanup = nl_close(owner)
    return result
}

// @brief Count original WASI command arguments including the executable name.
// @return Original count; this local operation creates no native owner.
argument_count :: proc "contextless"() -> u32 {
    return nl_argument_count()
}

// @brief Borrow one original WASI argument until the compiled command returns.
// @param index Original zero-based argument index.
// @return Complete immutable argument bytes, or an empty slice when absent.
argument :: proc "contextless"(index: u32) -> []u8 {
    size: u32
    bytes := nl_argument(index, &size)
    if bytes == nil {
        return nil
    }
    return ([^]u8)(bytes)[:int(size)]
}

// @brief Emit all accepted canonical bytes and independent observation facts.
// @param value Borrowed complete observation, stable through stdout flush.
// @return Primary, independent close, then stdout status; no numeric narrowing.
report :: proc "contextless"(value: ^Observation($Record)) -> u32 {
    return nl_report(value.primary, value.cleanup, u32(value.cleanup_present), value.rpc,
                     u32(value.rpc_present), value.length, u32(value.response_present), value.polls,
                     &value.bytes[0], value.size)
}
