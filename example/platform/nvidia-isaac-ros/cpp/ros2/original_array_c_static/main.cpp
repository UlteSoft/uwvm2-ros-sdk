/**
 * @file main.c
 * @brief Receive one original Array through an explicit alias and verify optional capability retirement.
 * @details The operator supplies matching native products and explicit per-module deployment authority.
 * Source metadata alone does not qualify execution, GPU access or NITROS.
 */
#include "array_library.h"
#include <inttypes.h>
#include <ros2/c/roswasm/ros2.h>
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <wasi/api.h>

typedef roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray Array;
#define MAX_WIRE ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES
#define DECODE roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode
#define ENCODE roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode

/**
 * @brief Wait for one twenty-millisecond WASI monotonic clock event.
 * @details Returns zero for one successful event or five for a failed/inconsistent result. The deployment
 * must grant monotonic-clock to this module. Called only between idle polls; no ROS resource is acquired
 * here.
 */
static uint32_t wait_for_sample(void)
{
    __wasi_subscription_t input;
    __wasi_event_t output;
    __wasi_size_t count = 0;
    memset(&input, 0, sizeof input);
    memset(&output, 0, sizeof output);
    input.u.tag = __WASI_EVENTTYPE_CLOCK;
    input.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    input.u.u.clock.timeout = 20000000;
    input.u.u.clock.precision = 1000000;
    return __wasi_poll_oneoff(&input, &output, 1, &count) || count != 1 || output.error ||
                   output.type != __WASI_EVENTTYPE_CLOCK
               ? 5
               : 0;
}

/**
 * @brief Probe a retired raw handle through the public ROS2 ABI.
 * @details Scratch output remains module-local. Returns the raw status; a correctly retired handle returns
 * nine and must not deliver a further native sample.
 * @param context Borrowed ROS2 backend context belonging to this module.
 * @param original Saved pre-retirement handle value.
 */
static uint32_t old_poll(roswasmc_context const *context, uint64_t original)
{
    unsigned char output[MAX_WIRE];
    uint64_t length = UINT64_MAX;
    return context->backend->poll(original, 0, uwvm_ros_address(output), sizeof output,
                                  uwvm_ros_address(&length));
}

/**
 * @brief Receive one complete original Array and optionally check owner retirement.
 * @details Requires program, operator alias and mode 0/1/2. At most 250 polls retain one owner. Mode 0 closes
 * normally, 1 checks close/reopen, and 2 checks revoke. One JSON line preserves the complete canonical wire
 * and cleanup facts. Returns the operation/cleanup/encoding error capped at 125; 22 denotes bad arguments,
 * 70/71 a failed lifetime invariant, and 73 stdout failure. No GPU/NITROS operation is performed.
 * @param argc WASI argument count; exactly three entries are required.
 * @param argv Borrowed argument array containing the alias and numeric mode.
 */
int main(int argc, char **argv)
{
    if (argc != 3 || strlen(argv[2]) != 1 || argv[2][0] < '0' || argv[2][0] > '2')
    {
        return 22;
    }
    uint32_t mode = (uint32_t)(argv[2][0] - '0');
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t primary = roswasmc_open(&owner, argv[1], strlen(argv[1]));
    uint32_t cleanup = 0, encoding = 0, retired = 0, stale = 0, close_again = 0, reopen = 0, old_again = 0,
             fresh_close = 0, attempted = 0;
    unsigned char wire[MAX_WIRE];
    size_t size = 0;
    Array response = {};
    if (!primary)
    {
        primary = roswasmc_subscribe(&owner);
        if (!primary)
        {
            roswasmc_result result = {};
            for (unsigned i = 0; i < 250; ++i)
            {
                result = roswasmc_poll(&owner, wire, sizeof wire);
                if (result.error != 11 || i + 1 == 250)
                {
                    break;
                }
                primary = wait_for_sample();
                if (primary)
                {
                    break;
                }
            }
            if (!primary)
            {
                primary = result.error;
            }
            if (!primary && (!result.has_length || result.length > sizeof wire))
            {
                primary = 22;
            }
            if (!primary)
            {
                primary = DECODE(wire, (size_t)result.length, &response);
            }
            if (!primary)
            {
                encoding = ENCODE(&response, wire, sizeof wire, &size);
            }
        }
        if (primary || encoding || !mode)
        {
            cleanup = roswasmc_close(&owner);
        }
        else
        {
            uint64_t original = owner.handle;
            retired = mode == 2 ? roswasmc_revoke(&owner) : roswasmc_close(&owner);
            cleanup = retired;
            stale = old_poll(&context, original);
            close_again = context.backend->close(original);
            reopen = roswasmc_open(&owner, argv[1], strlen(argv[1]));
            old_again = old_poll(&context, original);
            if (!reopen)
            {
                if (owner.handle == original)
                {
                    return 70;
                }
                attempted = 1;
                fresh_close = roswasmc_close(&owner);
            }
        }
    }
    uint32_t library_error = 0, library_contract = 0, producer_ros = 0, producer_clock = 0;
    uint32_t library_count = 0, library_checksum = 0;
    int64_t library_id_sum = 0;
    if (!primary && !encoding)
    {
        nv_array_summary summary = {};
        library_error = nv_array_summarize(wire, size, &summary);
        if (!library_error)
        {
            library_count = summary.count;
            library_id_sum = summary.id_sum;
            library_checksum = summary.checksum;
            nv_array_summary unchanged = summary;
            uint32_t malformed = nv_array_summarize(wire, size - 1, &summary);
            library_contract = malformed && summary.count == unchanged.count &&
                               summary.id_sum == unchanged.id_sum && summary.checksum == unchanged.checksum;
        }
        if (library_error || !library_contract)
        {
            encoding = library_error ? library_error : 70;
        }
    }
    if (printf("{\"primary\":%u,\"cleanup\":%u,\"encoding\":%u,\"wire_hex\":\"", primary, cleanup, encoding) <
        0)
    {
        return 73;
    }
    if (!primary && !encoding)
    {
        for (size_t i = 0; i < size; ++i)
        {
            if (printf("%02x", (unsigned)wire[i]) < 0)
            {
                return 73;
            }
        }
    }
    if (printf(
            "\",\"library_error\":%u,\"library_contract\":%u,\"library_count\":%u,\"library_id_sum\":%" PRId64
            ",\"library_checksum\":%u,\"producer_ros\":%u,\"producer_clock\":%u,\"mode\":%u,\"retired\":%u,"
            "\"stale\":%u,\"close_again\":%u,\"reopen\":%u,\"old_again\":%u,\"fresh_close\":%u,\"fresh_close_"
            "attempted\":%u}\n",
            library_error, library_contract, library_count, library_id_sum, library_checksum, producer_ros,
            producer_clock, mode, retired, stale, close_again, reopen, old_again, fresh_close,
            attempted) < 0 ||
        fflush(stdout))
    {
        return 73;
    }
    if (primary || cleanup || encoding)
    {
        return (primary   ? primary
                : cleanup ? cleanup
                          : encoding) > 125
                   ? 125
                   : (int)(primary   ? primary
                           : cleanup ? cleanup
                                     : encoding);
    }
    return mode && (retired || stale != 9 || close_again != 9 || reopen != (mode == 2 ? 125u : 0u) ||
                    old_again != 9 || fresh_close)
               ? 71
               : 0;
}
