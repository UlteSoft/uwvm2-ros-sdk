/** One complete standard JointState to an explicitly selected simulation topic.
 * Does not create a real robot owner, mode switch or safety-stop capability. */
#include <array>
#include <fast_io.h>
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
 * @brief Prepare and publish one complete named simulation JointState command.
 * @details Positive mode reads a four-byte little-endian length and the entire
 * canonical value (<=16384 bytes), validates before alias open, and requires all
 * position/velocity/effort arrays to cover every name. The explicit native-bound
 * publish policy and separately enabled simulation owner admit the effect; no
 * real robot, mode-switch or stop authority follows. C++20+ command startup and
 * outer finite ownership remain required for blocking stdio/native work.
 * @return Default: 0 only for expected unopened denial 13. Positive: first input,
 * decode, quota, publish, close or output error; successful publication alone
 * does not prove that the native simulated articulation applied the command.
 * @see humanoid_io::little32
 * @see README.xmake.md
 */
int main()
{
    if(uwvm_ros2_abi_version() != 1)
        return 95;
    roswasmc_context context{roswasmc_ros2_backend()};
    // The whole private value is prepared before any positive capability open.
    Value value{};
    std::array<unsigned char, 16384> bytes{};
    unsigned char length[4]{};
    std::uint32_t primary{};
    if(UWVM_NVIDIA_POSITIVE)
    {
        primary = humanoid_io::input(length, 4);
        if(primary)
            return primary;
        auto n = humanoid_io::little32(length);
        if(!n || n > bytes.size() || n > roswasmcpp::Codec<Value>::max_wire_bytes)
            return 90;
        primary = humanoid_io::input(bytes.data(), n);
        if(primary)
            return primary;
        if(!roswasmcpp::Codec<Value>::decode({bytes.data(), n}, value))
            return 22;
        // This authored application selects all three arrays for every named
        // joint. Sparse native commands need a separately qualified application
        // profile; this constraint does not redefine the native JointState API.
        if(!value.name.size || value.position.size != value.name.size || value.velocity.size != value.name.size || value.effort.size != value.name.size)
            return 22;
        for(std::size_t i{}; i < value.name.size; ++i)
        {
            auto text = fast_io::concat_std("joint=",
                                            std::string_view{value.name.data[i].data, value.name.data[i].size},
                                            " q=",
                                            value.position.data[i],
                                            " v=",
                                            value.velocity.data[i],
                                            " effort=",
                                            value.effort.data[i],
                                            "\n");
            if(auto e = humanoid_io::output(text.data(), text.size()))
                return e;
        }
    }
    roswasmcpp::Publisher<Value> p{context, "nvidia-sim-joint-command"};
    primary = p.error();
    if(!UWVM_NVIDIA_POSITIVE)
    {
        if(primary == 13 && !p.is_open())
            return 0;
        if(p.is_open())
            p.close();
        return 22;
    }
    if(!primary)
        primary = p.publish(value);
    auto cleanup = p.close();
    auto report = fast_io::concat_std("SIM_COMMAND primary=", primary, " close=", cleanup, "\n");
    auto out = humanoid_io::output(report.data(), report.size());
    return primary ? primary : cleanup ? cleanup : out;
}
