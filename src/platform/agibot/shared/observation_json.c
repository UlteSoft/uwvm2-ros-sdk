/* SPDX-License-Identifier: Apache-2.0 */
/** @file observation_json.c
 * @brief Complete original-record JSON conversion after audited guest calls.
 * @details The generated emitters use only the selected official schema fields.
 * They introduce no transport, native library dependency or process execution.
 */
#include <agibot/shared/observation_json.h>
#include <agibot/c/json.h>
#include <inttypes.h>
#include <stdio.h>
#include <string.h>

#if !defined(__wasm32__)
# error "The Agibot JSON FFI must be compiled into a wasm32-wasip1 guest."
#endif

/** @brief Caller-owned, finite JSON writer; failure never publishes a prefix. */
typedef struct agibot_json_writer
{
    uint8_t* output;
    uint32_t capacity;
    uint32_t size;
    uint32_t error;
} agibot_json_writer;

static void json_bytes(agibot_json_writer* writer, void const* data, size_t size)
{
    if(writer->error)
    {
        return;
    }
    if(size > writer->capacity - writer->size)
    {
        writer->error = 90;
        return;
    }
    memcpy(writer->output + writer->size, data, size);
    writer->size += (uint32_t)size;
}

static void json_literal(agibot_json_writer* writer, char const* value)
{
    json_bytes(writer, value, strlen(value));
}

/** @brief Escape counted valid UTF-8 while retaining every original byte. */
static void json_text(agibot_json_writer* writer, unsigned char const* value, size_t size)
{
    static char const hexadecimal[] = "0123456789abcdef";
    json_literal(writer, "\"");
    for(size_t index = 0; index < size && !writer->error; ++index)
    {
        unsigned char byte = value[index];
        if(byte == '"' || byte == '\\')
        {
            unsigned char escaped[2] = {'\\', byte};
            json_bytes(writer, escaped, sizeof escaped);
        }
        else if(byte < 32)
        {
            char escaped[6] = {'\\', 'u', '0', '0', hexadecimal[byte >> 4], hexadecimal[byte & 15]};
            json_bytes(writer, escaped, sizeof escaped);
        }
        else
        {
            json_bytes(writer, &byte, 1);
        }
    }
    json_literal(writer, "\"");
}

static void json_signed(agibot_json_writer* writer, int64_t value, int quoted)
{
    char text[32];
    int size = snprintf(text, sizeof text, quoted ? "\"%" PRId64 "\"" : "%" PRId64, value);
    if(size < 0 || (size_t)size >= sizeof text)
    {
        writer->error = 5;
        return;
    }
    json_bytes(writer, text, (size_t)size);
}

static void json_unsigned(agibot_json_writer* writer, uint64_t value, int quoted)
{
    char text[32];
    int size = snprintf(text, sizeof text, quoted ? "\"%" PRIu64 "\"" : "%" PRIu64, value);
    if(size < 0 || (size_t)size >= sizeof text)
    {
        writer->error = 5;
        return;
    }
    json_bytes(writer, text, (size_t)size);
}

static void json_float(agibot_json_writer* writer, double value)
{
    char text[32];
    int size = snprintf(text, sizeof text, "%.17g", value);
    if(size < 0 || (size_t)size >= sizeof text)
    {
        writer->error = 5;
        return;
    }
    json_bytes(writer, text, (size_t)size);
}

#include "json_records.inc"

static int json_overlap(void const* left, size_t left_bytes, void const* right, size_t right_bytes)
{
    uintptr_t a = (uintptr_t)left;
    uintptr_t b = (uintptr_t)right;
    return a <= b ? b - a < left_bytes : a - b < right_bytes;
}

uint32_t agibot_json_observe(uint32_t operation,
                             uint8_t const* alias,
                             uint32_t alias_bytes,
                             uint32_t timeout_ms,
                             uint8_t* output,
                             uint32_t capacity,
                             uint32_t* written,
                             uint32_t* cleanup,
                             int64_t* vendor_code)
{
    if(!alias || alias_bytes == 0 || alias_bytes > 255 || !output || !written || !cleanup || !vendor_code || capacity == 0 || capacity > 65536 ||
       operation < 1 || operation > 3 || timeout_ms < 1 || timeout_ms > 30000 || (uintptr_t)written % _Alignof(uint32_t) ||
       (uintptr_t)cleanup % _Alignof(uint32_t) || (uintptr_t)vendor_code % _Alignof(int64_t) || json_overlap(output, capacity, written, sizeof *written) ||
       json_overlap(output, capacity, cleanup, sizeof *cleanup) || json_overlap(output, capacity, vendor_code, sizeof *vendor_code) ||
       json_overlap(written, sizeof *written, cleanup, sizeof *cleanup) || json_overlap(written, sizeof *written, vendor_code, sizeof *vendor_code) ||
       json_overlap(cleanup, sizeof *cleanup, vendor_code, sizeof *vendor_code))
    {
        return 22;
    }
    char name[256];
    memcpy(name, alias, alias_bytes);
    name[alias_bytes] = '\0';
    *written = 0;
    *cleanup = 0;
    *vendor_code = 0;
    if(memchr(name, '\0', alias_bytes))
    {
        return 22;
    }
    agibot_json_writer writer = {output, capacity, 0, 0};
    uint32_t error;
    if(operation == 1)
    {
        roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response response;
        error = uwvm_agibot_query_mode(name, &response, cleanup);
        if(error)
        {
            return error;
        }
        *vendor_code = response.header.code;
        json_aimdk_msgs_srv_GetMcAction_Response(&writer, &response);
    }
    else if(operation == 2)
    {
        roswasmc_bounded_2_aimdk_msgs_msg_McCommonState response;
        error = uwvm_agibot_next_motion_state(name, timeout_ms, &response, cleanup);
        if(error)
        {
            return error;
        }
        json_aimdk_msgs_msg_McCommonState(&writer, &response);
    }
    else
    {
        roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response response;
        error = uwvm_agibot_list_resources(name, &response, cleanup);
        if(error)
        {
            return error;
        }
        *vendor_code = response.header.header.code;
        json_aimdk_msgs_srv_GetRobotResources_Response(&writer, &response);
    }
    if(writer.error)
    {
        return writer.error;
    }
    *written = writer.size;
    return 0;
}

/** @brief Validate and serialize every original aimdk_msgs_srv_GetMcAction_Response field without I/O. */
uint32_t agibot_mode_json(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* value, uint8_t* output, uint32_t capacity, uint32_t* written)
{
    if(!value || !output || !written || capacity == 0 || capacity > 65536 ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response) != 0 || (uintptr_t)written % _Alignof(uint32_t) != 0 ||
       json_overlap(value, sizeof *value, output, capacity) || json_overlap(written, sizeof *written, output, capacity) ||
       json_overlap(value, sizeof *value, written, sizeof *written))
    {
        return 22;
    }
    *written = 0;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response_valid(value))
    {
        return 22;
    }
    agibot_json_writer writer = {output, capacity, 0, 0};
    json_aimdk_msgs_srv_GetMcAction_Response(&writer, value);
    if(writer.error)
    {
        return writer.error;
    }
    *written = writer.size;
    return 0;
}

/** @brief Validate and serialize every original aimdk_msgs_msg_McCommonState field without I/O. */
uint32_t agibot_state_json(roswasmc_bounded_2_aimdk_msgs_msg_McCommonState const* value, uint8_t* output, uint32_t capacity, uint32_t* written)
{
    if(!value || !output || !written || capacity == 0 || capacity > 65536 ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_aimdk_msgs_msg_McCommonState) != 0 || (uintptr_t)written % _Alignof(uint32_t) != 0 ||
       json_overlap(value, sizeof *value, output, capacity) || json_overlap(written, sizeof *written, output, capacity) ||
       json_overlap(value, sizeof *value, written, sizeof *written))
    {
        return 22;
    }
    *written = 0;
    if(!roswasmc_bounded_2_aimdk_msgs_msg_McCommonState_valid(value))
    {
        return 22;
    }
    agibot_json_writer writer = {output, capacity, 0, 0};
    json_aimdk_msgs_msg_McCommonState(&writer, value);
    if(writer.error)
    {
        return writer.error;
    }
    *written = writer.size;
    return 0;
}

/** @brief Validate and serialize every original aimdk_msgs_srv_GetRobotResources_Response field without I/O. */
uint32_t agibot_resources_json(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response const* value, uint8_t* output, uint32_t capacity, uint32_t* written)
{
    if(!value || !output || !written || capacity == 0 || capacity > 65536 ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response) != 0 || (uintptr_t)written % _Alignof(uint32_t) != 0 ||
       json_overlap(value, sizeof *value, output, capacity) || json_overlap(written, sizeof *written, output, capacity) ||
       json_overlap(value, sizeof *value, written, sizeof *written))
    {
        return 22;
    }
    *written = 0;
    if(!roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response_valid(value))
    {
        return 22;
    }
    agibot_json_writer writer = {output, capacity, 0, 0};
    json_aimdk_msgs_srv_GetRobotResources_Response(&writer, value);
    if(writer.error)
    {
        return writer.error;
    }
    *written = writer.size;
    return 0;
}
