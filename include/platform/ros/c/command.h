/**
 * @file command.h
 * @brief Allocation-free WASI Preview 1 command utilities for ROS guests.
 * @details These helpers use ordinary stdout and an explicitly granted monotonic
 * clock. They open no ROS alias, descriptor, native node, thread or filesystem
 * path. wasm32 uses the standard Preview 1 ABI. wasm64 uses Uwvm's explicit
 * memory64 Preview 1 extension, including its suffixed import names and
 * pointer-sized counts. This extension is not an upstream WASI standard.
 * A caller must close its ROS owners before terminating the command.
 */
#ifndef UWVM_ROS_COMMAND_H
#define UWVM_ROS_COMMAND_H
#include <platform/ros/c/roswasm/detail/common/abi.h>
#if !defined(__wasm__) || (!defined(__wasm32__) && !defined(__wasm64__))
# error "ROS command helpers require an explicit wasm32 or wasm64 guest"
#endif
#if defined(__wasm64__)
# define UWVM_ROS_COMMAND_IMPORT(name) name "_wasm64"
#else
# define UWVM_ROS_COMMAND_IMPORT(name) name
#endif
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Terminate the command after its caller closes every owned ROS handle.
     * @param status Application exit code; the value remains i32 on both ABIs.
     * @details This import never returns and performs no C++ stack unwinding.
     */
    __attribute__((import_module("wasi_snapshot_preview1"), import_name(UWVM_ROS_COMMAND_IMPORT("proc_exit")), noreturn)) void
        uwvm_ros_command_exit(uwvm_ros_u32 status);
    /**
     * @brief Write borrowed byte vectors through the selected Preview 1 ABI.
     * @param fd Already-open output descriptor; this import opens no resource.
     * @param vectors Guest address of pointer-sized address/length pairs.
     * @param count Number of live vectors, represented by the guest pointer width.
     * @param written Guest address of a writable pointer-sized completed byte count.
     * @return WASI errno; callers must separately validate partial write counts.
     */
    __attribute__((import_module("wasi_snapshot_preview1"), import_name(UWVM_ROS_COMMAND_IMPORT("fd_write")))) uwvm_ros_u32
        uwvm_ros_command_fd_write(uwvm_ros_u32 fd, uwvm_ros_uintptr vectors, uwvm_ros_uintptr count, uwvm_ros_uintptr written);
    /**
     * @brief Wait for a bounded set of explicitly granted clock events.
     * @param subscriptions Guest address of aligned 48-byte subscription records.
     * @param events Guest address of aligned writable 32-byte event records.
     * @param count Number of records, represented by the guest pointer width.
     * @param ready Guest address of a writable pointer-sized completed event count.
     * @return WASI errno; individual events retain their own error fields.
     * @details This import performs no ROS operation and cannot replay a request.
     */
    __attribute__((import_module("wasi_snapshot_preview1"), import_name(UWVM_ROS_COMMAND_IMPORT("poll_oneoff")))) uwvm_ros_u32
        uwvm_ros_command_poll(uwvm_ros_uintptr subscriptions, uwvm_ros_uintptr events, uwvm_ros_uintptr count, uwvm_ros_uintptr ready);
#ifdef __cplusplus
}
#endif
/**
 * @brief Write a complete counted byte range to stdout, preserving short writes.
 * @param bytes Borrowed live bytes; may be null only when length is zero.
 * @param length Exact byte count, at most UINT32_MAX.
 * @return Zero after all bytes were written, otherwise local IO status 5.
 * @details Only unwritten stdout bytes are retried. This function never retries
 * a ROS publication, service call, event receive or other external operation.
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros_command_write(char const* bytes, uwvm_ros_u32 length)
{
    while(length)
    {
        uwvm_ros_uintptr vector[2];
        uwvm_ros_uintptr written = 0;
        vector[0] = (uwvm_ros_uintptr)bytes;
        vector[1] = length;
        if(uwvm_ros_command_fd_write(1, (uwvm_ros_uintptr)vector, 1, (uwvm_ros_uintptr)&written) || !written || written > length)
        {
            return 5;
        }
        bytes += written;
        length -= (uwvm_ros_u32)written;
    }
    return 0;
}

/**
 * @brief Wait once for a bounded relative monotonic clock event.
 * @param nanoseconds Relative delay; no native wall-clock assumption is made.
 * @return Zero only for one successful clock event, otherwise IO status 5.
 * @details The host must grant monotonic-clock. Storage is caller-local, no
 * descriptor is opened, and no thread is created. The fixed 48-byte subscription
 * and 32-byte event retain their little-endian scalar layout on both supported
 * ABIs. u64 backing arrays guarantee the required eight-byte record alignment.
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros_command_pause(uwvm_ros_u64 nanoseconds)
{
    uwvm_ros_u64 input_storage[6] = {0};
    uwvm_ros_u64 output_storage[4];
    unsigned char* input = (unsigned char*)input_storage;
    unsigned char* output = (unsigned char*)output_storage;
    uwvm_ros_uintptr ready = 0;
    unsigned index;
    input[16] = 1;
    for(index = 0; index != 8; ++index)
    {
        input[24 + index] = (unsigned char)(nanoseconds >> (8 * index));
    }
    input[32] = 64;
    input[33] = 66;
    input[34] = 15;
    if(uwvm_ros_command_poll((uwvm_ros_uintptr)input, (uwvm_ros_uintptr)output, 1, (uwvm_ros_uintptr)&ready) || ready != 1 || output[8] || output[9] ||
       output[10])
    {
        return 5;
    }
    return 0;
}

#undef UWVM_ROS_COMMAND_IMPORT
#endif
