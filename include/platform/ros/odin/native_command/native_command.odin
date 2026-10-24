// @file native_command.odin
// @brief Own complete native ROS String/Trigger records, codecs and capabilities.
// @details Genuine Odin owns finite record arrays, original statuses and one
// explicit close. C only adapts scalar ABI calls and complete result output.
package native_ros

import wire "ros:odin"

foreign import libc "native:abi.o"
foreign libc {
    // @brief Read the selected original ROS transport ABI version.
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    // @return Original version value, independently from operation errors.
    @(link_name="nl_version")
    nl_version :: proc "c"() -> u32 ---

    // @brief Open one exact granted alias without retry.
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    // @param handle Caller-owned exact opaque capability identifier.
    // @return Original independent unsigned close status.
    @(link_name="nl_close")
    nl_close :: proc "c"(
        handle: u64
    ) -> u32 ---

    // @brief Activate one exact already granted topic subscription.
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    // @param handle Caller-owned exact opaque capability identifier.
    // @return Original unsigned ABI operation status.
    @(link_name="nl_subscribe")
    nl_subscribe :: proc "c"(
        handle: u64
    ) -> u32 ---

    // @brief Publish one complete borrowed canonical String without retry.
    // @param handle Caller-owned exact topic capability.
    // @param input Immutable complete canonical record, borrowed until return.
    // @param size Complete initialized input extent.
    // @return Original unsigned ABI error; no ownership transfer occurs.
    @(link_name="nl_publish")
    nl_publish :: proc "c"(handle: u64, input: rawptr, size: u32) -> u32 ---

    // @brief Poll exactly one event without implicit retry or decoding.
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
    // @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
    // @return Zero, local argument error 22 or original local pause error.
    @(link_name="nl_pause")
    nl_pause :: proc "c"(
        milliseconds: u32
    ) -> u32 ---

    // @brief Emit complete already owned facts and lossless canonical bytes.
    // @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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

// @brief Own the complete original String data within an explicit UTF-8 quota.
String_Value :: struct {
    // @brief Entire original data; no native owner or borrowed storage is retained.
    data: wire.Text(252, false),
}

// @brief Own both original Trigger response fields; its request is empty.
Trigger_Response :: struct {
    // @brief Original success flag; false remains a complete valid service refusal.
    success: bool,
    // @brief Entire original diagnostic within the explicit UTF-8 byte quota.
    message: wire.Text(251, false),
}

// @brief Own complete values and independent operation, transport and cleanup facts.
Outcome :: struct {
    // @brief First operation, independent once-only close and original last RPC statuses.
    primary, cleanup, rpc: u32,
    // @brief Distinguish observed close/import/whole-response facts from absent observations.
    cleanup_present, rpc_present, response_present: bool,
    // @brief Original full-width length; maximum preserves an unwritten slot.
    length: u64,
    // @brief Whole owned original String, selected for publication/subscription.
    string: String_Value,
    // @brief Both owned original response fields, selected for Trigger calling.
    trigger: Trigger_Response,
    // @brief Complete source-language re-encoded bytes, valid through wire_size.
    wire: [256]u8,
    // @brief Initialized complete canonical extent, within the 256-byte backing storage.
    wire_size: u32,
}

// @brief Traverse every original field with the reviewed pure canonical cursor.
// @param cursor Exclusive synchronous reader/writer. @param value Owned whole String.
string_fields :: proc "contextless"(cursor: ^wire.Cursor, value: ^String_Value) {
    wire.text(cursor, &value.data)
}

// @brief Traverse both original Trigger fields without truthiness coercion.
// @param cursor Exclusive synchronous reader/writer. @param value Owned whole response.
trigger_fields :: proc "contextless"(cursor: ^wire.Cursor, value: ^Trigger_Response) {
    value.success = wire.boolean(cursor, value.success)
    wire.text(cursor, &value.message)
}

// @brief Encode an entire String transactionally into caller-owned bounded bytes.
// @param value Complete original data. @param output Exclusive destination.
// @return Complete initialized extent and canonical error; partial output is invalid.
encode_string :: proc "contextless"(value: String_Value, output: []u8) -> (u32, u32) {
    copy := value
    cursor := wire.Cursor{bytes = output, writing = true}
    string_fields(&cursor, &copy)
    if cursor.code != 0 { return 0, cursor.code }
    return u32(cursor.at), 0
}

// @brief Encode both complete original Trigger fields into bounded storage.
// @param value Whole owned response. @param output Exclusive destination.
// @return Complete initialized extent and canonical error; partial output is invalid.
encode_trigger :: proc "contextless"(value: Trigger_Response, output: []u8) -> (u32, u32) {
    copy := value
    cursor := wire.Cursor{bytes = output, writing = true}
    trigger_fields(&cursor, &copy)
    if cursor.code != 0 { return 0, cursor.code }
    return u32(cursor.at), 0
}

// @brief Decode exactly one complete String without retaining input pointers.
// @param input Complete borrowed canonical input. @return Whole owned value and error.
decode_string :: proc "contextless"(input: []u8) -> (String_Value, u32) {
    if len(input) < 4 || len(input) > 256 { return {}, 22 }
    value: String_Value
    cursor := wire.Cursor{bytes = input}
    string_fields(&cursor, &value)
    if cursor.code != 0 || cursor.at != len(input) { return {}, 22 }
    return value, 0
}

// @brief Decode every Trigger field with exact length, UTF-8 and boolean checks.
// @param input Complete borrowed canonical input. @return Whole owned response and error.
decode_trigger :: proc "contextless"(input: []u8) -> (Trigger_Response, u32) {
    if len(input) < 5 || len(input) > 256 { return {}, 22 }
    value: Trigger_Response
    cursor := wire.Cursor{bytes = input}
    trigger_fields(&cursor, &value)
    if cursor.code != 0 || cursor.at != len(input) { return {}, 22 }
    return value, 0
}

// @brief Execute one finite original operation and retire one acquired owner once.
// @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
// @param alias Existing strict UTF-8 policy alias, borrowed until return.
// @return Whole accepted fields, original status/length and independent cleanup facts.
// @details Publication schedules two samples separated by one discovery second.
// Only idle 11 permits another of at most 250 subscription polls; calls never replay.
run :: proc "contextless"(operation: u32, alias: []u8) -> Outcome {
    result := Outcome{length = 0xffffffffffffffff}
    if operation < 1 || operation > 3 || len(alias) == 0 || len(alias) > 255 || !wire.utf8(alias) {
        result.primary = 22
        return result
    }
    if operation == 1 {
        sample := "hello native ROS"
        result.string.data.size = u32(len(sample))
        for index in 0..<len(sample) { result.string.data.data[index] = sample[index] }
        result.wire_size, result.primary = encode_string(result.string, result.wire[:])
        if result.primary != 0 { return result }
    }
    if nl_version() != 1 { result.primary = 95; return result }
    owner: u64
    result.primary = nl_open(raw_data(alias), u32(len(alias)), &owner)
    if result.primary != 0 { return result }
    if owner == 0 { result.primary = 5; return result }
    if operation == 1 {
        result.rpc_present = true
        result.rpc = nl_publish(owner, &result.wire[0], result.wire_size)
        result.primary = result.rpc
        if result.primary == 0 { result.primary = nl_pause(1000) }
        if result.primary == 0 {
            result.rpc = nl_publish(owner, &result.wire[0], result.wire_size)
            result.primary = result.rpc
        }
        if result.primary == 0 { result.primary = nl_pause(200) }
    } else {
        if operation == 2 { result.primary = nl_subscribe(owner) }
        if result.primary == 0 {
            for attempt in 0..<250 {
                result.length = 0xffffffffffffffff
                result.rpc_present = true
                if operation == 2 {
                    result.rpc = nl_poll(owner, &result.wire[0], 256, &result.length)
                } else {
                    result.rpc = nl_call(owner, nil, 0, &result.wire[0], 256, &result.length)
                }
                result.primary = result.rpc
                if operation != 2 || result.rpc != 11 || attempt == 249 { break }
                result.primary = nl_pause(20)
                if result.primary != 0 { break }
            }
        }
        if result.primary == 0 {
            if result.length > 256 {
                result.primary = 22
            } else if operation == 2 {
                result.string, result.primary = decode_string(result.wire[:int(result.length)])
                if result.primary == 0 {
                    result.wire_size, result.primary = encode_string(result.string, result.wire[:])
                    result.response_present = result.primary == 0
                }
            } else {
                result.trigger, result.primary = decode_trigger(result.wire[:int(result.length)])
                if result.primary == 0 {
                    result.wire_size, result.primary = encode_trigger(result.trigger, result.wire[:])
                    result.response_present = result.primary == 0
                    if result.primary == 0 && !result.trigger.success { result.primary = 5 }
                }
            }
        }
    }
    result.cleanup_present = true
    result.cleanup = nl_close(owner)
    return result
}

// @brief Emit all already owned facts after one explicit owner retirement.
// @param value Complete ordinary result. @return First primary, cleanup, or stdout error.
report :: proc "contextless"(value: ^Outcome) -> u32 {
    return nl_report(value.primary, value.cleanup, u32(value.cleanup_present), value.rpc,
                     u32(value.rpc_present), value.length, u32(value.response_present),
                     &value.wire[0], value.wire_size)
}

