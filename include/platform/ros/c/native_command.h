/**
 * @file native_command.h
 * @brief Preserve complete String/Trigger values and independent native operation facts.
 * @details Caller-local storage bounds the example frame to 256 bytes. This
 * profile changes no original ROS schema. Codecs borrow live storage, owners
 * close once, and output contains whole original values rather than expected
 * fixture answers. Only idle subscription status 11 admits another poll.
 */
#ifndef UWVM_ROS_NATIVE_COMMAND_H
#define UWVM_ROS_NATIVE_COMMAND_H
#include <ros/c/command.h>
#include <ros/c/roswasm/codec.h>

/** @brief Complete finite command facts; numeric zero never implies presence. */
typedef struct uwvm_ros_native_outcome
{
    uwvm_ros_u32 primary, rpc, cleanup;
    int rpc_present, cleanup_present, length_present, response_present;
    uwvm_ros_u64 length;
    unsigned char wire[256];
    size_t wire_size;
    roswasmc_string text;
    int success;
} uwvm_ros_native_outcome;

/**
 * @brief Emit a full unsigned scalar as exact lowercase hexadecimal.
 * @param value Complete original scalar bits.
 * @param digits Eight for u32 or sixteen for u64.
 * @return Zero on complete stdout output, otherwise local I/O error 5.
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros_native_hex(uwvm_ros_u64 value, unsigned digits)
{
    char text[16];
    char const alphabet[] = "0123456789abcdef";
    unsigned index;
    if(digits != 8 && digits != 16)
    {
        return UWVM_ROS_INVALID;
    }
    for(index = 0; index != digits; ++index)
    {
        text[digits - index - 1] = alphabet[(unsigned)((value >> (4 * index)) & 15)];
    }
    return uwvm_ros_command_write(text, digits);
}

/**
 * @brief Report every complete initialized response byte and independent status.
 * @param value Borrowed finished facts; its decoded text still borrows value.wire.
 * @return Primary error before cleanup error, then independent output error.
 * @details A false Trigger response is still printed in full. Hexadecimal
 * numeric fields retain high unsigned bits and original eight-byte lengths.
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros_native_report(uwvm_ros_native_outcome const* value)
{
    uwvm_ros_u32 io = 0;
    size_t index;
#define UWVM_ROS_REPORT_TEXT(literal)                                                                                                                          \
    do                                                                                                                                                         \
    {                                                                                                                                                          \
        if(!io)                                                                                                                                                \
        {                                                                                                                                                      \
            io = uwvm_ros_command_write(literal, sizeof(literal) - 1);                                                                                         \
        }                                                                                                                                                      \
    }                                                                                                                                                          \
    while(0)
#define UWVM_ROS_REPORT_HEX(number, digits)                                                                                                                    \
    do                                                                                                                                                         \
    {                                                                                                                                                          \
        if(!io)                                                                                                                                                \
        {                                                                                                                                                      \
            io = uwvm_ros_native_hex(number, digits);                                                                                                          \
        }                                                                                                                                                      \
    }                                                                                                                                                          \
    while(0)
    UWVM_ROS_REPORT_TEXT("primary=0x");
    UWVM_ROS_REPORT_HEX(value->primary, 8);
    UWVM_ROS_REPORT_TEXT(" rpc=0x");
    UWVM_ROS_REPORT_HEX(value->rpc, 8);
    UWVM_ROS_REPORT_TEXT(" rpc_present=");
    if(!io)
    {
        io = uwvm_ros_command_write(value->rpc_present ? "1" : "0", 1);
    }
    UWVM_ROS_REPORT_TEXT(" cleanup=0x");
    UWVM_ROS_REPORT_HEX(value->cleanup, 8);
    UWVM_ROS_REPORT_TEXT(" cleanup_present=");
    if(!io)
    {
        io = uwvm_ros_command_write(value->cleanup_present ? "1" : "0", 1);
    }
    UWVM_ROS_REPORT_TEXT("\nlength=0x");
    UWVM_ROS_REPORT_HEX(value->length, 16);
    UWVM_ROS_REPORT_TEXT(" length_present=");
    if(!io)
    {
        io = uwvm_ros_command_write(value->length_present ? "1" : "0", 1);
    }
    UWVM_ROS_REPORT_TEXT(" response_present=");
    if(!io)
    {
        io = uwvm_ros_command_write(value->response_present ? "1" : "0", 1);
    }
    UWVM_ROS_REPORT_TEXT(" success=");
    if(!io)
    {
        io = uwvm_ros_command_write(value->success ? "1" : "0", 1);
    }
    UWVM_ROS_REPORT_TEXT("\nwire=");
    for(index = 0; !io && index != value->wire_size; ++index)
    {
        char text[2];
        char const alphabet[] = "0123456789abcdef";
        text[0] = alphabet[value->wire[index] >> 4];
        text[1] = alphabet[value->wire[index] & 15];
        io = uwvm_ros_command_write(text, 2);
    }
    UWVM_ROS_REPORT_TEXT("\ntext=");
    if(!io && value->text.size)
    {
        io = uwvm_ros_command_write(value->text.data, (uwvm_ros_u32)value->text.size);
    }
    UWVM_ROS_REPORT_TEXT("\n");
#undef UWVM_ROS_REPORT_HEX
#undef UWVM_ROS_REPORT_TEXT
    return value->primary ? value->primary : value->cleanup ? value->cleanup : io;
}

/**
 * @brief Validate a complete successful response without replacing transport facts.
 * @param value Exclusive facts with original length presence and initialized wire.
 * @param operation Two for String or three for Trigger.
 * @details Only complete strict scalar UTF-8 with no NUL is admitted. String
 * data is at most 252 bytes; Trigger diagnostics are at most 251 bytes. The
 * leading BOM, empty string and false Trigger diagnostic are preserved as data.
 */
ROSWASM_C_INLINE void uwvm_ros_native_decode(uwvm_ros_native_outcome* value, unsigned operation)
{
    if(value->primary)
    {
        return;
    }
    if(!value->length_present || value->length > sizeof value->wire)
    {
        value->primary = UWVM_ROS_INVALID;
        return;
    }
    value->wire_size = (size_t)value->length;
    if(operation == 2)
    {
        roswasmc_string next;
        value->primary = roswasmc_decode_string(value->wire, value->wire_size, &next);
        if(!value->primary && (next.size > 252 || !roswasmc_utf8(next, 0)))
        {
            value->primary = UWVM_ROS_INVALID;
        }
        if(!value->primary)
        {
            value->text = next;
        }
    }
    else
    {
        roswasmc_service_response response;
        value->primary = roswasmc_decode_service_response(value->wire, value->wire_size, &response);
        if(!value->primary && (response.message.size > 251 || !roswasmc_utf8(response.message, 0)))
        {
            value->primary = UWVM_ROS_INVALID;
        }
        if(!value->primary)
        {
            value->success = response.success;
            value->text = response.message;
        }
    }
    if(!value->primary)
    {
        value->response_present = 1;
        if(operation == 3 && !value->success)
        {
            value->primary = 5;
        }
    }
}

/**
 * @brief Perform one real C or explicit C FFI native ROS command.
 * @param context Stable borrowed complete original backend dispatch.
 * @param operation One=publish, two=subscribe, three=Trigger.
 * @return Original primary error, then once-only cleanup, then output error.
 * @details All state is local. No service request or failed external effect is
 * replayed, no worker or grant is created, and every acquired owner closes once.
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros_native_run(roswasmc_context const* context, unsigned operation)
{
    uwvm_ros_native_outcome facts = {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        {0},
        0,
        {0, 0},
        0
    };
    roswasmc_capability owner;
    unsigned attempt;
    if(operation < 1 || operation > 3)
    {
        return UWVM_ROS_INVALID;
    }
    if(!context || !context->backend || context->backend->abi_version() != 1)
    {
        return UWVM_ROS_UNSUPPORTED;
    }
    roswasmc_capability_init(&owner, context);
    facts.primary = roswasmc_open(&owner, "sample", 6);
    if(facts.primary)
    {
        return uwvm_ros_native_report(&facts);
    }
    if(operation == 1)
    {
        char const data[] = "hello native ROS";
        size_t size = 0;
        facts.primary = roswasmc_encode_string(roswasmc_string_init(data, sizeof data - 1), facts.wire, sizeof facts.wire, &size);
        for(attempt = 0; !facts.primary && attempt != 2; ++attempt)
        {
            facts.rpc = facts.primary = roswasmc_publish(&owner, facts.wire, size);
            facts.rpc_present = 1;
            if(!facts.primary)
            {
                facts.primary = uwvm_ros_command_pause(attempt == 0 ? 1000000000 : 200000000);
            }
        }
        facts.text = roswasmc_string_init(data, sizeof data - 1);
        facts.wire_size = size;
        facts.cleanup_present = 1;
        facts.cleanup = roswasmc_close(&owner);
        return uwvm_ros_native_report(&facts);
    }
    if(operation == 2)
    {
        facts.primary = roswasmc_subscribe(&owner);
    }
    for(attempt = 0; !facts.primary && attempt != (operation == 2 ? 250u : 1u); ++attempt)
    {
        roswasmc_result result = operation == 2 ? roswasmc_poll(&owner, facts.wire, sizeof facts.wire)
                                                : roswasmc_request(&owner, ROSWASMC_SERVICE_CALL, 0, 0, facts.wire, sizeof facts.wire);
        facts.rpc_present = 1;
        facts.rpc = result.error;
        facts.length_present = result.has_length;
        facts.length = result.length;
        if(operation == 2 && result.error == UWVM_ROS_AGAIN && attempt != 249)
        {
            facts.primary = uwvm_ros_command_pause(20000000);
            continue;
        }
        facts.primary = result.error;
        break;
    }
    uwvm_ros_native_decode(&facts, operation);
    facts.cleanup_present = 1;
    facts.cleanup = roswasmc_close(&owner);
    return uwvm_ros_native_report(&facts);
}
#endif
