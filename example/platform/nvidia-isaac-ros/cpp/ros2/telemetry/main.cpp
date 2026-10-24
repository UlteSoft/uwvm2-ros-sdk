/** Actual Wasm ROS2 ABI81 -> fully generated AprilTag records. No GPU pointer. */
#include <new>
#include <nvidia-isaac-ros/cpp/full_values.hpp>
#include <nvidia-isaac-ros/cpp/ros2/isaac-ros-complete/bounded_records.hpp>
#include <ros2/c/roswasm/ros2.h>
#ifndef UWVM_NVIDIA_POSITIVE
# define UWVM_NVIDIA_POSITIVE 0
#endif
static_assert(UWVM_NVIDIA_POSITIVE == 0 || UWVM_NVIDIA_POSITIVE == 1);
using Value = uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray;

/**
 * @brief Observe complete typed AprilTag detections or verify default denial.
 * @details A positive artifact needs independent exact topic.subscribe identity,
 * quotas and loopback Gateway/native detector admission. Each stdin R requests
 * one poll, at most 64, while the callback prints every complete array field.
 * This command never acquires GPU/robot authority. Native/stdin blocking still
 * requires an outer finite process owner; no cancellation guarantee is inferred.
 * @return Default artifact: 0 only for denied unopened subscription (13).
 * Positive artifact: primary error, then close error, then checked output status;
 * 110 means no complete observation within the finite admitted polls.
 * @see nvidia_values::detections
 * @see README.xmake.md
 */
int main()
{
    if(uwvm_ros2_abi_version() != 1)
        return 95;
    roswasmc_context context{roswasmc_ros2_backend()};
    roswasmcpp::Subscription<Value> s{context, "nvidia-apriltags", roswasmcpp::Codec<Value>::max_wire_bytes};
    auto primary = s.error();
    if(!UWVM_NVIDIA_POSITIVE)
    {
        if(primary == 13 && !s.is_open())
            return 0;
        if(s.is_open())
            s.close();
        return 22;
    }
    if(primary)
        return primary;
    unsigned received{};
    s.on_message(
        [&](Value const& value)
        {
#if defined(__cpp_exceptions)
            try
            {
#endif
                primary = nvidia_values::detections(value);
                if(!primary)
                    ++received;
#if defined(__cpp_exceptions)
            }
            catch(std::bad_alloc const&)
            {
                primary = 12;
            }
            catch(...)
            {
                primary = 22;
            }
#endif
        });
    // Actual caller-driven finite observations, not iterations pretending to be ns.
    for(unsigned i{}; !primary && !received && i < 64; ++i)
    {
        char command{};
        primary = humanoid_io::input(&command, 1);
        if(primary || command != 'R')
        {
            if(!primary)
                primary = 22;
            break;
        }
        auto n = s.poll_once();
        if(!primary && n != 11)
            primary = n;
    }
    if(!primary && !received)
        primary = 110;
    auto cleanup = s.close();
    auto out = nvidia_values::line("primary=", primary, " close=", cleanup, " rollback=", s.rollback_error());
    return primary ? primary : cleanup ? cleanup : out;
}
