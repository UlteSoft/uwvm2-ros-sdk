/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_UR_POLYSCOPEX_SDK_V0_11_IO_H
#define UWVM_UR_POLYSCOPEX_SDK_V0_11_IO_H
#include <ros/c/roswasm/codec.h>
#include <stdint.h>
#include <math.h>

/* Historical SDK-v0.11 scalar services, not the later urinterfaces arrays.
 * Official document raw SHA256:
 * f36046afc831a0d6e45100fe75cd91409e9317f9ed6f6e03795655950f41ac4e
 * https://docs.universal-robots.com/PolyScopeX_SDK_Documentation/build/SDK-v0.11/_downloads/269b9c285239fcf0175c496d94007a2b/URInterfacesAPI.html
 *
 * This source preserves documented field widths, bools, physical units and
 * service false responses. C padding is never serialized. Canonical bytes use
 * the existing SDK C value representation; they are not native ROS CDR or a
 * promise of native rcl/C struct ABI compatibility. The native v0.11 package
 * commit/type support still requires independent SDK01/VM qualification.
 *
 * All operations execute in the calling Guest. They borrow the supplied
 * capability/context/backend; they neither open nor copy ownership, grant
 * authority, change service endpoints, retry nor create background callbacks.
 * The caller supplies valid live private C objects and serializes their use.
 * Runtime caller/type/handle/ticket/deadline checks belong to the real host.
 * Service call, request polling and response each need their own matching
 * granted role. A ticket is not a capability. Error90/110 or malformed replies
 * can follow an external effect; unchanged Guest output never proves no effect.
 */
#define UWVM_UR_PSX011_OUTPUT_CURRENT 0u
#define UWVM_UR_PSX011_OUTPUT_VOLTAGE 1u
#define UWVM_UR_PSX011_STATE_OFF 0u
#define UWVM_UR_PSX011_STATE_ON 1u
#define UWVM_UR_PSX011_ANALOG_WIRE_BYTES 10u
#define UWVM_UR_PSX011_DIGITAL_WIRE_BYTES 2u
#define UWVM_UR_PSX011_SPEED_WIRE_BYTES 4u

typedef struct uwvm_ur_psx011_analog_request
{
    int8_t pin;
    uint8_t output_type;
    double value; /* amperes for CURRENT, volts for VOLTAGE; no normalization */
} uwvm_ur_psx011_analog_request;
typedef struct uwvm_ur_psx011_digital_request
{
    int8_t pin;
    uint8_t state;
} uwvm_ur_psx011_digital_request;
typedef struct uwvm_ur_psx011_speed_request { float value; } uwvm_ur_psx011_speed_request;
typedef struct uwvm_ur_psx011_response { uint8_t success; } uwvm_ur_psx011_response;

#if defined(__cplusplus)
#define UWVM_UR_PSX011_ZERO {}
#else
#define UWVM_UR_PSX011_ZERO {0}
#endif

static inline int uwvm_ur_psx011_range(void const* p, size_t size)
{
    return p && size && size <= UINTPTR_MAX - (uintptr_t)p;
}
static inline int uwvm_ur_psx011_overlap(void const* a, size_t an, void const* b, size_t bn)
{
    if(!uwvm_ur_psx011_range(a, an) || !uwvm_ur_psx011_range(b, bn)) return 1;
    return (uintptr_t)a < (uintptr_t)b + bn && (uintptr_t)b < (uintptr_t)a + an;
}
static inline size_t uwvm_ur_psx011_object_size(unsigned kind)
{
    return kind == 1 ? sizeof(uwvm_ur_psx011_analog_request) :
           kind == 2 ? sizeof(uwvm_ur_psx011_digital_request) :
           kind == 3 ? sizeof(uwvm_ur_psx011_speed_request) : 0;
}
static inline size_t uwvm_ur_psx011_wire_size(unsigned kind)
{
    return kind == 1 ? 10 : kind == 2 ? 2 : kind == 3 ? 4 : 0;
}
static inline int uwvm_ur_psx011_valid(unsigned kind, void const* request)
{
    if(!uwvm_ur_psx011_range(request, uwvm_ur_psx011_object_size(kind))) return 0;
    if(kind == 1)
    {
        uwvm_ur_psx011_analog_request const* r = (uwvm_ur_psx011_analog_request const*)request;
        return r->pin >= 0 && r->pin <= 1 && r->output_type <= 1 && isfinite(r->value) &&
            (r->output_type == 0 ? r->value >= 0.002 && r->value <= 0.020 : r->value >= 0 && r->value <= 10);
    }
    if(kind == 2)
    {
        uwvm_ur_psx011_digital_request const* r = (uwvm_ur_psx011_digital_request const*)request;
        return r->pin >= 0 && r->pin <= 7 && r->state <= 1;
    }
    if(kind == 3)
    {
        uwvm_ur_psx011_speed_request const* r = (uwvm_ur_psx011_speed_request const*)request;
        return sizeof(float) == 4 && FLT_RADIX == 2 && FLT_MANT_DIG == 24 && FLT_MAX_EXP == 128 &&
            isfinite(r->value) && r->value >= 0 && r->value <= 1;
    }
    return 0;
}

static inline uint32_t uwvm_ur_psx011_make_analog(int32_t pin, uint32_t output_type, double value,
                                               uwvm_ur_psx011_analog_request* out)
{
    uwvm_ur_psx011_analog_request next = UWVM_UR_PSX011_ZERO;
    if(!uwvm_ur_psx011_range(out, sizeof *out) || pin < 0 || pin > 1 || output_type > 1) return 22;
    next.pin = (int8_t)pin; next.output_type = (uint8_t)output_type; next.value = value;
    if(!uwvm_ur_psx011_valid(1, &next)) return 22;
    *out = next;
    return 0;
}
static inline uint32_t uwvm_ur_psx011_make_digital(int32_t pin, uint32_t state,
                                                uwvm_ur_psx011_digital_request* out)
{
    uwvm_ur_psx011_digital_request next = UWVM_UR_PSX011_ZERO;
    if(!uwvm_ur_psx011_range(out, sizeof *out) || pin < 0 || pin > 7 || state > 1) return 22;
    next.pin = (int8_t)pin; next.state = (uint8_t)state;
    *out = next;
    return 0;
}
static inline uint32_t uwvm_ur_psx011_make_speed(float value, uwvm_ur_psx011_speed_request* out)
{
    uwvm_ur_psx011_speed_request next = UWVM_UR_PSX011_ZERO;
    if(!uwvm_ur_psx011_range(out, sizeof *out)) return 22;
    next.value = value;
    if(!uwvm_ur_psx011_valid(3, &next)) return 22;
    *out = next;
    return 0;
}

/* Encode/decode stage locally and commit only after complete validation.
 * Codecs reject overlapping record/byte/length destinations, as the existing
 * bounded SDK codecs do. Callers supply exact initialized live object storage.
 */
static inline uint32_t uwvm_ur_psx011_encode(unsigned kind, void const* request,
                                          void* output, size_t capacity, size_t* length)
{
    unsigned char bytes[10] = {0};
    size_t wire = uwvm_ur_psx011_wire_size(kind), object = uwvm_ur_psx011_object_size(kind);
    roswasmc_writer writer = roswasmc_writer_init(bytes, sizeof bytes);
    if(!uwvm_ur_psx011_valid(kind, request) || capacity < wire ||
       !uwvm_ur_psx011_range(output, wire) || !uwvm_ur_psx011_range(length, sizeof *length) ||
       uwvm_ur_psx011_overlap(output, wire, length, sizeof *length) ||
       uwvm_ur_psx011_overlap(request, object, length, sizeof *length) ||
       uwvm_ur_psx011_overlap(request, object, output, wire)) return 22;
    if(kind == 1)
    {
        uwvm_ur_psx011_analog_request const* r = (uwvm_ur_psx011_analog_request const*)request;
        if(!roswasmc_write_integer(&writer, (uint8_t)r->pin, 1) ||
           !roswasmc_write_integer(&writer, r->output_type, 1) || !roswasmc_write_float64(&writer, r->value)) return 22;
    }
    else if(kind == 2)
    {
        uwvm_ur_psx011_digital_request const* r = (uwvm_ur_psx011_digital_request const*)request;
        if(!roswasmc_write_integer(&writer, (uint8_t)r->pin, 1) || !roswasmc_write_integer(&writer, r->state, 1)) return 22;
    }
    else
    {
        uint32_t bits;
        roswasmc_copy_object(&bits, &((uwvm_ur_psx011_speed_request const*)request)->value, 4);
        if(!roswasmc_write_integer(&writer, bits, 4)) return 22;
    }
    if(!writer.valid || writer.size != wire) return 22;
    roswasmc_copy_object(output, bytes, wire);
    *length = wire;
    return 0;
}
static inline uint32_t uwvm_ur_psx011_decode(unsigned kind, void const* input, size_t length, void* output)
{
    union
    {
        uwvm_ur_psx011_analog_request analog;
        uwvm_ur_psx011_digital_request digital;
        uwvm_ur_psx011_speed_request speed;
    } next = UWVM_UR_PSX011_ZERO;
    size_t object = uwvm_ur_psx011_object_size(kind), wire = uwvm_ur_psx011_wire_size(kind);
    roswasmc_reader reader = roswasmc_reader_init(input, length);
    uwvm_ros_u64 first, second;
    void const* selected;
    if(!wire || length != wire || !uwvm_ur_psx011_range(input, wire) ||
       !uwvm_ur_psx011_range(output, object) || uwvm_ur_psx011_overlap(input, wire, output, object)) return 22;
    if(kind == 1)
    {
        if(!roswasmc_read_integer(&reader, &first, 1) || first > 1 ||
           !roswasmc_read_integer(&reader, &second, 1) || second > 1 ||
           !roswasmc_read_float64(&reader, &next.analog.value)) return 22;
        next.analog.pin = (int8_t)first; next.analog.output_type = (uint8_t)second;
        selected = &next.analog;
    }
    else if(kind == 2)
    {
        if(!roswasmc_read_integer(&reader, &first, 1) || first > 7 ||
           !roswasmc_read_integer(&reader, &second, 1) || second > 1) return 22;
        next.digital.pin = (int8_t)first; next.digital.state = (uint8_t)second;
        selected = &next.digital;
    }
    else
    {
        uint32_t bits;
        if(sizeof(float) != 4 || !roswasmc_read_integer(&reader, &first, 4)) return 22;
        bits = (uint32_t)first;
        roswasmc_copy_object(&next.speed.value, &bits, 4);
        selected = &next.speed;
    }
    if(!roswasmc_reader_done(&reader) || !uwvm_ur_psx011_valid(kind, selected)) return 22;
    roswasmc_copy_object(output, selected, object);
    return 0;
}

static inline uint32_t uwvm_ur_psx011_cap_status(roswasmc_capability const* cap)
{
    if(!cap || !cap->context || !cap->context->backend || !cap->handle) return UWVM_ROS_BAD_HANDLE;
    return cap->context->backend->version == 2 ? 0 : UWVM_ROS_UNSUPPORTED;
}
static inline int uwvm_ur_psx011_destination(roswasmc_capability const* cap, void const* out, size_t size)
{
    return !uwvm_ur_psx011_cap_status(cap) && uwvm_ur_psx011_range(out, size) &&
        !uwvm_ur_psx011_overlap(out, size, cap, sizeof *cap) &&
        !uwvm_ur_psx011_overlap(out, size, cap->context, sizeof *cap->context) &&
        !uwvm_ur_psx011_overlap(out, size, cap->context->backend, sizeof *cap->context->backend);
}
static inline roswasmc_result uwvm_ur_psx011_failure(uint32_t error)
{
    roswasmc_result result = {error, 0, 0};
    return result;
}
static inline roswasmc_result uwvm_ur_psx011_call(unsigned kind, roswasmc_capability const* cap,
                                               void const* request, uwvm_ur_psx011_response* response)
{
    unsigned char input[10], output[1]; size_t size = 0;
    uint32_t error = uwvm_ur_psx011_cap_status(cap);
    roswasmc_result result;
    if(error) return uwvm_ur_psx011_failure(error);
    if(!uwvm_ur_psx011_destination(cap, response, sizeof *response) ||
       uwvm_ur_psx011_overlap(request, uwvm_ur_psx011_object_size(kind), response, sizeof *response) ||
       uwvm_ur_psx011_encode(kind, request, input, sizeof input, &size)) return uwvm_ur_psx011_failure(22);
    result = roswasmc_service_call(cap, input, size, output, sizeof output);
    if(result.error) return result;
    if(!result.has_length || result.length != 1 || output[0] > 1) { result.error = 22; return result; }
    response->success = output[0]; /* false is a valid service response, not transport errno */
    return result;
}
static inline roswasmc_result uwvm_ur_psx011_poll(unsigned kind, roswasmc_capability const* cap,
                                               uint64_t* ticket, void* request)
{
    unsigned char output[18]; size_t wire = uwvm_ur_psx011_wire_size(kind);
    roswasmc_reader reader; uwvm_ros_u64 next_ticket;
    uint32_t error = uwvm_ur_psx011_cap_status(cap);
    roswasmc_result result;
    if(error) return uwvm_ur_psx011_failure(error);
    if(!wire || !uwvm_ur_psx011_destination(cap, ticket, sizeof *ticket) ||
       !uwvm_ur_psx011_destination(cap, request, uwvm_ur_psx011_object_size(kind)) ||
       uwvm_ur_psx011_overlap(ticket, sizeof *ticket, request, uwvm_ur_psx011_object_size(kind))) return uwvm_ur_psx011_failure(22);
    result = roswasmc_poll(cap, output, sizeof output);
    if(result.error) return result;
    reader = roswasmc_reader_init(output, 8);
    if(!result.has_length || result.length != 8 + wire ||
       !roswasmc_read_integer(&reader, &next_ticket, 8) || !next_ticket ||
       uwvm_ur_psx011_decode(kind, output + 8, wire, request)) { result.error = 22; return result; }
    *ticket = next_ticket;
    return result;
}
static inline roswasmc_result uwvm_ur_psx011_respond(roswasmc_capability const* cap,
                                                  uint64_t ticket, uwvm_ur_psx011_response const* response)
{
    unsigned char input[9];
    roswasmc_writer writer = roswasmc_writer_init(input, sizeof input);
    uint32_t error = uwvm_ur_psx011_cap_status(cap);
    roswasmc_result result;
    if(error) return uwvm_ur_psx011_failure(error);
    if(!ticket || !uwvm_ur_psx011_range(response, sizeof *response) || response->success > 1 ||
       !roswasmc_write_integer(&writer, ticket, 8) || !roswasmc_write_integer(&writer, response->success, 1))
        return uwvm_ur_psx011_failure(22);
    result = roswasmc_service_respond(cap, input, sizeof input, NULL, 0);
    if(!result.error && (!result.has_length || result.length != 0)) result.error = 22;
    return result;
}

#define UWVM_UR_PSX011_SERVICE(name, kind, type) \
static inline uint32_t name##_encode(type const* request, void* out, size_t capacity, size_t* length) \
{ return uwvm_ur_psx011_encode(kind, request, out, capacity, length); } \
static inline uint32_t name##_decode(void const* input, size_t length, type* request) \
{ return uwvm_ur_psx011_decode(kind, input, length, request); } \
static inline roswasmc_result name##_call(roswasmc_capability const* cap, type const* request, uwvm_ur_psx011_response* response) \
{ return uwvm_ur_psx011_call(kind, cap, request, response); } \
static inline roswasmc_result name##_poll(roswasmc_capability const* cap, uint64_t* ticket, type* request) \
{ return uwvm_ur_psx011_poll(kind, cap, ticket, request); } \
static inline roswasmc_result name##_respond(roswasmc_capability const* cap, uint64_t ticket, uwvm_ur_psx011_response const* response) \
{ return uwvm_ur_psx011_respond(cap, ticket, response); }
UWVM_UR_PSX011_SERVICE(uwvm_ur_psx011_set_analog_output, 1, uwvm_ur_psx011_analog_request)
UWVM_UR_PSX011_SERVICE(uwvm_ur_psx011_set_digital_output, 2, uwvm_ur_psx011_digital_request)
UWVM_UR_PSX011_SERVICE(uwvm_ur_psx011_set_speed_fraction, 3, uwvm_ur_psx011_speed_request)
#undef UWVM_UR_PSX011_SERVICE
#undef UWVM_UR_PSX011_ZERO
#endif
