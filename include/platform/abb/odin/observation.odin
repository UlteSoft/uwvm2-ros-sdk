// @file observation.odin
// @brief Genuine Odin records, full canonical codecs and ABB capability ownership.
// @details All values own fixed arrays. No JSON bridge or native ROS library is
// linked. The C adapter converts exact ABI pointers without owning any handle.
package abb

foreign import libc "native:abi.o"
foreign libc {
    // @brief Read the selected original ROS transport ABI version.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @return Original version value, independently from operation errors.
    @(link_name="nl_version")
    nl_version :: proc "c"() -> u32 ---

    // @brief Open one exact granted alias without retry.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param alias Complete immutable strict UTF-8 capability alias.
    // @param size Complete initialized byte extent.
    // @param owner Exclusive writable full-width acquired-owner slot.
    // @return Original unsigned ABI error; owner is acquired only on zero.
    @(link_name="nl_open")
    nl_open :: proc "c"(
        alias: rawptr,
        size: u32,
        owner: ^u64
    ) -> u32 ---

    // @brief Retire one caller-owned acquired capability once.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param handle Caller-owned exact opaque capability identifier.
    // @return Original independent unsigned close status.
    @(link_name="nl_close")
    nl_close :: proc "c"(
        handle: u64
    ) -> u32 ---

    // @brief Activate one exact already granted topic subscription.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param handle Caller-owned exact opaque capability identifier.
    // @return Original unsigned ABI operation status.
    @(link_name="nl_subscribe")
    nl_subscribe :: proc "c"(
        handle: u64
    ) -> u32 ---

    // @brief Poll exactly one event without implicit retry or decoding.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param handle Caller-owned exact opaque capability identifier.
    // @param output Exclusive writable canonical response storage.
    // @param capacity Complete available response byte extent.
    // @param length Exclusive sentinel-initialized full-width original length slot.
    // @return Original unsigned transport status and unchanged original length facts.
    @(link_name="nl_poll")
    nl_poll :: proc "c"(
        handle: u64,
        output: rawptr,
        capacity: u32,
        length: ^u64
    ) -> u32 ---

    // @brief Perform one admitted service call without replay or interpretation.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param handle Caller-owned exact opaque capability identifier.
    // @param input Complete immutable original canonical request bytes.
    // @param size Complete initialized byte extent.
    // @param output Exclusive writable canonical response storage.
    // @param capacity Complete available response byte extent.
    // @param length Exclusive sentinel-initialized full-width original length slot.
    // @return Original unsigned transport status and unchanged original length facts.
    @(link_name="nl_call")
    nl_call :: proc "c"(
        handle: u64,
        input: rawptr,
        size: u32,
        output: rawptr,
        capacity: u32,
        length: ^u64
    ) -> u32 ---

    // @brief Delay only after an explicitly observed idle poll.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
    // @return Zero, local argument error 22 or original local pause error.
    @(link_name="nl_pause")
    nl_pause :: proc "c"(
        milliseconds: u32
    ) -> u32 ---

    // @brief Borrow one complete original WASI command argument.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param index Original zero-based WASI command argument index.
    // @param extent Exclusive writable original argument byte count.
    // @return Immutable process-lifetime bytes, or absent/empty when unavailable.
    @(link_name="nl_argument")
    nl_argument :: proc "c"(
        index: u32,
        extent: ^u32
    ) -> rawptr ---

    // @brief Emit complete already owned facts and lossless canonical bytes.
    // @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    // @param primary First original operation, canonical-codec or controller error.
    // @param cleanup Independent original acquired-owner close status.
    // @param cleanup_present Exactly one only after an acquired-owner close attempt.
    // @param rpc Original full unsigned transport status without narrowing.
    // @param rpc_present Exactly one only after an admitted service call or event poll.
    // @param length_value Original full-width length slot; maximum preserves unwritten state.
    // @param present Exactly one only after whole-record canonical validation.
    // @param wire Complete immutable source-language re-encoded canonical bytes.
    // @param size Complete initialized byte extent.
    // @return Primary, independent cleanup or output error; no numeric narrowing.
    @(link_name="nl_report")
    nl_report :: proc "c"(
        primary: u32,
        cleanup: u32,
        cleanup_present: u32,
        rpc: u32,
        rpc_present: u32,
        length_value: u64,
        present: u32,
        wire: rawptr,
        size: u32
    ) -> u32 ---

}

// @brief Own finite strict Unicode string bytes without a trailing NUL.
// @details Backing storage belongs to this value; no native ROS owner is created.
Text :: struct {
    // @brief Independently owned finite string backing bytes; only size bytes are active.
    data: [512]u8,
    // @brief Initialized original byte extent, constrained to this string capacity.
    size: u32,
}

// @brief Complete original speed response and controller diagnostic.
// @details Every field is an ordinary owned value; construction grants no capability.
Speed :: struct {
    // @brief Original unscaled controller speed percentage byte.
    speed_ratio: u8,
    // @brief Original full unsigned controller result code, including refusals.
    result_code: u16,
    // @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    message: Text,
}

// @brief Complete original IO response and controller diagnostic.
// @details Every field is an ordinary owned value; construction grants no capability.
IO :: struct {
    // @brief Owned complete strict UTF-8 IO signal value, at most 512 bytes.
    value: Text,
    // @brief Original full unsigned controller result code, including refusals.
    result_code: u16,
    // @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    message: Text,
}

// @brief Complete original RAPIDTaskState without field projection.
// @details Every field is an ordinary owned value; construction grants no capability.
Task :: struct {
    // @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    name: Text,
    // @brief Original activation flag, encoded as exactly zero or one.
    activated: bool,
    // @brief Original unscaled RAPID execution_state byte.
    execution_state: u8,
    // @brief Original motion_task flag, encoded as exactly zero or one.
    motion_task: bool,
}

// @brief Complete original MechanicalUnitState without field projection.
// @details Every field is an ordinary owned value; construction grants no capability.
Unit :: struct {
    // @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    name: Text,
    // @brief Original activation flag, encoded as exactly zero or one.
    activated: bool,
}

// @brief Complete original ROS 2 Header, flags, RAPID tasks and mechanical units.
// @details Every field is an ordinary owned value; construction grants no capability.
System_State :: struct {
    // @brief Original signed ROS 2 timestamp seconds without unit conversion.
    seconds: i32,
    // @brief Original normalized timestamp nanoseconds in 0..999999999.
    nanoseconds: u32,
    // @brief Owned complete original frame identifier, at most 64 UTF-8 bytes.
    frame_id: Text,
    // @brief Original motors_on flag, encoded as exactly zero or one.
    motors_on: bool,
    // @brief Original auto_mode flag, encoded as exactly zero or one.
    auto_mode: bool,
    // @brief Original rapid_running flag, encoded as exactly zero or one.
    rapid_running: bool,
    // @brief Independent backing storage for at most 16 complete original RAPID tasks.
    tasks: [16]Task,
    // @brief Active original RAPID task count, constrained to 0..16.
    task_count: u32,
    // @brief Independent backing storage for at most 16 complete mechanical units.
    units: [16]Unit,
    // @brief Active original mechanical-unit count, constrained to 0..16.
    unit_count: u32,
}

// @brief Complete owned records and independent operation, transport and close facts.
// @details Every field is an ordinary owned value; construction grants no capability.
Observation :: struct {
    // @brief First original operation, canonical-codec or controller failure.
    primary: u32,
    // @brief Independent original close status for the once-retired acquired owner.
    cleanup: u32,
    // @brief Original last full unsigned transport status without narrowing.
    rpc: u32,
    // @brief True only after a close attempt on an actually acquired owner.
    cleanup_present: bool,
    // @brief True only after an admitted service call or explicit event poll.
    rpc_present: bool,
    // @brief Original full-width length slot; the maximum value preserves an unwritten slot.
    length: u64,
    // @brief True only after the whole original response passed canonical validation.
    response_present: bool,
    // @brief Complete independently owned speed reply; valid only for a present speed response.
    speed: Speed,
    // @brief Complete independently owned IO reply; valid only for a present IO response.
    io: IO,
    // @brief Complete independently owned state; valid only for a present state response.
    state: System_State,
    // @brief Owned complete source-language canonical storage, including every response field.
    wire: [2327]u8,
    // @brief Initialized complete canonical byte extent, constrained to the backing capacity.
    wire_size: u32,
}

// @brief Validate strict Unicode scalar encodings without NUL.
// @param bytes Immutable bytes. @return True only for canonical UTF-8 text.
utf8 :: proc "contextless"(bytes: []u8) -> bool {
    remaining, scalar, minimum: u32
    for value in bytes {
        if remaining == 0 {
            if value == 0 {
                return false
            }
            if value < 128 {
                continue
            }
            if value >= 194 && value <= 223 {
                remaining = 1
                scalar = u32(value & 31)
                minimum = 128
            } else if value >= 224 && value <= 239 {
                remaining = 2
                scalar = u32(value & 15)
                minimum = 2048
            } else if value >= 240 && value <= 244 {
                remaining = 3
                scalar = u32(value & 7)
                minimum = 65536
            } else {
                return false
            }
        } else {
            if value & 192 != 128 {
                return false
            }
            scalar = scalar << 6 | u32(value & 63)
            remaining -= 1
            if remaining == 0 && (scalar < minimum || scalar > 0x10ffff || scalar >= 0xd800 && scalar <= 0xdfff) {
                return false
            }
        }
    }
    return remaining == 0
}

@(private)
// @brief Borrow one exclusive bounded canonical span.
// @details No host action occurs; failed composite values and prefixes remain unusable.
Cursor :: struct {
    // @brief Exclusive borrowed canonical storage; no decoded field retains a pointer.
    bytes: []u8,
    // @brief Consumed or initialized prefix, constrained to the complete byte extent.
    at: int,
    // @brief First canonical refusal; all partial values become unusable.
    failed: bool,
    // @brief True encodes; false decodes into independently owned fields.
    writing: bool,
}
@(private)
// @brief Traverse one exact-width little-endian scalar bit pattern.
// @details No host action occurs; failed composite values and prefixes remain unusable.
// @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
// @param original Original unscaled scalar bits.
// @param size Exact original scalar byte width.
// @return Original or decoded bits; cursor failure invalidates the value.
number :: proc "contextless"(cursor: ^Cursor, original: u64, size: int) -> u64 {
    if cursor.failed || size > len(cursor.bytes) - cursor.at {
        cursor.failed = true
        return 0
    }
    value := original
    if !cursor.writing {
        value = 0
    }
    for index in 0..<size {
        if cursor.writing {
            cursor.bytes[cursor.at] = u8(value >> u32(index * 8))
        } else {
            value |= u64(cursor.bytes[cursor.at]) << u32(index * 8)
        }
        cursor.at += 1
    }
    return value
}
@(private)
// @brief Traverse one exact canonical zero/one flag.
// @details No host action occurs; failed composite values and prefixes remain unusable.
// @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
// @param value Complete independently owned original value; usable only after whole-record success.
// @return Original or decoded flag; cursor failure invalidates the value.
boolean :: proc "contextless"(cursor: ^Cursor, value: bool) -> bool {
    raw := number(cursor, u64(u8(value)), 1)
    if raw > 1 {
        cursor.failed = true
    }
    return raw != 0
}
@(private)
// @brief Traverse one finite independently owned Unicode string.
// @details No host action occurs; failed composite values and prefixes remain unusable.
// @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
// @param value Complete independently owned original value; usable only after whole-record success.
// @param capacity Inclusive original byte bound.
text :: proc "contextless"(cursor: ^Cursor, value: ^Text, capacity: u32) {
    value.size = u32(number(cursor, u64(value.size), 4))
    if cursor.failed || value.size > capacity || int(value.size) > len(cursor.bytes) - cursor.at {
        cursor.failed = true
        return
    }
    count := int(value.size)
    if cursor.writing {
        if !utf8(value.data[:count]) {
            cursor.failed = true
            return
        }
        for index in 0..<count {
            cursor.bytes[cursor.at + index] = value.data[index]
        }
    } else {
        if !utf8(cursor.bytes[cursor.at:cursor.at + count]) {
            cursor.failed = true
            return
        }
        for index in 0..<count {
            value.data[index] = cursor.bytes[cursor.at + index]
        }
    }
    cursor.at += count
}
@(private)
// @brief Traverse every selected original field in declaration order.
// @details No host action occurs; failed composite values and prefixes remain unusable.
// @param operation Exact complete speed, IO or SystemState response selector.
// @param value Complete independently owned original value; usable only after whole-record success.
// @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
fields :: proc "contextless"(operation: u32, value: ^Observation, cursor: ^Cursor) {
    if operation == 1 {
        value.speed.speed_ratio = u8(number(cursor, u64(value.speed.speed_ratio), 1))
        value.speed.result_code = u16(number(cursor, u64(value.speed.result_code), 2))
        text(cursor, &value.speed.message, 512)
    } else if operation == 2 {
        text(cursor, &value.io.value, 512)
        value.io.result_code = u16(number(cursor, u64(value.io.result_code), 2))
        text(cursor, &value.io.message, 512)
    } else if operation == 3 {
        state := &value.state
        state.seconds = transmute(i32)u32(number(cursor, u64(transmute(u32)state.seconds), 4))
        state.nanoseconds = u32(number(cursor, u64(state.nanoseconds), 4))
        if state.nanoseconds >= 1000000000 {
            cursor.failed = true
            return
        }
        text(cursor, &state.frame_id, 64)
        state.motors_on = boolean(cursor, state.motors_on)
        state.auto_mode = boolean(cursor, state.auto_mode)
        state.rapid_running = boolean(cursor, state.rapid_running)
        state.task_count = u32(number(cursor, u64(state.task_count), 4))
        if state.task_count > 16 {
            cursor.failed = true
            return
        }
        for index in 0..<int(state.task_count) {
            task := &state.tasks[index]
            text(cursor, &task.name, 64)
            task.activated = boolean(cursor, task.activated)
            task.execution_state = u8(number(cursor, u64(task.execution_state), 1))
            task.motion_task = boolean(cursor, task.motion_task)
        }
        state.unit_count = u32(number(cursor, u64(state.unit_count), 4))
        if state.unit_count > 16 {
            cursor.failed = true
            return
        }
        for index in 0..<int(state.unit_count) {
            text(cursor, &state.units[index].name, 64)
            state.units[index].activated = boolean(cursor, state.units[index].activated)
        }
    } else { cursor.failed = true }
}

// @brief Encode every selected original field. @param operation Exact record.
// @param value Owned records/output. @return Zero or canonical error 22.
encode :: proc "contextless"(operation: u32, value: ^Observation) -> u32 {
    cursor := Cursor{bytes = value.wire[:], writing = true}
    fields(operation, value, &cursor)
    if cursor.failed {
        return 22
    }
    value.wire_size = u32(cursor.at)
    return 0
}
// @brief Decode a whole record and re-encode all fields with no projection.
// @param operation Exact record. @param value Owned wire/records.
// @return Zero only on complete validation; ignore record fields on error.
decode :: proc "contextless"(operation: u32, value: ^Observation) -> u32 {
    if value.wire_size > u32(len(value.wire)) {
        return 22
    }
    cursor := Cursor{bytes = value.wire[:int(value.wire_size)]}
    fields(operation, value, &cursor)
    if cursor.failed || cursor.at != len(cursor.bytes) {
        return 22
    }
    return encode(operation, value)
}

// @brief Own one exact alias from successful open through one checked close.
// @param operation 1=speed, 2=IO, 3=state. @param alias Exact existing UTF-8 grant.
// @param signal Complete IO name. @param attempts Finite budget 1..1000.
// @return Complete records plus original transport and independent close facts.
// @details Only idle 11 is polled again; service requests never replay.
observe :: proc "contextless"(operation: u32, alias, signal: []u8, attempts: u32 = 1) -> (result: Observation) {
    result.length = max(u64)
    if operation < 1 || operation > 3 || len(alias) == 0 || len(alias) > 255 || !utf8(alias) || attempts == 0 || attempts > 1000 {
        result.primary = 22
        return
    }
    request: [516]u8
    request_size: u32
    if operation == 2 {
        if len(signal) == 0 || len(signal) > 512 || !utf8(signal) {
            result.primary = 22
            return
        }
        count := u32(len(signal))
        for index in 0..<4 {
            request[index] = u8(count >> u32(index * 8))
        }
        for byte, index in signal {
            request[index + 4] = byte
        }
        request_size = count + 4
    }
    if nl_version() != 1 {
        result.primary = 95
        return
    }
    handle: u64
    result.primary = nl_open(raw_data(alias), u32(len(alias)), &handle)
    if result.primary != 0 {
        return
    }
    if operation == 3 {
        result.primary = nl_subscribe(handle)
        if result.primary == 0 {
            for index in 0..<attempts {
                result.length = max(u64)
                result.rpc = nl_poll(handle, raw_data(result.wire[:]), u32(len(result.wire)), &result.length)
                result.rpc_present = true
                result.primary = result.rpc
                if result.rpc != 11 || index + 1 == attempts {
                    break
                }
                result.primary = nl_pause(10)
                if result.primary != 0 {
                    break
                }
            }
        }
    } else {
        result.rpc = nl_call(handle, raw_data(request[:]), request_size, raw_data(result.wire[:]), u32(len(result.wire)), &result.length)
        result.rpc_present = true
        result.primary = result.rpc
    }
    if result.primary == 0 {
        if result.length > u64(len(result.wire)) {
            result.primary = 22
        } else {
            result.wire_size = u32(result.length)
            result.primary = decode(operation, &result)
            result.response_present = result.primary == 0
            if result.response_present && (operation == 1 && (result.speed.result_code != 1 || result.speed.speed_ratio > 100) ||
                operation == 2 && result.io.result_code != 1) {
                result.primary = 5
            }
        }
    }
    result.cleanup = nl_close(handle)
    result.cleanup_present = true
    return
}

// @brief Borrow an immutable WASI argument. @param index Argument index.
// @return Bytes valid until process return; callers must never mutate them.
argument :: proc "contextless"(index: u32) -> []u8 {
    size: u32
    bytes := nl_argument(index, &size)
    return ([^]u8)(bytes)[:int(size)]
}
// @brief Emit all facts and complete canonical bytes. @param value Owned result.
// @return Original unsigned status; only the common WASI entry clamps exit.
report :: proc "contextless"(value: ^Observation) -> u32 {
    return nl_report(
        value.primary,
        value.cleanup,
        u32(u8(value.cleanup_present)),
        value.rpc,
        u32(u8(value.rpc_present)),
        value.length,
        u32(u8(value.response_present)),
        raw_data(value.wire[:]),
        value.wire_size
    )
}
