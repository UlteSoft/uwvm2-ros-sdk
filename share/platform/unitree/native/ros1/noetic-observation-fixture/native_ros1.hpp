/**
 * @file native_ros1.hpp
 * @brief Convert complete installed ROS 1 Unitree messages and canonical values.
 * @details Compile-time field checks retain original scalar types and array shapes. Runtime conversion preserves
 * every declared field, rejects invalid bounds or nonfinite floats, and creates no communication authority.
 */

#pragma once
#include "bounded_records.h"
#include <vector>
#include <array>
#include <string>
#include <type_traits>
#include <utility>
#include <uwvm2/imported/ros/ipc/custom_type.h>
#include <boost/array.hpp>
#include <ros/message_traits.h>
#include <ros/service_traits.h>
#include <unitree_legged_msgs/BmsState.h>
#include <unitree_legged_msgs/Cartesian.h>
#include <unitree_legged_msgs/HighState.h>
#include <unitree_legged_msgs/IMU.h>
#include <unitree_legged_msgs/LowState.h>
#include <unitree_legged_msgs/MotorState.h>
#ifndef UWVM_CUSTOM_BOUNDED_NATIVE_TRAITS
# define UWVM_CUSTOM_BOUNDED_NATIVE_TRAITS

# include "native_constants.hpp"

namespace uwvm2::imported::ros::ipc
{
    template <>
    struct complete_vendor_native_traits<::unitree_legged_msgs::BmsState>
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool enabled = true;

        /**
         * @brief Validate original source-declared constants without constructing a ROS participant.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate();
        }
    };

    template <>
    struct complete_vendor_native_traits<::unitree_legged_msgs::Cartesian>
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool enabled = true;

        /**
         * @brief Validate original source-declared constants without constructing a ROS participant.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate();
        }
    };

    template <>
    struct complete_vendor_native_traits<::unitree_legged_msgs::HighState>
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool enabled = true;

        /**
         * @brief Validate original source-declared constants without constructing a ROS participant.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate();
        }
    };

    template <>
    struct complete_vendor_native_traits<::unitree_legged_msgs::IMU>
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool enabled = true;

        /**
         * @brief Validate original source-declared constants without constructing a ROS participant.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate();
        }
    };

    template <>
    struct complete_vendor_native_traits<::unitree_legged_msgs::LowState>
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool enabled = true;

        /**
         * @brief Validate original source-declared constants without constructing a ROS participant.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate();
        }
    };

    template <>
    struct complete_vendor_native_traits<::unitree_legged_msgs::MotorState>
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool enabled = true;

        /**
         * @brief Validate original source-declared constants without constructing a ROS participant.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate();
        }
    };
}  // namespace uwvm2::imported::ros::ipc

namespace uwvm_custom_bounded_native
{

    /**
     * @brief Borrow one normalized original ROS declaration subsection.
     * @details Both string views refer to immutable program-lifetime literals. This is source metadata, never a
     * native hash algorithm or proof that a communication endpoint exists.
     */
    struct definition_entry
    {
        std::string_view type, fields;
    };

    template <class T>
    struct fixed_shape
    {
        using element = void;
        static constexpr size_t size = 0;
    };

    template <class T, size_t N>
    struct fixed_shape<std::array<T, N>>
    {
        using element = T;
        static constexpr size_t size = N;
    };

    template <class T>
    struct sequence_shape
    {
        using element = void;
        static constexpr bool supported = false;
        static constexpr size_t bound = 0;
    };

    template <class T, class A>
    struct sequence_shape<std::vector<T, A>>
    {
        using element = T;
        static constexpr bool supported = true;
        static constexpr size_t bound = 0;
    };

    template <class T>
    bool native_accessible(T const&) noexcept
    {
        return true;
    }

    template <class T, class = void>
    struct empty_component
    {
        static bool zero(T const&) noexcept
        {
            return true;
        }

        static void initialize(T&) noexcept
        {
        }
    };

    template <class T>
    struct empty_component<T, std::void_t<decltype(std::declval<T&>().structure_needs_at_least_one_member)>>
    {
        using member = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<T&>().structure_needs_at_least_one_member)>>;
        static_assert(std::is_same<member, uint8_t>::value, "official empty component placeholder differs");

        static bool zero(T const& value) noexcept
        {
            return value.structure_needs_at_least_one_member == 0;
        }

        static void initialize(T& value) noexcept
        {
            value.structure_needs_at_least_one_member = 0;
        }
    };

    template <class T>
    struct string_shape
    {
        static constexpr bool supported = false;
    };

    template <class A>
    struct string_shape<std::basic_string<char, std::char_traits<char>, A>>
    {
        static constexpr bool supported = true;
    };
}  // namespace uwvm_custom_bounded_native
#endif
#ifndef UWVM_CUSTOM_BOUNDED_BOOST_TRAITS
# define UWVM_CUSTOM_BOUNDED_BOOST_TRAITS

namespace uwvm_custom_bounded_native
{
    template <class T, size_t N>
    struct fixed_shape<boost::array<T, N>>
    {
        using element = T;
        static constexpr size_t size = N;
    };
}  // namespace uwvm_custom_bounded_native
#endif
namespace uwvm_custom_bounded_native
{

    /**
     * @brief Preserve every original field in one installed native Unitree message.
     * @details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. Only
     * complete validated conversions can be committed to public output; caller owns all resulting storage.
     */
    struct Ros1Unitree_legged_msgsBmsStateCodec
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool complete_vendor_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using Native = ::unitree_legged_msgs::BmsState;
        using Record = roswasmc_bounded_1_unitree_legged_msgs_BmsState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_legged_msgs/BmsState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "8e007c660c590388bca7c2464d80df54";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 34;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().version_h)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().version_l)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bms_status)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().SOC)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_3 = raw_3;
        static_assert(std::is_same<field_3, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().current)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_4 = raw_4;
        static_assert(std::is_same<field_4, int32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_5 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().cycle)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_5 = raw_5;
        static_assert(std::is_same<field_5, uint16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_6 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().BQ_NTC)>>;
        static_assert(fixed_shape<raw_6>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_6 = typename fixed_shape<raw_6>::element;
        static_assert(std::is_same<field_6, int8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_7 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().MCU_NTC)>>;
        static_assert(fixed_shape<raw_7>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_7 = typename fixed_shape<raw_7>::element;
        static_assert(std::is_same<field_7, int8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_8 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().cell_vol)>>;
        static_assert(fixed_shape<raw_8>::size == 10, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_8 = typename fixed_shape<raw_8>::element;
        static_assert(std::is_same<field_8, uint16_t>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate every native field and measure the exact canonical extent.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable installed native message.
         * @param[out] out Exact byte count, committed only after all fields validate.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                n += 1;
            }
            {
                n += 1;
            }
            {
                n += 1;
            }
            {
                n += 1;
            }
            {
                n += 4;
            }
            {
                n += 2;
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 1;
                }
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 1;
                }
            }
            {
                for(size_t i = 0; i < 10; ++i)
                {
                    n += 2;
                }
            }
            if(n > 34)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into an exclusively owned temporary canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] record Private temporary; discard its contents on false.
         * @return True only after complete canonical validation; false exposes no accepted record.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            record.version_h = value.version_h;
            record.version_l = value.version_l;
            record.bms_status = value.bms_status;
            record.SOC = value.SOC;
            record.current = value.current;
            record.cycle = value.cycle;
            for(size_t i = 0; i < 2; ++i)
            {
                record.BQ_NTC[i] = value.BQ_NTC[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                record.MCU_NTC[i] = value.MCU_NTC[i];
            }
            for(size_t i = 0; i < 10; ++i)
            {
                record.cell_vol[i] = value.cell_vol[i];
            }
            return roswasmc_bounded_1_unitree_legged_msgs_BmsState_valid(&record);
        }

        /**
         * @brief Populate every native field from a prevalidated complete canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native dynamic allocations may throw; only the enclosing decoder commits the completed temporary.
         * @param[in] record Complete already validated canonical value.
         * @param[out] value Fresh private native temporary; discard it on false.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            value.version_h = record.version_h;
            value.version_l = record.version_l;
            value.bms_status = record.bms_status;
            value.SOC = record.SOC;
            value.current = record.current;
            value.cycle = record.cycle;
            for(size_t i = 0; i < 2; ++i)
            {
                value.BQ_NTC[i] = record.BQ_NTC[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                value.MCU_NTC[i] = record.MCU_NTC[i];
            }
            for(size_t i = 0; i < 10; ++i)
            {
                value.cell_vol[i] = record.cell_vol[i];
            }
            return true;
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] out Exclusive caller buffer, disjoint from the source record.
         * @param[in] capacity Must equal the measured complete active wire length.
         * @return True after complete output; false for invalid values, overlap, or a nonexact capacity.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if(!to_record(value, record) || roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_1_unitree_legged_msgs_BmsState_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. The sole output allocation may throw; no partial successful vector is committed.
         * @param[in] value Complete immutable native message.
         * @param[out] out Caller-owned vector, replaced only after complete successful encoding.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if(!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_BmsState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_BmsState_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode exactly one complete canonical body into a fresh native message.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native allocation failure may throw before commit.
         * @param[in] bytes Complete immutable input, stable and disjoint from out.
         * @param[in] size Exact body extent; trailing bytes are refused.
         * @param[out] out Caller-owned native value, committed only after complete conversion.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if(roswasmc_bounded_1_unitree_legged_msgs_BmsState_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if(!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr definition_entry definitions[] = {
            {"unitree_legged_msgs/BmsState",
             "uint8 version_h\nuint8 version_l\nuint8 bms_status\nuint8 SOC                  # SOC 0-100%\nint32 current              # mA\nuint16 " "cycle\nint8[2] BQ_NTC             # x1 degrees centigrade\nint8[2] MCU_NTC            # x1 degrees centigrade\nuint16[10] cell_vol        # cell " "voltage mV\n"},
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"version_h",  "uint8",  0,  false, 0, false, 0},
            {"version_l",  "uint8",  0,  false, 0, false, 0},
            {"bms_status", "uint8",  0,  false, 0, false, 0},
            {"SOC",        "uint8",  0,  false, 0, false, 0},
            {"current",    "int32",  0,  false, 0, false, 0},
            {"cycle",      "uint16", 0,  false, 0, false, 0},
            {"BQ_NTC",     "int8",   2,  true,  0, false, 0},
            {"MCU_NTC",    "int8",   2,  true,  0, false, 0},
            {"cell_vol",   "uint16", 10, true,  0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_legged_msgs/BmsState", schema_fields_0, 9},
        };

        /**
         * @brief Return the complete immutable original native declaration schema.
         * @details Every field name, type, array shape, bound, and source constant remains in original order. The
         * returned view borrows program-lifetime descriptor storage and creates no native object or transport
         * authority.
         * @return A non-owning record pointer/count view, valid for program lifetime.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Preserve every original field in one installed native Unitree message.
     * @details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. Only
     * complete validated conversions can be committed to public output; caller owns all resulting storage.
     */
    struct Ros1Unitree_legged_msgsCartesianCodec
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool complete_vendor_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using Native = ::unitree_legged_msgs::Cartesian;
        using Record = roswasmc_bounded_1_unitree_legged_msgs_Cartesian;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_legged_msgs/Cartesian";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "cc153912f1453b708d221682bc23d9ac";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 12;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().x)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().y)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().z)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, float>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate every native field and measure the exact canonical extent.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable installed native message.
         * @param[out] out Exact byte count, committed only after all fields validate.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.x, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.y, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.z, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            if(n > 12)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into an exclusively owned temporary canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] record Private temporary; discard its contents on false.
         * @return True only after complete canonical validation; false exposes no accepted record.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            uwvm_bounded_copy(&record.x, &value.x, 4);
            uwvm_bounded_copy(&record.y, &value.y, 4);
            uwvm_bounded_copy(&record.z, &value.z, 4);
            return roswasmc_bounded_1_unitree_legged_msgs_Cartesian_valid(&record);
        }

        /**
         * @brief Populate every native field from a prevalidated complete canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native dynamic allocations may throw; only the enclosing decoder commits the completed temporary.
         * @param[in] record Complete already validated canonical value.
         * @param[out] value Fresh private native temporary; discard it on false.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            uwvm_bounded_copy(&value.x, &record.x, 4);
            uwvm_bounded_copy(&value.y, &record.y, 4);
            uwvm_bounded_copy(&value.z, &record.z, 4);
            return true;
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] out Exclusive caller buffer, disjoint from the source record.
         * @param[in] capacity Must equal the measured complete active wire length.
         * @return True after complete output; false for invalid values, overlap, or a nonexact capacity.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if(!to_record(value, record) || roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_1_unitree_legged_msgs_Cartesian_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. The sole output allocation may throw; no partial successful vector is committed.
         * @param[in] value Complete immutable native message.
         * @param[out] out Caller-owned vector, replaced only after complete successful encoding.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if(!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_Cartesian_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_Cartesian_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode exactly one complete canonical body into a fresh native message.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native allocation failure may throw before commit.
         * @param[in] bytes Complete immutable input, stable and disjoint from out.
         * @param[in] size Exact body extent; trailing bytes are refused.
         * @param[out] out Caller-owned native value, committed only after complete conversion.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if(roswasmc_bounded_1_unitree_legged_msgs_Cartesian_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if(!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr definition_entry definitions[] = {
            {"unitree_legged_msgs/Cartesian", "float32 x\nfloat32 y\nfloat32 z\n"},
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"x", "float32", 0, false, 0, false, 0},
            {"y", "float32", 0, false, 0, false, 0},
            {"z", "float32", 0, false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_legged_msgs/Cartesian", schema_fields_0, 3},
        };

        /**
         * @brief Return the complete immutable original native declaration schema.
         * @details Every field name, type, array shape, bound, and source constant remains in original order. The
         * returned view borrows program-lifetime descriptor storage and creates no native object or transport
         * authority.
         * @return A non-owning record pointer/count view, valid for program lifetime.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Preserve every original field in one installed native Unitree message.
     * @details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. Only
     * complete validated conversions can be committed to public output; caller owns all resulting storage.
     */
    struct Ros1Unitree_legged_msgsIMUCodec
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool complete_vendor_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using Native = ::unitree_legged_msgs::IMU;
        using Record = roswasmc_bounded_1_unitree_legged_msgs_IMU;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_legged_msgs/IMU";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "c2bcd83820da00fff261b67d6490da58";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 53;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().quaternion)>>;
        static_assert(fixed_shape<raw_0>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = typename fixed_shape<raw_0>::element;
        static_assert(std::is_same<field_0, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().gyroscope)>>;
        static_assert(fixed_shape<raw_1>::size == 3, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = typename fixed_shape<raw_1>::element;
        static_assert(std::is_same<field_1, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().accelerometer)>>;
        static_assert(fixed_shape<raw_2>::size == 3, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_2 = typename fixed_shape<raw_2>::element;
        static_assert(std::is_same<field_2, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().rpy)>>;
        static_assert(fixed_shape<raw_3>::size == 3, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_3 = typename fixed_shape<raw_3>::element;
        static_assert(std::is_same<field_3, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().temperature)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_4 = raw_4;
        static_assert(std::is_same<field_4, int8_t>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate every native field and measure the exact canonical extent.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable installed native message.
         * @param[out] out Exact byte count, committed only after all fields validate.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.quaternion[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                for(size_t i = 0; i < 3; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.gyroscope[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                for(size_t i = 0; i < 3; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.accelerometer[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                for(size_t i = 0; i < 3; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.rpy[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                n += 1;
            }
            if(n > 53)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into an exclusively owned temporary canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] record Private temporary; discard its contents on false.
         * @return True only after complete canonical validation; false exposes no accepted record.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                uwvm_bounded_copy(&record.quaternion[i], &value.quaternion[i], 4);
            }
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&record.gyroscope[i], &value.gyroscope[i], 4);
            }
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&record.accelerometer[i], &value.accelerometer[i], 4);
            }
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&record.rpy[i], &value.rpy[i], 4);
            }
            record.temperature = value.temperature;
            return roswasmc_bounded_1_unitree_legged_msgs_IMU_valid(&record);
        }

        /**
         * @brief Populate every native field from a prevalidated complete canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native dynamic allocations may throw; only the enclosing decoder commits the completed temporary.
         * @param[in] record Complete already validated canonical value.
         * @param[out] value Fresh private native temporary; discard it on false.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                uwvm_bounded_copy(&value.quaternion[i], &record.quaternion[i], 4);
            }
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&value.gyroscope[i], &record.gyroscope[i], 4);
            }
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&value.accelerometer[i], &record.accelerometer[i], 4);
            }
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&value.rpy[i], &record.rpy[i], 4);
            }
            value.temperature = record.temperature;
            return true;
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] out Exclusive caller buffer, disjoint from the source record.
         * @param[in] capacity Must equal the measured complete active wire length.
         * @return True after complete output; false for invalid values, overlap, or a nonexact capacity.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if(!to_record(value, record) || roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_1_unitree_legged_msgs_IMU_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. The sole output allocation may throw; no partial successful vector is committed.
         * @param[in] value Complete immutable native message.
         * @param[out] out Caller-owned vector, replaced only after complete successful encoding.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if(!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_IMU_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_IMU_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode exactly one complete canonical body into a fresh native message.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native allocation failure may throw before commit.
         * @param[in] bytes Complete immutable input, stable and disjoint from out.
         * @param[in] size Exact body extent; trailing bytes are refused.
         * @param[out] out Caller-owned native value, committed only after complete conversion.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if(roswasmc_bounded_1_unitree_legged_msgs_IMU_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if(!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr definition_entry definitions[] = {
            {"unitree_legged_msgs/IMU", "float32[4] quaternion\nfloat32[3] gyroscope\nfloat32[3] accelerometer\nfloat32[3] rpy\nint8 temperature\n"},
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"quaternion",    "float32", 4, true,  0, false, 0},
            {"gyroscope",     "float32", 3, true,  0, false, 0},
            {"accelerometer", "float32", 3, true,  0, false, 0},
            {"rpy",           "float32", 3, true,  0, false, 0},
            {"temperature",   "int8",    0, false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_legged_msgs/IMU", schema_fields_0, 5},
        };

        /**
         * @brief Return the complete immutable original native declaration schema.
         * @details Every field name, type, array shape, bound, and source constant remains in original order. The
         * returned view borrows program-lifetime descriptor storage and creates no native object or transport
         * authority.
         * @return A non-owning record pointer/count view, valid for program lifetime.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Preserve every original field in one installed native Unitree message.
     * @details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. Only
     * complete validated conversions can be committed to public output; caller owns all resulting storage.
     */
    struct Ros1Unitree_legged_msgsMotorStateCodec
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool complete_vendor_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using Native = ::unitree_legged_msgs::MotorState;
        using Record = roswasmc_bounded_1_unitree_legged_msgs_MotorState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_legged_msgs/MotorState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "94c55ee3b7852be2bd437b20ce12a254";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 38;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().mode)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().q)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().dq)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().ddq)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_3 = raw_3;
        static_assert(std::is_same<field_3, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().tauEst)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_4 = raw_4;
        static_assert(std::is_same<field_4, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_5 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().q_raw)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_5 = raw_5;
        static_assert(std::is_same<field_5, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_6 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().dq_raw)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_6 = raw_6;
        static_assert(std::is_same<field_6, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_7 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().ddq_raw)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_7 = raw_7;
        static_assert(std::is_same<field_7, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_8 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().temperature)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_8 = raw_8;
        static_assert(std::is_same<field_8, int8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_9 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().reserve)>>;
        static_assert(fixed_shape<raw_9>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_9 = typename fixed_shape<raw_9>::element;
        static_assert(std::is_same<field_9, uint32_t>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate every native field and measure the exact canonical extent.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable installed native message.
         * @param[out] out Exact byte count, committed only after all fields validate.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                n += 1;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.q, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.dq, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.ddq, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.tauEst, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.q_raw, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.dq_raw, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.ddq_raw, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                n += 1;
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 4;
                }
            }
            if(n > 38)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into an exclusively owned temporary canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] record Private temporary; discard its contents on false.
         * @return True only after complete canonical validation; false exposes no accepted record.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            record.mode = value.mode;
            uwvm_bounded_copy(&record.q, &value.q, 4);
            uwvm_bounded_copy(&record.dq, &value.dq, 4);
            uwvm_bounded_copy(&record.ddq, &value.ddq, 4);
            uwvm_bounded_copy(&record.tauEst, &value.tauEst, 4);
            uwvm_bounded_copy(&record.q_raw, &value.q_raw, 4);
            uwvm_bounded_copy(&record.dq_raw, &value.dq_raw, 4);
            uwvm_bounded_copy(&record.ddq_raw, &value.ddq_raw, 4);
            record.temperature = value.temperature;
            for(size_t i = 0; i < 2; ++i)
            {
                record.reserve[i] = value.reserve[i];
            }
            return roswasmc_bounded_1_unitree_legged_msgs_MotorState_valid(&record);
        }

        /**
         * @brief Populate every native field from a prevalidated complete canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native dynamic allocations may throw; only the enclosing decoder commits the completed temporary.
         * @param[in] record Complete already validated canonical value.
         * @param[out] value Fresh private native temporary; discard it on false.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            value.mode = record.mode;
            uwvm_bounded_copy(&value.q, &record.q, 4);
            uwvm_bounded_copy(&value.dq, &record.dq, 4);
            uwvm_bounded_copy(&value.ddq, &record.ddq, 4);
            uwvm_bounded_copy(&value.tauEst, &record.tauEst, 4);
            uwvm_bounded_copy(&value.q_raw, &record.q_raw, 4);
            uwvm_bounded_copy(&value.dq_raw, &record.dq_raw, 4);
            uwvm_bounded_copy(&value.ddq_raw, &record.ddq_raw, 4);
            value.temperature = record.temperature;
            for(size_t i = 0; i < 2; ++i)
            {
                value.reserve[i] = record.reserve[i];
            }
            return true;
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] out Exclusive caller buffer, disjoint from the source record.
         * @param[in] capacity Must equal the measured complete active wire length.
         * @return True after complete output; false for invalid values, overlap, or a nonexact capacity.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if(!to_record(value, record) || roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_1_unitree_legged_msgs_MotorState_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. The sole output allocation may throw; no partial successful vector is committed.
         * @param[in] value Complete immutable native message.
         * @param[out] out Caller-owned vector, replaced only after complete successful encoding.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if(!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_MotorState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_MotorState_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode exactly one complete canonical body into a fresh native message.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native allocation failure may throw before commit.
         * @param[in] bytes Complete immutable input, stable and disjoint from out.
         * @param[in] size Exact body extent; trailing bytes are refused.
         * @param[out] out Caller-owned native value, committed only after complete conversion.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if(roswasmc_bounded_1_unitree_legged_msgs_MotorState_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if(!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr definition_entry definitions[] = {
            {"unitree_legged_msgs/MotorState",
             "uint8 mode           # motor current mode \nfloat32 q            # motor current position\uff08rad\uff09\nfloat32 dq           # motor current " "speed\uff08rad/s\uff09\nfloat32 ddq          # motor current speed\uff08rad/s\uff09\nfloat32 tauEst       # current estimated output " "torque\uff08N*m\uff09\nfloat32 q_raw        # motor current position\uff08rad\uff09\nfloat32 dq_raw       # motor current " "speed\uff08rad/s\uff09\nfloat32 ddq_raw      # motor current speed\uff08rad/s\uff09\nint8 temperature     # motor temperature\uff08slow " "conduction of temperature leads to lag\uff09\nuint32[2] reserve\n"},
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"mode",        "uint8",   0, false, 0, false, 0},
            {"q",           "float32", 0, false, 0, false, 0},
            {"dq",          "float32", 0, false, 0, false, 0},
            {"ddq",         "float32", 0, false, 0, false, 0},
            {"tauEst",      "float32", 0, false, 0, false, 0},
            {"q_raw",       "float32", 0, false, 0, false, 0},
            {"dq_raw",      "float32", 0, false, 0, false, 0},
            {"ddq_raw",     "float32", 0, false, 0, false, 0},
            {"temperature", "int8",    0, false, 0, false, 0},
            {"reserve",     "uint32",  2, true,  0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_legged_msgs/MotorState", schema_fields_0, 10},
        };

        /**
         * @brief Return the complete immutable original native declaration schema.
         * @details Every field name, type, array shape, bound, and source constant remains in original order. The
         * returned view borrows program-lifetime descriptor storage and creates no native object or transport
         * authority.
         * @return A non-owning record pointer/count view, valid for program lifetime.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Preserve every original field in one installed native Unitree message.
     * @details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. Only
     * complete validated conversions can be committed to public output; caller owns all resulting storage.
     */
    struct Ros1Unitree_legged_msgsHighStateCodec
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool complete_vendor_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using Native = ::unitree_legged_msgs::HighState;
        using Record = roswasmc_bounded_1_unitree_legged_msgs_HighState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_legged_msgs/HighState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "7904f43019dadf7640d573b4c14b9066";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 1087;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().head)>>;
        static_assert(fixed_shape<raw_0>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = typename fixed_shape<raw_0>::element;
        static_assert(std::is_same<field_0, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().levelFlag)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().frameReserve)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().SN)>>;
        static_assert(fixed_shape<raw_3>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_3 = typename fixed_shape<raw_3>::element;
        static_assert(std::is_same<field_3, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().version)>>;
        static_assert(fixed_shape<raw_4>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_4 = typename fixed_shape<raw_4>::element;
        static_assert(std::is_same<field_4, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_5 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bandWidth)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_5 = raw_5;
        static_assert(std::is_same<field_5, uint16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_6 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().imu)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_6 = raw_6;
        static_assert(std::is_same<field_6, ::unitree_legged_msgs::IMU>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_7 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().motorState)>>;
        static_assert(fixed_shape<raw_7>::size == 20, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_7 = typename fixed_shape<raw_7>::element;
        static_assert(std::is_same<field_7, ::unitree_legged_msgs::MotorState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_8 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bms)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_8 = raw_8;
        static_assert(std::is_same<field_8, ::unitree_legged_msgs::BmsState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_9 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().footForce)>>;
        static_assert(fixed_shape<raw_9>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_9 = typename fixed_shape<raw_9>::element;
        static_assert(std::is_same<field_9, int16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_10 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().footForceEst)>>;
        static_assert(fixed_shape<raw_10>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_10 = typename fixed_shape<raw_10>::element;
        static_assert(std::is_same<field_10, int16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_11 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().mode)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_11 = raw_11;
        static_assert(std::is_same<field_11, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_12 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().progress)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_12 = raw_12;
        static_assert(std::is_same<field_12, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_13 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().gaitType)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_13 = raw_13;
        static_assert(std::is_same<field_13, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_14 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().footRaiseHeight)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_14 = raw_14;
        static_assert(std::is_same<field_14, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_15 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().position)>>;
        static_assert(fixed_shape<raw_15>::size == 3, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_15 = typename fixed_shape<raw_15>::element;
        static_assert(std::is_same<field_15, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_16 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bodyHeight)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_16 = raw_16;
        static_assert(std::is_same<field_16, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_17 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().velocity)>>;
        static_assert(fixed_shape<raw_17>::size == 3, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_17 = typename fixed_shape<raw_17>::element;
        static_assert(std::is_same<field_17, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_18 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().yawSpeed)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_18 = raw_18;
        static_assert(std::is_same<field_18, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_19 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().rangeObstacle)>>;
        static_assert(fixed_shape<raw_19>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_19 = typename fixed_shape<raw_19>::element;
        static_assert(std::is_same<field_19, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_20 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().footPosition2Body)>>;
        static_assert(fixed_shape<raw_20>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_20 = typename fixed_shape<raw_20>::element;
        static_assert(std::is_same<field_20, ::unitree_legged_msgs::Cartesian>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_21 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().footSpeed2Body)>>;
        static_assert(fixed_shape<raw_21>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_21 = typename fixed_shape<raw_21>::element;
        static_assert(std::is_same<field_21, ::unitree_legged_msgs::Cartesian>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_22 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().wirelessRemote)>>;
        static_assert(fixed_shape<raw_22>::size == 40, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_22 = typename fixed_shape<raw_22>::element;
        static_assert(std::is_same<field_22, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_23 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().reserve)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_23 = raw_23;
        static_assert(std::is_same<field_23, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_24 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().crc)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_24 = raw_24;
        static_assert(std::is_same<field_24, uint32_t>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate every native field and measure the exact canonical extent.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable installed native message.
         * @param[out] out Exact byte count, committed only after all fields validate.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 1;
                }
            }
            {
                n += 1;
            }
            {
                n += 1;
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 4;
                }
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 4;
                }
            }
            {
                n += 2;
            }
            {
                size_t nested = 0;
                if(!Ros1Unitree_legged_msgsIMUCodec::encoded_size(value.imu, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                for(size_t i = 0; i < 20; ++i)
                {
                    size_t nested = 0;
                    if(!Ros1Unitree_legged_msgsMotorStateCodec::encoded_size(value.motorState[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                size_t nested = 0;
                if(!Ros1Unitree_legged_msgsBmsStateCodec::encoded_size(value.bms, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    n += 2;
                }
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    n += 2;
                }
            }
            {
                n += 1;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.progress, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                n += 1;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.footRaiseHeight, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                for(size_t i = 0; i < 3; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.position[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.bodyHeight, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                for(size_t i = 0; i < 3; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.velocity[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.yawSpeed, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.rangeObstacle[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    size_t nested = 0;
                    if(!Ros1Unitree_legged_msgsCartesianCodec::encoded_size(value.footPosition2Body[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    size_t nested = 0;
                    if(!Ros1Unitree_legged_msgsCartesianCodec::encoded_size(value.footSpeed2Body[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                for(size_t i = 0; i < 40; ++i)
                {
                    n += 1;
                }
            }
            {
                n += 4;
            }
            {
                n += 4;
            }
            if(n > 1087)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into an exclusively owned temporary canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] record Private temporary; discard its contents on false.
         * @return True only after complete canonical validation; false exposes no accepted record.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            for(size_t i = 0; i < 2; ++i)
            {
                record.head[i] = value.head[i];
            }
            record.levelFlag = value.levelFlag;
            record.frameReserve = value.frameReserve;
            for(size_t i = 0; i < 2; ++i)
            {
                record.SN[i] = value.SN[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                record.version[i] = value.version[i];
            }
            record.bandWidth = value.bandWidth;
            if(!Ros1Unitree_legged_msgsIMUCodec::to_record(value.imu, record.imu))
            {
                return false;
            }
            for(size_t i = 0; i < 20; ++i)
            {
                if(!Ros1Unitree_legged_msgsMotorStateCodec::to_record(value.motorState[i], record.motorState[i]))
                {
                    return false;
                }
            }
            if(!Ros1Unitree_legged_msgsBmsStateCodec::to_record(value.bms, record.bms))
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                record.footForce[i] = value.footForce[i];
            }
            for(size_t i = 0; i < 4; ++i)
            {
                record.footForceEst[i] = value.footForceEst[i];
            }
            record.mode = value.mode;
            uwvm_bounded_copy(&record.progress, &value.progress, 4);
            record.gaitType = value.gaitType;
            uwvm_bounded_copy(&record.footRaiseHeight, &value.footRaiseHeight, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&record.position[i], &value.position[i], 4);
            }
            uwvm_bounded_copy(&record.bodyHeight, &value.bodyHeight, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&record.velocity[i], &value.velocity[i], 4);
            }
            uwvm_bounded_copy(&record.yawSpeed, &value.yawSpeed, 4);
            for(size_t i = 0; i < 4; ++i)
            {
                uwvm_bounded_copy(&record.rangeObstacle[i], &value.rangeObstacle[i], 4);
            }
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::to_record(value.footPosition2Body[i], record.footPosition2Body[i]))
                {
                    return false;
                }
            }
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::to_record(value.footSpeed2Body[i], record.footSpeed2Body[i]))
                {
                    return false;
                }
            }
            for(size_t i = 0; i < 40; ++i)
            {
                record.wirelessRemote[i] = value.wirelessRemote[i];
            }
            record.reserve = value.reserve;
            record.crc = value.crc;
            return roswasmc_bounded_1_unitree_legged_msgs_HighState_valid(&record);
        }

        /**
         * @brief Populate every native field from a prevalidated complete canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native dynamic allocations may throw; only the enclosing decoder commits the completed temporary.
         * @param[in] record Complete already validated canonical value.
         * @param[out] value Fresh private native temporary; discard it on false.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            for(size_t i = 0; i < 2; ++i)
            {
                value.head[i] = record.head[i];
            }
            value.levelFlag = record.levelFlag;
            value.frameReserve = record.frameReserve;
            for(size_t i = 0; i < 2; ++i)
            {
                value.SN[i] = record.SN[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                value.version[i] = record.version[i];
            }
            value.bandWidth = record.bandWidth;
            if(!Ros1Unitree_legged_msgsIMUCodec::from_record(record.imu, value.imu))
            {
                return false;
            }
            for(size_t i = 0; i < 20; ++i)
            {
                if(!Ros1Unitree_legged_msgsMotorStateCodec::from_record(record.motorState[i], value.motorState[i]))
                {
                    return false;
                }
            }
            if(!Ros1Unitree_legged_msgsBmsStateCodec::from_record(record.bms, value.bms))
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                value.footForce[i] = record.footForce[i];
            }
            for(size_t i = 0; i < 4; ++i)
            {
                value.footForceEst[i] = record.footForceEst[i];
            }
            value.mode = record.mode;
            uwvm_bounded_copy(&value.progress, &record.progress, 4);
            value.gaitType = record.gaitType;
            uwvm_bounded_copy(&value.footRaiseHeight, &record.footRaiseHeight, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&value.position[i], &record.position[i], 4);
            }
            uwvm_bounded_copy(&value.bodyHeight, &record.bodyHeight, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&value.velocity[i], &record.velocity[i], 4);
            }
            uwvm_bounded_copy(&value.yawSpeed, &record.yawSpeed, 4);
            for(size_t i = 0; i < 4; ++i)
            {
                uwvm_bounded_copy(&value.rangeObstacle[i], &record.rangeObstacle[i], 4);
            }
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::from_record(record.footPosition2Body[i], value.footPosition2Body[i]))
                {
                    return false;
                }
            }
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::from_record(record.footSpeed2Body[i], value.footSpeed2Body[i]))
                {
                    return false;
                }
            }
            for(size_t i = 0; i < 40; ++i)
            {
                value.wirelessRemote[i] = record.wirelessRemote[i];
            }
            value.reserve = record.reserve;
            value.crc = record.crc;
            return true;
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] out Exclusive caller buffer, disjoint from the source record.
         * @param[in] capacity Must equal the measured complete active wire length.
         * @return True after complete output; false for invalid values, overlap, or a nonexact capacity.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if(!to_record(value, record) || roswasmc_bounded_1_unitree_legged_msgs_HighState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_1_unitree_legged_msgs_HighState_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. The sole output allocation may throw; no partial successful vector is committed.
         * @param[in] value Complete immutable native message.
         * @param[out] out Caller-owned vector, replaced only after complete successful encoding.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if(!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_HighState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_HighState_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode exactly one complete canonical body into a fresh native message.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native allocation failure may throw before commit.
         * @param[in] bytes Complete immutable input, stable and disjoint from out.
         * @param[in] size Exact body extent; trailing bytes are refused.
         * @param[out] out Caller-owned native value, committed only after complete conversion.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if(roswasmc_bounded_1_unitree_legged_msgs_HighState_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if(!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr definition_entry
            definitions[] =
                {
                    {"unitree_legged_msgs/HighState",
                     "\nuint8[2] head\nuint8 levelFlag\nuint8 frameReserve\n\nuint32[2] SN\nuint32[2] version\nuint16 bandWidth\nIMU imu\nMotorState[20] " "motorState\nBmsState bms\nint16[4] footForce\nint16[4] footForceEst\nuint8 mode\nfloat32 progress\nuint8 gaitType\t\t   \nfloat32 " "footRaiseHeight\t\t  \nfloat32[3] position \nfloat32 bodyHeight\t\t\t  \nfloat32[3] velocity \nfloat32 yawSpeed\t\t\t\t   \nfloat32[4] " "rangeObstacle\nCartesian[4] footPosition2Body \nCartesian[4] footSpeed2Body\t\nuint8[40] wirelessRemote\nuint32 reserve\n\nuint32 crc\n"                                                                       },
                    {"unitree_legged_msgs/IMU",        "float32[4] quaternion\nfloat32[3] gyroscope\nfloat32[3] accelerometer\nfloat32[3] rpy\nint8 temperature\n"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
                    {"unitree_legged_msgs/MotorState",
                     "uint8 mode           # motor current mode \nfloat32 q            # motor current position\uff08rad\uff09\nfloat32 dq           # motor current " "speed\uff08rad/s\uff09\nfloat32 ddq          # motor current speed\uff08rad/s\uff09\nfloat32 tauEst       # current estimated output " "torque\uff08N*m\uff09\nfloat32 q_raw        # motor current position\uff08rad\uff09\nfloat32 dq_raw       # motor current " "speed\uff08rad/s\uff09\nfloat32 ddq_raw      # motor current speed\uff08rad/s\uff09\nint8 temperature     # motor temperature\uff08slow " "conduction of temperature leads to lag\uff09\nuint32[2] reserve\n"},
                    {"unitree_legged_msgs/BmsState",
                     "uint8 version_h\nuint8 version_l\nuint8 bms_status\nuint8 SOC                  # SOC 0-100%\nint32 current              # mA\nuint16 " "cycle\nint8[2] BQ_NTC             # x1 degrees centigrade\nint8[2] MCU_NTC            # x1 degrees centigrade\nuint16[10] cell_vol        # cell " "voltage mV\n"                                                                                                                                                                                                                                                                                                                           },
                    {"unitree_legged_msgs/Cartesian",  "float32 x\nfloat32 y\nfloat32 z\n"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"head",              "uint8",                          2,  true,  0, false, 0},
            {"levelFlag",         "uint8",                          0,  false, 0, false, 0},
            {"frameReserve",      "uint8",                          0,  false, 0, false, 0},
            {"SN",                "uint32",                         2,  true,  0, false, 0},
            {"version",           "uint32",                         2,  true,  0, false, 0},
            {"bandWidth",         "uint16",                         0,  false, 0, false, 0},
            {"imu",               "unitree_legged_msgs/IMU",        0,  false, 0, false, 0},
            {"motorState",        "unitree_legged_msgs/MotorState", 20, true,  0, false, 0},
            {"bms",               "unitree_legged_msgs/BmsState",   0,  false, 0, false, 0},
            {"footForce",         "int16",                          4,  true,  0, false, 0},
            {"footForceEst",      "int16",                          4,  true,  0, false, 0},
            {"mode",              "uint8",                          0,  false, 0, false, 0},
            {"progress",          "float32",                        0,  false, 0, false, 0},
            {"gaitType",          "uint8",                          0,  false, 0, false, 0},
            {"footRaiseHeight",   "float32",                        0,  false, 0, false, 0},
            {"position",          "float32",                        3,  true,  0, false, 0},
            {"bodyHeight",        "float32",                        0,  false, 0, false, 0},
            {"velocity",          "float32",                        3,  true,  0, false, 0},
            {"yawSpeed",          "float32",                        0,  false, 0, false, 0},
            {"rangeObstacle",     "float32",                        4,  true,  0, false, 0},
            {"footPosition2Body", "unitree_legged_msgs/Cartesian",  4,  true,  0, false, 0},
            {"footSpeed2Body",    "unitree_legged_msgs/Cartesian",  4,  true,  0, false, 0},
            {"wirelessRemote",    "uint8",                          40, true,  0, false, 0},
            {"reserve",           "uint32",                         0,  false, 0, false, 0},
            {"crc",               "uint32",                         0,  false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"quaternion",    "float32", 4, true,  0, false, 0},
            {"gyroscope",     "float32", 3, true,  0, false, 0},
            {"accelerometer", "float32", 3, true,  0, false, 0},
            {"rpy",           "float32", 3, true,  0, false, 0},
            {"temperature",   "int8",    0, false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"mode",        "uint8",   0, false, 0, false, 0},
            {"q",           "float32", 0, false, 0, false, 0},
            {"dq",          "float32", 0, false, 0, false, 0},
            {"ddq",         "float32", 0, false, 0, false, 0},
            {"tauEst",      "float32", 0, false, 0, false, 0},
            {"q_raw",       "float32", 0, false, 0, false, 0},
            {"dq_raw",      "float32", 0, false, 0, false, 0},
            {"ddq_raw",     "float32", 0, false, 0, false, 0},
            {"temperature", "int8",    0, false, 0, false, 0},
            {"reserve",     "uint32",  2, true,  0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_3[] = {
            {"version_h",  "uint8",  0,  false, 0, false, 0},
            {"version_l",  "uint8",  0,  false, 0, false, 0},
            {"bms_status", "uint8",  0,  false, 0, false, 0},
            {"SOC",        "uint8",  0,  false, 0, false, 0},
            {"current",    "int32",  0,  false, 0, false, 0},
            {"cycle",      "uint16", 0,  false, 0, false, 0},
            {"BQ_NTC",     "int8",   2,  true,  0, false, 0},
            {"MCU_NTC",    "int8",   2,  true,  0, false, 0},
            {"cell_vol",   "uint16", 10, true,  0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_4[] = {
            {"x", "float32", 0, false, 0, false, 0},
            {"y", "float32", 0, false, 0, false, 0},
            {"z", "float32", 0, false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_legged_msgs/HighState",  schema_fields_0, 25},
            {"unitree_legged_msgs/IMU",        schema_fields_1, 5 },
            {"unitree_legged_msgs/MotorState", schema_fields_2, 10},
            {"unitree_legged_msgs/BmsState",   schema_fields_3, 9 },
            {"unitree_legged_msgs/Cartesian",  schema_fields_4, 3 },
        };

        /**
         * @brief Return the complete immutable original native declaration schema.
         * @details Every field name, type, array shape, bound, and source constant remains in original order. The
         * returned view borrows program-lifetime descriptor storage and creates no native object or transport
         * authority.
         * @return A non-owning record pointer/count view, valid for program lifetime.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Preserve every original field in one installed native Unitree message.
     * @details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. Only
     * complete validated conversions can be committed to public output; caller owns all resulting storage.
     */
    struct Ros1Unitree_legged_msgsLowStateCodec
    {
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr bool complete_vendor_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using Native = ::unitree_legged_msgs::LowState;
        using Record = roswasmc_bounded_1_unitree_legged_msgs_LowState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_legged_msgs/LowState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "481f8a83f729a25e7cc170da192f80f9";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 1069;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().head)>>;
        static_assert(fixed_shape<raw_0>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = typename fixed_shape<raw_0>::element;
        static_assert(std::is_same<field_0, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().levelFlag)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().frameReserve)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().SN)>>;
        static_assert(fixed_shape<raw_3>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_3 = typename fixed_shape<raw_3>::element;
        static_assert(std::is_same<field_3, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().version)>>;
        static_assert(fixed_shape<raw_4>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_4 = typename fixed_shape<raw_4>::element;
        static_assert(std::is_same<field_4, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_5 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bandWidth)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_5 = raw_5;
        static_assert(std::is_same<field_5, uint16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_6 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().imu)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_6 = raw_6;
        static_assert(std::is_same<field_6, ::unitree_legged_msgs::IMU>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_7 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().motorState)>>;
        static_assert(fixed_shape<raw_7>::size == 20, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_7 = typename fixed_shape<raw_7>::element;
        static_assert(std::is_same<field_7, ::unitree_legged_msgs::MotorState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_8 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bms)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_8 = raw_8;
        static_assert(std::is_same<field_8, ::unitree_legged_msgs::BmsState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_9 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().footForce)>>;
        static_assert(fixed_shape<raw_9>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_9 = typename fixed_shape<raw_9>::element;
        static_assert(std::is_same<field_9, int16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_10 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().footForceEst)>>;
        static_assert(fixed_shape<raw_10>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_10 = typename fixed_shape<raw_10>::element;
        static_assert(std::is_same<field_10, int16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_11 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().tick)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_11 = raw_11;
        static_assert(std::is_same<field_11, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_12 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().wirelessRemote)>>;
        static_assert(fixed_shape<raw_12>::size == 40, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_12 = typename fixed_shape<raw_12>::element;
        static_assert(std::is_same<field_12, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_13 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().reserve)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_13 = raw_13;
        static_assert(std::is_same<field_13, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_14 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().crc)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_14 = raw_14;
        static_assert(std::is_same<field_14, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_15 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().eeForceRaw)>>;
        static_assert(fixed_shape<raw_15>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_15 = typename fixed_shape<raw_15>::element;
        static_assert(std::is_same<field_15, ::unitree_legged_msgs::Cartesian>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_16 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().eeForce)>>;
        static_assert(fixed_shape<raw_16>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_16 = typename fixed_shape<raw_16>::element;
        static_assert(std::is_same<field_16, ::unitree_legged_msgs::Cartesian>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_17 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().position)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_17 = raw_17;
        static_assert(std::is_same<field_17, ::unitree_legged_msgs::Cartesian>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_18 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().velocity)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_18 = raw_18;
        static_assert(std::is_same<field_18, ::unitree_legged_msgs::Cartesian>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_19 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().velocity_w)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_19 = raw_19;
        static_assert(std::is_same<field_19, ::unitree_legged_msgs::Cartesian>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate every native field and measure the exact canonical extent.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable installed native message.
         * @param[out] out Exact byte count, committed only after all fields validate.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 1;
                }
            }
            {
                n += 1;
            }
            {
                n += 1;
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 4;
                }
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 4;
                }
            }
            {
                n += 2;
            }
            {
                size_t nested = 0;
                if(!Ros1Unitree_legged_msgsIMUCodec::encoded_size(value.imu, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                for(size_t i = 0; i < 20; ++i)
                {
                    size_t nested = 0;
                    if(!Ros1Unitree_legged_msgsMotorStateCodec::encoded_size(value.motorState[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                size_t nested = 0;
                if(!Ros1Unitree_legged_msgsBmsStateCodec::encoded_size(value.bms, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    n += 2;
                }
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    n += 2;
                }
            }
            {
                n += 4;
            }
            {
                for(size_t i = 0; i < 40; ++i)
                {
                    n += 1;
                }
            }
            {
                n += 4;
            }
            {
                n += 4;
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    size_t nested = 0;
                    if(!Ros1Unitree_legged_msgsCartesianCodec::encoded_size(value.eeForceRaw[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                for(size_t i = 0; i < 4; ++i)
                {
                    size_t nested = 0;
                    if(!Ros1Unitree_legged_msgsCartesianCodec::encoded_size(value.eeForce[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                size_t nested = 0;
                if(!Ros1Unitree_legged_msgsCartesianCodec::encoded_size(value.position, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                size_t nested = 0;
                if(!Ros1Unitree_legged_msgsCartesianCodec::encoded_size(value.velocity, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                size_t nested = 0;
                if(!Ros1Unitree_legged_msgsCartesianCodec::encoded_size(value.velocity_w, nested))
                {
                    return false;
                }
                n += nested;
            }
            if(n > 1069)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into an exclusively owned temporary canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] record Private temporary; discard its contents on false.
         * @return True only after complete canonical validation; false exposes no accepted record.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            for(size_t i = 0; i < 2; ++i)
            {
                record.head[i] = value.head[i];
            }
            record.levelFlag = value.levelFlag;
            record.frameReserve = value.frameReserve;
            for(size_t i = 0; i < 2; ++i)
            {
                record.SN[i] = value.SN[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                record.version[i] = value.version[i];
            }
            record.bandWidth = value.bandWidth;
            if(!Ros1Unitree_legged_msgsIMUCodec::to_record(value.imu, record.imu))
            {
                return false;
            }
            for(size_t i = 0; i < 20; ++i)
            {
                if(!Ros1Unitree_legged_msgsMotorStateCodec::to_record(value.motorState[i], record.motorState[i]))
                {
                    return false;
                }
            }
            if(!Ros1Unitree_legged_msgsBmsStateCodec::to_record(value.bms, record.bms))
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                record.footForce[i] = value.footForce[i];
            }
            for(size_t i = 0; i < 4; ++i)
            {
                record.footForceEst[i] = value.footForceEst[i];
            }
            record.tick = value.tick;
            for(size_t i = 0; i < 40; ++i)
            {
                record.wirelessRemote[i] = value.wirelessRemote[i];
            }
            record.reserve = value.reserve;
            record.crc = value.crc;
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::to_record(value.eeForceRaw[i], record.eeForceRaw[i]))
                {
                    return false;
                }
            }
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::to_record(value.eeForce[i], record.eeForce[i]))
                {
                    return false;
                }
            }
            if(!Ros1Unitree_legged_msgsCartesianCodec::to_record(value.position, record.position))
            {
                return false;
            }
            if(!Ros1Unitree_legged_msgsCartesianCodec::to_record(value.velocity, record.velocity))
            {
                return false;
            }
            if(!Ros1Unitree_legged_msgsCartesianCodec::to_record(value.velocity_w, record.velocity_w))
            {
                return false;
            }
            return roswasmc_bounded_1_unitree_legged_msgs_LowState_valid(&record);
        }

        /**
         * @brief Populate every native field from a prevalidated complete canonical record.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native dynamic allocations may throw; only the enclosing decoder commits the completed temporary.
         * @param[in] record Complete already validated canonical value.
         * @param[out] value Fresh private native temporary; discard it on false.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if(!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            for(size_t i = 0; i < 2; ++i)
            {
                value.head[i] = record.head[i];
            }
            value.levelFlag = record.levelFlag;
            value.frameReserve = record.frameReserve;
            for(size_t i = 0; i < 2; ++i)
            {
                value.SN[i] = record.SN[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                value.version[i] = record.version[i];
            }
            value.bandWidth = record.bandWidth;
            if(!Ros1Unitree_legged_msgsIMUCodec::from_record(record.imu, value.imu))
            {
                return false;
            }
            for(size_t i = 0; i < 20; ++i)
            {
                if(!Ros1Unitree_legged_msgsMotorStateCodec::from_record(record.motorState[i], value.motorState[i]))
                {
                    return false;
                }
            }
            if(!Ros1Unitree_legged_msgsBmsStateCodec::from_record(record.bms, value.bms))
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                value.footForce[i] = record.footForce[i];
            }
            for(size_t i = 0; i < 4; ++i)
            {
                value.footForceEst[i] = record.footForceEst[i];
            }
            value.tick = record.tick;
            for(size_t i = 0; i < 40; ++i)
            {
                value.wirelessRemote[i] = record.wirelessRemote[i];
            }
            value.reserve = record.reserve;
            value.crc = record.crc;
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::from_record(record.eeForceRaw[i], value.eeForceRaw[i]))
                {
                    return false;
                }
            }
            for(size_t i = 0; i < 4; ++i)
            {
                if(!Ros1Unitree_legged_msgsCartesianCodec::from_record(record.eeForce[i], value.eeForce[i]))
                {
                    return false;
                }
            }
            if(!Ros1Unitree_legged_msgsCartesianCodec::from_record(record.position, value.position))
            {
                return false;
            }
            if(!Ros1Unitree_legged_msgsCartesianCodec::from_record(record.velocity, value.velocity))
            {
                return false;
            }
            if(!Ros1Unitree_legged_msgsCartesianCodec::from_record(record.velocity_w, value.velocity_w))
            {
                return false;
            }
            return true;
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete native message without exposing a canonical prefix.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message, borrowed through return.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return.
         * @param[in] value Complete immutable native message.
         * @param[out] out Exclusive caller buffer, disjoint from the source record.
         * @param[in] capacity Must equal the measured complete active wire length.
         * @return True after complete output; false for invalid values, overlap, or a nonexact capacity.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if(!to_record(value, record) || roswasmc_bounded_1_unitree_legged_msgs_LowState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_1_unitree_legged_msgs_LowState_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode every native field as one complete canonical body.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. The sole output allocation may throw; no partial successful vector is committed.
         * @param[in] value Complete immutable native message.
         * @param[out] out Caller-owned vector, replaced only after complete successful encoding.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if(!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_unitree_legged_msgs_LowState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_1_unitree_legged_msgs_LowState_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode exactly one complete canonical body into a fresh native message.
         * @details Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until
         * return. Native allocation failure may throw before commit.
         * @param[in] bytes Complete immutable input, stable and disjoint from out.
         * @param[in] size Exact body extent; trailing bytes are refused.
         * @param[out] out Caller-owned native value, committed only after complete conversion.
         * @return True on complete validation, otherwise false; no transport status is implied.
         * @ownership Caller retains inputs and exclusively owns every committed output.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if(roswasmc_bounded_1_unitree_legged_msgs_LowState_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if(!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr definition_entry definitions[] = {
            {"unitree_legged_msgs/LowState",
             "\nuint8[2] head\nuint8 levelFlag\nuint8 frameReserve\n\nuint32[2] SN\nuint32[2] version\nuint16 bandWidth\nIMU imu\nMotorState[20] " "motorState\nBmsState bms\nint16[4] footForce\t\nint16[4] footForceEst\t\nuint32 tick\t\t\t\t\t\t\nuint8[40] wirelessRemote \nuint32 " "reserve\nuint32 crc\n\n# Old version Aliengo does not have:\nCartesian[4] eeForceRaw\nCartesian[4] eeForce          #it's a 1-DOF force infact, " "but we use 3-DOF here just for visualization \nCartesian position            # will delete\nCartesian velocity            # will " "delete\nCartesian velocity_w            # will delete\n\n"      },
            {"unitree_legged_msgs/IMU",        "float32[4] quaternion\nfloat32[3] gyroscope\nfloat32[3] accelerometer\nfloat32[3] rpy\nint8 temperature\n"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        },
            {"unitree_legged_msgs/MotorState",
             "uint8 mode           # motor current mode \nfloat32 q            # motor current position\uff08rad\uff09\nfloat32 dq           # motor current " "speed\uff08rad/s\uff09\nfloat32 ddq          # motor current speed\uff08rad/s\uff09\nfloat32 tauEst       # current estimated output " "torque\uff08N*m\uff09\nfloat32 q_raw        # motor current position\uff08rad\uff09\nfloat32 dq_raw       # motor current " "speed\uff08rad/s\uff09\nfloat32 ddq_raw      # motor current speed\uff08rad/s\uff09\nint8 temperature     # motor temperature\uff08slow " "conduction of temperature leads to lag\uff09\nuint32[2] reserve\n"},
            {"unitree_legged_msgs/BmsState",
             "uint8 version_h\nuint8 version_l\nuint8 bms_status\nuint8 SOC                  # SOC 0-100%\nint32 current              # mA\nuint16 " "cycle\nint8[2] BQ_NTC             # x1 degrees centigrade\nint8[2] MCU_NTC            # x1 degrees centigrade\nuint16[10] cell_vol        # cell " "voltage mV\n"                                                                                                                                                                                                                                                                                                                           },
            {"unitree_legged_msgs/Cartesian",  "float32 x\nfloat32 y\nfloat32 z\n"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"head",           "uint8",                          2,  true,  0, false, 0},
            {"levelFlag",      "uint8",                          0,  false, 0, false, 0},
            {"frameReserve",   "uint8",                          0,  false, 0, false, 0},
            {"SN",             "uint32",                         2,  true,  0, false, 0},
            {"version",        "uint32",                         2,  true,  0, false, 0},
            {"bandWidth",      "uint16",                         0,  false, 0, false, 0},
            {"imu",            "unitree_legged_msgs/IMU",        0,  false, 0, false, 0},
            {"motorState",     "unitree_legged_msgs/MotorState", 20, true,  0, false, 0},
            {"bms",            "unitree_legged_msgs/BmsState",   0,  false, 0, false, 0},
            {"footForce",      "int16",                          4,  true,  0, false, 0},
            {"footForceEst",   "int16",                          4,  true,  0, false, 0},
            {"tick",           "uint32",                         0,  false, 0, false, 0},
            {"wirelessRemote", "uint8",                          40, true,  0, false, 0},
            {"reserve",        "uint32",                         0,  false, 0, false, 0},
            {"crc",            "uint32",                         0,  false, 0, false, 0},
            {"eeForceRaw",     "unitree_legged_msgs/Cartesian",  4,  true,  0, false, 0},
            {"eeForce",        "unitree_legged_msgs/Cartesian",  4,  true,  0, false, 0},
            {"position",       "unitree_legged_msgs/Cartesian",  0,  false, 0, false, 0},
            {"velocity",       "unitree_legged_msgs/Cartesian",  0,  false, 0, false, 0},
            {"velocity_w",     "unitree_legged_msgs/Cartesian",  0,  false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"quaternion",    "float32", 4, true,  0, false, 0},
            {"gyroscope",     "float32", 3, true,  0, false, 0},
            {"accelerometer", "float32", 3, true,  0, false, 0},
            {"rpy",           "float32", 3, true,  0, false, 0},
            {"temperature",   "int8",    0, false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"mode",        "uint8",   0, false, 0, false, 0},
            {"q",           "float32", 0, false, 0, false, 0},
            {"dq",          "float32", 0, false, 0, false, 0},
            {"ddq",         "float32", 0, false, 0, false, 0},
            {"tauEst",      "float32", 0, false, 0, false, 0},
            {"q_raw",       "float32", 0, false, 0, false, 0},
            {"dq_raw",      "float32", 0, false, 0, false, 0},
            {"ddq_raw",     "float32", 0, false, 0, false, 0},
            {"temperature", "int8",    0, false, 0, false, 0},
            {"reserve",     "uint32",  2, true,  0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_3[] = {
            {"version_h",  "uint8",  0,  false, 0, false, 0},
            {"version_l",  "uint8",  0,  false, 0, false, 0},
            {"bms_status", "uint8",  0,  false, 0, false, 0},
            {"SOC",        "uint8",  0,  false, 0, false, 0},
            {"current",    "int32",  0,  false, 0, false, 0},
            {"cycle",      "uint16", 0,  false, 0, false, 0},
            {"BQ_NTC",     "int8",   2,  true,  0, false, 0},
            {"MCU_NTC",    "int8",   2,  true,  0, false, 0},
            {"cell_vol",   "uint16", 10, true,  0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_4[] = {
            {"x", "float32", 0, false, 0, false, 0},
            {"y", "float32", 0, false, 0, false, 0},
            {"z", "float32", 0, false, 0, false, 0}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_legged_msgs/LowState",   schema_fields_0, 20},
            {"unitree_legged_msgs/IMU",        schema_fields_1, 5 },
            {"unitree_legged_msgs/MotorState", schema_fields_2, 10},
            {"unitree_legged_msgs/BmsState",   schema_fields_3, 9 },
            {"unitree_legged_msgs/Cartesian",  schema_fields_4, 3 },
        };

        /**
         * @brief Return the complete immutable original native declaration schema.
         * @details Every field name, type, array shape, bound, and source constant remains in original order. The
         * returned view borrows program-lifetime descriptor storage and creates no native object or transport
         * authority.
         * @return A non-owning record pointer/count view, valid for program lifetime.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };
}  // namespace uwvm_custom_bounded_native

#define UWVM_ROS_CUSTOM_ROS1_TYPES(M)                                                                                                                          \
    M(::unitree_legged_msgs::HighState,                                                                                                                        \
      "unitree_legged_msgs/HighState",                                                                                                                         \
      "7904f43019dadf7640d573b4c14b9066",                                                                                                                      \
      "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d",                                                                             \
      1087,                                                                                                                                                    \
      ::uwvm_custom_bounded_native::Ros1Unitree_legged_msgsHighStateCodec)                                                                                     \
    M(::unitree_legged_msgs::LowState,                                                                                                                         \
      "unitree_legged_msgs/LowState",                                                                                                                          \
      "481f8a83f729a25e7cc170da192f80f9",                                                                                                                      \
      "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0",                                                                             \
      1069,                                                                                                                                                    \
      ::uwvm_custom_bounded_native::Ros1Unitree_legged_msgsLowStateCodec)                                                                                      \
    M(::unitree_legged_msgs::MotorState,                                                                                                                       \
      "unitree_legged_msgs/MotorState",                                                                                                                        \
      "94c55ee3b7852be2bd437b20ce12a254",                                                                                                                      \
      "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf",                                                                             \
      38,                                                                                                                                                      \
      ::uwvm_custom_bounded_native::Ros1Unitree_legged_msgsMotorStateCodec)
#define UWVM_ROS_CUSTOM_ROS1_SERVICE_TYPES(M)
#define UWVM_ROS_CUSTOM_ROS1_ACTION_TYPES(M)
#define UWVM_ROS_CUSTOM_ROS1_TOPIC_TYPES(M) UWVM_ROS_CUSTOM_ROS1_TYPES(M)
