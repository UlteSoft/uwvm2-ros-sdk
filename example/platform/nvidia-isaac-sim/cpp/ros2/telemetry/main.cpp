#include <fast_io.h>
#include <new>
#include <nvidia-isaac-sim/cpp/ros2/isaac-sim-complete/bounded_records.hpp>
#include <nvidia/cpp/support/basic_io.hpp>
#include <ros2/c/roswasm/ros2.h>
#include <string_view>
#ifndef UWVM_NVIDIA_POSITIVE
# define UWVM_NVIDIA_POSITIVE 0
#endif
static_assert(UWVM_NVIDIA_POSITIVE == 0 || UWVM_NVIDIA_POSITIVE == 1);
using Value = uwvm_custom::Ros2Sensor_msgsMsgJointState;

/**
 * @brief Observe every field of a simulation JointState or verify default denial.
 * @details Positive execution requires the actual native-bound type, exact alias,
 * topic.subscribe policy, finite quotas and loopback Gateway/Sim owner. Each
 * stdin R offers one actual poll (maximum 64); callback output retains the full
 * Header and every name/position/velocity/effort value. No simulator command or
 * physical robot authority is granted. Requires C++20+ and finite outer ownership.
 * @return Default: 0 only for expected unopened denial 13. Positive: primary or
 * cleanup status, with 110 when no complete sample is observed in the poll cap.
 * @see humanoid_io::input
 * @see README.xmake.md
 */
int main()
{
    if(uwvm_ros2_abi_version() != 1)
        return 95;
    roswasmc_context c{roswasmc_ros2_backend()};
    roswasmcpp::Subscription<Value> s{c, "nvidia-sim-joint-state", roswasmcpp::Codec<Value>::max_wire_bytes};
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
    unsigned count{};
    s.on_message(
        [&](Value const& v)
        {
#if defined(__cpp_exceptions)
            try
            {
#endif
                auto h = fast_io::concat_std("sec=",
                                             v.header.stamp.sec,
                                             " ns=",
                                             v.header.stamp.nanosec,
                                             " frame=",
                                             std::string_view{v.header.frame_id.data, v.header.frame_id.size},
                                             "\n");
                primary = humanoid_io::output(h.data(), h.size());
                for(std::size_t i{}; !primary && i < v.name.size; ++i)
                {
                    auto t = fast_io::concat_std("name=", std::string_view{v.name.data[i].data, v.name.data[i].size}, "\n");
                    primary = humanoid_io::output(t.data(), t.size());
                }
                auto values = [&](auto const& a)
                {
                    for(std::size_t i{}; !primary && i < a.size; ++i)
                    {
                        auto t = fast_io::concat_std(i, "=", a.data[i], "\n");
                        primary = humanoid_io::output(t.data(), t.size());
                    }
                };
                values(v.position);
                values(v.velocity);
                values(v.effort);
                if(!primary)
                    ++count;
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
    for(unsigned i{}; !primary && !count && i < 64; ++i)
    {
        char gate{};
        primary = humanoid_io::input(&gate, 1);
        if(primary || gate != 'R')
        {
            if(!primary)
                primary = 22;
            break;
        }
        auto n = s.poll_once();
        if(!primary && n != 11)
            primary = n;
    }
    if(!primary && !count)
        primary = 110;
    auto cleanup = s.close();
    return primary ? primary : cleanup;
}
