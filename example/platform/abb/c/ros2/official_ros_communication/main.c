/* SPDX-License-Identifier: Apache-2.0 */
/* Real service requests and result assertions execute in this Wasm command. */
#include <platform/ros2/c/roswasm/abi/ros2.h>

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
    char* end = append(text, "SDK02_ROS_CASE:{\"format\":\"sdk02-official-ros-guest-event-v1\",\"id\":\"");
    struct { void const* bytes; uwvm_ros_u32 count; } vector;
    uwvm_ros_u32 written = 0;
    end = append(end, selected);
    end = append(end, "\",\"phase\":\""); end = append(end, phase);
    end = append(end, "\",\"status\":\""); end = append(end, status);
    end = append(end, "\",\"challenge\":"); end = number(end, challenge);
    end = append(end, ",\"assertions\":"); end = number(end, assertions);
    end = append(end, ",\"service_calls\":"); end = number(end, calls);
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

static void store_u64(unsigned char* output, uwvm_ros_u64 value)
{
    unsigned index;
    for(index = 0; index < 8; ++index) { output[index] = (unsigned char)(value >> (index * 8)); }
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

static uwvm_ros_u64 call(uwvm_ros_u64 handle, uwvm_ros_u64 a, uwvm_ros_u64 b,
                          uwvm_ros_u32 expected_error)
{
    unsigned char request[16], response[8], used[8];
    uwvm_ros_u32 error;
    store_u64(request, a); store_u64(request + 8, b);
    fill(response, 8, 0xa5); fill(used, 8, 0xa5);
    ++calls;
    error = uwvm_ros2_service_call(handle, 0, uwvm_ros_address(request), 16,
        uwvm_ros_address(response), 8, uwvm_ros_address(used));
    check(error == expected_error, 20);
    if(expected_error == UWVM_ROS_SUCCESS)
    {
        check(uwvm_ros_load_u64(used) == 8, 21);
        check(uwvm_ros_load_u64(response) == a + b, 22);
        return uwvm_ros_load_u64(response);
    }
    check(unchanged(response, 8, 0xa5) && unchanged(used, 8, 0xa5), 23);
    return 0;
}

void _start(void)
{
    char argument_bytes[256];
    char* arguments[8];
    uwvm_ros_u32 count = 0, bytes = 0, index;
    uwvm_ros_u64 handle, first, second;
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
    if(equal(selected, "denied"))
    {
        static char const alias[] = "ungranted_service";
        unsigned char output[8];
        fill(output, 8, 0xa5);
        check(uwvm_ros2_capability_open(0, uwvm_ros_address(alias), sizeof alias - 1,
              uwvm_ros_address(output)) == UWVM_ROS_DENIED, 30);
        check(unchanged(output, 8, 0xa5), 31);
    }
    else
    {
        handle = open_alias(equal(selected, "timeout") ? "absent_service" : "official_service");
        if(equal(selected, "stale"))
        {
            check(uwvm_ros2_capability_close(handle) == UWVM_ROS_SUCCESS, 40);
            (void)call(handle, challenge, 17, UWVM_ROS_BAD_HANDLE);
        }
        else if(equal(selected, "timeout"))
        {
            (void)call(handle, challenge, 17, UWVM_ROS_TIMEOUT);
            check(uwvm_ros2_capability_close(handle) == UWVM_ROS_SUCCESS, 41);
        }
        else
        {
            first = call(handle, challenge, 17, UWVM_ROS_SUCCESS);
            second = call(handle, challenge + 97, 29, UWVM_ROS_SUCCESS);
            check(first != second, 50);
            check(uwvm_ros2_capability_close(handle) == UWVM_ROS_SUCCESS, 51);
        }
    }
    event("finish", "PASS", 0);
    wasi_proc_exit(0);
}
