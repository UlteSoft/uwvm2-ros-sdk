/**
 * @file bounded_records.hpp
 * @brief Retain original realman value/workflow support under explicit caller ownership.
 * @details Use the exact source-selected complete record APIs and their finite bounds. Keep native
 * units, model selection and application result meanings unchanged. The caller supplies existing
 * capabilities and serializes mutable state; local construction, formatting and cleanup confer no grant,
 * automatic replay or physical command-completion guarantee.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <realman/c/ros1/realman-query-empty-source/bounded_records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Std_msgsEmpty.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Empty_valid
     */
    typedef roswasmc_bounded_1_std_msgs_Empty Ros1Std_msgsEmpty;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_EMPTY 1

    /**
     * @brief ODR-safe wire metadata for Ros1Std_msgsEmpty.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Std_msgsEmpty>
     */
    template <class T>
    struct RecordMetadata_Ros1Std_msgsEmpty
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_std_msgs_Empty_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_std_msgs_Empty_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f54b7880aaea96d2bf731438bf8008205b6b4708a00e2bb7435927cf79318b85";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Std_msgsEmpty<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Std_msgsEmpty<T>::codec_identity = "UWVMROS1_f54b7880aaea96d2bf731438bf8008205b6b4708a00e2bb7435927cf79318b85";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Std_msgsEmpty<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Std_msgsEmpty.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Empty_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsEmpty> : RecordMetadata_Ros1Std_msgsEmpty<uwvm_custom::Ros1Std_msgsEmpty>
    {
        /**
         * @brief Encode all fields of Ros1Std_msgsEmpty transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_std_msgs_Empty_encode
         */
        static bool encode(uwvm_custom::Ros1Std_msgsEmpty const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Empty_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Empty_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Empty_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Std_msgsEmpty.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_std_msgs_Empty_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Std_msgsEmpty& out)
        {
            return !roswasmc_bounded_1_std_msgs_Empty_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
