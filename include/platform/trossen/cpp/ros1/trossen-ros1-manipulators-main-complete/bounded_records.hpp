/** @file Macro-selected C++ full-field bounded records. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include "bounded_records.h"

namespace uwvm_custom
{
    /** @brief
     * @brief Complete bounded storage for Ros1Interbotix_uxarm_joyArmJoy.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid
     */
    typedef roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy Ros1Interbotix_uxarm_joyArmJoy;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_INTERBOTIX_UXARM_JOY_ARMJOY 1

    /** @brief
     * @brief ODR-safe wire metadata for Ros1Interbotix_uxarm_joyArmJoy.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy>
     */
    template <class T>
    struct RecordMetadata_Ros1Interbotix_uxarm_joyArmJoy
    {
        /** @brief
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_wire_size
         */
        static const size_t max_wire_bytes = 12;
/** @brief
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Interbotix_uxarm_joyArmJoy<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Interbotix_uxarm_joyArmJoy<T>::codec_identity =
        "UWVMROS1_70a9d567a462413c9a5c6ec9f44e79ee772a9327c22a2dc308fe6446fdb27d53";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Interbotix_uxarm_joyArmJoy<T>::codec_identity;
# endif
    /** @brief
     * @brief Canonical complete-value codec for Ros1Interbotix_uxarm_joyArmJoy.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy> : RecordMetadata_Ros1Interbotix_uxarm_joyArmJoy<uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy>
    {
        /** @brief
         * @brief Encode all fields of Ros1Interbotix_uxarm_joyArmJoy transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_encode
         */
        static bool encode(uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /** @brief
         * @brief Decode exact canonical bytes into Ros1Interbotix_uxarm_joyArmJoy.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Interbotix_uxarm_joyArmJoy& out)
        {
            return !roswasmc_bounded_1_interbotix_uxarm_joy_ArmJoy_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
