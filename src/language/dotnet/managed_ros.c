/**
 * @file managed_ros.c
 * @brief Bind full-width managed P/Invoke scalars to the selected real ROS ABI.
 * @details This file is numeric same-Wasm FFI glue. It contains no observation
 * implementation, ROS peer, value codec, managed interpreter, or guest main.
 * Every borrowed pointer is an i64 linear-memory offset validated by the host.
 */
#include <stdint.h>
#include <string.h>
#include <wasi/api.h>

#ifndef UWVM_ROS_BACKEND
#define UWVM_ROS_BACKEND 2
#endif
#if UWVM_ROS_BACKEND == 1
#define UWVM_ROS_IMPORT_MODULE "uwvm_ros1_v1"
#define native_version uwvm_ros1_abi_version
#define native_open uwvm_ros1_capability_open
#define native_close uwvm_ros1_capability_close
#define native_call uwvm_ros1_service_call
#define native_subscribe uwvm_ros1_topic_subscribe
#define native_poll uwvm_ros1_event_poll
#elif UWVM_ROS_BACKEND == 2
#define UWVM_ROS_IMPORT_MODULE "uwvm_ros2_v1"
#define native_version uwvm_ros2_abi_version
#define native_open uwvm_ros2_capability_open
#define native_close uwvm_ros2_capability_close
#define native_call uwvm_ros2_service_call
#define native_subscribe uwvm_ros2_topic_subscribe
#define native_poll uwvm_ros2_event_poll
#else
#error Select exactly ROS backend one or two
#endif
#define MANAGED_IMPORT(name) __attribute__((import_module(UWVM_ROS_IMPORT_MODULE), import_name(name)))

/** @brief Observe the namespace ABI. @return Version one, not errno zero. */
MANAGED_IMPORT("abi_version") extern uint32_t native_version(void);
/**
 * @brief Open one externally granted exact alias.
 * @param memory Guest memory index.
 * @param alias Borrowed UTF-8 byte offset.
 * @param length Alias byte count.
 * @param owner Caller-owned eight-byte output slot.
 * @return Original ABI errno; ownership begins only on zero.
 */
MANAGED_IMPORT("capability_open")
extern uint32_t native_open(uint32_t memory, uint64_t alias, uint64_t length, uint64_t owner);
/** @brief Close one owner once. @param owner Full opaque handle. @return Independent cleanup errno. */
MANAGED_IMPORT("capability_close") extern uint32_t native_close(uint64_t owner);
/**
 * @brief Attempt one complete synchronous service operation without replay.
 * @param owner Owned service-call capability.
 * @param memory Guest memory index.
 * @param request Borrowed canonical request offset.
 * @param request_length Exact request extent.
 * @param response Caller-owned response offset.
 * @param capacity Exact response capacity.
 * @param length Caller-owned eight-byte length slot.
 * @return Original ABI errno; error 90 alone does not prove the slot was written.
 */
MANAGED_IMPORT("service_call")
extern uint32_t native_call(uint64_t owner,
                            uint32_t memory,
                            uint64_t request,
                            uint64_t request_length,
                            uint64_t response,
                            uint64_t capacity,
                            uint64_t length);
/** @brief Activate one subscription. @param owner Owned handle. @return Original ABI errno. */
MANAGED_IMPORT("topic_subscribe") extern uint32_t native_subscribe(uint64_t owner);
/**
 * @brief Consume one queued canonical topic event.
 * @param owner Owned active subscription.
 * @param memory Guest memory index.
 * @param response Caller-owned output offset.
 * @param capacity Exact output capacity.
 * @param length Caller-owned eight-byte result-length slot.
 * @return Original ABI errno; 11 means currently empty.
 */
MANAGED_IMPORT("event_poll")
extern uint32_t native_poll(uint64_t owner, uint32_t memory, uint64_t response, uint64_t capacity, uint64_t length);

/** @brief Observe the compiled backend. @return One or two; performs no host call. */
uint32_t managed_ros_backend(void)
{
    return UWVM_ROS_BACKEND;
}

/** @brief Observe the actual namespace version. @return Version, not an errno. */
uint32_t managed_ros_version(void)
{
    return native_version();
}

/**
 * @brief Forward one open without narrowing any i64 scalar.
 * @param memory Guest memory index.
 * @param alias Borrowed UTF-8 byte offset.
 * @param length Exact alias byte count.
 * @param owner Caller-owned eight-byte output slot.
 * @return Original ABI errno; no storage ownership is retained by this glue.
 */
uint32_t managed_ros_open(uint32_t memory, uint64_t alias, uint64_t length, uint64_t owner)
{
    return native_open(memory, alias, length, owner);
}

/** @brief Forward one close. @param owner Owned full handle. @return Independent cleanup errno. */
uint32_t managed_ros_close(uint64_t owner)
{
    return native_close(owner);
}

/**
 * @brief Forward one service attempt without changing any request or reply byte.
 * @param owner Owned service-call capability.
 * @param memory Guest memory index.
 * @param request Borrowed canonical request offset.
 * @param request_length Exact request extent.
 * @param response Caller-owned output offset.
 * @param capacity Exact output capacity.
 * @param length Caller-owned eight-byte output-length slot.
 * @return Original ABI errno; no pointer is retained after return.
 */
uint32_t managed_ros_call(uint64_t owner,
                          uint32_t memory,
                          uint64_t request,
                          uint64_t request_length,
                          uint64_t response,
                          uint64_t capacity,
                          uint64_t length)
{
    return native_call(owner, memory, request, request_length, response, capacity, length);
}

/** @brief Forward subscription activation. @param owner Owned handle. @return Original ABI errno. */
uint32_t managed_ros_subscribe(uint64_t owner)
{
    return native_subscribe(owner);
}

/**
 * @brief Forward one event poll without creating a managed callback.
 * @param owner Owned active subscription.
 * @param memory Guest memory index.
 * @param response Caller-owned output offset.
 * @param capacity Exact output capacity.
 * @param length Caller-owned eight-byte output-length slot.
 * @return Original ABI errno; 11 preserves the empty-queue observation.
 */
uint32_t managed_ros_poll(uint64_t owner, uint32_t memory, uint64_t response, uint64_t capacity, uint64_t length)
{
    return native_poll(owner, memory, response, capacity, length);
}

/**
 * @brief Await one real twenty-millisecond monotonic WASI clock event.
 * @return Zero only after one valid event; otherwise SDK errno 5.
 * @details Native C stack objects satisfy WASI's eight-byte subscription/event
 * alignment. No owner, thread, interpreter or hidden ROS operation is created.
 */
uint32_t managed_ros_pause(void)
{
    __wasi_subscription_t input;
    __wasi_event_t output;
    __wasi_size_t count = 0;
    memset(&input, 0, sizeof input);
    memset(&output, 0, sizeof output);
    input.u.tag = __WASI_EVENTTYPE_CLOCK;
    input.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    input.u.u.clock.timeout = UINT64_C(20000000);
    input.u.u.clock.precision = UINT64_C(1000000);
    if (__wasi_poll_oneoff(&input, &output, 1, &count) || count != 1 || output.error ||
        output.type != __WASI_EVENTTYPE_CLOCK)
    {
        return 5;
    }
    return 0;
}
