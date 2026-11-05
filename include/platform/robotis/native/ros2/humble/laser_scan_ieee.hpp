/** @file
 * @brief Complete IEEE binary32 LaserScan adapter for the explicit Humble profile.
 * @details Include after the same-domain generated native_ros2.hpp and manifest.
 * The generated finite codec retains the original native type/field proof; this
 * separate codec changes only the explicitly identified floating wire domain.
 * Every binary32 bit pattern is valid here, including NaN and both infinities.
 * Integer wire nodes check those exact four bytes without numeric conversion.
 * This header registers no endpoint and supplies no guest authority.
 */
#pragma once
#include <bit>
#include <cstring>
#include <limits>
#include <cstdint>
#include <vector>
#include <utility>

namespace uwvm_robotis_ieee
{
    namespace ipc = ::uwvm2::imported::ros::ipc;
    struct LaserScan : ::uwvm_custom_bounded_native::Ros2Sensor_msgsMsgLaserScanCodec
    {
        static constexpr char const* codec_identity =
            "UWVMROS1_118b67e7232c46ba3857bb5d896af6d174546485a98284b33d0fb557ec203024";
        static_assert(sizeof(float)==4 && std::numeric_limits<float>::is_iec559);
        static_assert(wire_bytes==8368);

        /** Validate every variable extent before allocation or output access. */
        static bool encoded_size(Native const& value, std::size_t& out) noexcept
        {
            if(value.header.frame_id.size()>128 || value.ranges.size()>1024 ||
               value.intensities.size()>1024 ||
               !ipc::custom_wire_utf8(reinterpret_cast<std::uint8_t const*>(value.header.frame_id.data()),
                                      value.header.frame_id.size())) return false;
            out=48+value.header.frame_id.size()+4*(value.ranges.size()+value.intensities.size());
            return true;
        }
        static bool valid(Native const& value) noexcept {std::size_t n{};return encoded_size(value,n);}
        static bool validate(Native const& value) noexcept {return valid(value);}

        static bool overlap(void const* a, std::size_t an, void const* b, std::size_t bn) noexcept
        {
            if(!an || !bn) return false;
            auto x=reinterpret_cast<std::uintptr_t>(a), y=reinterpret_cast<std::uintptr_t>(b);
            return x<=y ? y-x<an : x-y<bn;
        }
        static bool overlaps_native(void const* bytes, std::size_t size, Native const& value) noexcept
        {
            return overlap(bytes,size,&value,sizeof(value)) ||
                overlap(bytes,size,value.header.frame_id.data(),value.header.frame_id.size()) ||
                overlap(bytes,size,value.ranges.data(),value.ranges.size()*sizeof(float)) ||
                overlap(bytes,size,value.intensities.data(),value.intensities.size()*sizeof(float));
        }
        /** Exact-capacity output is committed only after all validation. */
        static bool encode(Native const& value, std::uint8_t* out, std::size_t capacity)
        {
            std::size_t size{};
            if(!encoded_size(value,size) || size!=capacity || !out || overlaps_native(out,size,value)) return false;
            std::size_t at{};
            auto word=[&](std::uint32_t bits) {
                for(unsigned j{};j!=4;++j) out[at++]=static_cast<std::uint8_t>(bits>>(8*j));
            };
            auto scalar=[&](float x) {word(std::bit_cast<std::uint32_t>(x));};
            word(std::bit_cast<std::uint32_t>(value.header.stamp.sec));word(value.header.stamp.nanosec);
            word(static_cast<std::uint32_t>(value.header.frame_id.size()));
            std::memcpy(out+at,value.header.frame_id.data(),value.header.frame_id.size());at+=value.header.frame_id.size();
            scalar(value.angle_min);scalar(value.angle_max);scalar(value.angle_increment);
            scalar(value.time_increment);scalar(value.scan_time);scalar(value.range_min);scalar(value.range_max);
            word(static_cast<std::uint32_t>(value.ranges.size()));for(float x:value.ranges) scalar(x);
            word(static_cast<std::uint32_t>(value.intensities.size()));for(float x:value.intensities) scalar(x);
            return at==size;
        }
        static bool encode(Native const& value, std::vector<std::uint8_t>& out)
        {
            std::size_t size{};if(!encoded_size(value,size)) return false;
            std::vector<std::uint8_t> next(size);
            if(!encode(value,next.data(),next.size())) return false;
            out=std::move(next);return true;
        }
        /** Validate the full wire grammar before any sequence allocation.
         * A failed decode leaves the destination unchanged. */
        static bool decode(std::uint8_t const* bytes, std::size_t size, Native& out)
        {
            if(!ipc::validate_custom_wire(ipc::custom_schema_Ros2Sensor_msgsMsgLaserScan,bytes,size) ||
               overlaps_native(bytes,size,out)) return false;
            Native next{};std::size_t at{};
            auto word=[&]() {auto x=static_cast<std::uint32_t>(ipc::custom_wire_bits(bytes+at,4));at+=4;return x;};
            auto scalar=[&]() {return std::bit_cast<float>(word());};
            next.header.stamp.sec=std::bit_cast<std::int32_t>(word());next.header.stamp.nanosec=word();
            auto count=word();next.header.frame_id.assign(reinterpret_cast<char const*>(bytes+at),count);at+=count;
            next.angle_min=scalar();next.angle_max=scalar();next.angle_increment=scalar();
            next.time_increment=scalar();next.scan_time=scalar();next.range_min=scalar();next.range_max=scalar();
            count=word();next.ranges.resize(count);for(float& x:next.ranges)x=scalar();
            count=word();next.intensities.resize(count);for(float& x:next.intensities)x=scalar();
            if(at!=size)return false;
            out=std::move(next);return true;
        }
    };
}
