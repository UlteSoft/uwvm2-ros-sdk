/**
 * @file native_ros2.hpp
 * @brief Convert complete installed ROS 2 Unitree messages and canonical values.
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

#if __has_include(<rosidl_runtime_cpp/bounded_vector.hpp>)
# include <rosidl_runtime_cpp/bounded_vector.hpp>
#elif __has_include(<rosidl_generator_cpp/bounded_vector.hpp>)
# include <rosidl_generator_cpp/bounded_vector.hpp>
#else
# error "Actual ROS2 BoundedVector header required; no replacement container"
#endif
#if __has_include(<rosidl_buffer/buffer.hpp>)
# include <rosidl_buffer/buffer.hpp>
#endif
#include <unitree_go/msg/bms_state.hpp>
#include <unitree_go/msg/imu_state.hpp>
#include <unitree_go/msg/low_state.hpp>
#include <unitree_go/msg/motor_state.hpp>
#include <unitree_go/msg/sport_mode_state.hpp>
#include <unitree_go/msg/time_spec.hpp>
#include <unitree_go/msg/wireless_controller.hpp>
#ifndef UWVM_CUSTOM_BOUNDED_NATIVE_TRAITS
# define UWVM_CUSTOM_BOUNDED_NATIVE_TRAITS

# include "native_constants.hpp"

namespace uwvm2::imported::ros::ipc
{
    template <>
    struct complete_vendor_native_traits<::unitree_go::msg::BmsState>
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
    struct complete_vendor_native_traits<::unitree_go::msg::IMUState>
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
    struct complete_vendor_native_traits<::unitree_go::msg::LowState>
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
    struct complete_vendor_native_traits<::unitree_go::msg::MotorState>
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
    struct complete_vendor_native_traits<::unitree_go::msg::SportModeState>
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
    struct complete_vendor_native_traits<::unitree_go::msg::TimeSpec>
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
    struct complete_vendor_native_traits<::unitree_go::msg::WirelessController>
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
#ifndef UWVM_CUSTOM_BOUNDED_ROSIDL_TRAITS
# define UWVM_CUSTOM_BOUNDED_ROSIDL_TRAITS

namespace uwvm_custom_bounded_native
{
# if __has_include(<rosidl_runtime_cpp/bounded_vector.hpp>)
    template <class T, size_t N, class A>
    struct sequence_shape<::rosidl_runtime_cpp::BoundedVector<T, N, A>>
    {
        using element = T;
        static constexpr bool supported = true;
        static constexpr size_t bound = N;
    };
# elif __has_include(<rosidl_generator_cpp/bounded_vector.hpp>)
    template <class T, size_t N, class A>
    struct sequence_shape<::rosidl_generator_cpp::BoundedVector<T, N, A>>
    {
        using element = T;
        static constexpr bool supported = true;
        static constexpr size_t bound = N;
    };
# endif
# if __has_include(<rosidl_buffer/buffer.hpp>)

    template <class T, class A>
    struct sequence_shape<rosidl::Buffer<T, A>>
    {
        using element = T;
        static constexpr bool supported = std::is_same<T, uint8_t>::value;
        static constexpr size_t bound = 0;
    };

    template <class T, class A>
    bool native_accessible(rosidl::Buffer<T, A> const& value) noexcept
    {
        return dynamic_cast<rosidl::CpuBufferImpl<T, A> const*>(value.get_impl()) != nullptr;
    }
# endif
}  // namespace uwvm_custom_bounded_native
#endif
namespace uwvm_custom_bounded_native
{

    /**
     * @brief Preserve every original field in one installed native Unitree message.
     * @details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. Only
     * complete validated conversions can be committed to public output; caller owns all resulting storage.
     */
    struct Ros2Unitree_goMsgBmsStateCodec
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
        using Native = ::unitree_go::msg::BmsState;
        using Record = roswasmc_bounded_2_unitree_go_msg_BmsState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_go/msg/BmsState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "RIHS01_a7fe45fbbb6a908bdee78baa3b93e962ed924c143481a696f95b6911ce30b871";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 44;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().version_high)>>;
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
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().version_low)>>;
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
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().status)>>;
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
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().soc)>>;
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
        using raw_6 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bq_ntc)>>;
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
        using raw_7 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().mcu_ntc)>>;
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
        static_assert(fixed_shape<raw_8>::size == 15, "official fixed array length differs");
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
                for(size_t i = 0; i < 15; ++i)
                {
                    n += 2;
                }
            }
            if(n > 44)
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
            record.version_high = value.version_high;
            record.version_low = value.version_low;
            record.status = value.status;
            record.soc = value.soc;
            record.current = value.current;
            record.cycle = value.cycle;
            for(size_t i = 0; i < 2; ++i)
            {
                record.bq_ntc[i] = value.bq_ntc[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                record.mcu_ntc[i] = value.mcu_ntc[i];
            }
            for(size_t i = 0; i < 15; ++i)
            {
                record.cell_vol[i] = value.cell_vol[i];
            }
            return roswasmc_bounded_2_unitree_go_msg_BmsState_valid(&record);
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
            value.version_high = record.version_high;
            value.version_low = record.version_low;
            value.status = record.status;
            value.soc = record.soc;
            value.current = record.current;
            value.cycle = record.cycle;
            for(size_t i = 0; i < 2; ++i)
            {
                value.bq_ntc[i] = record.bq_ntc[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                value.mcu_ntc[i] = record.mcu_ntc[i];
            }
            for(size_t i = 0; i < 15; ++i)
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
            if(!to_record(value, record) || roswasmc_bounded_2_unitree_go_msg_BmsState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_unitree_go_msg_BmsState_encode(&record, out, capacity, &n);
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
            size_t n = roswasmc_bounded_2_unitree_go_msg_BmsState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_2_unitree_go_msg_BmsState_encode(&record, next.data(), next.size(), &used) || used != n)
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
            if(roswasmc_bounded_2_unitree_go_msg_BmsState_decode(bytes, size, &record))
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
            {"unitree_go/msg/BmsState",
             "uint8 version_high\nuint8 version_low\nuint8 status\nuint8 soc\nint32 current\nuint16 cycle\nint8[2] bq_ntc\nint8[2] mcu_ntc\nuint16[15] " "cell_vol\n"},
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
            {"version_high", "uint8",  0,  false, 0, false, 0, "", false},
            {"version_low",  "uint8",  0,  false, 0, false, 0, "", false},
            {"status",       "uint8",  0,  false, 0, false, 0, "", false},
            {"soc",          "uint8",  0,  false, 0, false, 0, "", false},
            {"current",      "int32",  0,  false, 0, false, 0, "", false},
            {"cycle",        "uint16", 0,  false, 0, false, 0, "", false},
            {"bq_ntc",       "int8",   2,  true,  0, false, 0, "", false},
            {"mcu_ntc",      "int8",   2,  true,  0, false, 0, "", false},
            {"cell_vol",     "uint16", 15, true,  0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_go/msg/BmsState", schema_fields_0, 9},
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
    struct Ros2Unitree_goMsgIMUStateCodec
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
        using Native = ::unitree_go::msg::IMUState;
        using Record = roswasmc_bounded_2_unitree_go_msg_IMUState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_go/msg/IMUState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "RIHS01_226772531e06ca5768dad7ae264221622e92ba1dbc7fcd7f8074351a23fe1c11";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc";
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
            return roswasmc_bounded_2_unitree_go_msg_IMUState_valid(&record);
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
            if(!to_record(value, record) || roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_unitree_go_msg_IMUState_encode(&record, out, capacity, &n);
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
            size_t n = roswasmc_bounded_2_unitree_go_msg_IMUState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_2_unitree_go_msg_IMUState_encode(&record, next.data(), next.size(), &used) || used != n)
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
            if(roswasmc_bounded_2_unitree_go_msg_IMUState_decode(bytes, size, &record))
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
            {"unitree_go/msg/IMUState", "float32[4] quaternion\nfloat32[3] gyroscope\nfloat32[3] accelerometer\nfloat32[3] rpy\nint8 temperature\n"},
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
            {"quaternion",    "float32", 4, true,  0, false, 0, "", false},
            {"gyroscope",     "float32", 3, true,  0, false, 0, "", false},
            {"accelerometer", "float32", 3, true,  0, false, 0, "", false},
            {"rpy",           "float32", 3, true,  0, false, 0, "", false},
            {"temperature",   "int8",    0, false, 0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_go/msg/IMUState", schema_fields_0, 5},
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
    struct Ros2Unitree_goMsgMotorStateCodec
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
        using Native = ::unitree_go::msg::MotorState;
        using Record = roswasmc_bounded_2_unitree_go_msg_MotorState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_go/msg/MotorState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "RIHS01_86fb56a4f6bebcba854e9b510225e6666ef46cf4ea13355870c2dd3c3478a88c";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 42;
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
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().tau_est)>>;
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
        using raw_9 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().lost)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_9 = raw_9;
        static_assert(std::is_same<field_9, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_10 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().reserve)>>;
        static_assert(fixed_shape<raw_10>::size == 2, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_10 = typename fixed_shape<raw_10>::element;
        static_assert(std::is_same<field_10, uint32_t>::value, "official scalar/nested field type differs");

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
                uwvm_bounded_copy(&bits, &value.tau_est, 4);
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
                n += 4;
            }
            {
                for(size_t i = 0; i < 2; ++i)
                {
                    n += 4;
                }
            }
            if(n > 42)
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
            uwvm_bounded_copy(&record.tau_est, &value.tau_est, 4);
            uwvm_bounded_copy(&record.q_raw, &value.q_raw, 4);
            uwvm_bounded_copy(&record.dq_raw, &value.dq_raw, 4);
            uwvm_bounded_copy(&record.ddq_raw, &value.ddq_raw, 4);
            record.temperature = value.temperature;
            record.lost = value.lost;
            for(size_t i = 0; i < 2; ++i)
            {
                record.reserve[i] = value.reserve[i];
            }
            return roswasmc_bounded_2_unitree_go_msg_MotorState_valid(&record);
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
            uwvm_bounded_copy(&value.tau_est, &record.tau_est, 4);
            uwvm_bounded_copy(&value.q_raw, &record.q_raw, 4);
            uwvm_bounded_copy(&value.dq_raw, &record.dq_raw, 4);
            uwvm_bounded_copy(&value.ddq_raw, &record.ddq_raw, 4);
            value.temperature = record.temperature;
            value.lost = record.lost;
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
            if(!to_record(value, record) || roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_unitree_go_msg_MotorState_encode(&record, out, capacity, &n);
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
            size_t n = roswasmc_bounded_2_unitree_go_msg_MotorState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_2_unitree_go_msg_MotorState_encode(&record, next.data(), next.size(), &used) || used != n)
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
            if(roswasmc_bounded_2_unitree_go_msg_MotorState_decode(bytes, size, &record))
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
            {"unitree_go/msg/MotorState",
             "uint8 mode\nfloat32 q\nfloat32 dq\nfloat32 ddq\nfloat32 tau_est\nfloat32 q_raw\nfloat32 dq_raw\nfloat32 ddq_raw\nint8 temperature\nuint32 " "lost\nuint32[2] reserve\n"},
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
            {"mode",        "uint8",   0, false, 0, false, 0, "", false},
            {"q",           "float32", 0, false, 0, false, 0, "", false},
            {"dq",          "float32", 0, false, 0, false, 0, "", false},
            {"ddq",         "float32", 0, false, 0, false, 0, "", false},
            {"tau_est",     "float32", 0, false, 0, false, 0, "", false},
            {"q_raw",       "float32", 0, false, 0, false, 0, "", false},
            {"dq_raw",      "float32", 0, false, 0, false, 0, "", false},
            {"ddq_raw",     "float32", 0, false, 0, false, 0, "", false},
            {"temperature", "int8",    0, false, 0, false, 0, "", false},
            {"lost",        "uint32",  0, false, 0, false, 0, "", false},
            {"reserve",     "uint32",  2, true,  0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_go/msg/MotorState", schema_fields_0, 11},
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
    struct Ros2Unitree_goMsgLowStateCodec
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
        using Native = ::unitree_go::msg::LowState;
        using Record = roswasmc_bounded_2_unitree_go_msg_LowState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_go/msg/LowState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 1050;
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
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().level_flag)>>;
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
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().frame_reserve)>>;
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
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().sn)>>;
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
        using raw_5 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bandwidth)>>;
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
        using raw_6 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().imu_state)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_6 = raw_6;
        static_assert(std::is_same<field_6, ::unitree_go::msg::IMUState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_7 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().motor_state)>>;
        static_assert(fixed_shape<raw_7>::size == 20, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_7 = typename fixed_shape<raw_7>::element;
        static_assert(std::is_same<field_7, ::unitree_go::msg::MotorState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_8 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bms_state)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_8 = raw_8;
        static_assert(std::is_same<field_8, ::unitree_go::msg::BmsState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_9 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().foot_force)>>;
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
        using raw_10 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().foot_force_est)>>;
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
        using raw_12 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().wireless_remote)>>;
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
        using raw_13 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().bit_flag)>>;
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
        using raw_14 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().adc_reel)>>;
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
        using raw_15 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().temperature_ntc1)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_15 = raw_15;
        static_assert(std::is_same<field_15, int8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_16 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().temperature_ntc2)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_16 = raw_16;
        static_assert(std::is_same<field_16, int8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_17 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().power_v)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_17 = raw_17;
        static_assert(std::is_same<field_17, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_18 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().power_a)>>;
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
        using raw_19 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().fan_frequency)>>;
        static_assert(fixed_shape<raw_19>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_19 = typename fixed_shape<raw_19>::element;
        static_assert(std::is_same<field_19, uint16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_20 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().reserve)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_20 = raw_20;
        static_assert(std::is_same<field_20, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_21 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().crc)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_21 = raw_21;
        static_assert(std::is_same<field_21, uint32_t>::value, "official scalar/nested field type differs");

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
                if(!Ros2Unitree_goMsgIMUStateCodec::encoded_size(value.imu_state, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                for(size_t i = 0; i < 20; ++i)
                {
                    size_t nested = 0;
                    if(!Ros2Unitree_goMsgMotorStateCodec::encoded_size(value.motor_state[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                size_t nested = 0;
                if(!Ros2Unitree_goMsgBmsStateCodec::encoded_size(value.bms_state, nested))
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
                n += 1;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.adc_reel, 4);
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
                n += 1;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.power_v, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.power_a, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
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
                n += 4;
            }
            if(n > 1050)
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
            record.level_flag = value.level_flag;
            record.frame_reserve = value.frame_reserve;
            for(size_t i = 0; i < 2; ++i)
            {
                record.sn[i] = value.sn[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                record.version[i] = value.version[i];
            }
            record.bandwidth = value.bandwidth;
            if(!Ros2Unitree_goMsgIMUStateCodec::to_record(value.imu_state, record.imu_state))
            {
                return false;
            }
            for(size_t i = 0; i < 20; ++i)
            {
                if(!Ros2Unitree_goMsgMotorStateCodec::to_record(value.motor_state[i], record.motor_state[i]))
                {
                    return false;
                }
            }
            if(!Ros2Unitree_goMsgBmsStateCodec::to_record(value.bms_state, record.bms_state))
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                record.foot_force[i] = value.foot_force[i];
            }
            for(size_t i = 0; i < 4; ++i)
            {
                record.foot_force_est[i] = value.foot_force_est[i];
            }
            record.tick = value.tick;
            for(size_t i = 0; i < 40; ++i)
            {
                record.wireless_remote[i] = value.wireless_remote[i];
            }
            record.bit_flag = value.bit_flag;
            uwvm_bounded_copy(&record.adc_reel, &value.adc_reel, 4);
            record.temperature_ntc1 = value.temperature_ntc1;
            record.temperature_ntc2 = value.temperature_ntc2;
            uwvm_bounded_copy(&record.power_v, &value.power_v, 4);
            uwvm_bounded_copy(&record.power_a, &value.power_a, 4);
            for(size_t i = 0; i < 4; ++i)
            {
                record.fan_frequency[i] = value.fan_frequency[i];
            }
            record.reserve = value.reserve;
            record.crc = value.crc;
            return roswasmc_bounded_2_unitree_go_msg_LowState_valid(&record);
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
            value.level_flag = record.level_flag;
            value.frame_reserve = record.frame_reserve;
            for(size_t i = 0; i < 2; ++i)
            {
                value.sn[i] = record.sn[i];
            }
            for(size_t i = 0; i < 2; ++i)
            {
                value.version[i] = record.version[i];
            }
            value.bandwidth = record.bandwidth;
            if(!Ros2Unitree_goMsgIMUStateCodec::from_record(record.imu_state, value.imu_state))
            {
                return false;
            }
            for(size_t i = 0; i < 20; ++i)
            {
                if(!Ros2Unitree_goMsgMotorStateCodec::from_record(record.motor_state[i], value.motor_state[i]))
                {
                    return false;
                }
            }
            if(!Ros2Unitree_goMsgBmsStateCodec::from_record(record.bms_state, value.bms_state))
            {
                return false;
            }
            for(size_t i = 0; i < 4; ++i)
            {
                value.foot_force[i] = record.foot_force[i];
            }
            for(size_t i = 0; i < 4; ++i)
            {
                value.foot_force_est[i] = record.foot_force_est[i];
            }
            value.tick = record.tick;
            for(size_t i = 0; i < 40; ++i)
            {
                value.wireless_remote[i] = record.wireless_remote[i];
            }
            value.bit_flag = record.bit_flag;
            uwvm_bounded_copy(&value.adc_reel, &record.adc_reel, 4);
            value.temperature_ntc1 = record.temperature_ntc1;
            value.temperature_ntc2 = record.temperature_ntc2;
            uwvm_bounded_copy(&value.power_v, &record.power_v, 4);
            uwvm_bounded_copy(&value.power_a, &record.power_a, 4);
            for(size_t i = 0; i < 4; ++i)
            {
                value.fan_frequency[i] = record.fan_frequency[i];
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
            if(!to_record(value, record) || roswasmc_bounded_2_unitree_go_msg_LowState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_unitree_go_msg_LowState_encode(&record, out, capacity, &n);
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
            size_t n = roswasmc_bounded_2_unitree_go_msg_LowState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_2_unitree_go_msg_LowState_encode(&record, next.data(), next.size(), &used) || used != n)
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
            if(roswasmc_bounded_2_unitree_go_msg_LowState_decode(bytes, size, &record))
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
            {"unitree_go/msg/LowState",
             "uint8[2] head\nuint8 level_flag\nuint8 frame_reserve\nuint32[2] sn\nuint32[2] version\nuint16 bandwidth\nIMUState imu_state\nMotorState[20] " "motor_state\nBmsState bms_state\nint16[4] foot_force\nint16[4] foot_force_est\nuint32 tick\nuint8[40] wireless_remote\nuint8 bit_flag\nfloat32 " "adc_reel\nint8 temperature_ntc1\nint8 temperature_ntc2\nfloat32 power_v\nfloat32 power_a\nuint16[4] fan_frequency\nuint32 reserve\nuint32 crc\n"},
            {"unitree_go/msg/IMUState",   "float32[4] quaternion\nfloat32[3] gyroscope\nfloat32[3] accelerometer\nfloat32[3] rpy\nint8 temperature\n"                                                                                                                                                                                                                                                                                                          },
            {"unitree_go/msg/MotorState",
             "uint8 mode\nfloat32 q\nfloat32 dq\nfloat32 ddq\nfloat32 tau_est\nfloat32 q_raw\nfloat32 dq_raw\nfloat32 ddq_raw\nint8 temperature\nuint32 " "lost\nuint32[2] reserve\n"                                                                                                                                                                                                                                                                          },
            {"unitree_go/msg/BmsState",
             "uint8 version_high\nuint8 version_low\nuint8 status\nuint8 soc\nint32 current\nuint16 cycle\nint8[2] bq_ntc\nint8[2] mcu_ntc\nuint16[15] " "cell_vol\n"                                                                                                                                                                                                                                                                                          },
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
            {"head",             "uint8",                     2,  true,  0, false, 0, "", false},
            {"level_flag",       "uint8",                     0,  false, 0, false, 0, "", false},
            {"frame_reserve",    "uint8",                     0,  false, 0, false, 0, "", false},
            {"sn",               "uint32",                    2,  true,  0, false, 0, "", false},
            {"version",          "uint32",                    2,  true,  0, false, 0, "", false},
            {"bandwidth",        "uint16",                    0,  false, 0, false, 0, "", false},
            {"imu_state",        "unitree_go/msg/IMUState",   0,  false, 0, false, 0, "", false},
            {"motor_state",      "unitree_go/msg/MotorState", 20, true,  0, false, 0, "", false},
            {"bms_state",        "unitree_go/msg/BmsState",   0,  false, 0, false, 0, "", false},
            {"foot_force",       "int16",                     4,  true,  0, false, 0, "", false},
            {"foot_force_est",   "int16",                     4,  true,  0, false, 0, "", false},
            {"tick",             "uint32",                    0,  false, 0, false, 0, "", false},
            {"wireless_remote",  "uint8",                     40, true,  0, false, 0, "", false},
            {"bit_flag",         "uint8",                     0,  false, 0, false, 0, "", false},
            {"adc_reel",         "float32",                   0,  false, 0, false, 0, "", false},
            {"temperature_ntc1", "int8",                      0,  false, 0, false, 0, "", false},
            {"temperature_ntc2", "int8",                      0,  false, 0, false, 0, "", false},
            {"power_v",          "float32",                   0,  false, 0, false, 0, "", false},
            {"power_a",          "float32",                   0,  false, 0, false, 0, "", false},
            {"fan_frequency",    "uint16",                    4,  true,  0, false, 0, "", false},
            {"reserve",          "uint32",                    0,  false, 0, false, 0, "", false},
            {"crc",              "uint32",                    0,  false, 0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"quaternion",    "float32", 4, true,  0, false, 0, "", false},
            {"gyroscope",     "float32", 3, true,  0, false, 0, "", false},
            {"accelerometer", "float32", 3, true,  0, false, 0, "", false},
            {"rpy",           "float32", 3, true,  0, false, 0, "", false},
            {"temperature",   "int8",    0, false, 0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"mode",        "uint8",   0, false, 0, false, 0, "", false},
            {"q",           "float32", 0, false, 0, false, 0, "", false},
            {"dq",          "float32", 0, false, 0, false, 0, "", false},
            {"ddq",         "float32", 0, false, 0, false, 0, "", false},
            {"tau_est",     "float32", 0, false, 0, false, 0, "", false},
            {"q_raw",       "float32", 0, false, 0, false, 0, "", false},
            {"dq_raw",      "float32", 0, false, 0, false, 0, "", false},
            {"ddq_raw",     "float32", 0, false, 0, false, 0, "", false},
            {"temperature", "int8",    0, false, 0, false, 0, "", false},
            {"lost",        "uint32",  0, false, 0, false, 0, "", false},
            {"reserve",     "uint32",  2, true,  0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_3[] = {
            {"version_high", "uint8",  0,  false, 0, false, 0, "", false},
            {"version_low",  "uint8",  0,  false, 0, false, 0, "", false},
            {"status",       "uint8",  0,  false, 0, false, 0, "", false},
            {"soc",          "uint8",  0,  false, 0, false, 0, "", false},
            {"current",      "int32",  0,  false, 0, false, 0, "", false},
            {"cycle",        "uint16", 0,  false, 0, false, 0, "", false},
            {"bq_ntc",       "int8",   2,  true,  0, false, 0, "", false},
            {"mcu_ntc",      "int8",   2,  true,  0, false, 0, "", false},
            {"cell_vol",     "uint16", 15, true,  0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_go/msg/LowState",   schema_fields_0, 22},
            {"unitree_go/msg/IMUState",   schema_fields_1, 5 },
            {"unitree_go/msg/MotorState", schema_fields_2, 11},
            {"unitree_go/msg/BmsState",   schema_fields_3, 9 },
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
    struct Ros2Unitree_goMsgTimeSpecCodec
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
        using Native = ::unitree_go::msg::TimeSpec;
        using Record = roswasmc_bounded_2_unitree_go_msg_TimeSpec;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_go/msg/TimeSpec";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "RIHS01_0cac3f0605af323add43e1ed3ae7fc01f7c7857f41380170b3ea3a899b28cb76";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 8;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().sec)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, int32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().nanosec)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, uint32_t>::value, "official scalar/nested field type differs");

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
                n += 4;
            }
            {
                n += 4;
            }
            if(n > 8)
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
            record.sec = value.sec;
            record.nanosec = value.nanosec;
            return roswasmc_bounded_2_unitree_go_msg_TimeSpec_valid(&record);
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
            value.sec = record.sec;
            value.nanosec = record.nanosec;
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
            if(!to_record(value, record) || roswasmc_bounded_2_unitree_go_msg_TimeSpec_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_unitree_go_msg_TimeSpec_encode(&record, out, capacity, &n);
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
            size_t n = roswasmc_bounded_2_unitree_go_msg_TimeSpec_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_2_unitree_go_msg_TimeSpec_encode(&record, next.data(), next.size(), &used) || used != n)
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
            if(roswasmc_bounded_2_unitree_go_msg_TimeSpec_decode(bytes, size, &record))
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
            {"unitree_go/msg/TimeSpec",
             "# Time indicates a specific point in time, relative to a clock's 0 point.\n# The seconds component, valid over all int32 values.\nint32 sec\n# " "The nanoseconds component, valid in the range [0, 10e9).\nuint32 nanosec\n"},
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
            {"sec",     "int32",  0, false, 0, false, 0, "", false},
            {"nanosec", "uint32", 0, false, 0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_go/msg/TimeSpec", schema_fields_0, 2},
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
    struct Ros2Unitree_goMsgSportModeStateCodec
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
        using Native = ::unitree_go::msg::SportModeState;
        using Record = roswasmc_bounded_2_unitree_go_msg_SportModeState;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_go/msg/SportModeState";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 227;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().stamp)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, ::unitree_go::msg::TimeSpec>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().error_code)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, uint32_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().imu_state)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, ::unitree_go::msg::IMUState>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().mode)>>;
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
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().progress)>>;
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
        using raw_5 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().gait_type)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_5 = raw_5;
        static_assert(std::is_same<field_5, uint8_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_6 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().foot_raise_height)>>;
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
        using raw_7 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().position)>>;
        static_assert(fixed_shape<raw_7>::size == 3, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_7 = typename fixed_shape<raw_7>::element;
        static_assert(std::is_same<field_7, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_8 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().body_height)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_8 = raw_8;
        static_assert(std::is_same<field_8, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_9 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().velocity)>>;
        static_assert(fixed_shape<raw_9>::size == 3, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_9 = typename fixed_shape<raw_9>::element;
        static_assert(std::is_same<field_9, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_10 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().yaw_speed)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_10 = raw_10;
        static_assert(std::is_same<field_10, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_11 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().range_obstacle)>>;
        static_assert(fixed_shape<raw_11>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_11 = typename fixed_shape<raw_11>::element;
        static_assert(std::is_same<field_11, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_12 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().foot_force)>>;
        static_assert(fixed_shape<raw_12>::size == 4, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_12 = typename fixed_shape<raw_12>::element;
        static_assert(std::is_same<field_12, int16_t>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_13 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().foot_position_body)>>;
        static_assert(fixed_shape<raw_13>::size == 12, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_13 = typename fixed_shape<raw_13>::element;
        static_assert(std::is_same<field_13, float>::value, "official scalar/nested field type differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_14 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().foot_speed_body)>>;
        static_assert(fixed_shape<raw_14>::size == 12, "official fixed array length differs");
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_14 = typename fixed_shape<raw_14>::element;
        static_assert(std::is_same<field_14, float>::value, "official scalar/nested field type differs");

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
                size_t nested = 0;
                if(!Ros2Unitree_goMsgTimeSpecCodec::encoded_size(value.stamp, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                n += 4;
            }
            {
                size_t nested = 0;
                if(!Ros2Unitree_goMsgIMUStateCodec::encoded_size(value.imu_state, nested))
                {
                    return false;
                }
                n += nested;
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
                uwvm_bounded_copy(&bits, &value.foot_raise_height, 4);
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
                uwvm_bounded_copy(&bits, &value.body_height, 4);
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
                uwvm_bounded_copy(&bits, &value.yaw_speed, 4);
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
                    uwvm_bounded_copy(&bits, &value.range_obstacle[i], 4);
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
                    n += 2;
                }
            }
            {
                for(size_t i = 0; i < 12; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.foot_position_body[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            {
                for(size_t i = 0; i < 12; ++i)
                {
                    uint32_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.foot_speed_body[i], 4);
                    if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                    {
                        return false;
                    }
                    n += 4;
                }
            }
            if(n > 227)
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
            if(!Ros2Unitree_goMsgTimeSpecCodec::to_record(value.stamp, record.stamp))
            {
                return false;
            }
            record.error_code = value.error_code;
            if(!Ros2Unitree_goMsgIMUStateCodec::to_record(value.imu_state, record.imu_state))
            {
                return false;
            }
            record.mode = value.mode;
            uwvm_bounded_copy(&record.progress, &value.progress, 4);
            record.gait_type = value.gait_type;
            uwvm_bounded_copy(&record.foot_raise_height, &value.foot_raise_height, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&record.position[i], &value.position[i], 4);
            }
            uwvm_bounded_copy(&record.body_height, &value.body_height, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&record.velocity[i], &value.velocity[i], 4);
            }
            uwvm_bounded_copy(&record.yaw_speed, &value.yaw_speed, 4);
            for(size_t i = 0; i < 4; ++i)
            {
                uwvm_bounded_copy(&record.range_obstacle[i], &value.range_obstacle[i], 4);
            }
            for(size_t i = 0; i < 4; ++i)
            {
                record.foot_force[i] = value.foot_force[i];
            }
            for(size_t i = 0; i < 12; ++i)
            {
                uwvm_bounded_copy(&record.foot_position_body[i], &value.foot_position_body[i], 4);
            }
            for(size_t i = 0; i < 12; ++i)
            {
                uwvm_bounded_copy(&record.foot_speed_body[i], &value.foot_speed_body[i], 4);
            }
            return roswasmc_bounded_2_unitree_go_msg_SportModeState_valid(&record);
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
            if(!Ros2Unitree_goMsgTimeSpecCodec::from_record(record.stamp, value.stamp))
            {
                return false;
            }
            value.error_code = record.error_code;
            if(!Ros2Unitree_goMsgIMUStateCodec::from_record(record.imu_state, value.imu_state))
            {
                return false;
            }
            value.mode = record.mode;
            uwvm_bounded_copy(&value.progress, &record.progress, 4);
            value.gait_type = record.gait_type;
            uwvm_bounded_copy(&value.foot_raise_height, &record.foot_raise_height, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&value.position[i], &record.position[i], 4);
            }
            uwvm_bounded_copy(&value.body_height, &record.body_height, 4);
            for(size_t i = 0; i < 3; ++i)
            {
                uwvm_bounded_copy(&value.velocity[i], &record.velocity[i], 4);
            }
            uwvm_bounded_copy(&value.yaw_speed, &record.yaw_speed, 4);
            for(size_t i = 0; i < 4; ++i)
            {
                uwvm_bounded_copy(&value.range_obstacle[i], &record.range_obstacle[i], 4);
            }
            for(size_t i = 0; i < 4; ++i)
            {
                value.foot_force[i] = record.foot_force[i];
            }
            for(size_t i = 0; i < 12; ++i)
            {
                uwvm_bounded_copy(&value.foot_position_body[i], &record.foot_position_body[i], 4);
            }
            for(size_t i = 0; i < 12; ++i)
            {
                uwvm_bounded_copy(&value.foot_speed_body[i], &record.foot_speed_body[i], 4);
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
            if(!to_record(value, record) || roswasmc_bounded_2_unitree_go_msg_SportModeState_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_unitree_go_msg_SportModeState_encode(&record, out, capacity, &n);
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
            size_t n = roswasmc_bounded_2_unitree_go_msg_SportModeState_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_2_unitree_go_msg_SportModeState_encode(&record, next.data(), next.size(), &used) || used != n)
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
            if(roswasmc_bounded_2_unitree_go_msg_SportModeState_decode(bytes, size, &record))
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
            {"unitree_go/msg/SportModeState",
             "TimeSpec stamp\nuint32 error_code\nIMUState imu_state\nuint8 mode\nfloat32 progress\nuint8 gait_type\nfloat32 foot_raise_height\nfloat32[3] " "position\nfloat32 body_height\nfloat32[3] velocity\nfloat32 yaw_speed\nfloat32[4] range_obstacle\nint16[4] foot_force\nfloat32[12] " "foot_position_body\nfloat32[12] foot_speed_body\n\n\n"},
            {"unitree_go/msg/TimeSpec",
             "# Time indicates a specific point in time, relative to a clock's 0 point.\n# The seconds component, valid over all int32 values.\nint32 sec\n# " "The nanoseconds component, valid in the range [0, 10e9).\nuint32 nanosec\n"                                                                                                              },
            {"unitree_go/msg/IMUState",       "float32[4] quaternion\nfloat32[3] gyroscope\nfloat32[3] accelerometer\nfloat32[3] rpy\nint8 temperature\n"                                                                                                                                                                                                },
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
            {"stamp",              "unitree_go/msg/TimeSpec", 0,  false, 0, false, 0, "", false},
            {"error_code",         "uint32",                  0,  false, 0, false, 0, "", false},
            {"imu_state",          "unitree_go/msg/IMUState", 0,  false, 0, false, 0, "", false},
            {"mode",               "uint8",                   0,  false, 0, false, 0, "", false},
            {"progress",           "float32",                 0,  false, 0, false, 0, "", false},
            {"gait_type",          "uint8",                   0,  false, 0, false, 0, "", false},
            {"foot_raise_height",  "float32",                 0,  false, 0, false, 0, "", false},
            {"position",           "float32",                 3,  true,  0, false, 0, "", false},
            {"body_height",        "float32",                 0,  false, 0, false, 0, "", false},
            {"velocity",           "float32",                 3,  true,  0, false, 0, "", false},
            {"yaw_speed",          "float32",                 0,  false, 0, false, 0, "", false},
            {"range_obstacle",     "float32",                 4,  true,  0, false, 0, "", false},
            {"foot_force",         "int16",                   4,  true,  0, false, 0, "", false},
            {"foot_position_body", "float32",                 12, true,  0, false, 0, "", false},
            {"foot_speed_body",    "float32",                 12, true,  0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"sec",     "int32",  0, false, 0, false, 0, "", false},
            {"nanosec", "uint32", 0, false, 0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"quaternion",    "float32", 4, true,  0, false, 0, "", false},
            {"gyroscope",     "float32", 3, true,  0, false, 0, "", false},
            {"accelerometer", "float32", 3, true,  0, false, 0, "", false},
            {"rpy",           "float32", 3, true,  0, false, 0, "", false},
            {"temperature",   "int8",    0, false, 0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_go/msg/SportModeState", schema_fields_0, 15},
            {"unitree_go/msg/TimeSpec",       schema_fields_1, 2 },
            {"unitree_go/msg/IMUState",       schema_fields_2, 5 },
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
    struct Ros2Unitree_goMsgWirelessControllerCodec
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
        using Native = ::unitree_go::msg::WirelessController;
        using Record = roswasmc_bounded_2_unitree_go_msg_WirelessController;
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* type = "unitree_go/msg/WirelessController";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* native_identity = "RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr char const* codec_identity = "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438";
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        static constexpr size_t wire_bytes = 18;
        static constexpr bool bounded_profile = true;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().lx)>>;
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
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().ly)>>;
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
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().rx)>>;
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
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().ry)>>;
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
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().keys)>>;
        /**
         * @brief Name the exact compile-time native field or element type.
         * @details Type-only alias; it creates no storage. The adjacent static assertions reject incompatible installed
         * declarations.
         */
        using field_4 = raw_4;
        static_assert(std::is_same<field_4, uint16_t>::value, "official scalar/nested field type differs");

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
                uwvm_bounded_copy(&bits, &value.lx, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.ly, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.rx, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                uint32_t bits = 0;
                uwvm_bounded_copy(&bits, &value.ry, 4);
                if((bits & UINT32_C(0x7f800000)) == UINT32_C(0x7f800000))
                {
                    return false;
                }
                n += 4;
            }
            {
                n += 2;
            }
            if(n > 18)
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
            uwvm_bounded_copy(&record.lx, &value.lx, 4);
            uwvm_bounded_copy(&record.ly, &value.ly, 4);
            uwvm_bounded_copy(&record.rx, &value.rx, 4);
            uwvm_bounded_copy(&record.ry, &value.ry, 4);
            record.keys = value.keys;
            return roswasmc_bounded_2_unitree_go_msg_WirelessController_valid(&record);
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
            uwvm_bounded_copy(&value.lx, &record.lx, 4);
            uwvm_bounded_copy(&value.ly, &record.ly, 4);
            uwvm_bounded_copy(&value.rx, &record.rx, 4);
            uwvm_bounded_copy(&value.ry, &record.ry, 4);
            value.keys = record.keys;
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
            if(!to_record(value, record) || roswasmc_bounded_2_unitree_go_msg_WirelessController_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_unitree_go_msg_WirelessController_encode(&record, out, capacity, &n);
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
            size_t n = roswasmc_bounded_2_unitree_go_msg_WirelessController_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if(roswasmc_bounded_2_unitree_go_msg_WirelessController_encode(&record, next.data(), next.size(), &used) || used != n)
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
            if(roswasmc_bounded_2_unitree_go_msg_WirelessController_decode(bytes, size, &record))
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
            {"unitree_go/msg/WirelessController", "float32 lx\nfloat32 ly\nfloat32 rx\nfloat32 ry\nuint16 keys\n"},
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
            {"lx",   "float32", 0, false, 0, false, 0, "", false},
            {"ly",   "float32", 0, false, 0, false, 0, "", false},
            {"rx",   "float32", 0, false, 0, false, 0, "", false},
            {"ry",   "float32", 0, false, 0, false, 0, "", false},
            {"keys", "uint16",  0, false, 0, false, 0, "", false}
        };
        /**
         * @brief Retain immutable native shape, identity, quota, or declaration metadata.
         * @details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings are
         * distinct from active payload lengths, native sizeof, and operation permissions.
         */
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"unitree_go/msg/WirelessController", schema_fields_0, 5},
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

#define UWVM_ROS_CUSTOM_ROS2_TYPES(M)                                                                                                                          \
    M(::unitree_go::msg::LowState,                                                                                                                             \
      "unitree_go/msg/LowState",                                                                                                                               \
      "RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f",                                                                               \
      "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab",                                                                             \
      1050,                                                                                                                                                    \
      ::uwvm_custom_bounded_native::Ros2Unitree_goMsgLowStateCodec)                                                                                            \
    M(::unitree_go::msg::SportModeState,                                                                                                                       \
      "unitree_go/msg/SportModeState",                                                                                                                         \
      "RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4",                                                                               \
      "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760",                                                                             \
      227,                                                                                                                                                     \
      ::uwvm_custom_bounded_native::Ros2Unitree_goMsgSportModeStateCodec)                                                                                      \
    M(::unitree_go::msg::WirelessController,                                                                                                                   \
      "unitree_go/msg/WirelessController",                                                                                                                     \
      "RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5",                                                                               \
      "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438",                                                                             \
      18,                                                                                                                                                      \
      ::uwvm_custom_bounded_native::Ros2Unitree_goMsgWirelessControllerCodec)
#define UWVM_ROS_CUSTOM_ROS2_SERVICE_TYPES(M)
#define UWVM_ROS_CUSTOM_ROS2_ACTION_TYPES(M)
#define UWVM_ROS_CUSTOM_ROS2_TOPIC_TYPES(M) UWVM_ROS_CUSTOM_ROS2_TYPES(M)
