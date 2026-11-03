/* SPDX-License-Identifier: Apache-2.0 */
#if !defined(__wasm__)
#error "These facade contract cases must execute inside a real Wasm Guest"
#endif
#include <universal_robots/transplate/ros2/polyscopex/sdk_v0_11/io.h>
#include <stdio.h>
#include <string.h>

/* This scripted transport lives inside the Guest. It verifies the real public
 * facade's dispatch/framing/error contract; it is not an official ROS peer,
 * runtime permission check, isolation proof or Stage A acceptance. live_client.c
 * uses the real ROS2 imports and never installs these callbacks.
 */
static unsigned checks, failures;
static void check(int condition) { ++checks; if(!condition) ++failures; }
static struct
{
    unsigned char input[18], reply[18];
    size_t input_size, reply_size;
    uint32_t error;
    uint64_t length;
    int write_length;
    unsigned calls, polls, responds, malformed;
} script;
static roswasmc_backend backend;
static roswasmc_context context;
static roswasmc_capability capability;
#define TEST_HANDLE UINT64_C(0x1122334455667788)

static void store64(void* destination, uint64_t value)
{
    unsigned i;
    for(i = 0; i < 8; ++i) ((unsigned char*)destination)[i] = (unsigned char)(value >> (i * 8));
}
static uint32_t deliver(uint64_t output, uint64_t capacity, uint64_t length_out)
{
    size_t size = script.reply_size;
    if(size > capacity) size = (size_t)capacity;
    if(size) memcpy((void*)(uintptr_t)output, script.reply, size);
    if(script.write_length) store64((void*)(uintptr_t)length_out, script.length);
    return script.error;
}
static uint32_t call_import(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 input,
                           uwvm_ros_u64 input_size, uwvm_ros_u64 output,
                           uwvm_ros_u64 capacity, uwvm_ros_u64 length_out)
{
    ++script.calls;
    if(handle != TEST_HANDLE || memory || input_size != script.input_size ||
       (input_size && memcmp((void const*)(uintptr_t)input, script.input, (size_t)input_size)) || capacity != 1)
        ++script.malformed;
    return deliver(output, capacity, length_out);
}
static uint32_t respond_import(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 input,
                              uwvm_ros_u64 input_size, uwvm_ros_u64 output,
                              uwvm_ros_u64 capacity, uwvm_ros_u64 length_out)
{
    ++script.responds;
    if(handle != TEST_HANDLE || memory || input_size != script.input_size ||
       (input_size && memcmp((void const*)(uintptr_t)input, script.input, (size_t)input_size)) || output || capacity)
        ++script.malformed;
    return deliver(output, capacity, length_out);
}
static uint32_t poll_import(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 output,
                           uwvm_ros_u64 capacity, uwvm_ros_u64 length_out)
{
    ++script.polls;
    if(handle != TEST_HANDLE || memory || capacity != 18) ++script.malformed;
    return deliver(output, capacity, length_out);
}
static void reset(void)
{
    memset(&script, 0, sizeof script);
    memset(&backend, 0, sizeof backend);
    backend.version = 2;
    backend.request[ROSWASMC_SERVICE_CALL] = call_import;
    backend.request[ROSWASMC_SERVICE_RESPOND] = respond_import;
    backend.poll = poll_import;
    context.backend = &backend;
    capability.context = &context; capability.handle = TEST_HANDLE;
    script.write_length = 1;
}
static void expect_request(unsigned char const* bytes, size_t size)
{
    memcpy(script.input, bytes, size); script.input_size = size;
    script.reply[0] = 1; script.reply_size = 1; script.length = 1;
}

static void values(void)
{
    uwvm_ur_psx011_analog_request analog = {0}, decoded = {0};
    uwvm_ur_psx011_digital_request digital = {0}, digital_copy = {0};
    uwvm_ur_psx011_speed_request speed = {0}, speed_copy = {0};
    unsigned char wire[10] = {0}; size_t size = 0;
    unsigned char const volts[10] = {1, 1, 0, 0, 0, 0, 0, 0, 0x24, 0x40};
    unsigned char const half[4] = {0, 0, 0, 0x3f};
    check(uwvm_ur_psx011_make_analog(1, UWVM_UR_PSX011_OUTPUT_VOLTAGE, 10, &analog) == 0);
    check(uwvm_ur_psx011_set_analog_output_encode(&analog, wire, sizeof wire, &size) == 0 &&
          size == 10 && !memcmp(wire, volts, 10));
    check(uwvm_ur_psx011_set_analog_output_decode(wire, size, &decoded) == 0 &&
          decoded.pin == 1 && decoded.output_type == 1 && decoded.value == 10);
    check(uwvm_ur_psx011_make_analog(0, UWVM_UR_PSX011_OUTPUT_CURRENT, 0.002, &analog) == 0 && analog.value == 0.002);
    check(uwvm_ur_psx011_make_analog(1, UWVM_UR_PSX011_OUTPUT_CURRENT, 0.020, &analog) == 0 && analog.value == 0.020);
    check(uwvm_ur_psx011_make_digital(7, UWVM_UR_PSX011_STATE_ON, &digital) == 0);
    check(uwvm_ur_psx011_set_digital_output_encode(&digital, wire, sizeof wire, &size) == 0 &&
          size == 2 && wire[0] == 7 && wire[1] == 1);
    check(uwvm_ur_psx011_set_digital_output_decode(wire, size, &digital_copy) == 0 &&
          digital_copy.pin == 7 && digital_copy.state == 1);
    check(uwvm_ur_psx011_make_speed(0.5f, &speed) == 0);
    check(uwvm_ur_psx011_set_speed_fraction_encode(&speed, wire, sizeof wire, &size) == 0 &&
          size == 4 && !memcmp(wire, half, 4));
    check(uwvm_ur_psx011_set_speed_fraction_decode(wire, size, &speed_copy) == 0 && speed_copy.value == 0.5f);
    check(uwvm_ur_psx011_make_speed(0, &speed) == 0 && speed.value == 0);
    check(uwvm_ur_psx011_make_speed(1, &speed) == 0 && speed.value == 1);
    check(uwvm_ur_psx011_make_digital(0, UWVM_UR_PSX011_STATE_OFF, &digital) == 0 && digital.state == 0);
}

static void invalid(void)
{
    uwvm_ur_psx011_analog_request analog, old_analog;
    uwvm_ur_psx011_digital_request digital, old_digital;
    uwvm_ur_psx011_speed_request speed, old_speed;
    _Alignas(size_t) unsigned char wire[16];
    unsigned char old_wire[16], malformed[10] = {0}; size_t size = 71;
    memset(&analog, 0x5a, sizeof analog); memcpy(&old_analog, &analog, sizeof analog);
    memset(&digital, 0x6b, sizeof digital); memcpy(&old_digital, &digital, sizeof digital);
    memset(&speed, 0x7c, sizeof speed); memcpy(&old_speed, &speed, sizeof speed);
    memset(wire, 0x2d, sizeof wire); memcpy(old_wire, wire, sizeof wire);
#define BAD_ANALOG(pin, mode, value) check(uwvm_ur_psx011_make_analog(pin, mode, value, &analog) == 22 && !memcmp(&analog, &old_analog, sizeof analog))
    BAD_ANALOG(-1, 0, 0.010);
    BAD_ANALOG(2, 0, 0.010);
    BAD_ANALOG(0, 2, 0.010);
    BAD_ANALOG(0, 0, 0.001);
    BAD_ANALOG(0, 0, 0.021);
    BAD_ANALOG(0, 1, -0.001);
    BAD_ANALOG(0, 1, 10.001);
    BAD_ANALOG(0, 1, NAN);
    BAD_ANALOG(0, 1, INFINITY);
#undef BAD_ANALOG
    check(uwvm_ur_psx011_make_analog(0, 1, 1, NULL) == 22);
    check(uwvm_ur_psx011_make_digital(-1, 0, &digital) == 22 && !memcmp(&digital, &old_digital, sizeof digital));
    check(uwvm_ur_psx011_make_digital(8, 0, &digital) == 22 && !memcmp(&digital, &old_digital, sizeof digital));
    check(uwvm_ur_psx011_make_digital(0, 2, &digital) == 22 && !memcmp(&digital, &old_digital, sizeof digital));
    check(uwvm_ur_psx011_make_digital(0, 1, NULL) == 22);
    check(uwvm_ur_psx011_make_speed(NAN, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
    check(uwvm_ur_psx011_make_speed(INFINITY, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
    check(uwvm_ur_psx011_make_speed(-0.1f, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
    check(uwvm_ur_psx011_make_speed(1.1f, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
    check(uwvm_ur_psx011_make_speed(0.5f, NULL) == 22);
    (void)uwvm_ur_psx011_make_analog(0, 1, 1, &analog);
    check(uwvm_ur_psx011_set_analog_output_encode(&analog, wire, 9, &size) == 22 &&
          size == 71 && !memcmp(wire, old_wire, sizeof wire));
    check(uwvm_ur_psx011_set_analog_output_encode(&analog, NULL, 10, &size) == 22 && size == 71);
    check(uwvm_ur_psx011_set_analog_output_encode(&analog, wire, 10, NULL) == 22 && !memcmp(wire, old_wire, sizeof wire));
    check(uwvm_ur_psx011_set_analog_output_encode(&analog, &analog, sizeof analog, &size) == 22 && size == 71 && analog.value == 1);
    check(uwvm_ur_psx011_set_analog_output_encode(&analog, wire, 10, (size_t*)(void*)wire) == 22 &&
          !memcmp(wire, old_wire, sizeof wire));
    check(uwvm_ur_psx011_set_analog_output_encode(&analog, (void*)(uintptr_t)(UINTPTR_MAX - 1), 10, &size) == 22 && size == 71);
    memcpy(&analog, &old_analog, sizeof analog);
    check(uwvm_ur_psx011_set_analog_output_decode(malformed, 9, &analog) == 22 && !memcmp(&analog, &old_analog, sizeof analog));
    malformed[1] = 2;
    check(uwvm_ur_psx011_set_analog_output_decode(malformed, 10, &analog) == 22 && !memcmp(&analog, &old_analog, sizeof analog));
    malformed[0] = 0xff; malformed[1] = 0;
    check(uwvm_ur_psx011_set_analog_output_decode(malformed, 10, &analog) == 22 && !memcmp(&analog, &old_analog, sizeof analog));
    malformed[0] = 0; malformed[1] = 1; malformed[8] = 0xf0; malformed[9] = 0x7f;
    check(uwvm_ur_psx011_set_analog_output_decode(malformed, 10, &analog) == 22 && !memcmp(&analog, &old_analog, sizeof analog));
    malformed[0] = 7; malformed[1] = 2;
    check(uwvm_ur_psx011_set_digital_output_decode(malformed, 2, &digital) == 22 && !memcmp(&digital, &old_digital, sizeof digital));
    malformed[0] = 0; malformed[1] = 0; malformed[2] = 0x80; malformed[3] = 0x7f;
    check(uwvm_ur_psx011_set_speed_fraction_decode(malformed, 4, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
    check(uwvm_ur_psx011_set_speed_fraction_decode(NULL, 4, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
    check(uwvm_ur_psx011_set_speed_fraction_decode(&speed, 4, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
    check(uwvm_ur_psx011_set_speed_fraction_decode(malformed, 5, &speed) == 22 && !memcmp(&speed, &old_speed, sizeof speed));
}

static void client(void)
{
    uwvm_ur_psx011_analog_request analog = {1, 1, 10};
    uwvm_ur_psx011_digital_request digital = {7, 1};
    uwvm_ur_psx011_speed_request speed = {0.5f};
    uwvm_ur_psx011_response response = {0x5a}; roswasmc_result result;
    unsigned char const volts[10] = {1, 1, 0, 0, 0, 0, 0, 0, 0x24, 0x40};
    unsigned char const bits[2] = {7, 1}, half[4] = {0, 0, 0, 0x3f};
    reset(); expect_request(volts, 10);
    result = uwvm_ur_psx011_set_analog_output_call(&capability, &analog, &response);
    check(!result.error && result.has_length && result.length == 1 && response.success == 1 && script.calls == 1 && !script.malformed);
    reset(); expect_request(bits, 2); script.reply[0] = 0;
    result = uwvm_ur_psx011_set_digital_output_call(&capability, &digital, &response);
    check(!result.error && response.success == 0 && script.calls == 1 && !script.malformed);
    reset(); expect_request(half, 4);
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(!result.error && response.success == 1 && script.calls == 1 && !script.malformed);
    response.success = 0x5a; script.reply[0] = 2;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 22 && response.success == 0x5a && script.calls == 2);
    script.reply[0] = 1; script.length = 0;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 22 && response.success == 0x5a && script.calls == 3);
    script.length = 2;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 22 && response.success == 0x5a && script.calls == 4);
    script.write_length = 0;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 22 && !result.has_length && response.success == 0x5a && script.calls == 5);
    script.error = 13;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 13 && response.success == 0x5a && script.calls == 6);
    script.error = 110;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 110 && response.success == 0x5a && script.calls == 7);
    script.error = 90; script.write_length = 1; script.length = 17;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 90 && result.has_length && result.length == 17 && response.success == 0x5a && script.calls == 8);
    script.write_length = 0;
    result = uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response);
    check(result.error == 90 && !result.has_length && response.success == 0x5a && script.calls == 9);
    backend.request[ROSWASMC_SERVICE_CALL] = NULL;
    check(uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response).error == 95 && script.calls == 9 && response.success == 0x5a);
    backend.version = 1;
    check(uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response).error == 95 && script.calls == 9);
    backend.version = 2; capability.handle = 0;
    check(uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response).error == 9 && script.calls == 9);
    capability.handle = TEST_HANDLE;
    check(uwvm_ur_psx011_set_speed_fraction_call(NULL, &speed, &response).error == 9 && script.calls == 9);
    check(uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, NULL).error == 22 && script.calls == 9);
    check(uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, (uwvm_ur_psx011_response*)(void*)&speed).error == 22 && speed.value == 0.5f && script.calls == 9);
    check(uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, (uwvm_ur_psx011_response*)(void*)&capability).error == 22 && capability.handle == TEST_HANDLE && script.calls == 9);
    speed.value = NAN;
    check(uwvm_ur_psx011_set_speed_fraction_call(&capability, &speed, &response).error == 22 && response.success == 0x5a && script.calls == 9);
    check(script.polls == 0 && script.responds == 0 && !script.malformed);
}

static void server(void)
{
    uwvm_ur_psx011_analog_request analog = {0};
    uwvm_ur_psx011_digital_request digital = {0};
    _Alignas(uint64_t) uwvm_ur_psx011_speed_request speed = {0.25f};
    uwvm_ur_psx011_response response = {0}; uint64_t ticket = 99;
    roswasmc_result result;
    unsigned char const volts[10] = {1, 1, 0, 0, 0, 0, 0, 0, 0x24, 0x40};
    reset(); store64(script.reply, 7); memcpy(script.reply + 8, volts, 10);
    script.reply_size = 18; script.length = 18;
    result = uwvm_ur_psx011_set_analog_output_poll(&capability, &ticket, &analog);
    check(!result.error && ticket == 7 && analog.pin == 1 && analog.output_type == 1 && analog.value == 10 && script.polls == 1 && !script.malformed);
    store64(script.reply, 8); script.reply[8] = 7; script.reply[9] = 1; script.reply_size = 10; script.length = 10;
    result = uwvm_ur_psx011_set_digital_output_poll(&capability, &ticket, &digital);
    check(!result.error && ticket == 8 && digital.pin == 7 && digital.state == 1 && script.polls == 2);
    store64(script.reply, 9); script.reply[8] = 0; script.reply[9] = 0; script.reply[10] = 0; script.reply[11] = 0x3f;
    script.reply_size = 12; script.length = 12;
    result = uwvm_ur_psx011_set_speed_fraction_poll(&capability, &ticket, &speed);
    check(!result.error && ticket == 9 && speed.value == 0.5f && script.polls == 3);
    script.error = 11;
    result = uwvm_ur_psx011_set_speed_fraction_poll(&capability, &ticket, &speed);
    check(result.error == 11 && ticket == 9 && speed.value == 0.5f && script.polls == 4);
    script.error = 0; store64(script.reply, 0);
    result = uwvm_ur_psx011_set_speed_fraction_poll(&capability, &ticket, &speed);
    check(result.error == 22 && ticket == 9 && speed.value == 0.5f && script.polls == 5);
    store64(script.reply, 10); script.length = 11;
    result = uwvm_ur_psx011_set_speed_fraction_poll(&capability, &ticket, &speed);
    check(result.error == 22 && ticket == 9 && speed.value == 0.5f && script.polls == 6);
    script.length = 12; script.reply[10] = 0x80; script.reply[11] = 0x7f;
    result = uwvm_ur_psx011_set_speed_fraction_poll(&capability, &ticket, &speed);
    check(result.error == 22 && ticket == 9 && speed.value == 0.5f && script.polls == 7);
    script.error = 13;
    result = uwvm_ur_psx011_set_speed_fraction_poll(&capability, &ticket, &speed);
    check(result.error == 13 && ticket == 9 && speed.value == 0.5f && script.polls == 8);
    check(uwvm_ur_psx011_set_speed_fraction_poll(&capability, (uint64_t*)(void*)&speed, &speed).error == 22 && speed.value == 0.5f && script.polls == 8);
    check(uwvm_ur_psx011_set_speed_fraction_poll(&capability, NULL, &speed).error == 22 && script.polls == 8);
    backend.poll = NULL;
    check(uwvm_ur_psx011_set_speed_fraction_poll(&capability, &ticket, &speed).error == 95 && script.polls == 8);
    script.error = 0; script.length = 0; script.reply_size = 0; script.input_size = 9;
    store64(script.input, 9); script.input[8] = 0;
    result = uwvm_ur_psx011_set_analog_output_respond(&capability, 9, &response);
    check(!result.error && result.has_length && !result.length && script.responds == 1 && !script.malformed);
    response.success = 1; script.input[8] = 1;
    result = uwvm_ur_psx011_set_digital_output_respond(&capability, 9, &response);
    check(!result.error && script.responds == 2 && !script.malformed);
    result = uwvm_ur_psx011_set_speed_fraction_respond(&capability, 9, &response);
    check(!result.error && script.responds == 3 && !script.malformed);
    script.error = 110;
    check(uwvm_ur_psx011_set_speed_fraction_respond(&capability, 9, &response).error == 110 && script.responds == 4);
    script.error = 0; script.length = 1;
    check(uwvm_ur_psx011_set_speed_fraction_respond(&capability, 9, &response).error == 22 && script.responds == 5);
    check(uwvm_ur_psx011_set_speed_fraction_respond(&capability, 0, &response).error == 22 && script.responds == 5);
    response.success = 2;
    check(uwvm_ur_psx011_set_speed_fraction_respond(&capability, 9, &response).error == 22 && script.responds == 5);
    check(uwvm_ur_psx011_set_speed_fraction_respond(&capability, 9, NULL).error == 22 && script.responds == 5);
    check(script.calls == 0 && !script.malformed);
}

int main(int argc, char** argv)
{
    if(argc != 2) return 22;
    if(!strcmp(argv[1], "values")) values();
    else if(!strcmp(argv[1], "invalid")) invalid();
    else if(!strcmp(argv[1], "client")) client();
    else if(!strcmp(argv[1], "server")) server();
    else return 22;
    printf("{\"case\":\"%s\",\"checks\":%u,\"failures\":%u}\n", argv[1], checks, failures);
    return failures ? 1 : 0;
}
