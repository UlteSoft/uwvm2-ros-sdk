/**
 * @file main.c
 * @brief Publish a complete original AprilTag Array and verify owner retirement.
 * @details All records and byte buffers are owned by this module. Only the
 * operator's explicit topic.publish alias permits a native side effect.
 */
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <ros2/c/roswasm/ros2.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <wasi/api.h>

/** @brief Complete bounded value retaining both detections and all covariance entries. */
typedef roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray Array;
#define ENCODE roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode
#define MAX_WIRE ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY_MAX_WIRE_BYTES

/**
 * @brief Build one complete guest-originated value, independently of any native sample.
 * @param value Writable module-owned Array; all active fields are initialized.
 * @details Strings use inline storage, fixed arrays retain their original order,
 * and binary-exact fractions exercise every one of the 72 covariance entries.
 */
static void fixture(Array* value)
{
    memset(value, 0, sizeof *value);
    value->header.stamp.sec = -73;
    value->header.stamp.nanosec = 234567890;
    value->header.frame_id.size = sizeof "guest_nvidia_array" - 1;
    memcpy(value->header.frame_id.data, "guest_nvidia_array", value->header.frame_id.size);
    value->detections.size = 2;
    for (unsigned i = 0; i < 2; ++i)
    {
        roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection* detection = &value->detections.data[i];
        char const* family = i ? "tagCircle21h7" : "tag16h5";
        detection->family.size = (uint32_t)strlen(family);
        memcpy(detection->family.data, family, detection->family.size);
        detection->id = i ? 84 : -11;
        detection->center.x = 8.25 + i;
        detection->center.y = -4.5 - i;
        detection->center.z = 0.375 + i;
        for (unsigned j = 0; j < 4; ++j)
        {
            detection->corners[j].x = i + (j + 1) / 8.0;
            detection->corners[j].y = -(double)i - (j + 1) / 4.0;
            detection->corners[j].z = (j + 2) / 16.0;
        }
        detection->pose.header.stamp.sec = 200 + (int32_t)i;
        detection->pose.header.stamp.nanosec = 333222111 - i;
        char const* frame = i ? "guest_right" : "guest_left";
        detection->pose.header.frame_id.size = (uint32_t)strlen(frame);
        memcpy(detection->pose.header.frame_id.data, frame, detection->pose.header.frame_id.size);
        detection->pose.pose.pose.position.x = 2.5 + i;
        detection->pose.pose.pose.position.y = -3.25 - i;
        detection->pose.pose.pose.position.z = 4.75 + i;
        detection->pose.pose.pose.orientation.x = 0.25;
        detection->pose.pose.pose.orientation.y = -0.125;
        detection->pose.pose.pose.orientation.z = 0.5;
        detection->pose.pose.pose.orientation.w = 0.75;
        for (unsigned j = 0; j < 36; ++j)
        {
            detection->pose.pose.covariance[j] = (i + 2) * (j + 3) / 16.0;
        }
    }
}

/**
 * @brief Wait for one 50 ms monotonic event between deliberate publication calls.
 * @return Zero on success or 5 for an inconsistent/failed WASI event.
 * @details The sole extra WASI grant is monotonic-clock. No hidden retry occurs.
 */
static uint32_t pause_publication(void)
{
    __wasi_subscription_t input = {0};
    __wasi_event_t output = {0};
    __wasi_size_t count = 0;
    input.u.tag = __WASI_EVENTTYPE_CLOCK;
    input.u.u.clock.id = __WASI_CLOCKID_MONOTONIC;
    input.u.u.clock.timeout = 50000000;
    input.u.u.clock.precision = 1000000;
    return __wasi_poll_oneoff(&input, &output, 1, &count) || count != 1 || output.error ||
                   output.type != __WASI_EVENTTYPE_CLOCK
               ? 5
               : 0;
}

/**
 * @brief Print one complete wire without borrowing storage across a host call.
 * @param bytes Borrowed readable length-byte prefix, retained by this module.
 * @param length Exact active canonical extent in bytes.
 * @return Zero on success or 73 for stdout failure.
 */
static uint32_t print_hex(unsigned char const* bytes, size_t length)
{
    for (size_t i = 0; i < length; ++i)
    {
        if (printf("%02x", (unsigned)bytes[i]) < 0)
        {
            return 73;
        }
    }
    return 0;
}

/**
 * @brief Publish a guest-created complete value, then close or revoke its owner.
 * @param argc Exactly three arguments: program, explicit alias, mode.
 * @param argv Borrowed WASI arguments; mode 0 closes, 1 checks close/reopen,
 * and 2 revokes and checks the revoked alias.
 * @return Zero after successful publication/cleanup, exact operation error
 * capped at 125, or 22/71/73 for arguments, lifetime checks or stdout failure.
 * @details Twenty explicit 50 ms publication intervals allow native DDS discovery
 * under volatile QoS. A distinct valid poisoned payload is attempted only with
 * retired handles. A native subscriber must never observe that payload.
 */
int main(int argc, char** argv)
{
    if (argc != 3 || !argv[1][0] || strlen(argv[2]) != 1 || argv[2][0] < '0' || argv[2][0] > '2')
    {
        return 22;
    }
    unsigned mode = (unsigned)(argv[2][0] - '0');
    static Array value;
    static unsigned char wire[MAX_WIRE];
    static unsigned char poison[MAX_WIRE];
    size_t length = 0;
    size_t poison_length = 0;
    fixture(&value);
    uint32_t encoding = ENCODE(&value, wire, sizeof wire, &length);
    value.header.stamp.sec = 22222;
    value.detections.data[0].id = 777;
    uint32_t poison_encoding = ENCODE(&value, poison, sizeof poison, &poison_length);
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    uint32_t primary = encoding ? encoding : poison_encoding;
    uint32_t cleanup = 0;
    uint32_t publications = 0;
    uint32_t retired = 0;
    uint32_t stale = 0;
    uint32_t close_again = 0;
    uint32_t reopen = 0;
    uint32_t old_again = 0;
    uint32_t fresh_close = 0;
    uint32_t fresh_close_attempted = 0;
    uint32_t reused_handle = 0;
    if (!primary)
    {
        primary = roswasmc_open(&owner, argv[1], strlen(argv[1]));
    }
    if (!primary)
    {
        for (unsigned i = 0; i < 20; ++i)
        {
            primary = roswasmc_publish(&owner, wire, length);
            if (primary)
            {
                break;
            }
            ++publications;
            primary = pause_publication();
            if (primary)
            {
                break;
            }
        }
        if (primary || !mode)
        {
            cleanup = roswasmc_close(&owner);
        }
        else
        {
            uint64_t original = owner.handle;
            retired = mode == 2 ? roswasmc_revoke(&owner) : roswasmc_close(&owner);
            cleanup = retired;
            stale = context.backend->publish(original, 0, uwvm_ros_address(poison), poison_length);
            close_again = context.backend->close(original);
            reopen = roswasmc_open(&owner, argv[1], strlen(argv[1]));
            old_again = context.backend->publish(original, 0, uwvm_ros_address(poison), poison_length);
            if (!reopen)
            {
                reused_handle = owner.handle == original;
                fresh_close_attempted = 1;
                fresh_close = roswasmc_close(&owner);
            }
        }
    }
    if (printf(
            "{\"primary\":%u,\"cleanup\":%u,\"encoding\":%u,\"poison_encoding\":%u,\"mode\":%u,\"publications\":%u,\"retired\":%u,\"stale\":%u,\"close_again\":%u,\"reopen\":%u,\"old_again\":%u,\"fresh_close\":%u,\"fresh_close_attempted\":%u,\"reused_handle\":%u,\"wire_hex\":\"",
            primary,
            cleanup,
            encoding,
            poison_encoding,
            mode,
            publications,
            retired,
            stale,
            close_again,
            reopen,
            old_again,
            fresh_close,
            fresh_close_attempted,
            reused_handle) < 0 ||
        print_hex(wire, length) || printf("\",\"poison_hex\":\"") < 0 || print_hex(poison, poison_length) ||
        printf("\"}\n") < 0 || fflush(stdout))
    {
        return 73;
    }
    if (primary || cleanup)
    {
        uint32_t error = primary ? primary : cleanup;
        return error > 125 ? 125 : (int)error;
    }
    return mode && (retired || stale != 9 || close_again != 9 || reopen != (mode == 2 ? 125u : 0u) || old_again != 9 ||
                    fresh_close || reused_handle || fresh_close_attempted != (mode == 2 ? 0u : 1u))
               ? 71
               : 0;
}
