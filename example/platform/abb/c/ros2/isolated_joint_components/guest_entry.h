/* SPDX-License-Identifier: Apache-2.0 */
#ifndef SDK02_COMPONENT_GUEST_ENTRY_H
#define SDK02_COMPONENT_GUEST_ENTRY_H
#include <platform/ros2/c/roswasm/abi/ros2.h>
#define SDK02_WASI(name) __attribute__((import_module("wasi_snapshot_preview1"), import_name(name)))
SDK02_WASI("args_sizes_get") extern uwvm_ros_u32 sdk02_args_sizes(uwvm_ros_u32*, uwvm_ros_u32*);
SDK02_WASI("args_get") extern uwvm_ros_u32 sdk02_args_get(char**, char*);
SDK02_WASI("fd_write") extern uwvm_ros_u32 sdk02_fd_write(uwvm_ros_u32, void const*, uwvm_ros_u32, uwvm_ros_u32*);
SDK02_WASI("fd_read") extern uwvm_ros_u32 sdk02_fd_read(uwvm_ros_u32, void const*, uwvm_ros_u32, uwvm_ros_u32*);
SDK02_WASI("proc_exit") __attribute__((noreturn)) extern void sdk02_exit(uwvm_ros_u32);

static unsigned sdk02_assertions;
static unsigned sdk02_cases_started;
static unsigned sdk02_cases_finished;
static char const* sdk02_case_role;
static char const* sdk02_case_name;

static int sdk02_text_equal(char const* left, char const* right)
{
    while(*left && *left == *right) { ++left; ++right; }
    return *left == *right;
}

static void sdk02_print(char const* text)
{
    struct { void const* pointer; uwvm_ros_u32 length; } io;
    uwvm_ros_u32 written = 0;
    io.pointer = text; io.length = 0;
    while(text[io.length]) { ++io.length; }
    if(sdk02_fd_write(1, &io, 1, &written) || written != io.length) { sdk02_exit(96); }
}

static void sdk02_number(unsigned value)
{
    char digits[11];
    unsigned used = 0;
    do { digits[used++] = (char)('0' + value % 10); value /= 10; } while(value);
    while(used) { char one[2]; one[0] = digits[--used]; one[1] = 0; sdk02_print(one); }
}

static void sdk02_case_event(char const* phase, char const* status)
{
    sdk02_print("SDK02_COMPONENT_CASE:{\"role\":\""); sdk02_print(sdk02_case_role);
    sdk02_print("\",\"id\":\""); sdk02_print(sdk02_case_name);
    sdk02_print("\",\"phase\":\""); sdk02_print(phase);
    sdk02_print("\",\"status\":\""); sdk02_print(status);
    sdk02_print("\",\"assertions\":"); sdk02_number(sdk02_assertions); sdk02_print("}\n");
}

static void sdk02_begin_case(char const* role, char const* name)
{
    sdk02_case_role = role; sdk02_case_name = name; ++sdk02_cases_started;
    sdk02_case_event("start", "RUNNING");
}

static void sdk02_finish_case(void)
{
    ++sdk02_cases_finished; sdk02_case_event("finish", "PASS");
}

static void sdk02_check(int condition, unsigned failure)
{
    ++sdk02_assertions;
    if(!condition)
    {
        if(sdk02_case_name) { sdk02_case_event("finish", "FAIL"); }
        sdk02_print("SDK02_COMPONENT_LOCAL:FAIL code="); sdk02_number(failure);
        sdk02_print("\n"); sdk02_exit(1);
    }
}

static uwvm_ros_u64 sdk02_parse_handle(char const* text)
{
    uwvm_ros_u64 value = 0;
    unsigned index;
    for(index = 0; text[index]; ++index)
    {
        unsigned digit = (unsigned char)text[index] - (unsigned)'0';
        sdk02_check(index < 20 && digit <= 9 && value <= (UINT64_MAX - digit) / 10, 901);
        value = value * 10 + digit;
    }
    sdk02_check(index != 0 && value != 0, 902);
    return value;
}

/* Actual ROS imports, executed only by an explicitly selected owner-check run.
 * A foreign numeric value must come from the independent live peer instance;
 * it is deliberately not an authority assertion or a guest component ID.
 * The separate common harness must prove that origin and the zero native effect.
 */
static void sdk02_ros_owner_checks(int reader, uwvm_ros_u64 foreign)
{
    char const* granted = reader ? "feedback_read" : "command_write";
    char const* forbidden = reader ? "command_write" : "feedback_read";
    unsigned char slot[8];
    uwvm_ros_u64 handle;
    unsigned index;
    for(index = 0; index < 8; ++index) { slot[index] = 0xa5; }
    sdk02_check(uwvm_ros2_abi_version() == 1, 910);
    sdk02_check(uwvm_ros2_capability_open(0, uwvm_ros_address(forbidden),
        13, uwvm_ros_address(slot)) == UWVM_ROS_DENIED, 911);
    for(index = 0; index < 8; ++index) { sdk02_check(slot[index] == 0xa5, 912); }
    sdk02_check(uwvm_ros2_capability_open(0, uwvm_ros_address(granted),
        13, uwvm_ros_address(slot)) == UWVM_ROS_SUCCESS, 913);
    handle = uwvm_ros_load_u64(slot);
    sdk02_check(handle != 0 && handle != foreign, 914);
    sdk02_check(uwvm_ros2_capability_close(foreign) == UWVM_ROS_BAD_HANDLE, 915);
    sdk02_check(uwvm_ros2_capability_close(handle) == UWVM_ROS_SUCCESS, 916);
    sdk02_check(uwvm_ros2_capability_close(handle) == UWVM_ROS_BAD_HANDLE, 917);
    if(reader) { sdk02_check(uwvm_ros2_topic_subscribe(handle) == UWVM_ROS_BAD_HANDLE, 918); }
    else
    {
        unsigned char empty_string[4];
        for(index = 0; index < 4; ++index) { empty_string[index] = 0; }
        sdk02_check(uwvm_ros2_topic_publish(handle, 0, uwvm_ros_address(empty_string), 4) == UWVM_ROS_BAD_HANDLE, 919);
    }
    sdk02_print("SDK02_COMPONENT_OWNER_IMPORTS:PASS_REQUIRED_EXTERNAL_OWNER_AUDIT_AND_NO_EFFECT_REVIEW\n");
}

static void sdk02_local_summary(char const* role, unsigned selected)
{
    sdk02_check(sdk02_cases_started == selected && sdk02_cases_finished == selected, 990);
    sdk02_print("SDK02_COMPONENT_LOCAL:{\"role\":\""); sdk02_print(role);
    sdk02_print("\",\"selected\":"); sdk02_number(selected);
    sdk02_print(",\"executed\":"); sdk02_number(sdk02_cases_finished);
    sdk02_print(",\"passed\":"); sdk02_number(sdk02_cases_finished);
    sdk02_print(",\"assertions\":"); sdk02_number(sdk02_assertions);
    sdk02_print(",\"scope\":\"guest-local-business-only-no-ROS-or-isolation\"}\n");
}

static void sdk02_await_credit(char const* role, char const* scope)
{
    char credit = 0;
    uwvm_ros_u32 received = 0;
    struct { void* pointer; uwvm_ros_u32 length; } input;
    sdk02_print("SDK02_COMPONENT_READY:"); sdk02_print(role); sdk02_print(":"); sdk02_print(scope); sdk02_print("\n");
    input.pointer = &credit; input.length = 1;
    sdk02_check(sdk02_fd_read(0, &input, 1, &received) == 0 && received == 1 && credit == 'R', 991);
}
#endif
