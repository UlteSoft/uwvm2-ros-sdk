/** @file
 * @brief Fixed-field C++20 source values and codecs for selected AddTwoInts.
 * @details Canonical request bytes are signed i64 little-endian a,b; response
 * bytes contain signed i64 sum. This opt-in source include map supplies no
 * native generated type support. The installed SDK export/bind pipeline must
 * independently provide the exact native identity and granted service pairing.
 * @see example_interfaces::srv::AddTwoInts
 */
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include <bit>
#include <cstdint>
#include <memory>

namespace example_interfaces::srv
{
    /** @brief Source service association for one fixed request/response pair.
     * @details Values own scalar fields only; no operation, endpoint or permission
     * is created by constructing or copying them.
     * @see roswasmcpp::ServiceCodec
     */
    struct AddTwoInts
    {
        /** @brief Two signed 64-bit addends in source declaration order.
         * @details Wire encoding contains exactly 16 bytes without native padding.
         * @see AddTwoInts::Response
         */
        struct Request
        {
            /** @brief Shared mutable request-value ownership.
             * @details Sharing a value does not duplicate a service request owner.
             * @see Request::ConstSharedPtr
             */
            using SharedPtr = std::shared_ptr<Request>;
            /** @brief Shared immutable request-value ownership.
             * @details The pointed value lives while a shared owner is retained.
             * @see Request::SharedPtr
             */
            using ConstSharedPtr = std::shared_ptr<Request const>;
            /** @brief First signed addend, represented by the first eight wire bytes.
             * @details Full int64 bits are preserved; this local value assigns no units.
             * @see Request::b
             */
            std::int64_t a{};
            /** @brief Second signed addend, represented by wire bytes 8..15.
             * @details Full int64 bits are preserved without local addition or overflow.
             * @see Request::a
             */
            std::int64_t b{};
        };

        /** @brief Signed 64-bit result returned by the selected service.
         * @details The adapter decodes a result; it does not locally add the request.
         * @see AddTwoInts::Request
         */
        struct Response
        {
            /** @brief Shared mutable response-value ownership.
             * @details This alias does not own a native response channel.
             * @see Response::ConstSharedPtr
             */
            using SharedPtr = std::shared_ptr<Response>;
            /** @brief Shared immutable response-value ownership.
             * @details The value remains live while a shared owner is retained.
             * @see Response::SharedPtr
             */
            using ConstSharedPtr = std::shared_ptr<Response const>;
            /** @brief Signed result encoded as exactly eight little-endian bytes.
             * @details Every int64 bit pattern is representable; no physical unit is added.
             * @see AddTwoInts::Request
             */
            std::int64_t sum{};
        };
    };
}  // namespace example_interfaces::srv

namespace roswasmcpp
{
    /** @brief Canonical structural codec for the selected source AddTwoInts type.
     * @details Uses owning output bytes and exact fixed-width input lengths; no
     * native C++ layout, endpoint lookup, arithmetic, callback or I/O is involved.
     * Failed length validation preserves decoded destinations. Allocation behavior
     * follows the standard library rather than a numeric transport result.
     * @see example_interfaces::srv::AddTwoInts
     */
    template <>
    struct ServiceCodec<::example_interfaces::srv::AddTwoInts>
    {
        /** @brief Associated finite source service type.
         * @details Request/Response retain their documented signed scalar fields.
         * @see ServiceCodec::encode
         */
        using S = ::example_interfaces::srv::AddTwoInts;

        /** @brief Encode both signed addends as one 16-byte request.
         * @details Bit-casts preserve full signed representations; native padding
         * and ownership are never serialized. No service call is performed.
         * @param value Borrowed request, valid during this synchronous conversion.
         * @return Owning canonical bytes; allocation failures follow the library.
         * @see ServiceCodec::decode
         */
        static wire::bytes encode(S::Request const& value)
        {
            wire::bytes out;
            out.reserve(16);
            wire::append_u64(out, std::bit_cast<std::uint64_t>(value.a));
            wire::append_u64(out, std::bit_cast<std::uint64_t>(value.b));
            return out;
        }

        /** @brief Decode exactly 16 bytes into both signed request fields.
         * @details A local temporary prevents partial replacement on length failure;
         * input is borrowed only for this call and trailing bytes are rejected.
         * @param bytes Complete request wire representation.
         * @param value Replaced only after complete length validation.
         * @return True on complete conversion, false with value unchanged otherwise.
         * @see ServiceCodec::encode
         */
        static bool decode(std::span<unsigned char const> bytes, S::Request& value)
        {
            if(bytes.size() != 16)
            {
                return false;
            }
            S::Request next{std::bit_cast<std::int64_t>(uwvm_ros_load_u64(bytes.data())), std::bit_cast<std::int64_t>(uwvm_ros_load_u64(bytes.data() + 8))};
            value = next;
            return true;
        }

        /** @brief Decode exactly eight result bytes without local arithmetic.
         * @details Preserves the complete signed representation and rejects missing
         * or trailing bytes before replacing the caller's response.
         * @param bytes Borrowed complete canonical response.
         * @param value Response destination replaced only on success.
         * @return True for eight bytes, false with value unchanged otherwise.
         * @see ServiceCodec::encode_response
         */
        static bool decode_response(std::span<unsigned char const> bytes, S::Response& value)
        {
            if(bytes.size() != 8)
            {
                return false;
            }
            S::Response next{std::bit_cast<std::int64_t>(uwvm_ros_load_u64(bytes.data()))};
            value = next;
            return true;
        }

        /** @brief Encode one result field into an owning eight-byte response.
         * @details Builds a temporary and replaces bytes after complete encoding.
         * Every int64 field value is valid; allocation failures follow the library.
         * @param value Borrowed response with full signed result bits.
         * @param bytes Replaced by the canonical response, without appending.
         * @return True after successful allocation/conversion.
         * @see ServiceCodec::decode_response
         */
        static bool encode_response(S::Response const& value, wire::bytes& bytes)
        {
            wire::bytes next;
            next.reserve(8);
            wire::append_u64(next, std::bit_cast<std::uint64_t>(value.sum));
            bytes = std::move(next);
            return true;
        }
    };
}  // namespace roswasmcpp
