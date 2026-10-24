/**
 * @file producer.cpp
 * @brief Decode an original Array through genuine C++20 span/accumulate code.
 * @details The C consumer receives only a committed scalar C ABI result. The
 * compiler must extract this object from the indexed archive and use the C++
 * link driver without changing the consumer's genuine C compilation.
 */
#include "array_library.h"
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <numeric>
#include <span>

uint32_t nv_array_summarize(unsigned char const *wire, size_t size, nv_array_summary *output)
{
    if (!wire || !output || size > 9872)
    {
        return 22;
    }
    roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray value{};
    uint32_t error = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
        wire, size, &value);
    if (error)
    {
        return error;
    }
    auto detections = std::span(value.detections.data, value.detections.size);
    nv_array_summary next{};
    next.count = static_cast<uint32_t>(detections.size());
    next.id_sum = std::accumulate(detections.begin(), detections.end(), INT64_C(0),
                                  [](int64_t sum, auto const &detection) { return sum + detection.id; });
    auto bytes = std::span(wire, size);
    next.checksum =
        std::accumulate(bytes.begin(), bytes.end(), UINT32_C(2166136261),
                        [](uint32_t hash, unsigned char byte) { return (hash ^ byte) * UINT32_C(16777619); });
    *output = next;
    return 0;
}
