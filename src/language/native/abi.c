/**
 * @file abi.c
 * @brief Adapt exact ROS scalar imports to genuine guest-language pointer calls.
 * @details This infrastructure owns no capability and contains no vendor record
 * or codec. The actual guest language makes every open, subscription, poll,
 * decode, encode and close decision. LLVM 23 compiles this static Wasm adapter.
 */
#include <language/native/abi.h>
#include <stdint.h>
#include <limits.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#if defined(UWVM_NATIVE_POINTER_BITS)
_Static_assert(sizeof(void*) * CHAR_BIT == UWVM_NATIVE_POINTER_BITS, "Native pointer-width action mismatch");
#endif
_Static_assert(sizeof(unsigned long long) == 8, "The native ABI requires full-width eight-byte handles");
_Static_assert(sizeof(unsigned int) == 4, "The native ABI requires four-byte unsigned statuses");

#if defined(UWVM_NATIVE_ROS1) && defined(UWVM_NATIVE_ROS2)
#error "Select exactly one original ROS import family"
#elif defined(UWVM_NATIVE_ROS1)
#define NATIVE_MODULE "uwvm_ros1_v1"
#elif defined(UWVM_NATIVE_ROS2)
#define NATIVE_MODULE "uwvm_ros2_v1"
#else
#error "Declare UWVM_NATIVE_ROS1 or UWVM_NATIVE_ROS2 explicitly"
#endif
#define NATIVE_IMPORT(name) __attribute__((import_module(NATIVE_MODULE), import_name(name)))
NATIVE_IMPORT("abi_version") extern uint32_t nl_raw_version(void);
NATIVE_IMPORT("capability_open") extern uint32_t nl_raw_open(uint32_t, uint64_t, uint64_t, uint64_t);
NATIVE_IMPORT("capability_close") extern uint32_t nl_raw_close(uint64_t);
NATIVE_IMPORT("topic_subscribe") extern uint32_t nl_raw_subscribe(uint64_t);
NATIVE_IMPORT("event_poll") extern uint32_t nl_raw_poll(uint64_t, uint32_t, uint64_t, uint64_t, uint64_t);
NATIVE_IMPORT("topic_publish") extern uint32_t nl_raw_publish(uint64_t, uint32_t, uint64_t, uint64_t);
#define NATIVE_REQUEST_IMPORT(name)                                                                                    \
    NATIVE_IMPORT(#name)                                                                                               \
    extern uint32_t nl_raw_##name(uint64_t, uint32_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
NATIVE_REQUEST_IMPORT(service_call);
NATIVE_REQUEST_IMPORT(action_send_goal);
NATIVE_REQUEST_IMPORT(action_cancel_own_goal);
NATIVE_REQUEST_IMPORT(action_receive_feedback);
NATIVE_REQUEST_IMPORT(action_receive_result);
#undef NATIVE_REQUEST_IMPORT

unsigned int nl_version(void)
{
    return nl_raw_version();
}

unsigned int nl_open(unsigned char const* alias_bytes, unsigned int size, unsigned long long* owner)
{
    return nl_raw_open(0, (uintptr_t)alias_bytes, size, (uintptr_t)owner);
}

unsigned int nl_close(unsigned long long owner)
{
    return nl_raw_close(owner);
}

unsigned int nl_subscribe(unsigned long long owner)
{
    return nl_raw_subscribe(owner);
}

unsigned int nl_poll(unsigned long long owner, unsigned char* output, unsigned int capacity, unsigned long long* length)
{
    return nl_raw_poll(owner, 0, (uintptr_t)output, capacity, (uintptr_t)length);
}

unsigned int nl_publish(unsigned long long owner, unsigned char const* wire, unsigned int size)
{
    return nl_raw_publish(owner, 0, (uintptr_t)wire, size);
}

unsigned int nl_request(unsigned int operation,
                        unsigned long long owner,
                        unsigned char const* input,
                        unsigned int size,
                        unsigned char* output,
                        unsigned int capacity,
                        unsigned long long* length)
{
#define NATIVE_REQUEST_CASE(number, name)                                                                              \
    case number:                                                                                                       \
        return nl_raw_##name(owner, 0, (uintptr_t)input, size, (uintptr_t)output, capacity, (uintptr_t)length)
    switch (operation)
    {
        NATIVE_REQUEST_CASE(NL_SERVICE_CALL, service_call);
        NATIVE_REQUEST_CASE(NL_ACTION_SEND_GOAL, action_send_goal);
        NATIVE_REQUEST_CASE(NL_ACTION_CANCEL_OWN, action_cancel_own_goal);
        NATIVE_REQUEST_CASE(NL_ACTION_FEEDBACK, action_receive_feedback);
        NATIVE_REQUEST_CASE(NL_ACTION_RESULT, action_receive_result);
        default:
            return 22;
    }
#undef NATIVE_REQUEST_CASE
}

unsigned int nl_pause(unsigned int milliseconds)
{
    if (milliseconds > 1000)
    {
        return 22;
    }
    struct timespec value = {(time_t)(milliseconds / 1000), (long)(milliseconds % 1000) * 1000000};
    return nanosleep(&value, NULL) ? 5 : 0;
}

static int nl_argc;
static char** nl_argv;

unsigned int nl_argument_count(void)
{
    return (unsigned int)nl_argc;
}

unsigned char const* nl_argument(unsigned int index, unsigned int* size)
{
    if (!size)
    {
        return NULL;
    }
    if (index >= (unsigned int)nl_argc)
    {
        *size = 0;
        return NULL;
    }
    *size = (unsigned int)strlen(nl_argv[index]);
    return (unsigned char const*)nl_argv[index];
}

unsigned int nl_report(unsigned int primary,
                       unsigned int cleanup,
                       unsigned int cleanup_present,
                       unsigned int rpc,
                       unsigned int rpc_present,
                       unsigned long long length,
                       unsigned int present,
                       unsigned int polls,
                       unsigned char const* wire,
                       unsigned int size)
{
    int failed =
        printf("{\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%s,\"rpc_status\":%u,\"rpc_present\":%s,"
               "\"length_present\":%s,\"length\":\"%llu\",\"response_present\":%s,\"polls\":%u,\"wire_hex\":\"",
               primary,
               cleanup,
               cleanup_present ? "true" : "false",
               rpc,
               rpc_present ? "true" : "false",
               length != UINT64_MAX ? "true" : "false",
               length,
               present ? "true" : "false",
               polls) < 0;
    if (present)
    {
        for (unsigned int index = 0; index < size; ++index)
        {
            if (printf("%02x", (unsigned int)wire[index]) < 0)
            {
                failed = 1;
                break;
            }
        }
    }
    if (puts("\"}") == EOF || fflush(stdout) == EOF)
    {
        failed = 1;
    }
    return primary ? primary : cleanup ? cleanup : failed ? 5 : 0;
}

/** @brief Enter the real compiled guest language and return its original status. */
extern uint32_t nl_entry(void);
#if defined(UWVM_NATIVE_NIM)
/** @brief Initialize the genuine Nim-generated runtime once before its entry. */
extern void NimMain(void);
#endif
#if !defined(UWVM_NATIVE_HASKELL) && !defined(UWVM_NATIVE_NO_ENTRY)
/**
 * @brief Preserve WASI arguments and enter the genuine compiled source language.
 * @param argc Original WASI argument count.
 * @param argv Original borrowed WASI argument vector, stable until return.
 * @return Application status clamped to 125 only at the process exit boundary.
 */
int main(int argc, char** argv)
{
    nl_argc = argc;
    nl_argv = argv;
#if defined(UWVM_NATIVE_NIM)
    NimMain();
#endif
    uint32_t status = nl_entry();
    return status > 125 ? 125 : (int)status;
}
#endif
