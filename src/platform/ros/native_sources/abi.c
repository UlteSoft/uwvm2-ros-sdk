/**
 * @file abi.c
 * @brief Adapt exact ROS ABI scalar imports to genuine source-language pointers.
 * @details This infrastructure owns no ROS capability and decodes no vendor
 * record. The calling source language owns every handle, request, response,
 * codec, polling decision and cleanup result. Compile with LLVM 23 and define
 * UWVM_NATIVE_ROS1 only for the independently granted ROS 1 import namespace.
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <wasi/api.h>

#if defined(UWVM_NATIVE_ROS1)
# define NL_MODULE "uwvm_ros1_v1"
#else
# define NL_MODULE "uwvm_ros2_v1"
#endif
#define NL_IMPORT(name) __attribute__((import_module(NL_MODULE), import_name(name)))
NL_IMPORT("abi_version") extern uint32_t nl_raw_version(void);
NL_IMPORT("capability_open") extern uint32_t nl_raw_open(uint32_t, uint64_t, uint64_t, uint64_t);
NL_IMPORT("capability_close") extern uint32_t nl_raw_close(uint64_t);
NL_IMPORT("topic_subscribe") extern uint32_t nl_raw_subscribe(uint64_t);
NL_IMPORT("topic_publish") extern uint32_t nl_raw_publish(uint64_t, uint32_t, uint64_t, uint64_t);
NL_IMPORT("event_poll") extern uint32_t nl_raw_poll(uint64_t, uint32_t, uint64_t, uint64_t, uint64_t);
NL_IMPORT("service_call")
extern uint32_t nl_raw_call(uint64_t, uint32_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t);

/** @brief Observe the selected ABI. @return Version value, never an errno. */
uint32_t nl_version(void)
{
    return nl_raw_version();
}

/** @brief Open a borrowed alias. @param alias Nonempty bytes. @param size Byte extent.
 * @param handle Writable LE u64 slot. @return Original unsigned ABI errno. */
uint32_t nl_open(unsigned char const* alias, uint32_t size, uint64_t* handle)
{
    return nl_raw_open(0, (uintptr_t)alias, size, (uintptr_t)handle);
}

/** @brief Close a caller-owned handle once. @param handle Opaque ID. @return Original errno. */
uint32_t nl_close(uint64_t handle)
{
    return nl_raw_close(handle);
}

/** @brief Activate a caller-owned subscription. @param handle Opaque ID. @return Original errno. */
uint32_t nl_subscribe(uint64_t handle)
{
    return nl_raw_subscribe(handle);
}

/** @brief Publish complete caller-encoded bytes. @param handle Opaque ID.
 * @param data Borrowed canonical bytes. @param size Complete extent. @return Original errno. */
uint32_t nl_publish(uint64_t handle, unsigned char const* data, uint32_t size)
{
    return nl_raw_publish(handle, 0, (uintptr_t)data, size);
}

/** @brief Poll once without retry or allocation. @param handle Opaque ID.
 * @param output Borrowed writable storage. @param capacity Extent in bytes.
 * @param length Sentinel-initialized LE slot. @return Original errno. */
uint32_t nl_poll(uint64_t handle, unsigned char* output, uint32_t capacity, uint64_t* length)
{
    return nl_raw_poll(handle, 0, (uintptr_t)output, capacity, (uintptr_t)length);
}

/** @brief Call once without retry or interpretation. @param handle Opaque ID.
 * @param input Complete request. @param size Request extent. @param output Response storage.
 * @param capacity Response capacity. @param length Sentinel-initialized LE slot.
 * @return Original unsigned ABI errno, with the original length observation intact. */
uint32_t nl_call(uint64_t handle, unsigned char const* input, uint32_t size, unsigned char* output, uint32_t capacity, uint64_t* length)
{
    return nl_raw_call(handle, 0, (uintptr_t)input, size, (uintptr_t)output, capacity, (uintptr_t)length);
}

/** @brief Wait for one explicitly selected monotonic WASI timer.
 * @param milliseconds Finite 0..1000 delay chosen by the calling language.
 * @return Original WASI or event errno, local invalid 22, or malformed event 5.
 * @details No wall clock, ROS operation, implicit retry, or owner is involved. */
uint32_t nl_pause(uint32_t milliseconds)
{
    if(milliseconds > 1000)
    {
        return 22;
    }
    __wasi_subscription_t subscription = {0};
    __wasi_event_t event = {0};
    __wasi_size_t count = 0;
    subscription.u.tag = __WASI_EVENTTYPE_CLOCK;
    subscription.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    subscription.u.u.clock.timeout = (uint64_t)milliseconds * 1000000;
    uint32_t code = __wasi_poll_oneoff(&subscription, &event, 1, &count);
    return code ? code : count != 1 ? 5 : event.error;
}

static int nl_argc;
static char** nl_argv;

/** @brief Borrow one original WASI argument. @param index Zero-based index.
 * @param size Writable byte count. @return Immutable bytes valid until command return. */
unsigned char const* nl_argument(uint32_t index, uint32_t* size)
{
    if(index >= (uint32_t)nl_argc)
    {
        *size = 0;
        return NULL;
    }
    *size = (uint32_t)strlen(nl_argv[index]);
    return (unsigned char const*)nl_argv[index];
}

/** @brief Emit already-owned facts and complete canonical bytes as JSON.
 * @param primary First language-owned operation/decode/controller error.
 * @param cleanup Independent once-only close result, or zero without acquisition.
 * @param cleanup_present True only after a close attempt on an acquired handle.
 * @param rpc Original unsigned transport status. @param rpc_present True after an RPC/poll.
 * @param length Original length slot.
 * @param present True only after the source-language codec accepted the whole record.
 * @param wire Complete source-language re-encoded bytes. @param size Encoded extent.
 * @return Primary, then cleanup, then stdout error; clamped only at process exit.
 * @details No vendor fields are interpreted here. Canonical hex is lossless and
 * independently decodable with the pinned schema, including diagnostic strings.
 */
uint32_t nl_report(uint32_t primary,
                   uint32_t cleanup,
                   uint32_t cleanup_present,
                   uint32_t rpc,
                   uint32_t rpc_present,
                   uint64_t length,
                   uint32_t present,
                   unsigned char const* wire,
                   uint32_t size)
{
    printf(
        "{\"primary\":%u,\"cleanup\":%u,\"cleanup_present\":%s,\"rpc_status\":%u,\"rpc_present\":%s,\"length_" "present\":%s,\"length\":\"%llu\",\"response_present\":%s,\"wire_hex\":\"",
        primary,
        cleanup,
        cleanup_present ? "true" : "false",
        rpc,
        rpc_present ? "true" : "false",
        length != UINT64_MAX ? "true" : "false",
        (unsigned long long)length,
        present ? "true" : "false");
    if(size)
    {
        for(uint32_t index = 0; index < size; ++index)
        {
            printf("%02x", wire[index]);
        }
    }
    puts("\"}");
    int failed = fflush(stdout) == EOF || ferror(stdout);
    return primary ? primary : cleanup ? cleanup : failed ? 5 : 0;
}

/** @brief Enter the genuine compiled source language. @return Full numeric status. */
extern uint32_t nl_entry(void);
#if defined(UWVM_NATIVE_NIM)
/** @brief Initialize Nim's generated runtime once before its exported entry. */
extern void NimMain(void);
#endif
#if !defined(UWVM_NATIVE_HASKELL)
/** @brief Supply WASI arguments and enter the compiled guest language.
 * @param argc Original argument count. @param argv Original borrowed argument vector.
 * @return Full status below 126, otherwise the documented command clamp 125. */
int main(int argc, char** argv)
{
    nl_argc = argc;
    nl_argv = argv;
# if defined(UWVM_NATIVE_NIM)
    NimMain();
# endif
    uint32_t status = nl_entry();
    return status > 125 ? 125 : (int)status;
}
#endif
