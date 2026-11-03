/* SPDX-License-Identifier: Apache-2.0 */
#if !defined(__wasm__)
#error "Run these request assertions inside the actual Wasm VM"
#endif
#include <universal_robots/c/request_builders.h>
#include <stdio.h>
#include <string.h>

static unsigned checks, failures;
static void check(int condition) { ++checks; if(!condition) ++failures; }

#if defined(UWVM_UR_POLYSCOPEX)
#define ANALOG_ENCODE roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_encode
static void construct(void)
{
    uwvm_ur_analog_value values[2] = {{0, 0, 0.5f}, {1, 1, 0.25f}};
    uwvm_ur_digital_value bits[2] = {{0, 1}, {1, 0}};
    uwvm_ur_analog_request analog = UWVM_VENDOR_ZERO_INITIALIZER;
    uwvm_ur_digital_request digital = UWVM_VENDOR_ZERO_INITIALIZER;
    unsigned char wire[100] = {0}; size_t length = 0;
    check(uwvm_ur_make_analog_outputs(values, 2, &analog) == 0);
    check(analog.data.size == 2 && analog.data.data[0].value == 0.5f && analog.data.data[1].domain == 1);
    check(uwvm_ur_make_digital_outputs(bits, 2, &digital) == 0);
    check(digital.data.size == 2 && digital.data.data[0].state == 1 && digital.data.data[1].pin == 1);
    check(ANALOG_ENCODE(&analog, wire, sizeof wire, &length) == 0 && length == 16 &&
          wire[0] == 2 && wire[4] == 0 && wire[5] == 0 && wire[10] == 1 && wire[11] == 1);
}
static void invalid(void)
{
    uwvm_ur_analog_value value = {0, 0, NAN};
    uwvm_ur_digital_value bit = {0, 2};
    uwvm_ur_analog_request analog, original;
    uwvm_ur_digital_request digital, original_bit;
    memset(&analog, 0x5a, sizeof analog); memcpy(&original, &analog, sizeof analog);
    memset(&digital, 0x6b, sizeof digital); memcpy(&original_bit, &digital, sizeof digital);
    check(uwvm_ur_make_analog_outputs(&value, 1, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    value.value = 0.5f; value.domain = 2;
    check(uwvm_ur_make_analog_outputs(&value, 1, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    check(uwvm_ur_make_analog_outputs(&value, SIZE_MAX, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    check(uwvm_ur_make_analog_outputs(NULL, 1, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    check(uwvm_ur_make_digital_outputs(&bit, 1, &digital) == 22 && !memcmp(&digital, &original_bit, sizeof digital));
    check(uwvm_ur_make_digital_outputs(NULL, 1, &digital) == 22 && !memcmp(&digital, &original_bit, sizeof digital));
    check(uwvm_ur_make_analog_outputs(&value, 1, NULL) == 22);
    check(uwvm_ur_make_digital_outputs(&bit, 1, NULL) == 22);
}
static void alias(void)
{
    uwvm_ur_analog_request value = UWVM_VENDOR_ZERO_INITIALIZER;
    value.data.size = 2;
    value.data.data[0] = (uwvm_ur_analog_value){1, 0, 0.5f};
    value.data.data[1] = (uwvm_ur_analog_value){1, 1, 0.25f};
    check(uwvm_ur_make_analog_outputs(value.data.data, 2, &value) == 0);
    check(value.data.size == 2 && value.data.data[0].domain == 0 && value.data.data[1].domain == 1 &&
          value.data.data[0].pin == 1 && value.data.data[1].pin == 1 && value.data.data[1].value == 0.25f);
    check(uwvm_ur_make_analog_outputs(NULL, 0, &value) == 0);
    check(value.data.size == 0 && value.data.data[0].pin == 0 && value.data.data[0].value == 0);
}
#else
#if defined(UWVM_UR_ROS1)
#define ANALOG_ENCODE roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest_encode
#else
#define ANALOG_ENCODE roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request_encode
#endif
static void construct(void)
{
    uwvm_ur_analog_request analog = UWVM_VENDOR_ZERO_INITIALIZER;
    uwvm_ur_set_io_request io = UWVM_VENDOR_ZERO_INITIALIZER;
    unsigned char wire[6] = {0}; size_t length = 0;
    check(uwvm_ur_make_analog_output(1, 0, 0.5f, &analog) == 0);
    check(analog.data.pin == 1 && analog.data.domain == 0 && analog.data.state == 0.5f);
    check(uwvm_ur_make_set_io(4, -1, 24.0f, &io) == 0);
    check(io.fun == 4 && io.pin == -1 && io.state == 24.0f);
    check(ANALOG_ENCODE(&analog, wire, sizeof wire, &length) == 0 && length == 6 &&
          wire[0] == 1 && wire[1] == 0 && wire[2] == 0 && wire[3] == 0 && wire[4] == 0 && wire[5] == 0x3f);
}
static void invalid(void)
{
    uwvm_ur_analog_request analog, original;
    uwvm_ur_set_io_request io, original_io;
    memset(&analog, 0x5a, sizeof analog); memcpy(&original, &analog, sizeof analog);
    memset(&io, 0x6b, sizeof io); memcpy(&original_io, &io, sizeof io);
    check(uwvm_ur_make_analog_output(0, 0, NAN, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    check(uwvm_ur_make_analog_output(2, 0, 0.5f, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    check(uwvm_ur_make_analog_output(0, 2, 0.5f, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    check(uwvm_ur_make_analog_output(0, 0, -0.5f, &analog) == 22 && !memcmp(&analog, &original, sizeof analog));
    check(uwvm_ur_make_set_io(0, 0, 1, &io) == 22 && !memcmp(&io, &original_io, sizeof io));
    check(uwvm_ur_make_set_io(1, 128, 1, &io) == 22 && !memcmp(&io, &original_io, sizeof io));
    check(uwvm_ur_make_set_io(1, 0, NAN, &io) == 22 && !memcmp(&io, &original_io, sizeof io));
    check(uwvm_ur_make_set_io(4, 0, 5, &io) == 22 && !memcmp(&io, &original_io, sizeof io));
    check(uwvm_ur_make_analog_output(0, 0, 0.5f, NULL) == 22);
    check(uwvm_ur_make_set_io(1, 0, 1, NULL) == 22);
}
static void alias(void)
{
    uwvm_ur_analog_request analog = UWVM_VENDOR_ZERO_INITIALIZER;
    check(uwvm_ur_make_analog_output(1, 0, 0.5f, &analog) == 0);
    check(uwvm_ur_make_analog_output(analog.data.pin, analog.data.domain, analog.data.state, &analog) == 0 &&
          analog.data.pin == 1 && analog.data.state == 0.5f);
    check(uwvm_ur_make_analog_output(0, 0, 0, &analog) == 0 && analog.data.state == 0);
    check(uwvm_ur_make_analog_output(1, 1, 1, &analog) == 0 && analog.data.state == 1);
}
#endif

int main(int argc, char** argv)
{
    if(argc != 2) return 22;
    if(!strcmp(argv[1], "construct")) construct();
    else if(!strcmp(argv[1], "invalid")) invalid();
    else if(!strcmp(argv[1], "alias")) alias();
    else return 22;
    printf("{\"case\":\"%s\",\"checks\":%u,\"failures\":%u}\n", argv[1], checks, failures);
    return failures ? 1 : 0;
}
