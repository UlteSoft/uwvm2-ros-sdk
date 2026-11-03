/* SPDX-License-Identifier: Apache-2.0 */
/* Real parameter requests and result assertions execute in this Wasm command. */
#include <platform/abb/transplate/ros2/c/parameter_bool_callback.h>
#include <platform/fanuc/transplate/ros2/c/parameter_bool_callback.h>
#include <platform/yaskawa/transplate/ros2/c/parameter_bool_callback.h>

#define WASI(name) __attribute__((import_module("wasi_snapshot_preview1"), import_name(name)))
WASI("args_sizes_get") extern uwvm_ros_u32 wasi_args_sizes_get(uwvm_ros_u32*, uwvm_ros_u32*);
WASI("args_get") extern uwvm_ros_u32 wasi_args_get(char**, char*);
WASI("fd_write") extern uwvm_ros_u32 wasi_fd_write(uwvm_ros_u32, void const*, uwvm_ros_u32, uwvm_ros_u32*);
WASI("fd_read") extern uwvm_ros_u32 wasi_fd_read(uwvm_ros_u32, void const*, uwvm_ros_u32, uwvm_ros_u32*);
WASI("proc_exit") __attribute__((noreturn)) extern void wasi_proc_exit(uwvm_ros_u32);

static char const* selected;
static uwvm_ros_u64 challenge;
static uwvm_ros_u32 assertions;
static uwvm_ros_u32 calls;
static uwvm_ros_u32 query_callbacks;
static uwvm_ros_u32 set_callbacks;

static uwvm_ros_u32 length(char const* text)
{
    uwvm_ros_u32 size = 0;
    while(text[size]) { ++size; }
    return size;
}

static int equal(char const* left, char const* right)
{
    while(*left && *left == *right) { ++left; ++right; }
    return *left == *right;
}

static char* append(char* output, char const* text)
{
    while(*text) { *output++ = *text++; }
    return output;
}

static char* number(char* output, uwvm_ros_u64 value)
{
    char reversed[20];
    unsigned used = 0;
    do { reversed[used++] = (char)('0' + value % 10); value /= 10; } while(value);
    while(used) { *output++ = reversed[--used]; }
    return output;
}

static void event(char const* phase, char const* status, unsigned failure)
{
    char text[384];
    char* end = append(text, "SDK02_PARAMETER_CASE:{\"format\":\"sdk02-official-parameter-guest-event-v1\",\"id\":\"");
    struct { void const* bytes; uwvm_ros_u32 count; } vector;
    uwvm_ros_u32 written = 0;
    end = append(end, selected);
    end = append(end, "\",\"phase\":\""); end = append(end, phase);
    end = append(end, "\",\"status\":\""); end = append(end, status);
    end = append(end, "\",\"challenge\":"); end = number(end, challenge);
    end = append(end, ",\"assertions\":"); end = number(end, assertions);
    end = append(end, ",\"parameter_operations\":"); end = number(end, calls);
    end = append(end, ",\"query_callbacks\":"); end = number(end, query_callbacks);
    end = append(end, ",\"set_callbacks\":"); end = number(end, set_callbacks);
    end = append(end, ",\"failure\":"); end = number(end, failure);
    end = append(end, "}\n");
    vector.bytes = text; vector.count = (uwvm_ros_u32)(end - text);
    if(wasi_fd_write(1, &vector, 1, &written) || written != vector.count) { wasi_proc_exit(96); }
}

static void check(int condition, unsigned failure)
{
    ++assertions;
    if(!condition) { event("finish", "FAIL", failure); wasi_proc_exit(1); }
}

static void fill(unsigned char* output, unsigned size, unsigned char value)
{
    unsigned index;
    for(index = 0; index < size; ++index) { output[index] = value; }
}

static int unchanged(unsigned char const* input, unsigned size, unsigned char value)
{
    unsigned index;
    for(index = 0; index < size; ++index) { if(input[index] != value) { return 0; } }
    return 1;
}

static uwvm_ros_u64 open_alias(char const* alias)
{
    unsigned char handle[8];
    uwvm_ros_u32 error;
    fill(handle, 8, 0xa5);
    error = uwvm_ros2_capability_open(0, uwvm_ros_address(alias), length(alias), uwvm_ros_address(handle));
    check(error == UWVM_ROS_SUCCESS, 10);
    check(uwvm_ros_load_u64(handle) != 0, 11);
    return uwvm_ros_load_u64(handle);
}

struct callback_receipt
{
    uwvm_ros_u64 challenge;
    unsigned seen;
    unsigned char value;
};

static void on_queried_bool(void* userdata, unsigned char value)
{
    struct callback_receipt* receipt = (struct callback_receipt*)userdata;
    check(receipt != 0 && receipt->challenge == challenge, 60);
    check(receipt->seen == 0 && value <= 1, 61);
    receipt->seen = 1;
    receipt->value = value;
    ++query_callbacks;
}

static void on_set_acknowledged(void* userdata)
{
    struct callback_receipt* receipt = (struct callback_receipt*)userdata;
    check(receipt != 0 && receipt->challenge == challenge, 70);
    check(receipt->seen == 0, 71);
    receipt->seen = 1;
    ++set_callbacks;
}

static void read_boolean(uwvm_ros_u64 handle, unsigned expected, uwvm_ros_u32 expected_error)
{
    struct callback_receipt receipt;
    uwvm_ros_u32 error;
    receipt.challenge = challenge; receipt.seen = 0; receipt.value = 0xa5;
    ++calls;
    error = uwvm_abb_ros2_parameter_bool_get_with_callback(handle, on_queried_bool, &receipt);
    check(error == expected_error, 20);
    if(expected_error == UWVM_ROS_SUCCESS)
    {
        check(receipt.seen == 1 && receipt.value == expected && expected <= 1, 22);
    }
    else { check(receipt.seen == 0 && receipt.value == 0xa5, 24); }
}

static void write_boolean(uwvm_ros_u64 handle, unsigned value, uwvm_ros_u32 expected_error)
{
    struct callback_receipt receipt;
    uwvm_ros_u32 error;
    receipt.challenge = challenge; receipt.seen = 0; receipt.value = 0xa5;
    check(value <= 1, 25);
    ++calls;
    error = uwvm_abb_ros2_parameter_bool_set_with_callback(handle, value, on_set_acknowledged, &receipt);
    check(error == expected_error, 26);
    check(receipt.seen == (expected_error == UWVM_ROS_SUCCESS ? 1u : 0u), 27);
    /* An acknowledgement must never fabricate a queried remote value. */
    check(receipt.value == 0xa5, 28);
}

void _start(void)
{
    char argument_bytes[256];
    char* arguments[8];
    uwvm_ros_u32 count = 0, bytes = 0, index;
    uwvm_ros_u64 reader, writer;
    char credit = 0;
    uwvm_ros_u32 received = 0;
    struct { void* bytes; uwvm_ros_u32 count; } input;
    if(wasi_args_sizes_get(&count, &bytes) || count != 3 || bytes > sizeof argument_bytes
       || wasi_args_get(arguments, argument_bytes)) { wasi_proc_exit(64); }
    selected = arguments[1];
    if(!equal(selected, "positive") && !equal(selected, "denied")
       && !equal(selected, "stale") && !equal(selected, "timeout")) { wasi_proc_exit(64); }
    for(index = 0; arguments[2][index]; ++index)
    {
        unsigned digit = (unsigned char)arguments[2][index] - (unsigned)'0';
        if(index >= 6 || digit > 9) { wasi_proc_exit(64); }
        challenge = challenge * 10 + digit;
    }
    if(!index || !challenge || challenge > 999999) { wasi_proc_exit(64); }
    event("start", "RUNNING", 0);
    input.bytes = &credit; input.count = 1;
    check(wasi_fd_read(0, &input, 1, &received) == 0 && received == 1 && credit == 'R', 2);
    check(uwvm_ros2_abi_version() == 1, 1);
    /* Local invalid arguments must be refused before invoking the host. */
    check(uwvm_abb_ros2_parameter_bool_get(0, 0) == UWVM_ROS_INVALID, 3);
    check(uwvm_abb_ros2_parameter_bool_set(0, 2) == UWVM_ROS_INVALID, 4);
    check(uwvm_abb_ros2_parameter_bool_get_with_callback(0, 0, 0) == UWVM_ROS_INVALID, 5);
    check(uwvm_abb_ros2_parameter_bool_set_with_callback(0, 1, 0, 0) == UWVM_ROS_INVALID, 6);
    check(uwvm_abb_ros2_parameter_bool_set_with_callback(0, 2, on_set_acknowledged, 0)
          == UWVM_ROS_INVALID, 7);
    check(query_callbacks == 0 && set_callbacks == 0, 8);
    if(equal(selected, "denied"))
    {
        static char const alias[] = "ungranted_parameter";
        unsigned char output[8];
        fill(output, 8, 0xa5);
        check(uwvm_ros2_capability_open(0, uwvm_ros_address(alias), sizeof alias - 1,
              uwvm_ros_address(output)) == UWVM_ROS_DENIED, 30);
        check(unchanged(output, 8, 0xa5), 31);
    }
    else if(equal(selected, "stale"))
    {
        writer = open_alias("parameter_write");
        check(uwvm_ros2_capability_close(writer) == UWVM_ROS_SUCCESS, 40);
        write_boolean(writer, 1, UWVM_ROS_BAD_HANDLE);
    }
    else if(equal(selected, "timeout"))
    {
        reader = open_alias("absent_parameter");
        read_boolean(reader, 0, UWVM_ROS_TIMEOUT);
        check(uwvm_ros2_capability_close(reader) == UWVM_ROS_SUCCESS, 41);
    }
    else
    {
        reader = open_alias("parameter_read");
        writer = open_alias("parameter_write");
        /* The original official peer starts with a false static bool parameter.
         * These writes and every returned value are processed in this Wasm.
         * Observer evidence is never passed back as guest input. */
        read_boolean(reader, 0, UWVM_ROS_SUCCESS);
        write_boolean(writer, 1, UWVM_ROS_SUCCESS);
        read_boolean(reader, 1, UWVM_ROS_SUCCESS);
        write_boolean(writer, 0, UWVM_ROS_SUCCESS);
        read_boolean(reader, 0, UWVM_ROS_SUCCESS);
        check(uwvm_ros2_capability_close(writer) == UWVM_ROS_SUCCESS, 50);
        check(uwvm_ros2_capability_close(reader) == UWVM_ROS_SUCCESS, 51);
    }
    check(query_callbacks == (equal(selected, "positive") ? 3u : 0u), 80);
    check(set_callbacks == (equal(selected, "positive") ? 2u : 0u), 81);
    event("finish", "PASS", 0);
    wasi_proc_exit(0);
}
