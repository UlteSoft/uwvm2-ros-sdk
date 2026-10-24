/**
 * @file array_modules.h
 * @brief Scalar-only ABI between four independently owned Wasm memories.
 * @details Alias bytes and complete canonical payload bytes cross one scalar
 * at a time. Tokens identify IO storage generations, never pointers. ROS owners,
 * decoded records and byte buffers remain private to their defining module.
 */
#ifndef NV_ARRAY_MODULES_H
#define NV_ARRAY_MODULES_H

#include <stdint.h>

#define NV_MAX_WIRE 9872u
#define NV_MAX_ALIAS 63u
#define NV_EXPORT(name) __attribute__((export_name(name)))
#define NV_IMPORT(module, name) __attribute__((import_module(module), import_name(name)))
#if defined(NV_BUILD_IO)
#define NV_IO(name) NV_EXPORT(name)
#else
#define NV_IO(name) NV_IMPORT("io", name)
#endif
#if defined(NV_BUILD_ALGORITHM)
#define NV_ALGORITHM(name) NV_EXPORT(name)
#else
#define NV_ALGORITHM(name) NV_IMPORT("algorithm", name)
#endif
#if defined(NV_BUILD_ROS_COMM)
#define NV_ROS(name) NV_EXPORT(name)
#else
#define NV_ROS(name) NV_IMPORT("ros_comm", name)
#endif

/** @brief Fixed report keys; every value is an integer scalar, never an address. */
typedef enum nv_fact
{
    NV_PRIMARY,
    NV_CLEANUP,
    NV_ENCODING,
    NV_MODE,
    NV_RETIRED,
    NV_STALE,
    NV_CLOSE_AGAIN,
    NV_REOPEN,
    NV_OLD_AGAIN,
    NV_FRESH_CLOSE,
    NV_FRESH_CLOSE_ATTEMPTED,
    NV_MAIN_ROS,
    NV_IO_ROS,
    NV_ALGORITHM_ROS,
    NV_ALGORITHM_CLOCK,
    NV_ALGORITHM_RANDOM,
    NV_ROS_CLOCK,
    NV_IO_WAIT,
    NV_IO_STALE,
    NV_ALGORITHM_COUNT,
    NV_ALGORITHM_ID_SUM,
    NV_ALGORITHM_CHECKSUM,
    NV_CLOCK_UNCHANGED,
    NV_RANDOM_UNCHANGED,
    NV_ROS_CLOCK_UNCHANGED,
    NV_FACT_COUNT
} nv_fact;

#ifdef __cplusplus
extern "C"
{
#endif

    /**
     * @brief Start one bounded IO-owned byte generation; zero refuses a live owner or excess length.
     * @param length Requested owned byte extent; obey the bound stated above.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_IO("nv_io_begin") uint64_t nv_io_begin(uint32_t length);
    /**
     * @brief Append the next byte to a live generation; stale tokens return nine before any write.
     * @param token Opaque current IO generation; never a memory address.
     * @param index Scalar byte index into the defining module only.
     * @param byte Unsigned byte scalar; alias bytes must additionally be nonzero.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_IO("nv_io_put") uint32_t nv_io_put(uint64_t token, uint32_t index, uint32_t byte);
    /**
     * @brief Seal exactly the declared byte extent and retire its write token; no output occurs yet.
     * @param token Opaque current IO generation; never a memory address.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_IO("nv_io_commit") uint32_t nv_io_commit(uint64_t token);
    /**
     * @brief Store a named scalar report fact for the same live/sealed generation.
     * @param token Opaque current IO generation; never a memory address.
     * @param key A report key below NV_FACT_COUNT.
     * @param value Signed report scalar copied by value.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_IO("nv_io_fact") uint32_t nv_io_fact(uint64_t token, uint32_t key, int64_t value);
    /**
     * @brief Print one sealed complete wire and report, then retire report access; stdout errors return 73.
     * @param token Opaque current IO generation; never a memory address.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_IO("nv_io_report") uint32_t nv_io_report(uint64_t token);
    /**
     * @brief Wait twenty milliseconds through IO's explicit monotonic-clock grant; zero denotes success.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_IO("nv_io_wait") uint32_t nv_io_wait(void);
    /**
     * @brief Attempt a direct IO-module ROS acquisition; the explicit deployment must return 13.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_IO("nv_io_probe_ros") uint32_t nv_io_probe_ros(void);

    /**
     * @brief Reserve the algorithm's own bounded input; no host API or allocation is used.
     * @param length Requested owned byte extent; obey the bound stated above.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_begin") uint32_t nv_algorithm_begin(uint32_t length);
    /**
     * @brief Copy one sequential scalar byte into algorithm-owned memory; invalid order/value returns 22.
     * @param index Scalar byte index into the defining module only.
     * @param byte Unsigned byte scalar; alias bytes must additionally be nonzero.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_put") uint32_t nv_algorithm_put(uint32_t index, uint32_t byte);
    /**
     * @brief Decode every original Array field and compute the whole-wire FNV-1a checksum.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_finish") uint32_t nv_algorithm_finish(void);
    /**
     * @brief Return the fully decoded detection count after finish; no borrowed storage escapes.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_count") uint32_t nv_algorithm_count(void);
    /**
     * @brief Return the signed 64-bit sum of original ids; the sixteen-element bound prevents overflow.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_id_sum") int64_t nv_algorithm_id_sum(void);
    /**
     * @brief Return the 32-bit checksum of every canonical byte, including every covariance field.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_checksum") uint32_t nv_algorithm_checksum(void);
    /**
     * @brief Attempt direct algorithm-module ROS acquisition; it must return 13.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_probe_ros") uint32_t nv_algorithm_probe_ros(void);
    /**
     * @brief Request a default-denied monotonic read; the raw expected WASI errno is 76.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_probe_clock") uint32_t nv_algorithm_probe_clock(void);
    /**
     * @brief Request default-denied random bytes; the raw expected WASI errno is 76.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_probe_random") uint32_t nv_algorithm_probe_random(void);
    /**
     * @brief Return whether the denied clock read preserved its sentinel output.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_clock_unchanged") uint32_t nv_algorithm_clock_unchanged(void);
    /**
     * @brief Return whether the denied random request preserved all sentinel bytes.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ALGORITHM("nv_algorithm_random_unchanged") uint32_t nv_algorithm_random_unchanged(void);

    /**
     * @brief Prepare ROS-owned alias storage, refusing zero/excess length and any live owner.
     * @param length Requested owned byte extent; obey the bound stated above.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_alias_begin") uint32_t nv_ros_alias_begin(uint32_t length);
    /**
     * @brief Copy the next non-NUL alias byte into ROS-owned memory; no address crosses modules.
     * @param index Scalar byte index into the defining module only.
     * @param byte Unsigned byte scalar; alias bytes must additionally be nonzero.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_alias_put") uint32_t nv_ros_alias_put(uint32_t index, uint32_t byte);
    /**
     * @brief Acquire the complete prepared alias and subscribe once using ros_comm's own Single authority.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_start") uint32_t nv_ros_start(void);
    /**
     * @brief Poll once, decode the complete original Array and retain its canonical wire; idle is 11.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_poll") uint32_t nv_ros_poll(void);
    /**
     * @brief Return the validated active wire length, or zero before a complete sample exists.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_wire_size") uint32_t nv_ros_wire_size(void);
    /**
     * @brief Return one retained wire byte; 256 denotes a missing sample or out-of-range index.
     * @param index Scalar byte index into the defining module only.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_wire_byte") uint32_t nv_ros_wire_byte(uint32_t index);
    /**
     * @brief Close/revoke the ROS owner and execute old-handle checks for modes 0/1/2; no handle escapes.
     * @param mode Zero closes, one closes/reopens, two revokes and checks retirement.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_finish") uint32_t nv_ros_finish(uint32_t mode);
    /**
     * @brief Copy a stored scalar transport/retirement fact without exposing the private owner or buffers.
     * @param key A report key below NV_FACT_COUNT.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_fact") int64_t nv_ros_fact(uint32_t key);
    /**
     * @brief Attempt a direct clock read from ROS-only storage; default WASI must return 76.
     * @details No caller address is accepted or returned. Owned storage remains local.
     */
    NV_ROS("nv_ros_probe_clock") uint32_t nv_ros_probe_clock(void);

#ifdef __cplusplus
}
#endif

#endif
