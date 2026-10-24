/** @file C++20 typed bounded canonical records, independent of native ROS libraries.
 * Includes use the existing roswasmcpp Publisher/Subscription codecs and do not grant
 * aliases. Custom Service/Action component codecs also accept the raw typed RPC facade. */
#pragma once
#include <platform/trossen/c/ros1/trossen-ros1-manipulators-kinetic-complete/bounded_records.h>
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
    /** @brief Complete bounded guest value for interbotix_uxarm_joy/ArmJoy. */
    using Ros1Interbotix_uxarm_joyArmJoy = roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy;
}  // namespace uwvm_custom

namespace roswasmcpp
{
    /** @brief Checked codec for interbotix_uxarm_joy/ArmJoy; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy>
    {
        static constexpr size_t max_wire_bytes = 12;
        static constexpr char const* codec_identity = "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53";

        static bool encode(uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy& out)
        {
            return !roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };
}  // namespace roswasmcpp
