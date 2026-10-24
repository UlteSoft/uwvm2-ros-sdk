/**
 * @file native_ros2.hpp
 * @brief Complete original ROSIDL-to-canonical conversion implementation for the selected Array graph.
 * @details The operator supplies matching native products and explicit per-module deployment authority. Source
 * metadata alone does not qualify execution, GPU access or NITROS.
 */
#pragma once
#include <nvidia-isaac-ros/native/first-array-jazzy/bounded_records.h>
#include <vector>
#include <array>
#include <string>
#include <type_traits>
#include <utility>
#include <uwvm2/imported/ros/ipc/custom_type.h>
/** Select the actual SDK container; legacy ROS2 does not provide runtime_cpp. */
#if __has_include(<rosidl_runtime_cpp/bounded_vector.hpp>)
#include <rosidl_runtime_cpp/bounded_vector.hpp>
#elif __has_include(<rosidl_generator_cpp/bounded_vector.hpp>)
#include <rosidl_generator_cpp/bounded_vector.hpp>
#else
#error "Actual ROS2 BoundedVector header required; no replacement container"
#endif
#if __has_include(<rosidl_buffer/buffer.hpp>)
#include <rosidl_buffer/buffer.hpp>
#endif
#include <builtin_interfaces/msg/time.hpp>
#include <geometry_msgs/msg/point.hpp>
#include <geometry_msgs/msg/pose.hpp>
#include <geometry_msgs/msg/pose_with_covariance.hpp>
#include <geometry_msgs/msg/pose_with_covariance_stamped.hpp>
#include <geometry_msgs/msg/quaternion.hpp>
#include <isaac_ros_apriltag_interfaces/msg/april_tag_detection.hpp>
#include <isaac_ros_apriltag_interfaces/msg/april_tag_detection_array.hpp>
#include <std_msgs/msg/header.hpp>
#ifndef UWVM_CUSTOM_BOUNDED_NATIVE_TRAITS
#define UWVM_CUSTOM_BOUNDED_NATIVE_TRAITS

#include <nvidia-isaac-ros/native/first-array-jazzy/native_constants.hpp>

namespace uwvm2::imported::ros::ipc
{
    template <>
    /**
     * @brief Select the complete vendor source contract for ::builtin_interfaces::msg::Time.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::builtin_interfaces::msg::Time>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for ::geometry_msgs::msg::Point.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::geometry_msgs::msg::Point>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for ::geometry_msgs::msg::Pose.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::geometry_msgs::msg::Pose>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for ::geometry_msgs::msg::PoseWithCovariance.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::geometry_msgs::msg::PoseWithCovariance>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for ::geometry_msgs::msg::PoseWithCovarianceStamped.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::geometry_msgs::msg::PoseWithCovarianceStamped>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for ::geometry_msgs::msg::Quaternion.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::geometry_msgs::msg::Quaternion>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for
     * ::isaac_ros_apriltag_interfaces::msg::AprilTagDetection.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::isaac_ros_apriltag_interfaces::msg::AprilTagDetection>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for
     * ::isaac_ros_apriltag_interfaces::msg::AprilTagDetectionArray.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::isaac_ros_apriltag_interfaces::msg::AprilTagDetectionArray>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };

    template <>
    /**
     * @brief Select the complete vendor source contract for ::std_msgs::msg::Header.
     * @details The captured constant-set proof accompanies independently verified native RIHS and full field
     * metadata; the trait alone establishes no execution or permission.
     */
    struct complete_vendor_native_traits<::std_msgs::msg::Header>
    {
        static constexpr bool enabled = true;

        /**
         * @brief Apply the captured original constant-set check for this native message.
         * @details Returns true for this graph, whose original declarations contain no constants. Native RIHS
         * and complete field descriptions must still be attested independently.
         */
        static bool constants() noexcept
        {
            return ::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::
                validate();
        }
    };
} // namespace uwvm2::imported::ros::ipc

namespace uwvm_custom_bounded_native
{
    /**
     * @brief Borrowed original interface name and full declaration text.
     * @details Both views refer to static generated literals describing original native declarations,
     * independently of stricter guest dynamic bounds.
     */
    struct definition_entry
    {
        std::string_view type, fields;
    };

    template <class T>
    /**
     * @brief Describe an original fixed-size native array at compile time.
     * @details The primary template has no supported element; std::array specializations expose its exact
     * element and extent without reading or allocating storage.
     */
    struct fixed_shape
    {
        /** @brief Actual element type of this supported original container, or void for the unsupported primary
         * template. */
        using element = void;
        static constexpr size_t size = 0;
    };

    template <class T, size_t N>
    /**
     * @brief Describe an original fixed-size native array at compile time.
     * @details The primary template has no supported element; std::array specializations expose its exact
     * element and extent without reading or allocating storage.
     */
    struct fixed_shape<std::array<T, N>>
    {
        /** @brief Actual element type of this supported original container, or void for the unsupported primary
         * template. */
        using element = T;
        static constexpr size_t size = N;
    };

    template <class T>
    /**
     * @brief Describe a supported native sequence container at compile time.
     * @details The primary template is unsupported. Specializations retain the actual element and native bound;
     * zero denotes unbounded native storage. Separate codecs enforce guest bounds. Optional rosidl Buffer
     * support accepts uint8 only and performs no device copy.
     */
    struct sequence_shape
    {
        /** @brief Actual element type of this supported original container, or void for the unsupported primary
         * template. */
        using element = void;
        static constexpr bool supported = false;
        static constexpr size_t bound = 0;
    };

    template <class T, class A>
    /**
     * @brief Describe a supported native sequence container at compile time.
     * @details The primary template is unsupported. Specializations retain the actual element and native bound;
     * zero denotes unbounded native storage. Separate codecs enforce guest bounds. Optional rosidl Buffer
     * support accepts uint8 only and performs no device copy.
     */
    struct sequence_shape<std::vector<T, A>>
    {
        /** @brief Actual element type of this supported original container, or void for the unsupported primary
         * template. */
        using element = T;
        static constexpr bool supported = true;
        static constexpr size_t bound = 0;
    };

    template <class T>
    /**
     * @brief Test whether the native storage is directly accessible to the CPU.
     * @details The ordinary-container overload returns true without inspecting its argument. The optional
     * official rosidl Buffer overload accepts only CpuBufferImpl; it performs no device copy and establishes no
     * GPU/NITROS qualification.
     */
    bool native_accessible(T const&) noexcept
    {
        return true;
    }

    /** Only generated empty Service/Action components use this adapter. The Gateway
     * separately attests the complete empty native metadata before an endpoint exists.
     * Pre-IDL empty structs have no dummy member; present members must be exact uint8. */
    template <class T, class = void>
    /**
     * @brief Adapt an independently attested original empty native component.
     * @details An absent placeholder needs no write. A present structure_needs_at_least_one_member must be exact
     * uint8 and zero. This compatibility type adds no message registration.
     */
    struct empty_component
    {
        /**
         * @brief Check an attested original empty-component implementation placeholder.
         * @details Returns true when no placeholder exists, or when the exact uint8 placeholder is zero. The
         * caller must independently attest that the original component has no fields.
         */
        static bool zero(T const&) noexcept
        {
            return true;
        }

        /**
         * @brief Initialize only the original empty-component placeholder.
         * @details Writes zero to the exact uint8 placeholder when present; otherwise performs no write. This
         * compatibility helper creates no canonical wire field or ROS entity.
         */
        static void initialize(T&) noexcept
        {
        }
    };

    template <class T>
    /**
     * @brief Adapt an independently attested original empty native component.
     * @details An absent placeholder needs no write. A present structure_needs_at_least_one_member must be exact
     * uint8 and zero. This compatibility type adds no message registration.
     */
    struct empty_component<T, std::void_t<decltype(std::declval<T&>().structure_needs_at_least_one_member)>>
    {
        /** @brief Exact implementation placeholder type, statically required to be uint8_t for an original empty
         * component. */
        using member =
            std::remove_cv_t<std::remove_reference_t<decltype(std::declval<T&>().structure_needs_at_least_one_member)>>;
        static_assert(std::is_same<member, uint8_t>::value, "official empty component placeholder differs");

        /**
         * @brief Check an attested original empty-component implementation placeholder.
         * @details Returns true when no placeholder exists, or when the exact uint8 placeholder is zero. The
         * caller must independently attest that the original component has no fields.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool zero(T const& value) noexcept
        {
            return value.structure_needs_at_least_one_member == 0;
        }

        /**
         * @brief Initialize only the original empty-component placeholder.
         * @details Writes zero to the exact uint8 placeholder when present; otherwise performs no write. This
         * compatibility helper creates no canonical wire field or ROS entity.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static void initialize(T& value) noexcept
        {
            value.structure_needs_at_least_one_member = 0;
        }
    };

    template <class T>
    /**
     * @brief Identify a supported original native string representation.
     * @details The primary template is unsupported; the char std::basic_string specialization is supported. The
     * codec separately checks UTF-8 and the selected canonical byte bound.
     */
    struct string_shape
    {
        static constexpr bool supported = false;
    };

    template <class A>
    /**
     * @brief Identify a supported original native string representation.
     * @details The primary template is unsupported; the char std::basic_string specialization is supported. The
     * codec separately checks UTF-8 and the selected canonical byte bound.
     */
    struct string_shape<std::basic_string<char, std::char_traits<char>, A>>
    {
        static constexpr bool supported = true;
    };
} // namespace uwvm_custom_bounded_native
#endif
#ifndef UWVM_CUSTOM_BOUNDED_ROSIDL_TRAITS
#define UWVM_CUSTOM_BOUNDED_ROSIDL_TRAITS

namespace uwvm_custom_bounded_native
{
#if __has_include(<rosidl_runtime_cpp/bounded_vector.hpp>)
    template <class T, size_t N, class A>
    /**
     * @brief Describe a supported native sequence container at compile time.
     * @details The primary template is unsupported. Specializations retain the actual element and native bound;
     * zero denotes unbounded native storage. Separate codecs enforce guest bounds. Optional rosidl Buffer
     * support accepts uint8 only and performs no device copy.
     */
    struct sequence_shape<::rosidl_runtime_cpp::BoundedVector<T, N, A>>
    {
        /** @brief Actual element type of this supported original container, or void for the unsupported primary
         * template. */
        using element = T;
        static constexpr bool supported = true;
        static constexpr size_t bound = N;
    };
#elif __has_include(<rosidl_generator_cpp/bounded_vector.hpp>)
    template <class T, size_t N, class A>
    /**
     * @brief Describe a supported native sequence container at compile time.
     * @details The primary template is unsupported. Specializations retain the actual element and native bound;
     * zero denotes unbounded native storage. Separate codecs enforce guest bounds. Optional rosidl Buffer
     * support accepts uint8 only and performs no device copy.
     */
    struct sequence_shape<::rosidl_generator_cpp::BoundedVector<T, N, A>>
    {
        /** @brief Actual element type of this supported original container, or void for the unsupported primary
         * template. */
        using element = T;
        static constexpr bool supported = true;
        static constexpr size_t bound = N;
    };
#endif
#if __has_include(<rosidl_buffer/buffer.hpp>)
    /** Lyrical uint8[] uses this exact official container. Reject non-CPU storage
     * before noexcept validation accesses data; never trigger an implicit GPU copy. */
    template <class T, class A>
    /**
     * @brief Describe a supported native sequence container at compile time.
     * @details The primary template is unsupported. Specializations retain the actual element and native bound;
     * zero denotes unbounded native storage. Separate codecs enforce guest bounds. Optional rosidl Buffer
     * support accepts uint8 only and performs no device copy.
     */
    struct sequence_shape<rosidl::Buffer<T, A>>
    {
        /** @brief Actual element type of this supported original container, or void for the unsupported primary
         * template. */
        using element = T;
        static constexpr bool supported = std::is_same<T, uint8_t>::value;
        static constexpr size_t bound = 0;
    };

    template <class T, class A>
    /**
     * @brief Test whether the native storage is directly accessible to the CPU.
     * @details The ordinary-container overload returns true without inspecting its argument. The optional
     * official rosidl Buffer overload accepts only CpuBufferImpl; it performs no device copy and establishes no
     * GPU/NITROS qualification.
     * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
     */
    bool native_accessible(rosidl::Buffer<T, A> const& value) noexcept
    {
        return dynamic_cast<rosidl::CpuBufferImpl<T, A> const*>(value.get_impl()) != nullptr;
    }
#endif
} // namespace uwvm_custom_bounded_native
#endif
namespace uwvm_custom_bounded_native
{
    /**
     * @brief Complete canonical conversion for ::builtin_interfaces::msg::Time.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Builtin_interfacesMsgTimeCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::builtin_interfaces::msg::Time;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_builtin_interfaces_msg_Time;
        static constexpr char const* type = "builtin_interfaces/msg/Time";
        static constexpr char const* native_identity =
            "RIHS01_b106235e25a4c5ed35098aa0a61a3ee9c9b18d197f398b0e4206cea9acf9c197";
        static constexpr char const* codec_identity =
            "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        static constexpr size_t wire_bytes = 8;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().sec)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, int32_t>::value, "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().nanosec)>>;
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, uint32_t>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            if (value.nanosec >= 1000000000)
            {
                return false;
            }
            {
                n += 4;
            }
            {
                n += 4;
            }
            if (n > 8)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            record.sec = value.sec;
            record.nanosec = value.nanosec;
            return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            value.sec = record.sec;
            value.nanosec = record.nanosec;
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) ||
                roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&record, next.data(), next.size(), &used) ||
                used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"builtin_interfaces/msg/Time",
             "# This message communicates ROS Time defined here:\n# https://design.ros2.org/articles/clock_and_time.html\n\n# The seconds component, valid over all int32 values.\nint32 sec\n\n# The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. \n# e.g.\n# The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8}\n# The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8}\nuint32 nanosec\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"sec", "int32", 0, false, 0, false, 0, "", false},
            {"nanosec", "uint32", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"builtin_interfaces/msg/Time", schema_fields_0, 2},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::std_msgs::msg::Header.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Std_msgsMsgHeaderCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::std_msgs::msg::Header;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_std_msgs_msg_Header;
        static constexpr char const* type = "std_msgs/msg/Header";
        static constexpr char const* native_identity =
            "RIHS01_f49fb3ae2cf070f793645ff749683ac6b06203e41c891e17701b1cb597ce6a01";
        static constexpr char const* codec_identity =
            "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
        static constexpr size_t wire_bytes = 76;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().stamp)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, ::builtin_interfaces::msg::Time>::value,
                      "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().frame_id)>>;
        using field_1 = raw_1;
        static_assert(string_shape<field_1>::supported, "official field must be an 8-bit allocator-aware string");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                size_t nested = 0;
                if (!Ros2Builtin_interfacesMsgTimeCodec::encoded_size(value.stamp, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                if (value.frame_id.size() > 64 ||
                    !uwvm_bounded_utf8(reinterpret_cast<unsigned char const*>(value.frame_id.data()),
                                       value.frame_id.size()))
                {
                    return false;
                }
                n += 4 + value.frame_id.size();
            }
            if (n > 76)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Builtin_interfacesMsgTimeCodec::to_record(value.stamp, record.stamp))
            {
                return false;
            }
            if (value.frame_id.size() > 64 ||
                !uwvm_bounded_utf8(reinterpret_cast<unsigned char const*>(value.frame_id.data()),
                                   value.frame_id.size()))
            {
                return false;
            }
            record.frame_id.size = static_cast<uint32_t>(value.frame_id.size());
            uwvm_bounded_copy(record.frame_id.data, value.frame_id.data(), value.frame_id.size());
            return roswasmc_bounded_2_std_msgs_msg_Header_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Builtin_interfacesMsgTimeCodec::from_record(record.stamp, value.stamp))
            {
                return false;
            }
            value.frame_id.assign(reinterpret_cast<char const*>(record.frame_id.data), record.frame_id.size);
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) || roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_std_msgs_msg_Header_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_std_msgs_msg_Header_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_std_msgs_msg_Header_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"std_msgs/msg/Header",
             "# Standard metadata for higher-level stamped data types.\n# This is generally used to communicate timestamped data\n# in a particular coordinate frame.\n\n# Two-integer timestamp that is expressed as seconds and nanoseconds.\nbuiltin_interfaces/Time stamp\n\n# Transform frame with which this data is associated.\nstring frame_id\n"},
            {"builtin_interfaces/msg/Time",
             "# This message communicates ROS Time defined here:\n# https://design.ros2.org/articles/clock_and_time.html\n\n# The seconds component, valid over all int32 values.\nint32 sec\n\n# The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. \n# e.g.\n# The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8}\n# The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8}\nuint32 nanosec\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"stamp", "builtin_interfaces/msg/Time", 0, false, 0, false, 0, "", false},
            {"frame_id", "string", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"sec", "int32", 0, false, 0, false, 0, "", false},
            {"nanosec", "uint32", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"std_msgs/msg/Header", schema_fields_0, 2},
            {"builtin_interfaces/msg/Time", schema_fields_1, 2},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::geometry_msgs::msg::Point.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Geometry_msgsMsgPointCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::geometry_msgs::msg::Point;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_geometry_msgs_msg_Point;
        static constexpr char const* type = "geometry_msgs/msg/Point";
        static constexpr char const* native_identity =
            "RIHS01_6963084842a9b04494d6b2941d11444708d892da2f4b09843b9c43f42a7f6881";
        static constexpr char const* codec_identity =
            "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
        static constexpr size_t wire_bytes = 24;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().x)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, double>::value, "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().y)>>;
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, double>::value, "official scalar/nested field type differs");
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().z)>>;
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, double>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                uint64_t bits = 0;
                uwvm_bounded_copy(&bits, &value.x, 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return false;
                }
                n += 8;
            }
            {
                uint64_t bits = 0;
                uwvm_bounded_copy(&bits, &value.y, 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return false;
                }
                n += 8;
            }
            {
                uint64_t bits = 0;
                uwvm_bounded_copy(&bits, &value.z, 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return false;
                }
                n += 8;
            }
            if (n > 24)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            uwvm_bounded_copy(&record.x, &value.x, 8);
            uwvm_bounded_copy(&record.y, &value.y, 8);
            uwvm_bounded_copy(&record.z, &value.z, 8);
            return roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            uwvm_bounded_copy(&value.x, &record.x, 8);
            uwvm_bounded_copy(&value.y, &record.y, 8);
            uwvm_bounded_copy(&value.z, &record.z, 8);
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) || roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&record, next.data(), next.size(), &used) ||
                used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_geometry_msgs_msg_Point_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"geometry_msgs/msg/Point",
             "# This contains the position of a point in free space\nfloat64 x\nfloat64 y\nfloat64 z\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"x", "float64", 0, false, 0, false, 0, "", false},
            {"y", "float64", 0, false, 0, false, 0, "", false},
            {"z", "float64", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"geometry_msgs/msg/Point", schema_fields_0, 3},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::geometry_msgs::msg::Quaternion.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Geometry_msgsMsgQuaternionCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::geometry_msgs::msg::Quaternion;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_geometry_msgs_msg_Quaternion;
        static constexpr char const* type = "geometry_msgs/msg/Quaternion";
        static constexpr char const* native_identity =
            "RIHS01_8a765f66778c8ff7c8ab94afcc590a2ed5325a1d9a076ffff38fbce36f458684";
        static constexpr char const* codec_identity =
            "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        static constexpr size_t wire_bytes = 32;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().x)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, double>::value, "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().y)>>;
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, double>::value, "official scalar/nested field type differs");
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().z)>>;
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, double>::value, "official scalar/nested field type differs");
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().w)>>;
        using field_3 = raw_3;
        static_assert(std::is_same<field_3, double>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                uint64_t bits = 0;
                uwvm_bounded_copy(&bits, &value.x, 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return false;
                }
                n += 8;
            }
            {
                uint64_t bits = 0;
                uwvm_bounded_copy(&bits, &value.y, 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return false;
                }
                n += 8;
            }
            {
                uint64_t bits = 0;
                uwvm_bounded_copy(&bits, &value.z, 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return false;
                }
                n += 8;
            }
            {
                uint64_t bits = 0;
                uwvm_bounded_copy(&bits, &value.w, 8);
                if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                {
                    return false;
                }
                n += 8;
            }
            if (n > 32)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            uwvm_bounded_copy(&record.x, &value.x, 8);
            uwvm_bounded_copy(&record.y, &value.y, 8);
            uwvm_bounded_copy(&record.z, &value.z, 8);
            uwvm_bounded_copy(&record.w, &value.w, 8);
            return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            uwvm_bounded_copy(&value.x, &record.x, 8);
            uwvm_bounded_copy(&value.y, &record.y, 8);
            uwvm_bounded_copy(&value.z, &record.z, 8);
            uwvm_bounded_copy(&value.w, &record.w, 8);
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) ||
                roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&record, next.data(), next.size(), &used) ||
                used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"geometry_msgs/msg/Quaternion",
             "# This represents an orientation in free space in quaternion form.\n\nfloat64 x 0\nfloat64 y 0\nfloat64 z 0\nfloat64 w 1\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"x", "float64", 0, false, 0, false, 0, "0.0", true},
            {"y", "float64", 0, false, 0, false, 0, "0.0", true},
            {"z", "float64", 0, false, 0, false, 0, "0.0", true},
            {"w", "float64", 0, false, 0, false, 0, "1.0", true}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"geometry_msgs/msg/Quaternion", schema_fields_0, 4},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::geometry_msgs::msg::Pose.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Geometry_msgsMsgPoseCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::geometry_msgs::msg::Pose;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_geometry_msgs_msg_Pose;
        static constexpr char const* type = "geometry_msgs/msg/Pose";
        static constexpr char const* native_identity =
            "RIHS01_d501954e9476cea2996984e812054b68026ae0bfae789d9a10b23daf35cc90fa";
        static constexpr char const* codec_identity =
            "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
        static constexpr size_t wire_bytes = 56;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().position)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, ::geometry_msgs::msg::Point>::value,
                      "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().orientation)>>;
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, ::geometry_msgs::msg::Quaternion>::value,
                      "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                size_t nested = 0;
                if (!Ros2Geometry_msgsMsgPointCodec::encoded_size(value.position, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                size_t nested = 0;
                if (!Ros2Geometry_msgsMsgQuaternionCodec::encoded_size(value.orientation, nested))
                {
                    return false;
                }
                n += nested;
            }
            if (n > 56)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgPointCodec::to_record(value.position, record.position))
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgQuaternionCodec::to_record(value.orientation, record.orientation))
            {
                return false;
            }
            return roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgPointCodec::from_record(record.position, value.position))
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgQuaternionCodec::from_record(record.orientation, value.orientation))
            {
                return false;
            }
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) || roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&record, next.data(), next.size(), &used) || used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"geometry_msgs/msg/Pose",
             "# A representation of pose in free space, composed of position and orientation.\n\nPoint position\nQuaternion orientation\n"},
            {"geometry_msgs/msg/Point",
             "# This contains the position of a point in free space\nfloat64 x\nfloat64 y\nfloat64 z\n"},
            {"geometry_msgs/msg/Quaternion",
             "# This represents an orientation in free space in quaternion form.\n\nfloat64 x 0\nfloat64 y 0\nfloat64 z 0\nfloat64 w 1\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"position", "geometry_msgs/msg/Point", 0, false, 0, false, 0, "", false},
            {"orientation", "geometry_msgs/msg/Quaternion", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"x", "float64", 0, false, 0, false, 0, "", false},
            {"y", "float64", 0, false, 0, false, 0, "", false},
            {"z", "float64", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"x", "float64", 0, false, 0, false, 0, "0.0", true},
            {"y", "float64", 0, false, 0, false, 0, "0.0", true},
            {"z", "float64", 0, false, 0, false, 0, "0.0", true},
            {"w", "float64", 0, false, 0, false, 0, "1.0", true}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"geometry_msgs/msg/Pose", schema_fields_0, 2},
            {"geometry_msgs/msg/Point", schema_fields_1, 3},
            {"geometry_msgs/msg/Quaternion", schema_fields_2, 4},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::geometry_msgs::msg::PoseWithCovariance.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Geometry_msgsMsgPoseWithCovarianceCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::geometry_msgs::msg::PoseWithCovariance;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance;
        static constexpr char const* type = "geometry_msgs/msg/PoseWithCovariance";
        static constexpr char const* native_identity =
            "RIHS01_9a7c0fd234b7f45c6098745ecccd773ca1085670e64107135397aee31c02e1bb";
        static constexpr char const* codec_identity =
            "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
        static constexpr size_t wire_bytes = 344;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().pose)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, ::geometry_msgs::msg::Pose>::value,
                      "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().covariance)>>;
        static_assert(fixed_shape<raw_1>::size == 36, "official fixed array length differs");
        using field_1 = typename fixed_shape<raw_1>::element;
        static_assert(std::is_same<field_1, double>::value, "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                size_t nested = 0;
                if (!Ros2Geometry_msgsMsgPoseCodec::encoded_size(value.pose, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                for (size_t i = 0; i < 36; ++i)
                {
                    uint64_t bits = 0;
                    uwvm_bounded_copy(&bits, &value.covariance[i], 8);
                    if ((bits & UINT64_C(0x7ff0000000000000)) == UINT64_C(0x7ff0000000000000))
                    {
                        return false;
                    }
                    n += 8;
                }
            }
            if (n > 344)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgPoseCodec::to_record(value.pose, record.pose))
            {
                return false;
            }
            for (size_t i = 0; i < 36; ++i)
            {
                uwvm_bounded_copy(&record.covariance[i], &value.covariance[i], 8);
            }
            return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgPoseCodec::from_record(record.pose, value.pose))
            {
                return false;
            }
            for (size_t i = 0; i < 36; ++i)
            {
                uwvm_bounded_copy(&value.covariance[i], &record.covariance[i], 8);
            }
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) ||
                roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(
                    &record, next.data(), next.size(), &used) ||
                used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"geometry_msgs/msg/PoseWithCovariance",
             "# This represents a pose in free space with uncertainty.\n\nPose pose\n\n# Row-major representation of the 6x6 covariance matrix\n# The orientation parameters use a fixed-axis representation.\n# In order, the parameters are:\n# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\nfloat64[36] covariance\n"},
            {"geometry_msgs/msg/Pose",
             "# A representation of pose in free space, composed of position and orientation.\n\nPoint position\nQuaternion orientation\n"},
            {"geometry_msgs/msg/Point",
             "# This contains the position of a point in free space\nfloat64 x\nfloat64 y\nfloat64 z\n"},
            {"geometry_msgs/msg/Quaternion",
             "# This represents an orientation in free space in quaternion form.\n\nfloat64 x 0\nfloat64 y 0\nfloat64 z 0\nfloat64 w 1\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"pose", "geometry_msgs/msg/Pose", 0, false, 0, false, 0, "", false},
            {"covariance", "float64", 36, true, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"position", "geometry_msgs/msg/Point", 0, false, 0, false, 0, "", false},
            {"orientation", "geometry_msgs/msg/Quaternion", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"x", "float64", 0, false, 0, false, 0, "", false},
            {"y", "float64", 0, false, 0, false, 0, "", false},
            {"z", "float64", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_3[] = {
            {"x", "float64", 0, false, 0, false, 0, "0.0", true},
            {"y", "float64", 0, false, 0, false, 0, "0.0", true},
            {"z", "float64", 0, false, 0, false, 0, "0.0", true},
            {"w", "float64", 0, false, 0, false, 0, "1.0", true}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"geometry_msgs/msg/PoseWithCovariance", schema_fields_0, 2},
            {"geometry_msgs/msg/Pose", schema_fields_1, 2},
            {"geometry_msgs/msg/Point", schema_fields_2, 3},
            {"geometry_msgs/msg/Quaternion", schema_fields_3, 4},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::geometry_msgs::msg::PoseWithCovarianceStamped.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::geometry_msgs::msg::PoseWithCovarianceStamped;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped;
        static constexpr char const* type = "geometry_msgs/msg/PoseWithCovarianceStamped";
        static constexpr char const* native_identity =
            "RIHS01_26432f9803e43727d3c8f668d1fdb3c630f548af631e2f4e31382371bfea3b6e";
        static constexpr char const* codec_identity =
            "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3";
        static constexpr size_t wire_bytes = 420;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().header)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, ::std_msgs::msg::Header>::value,
                      "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().pose)>>;
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, ::geometry_msgs::msg::PoseWithCovariance>::value,
                      "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                size_t nested = 0;
                if (!Ros2Std_msgsMsgHeaderCodec::encoded_size(value.header, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                size_t nested = 0;
                if (!Ros2Geometry_msgsMsgPoseWithCovarianceCodec::encoded_size(value.pose, nested))
                {
                    return false;
                }
                n += nested;
            }
            if (n > 420)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Std_msgsMsgHeaderCodec::to_record(value.header, record.header))
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgPoseWithCovarianceCodec::to_record(value.pose, record.pose))
            {
                return false;
            }
            return roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Std_msgsMsgHeaderCodec::from_record(record.header, value.header))
            {
                return false;
            }
            if (!Ros2Geometry_msgsMsgPoseWithCovarianceCodec::from_record(record.pose, value.pose))
            {
                return false;
            }
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) ||
                roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode(&record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(&record), used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode(
                    &record, next.data(), next.size(), &used) ||
                used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"geometry_msgs/msg/PoseWithCovarianceStamped",
             "# This expresses an estimated pose with a reference coordinate frame and timestamp\n\nstd_msgs/Header header\nPoseWithCovariance pose\n"},
            {"std_msgs/msg/Header",
             "# Standard metadata for higher-level stamped data types.\n# This is generally used to communicate timestamped data\n# in a particular coordinate frame.\n\n# Two-integer timestamp that is expressed as seconds and nanoseconds.\nbuiltin_interfaces/Time stamp\n\n# Transform frame with which this data is associated.\nstring frame_id\n"},
            {"builtin_interfaces/msg/Time",
             "# This message communicates ROS Time defined here:\n# https://design.ros2.org/articles/clock_and_time.html\n\n# The seconds component, valid over all int32 values.\nint32 sec\n\n# The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. \n# e.g.\n# The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8}\n# The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8}\nuint32 nanosec\n"},
            {"geometry_msgs/msg/PoseWithCovariance",
             "# This represents a pose in free space with uncertainty.\n\nPose pose\n\n# Row-major representation of the 6x6 covariance matrix\n# The orientation parameters use a fixed-axis representation.\n# In order, the parameters are:\n# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\nfloat64[36] covariance\n"},
            {"geometry_msgs/msg/Pose",
             "# A representation of pose in free space, composed of position and orientation.\n\nPoint position\nQuaternion orientation\n"},
            {"geometry_msgs/msg/Point",
             "# This contains the position of a point in free space\nfloat64 x\nfloat64 y\nfloat64 z\n"},
            {"geometry_msgs/msg/Quaternion",
             "# This represents an orientation in free space in quaternion form.\n\nfloat64 x 0\nfloat64 y 0\nfloat64 z 0\nfloat64 w 1\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"header", "std_msgs/msg/Header", 0, false, 0, false, 0, "", false},
            {"pose", "geometry_msgs/msg/PoseWithCovariance", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"stamp", "builtin_interfaces/msg/Time", 0, false, 0, false, 0, "", false},
            {"frame_id", "string", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"sec", "int32", 0, false, 0, false, 0, "", false},
            {"nanosec", "uint32", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_3[] = {
            {"pose", "geometry_msgs/msg/Pose", 0, false, 0, false, 0, "", false},
            {"covariance", "float64", 36, true, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_4[] = {
            {"position", "geometry_msgs/msg/Point", 0, false, 0, false, 0, "", false},
            {"orientation", "geometry_msgs/msg/Quaternion", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_5[] = {
            {"x", "float64", 0, false, 0, false, 0, "", false},
            {"y", "float64", 0, false, 0, false, 0, "", false},
            {"z", "float64", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_6[] = {
            {"x", "float64", 0, false, 0, false, 0, "0.0", true},
            {"y", "float64", 0, false, 0, false, 0, "0.0", true},
            {"z", "float64", 0, false, 0, false, 0, "0.0", true},
            {"w", "float64", 0, false, 0, false, 0, "1.0", true}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"geometry_msgs/msg/PoseWithCovarianceStamped", schema_fields_0, 2},
            {"std_msgs/msg/Header", schema_fields_1, 2},
            {"builtin_interfaces/msg/Time", schema_fields_2, 2},
            {"geometry_msgs/msg/PoseWithCovariance", schema_fields_3, 2},
            {"geometry_msgs/msg/Pose", schema_fields_4, 2},
            {"geometry_msgs/msg/Point", schema_fields_5, 3},
            {"geometry_msgs/msg/Quaternion", schema_fields_6, 4},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::isaac_ros_apriltag_interfaces::msg::AprilTagDetection.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::isaac_ros_apriltag_interfaces::msg::AprilTagDetection;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection;
        static constexpr char const* type = "isaac_ros_apriltag_interfaces/msg/AprilTagDetection";
        static constexpr char const* native_identity =
            "RIHS01_ea7673ade75e4204d36c7af5ebd2a35417b26c2209b7764bcf9cd1a3441259c6";
        static constexpr char const* codec_identity =
            "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7";
        static constexpr size_t wire_bytes = 612;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().family)>>;
        using field_0 = raw_0;
        static_assert(string_shape<field_0>::supported, "official field must be an 8-bit allocator-aware string");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().id)>>;
        using field_1 = raw_1;
        static_assert(std::is_same<field_1, int32_t>::value, "official scalar/nested field type differs");
        using raw_2 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().center)>>;
        using field_2 = raw_2;
        static_assert(std::is_same<field_2, ::geometry_msgs::msg::Point>::value,
                      "official scalar/nested field type differs");
        using raw_3 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().corners)>>;
        static_assert(fixed_shape<raw_3>::size == 4, "official fixed array length differs");
        using field_3 = typename fixed_shape<raw_3>::element;
        static_assert(std::is_same<field_3, ::geometry_msgs::msg::Point>::value,
                      "official scalar/nested field type differs");
        using raw_4 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().pose)>>;
        using field_4 = raw_4;
        static_assert(std::is_same<field_4, ::geometry_msgs::msg::PoseWithCovarianceStamped>::value,
                      "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                if (value.family.size() > 64 ||
                    !uwvm_bounded_utf8(reinterpret_cast<unsigned char const*>(value.family.data()),
                                       value.family.size()))
                {
                    return false;
                }
                n += 4 + value.family.size();
            }
            {
                n += 4;
            }
            {
                size_t nested = 0;
                if (!Ros2Geometry_msgsMsgPointCodec::encoded_size(value.center, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                for (size_t i = 0; i < 4; ++i)
                {
                    size_t nested = 0;
                    if (!Ros2Geometry_msgsMsgPointCodec::encoded_size(value.corners[i], nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            {
                size_t nested = 0;
                if (!Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec::encoded_size(value.pose, nested))
                {
                    return false;
                }
                n += nested;
            }
            if (n > 612)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (value.family.size() > 64 ||
                !uwvm_bounded_utf8(reinterpret_cast<unsigned char const*>(value.family.data()), value.family.size()))
            {
                return false;
            }
            record.family.size = static_cast<uint32_t>(value.family.size());
            uwvm_bounded_copy(record.family.data, value.family.data(), value.family.size());
            record.id = value.id;
            if (!Ros2Geometry_msgsMsgPointCodec::to_record(value.center, record.center))
            {
                return false;
            }
            for (size_t i = 0; i < 4; ++i)
            {
                if (!Ros2Geometry_msgsMsgPointCodec::to_record(value.corners[i], record.corners[i]))
                {
                    return false;
                }
            }
            if (!Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec::to_record(value.pose, record.pose))
            {
                return false;
            }
            return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            value.family.assign(reinterpret_cast<char const*>(record.family.data), record.family.size);
            value.id = record.id;
            if (!Ros2Geometry_msgsMsgPointCodec::from_record(record.center, value.center))
            {
                return false;
            }
            for (size_t i = 0; i < 4; ++i)
            {
                if (!Ros2Geometry_msgsMsgPointCodec::from_record(record.corners[i], value.corners[i]))
                {
                    return false;
                }
            }
            if (!Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec::from_record(record.pose, value.pose))
            {
                return false;
            }
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) ||
                roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(&record) != capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(
                &record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(&record),
                   used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(
                    &record, next.data(), next.size(), &used) ||
                used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode(bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"isaac_ros_apriltag_interfaces/msg/AprilTagDetection",
             "string family\nint32 id\ngeometry_msgs/Point center      # centre in (x,y) pixel coordinates\ngeometry_msgs/Point[4] corners  # corners of tag ((x1,y1),(x2,y2),...)\ngeometry_msgs/PoseWithCovarianceStamped pose\n"},
            {"geometry_msgs/msg/Point",
             "# This contains the position of a point in free space\nfloat64 x\nfloat64 y\nfloat64 z\n"},
            {"geometry_msgs/msg/PoseWithCovarianceStamped",
             "# This expresses an estimated pose with a reference coordinate frame and timestamp\n\nstd_msgs/Header header\nPoseWithCovariance pose\n"},
            {"std_msgs/msg/Header",
             "# Standard metadata for higher-level stamped data types.\n# This is generally used to communicate timestamped data\n# in a particular coordinate frame.\n\n# Two-integer timestamp that is expressed as seconds and nanoseconds.\nbuiltin_interfaces/Time stamp\n\n# Transform frame with which this data is associated.\nstring frame_id\n"},
            {"builtin_interfaces/msg/Time",
             "# This message communicates ROS Time defined here:\n# https://design.ros2.org/articles/clock_and_time.html\n\n# The seconds component, valid over all int32 values.\nint32 sec\n\n# The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. \n# e.g.\n# The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8}\n# The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8}\nuint32 nanosec\n"},
            {"geometry_msgs/msg/PoseWithCovariance",
             "# This represents a pose in free space with uncertainty.\n\nPose pose\n\n# Row-major representation of the 6x6 covariance matrix\n# The orientation parameters use a fixed-axis representation.\n# In order, the parameters are:\n# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\nfloat64[36] covariance\n"},
            {"geometry_msgs/msg/Pose",
             "# A representation of pose in free space, composed of position and orientation.\n\nPoint position\nQuaternion orientation\n"},
            {"geometry_msgs/msg/Quaternion",
             "# This represents an orientation in free space in quaternion form.\n\nfloat64 x 0\nfloat64 y 0\nfloat64 z 0\nfloat64 w 1\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"family", "string", 0, false, 0, false, 0, "", false},
            {"id", "int32", 0, false, 0, false, 0, "", false},
            {"center", "geometry_msgs/msg/Point", 0, false, 0, false, 0, "", false},
            {"corners", "geometry_msgs/msg/Point", 4, true, 0, false, 0, "", false},
            {"pose", "geometry_msgs/msg/PoseWithCovarianceStamped", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"x", "float64", 0, false, 0, false, 0, "", false},
            {"y", "float64", 0, false, 0, false, 0, "", false},
            {"z", "float64", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"header", "std_msgs/msg/Header", 0, false, 0, false, 0, "", false},
            {"pose", "geometry_msgs/msg/PoseWithCovariance", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_3[] = {
            {"stamp", "builtin_interfaces/msg/Time", 0, false, 0, false, 0, "", false},
            {"frame_id", "string", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_4[] = {
            {"sec", "int32", 0, false, 0, false, 0, "", false},
            {"nanosec", "uint32", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_5[] = {
            {"pose", "geometry_msgs/msg/Pose", 0, false, 0, false, 0, "", false},
            {"covariance", "float64", 36, true, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_6[] = {
            {"position", "geometry_msgs/msg/Point", 0, false, 0, false, 0, "", false},
            {"orientation", "geometry_msgs/msg/Quaternion", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_7[] = {
            {"x", "float64", 0, false, 0, false, 0, "0.0", true},
            {"y", "float64", 0, false, 0, false, 0, "0.0", true},
            {"z", "float64", 0, false, 0, false, 0, "0.0", true},
            {"w", "float64", 0, false, 0, false, 0, "1.0", true}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"isaac_ros_apriltag_interfaces/msg/AprilTagDetection", schema_fields_0, 5},
            {"geometry_msgs/msg/Point", schema_fields_1, 3},
            {"geometry_msgs/msg/PoseWithCovarianceStamped", schema_fields_2, 2},
            {"std_msgs/msg/Header", schema_fields_3, 2},
            {"builtin_interfaces/msg/Time", schema_fields_4, 2},
            {"geometry_msgs/msg/PoseWithCovariance", schema_fields_5, 2},
            {"geometry_msgs/msg/Pose", schema_fields_6, 2},
            {"geometry_msgs/msg/Quaternion", schema_fields_7, 4},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };

    /**
     * @brief Complete canonical conversion for ::isaac_ros_apriltag_interfaces::msg::AprilTagDetectionArray.
     * @details Every original nested field is retained. Native identity and the full field graph require
     * independent gateway attestation. This converter neither creates an endpoint nor grants authority.
     */
    struct Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec
    {
        static constexpr bool complete_vendor_profile = true;
        /** @brief Actual original ROSIDL message type owned by the native caller. */
        using Native = ::isaac_ros_apriltag_interfaces::msg::AprilTagDetectionArray;
        /** @brief Complete inline canonical C value used as a private conversion temporary. */
        using Record = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray;
        static constexpr char const* type = "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray";
        static constexpr char const* native_identity =
            "RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff";
        static constexpr char const* codec_identity =
            "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5";
        static constexpr size_t wire_bytes = 9872;
        static constexpr bool bounded_profile = true;
        using raw_0 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().header)>>;
        using field_0 = raw_0;
        static_assert(std::is_same<field_0, ::std_msgs::msg::Header>::value,
                      "official scalar/nested field type differs");
        using raw_1 = std::remove_cv_t<std::remove_reference_t<decltype(std::declval<Native&>().detections)>>;
        static_assert(sequence_shape<raw_1>::supported && sequence_shape<raw_1>::bound == 0,
                      "official sequence shape/bound differs");
        using field_1 = typename sequence_shape<raw_1>::element;
        static_assert(std::is_same<field_1, ::isaac_ros_apriltag_interfaces::msg::AprilTagDetection>::value,
                      "official scalar/nested field type differs");

        /**
         * @brief Validate and measure the complete original native message.
         * @details Returns true and assigns out only after all original fields, finite scalars, ROS time
         * semantics, UTF-8 and selected dynamic bounds pass. Refusal preserves out. No allocation or ROS call
         * occurs.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encoded_size(Native const& value, size_t& out) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            size_t n = 0;
            {
                size_t nested = 0;
                if (!Ros2Std_msgsMsgHeaderCodec::encoded_size(value.header, nested))
                {
                    return false;
                }
                n += nested;
            }
            {
                if (!native_accessible(value.detections) || value.detections.size() > 16)
                {
                    return false;
                }
                n += 4;
                for (size_t i = 0; i < value.detections.size(); ++i)
                {
                    size_t nested = 0;
                    if (!Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec::encoded_size(value.detections[i],
                                                                                                  nested))
                    {
                        return false;
                    }
                    n += nested;
                }
            }
            if (n > 9872)
            {
                return false;
            }
            out = n;
            return true;
        }

        /**
         * @brief Copy every native field into a private bounded canonical C value.
         * @details Returns true after complete conversion and record validation. record may be partly filled on
         * false; use it as a private temporary. This helper emits no wire bytes and acquires no authority.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param record Caller-owned bounded canonical conversion temporary.
         */
        static bool to_record(Native const& value, Record& record) noexcept
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Std_msgsMsgHeaderCodec::to_record(value.header, record.header))
            {
                return false;
            }
            if (!native_accessible(value.detections) || value.detections.size() > 16)
            {
                return false;
            }
            record.detections.size = static_cast<uint32_t>(value.detections.size());
            for (size_t i = 0; i < value.detections.size(); ++i)
            {
                if (!Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec::to_record(value.detections[i],
                                                                                           record.detections.data[i]))
                {
                    return false;
                }
            }
            return roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(&record);
        }

        /**
         * @brief Populate a fresh native temporary from a complete canonical record.
         * @details record must already have passed exact decoding. Strings and sequences may allocate and
         * propagate allocation exceptions. Boolean refusal may partly fill value; decode commits only after this
         * conversion succeeds.
         * @param record Caller-owned bounded canonical conversion temporary.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool from_record(Record const& record, Native& value)
        {
            if (!::uwvm_industrial_source_ca3d163bab055381827226140568f3bef7eaac187cebd76878e0b63e9e442356::validate())
            {
                return false;
            }
            if (!Ros2Std_msgsMsgHeaderCodec::from_record(record.header, value.header))
            {
                return false;
            }
            value.detections.resize(record.detections.size);
            for (size_t i = 0; i < record.detections.size; ++i)
            {
                if (!Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec::from_record(record.detections.data[i],
                                                                                             value.detections[i]))
                {
                    return false;
                }
            }
            return true;
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool valid(Native const& value) noexcept
        {
            size_t n = 0;
            return encoded_size(value, n);
        }

        /**
         * @brief Validate the complete original native message without allocation.
         * @details @return True exactly when encoded_size accepts all active fields. This does not normalize
         * geometry, check physical detection accuracy or authorize an operation.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         */
        static bool validate(Native const& value) noexcept
        {
            return valid(value);
        }

        /**
         * @brief Encode the complete native message into an exactly sized byte destination.
         * @details @return True only when capacity equals the exact active wire length and the full
         * conversion/write succeeds. Unlike the C encoder, an oversized capacity is refused. The native input is
         * first copied into a private bounded record; validation precedes writes.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         * @param capacity Available destination extent in bytes.
         */
        static bool encode(Native const& value, uint8_t* out, size_t capacity)
        {
            Record record{};
            size_t n = 0;
            if (!to_record(value, record) ||
                roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(&record) !=
                    capacity)
            {
                return false;
            }
            return !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
                &record, out, capacity, &n);
        }

        /**
         * @brief Encode the complete native message into an owned canonical vector.
         * @details @return True after exact encoding; false preserves out. A private vector is allocated and
         * committed by move. Allocation exceptions may propagate; no CDR bytes or native padding are exposed.
         * @param value Borrowed initialized value, or caller-owned output for a default/conversion routine.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool encode(Native const& value, std::vector<uint8_t>& out)
        {
            Record record{};
            if (!to_record(value, record))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(&record),
                   used = 0;
            std::vector<uint8_t> next(n);
            if (roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(
                    &record, next.data(), next.size(), &used) ||
                used != n)
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        /**
         * @brief Decode one exact canonical payload into a complete original native value.
         * @details @return True after full decoding and conversion; false leaves out unchanged. A bounded C
         * record and a fresh native temporary precede the final assignment. Native string/vector allocation may
         * throw; no ROS or device operation occurs.
         * @param bytes Borrowed canonical payload bytes, disjoint from out.
         * @param size Exact canonical payload length; trailing bytes and truncation are rejected.
         * @param out Caller-owned output storage, disjoint from the borrowed input.
         */
        static bool decode(uint8_t const* bytes, size_t size, Native& out)
        {
            Record record{};
            if (roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(
                    bytes, size, &record))
            {
                return false;
            }
            Native next{};
            if (!from_record(record, next))
            {
                return false;
            }
            out = std::move(next);
            return true;
        }

        inline static constexpr definition_entry definitions[] = {
            {"isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray",
             "std_msgs/Header header\nAprilTagDetection[] detections\n"},
            {"std_msgs/msg/Header",
             "# Standard metadata for higher-level stamped data types.\n# This is generally used to communicate timestamped data\n# in a particular coordinate frame.\n\n# Two-integer timestamp that is expressed as seconds and nanoseconds.\nbuiltin_interfaces/Time stamp\n\n# Transform frame with which this data is associated.\nstring frame_id\n"},
            {"builtin_interfaces/msg/Time",
             "# This message communicates ROS Time defined here:\n# https://design.ros2.org/articles/clock_and_time.html\n\n# The seconds component, valid over all int32 values.\nint32 sec\n\n# The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component. \n# e.g.\n# The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8}\n# The time 1.7 seconds is represented as {sec: 1, nanosec: 7e8}\nuint32 nanosec\n"},
            {"isaac_ros_apriltag_interfaces/msg/AprilTagDetection",
             "string family\nint32 id\ngeometry_msgs/Point center      # centre in (x,y) pixel coordinates\ngeometry_msgs/Point[4] corners  # corners of tag ((x1,y1),(x2,y2),...)\ngeometry_msgs/PoseWithCovarianceStamped pose\n"},
            {"geometry_msgs/msg/Point",
             "# This contains the position of a point in free space\nfloat64 x\nfloat64 y\nfloat64 z\n"},
            {"geometry_msgs/msg/PoseWithCovarianceStamped",
             "# This expresses an estimated pose with a reference coordinate frame and timestamp\n\nstd_msgs/Header header\nPoseWithCovariance pose\n"},
            {"geometry_msgs/msg/PoseWithCovariance",
             "# This represents a pose in free space with uncertainty.\n\nPose pose\n\n# Row-major representation of the 6x6 covariance matrix\n# The orientation parameters use a fixed-axis representation.\n# In order, the parameters are:\n# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\nfloat64[36] covariance\n"},
            {"geometry_msgs/msg/Pose",
             "# A representation of pose in free space, composed of position and orientation.\n\nPoint position\nQuaternion orientation\n"},
            {"geometry_msgs/msg/Quaternion",
             "# This represents an orientation in free space in quaternion form.\n\nfloat64 x 0\nfloat64 y 0\nfloat64 z 0\nfloat64 w 1\n"},
        };
        static constexpr size_t definition_count = sizeof(definitions) / sizeof(definitions[0]);
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_0[] = {
            {"header", "std_msgs/msg/Header", 0, false, 0, false, 0, "", false},
            {"detections", "isaac_ros_apriltag_interfaces/msg/AprilTagDetection", 0, false, 0, true, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_1[] = {
            {"stamp", "builtin_interfaces/msg/Time", 0, false, 0, false, 0, "", false},
            {"frame_id", "string", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_2[] = {
            {"sec", "int32", 0, false, 0, false, 0, "", false},
            {"nanosec", "uint32", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_3[] = {
            {"family", "string", 0, false, 0, false, 0, "", false},
            {"id", "int32", 0, false, 0, false, 0, "", false},
            {"center", "geometry_msgs/msg/Point", 0, false, 0, false, 0, "", false},
            {"corners", "geometry_msgs/msg/Point", 4, true, 0, false, 0, "", false},
            {"pose", "geometry_msgs/msg/PoseWithCovarianceStamped", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_4[] = {
            {"x", "float64", 0, false, 0, false, 0, "", false},
            {"y", "float64", 0, false, 0, false, 0, "", false},
            {"z", "float64", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_5[] = {
            {"header", "std_msgs/msg/Header", 0, false, 0, false, 0, "", false},
            {"pose", "geometry_msgs/msg/PoseWithCovariance", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_6[] = {
            {"pose", "geometry_msgs/msg/Pose", 0, false, 0, false, 0, "", false},
            {"covariance", "float64", 36, true, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_7[] = {
            {"position", "geometry_msgs/msg/Point", 0, false, 0, false, 0, "", false},
            {"orientation", "geometry_msgs/msg/Quaternion", 0, false, 0, false, 0, "", false}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_field schema_fields_8[] = {
            {"x", "float64", 0, false, 0, false, 0, "0.0", true},
            {"y", "float64", 0, false, 0, false, 0, "0.0", true},
            {"z", "float64", 0, false, 0, false, 0, "0.0", true},
            {"w", "float64", 0, false, 0, false, 0, "1.0", true}};
        inline static constexpr ::uwvm2::imported::ros::ipc::custom_native_record schema_records[] = {
            {"isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray", schema_fields_0, 2},
            {"std_msgs/msg/Header", schema_fields_1, 2},
            {"builtin_interfaces/msg/Time", schema_fields_2, 2},
            {"isaac_ros_apriltag_interfaces/msg/AprilTagDetection", schema_fields_3, 5},
            {"geometry_msgs/msg/Point", schema_fields_4, 3},
            {"geometry_msgs/msg/PoseWithCovarianceStamped", schema_fields_5, 2},
            {"geometry_msgs/msg/PoseWithCovariance", schema_fields_6, 2},
            {"geometry_msgs/msg/Pose", schema_fields_7, 2},
            {"geometry_msgs/msg/Quaternion", schema_fields_8, 4},
        };

        /**
         * @brief Borrow the full original native field-description graph.
         * @details Returns a static schema view covering the root and all nested records. Expected declarations
         * must be compared with actual type support and RIHS before entity creation; this function performs no
         * discovery.
         */
        static constexpr ::uwvm2::imported::ros::ipc::custom_native_schema native_schema() noexcept
        {
            return {schema_records, sizeof(schema_records) / sizeof(schema_records[0])};
        }
    };
} // namespace uwvm_custom_bounded_native

#define UWVM_ROS_CUSTOM_ROS2_TYPES(M)                                                                                  \
    M(::isaac_ros_apriltag_interfaces::msg::AprilTagDetectionArray,                                                    \
      "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray",                                                      \
      "RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff",                                       \
      "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5",                                     \
      9872,                                                                                                            \
      ::uwvm_custom_bounded_native::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec)
#define UWVM_ROS_CUSTOM_ROS2_SERVICE_TYPES(M)
#define UWVM_ROS_CUSTOM_ROS2_ACTION_TYPES(M)
#define UWVM_ROS_CUSTOM_ROS2_TOPIC_TYPES(M) UWVM_ROS_CUSTOM_ROS2_TYPES(M)
